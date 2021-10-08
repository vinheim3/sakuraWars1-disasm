; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

	ld   a, d                                        ; $4000: $7a
	ld   bc, $ff01                                   ; $4001: $01 $01 $ff
	nop                                              ; $4004: $00
	add  b                                           ; $4005: $80
	ccf                                              ; $4006: $3f
	add  b                                           ; $4007: $80
	ld   b, b                                        ; $4008: $40
	nop                                              ; $4009: $00
	ld   e, a                                        ; $400a: $5f
	add  e                                           ; $400b: $83
	ld   b, b                                        ; $400c: $40
	dec  b                                           ; $400d: $05
	ld   b, c                                        ; $400e: $41
	ld   b, b                                        ; $400f: $40
	ld   b, c                                        ; $4010: $41
	ld   b, b                                        ; $4011: $40
	rra                                              ; $4012: $1f
	nop                                              ; $4013: $00
	add  b                                           ; $4014: $80
	rst  $38                                         ; $4015: $ff
	add  b                                           ; $4016: $80
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	rst  $38                                         ; $4019: $ff
	add  c                                           ; $401a: $81
	nop                                              ; $401b: $00
	rlca                                             ; $401c: $07
	ret  c                                           ; $401d: $d8

	nop                                              ; $401e: $00
	dec  h                                           ; $401f: $25
	nop                                              ; $4020: $00
	ld   h, $00                                      ; $4021: $26 $00
	inc  h                                           ; $4023: $24
	nop                                              ; $4024: $00
	add  b                                           ; $4025: $80
	rst  $38                                         ; $4026: $ff
	add  b                                           ; $4027: $80
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00
	rst  $38                                         ; $402a: $ff
	add  c                                           ; $402b: $81
	nop                                              ; $402c: $00
	rlca                                             ; $402d: $07
	ret  c                                           ; $402e: $d8

	nop                                              ; $402f: $00
	ld   l, b                                        ; $4030: $68
	nop                                              ; $4031: $00
	ld   c, h                                        ; $4032: $4c
	nop                                              ; $4033: $00
	inc  bc                                          ; $4034: $03
	nop                                              ; $4035: $00
	add  b                                           ; $4036: $80
	rst  $38                                         ; $4037: $ff
	add  b                                           ; $4038: $80
	nop                                              ; $4039: $00
	nop                                              ; $403a: $00
	rst  $38                                         ; $403b: $ff
	add  c                                           ; $403c: $81
	nop                                              ; $403d: $00
	rlca                                             ; $403e: $07
	ccf                                              ; $403f: $3f
	nop                                              ; $4040: $00
	rrca                                             ; $4041: $0f
	nop                                              ; $4042: $00
	rrca                                             ; $4043: $0f
	nop                                              ; $4044: $00
	ret  nz                                          ; $4045: $c0

	nop                                              ; $4046: $00
	add  b                                           ; $4047: $80
	rst  $38                                         ; $4048: $ff
	add  b                                           ; $4049: $80
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	rst  $38                                         ; $404c: $ff
	add  c                                           ; $404d: $81
	nop                                              ; $404e: $00
	rlca                                             ; $404f: $07
	db   $fc                                         ; $4050: $fc
	nop                                              ; $4051: $00
	ldh  a, [rP1]                                    ; $4052: $f0 $00
	ldh  a, [rP1]                                    ; $4054: $f0 $00
	inc  bc                                          ; $4056: $03
	nop                                              ; $4057: $00
	add  b                                           ; $4058: $80
	rst  $38                                         ; $4059: $ff
	add  b                                           ; $405a: $80
	nop                                              ; $405b: $00
	nop                                              ; $405c: $00
	rst  $38                                         ; $405d: $ff
	add  e                                           ; $405e: $83
	nop                                              ; $405f: $00
	dec  b                                           ; $4060: $05
	rrca                                             ; $4061: $0f
	nop                                              ; $4062: $00
	inc  bc                                          ; $4063: $03
	nop                                              ; $4064: $00
	di                                               ; $4065: $f3
	nop                                              ; $4066: $00
	add  b                                           ; $4067: $80
	rst  $38                                         ; $4068: $ff
	add  b                                           ; $4069: $80
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	rst  $38                                         ; $406c: $ff
	add  c                                           ; $406d: $81
	nop                                              ; $406e: $00
	rlca                                             ; $406f: $07
	jr   c, jr_018_4072                              ; $4070: $38 $00

jr_018_4072:
	rst  ToBoot                                         ; $4072: $c7
	nop                                              ; $4073: $00
	add  hl, sp                                      ; $4074: $39
	nop                                              ; $4075: $00
	add  hl, sp                                      ; $4076: $39
	nop                                              ; $4077: $00
	add  b                                           ; $4078: $80
	db   $fc                                         ; $4079: $fc
	add  b                                           ; $407a: $80
	ld   [bc], a                                     ; $407b: $02
	nop                                              ; $407c: $00
	ld   a, [$0283]                                  ; $407d: $fa $83 $02
	inc  b                                           ; $4080: $04
	add  d                                           ; $4081: $82
	ld   [bc], a                                     ; $4082: $02
	add  d                                           ; $4083: $82
	ld   [bc], a                                     ; $4084: $02
	rlca                                             ; $4085: $07
	add  e                                           ; $4086: $83
	nop                                              ; $4087: $00
	ld   a, [bc]                                     ; $4088: $0a
	ld   c, $00                                      ; $4089: $0e $00
	ld   sp, $2400                                   ; $408b: $31 $00 $24
	nop                                              ; $408e: $00
	inc  d                                           ; $408f: $14
	nop                                              ; $4090: $00
	ld   [hl], b                                     ; $4091: $70
	nop                                              ; $4092: $00
	ld   a, a                                        ; $4093: $7f
	add  e                                           ; $4094: $83
	nop                                              ; $4095: $00
	ld   a, [bc]                                     ; $4096: $0a
	jr   c, jr_018_4099                              ; $4097: $38 $00

jr_018_4099:
	add  $00                                         ; $4099: $c6 $00
	sub  d                                           ; $409b: $92
	nop                                              ; $409c: $00
	inc  d                                           ; $409d: $14
	nop                                              ; $409e: $00
	add  a                                           ; $409f: $87
	nop                                              ; $40a0: $00
	rst  $38                                         ; $40a1: $ff
	add  e                                           ; $40a2: $83
	nop                                              ; $40a3: $00
	ld   b, $33                                      ; $40a4: $06 $33
	nop                                              ; $40a6: $00
	ld   a, [hl+]                                    ; $40a7: $2a
	nop                                              ; $40a8: $00
	add  hl, de                                      ; $40a9: $19
	nop                                              ; $40aa: $00
	inc  bc                                          ; $40ab: $03
	add  c                                           ; $40ac: $81
	nop                                              ; $40ad: $00
	nop                                              ; $40ae: $00
	inc  bc                                          ; $40af: $03
	add  e                                           ; $40b0: $83
	nop                                              ; $40b1: $00
	ld   [hl+], a                                    ; $40b2: $22
	ld   hl, sp+$00                                  ; $40b3: $f8 $00
	ld   h, b                                        ; $40b5: $60
	nop                                              ; $40b6: $00
	ld   l, b                                        ; $40b7: $68
	nop                                              ; $40b8: $00
	inc  c                                           ; $40b9: $0c
	nop                                              ; $40ba: $00
	sub  b                                           ; $40bb: $90
	nop                                              ; $40bc: $00
	ld   l, h                                        ; $40bd: $6c
	nop                                              ; $40be: $00
	ld   [hl], $00                                   ; $40bf: $36 $00
	ld   c, c                                        ; $40c1: $49
	nop                                              ; $40c2: $00
	ld   c, c                                        ; $40c3: $49
	nop                                              ; $40c4: $00
	ld   c, c                                        ; $40c5: $49
	nop                                              ; $40c6: $00
	inc  h                                           ; $40c7: $24
	nop                                              ; $40c8: $00
	inc  h                                           ; $40c9: $24
	nop                                              ; $40ca: $00
	ld   h, a                                        ; $40cb: $67
	nop                                              ; $40cc: $00
	jr   jr_018_40cf                                 ; $40cd: $18 $00

jr_018_40cf:
	ld   [hl], $00                                   ; $40cf: $36 $00
	ld   e, d                                        ; $40d1: $5a
	nop                                              ; $40d2: $00
	sub  e                                           ; $40d3: $93
	nop                                              ; $40d4: $00
	sub  e                                           ; $40d5: $93
	add  c                                           ; $40d6: $81
	nop                                              ; $40d7: $00
	ld   b, $13                                      ; $40d8: $06 $13
	nop                                              ; $40da: $00
	inc  de                                          ; $40db: $13
	nop                                              ; $40dc: $00
	ld   l, h                                        ; $40dd: $6c
	nop                                              ; $40de: $00
	ld   h, b                                        ; $40df: $60
	adc  e                                           ; $40e0: $8b
	nop                                              ; $40e1: $00
	ld   [bc], a                                     ; $40e2: $02
	ld   h, b                                        ; $40e3: $60
	nop                                              ; $40e4: $00
	ld   b, $8b                                      ; $40e5: $06 $8b
	nop                                              ; $40e7: $00
	nop                                              ; $40e8: $00
	and  a                                           ; $40e9: $a7
	add  e                                           ; $40ea: $83
	ld   b, b                                        ; $40eb: $40
	ld   b, $41                                      ; $40ec: $06 $41
	ld   b, b                                        ; $40ee: $40
	ld   b, c                                        ; $40ef: $41
	ld   b, b                                        ; $40f0: $40
	ld   b, c                                        ; $40f1: $41
	ld   b, b                                        ; $40f2: $40
	ld   b, c                                        ; $40f3: $41
	add  c                                           ; $40f4: $81
	ld   b, b                                        ; $40f5: $40
	db   $10                                         ; $40f6: $10
	inc  e                                           ; $40f7: $1c
	nop                                              ; $40f8: $00
	sub  b                                           ; $40f9: $90
	nop                                              ; $40fa: $00
	sub  b                                           ; $40fb: $90
	nop                                              ; $40fc: $00
	sbc  h                                           ; $40fd: $9c
	nop                                              ; $40fe: $00
	sbc  h                                           ; $40ff: $9c
	nop                                              ; $4100: $00
	sbc  h                                           ; $4101: $9c
	nop                                              ; $4102: $00
	sbc  h                                           ; $4103: $9c
	nop                                              ; $4104: $00
	ld   h, h                                        ; $4105: $64
	nop                                              ; $4106: $00
	add  hl, hl                                      ; $4107: $29
	add  c                                           ; $4108: $81
	nop                                              ; $4109: $00
	ld   b, $4c                                      ; $410a: $06 $4c
	nop                                              ; $410c: $00
	ld   c, h                                        ; $410d: $4c
	nop                                              ; $410e: $00
	ld   c, h                                        ; $410f: $4c
	nop                                              ; $4110: $00
	ld   c, h                                        ; $4111: $4c
	add  c                                           ; $4112: $81
	nop                                              ; $4113: $00
	inc  h                                           ; $4114: $24
	ld   c, h                                        ; $4115: $4c
	nop                                              ; $4116: $00
	call z, $0f00                                    ; $4117: $cc $00 $0f
	nop                                              ; $411a: $00
	add  hl, sp                                      ; $411b: $39
	nop                                              ; $411c: $00
	add  hl, bc                                      ; $411d: $09
	nop                                              ; $411e: $00
	ld   d, $00                                      ; $411f: $16 $00
	ld   a, d                                        ; $4121: $7a
	nop                                              ; $4122: $00
	ld   l, a                                        ; $4123: $6f
	nop                                              ; $4124: $00
	dec  c                                           ; $4125: $0d
	nop                                              ; $4126: $00
	dec  c                                           ; $4127: $0d
	nop                                              ; $4128: $00
	ldh  a, [rP1]                                    ; $4129: $f0 $00
	db   $fc                                         ; $412b: $fc
	nop                                              ; $412c: $00
	rst  $38                                         ; $412d: $ff
	nop                                              ; $412e: $00
	ld   h, h                                        ; $412f: $64
	nop                                              ; $4130: $00
	xor  b                                           ; $4131: $a8
	nop                                              ; $4132: $00
	ld   d, h                                        ; $4133: $54
	nop                                              ; $4134: $00
	ld   sp, hl                                      ; $4135: $f9
	nop                                              ; $4136: $00
	sub  e                                           ; $4137: $93
	nop                                              ; $4138: $00
	ld   bc, $0083                                   ; $4139: $01 $83 $00
	ld   [bc], a                                     ; $413c: $02
	ld   bc, $0100                                   ; $413d: $01 $00 $01
	add  c                                           ; $4140: $81
	nop                                              ; $4141: $00
	ld   [de], a                                     ; $4142: $12
	dec  d                                           ; $4143: $15
	nop                                              ; $4144: $00
	and  $00                                         ; $4145: $e6 $00
	add  hl, sp                                      ; $4147: $39
	nop                                              ; $4148: $00
	jr   c, jr_018_414b                              ; $4149: $38 $00

jr_018_414b:
	cp   $00                                         ; $414b: $fe $00
	rst  $38                                         ; $414d: $ff
	nop                                              ; $414e: $00
	inc  a                                           ; $414f: $3c
	nop                                              ; $4150: $00
	rst  $38                                         ; $4151: $ff
	nop                                              ; $4152: $00
	db   $db                                         ; $4153: $db
	nop                                              ; $4154: $00
	ldh  [c], a                                      ; $4155: $e2
	adc  e                                           ; $4156: $8b
	ld   [bc], a                                     ; $4157: $02
	ld   c, $82                                      ; $4158: $0e $82
	ld   [bc], a                                     ; $415a: $02
	add  a                                           ; $415b: $87
	nop                                              ; $415c: $00
	rra                                              ; $415d: $1f
	nop                                              ; $415e: $00
	rlca                                             ; $415f: $07
	nop                                              ; $4160: $00
	rlca                                             ; $4161: $07
	nop                                              ; $4162: $00
	rlca                                             ; $4163: $07
	nop                                              ; $4164: $00
	rlca                                             ; $4165: $07
	nop                                              ; $4166: $00
	rra                                              ; $4167: $1f
	add  e                                           ; $4168: $83
	nop                                              ; $4169: $00
	ld   a, [bc]                                     ; $416a: $0a
	db   $fc                                         ; $416b: $fc
	nop                                              ; $416c: $00
	ldh  a, [rP1]                                    ; $416d: $f0 $00
	ldh  a, [rP1]                                    ; $416f: $f0 $00
	ldh  a, [rP1]                                    ; $4171: $f0 $00
	ldh  a, [rP1]                                    ; $4173: $f0 $00
	db   $fc                                         ; $4175: $fc
	add  c                                           ; $4176: $81
	nop                                              ; $4177: $00
	ld   [bc], a                                     ; $4178: $02
	ld   a, e                                        ; $4179: $7b
	nop                                              ; $417a: $00
	ld   h, b                                        ; $417b: $60
	add  e                                           ; $417c: $83
	nop                                              ; $417d: $00
	inc  b                                           ; $417e: $04
	inc  h                                           ; $417f: $24
	nop                                              ; $4180: $00
	ld   e, b                                        ; $4181: $58
	nop                                              ; $4182: $00
	ld   h, a                                        ; $4183: $67
	add  c                                           ; $4184: $81
	nop                                              ; $4185: $00
	inc  c                                           ; $4186: $0c
	db   $fc                                         ; $4187: $fc
	nop                                              ; $4188: $00
	sub  b                                           ; $4189: $90
	nop                                              ; $418a: $00
	sub  b                                           ; $418b: $90
	nop                                              ; $418c: $00
	sub  b                                           ; $418d: $90
	nop                                              ; $418e: $00
	stop                                             ; $418f: $10 $00
	add  e                                           ; $4191: $83
	nop                                              ; $4192: $00
	rst  $38                                         ; $4193: $ff
	add  c                                           ; $4194: $81
	nop                                              ; $4195: $00
	dec  bc                                          ; $4196: $0b
	ld   a, a                                        ; $4197: $7f
	nop                                              ; $4198: $00
	ld   h, a                                        ; $4199: $67
	nop                                              ; $419a: $00
	ld   h, a                                        ; $419b: $67
	nop                                              ; $419c: $00
	add  hl, de                                      ; $419d: $19
	nop                                              ; $419e: $00
	ld   h, [hl]                                     ; $419f: $66
	nop                                              ; $41a0: $00
	rst  $38                                         ; $41a1: $ff
	nop                                              ; $41a2: $00
	add  b                                           ; $41a3: $80
	rst  $38                                         ; $41a4: $ff
	add  b                                           ; $41a5: $80
	nop                                              ; $41a6: $00
	ld   [bc], a                                     ; $41a7: $02
	add  b                                           ; $41a8: $80
	nop                                              ; $41a9: $00
	inc  de                                          ; $41aa: $13
	add  c                                           ; $41ab: $81
	nop                                              ; $41ac: $00
	dec  b                                           ; $41ad: $05
	inc  de                                          ; $41ae: $13
	nop                                              ; $41af: $00
	ld   a, a                                        ; $41b0: $7f
	nop                                              ; $41b1: $00
	rst  $38                                         ; $41b2: $ff
	nop                                              ; $41b3: $00
	add  b                                           ; $41b4: $80
	rst  $38                                         ; $41b5: $ff
	add  b                                           ; $41b6: $80
	nop                                              ; $41b7: $00
	dec  bc                                          ; $41b8: $0b
	sbc  a                                           ; $41b9: $9f
	nop                                              ; $41ba: $00
	stop                                             ; $41bb: $10 $00
	ld   c, b                                        ; $41bd: $48
	nop                                              ; $41be: $00
	scf                                              ; $41bf: $37
	nop                                              ; $41c0: $00
	rrca                                             ; $41c1: $0f
	nop                                              ; $41c2: $00
	rst  $38                                         ; $41c3: $ff
	nop                                              ; $41c4: $00
	add  b                                           ; $41c5: $80
	rst  $38                                         ; $41c6: $ff
	add  b                                           ; $41c7: $80
	nop                                              ; $41c8: $00
	ld   b, $cc                                      ; $41c9: $06 $cc
	nop                                              ; $41cb: $00
	ld   d, b                                        ; $41cc: $50
	nop                                              ; $41cd: $00
	and  d                                           ; $41ce: $a2
	nop                                              ; $41cf: $00
	pop  bc                                          ; $41d0: $c1
	add  c                                           ; $41d1: $81
	nop                                              ; $41d2: $00
	ld   bc, $00ff                                   ; $41d3: $01 $ff $00
	add  b                                           ; $41d6: $80
	rst  $38                                         ; $41d7: $ff
	add  b                                           ; $41d8: $80
	nop                                              ; $41d9: $00
	nop                                              ; $41da: $00
	rst  $38                                         ; $41db: $ff
	add  e                                           ; $41dc: $83
	nop                                              ; $41dd: $00
	ld   [bc], a                                     ; $41de: $02
	inc  c                                           ; $41df: $0c
	nop                                              ; $41e0: $00
	ld   a, [bc]                                     ; $41e1: $0a
	add  c                                           ; $41e2: $81
	nop                                              ; $41e3: $00
	nop                                              ; $41e4: $00
	dec  b                                           ; $41e5: $05
	add  c                                           ; $41e6: $81
	nop                                              ; $41e7: $00
	dec  bc                                          ; $41e8: $0b
	ld   h, b                                        ; $41e9: $60
	nop                                              ; $41ea: $00
	inc  bc                                          ; $41eb: $03
	nop                                              ; $41ec: $00
	add  b                                           ; $41ed: $80
	nop                                              ; $41ee: $00
	jr   nz, jr_018_41f1                             ; $41ef: $20 $00

jr_018_41f1:
	ret  nz                                          ; $41f1: $c0

	nop                                              ; $41f2: $00
	rst  $38                                         ; $41f3: $ff
	nop                                              ; $41f4: $00
	add  b                                           ; $41f5: $80
	rst  $38                                         ; $41f6: $ff
	add  b                                           ; $41f7: $80
	nop                                              ; $41f8: $00
	nop                                              ; $41f9: $00
	rst  $38                                         ; $41fa: $ff
	adc  l                                           ; $41fb: $8d
	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	and  b                                           ; $41fe: $a0
	adc  l                                           ; $41ff: $8d

Call_018_4200:
	ld   b, b                                        ; $4200: $40
	nop                                              ; $4201: $00
	push hl                                          ; $4202: $e5
	adc  l                                           ; $4203: $8d
	ld   [bc], a                                     ; $4204: $02
	nop                                              ; $4205: $00
	and  a                                           ; $4206: $a7
	add  a                                           ; $4207: $87
	ld   b, b                                        ; $4208: $40
	ld   bc, $405f                                   ; $4209: $01 $5f $40
	add  b                                           ; $420c: $80
	ccf                                              ; $420d: $3f
	add  b                                           ; $420e: $80
	nop                                              ; $420f: $00
	nop                                              ; $4210: $00
	ld   a, [$0287]                                  ; $4211: $fa $87 $02
	ld   bc, $02fa                                   ; $4214: $01 $fa $02
	add  b                                           ; $4217: $80
	db   $fc                                         ; $4218: $fc
	add  b                                           ; $4219: $80
	nop                                              ; $421a: $00
	nop                                              ; $421b: $00
	rst  $38                                         ; $421c: $ff
	add  a                                           ; $421d: $87
	nop                                              ; $421e: $00
	ld   bc, $00ff                                   ; $421f: $01 $ff $00
	add  b                                           ; $4222: $80
	rst  $38                                         ; $4223: $ff
	add  d                                           ; $4224: $82
	nop                                              ; $4225: $00
	inc  c                                           ; $4226: $0c
	ld   a, h                                        ; $4227: $7c
	nop                                              ; $4228: $00
	ld   b, $00                                      ; $4229: $06 $00
	inc  c                                           ; $422b: $0c
	nop                                              ; $422c: $00
	jr   jr_018_422f                                 ; $422d: $18 $00

jr_018_422f:
	jr   nc, jr_018_4231                             ; $422f: $30 $00

jr_018_4231:
	ld   h, b                                        ; $4231: $60
	nop                                              ; $4232: $00
	ld   a, $81                                      ; $4233: $3e $81
	nop                                              ; $4235: $00
	inc  c                                           ; $4236: $0c
	ld   a, h                                        ; $4237: $7c
	nop                                              ; $4238: $00
	ld   b, $00                                      ; $4239: $06 $00
	inc  c                                           ; $423b: $0c
	nop                                              ; $423c: $00
	jr   jr_018_423f                                 ; $423d: $18 $00

jr_018_423f:
	jr   nc, jr_018_4241                             ; $423f: $30 $00

jr_018_4241:
	ld   h, b                                        ; $4241: $60
	nop                                              ; $4242: $00
	ld   a, $81                                      ; $4243: $3e $81
	nop                                              ; $4245: $00
	inc  c                                           ; $4246: $0c
	ld   a, h                                        ; $4247: $7c
	nop                                              ; $4248: $00
	ld   b, $00                                      ; $4249: $06 $00
	inc  c                                           ; $424b: $0c
	nop                                              ; $424c: $00
	jr   jr_018_424f                                 ; $424d: $18 $00

jr_018_424f:
	jr   nc, jr_018_4251                             ; $424f: $30 $00

jr_018_4251:
	ld   h, b                                        ; $4251: $60
	nop                                              ; $4252: $00
	ld   a, $81                                      ; $4253: $3e $81
	nop                                              ; $4255: $00
	inc  c                                           ; $4256: $0c
	ld   a, h                                        ; $4257: $7c
	nop                                              ; $4258: $00
	ld   b, $00                                      ; $4259: $06 $00
	inc  c                                           ; $425b: $0c
	nop                                              ; $425c: $00
	jr   jr_018_425f                                 ; $425d: $18 $00

jr_018_425f:
	jr   nc, jr_018_4261                             ; $425f: $30 $00

jr_018_4261:
	ld   h, b                                        ; $4261: $60
	nop                                              ; $4262: $00
	ld   a, $81                                      ; $4263: $3e $81
	nop                                              ; $4265: $00
	inc  c                                           ; $4266: $0c
	ld   a, h                                        ; $4267: $7c
	nop                                              ; $4268: $00
	ld   b, $00                                      ; $4269: $06 $00
	inc  c                                           ; $426b: $0c
	nop                                              ; $426c: $00
	jr   jr_018_426f                                 ; $426d: $18 $00

jr_018_426f:
	jr   nc, jr_018_4271                             ; $426f: $30 $00

jr_018_4271:
	ld   h, b                                        ; $4271: $60
	nop                                              ; $4272: $00
	ld   a, $81                                      ; $4273: $3e $81
	nop                                              ; $4275: $00
	inc  c                                           ; $4276: $0c
	ld   a, h                                        ; $4277: $7c
	nop                                              ; $4278: $00
	ld   b, $00                                      ; $4279: $06 $00
	inc  c                                           ; $427b: $0c
	nop                                              ; $427c: $00
	jr   jr_018_427f                                 ; $427d: $18 $00

jr_018_427f:
	jr   nc, jr_018_4281                             ; $427f: $30 $00

jr_018_4281:
	ld   h, b                                        ; $4281: $60
	nop                                              ; $4282: $00
	ld   a, $81                                      ; $4283: $3e $81
	nop                                              ; $4285: $00
	inc  c                                           ; $4286: $0c
	ld   a, h                                        ; $4287: $7c
	nop                                              ; $4288: $00
	ld   b, $00                                      ; $4289: $06 $00
	inc  c                                           ; $428b: $0c
	nop                                              ; $428c: $00
	jr   jr_018_428f                                 ; $428d: $18 $00

jr_018_428f:
	jr   nc, jr_018_4291                             ; $428f: $30 $00

jr_018_4291:
	ld   h, b                                        ; $4291: $60
	nop                                              ; $4292: $00
	ld   a, $81                                      ; $4293: $3e $81
	nop                                              ; $4295: $00
	inc  c                                           ; $4296: $0c
	ld   a, h                                        ; $4297: $7c
	nop                                              ; $4298: $00
	ld   b, $00                                      ; $4299: $06 $00
	inc  c                                           ; $429b: $0c
	nop                                              ; $429c: $00
	jr   jr_018_429f                                 ; $429d: $18 $00

jr_018_429f:
	jr   nc, jr_018_42a1                             ; $429f: $30 $00

jr_018_42a1:
	ld   h, b                                        ; $42a1: $60
	nop                                              ; $42a2: $00
	ld   a, $81                                      ; $42a3: $3e $81
	nop                                              ; $42a5: $00
	inc  c                                           ; $42a6: $0c
	ld   a, h                                        ; $42a7: $7c
	nop                                              ; $42a8: $00
	ld   b, $00                                      ; $42a9: $06 $00
	inc  c                                           ; $42ab: $0c
	nop                                              ; $42ac: $00
	jr   jr_018_42af                                 ; $42ad: $18 $00

jr_018_42af:
	jr   nc, jr_018_42b1                             ; $42af: $30 $00

jr_018_42b1:
	ld   h, b                                        ; $42b1: $60
	nop                                              ; $42b2: $00
	ld   a, $81                                      ; $42b3: $3e $81
	nop                                              ; $42b5: $00
	inc  c                                           ; $42b6: $0c
	ld   a, h                                        ; $42b7: $7c
	nop                                              ; $42b8: $00
	ld   b, $00                                      ; $42b9: $06 $00
	inc  c                                           ; $42bb: $0c
	nop                                              ; $42bc: $00
	jr   jr_018_42bf                                 ; $42bd: $18 $00

jr_018_42bf:
	jr   nc, jr_018_42c1                             ; $42bf: $30 $00

jr_018_42c1:
	ld   h, b                                        ; $42c1: $60
	nop                                              ; $42c2: $00
	ld   a, $81                                      ; $42c3: $3e $81
	nop                                              ; $42c5: $00
	inc  c                                           ; $42c6: $0c
	ld   a, h                                        ; $42c7: $7c
	nop                                              ; $42c8: $00
	ld   b, $00                                      ; $42c9: $06 $00
	inc  c                                           ; $42cb: $0c
	nop                                              ; $42cc: $00
	jr   jr_018_42cf                                 ; $42cd: $18 $00

jr_018_42cf:
	jr   nc, jr_018_42d1                             ; $42cf: $30 $00

jr_018_42d1:
	ld   h, b                                        ; $42d1: $60
	nop                                              ; $42d2: $00
	ld   a, $81                                      ; $42d3: $3e $81
	nop                                              ; $42d5: $00
	inc  c                                           ; $42d6: $0c
	ld   a, h                                        ; $42d7: $7c
	nop                                              ; $42d8: $00
	ld   b, $00                                      ; $42d9: $06 $00
	inc  c                                           ; $42db: $0c
	nop                                              ; $42dc: $00
	jr   jr_018_42df                                 ; $42dd: $18 $00

jr_018_42df:
	jr   nc, jr_018_42e1                             ; $42df: $30 $00

jr_018_42e1:
	ld   h, b                                        ; $42e1: $60
	nop                                              ; $42e2: $00
	ld   a, $81                                      ; $42e3: $3e $81
	nop                                              ; $42e5: $00
	inc  c                                           ; $42e6: $0c
	ld   a, h                                        ; $42e7: $7c
	nop                                              ; $42e8: $00
	ld   b, $00                                      ; $42e9: $06 $00
	inc  c                                           ; $42eb: $0c
	nop                                              ; $42ec: $00
	jr   jr_018_42ef                                 ; $42ed: $18 $00

jr_018_42ef:
	jr   nc, jr_018_42f1                             ; $42ef: $30 $00

jr_018_42f1:
	ld   h, b                                        ; $42f1: $60
	nop                                              ; $42f2: $00
	ld   a, $81                                      ; $42f3: $3e $81
	nop                                              ; $42f5: $00
	inc  c                                           ; $42f6: $0c
	ld   a, h                                        ; $42f7: $7c
	nop                                              ; $42f8: $00
	ld   b, $00                                      ; $42f9: $06 $00
	inc  c                                           ; $42fb: $0c
	nop                                              ; $42fc: $00
	jr   jr_018_42ff                                 ; $42fd: $18 $00

jr_018_42ff:
	jr   nc, jr_018_4301                             ; $42ff: $30 $00

jr_018_4301:
	ld   h, b                                        ; $4301: $60
	nop                                              ; $4302: $00
	ld   a, $81                                      ; $4303: $3e $81
	nop                                              ; $4305: $00
	inc  c                                           ; $4306: $0c
	ld   a, h                                        ; $4307: $7c
	nop                                              ; $4308: $00
	ld   b, $00                                      ; $4309: $06 $00
	inc  c                                           ; $430b: $0c
	nop                                              ; $430c: $00
	jr   jr_018_430f                                 ; $430d: $18 $00

jr_018_430f:
	jr   nc, jr_018_4311                             ; $430f: $30 $00

jr_018_4311:
	ld   h, b                                        ; $4311: $60
	nop                                              ; $4312: $00
	ld   a, $81                                      ; $4313: $3e $81
	nop                                              ; $4315: $00
	inc  c                                           ; $4316: $0c
	ld   a, h                                        ; $4317: $7c
	nop                                              ; $4318: $00
	ld   b, $00                                      ; $4319: $06 $00
	inc  c                                           ; $431b: $0c
	nop                                              ; $431c: $00
	jr   jr_018_431f                                 ; $431d: $18 $00

jr_018_431f:
	jr   nc, jr_018_4321                             ; $431f: $30 $00

jr_018_4321:
	ld   h, b                                        ; $4321: $60
	nop                                              ; $4322: $00
	ld   a, $81                                      ; $4323: $3e $81
	nop                                              ; $4325: $00
	inc  c                                           ; $4326: $0c
	ld   a, h                                        ; $4327: $7c
	nop                                              ; $4328: $00
	ld   b, $00                                      ; $4329: $06 $00
	inc  c                                           ; $432b: $0c
	nop                                              ; $432c: $00
	jr   jr_018_432f                                 ; $432d: $18 $00

jr_018_432f:
	jr   nc, jr_018_4331                             ; $432f: $30 $00

jr_018_4331:
	ld   h, b                                        ; $4331: $60
	nop                                              ; $4332: $00
	ld   a, $81                                      ; $4333: $3e $81
	nop                                              ; $4335: $00
	inc  c                                           ; $4336: $0c
	ld   a, h                                        ; $4337: $7c
	nop                                              ; $4338: $00
	ld   b, $00                                      ; $4339: $06 $00
	inc  c                                           ; $433b: $0c
	nop                                              ; $433c: $00
	jr   jr_018_433f                                 ; $433d: $18 $00

jr_018_433f:
	jr   nc, jr_018_4341                             ; $433f: $30 $00

jr_018_4341:
	ld   h, b                                        ; $4341: $60
	nop                                              ; $4342: $00
	ld   a, $81                                      ; $4343: $3e $81
	nop                                              ; $4345: $00
	inc  c                                           ; $4346: $0c
	ld   a, h                                        ; $4347: $7c
	nop                                              ; $4348: $00
	ld   b, $00                                      ; $4349: $06 $00
	inc  c                                           ; $434b: $0c
	nop                                              ; $434c: $00
	jr   jr_018_434f                                 ; $434d: $18 $00

jr_018_434f:
	jr   nc, jr_018_4351                             ; $434f: $30 $00

jr_018_4351:
	ld   h, b                                        ; $4351: $60
	nop                                              ; $4352: $00
	ld   a, $81                                      ; $4353: $3e $81
	nop                                              ; $4355: $00
	inc  c                                           ; $4356: $0c
	ld   a, h                                        ; $4357: $7c
	nop                                              ; $4358: $00
	ld   b, $00                                      ; $4359: $06 $00
	inc  c                                           ; $435b: $0c
	nop                                              ; $435c: $00
	jr   jr_018_435f                                 ; $435d: $18 $00

jr_018_435f:
	jr   nc, jr_018_4361                             ; $435f: $30 $00

jr_018_4361:
	ld   h, b                                        ; $4361: $60
	nop                                              ; $4362: $00
	ld   a, $81                                      ; $4363: $3e $81
	nop                                              ; $4365: $00
	inc  c                                           ; $4366: $0c
	ld   a, h                                        ; $4367: $7c
	nop                                              ; $4368: $00
	ld   b, $00                                      ; $4369: $06 $00
	inc  c                                           ; $436b: $0c
	nop                                              ; $436c: $00
	jr   jr_018_436f                                 ; $436d: $18 $00

jr_018_436f:
	jr   nc, jr_018_4371                             ; $436f: $30 $00

jr_018_4371:
	ld   h, b                                        ; $4371: $60
	nop                                              ; $4372: $00
	ld   a, $81                                      ; $4373: $3e $81
	nop                                              ; $4375: $00
	inc  c                                           ; $4376: $0c
	ld   a, h                                        ; $4377: $7c
	nop                                              ; $4378: $00
	ld   b, $00                                      ; $4379: $06 $00
	inc  c                                           ; $437b: $0c
	nop                                              ; $437c: $00
	jr   jr_018_437f                                 ; $437d: $18 $00

jr_018_437f:
	jr   nc, jr_018_4381                             ; $437f: $30 $00

jr_018_4381:
	ld   h, b                                        ; $4381: $60
	nop                                              ; $4382: $00
	ld   a, $81                                      ; $4383: $3e $81
	nop                                              ; $4385: $00
	inc  c                                           ; $4386: $0c
	ld   a, h                                        ; $4387: $7c
	nop                                              ; $4388: $00
	ld   b, $00                                      ; $4389: $06 $00
	inc  c                                           ; $438b: $0c
	nop                                              ; $438c: $00
	jr   jr_018_438f                                 ; $438d: $18 $00

jr_018_438f:
	jr   nc, jr_018_4391                             ; $438f: $30 $00

jr_018_4391:
	ld   h, b                                        ; $4391: $60
	nop                                              ; $4392: $00
	ld   a, $81                                      ; $4393: $3e $81
	nop                                              ; $4395: $00
	rrca                                             ; $4396: $0f
	ld   a, h                                        ; $4397: $7c
	nop                                              ; $4398: $00
	ld   b, $00                                      ; $4399: $06 $00
	inc  c                                           ; $439b: $0c
	nop                                              ; $439c: $00
	jr   jr_018_439f                                 ; $439d: $18 $00

jr_018_439f:
	jr   nc, jr_018_43a1                             ; $439f: $30 $00

jr_018_43a1:
	ld   h, b                                        ; $43a1: $60
	nop                                              ; $43a2: $00
	ld   a, $00                                      ; $43a3: $3e $00
	rst  $38                                         ; $43a5: $ff
	nop                                              ; $43a6: $00
	add  b                                           ; $43a7: $80
	ld   a, h                                        ; $43a8: $7c
	ld   [bc], a                                     ; $43a9: $02
	rst  ToBoot                                         ; $43aa: $c7
	rst  $38                                         ; $43ab: $ff
	cp   d                                           ; $43ac: $ba
	add  e                                           ; $43ad: $83

jr_018_43ae:
	rst  $38                                         ; $43ae: $ff
	ld   bc, $fffe                                   ; $43af: $01 $fe $ff
	add  b                                           ; $43b2: $80
	cp   $01                                         ; $43b3: $fe $01
	ld   a, h                                        ; $43b5: $7c
	nop                                              ; $43b6: $00
	add  b                                           ; $43b7: $80
	add  $04                                         ; $43b8: $c6 $04
	add  hl, hl                                      ; $43ba: $29
	rst  $28                                         ; $43bb: $ef
	sub  $ff                                         ; $43bc: $d6 $ff
	rst  $28                                         ; $43be: $ef
	add  c                                           ; $43bf: $81
	rst  $38                                         ; $43c0: $ff
	dec  b                                           ; $43c1: $05
	cp   $ff                                         ; $43c2: $fe $ff
	ld   a, l                                        ; $43c4: $7d
	rst  $38                                         ; $43c5: $ff
	ld   a, h                                        ; $43c6: $7c
	nop                                              ; $43c7: $00
	add  b                                           ; $43c8: $80
	rra                                              ; $43c9: $1f
	ld   [bc], a                                     ; $43ca: $02
	ld   sp, $ae3f                                   ; $43cb: $31 $3f $ae
	add  e                                           ; $43ce: $83
	cp   a                                           ; $43cf: $bf
	add  b                                           ; $43d0: $80
	rst  $38                                         ; $43d1: $ff
	nop                                              ; $43d2: $00
	rra                                              ; $43d3: $1f
	add  b                                           ; $43d4: $80
	rst  $38                                         ; $43d5: $ff
	add  c                                           ; $43d6: $81
	nop                                              ; $43d7: $00
	add  [hl]                                        ; $43d8: $86
	add  b                                           ; $43d9: $80
	add  b                                           ; $43da: $80
	ld   hl, sp+$02                                  ; $43db: $f8 $02
	inc  c                                           ; $43dd: $0c
	db   $fc                                         ; $43de: $fc
	ld   [hl], d                                     ; $43df: $72
	add  l                                           ; $43e0: $85
	cp   $02                                         ; $43e1: $fe $02
	db   $fd                                         ; $43e3: $fd
	rst  $38                                         ; $43e4: $ff
	cp   $83                                         ; $43e5: $fe $83
	rst  $38                                         ; $43e7: $ff
	inc  bc                                          ; $43e8: $03
	add  hl, sp                                      ; $43e9: $39
	ld   a, a                                        ; $43ea: $7f
	inc  bc                                          ; $43eb: $03
	dec  sp                                          ; $43ec: $3b
	add  b                                           ; $43ed: $80
	inc  bc                                          ; $43ee: $03
	ld   bc, $0302                                   ; $43ef: $01 $02 $03
	add  b                                           ; $43f2: $80
	ld   bc, $8080                                   ; $43f3: $01 $80 $80
	inc  b                                           ; $43f6: $04
	ld   b, b                                        ; $43f7: $40
	ret  nz                                          ; $43f8: $c0

	and  c                                           ; $43f9: $a1
	pop  hl                                          ; $43fa: $e1
	ret  nz                                          ; $43fb: $c0

	add  l                                           ; $43fc: $85
	rst  $38                                         ; $43fd: $ff
	ld   bc, $ff0f                                   ; $43fe: $01 $0f $ff
	add  d                                           ; $4401: $82
	rra                                              ; $4402: $1f
	add  b                                           ; $4403: $80
	rst  $38                                         ; $4404: $ff
	nop                                              ; $4405: $00
	dec  bc                                          ; $4406: $0b
	add  e                                           ; $4407: $83
	db   $fc                                         ; $4408: $fc
	inc  bc                                          ; $4409: $03
	db   $f4                                         ; $440a: $f4
	db   $fc                                         ; $440b: $fc
	ld   [$82f8], sp                                 ; $440c: $08 $f8 $82
	add  b                                           ; $440f: $80
	add  b                                           ; $4410: $80
	ld   hl, sp+$00                                  ; $4411: $f8 $00
	add  b                                           ; $4413: $80
	add  c                                           ; $4414: $81
	rst  $38                                         ; $4415: $ff
	inc  bc                                          ; $4416: $03
	db   $fd                                         ; $4417: $fd
	rst  $38                                         ; $4418: $ff
	cp   $ff                                         ; $4419: $fe $ff
	add  [hl]                                        ; $441b: $86
	cp   $0d                                         ; $441c: $fe $0d
	ld   l, a                                        ; $441e: $6f
	di                                               ; $441f: $f3
	ld   [$f7fb], a                                  ; $4420: $ea $fb $f7
	rst  $38                                         ; $4423: $ff
	ei                                               ; $4424: $fb
	rst  $38                                         ; $4425: $ff
	ld   a, [hl]                                     ; $4426: $7e
	rst  $38                                         ; $4427: $ff
	add  hl, sp                                      ; $4428: $39
	ld   a, l                                        ; $4429: $7d
	nop                                              ; $442a: $00
	jr   c, jr_018_43ae                              ; $442b: $38 $81

jr_018_442d:
	nop                                              ; $442d: $00
	add  a                                           ; $442e: $87
	rst  $38                                         ; $442f: $ff
	ld   bc, $ff0f                                   ; $4430: $01 $0f $ff

jr_018_4433:
	add  d                                           ; $4433: $82
	rra                                              ; $4434: $1f
	ld   [bc], a                                     ; $4435: $02
	inc  bc                                          ; $4436: $03
	db   $fc                                         ; $4437: $fc
	db   $f4                                         ; $4438: $f4
	add  e                                           ; $4439: $83
	db   $fc                                         ; $443a: $fc
	inc  bc                                          ; $443b: $03
	db   $f4                                         ; $443c: $f4
	db   $fc                                         ; $443d: $fc
	adc  b                                           ; $443e: $88
	ld   hl, sp-$7e                                  ; $443f: $f8 $82
	ret  nz                                          ; $4441: $c0

	nop                                              ; $4442: $00

jr_018_4443:
	ld   [bc], a                                     ; $4443: $02
	add  l                                           ; $4444: $85
	cp   $03                                         ; $4445: $fe $03
	cp   d                                           ; $4447: $ba
	cp   $44                                         ; $4448: $fe $44
	ld   a, h                                        ; $444a: $7c
	sub  d                                           ; $444b: $92
	nop                                              ; $444c: $00
	nop                                              ; $444d: $00
	db   $10                                         ; $444e: $10
	add  l                                           ; $444f: $85
	rra                                              ; $4450: $1f
	inc  bc                                          ; $4451: $03
	rla                                              ; $4452: $17
	rra                                              ; $4453: $1f
	ld   [$820f], sp                                 ; $4454: $08 $0f $82
	nop                                              ; $4457: $00
	nop                                              ; $4458: $00
	ld   b, b                                        ; $4459: $40
	add  l                                           ; $445a: $85
	ret  nz                                          ; $445b: $c0

	ld   bc, $c040                                   ; $445c: $01 $40 $c0
	add  b                                           ; $445f: $80
	add  b                                           ; $4460: $80
	add  h                                           ; $4461: $84
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	rlca                                             ; $4464: $07
	adc  e                                           ; $4465: $8b
	nop                                              ; $4466: $00
	inc  b                                           ; $4467: $04
	rlca                                             ; $4468: $07
	nop                                              ; $4469: $00
	sbc  [hl]                                        ; $446a: $9e
	nop                                              ; $446b: $00
	jp   $0083                                       ; $446c: $c3 $83 $00


	ld   a, [bc]                                     ; $446f: $0a
	jp   nz, $8100                                   ; $4470: $c2 $00 $81

	nop                                              ; $4473: $00
	inc  bc                                          ; $4474: $03
	nop                                              ; $4475: $00
	dec  e                                           ; $4476: $1d
	nop                                              ; $4477: $00
	ld   a, h                                        ; $4478: $7c
	nop                                              ; $4479: $00
	dec  c                                           ; $447a: $0d
	add  c                                           ; $447b: $81
	nop                                              ; $447c: $00
	ld   [hl+], a                                    ; $447d: $22
	ld   [$0900], sp                                 ; $447e: $08 $00 $09
	nop                                              ; $4481: $00
	ld   bc, $0d00                                   ; $4482: $01 $00 $0d
	nop                                              ; $4485: $00
	ld   a, h                                        ; $4486: $7c
	nop                                              ; $4487: $00
	db   $e3                                         ; $4488: $e3
	nop                                              ; $4489: $00
	ld   d, l                                        ; $448a: $55
	nop                                              ; $448b: $00
	ld   [hl], c                                     ; $448c: $71
	nop                                              ; $448d: $00
	jr   nz, jr_018_4490                             ; $448e: $20 $00

jr_018_4490:
	sub  h                                           ; $4490: $94
	nop                                              ; $4491: $00
	push bc                                          ; $4492: $c5
	nop                                              ; $4493: $00
	ld   d, l                                        ; $4494: $55
	nop                                              ; $4495: $00
	db   $e3                                         ; $4496: $e3
	nop                                              ; $4497: $00
	add  b                                           ; $4498: $80
	nop                                              ; $4499: $00
	ld   b, b                                        ; $449a: $40
	nop                                              ; $449b: $00
	ret  nz                                          ; $449c: $c0

	nop                                              ; $449d: $00
	add  b                                           ; $449e: $80
	nop                                              ; $449f: $00
	ld   b, b                                        ; $44a0: $40
	add  c                                           ; $44a1: $81
	nop                                              ; $44a2: $00
	inc  bc                                          ; $44a3: $03
	ld   b, b                                        ; $44a4: $40
	nop                                              ; $44a5: $00
	add  b                                           ; $44a6: $80
	nop                                              ; $44a7: $00
	add  b                                           ; $44a8: $80
	inc  c                                           ; $44a9: $0c
	adc  b                                           ; $44aa: $88
	jr   jr_018_442d                                 ; $44ab: $18 $80

	inc  c                                           ; $44ad: $0c
	add  b                                           ; $44ae: $80
	nop                                              ; $44af: $00
	add  b                                           ; $44b0: $80
	jr   c, jr_018_4433                              ; $44b1: $38 $80

	ld   a, h                                        ; $44b3: $7c
	add  b                                           ; $44b4: $80
	xor  $80                                         ; $44b5: $ee $80
	add  $82                                         ; $44b7: $c6 $82
	cp   $80                                         ; $44b9: $fe $80
	add  $80                                         ; $44bb: $c6 $80
	nop                                              ; $44bd: $00
	add  b                                           ; $44be: $80
	ld   h, b                                        ; $44bf: $60
	adc  b                                           ; $44c0: $88
	jr   nc, jr_018_4443                             ; $44c1: $30 $80

	ld   h, b                                        ; $44c3: $60
	add  b                                           ; $44c4: $80
	nop                                              ; $44c5: $00
	ld   [bc], a                                     ; $44c6: $02
	inc  a                                           ; $44c7: $3c
	nop                                              ; $44c8: $00
	ld   b, $81                                      ; $44c9: $06 $81
	nop                                              ; $44cb: $00
	ld   [bc], a                                     ; $44cc: $02
	ld   b, $00                                      ; $44cd: $06 $00
	ld   b, $81                                      ; $44cf: $06 $81
	nop                                              ; $44d1: $00
	inc  b                                           ; $44d2: $04
	ld   b, $00                                      ; $44d3: $06 $00
	inc  a                                           ; $44d5: $3c
	nop                                              ; $44d6: $00
	db   $eb                                         ; $44d7: $eb
	add  c                                           ; $44d8: $81
	nop                                              ; $44d9: $00
	nop                                              ; $44da: $00
	ld   [bc], a                                     ; $44db: $02
	add  e                                           ; $44dc: $83
	nop                                              ; $44dd: $00
	ld   b, $10                                      ; $44de: $06 $10
	nop                                              ; $44e0: $00
	adc  b                                           ; $44e1: $88
	nop                                              ; $44e2: $00
	ld   [hl], c                                     ; $44e3: $71
	nop                                              ; $44e4: $00
	rst  $28                                         ; $44e5: $ef
	add  c                                           ; $44e6: $81
	nop                                              ; $44e7: $00
	nop                                              ; $44e8: $00
	jr   z, @-$77                                    ; $44e9: $28 $87

	nop                                              ; $44eb: $00
	ld   b, $c7                                      ; $44ec: $06 $c7
	nop                                              ; $44ee: $00
	sbc  h                                           ; $44ef: $9c
	nop                                              ; $44f0: $00
	ld   h, $00                                      ; $44f1: $26 $00
	add  b                                           ; $44f3: $80
	add  e                                           ; $44f4: $83
	nop                                              ; $44f5: $00
	ld   a, [bc]                                     ; $44f6: $0a
	inc  b                                           ; $44f7: $04
	nop                                              ; $44f8: $00
	ld   [hl+], a                                    ; $44f9: $22
	nop                                              ; $44fa: $00
	inc  e                                           ; $44fb: $1c
	nop                                              ; $44fc: $00
	ret  z                                           ; $44fd: $c8

	nop                                              ; $44fe: $00
	jr   nz, jr_018_4501                             ; $44ff: $20 $00

jr_018_4501:
	db   $10                                         ; $4501: $10
	add  e                                           ; $4502: $83
	nop                                              ; $4503: $00
	ld   [de], a                                     ; $4504: $12
	jr   nz, jr_018_4507                             ; $4505: $20 $00

jr_018_4507:
	stop                                             ; $4507: $10 $00
	scf                                              ; $4509: $37
	nop                                              ; $450a: $00
	ld   a, h                                        ; $450b: $7c
	nop                                              ; $450c: $00
	ld   b, $00                                      ; $450d: $06 $00
	inc  c                                           ; $450f: $0c
	nop                                              ; $4510: $00
	jr   jr_018_4513                                 ; $4511: $18 $00

jr_018_4513:
	jr   nc, jr_018_4515                             ; $4513: $30 $00

jr_018_4515:
	ld   h, b                                        ; $4515: $60
	nop                                              ; $4516: $00
	ld   a, $81                                      ; $4517: $3e $81
	nop                                              ; $4519: $00
	inc  c                                           ; $451a: $0c
	ld   a, h                                        ; $451b: $7c
	nop                                              ; $451c: $00
	ld   b, $00                                      ; $451d: $06 $00
	inc  c                                           ; $451f: $0c
	nop                                              ; $4520: $00
	jr   jr_018_4523                                 ; $4521: $18 $00

jr_018_4523:
	jr   nc, jr_018_4525                             ; $4523: $30 $00

jr_018_4525:
	ld   h, b                                        ; $4525: $60
	nop                                              ; $4526: $00
	ld   a, $81                                      ; $4527: $3e $81
	nop                                              ; $4529: $00
	inc  c                                           ; $452a: $0c
	ld   a, h                                        ; $452b: $7c
	nop                                              ; $452c: $00
	ld   b, $00                                      ; $452d: $06 $00
	inc  c                                           ; $452f: $0c
	nop                                              ; $4530: $00
	jr   jr_018_4533                                 ; $4531: $18 $00

jr_018_4533:
	jr   nc, jr_018_4535                             ; $4533: $30 $00

jr_018_4535:
	ld   h, b                                        ; $4535: $60
	nop                                              ; $4536: $00
	ld   a, $81                                      ; $4537: $3e $81
	nop                                              ; $4539: $00
	add  b                                           ; $453a: $80
	rst  $38                                         ; $453b: $ff
	add  b                                           ; $453c: $80
	nop                                              ; $453d: $00
	nop                                              ; $453e: $00
	rst  $38                                         ; $453f: $ff
	add  c                                           ; $4540: $81
	nop                                              ; $4541: $00
	rlca                                             ; $4542: $07
	inc  e                                           ; $4543: $1c
	nop                                              ; $4544: $00
	ld   h, e                                        ; $4545: $63
	nop                                              ; $4546: $00
	ld   a, a                                        ; $4547: $7f
	nop                                              ; $4548: $00
	rst  $38                                         ; $4549: $ff
	nop                                              ; $454a: $00
	add  b                                           ; $454b: $80
	rst  $38                                         ; $454c: $ff
	add  b                                           ; $454d: $80
	nop                                              ; $454e: $00
	nop                                              ; $454f: $00
	rst  $38                                         ; $4550: $ff
	add  c                                           ; $4551: $81
	nop                                              ; $4552: $00
	rlca                                             ; $4553: $07
	ld   h, e                                        ; $4554: $63
	nop                                              ; $4555: $00
	ld   d, l                                        ; $4556: $55
	nop                                              ; $4557: $00
	ld   c, c                                        ; $4558: $49

jr_018_4559:
	nop                                              ; $4559: $00
	add  b                                           ; $455a: $80
	nop                                              ; $455b: $00
	add  b                                           ; $455c: $80
	rst  $38                                         ; $455d: $ff
	add  b                                           ; $455e: $80
	nop                                              ; $455f: $00
	nop                                              ; $4560: $00
	rst  $38                                         ; $4561: $ff
	add  e                                           ; $4562: $83
	nop                                              ; $4563: $00
	dec  b                                           ; $4564: $05
	ld   a, a                                        ; $4565: $7f
	nop                                              ; $4566: $00
	inc  e                                           ; $4567: $1c
	nop                                              ; $4568: $00
	sbc  h                                           ; $4569: $9c
	nop                                              ; $456a: $00
	add  b                                           ; $456b: $80
	rst  $38                                         ; $456c: $ff
	add  b                                           ; $456d: $80
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	rst  $38                                         ; $4570: $ff
	add  c                                           ; $4571: $81
	nop                                              ; $4572: $00
	ld   [bc], a                                     ; $4573: $02
	ld   a, a                                        ; $4574: $7f
	nop                                              ; $4575: $00
	inc  e                                           ; $4576: $1c
	add  c                                           ; $4577: $81
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	ld   h, e                                        ; $457a: $63
	add  e                                           ; $457b: $83
	nop                                              ; $457c: $00
	ld   a, [bc]                                     ; $457d: $0a
	inc  c                                           ; $457e: $0c
	nop                                              ; $457f: $00
	inc  d                                           ; $4580: $14
	nop                                              ; $4581: $00
	ld   l, $00                                      ; $4582: $2e $00
	ld   e, d                                        ; $4584: $5a
	nop                                              ; $4585: $00
	inc  d                                           ; $4586: $14
	nop                                              ; $4587: $00
	ld   a, b                                        ; $4588: $78
	add  e                                           ; $4589: $83
	nop                                              ; $458a: $00
	ld   a, [bc]                                     ; $458b: $0a
	jr   jr_018_458e                                 ; $458c: $18 $00

jr_018_458e:
	ld   h, a                                        ; $458e: $67
	nop                                              ; $458f: $00
	ld   h, a                                        ; $4590: $67
	nop                                              ; $4591: $00
	ld   h, a                                        ; $4592: $67
	nop                                              ; $4593: $00
	inc  h                                           ; $4594: $24
	nop                                              ; $4595: $00
	ld   e, e                                        ; $4596: $5b
	add  e                                           ; $4597: $83
	nop                                              ; $4598: $00
	ld   a, [bc]                                     ; $4599: $0a
	ld   a, a                                        ; $459a: $7f
	nop                                              ; $459b: $00
	ld   a, h                                        ; $459c: $7c
	nop                                              ; $459d: $00
	ld   a, b                                        ; $459e: $78
	nop                                              ; $459f: $00
	ld   a, h                                        ; $45a0: $7c
	nop                                              ; $45a1: $00
	ld   a, h                                        ; $45a2: $7c
	nop                                              ; $45a3: $00
	ld   a, e                                        ; $45a4: $7b
	add  e                                           ; $45a5: $83
	nop                                              ; $45a6: $00
	ld   a, [hl+]                                    ; $45a7: $2a
	ld   a, a                                        ; $45a8: $7f
	nop                                              ; $45a9: $00
	ld   a, h                                        ; $45aa: $7c
	nop                                              ; $45ab: $00
	ld   a, b                                        ; $45ac: $78
	nop                                              ; $45ad: $00
	ld   a, h                                        ; $45ae: $7c
	nop                                              ; $45af: $00
	ld   a, h                                        ; $45b0: $7c
	nop                                              ; $45b1: $00
	ld   a, e                                        ; $45b2: $7b
	nop                                              ; $45b3: $00
	ld   a, a                                        ; $45b4: $7f
	nop                                              ; $45b5: $00
	inc  e                                           ; $45b6: $1c
	nop                                              ; $45b7: $00
	inc  e                                           ; $45b8: $1c
	nop                                              ; $45b9: $00
	inc  e                                           ; $45ba: $1c
	nop                                              ; $45bb: $00
	inc  e                                           ; $45bc: $1c
	nop                                              ; $45bd: $00
	rra                                              ; $45be: $1f
	nop                                              ; $45bf: $00
	rrca                                             ; $45c0: $0f
	nop                                              ; $45c1: $00
	ld   l, a                                        ; $45c2: $6f
	nop                                              ; $45c3: $00
	ld   a, a                                        ; $45c4: $7f
	nop                                              ; $45c5: $00
	inc  e                                           ; $45c6: $1c
	nop                                              ; $45c7: $00
	inc  e                                           ; $45c8: $1c
	nop                                              ; $45c9: $00
	inc  e                                           ; $45ca: $1c
	nop                                              ; $45cb: $00
	inc  e                                           ; $45cc: $1c
	nop                                              ; $45cd: $00
	ld   a, h                                        ; $45ce: $7c
	nop                                              ; $45cf: $00
	ld   hl, sp+$00                                  ; $45d0: $f8 $00
	ei                                               ; $45d2: $fb
	adc  a                                           ; $45d3: $8f
	nop                                              ; $45d4: $00
	nop                                              ; $45d5: $00
	jr   jr_018_4559                                 ; $45d6: $18 $81

	nop                                              ; $45d8: $00
	ld   [bc], a                                     ; $45d9: $02
	ld   h, a                                        ; $45da: $67
	nop                                              ; $45db: $00
	ld   c, c                                        ; $45dc: $49
	add  c                                           ; $45dd: $81
	nop                                              ; $45de: $00
	dec  d                                           ; $45df: $15
	ld   d, b                                        ; $45e0: $50
	nop                                              ; $45e1: $00
	stop                                             ; $45e2: $10 $00
	halt                                             ; $45e4: $76
	nop                                              ; $45e5: $00
	inc  c                                           ; $45e6: $0c
	nop                                              ; $45e7: $00
	inc  d                                           ; $45e8: $14
	nop                                              ; $45e9: $00
	jr   z, jr_018_45ec                              ; $45ea: $28 $00

jr_018_45ec:
	ld   d, [hl]                                     ; $45ec: $56
	nop                                              ; $45ed: $00
	and  l                                           ; $45ee: $a5
	nop                                              ; $45ef: $00
	inc  a                                           ; $45f0: $3c
	nop                                              ; $45f1: $00
	rst  $38                                         ; $45f2: $ff
	nop                                              ; $45f3: $00
	rst  $38                                         ; $45f4: $ff
	nop                                              ; $45f5: $00
	add  b                                           ; $45f6: $80
	ccf                                              ; $45f7: $3f
	add  b                                           ; $45f8: $80
	ld   b, b                                        ; $45f9: $40
	nop                                              ; $45fa: $00
	ld   e, a                                        ; $45fb: $5f
	add  a                                           ; $45fc: $87
	ld   b, b                                        ; $45fd: $40
	ld   bc, $001f                                   ; $45fe: $01 $1f $00
	add  b                                           ; $4601: $80
	rst  $38                                         ; $4602: $ff
	add  b                                           ; $4603: $80
	nop                                              ; $4604: $00
	nop                                              ; $4605: $00
	rst  $38                                         ; $4606: $ff
	add  a                                           ; $4607: $87
	nop                                              ; $4608: $00
	ld   a, [de]                                     ; $4609: $1a
	rst  $38                                         ; $460a: $ff
	nop                                              ; $460b: $00
	ld   a, h                                        ; $460c: $7c
	nop                                              ; $460d: $00
	ld   b, $00                                      ; $460e: $06 $00
	inc  c                                           ; $4610: $0c
	nop                                              ; $4611: $00
	jr   jr_018_4614                                 ; $4612: $18 $00

jr_018_4614:
	jr   nc, jr_018_4616                             ; $4614: $30 $00

jr_018_4616:
	ld   h, b                                        ; $4616: $60
	nop                                              ; $4617: $00
	ld   a, $00                                      ; $4618: $3e $00
	add  b                                           ; $461a: $80
	nop                                              ; $461b: $00
	ld   a, a                                        ; $461c: $7f
	nop                                              ; $461d: $00
	ld   a, a                                        ; $461e: $7f
	nop                                              ; $461f: $00
	ld   a, a                                        ; $4620: $7f
	nop                                              ; $4621: $00
	ld   a, a                                        ; $4622: $7f
	nop                                              ; $4623: $00
	inc  e                                           ; $4624: $1c
	add  c                                           ; $4625: $81
	nop                                              ; $4626: $00
	ld   [bc], a                                     ; $4627: $02
	inc  e                                           ; $4628: $1c
	nop                                              ; $4629: $00
	inc  e                                           ; $462a: $1c
	add  c                                           ; $462b: $81
	nop                                              ; $462c: $00
	ld   [bc], a                                     ; $462d: $02
	inc  e                                           ; $462e: $1c
	nop                                              ; $462f: $00
	ld   c, c                                        ; $4630: $49
	add  e                                           ; $4631: $83
	nop                                              ; $4632: $00
	ld   [$0001], sp                                 ; $4633: $08 $01 $00
	ld   d, b                                        ; $4636: $50
	nop                                              ; $4637: $00
	inc  b                                           ; $4638: $04
	nop                                              ; $4639: $00
	inc  e                                           ; $463a: $1c
	nop                                              ; $463b: $00
	inc  e                                           ; $463c: $1c
	add  c                                           ; $463d: $81
	nop                                              ; $463e: $00
	ld   [bc], a                                     ; $463f: $02
	inc  e                                           ; $4640: $1c
	nop                                              ; $4641: $00
	ld   a, a                                        ; $4642: $7f
	add  e                                           ; $4643: $83
	nop                                              ; $4644: $00
	ld   [bc], a                                     ; $4645: $02
	ld   a, a                                        ; $4646: $7f
	nop                                              ; $4647: $00
	inc  e                                           ; $4648: $1c
	add  c                                           ; $4649: $81
	nop                                              ; $464a: $00
	ld   [bc], a                                     ; $464b: $02
	inc  e                                           ; $464c: $1c
	nop                                              ; $464d: $00
	inc  e                                           ; $464e: $1c
	add  e                                           ; $464f: $83
	nop                                              ; $4650: $00
	ld   [$00a4], sp                                 ; $4651: $08 $a4 $00
	db   $f4                                         ; $4654: $f4
	nop                                              ; $4655: $00
	ld   c, h                                        ; $4656: $4c
	nop                                              ; $4657: $00
	ld   h, [hl]                                     ; $4658: $66
	nop                                              ; $4659: $00
	ld   b, e                                        ; $465a: $43
	add  e                                           ; $465b: $83
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	ld   e, d                                        ; $465e: $5a
	add  c                                           ; $465f: $81
	nop                                              ; $4660: $00
	inc  c                                           ; $4661: $0c
	ld   a, a                                        ; $4662: $7f
	nop                                              ; $4663: $00
	inc  h                                           ; $4664: $24
	nop                                              ; $4665: $00
	inc  h                                           ; $4666: $24
	nop                                              ; $4667: $00
	ld   b, e                                        ; $4668: $43
	nop                                              ; $4669: $00
	ld   h, [hl]                                     ; $466a: $66
	nop                                              ; $466b: $00
	jp   $9900                                       ; $466c: $c3 $00 $99


	add  c                                           ; $466f: $81
	nop                                              ; $4670: $00
	inc  c                                           ; $4671: $0c
	ld   bc, $3e00                                   ; $4672: $01 $00 $3e
	nop                                              ; $4675: $00
	rrca                                             ; $4676: $0f
	nop                                              ; $4677: $00
	rrca                                             ; $4678: $0f
	nop                                              ; $4679: $00
	rrca                                             ; $467a: $0f
	nop                                              ; $467b: $00
	rrca                                             ; $467c: $0f
	nop                                              ; $467d: $00
	ccf                                              ; $467e: $3f
	add  c                                           ; $467f: $81
	nop                                              ; $4680: $00
	inc  c                                           ; $4681: $0c
	ret  nz                                          ; $4682: $c0

	nop                                              ; $4683: $00
	ld   a, $00                                      ; $4684: $3e $00
	ld   hl, sp+$00                                  ; $4686: $f8 $00
	ld   hl, sp+$00                                  ; $4688: $f8 $00
	ld   hl, sp+$00                                  ; $468a: $f8 $00
	ld   hl, sp+$00                                  ; $468c: $f8 $00
	cp   $81                                         ; $468e: $fe $81
	nop                                              ; $4690: $00
	inc  b                                           ; $4691: $04
	ld   h, [hl]                                     ; $4692: $66
	nop                                              ; $4693: $00
	add  hl, bc                                      ; $4694: $09
	nop                                              ; $4695: $00
	add  hl, bc                                      ; $4696: $09
	add  c                                           ; $4697: $81
	nop                                              ; $4698: $00
	inc  bc                                          ; $4699: $03
	ld   h, [hl]                                     ; $469a: $66
	nop                                              ; $469b: $00
	rst  $38                                         ; $469c: $ff
	nop                                              ; $469d: $00
	add  b                                           ; $469e: $80
	rst  $38                                         ; $469f: $ff
	add  b                                           ; $46a0: $80
	nop                                              ; $46a1: $00
	dec  bc                                          ; $46a2: $0b
	call z, $c800                                    ; $46a3: $cc $00 $c8
	nop                                              ; $46a6: $00
	ret  z                                           ; $46a7: $c8

	nop                                              ; $46a8: $00
	ld   b, h                                        ; $46a9: $44
	nop                                              ; $46aa: $00
	ld   [hl], a                                     ; $46ab: $77
	nop                                              ; $46ac: $00
	rst  $38                                         ; $46ad: $ff
	nop                                              ; $46ae: $00
	add  b                                           ; $46af: $80
	rst  $38                                         ; $46b0: $ff
	add  b                                           ; $46b1: $80
	nop                                              ; $46b2: $00
	nop                                              ; $46b3: $00
	rst  $38                                         ; $46b4: $ff
	add  a                                           ; $46b5: $87
	nop                                              ; $46b6: $00
	ld   bc, $00ff                                   ; $46b7: $01 $ff $00
	add  b                                           ; $46ba: $80
	rst  $38                                         ; $46bb: $ff
	add  b                                           ; $46bc: $80
	nop                                              ; $46bd: $00
	dec  bc                                          ; $46be: $0b
	jp   $2400                                       ; $46bf: $c3 $00 $24


	nop                                              ; $46c2: $00
	inc  h                                           ; $46c3: $24
	nop                                              ; $46c4: $00
	ld   e, d                                        ; $46c5: $5a
	nop                                              ; $46c6: $00
	ld   h, [hl]                                     ; $46c7: $66
	nop                                              ; $46c8: $00
	rst  $38                                         ; $46c9: $ff
	nop                                              ; $46ca: $00
	add  b                                           ; $46cb: $80
	rst  $38                                         ; $46cc: $ff
	add  d                                           ; $46cd: $82
	nop                                              ; $46ce: $00
	nop                                              ; $46cf: $00
	inc  a                                           ; $46d0: $3c
	add  c                                           ; $46d1: $81
	nop                                              ; $46d2: $00
	dec  b                                           ; $46d3: $05
	inc  a                                           ; $46d4: $3c
	nop                                              ; $46d5: $00
	rst  $38                                         ; $46d6: $ff
	nop                                              ; $46d7: $00
	rst  $38                                         ; $46d8: $ff
	nop                                              ; $46d9: $00
	add  b                                           ; $46da: $80
	rst  $38                                         ; $46db: $ff
	add  b                                           ; $46dc: $80
	nop                                              ; $46dd: $00
	nop                                              ; $46de: $00
	ld   e, a                                        ; $46df: $5f
	adc  l                                           ; $46e0: $8d
	ld   b, b                                        ; $46e1: $40
	nop                                              ; $46e2: $00
	ldh  [$8d], a                                    ; $46e3: $e0 $8d
	nop                                              ; $46e5: $00
	rrca                                             ; $46e6: $0f
	rst  $38                                         ; $46e7: $ff
	nop                                              ; $46e8: $00
	ld   a, h                                        ; $46e9: $7c
	nop                                              ; $46ea: $00
	ld   b, $00                                      ; $46eb: $06 $00
	inc  c                                           ; $46ed: $0c
	nop                                              ; $46ee: $00
	jr   jr_018_46f1                                 ; $46ef: $18 $00

jr_018_46f1:
	jr   nc, jr_018_46f3                             ; $46f1: $30 $00

jr_018_46f3:
	ld   h, b                                        ; $46f3: $60
	nop                                              ; $46f4: $00
	ld   a, $00                                      ; $46f5: $3e $00
	ld   [hl], l                                     ; $46f7: $75
	ld   [bc], a                                     ; $46f8: $02
	add  b                                           ; $46f9: $80
	ld   [bc], a                                     ; $46fa: $02
	ld   b, $47                                      ; $46fb: $06 $47
	ld   b, l                                        ; $46fd: $45
	ld   l, [hl]                                     ; $46fe: $6e
	ld   l, e                                        ; $46ff: $6b
	ld   e, a                                        ; $4700: $5f
	ld   [hl], a                                     ; $4701: $77
	ld   [hl], b                                     ; $4702: $70
	add  b                                           ; $4703: $80
	ld   h, a                                        ; $4704: $67
	add  b                                           ; $4705: $80
	ld   l, c                                        ; $4706: $69
	add  e                                           ; $4707: $83
	ld   h, l                                        ; $4708: $65
	dec  b                                           ; $4709: $05
	dec  c                                           ; $470a: $0d
	dec  a                                           ; $470b: $3d
	dec  l                                           ; $470c: $2d
	ccf                                              ; $470d: $3f
	ld   b, a                                        ; $470e: $47
	ld   h, b                                        ; $470f: $60
	add  b                                           ; $4710: $80
	ld   a, a                                        ; $4711: $7f
	ld   bc, $7f40                                   ; $4712: $01 $40 $7f
	add  h                                           ; $4715: $84
	nop                                              ; $4716: $00
	add  b                                           ; $4717: $80
	db   $10                                         ; $4718: $10
	add  b                                           ; $4719: $80
	or   b                                           ; $471a: $b0
	ld   [bc], a                                     ; $471b: $02
	ld   d, b                                        ; $471c: $50
	ldh  a, [$b0]                                    ; $471d: $f0 $b0

Call_018_471f:
	add  a                                           ; $471f: $87
	ldh  a, [rTIMA]                                  ; $4720: $f0 $05
	add  b                                           ; $4722: $80
	ldh  [hScriptOpcodeParams], a                                    ; $4723: $e0 $a0
	ldh  [$50], a                                    ; $4725: $e0 $50
	ld   [hl], b                                     ; $4727: $70
	add  b                                           ; $4728: $80
	ldh  a, [rSB]                                    ; $4729: $f0 $01
	db   $10                                         ; $472b: $10
	ldh  a, [$82]                                    ; $472c: $f0 $82
	nop                                              ; $472e: $00
	add  b                                           ; $472f: $80
	ld   [bc], a                                     ; $4730: $02
	ld   b, $47                                      ; $4731: $06 $47
	ld   b, l                                        ; $4733: $45
	ld   l, [hl]                                     ; $4734: $6e
	ld   l, e                                        ; $4735: $6b
	ld   e, a                                        ; $4736: $5f
	ld   [hl], a                                     ; $4737: $77
	ld   [hl], b                                     ; $4738: $70
	add  b                                           ; $4739: $80
	ld   h, a                                        ; $473a: $67
	add  b                                           ; $473b: $80
	ld   l, c                                        ; $473c: $69
	add  e                                           ; $473d: $83
	ld   h, l                                        ; $473e: $65
	dec  b                                           ; $473f: $05
	dec  c                                           ; $4740: $0d
	dec  a                                           ; $4741: $3d
	dec  l                                           ; $4742: $2d
	ccf                                              ; $4743: $3f
	ld   b, a                                        ; $4744: $47
	ld   h, b                                        ; $4745: $60
	add  b                                           ; $4746: $80
	ld   a, a                                        ; $4747: $7f
	ld   bc, $7f40                                   ; $4748: $01 $40 $7f
	add  h                                           ; $474b: $84
	nop                                              ; $474c: $00
	add  b                                           ; $474d: $80
	db   $10                                         ; $474e: $10
	add  b                                           ; $474f: $80
	or   b                                           ; $4750: $b0
	ld   [bc], a                                     ; $4751: $02
	ld   d, b                                        ; $4752: $50
	ldh  a, [$b0]                                    ; $4753: $f0 $b0
	add  a                                           ; $4755: $87
	ldh  a, [rTIMA]                                  ; $4756: $f0 $05
	add  b                                           ; $4758: $80
	ldh  [hScriptOpcodeParams], a                                    ; $4759: $e0 $a0
	ldh  [$50], a                                    ; $475b: $e0 $50
	ld   [hl], b                                     ; $475d: $70
	add  b                                           ; $475e: $80
	ldh  a, [rSB]                                    ; $475f: $f0 $01
	db   $10                                         ; $4761: $10
	ldh  a, [$88]                                    ; $4762: $f0 $88
	nop                                              ; $4764: $00
	ld   a, [bc]                                     ; $4765: $0a
	ldh  [rP1], a                                    ; $4766: $e0 $00
	db   $10                                         ; $4768: $10
	ld   h, b                                        ; $4769: $60
	ld   c, b                                        ; $476a: $48
	ld   [hl], b                                     ; $476b: $70
	ld   h, h                                        ; $476c: $64
	ld   a, b                                        ; $476d: $78
	ld   [hl], d                                     ; $476e: $72
	ld   a, h                                        ; $476f: $7c
	ld   a, c                                        ; $4770: $79
	add  c                                           ; $4771: $81
	ld   a, [hl]                                     ; $4772: $7e
	ld   a, [bc]                                     ; $4773: $0a
	ld   a, e                                        ; $4774: $7b
	ld   a, h                                        ; $4775: $7c
	halt                                             ; $4776: $76
	ld   a, b                                        ; $4777: $78
	ld   l, h                                        ; $4778: $6c
	ld   [hl], b                                     ; $4779: $70
	ld   e, b                                        ; $477a: $58
	ld   h, b                                        ; $477b: $60
	ld   [hl], b                                     ; $477c: $70
	nop                                              ; $477d: $00
	ldh  [rIE], a                                    ; $477e: $e0 $ff
	nop                                              ; $4780: $00
	rst  $38                                         ; $4781: $ff
	nop                                              ; $4782: $00
	rst  $38                                         ; $4783: $ff
	nop                                              ; $4784: $00
	sbc  [hl]                                        ; $4785: $9e
	nop                                              ; $4786: $00
	add  b                                           ; $4787: $80
	ld   sp, $280d                                   ; $4788: $31 $0d $28
	add  hl, sp                                      ; $478b: $39
	scf                                              ; $478c: $37
	ccf                                              ; $478d: $3f
	dec  sp                                          ; $478e: $3b
	ccf                                              ; $478f: $3f
	dec  a                                           ; $4790: $3d
	ccf                                              ; $4791: $3f
	ld   a, $3f                                      ; $4792: $3e $3f
	dec  a                                           ; $4794: $3d
	ld   a, $1d                                      ; $4795: $3e $1d
	nop                                              ; $4797: $00
	add  b                                           ; $4798: $80
	jr   @+$08                                       ; $4799: $18 $06

	jr   z, jr_018_47d5                              ; $479b: $28 $38

	ret  c                                           ; $479d: $d8

	ld   hl, sp-$48                                  ; $479e: $f8 $b8
	ld   hl, sp+$78                                  ; $47a0: $f8 $78
	add  e                                           ; $47a2: $83
	ld   hl, sp+$00                                  ; $47a3: $f8 $00
	ldh  a, [$9d]                                    ; $47a5: $f0 $9d
	nop                                              ; $47a7: $00
	add  b                                           ; $47a8: $80
	ld   [bc], a                                     ; $47a9: $02
	ld   b, $47                                      ; $47aa: $06 $47
	ld   b, l                                        ; $47ac: $45
	ld   l, [hl]                                     ; $47ad: $6e
	ld   l, e                                        ; $47ae: $6b
	ld   e, a                                        ; $47af: $5f
	ld   [hl], a                                     ; $47b0: $77
	ld   [hl], b                                     ; $47b1: $70
	add  b                                           ; $47b2: $80
	ld   h, a                                        ; $47b3: $67
	add  b                                           ; $47b4: $80
	ld   l, c                                        ; $47b5: $69
	add  c                                           ; $47b6: $81
	ld   h, l                                        ; $47b7: $65
	ld   bc, $003a                                   ; $47b8: $01 $3a $00
	add  b                                           ; $47bb: $80
	db   $10                                         ; $47bc: $10
	add  b                                           ; $47bd: $80
	or   b                                           ; $47be: $b0
	ld   [bc], a                                     ; $47bf: $02
	ld   d, b                                        ; $47c0: $50
	ldh  a, [$b0]                                    ; $47c1: $f0 $b0
	add  l                                           ; $47c3: $85
	ldh  a, [rP1]                                    ; $47c4: $f0 $00
	ldh  [rIE], a                                    ; $47c6: $e0 $ff
	nop                                              ; $47c8: $00
	sbc  h                                           ; $47c9: $9c
	nop                                              ; $47ca: $00
	ld   [bc], a                                     ; $47cb: $02
	daa                                              ; $47cc: $27
	inc  a                                           ; $47cd: $3c
	ld   [$1e81], sp                                 ; $47ce: $08 $81 $1e
	nop                                              ; $47d1: $00
	ld   a, [hl+]                                    ; $47d2: $2a
	add  b                                           ; $47d3: $80
	inc  a                                           ; $47d4: $3c

jr_018_47d5:
	inc  b                                           ; $47d5: $04
	ccf                                              ; $47d6: $3f
	jr   c, jr_018_4818                              ; $47d7: $38 $3f

	jr   nz, jr_018_481a                             ; $47d9: $20 $3f

	add  b                                           ; $47db: $80
	nop                                              ; $47dc: $00
	ld   [bc], a                                     ; $47dd: $02
	add  h                                           ; $47de: $84
	db   $fc                                         ; $47df: $fc
	ldh  a, [$81]                                    ; $47e0: $f0 $81
	ld   hl, sp+$00                                  ; $47e2: $f8 $00
	or   h                                           ; $47e4: $b4
	add  b                                           ; $47e5: $80
	ld   a, h                                        ; $47e6: $7c
	inc  b                                           ; $47e7: $04
	db   $fc                                         ; $47e8: $fc
	inc  a                                           ; $47e9: $3c
	db   $fc                                         ; $47ea: $fc
	inc  b                                           ; $47eb: $04
	db   $fc                                         ; $47ec: $fc
	and  b                                           ; $47ed: $a0
	nop                                              ; $47ee: $00
	rlca                                             ; $47ef: $07
	ld   e, a                                        ; $47f0: $5f
	ld   h, l                                        ; $47f1: $65
	dec  c                                           ; $47f2: $0d
	ccf                                              ; $47f3: $3f
	jr   z, @+$41                                    ; $47f4: $28 $3f

	ld   b, b                                        ; $47f6: $40
	ld   h, b                                        ; $47f7: $60
	add  b                                           ; $47f8: $80
	ld   a, a                                        ; $47f9: $7f
	ld   bc, $7f40                                   ; $47fa: $01 $40 $7f
	add  d                                           ; $47fd: $82
	nop                                              ; $47fe: $00
	rlca                                             ; $47ff: $07
	db   $10                                         ; $4800: $10
	ldh  a, [$80]                                    ; $4801: $f0 $80
	ldh  [hScriptOpcodeParams], a                                    ; $4803: $e0 $a0
	ldh  [$50], a                                    ; $4805: $e0 $50
	ld   [hl], b                                     ; $4807: $70
	add  b                                           ; $4808: $80
	ldh  a, [rSB]                                    ; $4809: $f0 $01
	db   $10                                         ; $480b: $10
	ldh  a, [rIE]                                    ; $480c: $f0 $ff
	nop                                              ; $480e: $00
	rst  $38                                         ; $480f: $ff
	nop                                              ; $4810: $00
	rst  $38                                         ; $4811: $ff
	nop                                              ; $4812: $00
	rst  $38                                         ; $4813: $ff
	nop                                              ; $4814: $00
	rst  $38                                         ; $4815: $ff
	nop                                              ; $4816: $00
	rst  $38                                         ; $4817: $ff

jr_018_4818:
	nop                                              ; $4818: $00
	rst  $38                                         ; $4819: $ff

jr_018_481a:
	nop                                              ; $481a: $00
	rst  $38                                         ; $481b: $ff
	nop                                              ; $481c: $00
	jp   c, $9400                                    ; $481d: $da $00 $94

	rst  $38                                         ; $4820: $ff
	add  b                                           ; $4821: $80
	ld   hl, sp+$08                                  ; $4822: $f8 $08
	db   $f4                                         ; $4824: $f4
	rst  $30                                         ; $4825: $f7
	db   $eb                                         ; $4826: $eb
	db   $ec                                         ; $4827: $ec
	rst  $10                                         ; $4828: $d7
	ret  c                                           ; $4829: $d8

	call z, $e9d1                                    ; $482a: $cc $d1 $e9
	add  e                                           ; $482d: $83
	rst  $38                                         ; $482e: $ff
	add  c                                           ; $482f: $81
	nop                                              ; $4830: $00
	add  b                                           ; $4831: $80
	rst  $38                                         ; $4832: $ff
	ld   bc, $ff00                                   ; $4833: $01 $00 $ff
	add  b                                           ; $4836: $80
	nop                                              ; $4837: $00
	add  l                                           ; $4838: $85
	rst  $38                                         ; $4839: $ff
	add  b                                           ; $483a: $80
	rlca                                             ; $483b: $07
	nop                                              ; $483c: $00
	inc  bc                                          ; $483d: $03
	add  b                                           ; $483e: $80
	ei                                               ; $483f: $fb
	ld   bc, $e909                                   ; $4840: $01 $09 $e9
	add  b                                           ; $4843: $80
	ld   [$e801], sp                                 ; $4844: $08 $01 $e8
	db   $f4                                         ; $4847: $f4
	add  a                                           ; $4848: $87
	rst  $38                                         ; $4849: $ff
	add  b                                           ; $484a: $80
	cp   $80                                         ; $484b: $fe $80
	db   $fc                                         ; $484d: $fc
	inc  bc                                          ; $484e: $03
	db   $fd                                         ; $484f: $fd
	db   $fc                                         ; $4850: $fc
	cp   $ff                                         ; $4851: $fe $ff
	add  b                                           ; $4853: $80
	rst  $20                                         ; $4854: $e7
	add  b                                           ; $4855: $80
	jp   $9909                                       ; $4856: $c3 $09 $99


	add  c                                           ; $4859: $81
	inc  h                                           ; $485a: $24
	inc  c                                           ; $485b: $0c
	ld   [hl], d                                     ; $485c: $72
	ld   [bc], a                                     ; $485d: $02
	cp   a                                           ; $485e: $bf
	ld   hl, $00de                                   ; $485f: $21 $de $00
	add  b                                           ; $4862: $80
	rst  $38                                         ; $4863: $ff
	add  b                                           ; $4864: $80
	ldh  [rP1], a                                    ; $4865: $e0 $00
	rst  $20                                         ; $4867: $e7
	add  b                                           ; $4868: $80
	ldh  [rP1], a                                    ; $4869: $e0 $00
	db   $e3                                         ; $486b: $e3
	add  b                                           ; $486c: $80
	ldh  [$80], a                                    ; $486d: $e0 $80
	ld   h, b                                        ; $486f: $60
	add  b                                           ; $4870: $80
	jr   nz, jr_018_4876                             ; $4871: $20 $03

	and  b                                           ; $4873: $a0
	add  b                                           ; $4874: $80
	db   $db                                         ; $4875: $db

jr_018_4876:
	rst  $38                                         ; $4876: $ff
	add  b                                           ; $4877: $80
	inc  bc                                          ; $4878: $03
	nop                                              ; $4879: $00
	di                                               ; $487a: $f3
	add  b                                           ; $487b: $80
	ld   bc, $f100                                   ; $487c: $01 $00 $f1
	add  b                                           ; $487f: $80
	ld   de, $9000                                   ; $4880: $11 $00 $90
	add  e                                           ; $4883: $83
	nop                                              ; $4884: $00
	nop                                              ; $4885: $00
	ld   l, l                                        ; $4886: $6d
	add  c                                           ; $4887: $81
	rst  $38                                         ; $4888: $ff
	add  b                                           ; $4889: $80
	ret  nz                                          ; $488a: $c0

	inc  b                                           ; $488b: $04
	sub  d                                           ; $488c: $92
	add  b                                           ; $488d: $80
	ld   hl, $4101                                   ; $488e: $21 $01 $41
	add  b                                           ; $4891: $80
	ld   de, $3181                                   ; $4892: $11 $81 $31
	ld   bc, $ffbd                                   ; $4895: $01 $bd $ff
	add  b                                           ; $4898: $80
	ld   hl, sp+$0d                                  ; $4899: $f8 $0d
	rst  $38                                         ; $489b: $ff
	db   $fc                                         ; $489c: $fc
	ld   [hl], e                                     ; $489d: $73
	ld   [hl], b                                     ; $489e: $70

jr_018_489f:
	ccf                                              ; $489f: $3f
	jr   c, @-$5f                                    ; $48a0: $38 $9f

	sbc  b                                           ; $48a2: $98
	sbc  a                                           ; $48a3: $9f
	adc  h                                           ; $48a4: $8c
	adc  e                                           ; $48a5: $8b
	adc  b                                           ; $48a6: $88
	rst  $28                                         ; $48a7: $ef
	rst  $38                                         ; $48a8: $ff
	add  b                                           ; $48a9: $80
	ld   h, b                                        ; $48aa: $60
	dec  c                                           ; $48ab: $0d
	db   $fc                                         ; $48ac: $fc
	jr   nc, jr_018_489f                             ; $48ad: $30 $f0

	inc  a                                           ; $48af: $3c
	db   $fc                                         ; $48b0: $fc
	inc  e                                           ; $48b1: $1c
	add  h                                           ; $48b2: $84
	ld   h, h                                        ; $48b3: $64
	ldh  [rAUD4LEN], a                               ; $48b4: $e0 $20
	and  a                                           ; $48b6: $a7
	ld   h, b                                        ; $48b7: $60
	ld   hl, sp-$01                                  ; $48b8: $f8 $ff
	add  b                                           ; $48ba: $80
	rst  $20                                         ; $48bb: $e7
	dec  c                                           ; $48bc: $0d
	jp   $1943                                       ; $48bd: $c3 $43 $19


	ld   bc, $0c25                                   ; $48c0: $01 $25 $0c
	ld   [hl], e                                     ; $48c3: $73
	ld   b, d                                        ; $48c4: $42
	ld   h, a                                        ; $48c5: $67
	ld   h, c                                        ; $48c6: $61
	ld   b, h                                        ; $48c7: $44
	ld   b, d                                        ; $48c8: $42
	ld   a, a                                        ; $48c9: $7f
	rst  $38                                         ; $48ca: $ff
	add  b                                           ; $48cb: $80
	rrca                                             ; $48cc: $0f
	inc  c                                           ; $48cd: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ce: $cf
	add  a                                           ; $48cf: $87
	ld   b, a                                        ; $48d0: $47
	rlca                                             ; $48d1: $07
	rst  ToBoot                                         ; $48d2: $c7
	add  a                                           ; $48d3: $87
	ld   c, a                                        ; $48d4: $4f
	rlca                                             ; $48d5: $07
	rst  $38                                         ; $48d6: $ff
	inc  bc                                          ; $48d7: $03
	ld   l, e                                        ; $48d8: $6b
	add  a                                           ; $48d9: $87
	rst  $28                                         ; $48da: $ef
	add  c                                           ; $48db: $81
	rst  $38                                         ; $48dc: $ff
	add  b                                           ; $48dd: $80
	rrca                                             ; $48de: $0f
	ld   bc, $0727                                   ; $48df: $01 $27 $07
	add  b                                           ; $48e2: $80
	inc  de                                          ; $48e3: $13
	add  c                                           ; $48e4: $81
	add  hl, de                                      ; $48e5: $19
	add  c                                           ; $48e6: $81
	jr   jr_018_48e9                                 ; $48e7: $18 $00

jr_018_48e9:
	and  $81                                         ; $48e9: $e6 $81
	db   $d3                                         ; $48eb: $d3
	nop                                              ; $48ec: $00
	call nc, $d080                                   ; $48ed: $d4 $80 $d0
	inc  bc                                          ; $48f0: $03
	rst  JumpTable                                         ; $48f1: $df
	rst  $38                                         ; $48f2: $ff
	ldh  [rIE], a                                    ; $48f3: $e0 $ff
	add  b                                           ; $48f5: $80
	ldh  [$80], a                                    ; $48f6: $e0 $80
	ldh  a, [rSC]                                    ; $48f8: $f0 $02
	rst  $38                                         ; $48fa: $ff
	db   $e3                                         ; $48fb: $e3
	add  sp, -$80                                    ; $48fc: $e8 $80
	ret  c                                           ; $48fe: $d8

	ld   b, $2c                                      ; $48ff: $06 $2c
	jr   nc, @+$5a                                   ; $4901: $30 $58

	pop  hl                                          ; $4903: $e1
	or   c                                           ; $4904: $b1
	inc  bc                                          ; $4905: $03
	db   $e3                                         ; $4906: $e3
	add  b                                           ; $4907: $80
	rlca                                             ; $4908: $07
	add  b                                           ; $4909: $80
	rrca                                             ; $490a: $0f
	nop                                              ; $490b: $00
	rst  $38                                         ; $490c: $ff
	add  b                                           ; $490d: $80
	ld   a, a                                        ; $490e: $7f
	add  b                                           ; $490f: $80
	ccf                                              ; $4910: $3f
	inc  c                                           ; $4911: $0c
	ld   e, a                                        ; $4912: $5f
	rra                                              ; $4913: $1f
	cpl                                              ; $4914: $2f
	rrca                                             ; $4915: $0f
	rla                                              ; $4916: $17
	rlca                                             ; $4917: $07
	dec  de                                          ; $4918: $1b
	inc  hl                                          ; $4919: $23
	dec  b                                           ; $491a: $05
	ld   bc, $0032                                   ; $491b: $01 $32 $00
	cp   c                                           ; $491e: $b9
	adc  l                                           ; $491f: $8d
	db   $d3                                         ; $4920: $d3
	nop                                              ; $4921: $00
	db   $eb                                         ; $4922: $eb
	adc  l                                           ; $4923: $8d
	rst  $38                                         ; $4924: $ff
	nop                                              ; $4925: $00
	db   $e3                                         ; $4926: $e3
	adc  l                                           ; $4927: $8d
	add  sp, $00                                     ; $4928: $e8 $00
	db   $f4                                         ; $492a: $f4
	add  b                                           ; $492b: $80
	cp   $8b                                         ; $492c: $fe $8b
	rst  $38                                         ; $492e: $ff
	nop                                              ; $492f: $00
	db   $fc                                         ; $4930: $fc
	add  b                                           ; $4931: $80
	add  b                                           ; $4932: $80
	rlca                                             ; $4933: $07
	db   $fc                                         ; $4934: $fc
	ld   sp, hl                                      ; $4935: $f9
	ld   hl, sp-$0e                                  ; $4936: $f8 $f2
	ldh  a, [$c4]                                    ; $4938: $f0 $c4
	pop  bc                                          ; $493a: $c1
	ld   sp, hl                                      ; $493b: $f9
	add  b                                           ; $493c: $80
	db   $e3                                         ; $493d: $e3
	add  c                                           ; $493e: $81
	rst  $38                                         ; $493f: $ff
	nop                                              ; $4940: $00
	db   $e4                                         ; $4941: $e4
	add  b                                           ; $4942: $80
	ld   b, b                                        ; $4943: $40
	ld   bc, $6360                                   ; $4944: $01 $60 $63
	add  b                                           ; $4947: $80
	ld   h, d                                        ; $4948: $62
	inc  bc                                          ; $4949: $03
	db   $e3                                         ; $494a: $e3
	db   $e4                                         ; $494b: $e4
	ldh  [rIE], a                                    ; $494c: $e0 $ff
	add  b                                           ; $494e: $80
	ldh  a, [$81]                                    ; $494f: $f0 $81
	rst  $38                                         ; $4951: $ff
	inc  b                                           ; $4952: $04
	sub  d                                           ; $4953: $92
	nop                                              ; $4954: $00
	add  b                                           ; $4955: $80
	nop                                              ; $4956: $00
	pop  hl                                          ; $4957: $e1
	add  b                                           ; $4958: $80
	ld   bc, $f100                                   ; $4959: $01 $00 $f1
	add  b                                           ; $495c: $80
	ld   bc, $fd00                                   ; $495d: $01 $00 $fd
	add  b                                           ; $4960: $80
	ld   bc, $ff81                                   ; $4961: $01 $81 $ff
	nop                                              ; $4964: $00
	ld   [hl], e                                     ; $4965: $73
	add  c                                           ; $4966: $81
	ld   sp, $6504                                   ; $4967: $31 $04 $65
	ld   hl, $8288                                   ; $496a: $21 $88 $82
	di                                               ; $496d: $f3
	add  b                                           ; $496e: $80
	rst  ToBoot                                         ; $496f: $c7
	add  e                                           ; $4970: $83
	rst  $38                                         ; $4971: $ff
	ld   a, [bc]                                     ; $4972: $0a
	sbc  a                                           ; $4973: $9f
	adc  h                                           ; $4974: $8c
	add  e                                           ; $4975: $83
	add  b                                           ; $4976: $80
	inc  hl                                          ; $4977: $23
	nop                                              ; $4978: $00
	ld   b, b                                        ; $4979: $40
	ld   de, $3092                                   ; $497a: $11 $92 $30
	ccf                                              ; $497d: $3f
	add  b                                           ; $497e: $80
	ld   hl, sp-$7f                                  ; $497f: $f8 $81
	rst  $38                                         ; $4981: $ff
	inc  b                                           ; $4982: $04
	rst  $20                                         ; $4983: $e7
	inc  hl                                          ; $4984: $23
	db   $e3                                         ; $4985: $e3
	inc  hl                                          ; $4986: $23
	ld   [hl+], a                                    ; $4987: $22
	add  c                                           ; $4988: $81
	ld   [bc], a                                     ; $4989: $02
	ld   [bc], a                                     ; $498a: $02
	inc  b                                           ; $498b: $04
	nop                                              ; $498c: $00
	rst  JumpTable                                         ; $498d: $df
	add  b                                           ; $498e: $80
	db   $10                                         ; $498f: $10
	add  c                                           ; $4990: $81
	rst  $38                                         ; $4991: $ff
	ld   [bc], a                                     ; $4992: $02
	rst  $20                                         ; $4993: $e7
	pop  hl                                          ; $4994: $e1
	and  e                                           ; $4995: $a3
	add  b                                           ; $4996: $80
	and  c                                           ; $4997: $a1
	dec  b                                           ; $4998: $05
	add  b                                           ; $4999: $80
	jp   $2542                                       ; $499a: $c3 $42 $25


	ld   bc, $807f                                   ; $499d: $01 $7f $80
	ld   b, b                                        ; $49a0: $40
	add  c                                           ; $49a1: $81
	rst  $38                                         ; $49a2: $ff
	ld   a, [bc]                                     ; $49a3: $0a
	ld   c, a                                        ; $49a4: $4f
	dec  bc                                          ; $49a5: $0b
	db   $db                                         ; $49a6: $db
	add  a                                           ; $49a7: $87
	ld   d, a                                        ; $49a8: $57
	rrca                                             ; $49a9: $0f
	rst  $10                                         ; $49aa: $d7
	add  a                                           ; $49ab: $87
	rlca                                             ; $49ac: $07
	inc  bc                                          ; $49ad: $03
	db   $eb                                         ; $49ae: $eb
	add  b                                           ; $49af: $80
	adc  e                                           ; $49b0: $8b
	add  c                                           ; $49b1: $81
	rst  $38                                         ; $49b2: $ff
	nop                                              ; $49b3: $00
	add  hl, sp                                      ; $49b4: $39
	add  c                                           ; $49b5: $81
	jr   @+$06                                       ; $49b6: $18 $04

	ld   d, d                                        ; $49b8: $52
	db   $10                                         ; $49b9: $10
	add  h                                           ; $49ba: $84
	ld   hl, $8039                                   ; $49bb: $21 $39 $80
	ld   [hl], e                                     ; $49be: $73
	add  a                                           ; $49bf: $87
	rst  $38                                         ; $49c0: $ff
	add  c                                           ; $49c1: $81
	nop                                              ; $49c2: $00
	add  b                                           ; $49c3: $80
	rst  $38                                         ; $49c4: $ff
	ld   bc, $ff00                                   ; $49c5: $01 $00 $ff
	add  d                                           ; $49c8: $82
	nop                                              ; $49c9: $00
	nop                                              ; $49ca: $00
	rst  $38                                         ; $49cb: $ff
	add  b                                           ; $49cc: $80
	nop                                              ; $49cd: $00
	dec  c                                           ; $49ce: $0d
	cp   a                                           ; $49cf: $bf
	add  b                                           ; $49d0: $80
	ldh  [c], a                                      ; $49d1: $e2
	call nz, $e0f0                                   ; $49d2: $c4 $f0 $e0
	cp   $f0                                         ; $49d5: $fe $f0
	db   $fc                                         ; $49d7: $fc
	ld   hl, sp-$02                                  ; $49d8: $f8 $fe
	db   $fc                                         ; $49da: $fc
	rst  $38                                         ; $49db: $ff
	cp   $84                                         ; $49dc: $fe $84
	rst  $38                                         ; $49de: $ff
	add  d                                           ; $49df: $82
	ret  nz                                          ; $49e0: $c0

	nop                                              ; $49e1: $00
	pop  af                                          ; $49e2: $f1
	add  e                                           ; $49e3: $83
	ldh  a, [rP1]                                    ; $49e4: $f0 $00
	cp   $83                                         ; $49e6: $fe $83
	rst  $38                                         ; $49e8: $ff
	add  b                                           ; $49e9: $80
	ld   h, b                                        ; $49ea: $60
	ld   [bc], a                                     ; $49eb: $02
	ld   b, b                                        ; $49ec: $40
	nop                                              ; $49ed: $00
	add  [hl]                                        ; $49ee: $86
	add  b                                           ; $49ef: $80
	nop                                              ; $49f0: $00
	add  c                                           ; $49f1: $81
	jp   nz, $fb00                                   ; $49f2: $c2 $00 $fb

	add  e                                           ; $49f5: $83
	rst  $38                                         ; $49f6: $ff
	add  b                                           ; $49f7: $80
	ld   [hl], b                                     ; $49f8: $70
	add  b                                           ; $49f9: $80
	jr   nc, jr_018_49fc                             ; $49fa: $30 $00

jr_018_49fc:
	ld   sp, $1083                                   ; $49fc: $31 $83 $10
	nop                                              ; $49ff: $00
	sbc  $83                                         ; $4a00: $de $83
	rst  $38                                         ; $4a02: $ff
	add  b                                           ; $4a03: $80
	rra                                              ; $4a04: $1f
	add  b                                           ; $4a05: $80
	rrca                                             ; $4a06: $0f
	nop                                              ; $4a07: $00
	adc  a                                           ; $4a08: $8f
	add  b                                           ; $4a09: $80
	rlca                                             ; $4a0a: $07
	add  c                                           ; $4a0b: $81
	add  a                                           ; $4a0c: $87
	ld   bc, $fff7                                   ; $4a0d: $01 $f7 $ff
	add  b                                           ; $4a10: $80
	add  d                                           ; $4a11: $82
	nop                                              ; $4a12: $00
	and  $80                                         ; $4a13: $e6 $80
	ret  nz                                          ; $4a15: $c0

	add  c                                           ; $4a16: $81
	ldh  [c], a                                      ; $4a17: $e2
	ld   [bc], a                                     ; $4a18: $02
	add  [hl]                                        ; $4a19: $86
	add  d                                           ; $4a1a: $82
	and  $80                                         ; $4a1b: $e6 $80
	ret  nz                                          ; $4a1d: $c0

	ld   [bc], a                                     ; $4a1e: $02
	ldh  [c], a                                      ; $4a1f: $e2
	ei                                               ; $4a20: $fb
	rst  $38                                         ; $4a21: $ff
	add  b                                           ; $4a22: $80
	rlca                                             ; $4a23: $07
	ld   [$0367], sp                                 ; $4a24: $08 $67 $03
	ld   h, b                                        ; $4a27: $60
	nop                                              ; $4a28: $00
	ld   h, e                                        ; $4a29: $63
	ld   [bc], a                                     ; $4a2a: $02
	ld   h, e                                        ; $4a2b: $63
	ld   [bc], a                                     ; $4a2c: $02
	ld   h, d                                        ; $4a2d: $62
	add  c                                           ; $4a2e: $81
	ld   [bc], a                                     ; $4a2f: $02
	ld   bc, $ff9b                                   ; $4a30: $01 $9b $ff
	add  c                                           ; $4a33: $81
	rst  $20                                         ; $4a34: $e7
	dec  bc                                          ; $4a35: $0b
	db   $e3                                         ; $4a36: $e3
	inc  b                                           ; $4a37: $04
	nop                                              ; $4a38: $00
	rst  $20                                         ; $4a39: $e7
	nop                                              ; $4a3a: $00
	xor  b                                           ; $4a3b: $a8
	ld   b, e                                        ; $4a3c: $43
	dec  d                                           ; $4a3d: $15
	ld   bc, $0821                                   ; $4a3e: $01 $21 $08
	adc  $81                                         ; $4a41: $ce $81
	rst  $38                                         ; $4a43: $ff
	add  b                                           ; $4a44: $80
	db   $fc                                         ; $4a45: $fc
	inc  b                                           ; $4a46: $04
	ld   a, c                                        ; $4a47: $79
	ld   a, b                                        ; $4a48: $78
	ldh  a, [c]                                      ; $4a49: $f2
	jr   nc, @+$26                                   ; $4a4a: $30 $24

	add  b                                           ; $4a4c: $80
	pop  hl                                          ; $4a4d: $e1
	add  c                                           ; $4a4e: $81
	db   $e3                                         ; $4a4f: $e3
	ld   bc, $fffb                                   ; $4a50: $01 $fb $ff
	add  c                                           ; $4a53: $81
	di                                               ; $4a54: $f3
	inc  bc                                          ; $4a55: $03
	pop  af                                          ; $4a56: $f1
	add  e                                           ; $4a57: $83
	add  c                                           ; $4a58: $81
	di                                               ; $4a59: $f3
	add  b                                           ; $4a5a: $80
	ret  nz                                          ; $4a5b: $c0

	nop                                              ; $4a5c: $00
	pop  af                                          ; $4a5d: $f1
	add  b                                           ; $4a5e: $80
	ret  nc                                          ; $4a5f: $d0

	inc  bc                                          ; $4a60: $03
	sub  b                                           ; $4a61: $90
	add  b                                           ; $4a62: $80
	db   $ed                                         ; $4a63: $ed
	rst  $38                                         ; $4a64: $ff
	add  b                                           ; $4a65: $80
	ld   e, $0d                                      ; $4a66: $1e $0d
	ld   e, h                                        ; $4a68: $5c
	inc  c                                           ; $4a69: $0c
	ld   c, c                                        ; $4a6a: $49
	ld   [$80e0], sp                                 ; $4a6b: $08 $e0 $80

jr_018_4a6e:
	sub  b                                           ; $4a6e: $90
	ldh  [$c8], a                                    ; $4a6f: $e0 $c8
	ret  nz                                          ; $4a71: $c0

	ld   d, b                                        ; $4a72: $50
	ld   b, b                                        ; $4a73: $40
	and  $ff                                         ; $4a74: $e6 $ff
	add  b                                           ; $4a76: $80
	ld   a, a                                        ; $4a77: $7f
	inc  b                                           ; $4a78: $04
	rst  ToBoot                                         ; $4a79: $c7
	rlca                                             ; $4a7a: $07
	inc  hl                                          ; $4a7b: $23
	ld   h, e                                        ; $4a7c: $63
	ld   a, [hl]                                     ; $4a7d: $7e
	add  b                                           ; $4a7e: $80
	ldh  a, [$83]                                    ; $4a7f: $f0 $83
	cp   $80                                         ; $4a81: $fe $80
	rst  $38                                         ; $4a83: $ff
	add  c                                           ; $4a84: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a85: $cf
	add  c                                           ; $4a86: $81
	rst  ToBoot                                         ; $4a87: $c7
	add  c                                           ; $4a88: $81
	ld   b, a                                        ; $4a89: $47
	ld   b, $07                                      ; $4a8a: $06 $07
	rrca                                             ; $4a8c: $0f
	rlca                                             ; $4a8d: $07
	dec  bc                                          ; $4a8e: $0b
	inc  bc                                          ; $4a8f: $03
	or   a                                           ; $4a90: $b7
	rst  $38                                         ; $4a91: $ff
	add  b                                           ; $4a92: $80
	and  [hl]                                        ; $4a93: $a6
	dec  c                                           ; $4a94: $0d
	call z, $8ac0                                    ; $4a95: $cc $c0 $8a
	add  [hl]                                        ; $4a98: $86
	and  h                                           ; $4a99: $a4
	add  b                                           ; $4a9a: $80
	db   $ec                                         ; $4a9b: $ec
	ret  nz                                          ; $4a9c: $c0

	adc  h                                           ; $4a9d: $8c
	add  b                                           ; $4a9e: $80
	and  b                                           ; $4a9f: $a0
	add  b                                           ; $4aa0: $80
	db   $db                                         ; $4aa1: $db
	rst  $38                                         ; $4aa2: $ff
	add  b                                           ; $4aa3: $80
	ld   c, a                                        ; $4aa4: $4f
	add  b                                           ; $4aa5: $80
	rlca                                             ; $4aa6: $07
	dec  bc                                          ; $4aa7: $0b
	ld   c, a                                        ; $4aa8: $4f
	inc  bc                                          ; $4aa9: $03
	ld   c, e                                        ; $4aaa: $4b

jr_018_4aab:
	rlca                                             ; $4aab: $07
	rst  JumpTable                                         ; $4aac: $df
	inc  bc                                          ; $4aad: $03
	db   $db                                         ; $4aae: $db
	rlca                                             ; $4aaf: $07
	rst  JumpTable                                         ; $4ab0: $df
	inc  bc                                          ; $4ab1: $03
	inc  hl                                          ; $4ab2: $23

jr_018_4ab3:
	rst  $38                                         ; $4ab3: $ff
	add  b                                           ; $4ab4: $80
	db   $e4                                         ; $4ab5: $e4
	dec  c                                           ; $4ab6: $0d
	call $99c0                                       ; $4ab7: $cd $c0 $99
	add  h                                           ; $4aba: $84
	dec  [hl]                                        ; $4abb: $35
	nop                                              ; $4abc: $00
	jp   hl                                          ; $4abd: $e9


	add  b                                           ; $4abe: $80
	jp   $0186                                       ; $4abf: $c3 $86 $01


	nop                                              ; $4ac2: $00
	rst  $30                                         ; $4ac3: $f7
	rst  $38                                         ; $4ac4: $ff
	add  b                                           ; $4ac5: $80
	rrca                                             ; $4ac6: $0f
	inc  c                                           ; $4ac7: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ac8: $cf
	rlca                                             ; $4ac9: $07
	rst  ToBoot                                         ; $4aca: $c7
	rlca                                             ; $4acb: $07
	rst  ToBoot                                         ; $4acc: $c7
	rlca                                             ; $4acd: $07
	rst  ToBoot                                         ; $4ace: $c7
	rlca                                             ; $4acf: $07
	rst  $30                                         ; $4ad0: $f7
	rlca                                             ; $4ad1: $07
	rst  $38                                         ; $4ad2: $ff
	rlca                                             ; $4ad3: $07
	pop  af                                          ; $4ad4: $f1
	adc  c                                           ; $4ad5: $89
	ldh  a, [rP1]                                    ; $4ad6: $f0 $00

jr_018_4ad8:
	cp   $80                                         ; $4ad8: $fe $80
	ld   hl, sp+$01                                  ; $4ada: $f8 $01
	rst  $38                                         ; $4adc: $ff
	add  $85                                         ; $4add: $c6 $85
	jp   nz, $c401                                   ; $4adf: $c2 $01 $c4

	ret  nz                                          ; $4ae2: $c0

	add  b                                           ; $4ae3: $80
	ldh  [rP1], a                                    ; $4ae4: $e0 $00
	rst  $38                                         ; $4ae6: $ff
	add  b                                           ; $4ae7: $80
	ldh  a, [rSB]                                    ; $4ae8: $f0 $01
	rst  $38                                         ; $4aea: $ff
	jr   nc, jr_018_4a6e                             ; $4aeb: $30 $81

	stop                                             ; $4aed: $10 $00
	ld   de, $1083                                   ; $4aef: $11 $83 $10
	ld   [bc], a                                     ; $4af2: $02
	ld   d, b                                        ; $4af3: $50
	db   $10                                         ; $4af4: $10
	sbc  [hl]                                        ; $4af5: $9e
	add  b                                           ; $4af6: $80
	jr   c, jr_018_4afe                              ; $4af7: $38 $05

	rst  $38                                         ; $4af9: $ff
	rrca                                             ; $4afa: $0f
	rlca                                             ; $4afb: $07
	rla                                              ; $4afc: $17
	rlca                                             ; $4afd: $07

jr_018_4afe:
	rst  $20                                         ; $4afe: $e7
	add  b                                           ; $4aff: $80
	rrca                                             ; $4b00: $0f
	add  a                                           ; $4b01: $87
	rst  $38                                         ; $4b02: $ff
	ld   a, [bc]                                     ; $4b03: $0a
	and  $e2                                         ; $4b04: $e6 $e2
	rst  $20                                         ; $4b06: $e7
	db   $e3                                         ; $4b07: $e3
	adc  [hl]                                        ; $4b08: $8e
	add  b                                           ; $4b09: $80
	ldh  a, [c]                                      ; $4b0a: $f2
	call nz, $f8c1                                   ; $4b0b: $c4 $c1 $f8
	cp   $80                                         ; $4b0e: $fe $80
	db   $fc                                         ; $4b10: $fc
	add  c                                           ; $4b11: $81
	rst  $38                                         ; $4b12: $ff
	ld   a, [bc]                                     ; $4b13: $0a
	ld   b, $02                                      ; $4b14: $06 $02
	inc  e                                           ; $4b16: $1c
	nop                                              ; $4b17: $00
	ld   b, $0c                                      ; $4b18: $06 $0c
	add  b                                           ; $4b1a: $80
	ld   [bc], a                                     ; $4b1b: $02
	ld   [de], a                                     ; $4b1c: $12
	nop                                              ; $4b1d: $00
	ld   a, l                                        ; $4b1e: $7d
	add  b                                           ; $4b1f: $80
	pop  bc                                          ; $4b20: $c1
	add  c                                           ; $4b21: $81
	rst  $38                                         ; $4b22: $ff
	ld   [bc], a                                     ; $4b23: $02
	ld   h, b                                        ; $4b24: $60
	nop                                              ; $4b25: $00
	add  hl, de                                      ; $4b26: $19
	add  b                                           ; $4b27: $80
	jr   nc, jr_018_4aab                             ; $4b28: $30 $81

	jr   c, @+$04                                    ; $4b2a: $38 $02

	ld   bc, $bf00                                   ; $4b2c: $01 $00 $bf
	add  b                                           ; $4b2f: $80
	jr   nz, jr_018_4ab3                             ; $4b30: $20 $81

	rst  $38                                         ; $4b32: $ff
	dec  b                                           ; $4b33: $05
	ld   h, a                                        ; $4b34: $67
	ld   h, e                                        ; $4b35: $63
	db   $e3                                         ; $4b36: $e3
	inc  hl                                          ; $4b37: $23
	ld   [hl], $f2                                   ; $4b38: $36 $f2
	add  b                                           ; $4b3a: $80
	ld   hl, sp+$02                                  ; $4b3b: $f8 $02
	ccf                                              ; $4b3d: $3f
	inc  a                                           ; $4b3e: $3c
	db   $fc                                         ; $4b3f: $fc
	add  b                                           ; $4b40: $80
	rra                                              ; $4b41: $1f
	add  c                                           ; $4b42: $81
	rst  $38                                         ; $4b43: $ff
	nop                                              ; $4b44: $00
	sub  d                                           ; $4b45: $92
	add  l                                           ; $4b46: $85
	add  b                                           ; $4b47: $80
	ld   [bc], a                                     ; $4b48: $02
	pop  hl                                          ; $4b49: $e1
	pop  bc                                          ; $4b4a: $c1
	call $f980                                       ; $4b4b: $cd $80 $f9
	add  c                                           ; $4b4e: $81
	rst  $38                                         ; $4b4f: $ff
	nop                                              ; $4b50: $00
	ld   a, c                                        ; $4b51: $79
	add  b                                           ; $4b52: $80
	jr   z, jr_018_4ad8                              ; $4b53: $28 $83

	jr   c, @+$04                                    ; $4b55: $38 $02

	cp   b                                           ; $4b57: $b8
	jr   c, jr_018_4b98                              ; $4b58: $38 $3e

	add  b                                           ; $4b5a: $80
	db   $fc                                         ; $4b5b: $fc
	add  c                                           ; $4b5c: $81
	rst  $38                                         ; $4b5d: $ff
	add  d                                           ; $4b5e: $82
	cp   $80                                         ; $4b5f: $fe $80
	db   $fc                                         ; $4b61: $fc
	inc  b                                           ; $4b62: $04
	ld   sp, hl                                      ; $4b63: $f9
	ld   hl, sp-$3e                                  ; $4b64: $f8 $c2
	ret  nz                                          ; $4b66: $c0

	db   $fc                                         ; $4b67: $fc
	add  b                                           ; $4b68: $80
	pop  hl                                          ; $4b69: $e1
	add  c                                           ; $4b6a: $81
	rst  $38                                         ; $4b6b: $ff
	inc  b                                           ; $4b6c: $04
	ld   c, l                                        ; $4b6d: $4d
	dec  b                                           ; $4b6e: $05
	rlca                                             ; $4b6f: $07
	ld   b, $86                                      ; $4b70: $06 $86
	add  b                                           ; $4b72: $80
	rlca                                             ; $4b73: $07
	add  b                                           ; $4b74: $80
	ld   b, a                                        ; $4b75: $47
	ld   bc, $f7c7                                   ; $4b76: $01 $c7 $f7
	add  b                                           ; $4b79: $80
	rst  $20                                         ; $4b7a: $e7
	add  c                                           ; $4b7b: $81
	rst  $38                                         ; $4b7c: $ff
	nop                                              ; $4b7d: $00
	db   $e4                                         ; $4b7e: $e4
	add  b                                           ; $4b7f: $80
	ret  nz                                          ; $4b80: $c0

	nop                                              ; $4b81: $00
	ldh  [$80], a                                    ; $4b82: $e0 $80
	ldh  [c], a                                      ; $4b84: $e2
	add  b                                           ; $4b85: $80
	and  e                                           ; $4b86: $a3
	ld   [bc], a                                     ; $4b87: $02
	ret  z                                           ; $4b88: $c8

	ret  nz                                          ; $4b89: $c0

	di                                               ; $4b8a: $f3
	add  b                                           ; $4b8b: $80
	and  $81                                         ; $4b8c: $e6 $81
	rst  $38                                         ; $4b8e: $ff
	add  b                                           ; $4b8f: $80
	rlca                                             ; $4b90: $07
	ld   [$03e7], sp                                 ; $4b91: $08 $e7 $03
	xor  e                                           ; $4b94: $ab
	inc  bc                                          ; $4b95: $03
	ld   d, e                                        ; $4b96: $53
	rlca                                             ; $4b97: $07

jr_018_4b98:
	rst  $38                                         ; $4b98: $ff
	rlca                                             ; $4b99: $07
	rra                                              ; $4b9a: $1f
	add  b                                           ; $4b9b: $80
	ld   [hl], e                                     ; $4b9c: $73
	add  c                                           ; $4b9d: $81
	rst  $38                                         ; $4b9e: $ff
	ld   a, [bc]                                     ; $4b9f: $0a
	ld   c, a                                        ; $4ba0: $4f
	inc  b                                           ; $4ba1: $04
	add  e                                           ; $4ba2: $83
	add  b                                           ; $4ba3: $80
	add  a                                           ; $4ba4: $87
	call nz, $c4c7                                   ; $4ba5: $c4 $c7 $c4
	rst  ToBoot                                         ; $4ba8: $c7
	add  $f6                                         ; $4ba9: $c6 $f6
	add  b                                           ; $4bab: $80
	rst  $20                                         ; $4bac: $e7
	add  c                                           ; $4bad: $81
	rst  $38                                         ; $4bae: $ff
	ld   a, [bc]                                     ; $4baf: $0a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bb0: $cf
	inc  bc                                          ; $4bb1: $03
	rlc  a                                           ; $4bb2: $cb $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bb4: $cf
	inc  bc                                          ; $4bb5: $03
	add  e                                           ; $4bb6: $83
	rlca                                             ; $4bb7: $07
	rst  ToBoot                                         ; $4bb8: $c7
	rlca                                             ; $4bb9: $07
	ld   [hl], a                                     ; $4bba: $77
	add  b                                           ; $4bbb: $80
	rst  ToBoot                                         ; $4bbc: $c7
	add  a                                           ; $4bbd: $87
	rst  $38                                         ; $4bbe: $ff
	add  b                                           ; $4bbf: $80
	jp   $9986                                       ; $4bc0: $c3 $86 $99


	add  h                                           ; $4bc3: $84
	rst  $38                                         ; $4bc4: $ff
	add  b                                           ; $4bc5: $80
	rst  $20                                         ; $4bc6: $e7
	add  b                                           ; $4bc7: $80
	rst  ToBoot                                         ; $4bc8: $c7
	add  h                                           ; $4bc9: $84
	rst  $20                                         ; $4bca: $e7
	add  h                                           ; $4bcb: $84
	rst  $38                                         ; $4bcc: $ff
	add  b                                           ; $4bcd: $80
	jp   $9980                                       ; $4bce: $c3 $80 $99


	add  d                                           ; $4bd1: $82
	ld   sp, hl                                      ; $4bd2: $f9
	add  b                                           ; $4bd3: $80
	di                                               ; $4bd4: $f3
	add  h                                           ; $4bd5: $84
	rst  $38                                         ; $4bd6: $ff
	add  b                                           ; $4bd7: $80
	jp   $9982                                       ; $4bd8: $c3 $82 $99


	add  b                                           ; $4bdb: $80
	ld   sp, hl                                      ; $4bdc: $f9
	add  b                                           ; $4bdd: $80
	db   $e3                                         ; $4bde: $e3
	add  h                                           ; $4bdf: $84
	rst  $38                                         ; $4be0: $ff
	add  d                                           ; $4be1: $82
	pop  af                                          ; $4be2: $f1
	add  b                                           ; $4be3: $80
	pop  hl                                          ; $4be4: $e1
	add  b                                           ; $4be5: $80
	jp   hl                                          ; $4be6: $e9


	add  b                                           ; $4be7: $80
	ret                                              ; $4be8: $c9


	add  h                                           ; $4be9: $84
	rst  $38                                         ; $4bea: $ff
	add  b                                           ; $4beb: $80
	add  e                                           ; $4bec: $83
	add  h                                           ; $4bed: $84
	sbc  a                                           ; $4bee: $9f
	add  b                                           ; $4bef: $80
	add  e                                           ; $4bf0: $83
	add  h                                           ; $4bf1: $84
	rst  $38                                         ; $4bf2: $ff
	add  b                                           ; $4bf3: $80
	jp   $9980                                       ; $4bf4: $c3 $80 $99


	add  d                                           ; $4bf7: $82
	sbc  a                                           ; $4bf8: $9f
	add  b                                           ; $4bf9: $80
	add  e                                           ; $4bfa: $83
	add  h                                           ; $4bfb: $84
	rst  $38                                         ; $4bfc: $ff
	add  b                                           ; $4bfd: $80
	add  c                                           ; $4bfe: $81
	add  d                                           ; $4bff: $82
	sbc  c                                           ; $4c00: $99
	add  d                                           ; $4c01: $82
	ld   sp, hl                                      ; $4c02: $f9
	add  h                                           ; $4c03: $84
	rst  $38                                         ; $4c04: $ff
	add  b                                           ; $4c05: $80
	jp   $9984                                       ; $4c06: $c3 $84 $99


	add  b                                           ; $4c09: $80
	jp   $ff84                                       ; $4c0a: $c3 $84 $ff


	add  b                                           ; $4c0d: $80
	jp   $9986                                       ; $4c0e: $c3 $86 $99


	add  h                                           ; $4c11: $84
	rst  $38                                         ; $4c12: $ff
	add  h                                           ; $4c13: $84
	rst  $20                                         ; $4c14: $e7
	adc  b                                           ; $4c15: $88
	rst  $38                                         ; $4c16: $ff
	add  d                                           ; $4c17: $82
	ei                                               ; $4c18: $fb
	add  d                                           ; $4c19: $82
	rst  $30                                         ; $4c1a: $f7
	add  b                                           ; $4c1b: $80
	rst  $28                                         ; $4c1c: $ef
	add  b                                           ; $4c1d: $80
	rst  $38                                         ; $4c1e: $ff
	add  [hl]                                        ; $4c1f: $86
	cp   $80                                         ; $4c20: $fe $80
	ldh  [$82], a                                    ; $4c22: $e0 $82
	rst  $20                                         ; $4c24: $e7
	add  b                                           ; $4c25: $80
	rst  $38                                         ; $4c26: $ff
	add  b                                           ; $4c27: $80
	ld   a, a                                        ; $4c28: $7f
	add  b                                           ; $4c29: $80
	rrca                                             ; $4c2a: $0f
	add  d                                           ; $4c2b: $82
	ld   a, a                                        ; $4c2c: $7f
	add  b                                           ; $4c2d: $80
	rlca                                             ; $4c2e: $07
	add  d                                           ; $4c2f: $82
	rst  $20                                         ; $4c30: $e7
	nop                                              ; $4c31: $00
	nop                                              ; $4c32: $00
	adc  l                                           ; $4c33: $8d
	rst  $38                                         ; $4c34: $ff
	nop                                              ; $4c35: $00
	rra                                              ; $4c36: $1f
	adc  l                                           ; $4c37: $8d
	ld   a, a                                        ; $4c38: $7f
	nop                                              ; $4c39: $00
	ld   b, $85                                      ; $4c3a: $06 $85
	sbc  c                                           ; $4c3c: $99
	add  b                                           ; $4c3d: $80
	jp   $ff84                                       ; $4c3e: $c3 $84 $ff


	add  [hl]                                        ; $4c41: $86
	rst  $20                                         ; $4c42: $e7
	add  b                                           ; $4c43: $80
	jp   $ff84                                       ; $4c44: $c3 $84 $ff


	add  b                                           ; $4c47: $80
	rst  $20                                         ; $4c48: $e7
	add  b                                           ; $4c49: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c4a: $cf
	add  b                                           ; $4c4b: $80
	sbc  a                                           ; $4c4c: $9f
	add  b                                           ; $4c4d: $80
	sbc  l                                           ; $4c4e: $9d
	add  b                                           ; $4c4f: $80
	add  c                                           ; $4c50: $81
	add  h                                           ; $4c51: $84
	rst  $38                                         ; $4c52: $ff
	add  d                                           ; $4c53: $82
	ld   sp, hl                                      ; $4c54: $f9
	add  d                                           ; $4c55: $82
	sbc  c                                           ; $4c56: $99
	add  b                                           ; $4c57: $80
	jp   $ff84                                       ; $4c58: $c3 $84 $ff


	add  b                                           ; $4c5b: $80
	reti                                             ; $4c5c: $d9


	add  b                                           ; $4c5d: $80
	sbc  c                                           ; $4c5e: $99
	add  b                                           ; $4c5f: $80
	add  c                                           ; $4c60: $81
	add  d                                           ; $4c61: $82
	ld   sp, hl                                      ; $4c62: $f9
	add  h                                           ; $4c63: $84
	rst  $38                                         ; $4c64: $ff
	add  b                                           ; $4c65: $80
	sbc  c                                           ; $4c66: $99
	add  d                                           ; $4c67: $82
	ld   sp, hl                                      ; $4c68: $f9
	add  b                                           ; $4c69: $80
	sbc  c                                           ; $4c6a: $99
	add  b                                           ; $4c6b: $80
	jp   $ff84                                       ; $4c6c: $c3 $84 $ff


	add  [hl]                                        ; $4c6f: $86
	sbc  c                                           ; $4c70: $99
	add  b                                           ; $4c71: $80
	jp   $ff84                                       ; $4c72: $c3 $84 $ff


	add  b                                           ; $4c75: $80
	di                                               ; $4c76: $f3
	add  [hl]                                        ; $4c77: $86
	rst  $20                                         ; $4c78: $e7
	add  h                                           ; $4c79: $84
	rst  $38                                         ; $4c7a: $ff
	add  [hl]                                        ; $4c7b: $86
	sbc  c                                           ; $4c7c: $99
	add  b                                           ; $4c7d: $80
	jp   $ff84                                       ; $4c7e: $c3 $84 $ff


	add  b                                           ; $4c81: $80
	pop  bc                                          ; $4c82: $c1
	add  h                                           ; $4c83: $84
	ld   sp, hl                                      ; $4c84: $f9
	add  b                                           ; $4c85: $80
	jp   $ff86                                       ; $4c86: $c3 $86 $ff


	add  h                                           ; $4c89: $84
	rst  $20                                         ; $4c8a: $e7
	add  [hl]                                        ; $4c8b: $86
	rst  $38                                         ; $4c8c: $ff
	add  b                                           ; $4c8d: $80
	rst  $28                                         ; $4c8e: $ef
	add  d                                           ; $4c8f: $82
	rst  JumpTable                                         ; $4c90: $df
	add  d                                           ; $4c91: $82
	cp   a                                           ; $4c92: $bf
	add  h                                           ; $4c93: $84
	rst  $38                                         ; $4c94: $ff
	add  b                                           ; $4c95: $80
	ldh  [$80], a                                    ; $4c96: $e0 $80
	rst  $38                                         ; $4c98: $ff
	add  b                                           ; $4c99: $80
	jp   hl                                          ; $4c9a: $e9


	add  d                                           ; $4c9b: $82
	call z, $ff84                                    ; $4c9c: $cc $84 $ff
	add  b                                           ; $4c9f: $80
	rlca                                             ; $4ca0: $07
	add  b                                           ; $4ca1: $80
	rst  $38                                         ; $4ca2: $ff
	add  b                                           ; $4ca3: $80
	daa                                              ; $4ca4: $27
	add  d                                           ; $4ca5: $82
	sub  e                                           ; $4ca6: $93
	add  l                                           ; $4ca7: $85
	rst  $38                                         ; $4ca8: $ff
	add  b                                           ; $4ca9: $80
	nop                                              ; $4caa: $00
	add  c                                           ; $4cab: $81
	rst  $38                                         ; $4cac: $ff
	nop                                              ; $4cad: $00
	nop                                              ; $4cae: $00
	add  a                                           ; $4caf: $87
	rst  $38                                         ; $4cb0: $ff
	nop                                              ; $4cb1: $00
	rra                                              ; $4cb2: $1f

Jump_018_4cb3:
	add  b                                           ; $4cb3: $80
	ld   a, a                                        ; $4cb4: $7f
	add  c                                           ; $4cb5: $81
	rst  $38                                         ; $4cb6: $ff
	nop                                              ; $4cb7: $00
	rra                                              ; $4cb8: $1f
	add  a                                           ; $4cb9: $87
	rst  $38                                         ; $4cba: $ff
	nop                                              ; $4cbb: $00
	nop                                              ; $4cbc: $00
	add  e                                           ; $4cbd: $83
	rst  $38                                         ; $4cbe: $ff
	add  b                                           ; $4cbf: $80
	add  b                                           ; $4cc0: $80
	add  b                                           ; $4cc1: $80
	ei                                               ; $4cc2: $fb
	add  b                                           ; $4cc3: $80
	ret  nz                                          ; $4cc4: $c0

	add  b                                           ; $4cc5: $80
	db   $db                                         ; $4cc6: $db
	add  b                                           ; $4cc7: $80
	ret  nz                                          ; $4cc8: $c0

	add  h                                           ; $4cc9: $84
	rst  $38                                         ; $4cca: $ff
	add  b                                           ; $4ccb: $80
	ld   [hl], $80                                   ; $4ccc: $36 $80
	db   $f4                                         ; $4cce: $f4
	add  b                                           ; $4ccf: $80
	ld   h, d                                        ; $4cd0: $62
	add  b                                           ; $4cd1: $80
	halt                                             ; $4cd2: $76
	add  b                                           ; $4cd3: $80
	ld   [hl], d                                     ; $4cd4: $72
	add  h                                           ; $4cd5: $84
	rst  $38                                         ; $4cd6: $ff
	add  b                                           ; $4cd7: $80
	cp   c                                           ; $4cd8: $b9
	add  b                                           ; $4cd9: $80
	xor  h                                           ; $4cda: $ac
	add  b                                           ; $4cdb: $80
	sbc  d                                           ; $4cdc: $9a
	add  b                                           ; $4cdd: $80
	cp   b                                           ; $4cde: $b8
	add  b                                           ; $4cdf: $80
	sbc  d                                           ; $4ce0: $9a
	add  h                                           ; $4ce1: $84
	rst  $38                                         ; $4ce2: $ff
	add  d                                           ; $4ce3: $82
	ld   l, e                                        ; $4ce4: $6b
	add  b                                           ; $4ce5: $80
	add  e                                           ; $4ce6: $83
	add  b                                           ; $4ce7: $80
	cpl                                              ; $4ce8: $2f
	add  b                                           ; $4ce9: $80
	xor  a                                           ; $4cea: $af
	add  h                                           ; $4ceb: $84
	rst  $38                                         ; $4cec: $ff
	add  b                                           ; $4ced: $80
	xor  $80                                         ; $4cee: $ee $80
	sbc  $80                                         ; $4cf0: $de $80
	or   h                                           ; $4cf2: $b4
	add  b                                           ; $4cf3: $80
	res  0, b                                        ; $4cf4: $cb $80
	or   [hl]                                        ; $4cf6: $b6
	add  [hl]                                        ; $4cf7: $86
	rst  $38                                         ; $4cf8: $ff
	add  b                                           ; $4cf9: $80
	ccf                                              ; $4cfa: $3f
	add  b                                           ; $4cfb: $80
	cp   a                                           ; $4cfc: $bf
	add  b                                           ; $4cfd: $80
	ld   a, a                                        ; $4cfe: $7f
	add  [hl]                                        ; $4cff: $86
	rst  $38                                         ; $4d00: $ff
	add  b                                           ; $4d01: $80
	add  b                                           ; $4d02: $80
	add  b                                           ; $4d03: $80
	rst  $38                                         ; $4d04: $ff
	add  b                                           ; $4d05: $80
	cp   $80                                         ; $4d06: $fe $80
	ld   sp, hl                                      ; $4d08: $f9
	add  b                                           ; $4d09: $80
	ei                                               ; $4d0a: $fb
	add  h                                           ; $4d0b: $84
	rst  $38                                         ; $4d0c: $ff
	add  d                                           ; $4d0d: $82
	ld   a, a                                        ; $4d0e: $7f
	add  h                                           ; $4d0f: $84
	rst  $38                                         ; $4d10: $ff
	add  b                                           ; $4d11: $80
	db   $db                                         ; $4d12: $db
	add  b                                           ; $4d13: $80
	add  b                                           ; $4d14: $80
	add  d                                           ; $4d15: $82
	rst  JumpTable                                         ; $4d16: $df
	add  b                                           ; $4d17: $80
	sbc  $84                                         ; $4d18: $de $84
	rst  $38                                         ; $4d1a: $ff
	add  b                                           ; $4d1b: $80
	ld   h, h                                        ; $4d1c: $64
	add  b                                           ; $4d1d: $80
	ld   [hl-], a                                    ; $4d1e: $32
	add  d                                           ; $4d1f: $82
	halt                                             ; $4d20: $76
	add  b                                           ; $4d21: $80
	ld   h, h                                        ; $4d22: $64
	add  h                                           ; $4d23: $84
	rst  $38                                         ; $4d24: $ff
	add  b                                           ; $4d25: $80
	xor  b                                           ; $4d26: $a8
	add  b                                           ; $4d27: $80
	cp   [hl]                                        ; $4d28: $be
	add  b                                           ; $4d29: $80
	cp   b                                           ; $4d2a: $b8
	add  b                                           ; $4d2b: $80
	xor  [hl]                                        ; $4d2c: $ae
	add  b                                           ; $4d2d: $80
	adc  [hl]                                        ; $4d2e: $8e
	add  h                                           ; $4d2f: $84
	rst  $38                                         ; $4d30: $ff
	add  b                                           ; $4d31: $80
	dec  hl                                          ; $4d32: $2b
	add  b                                           ; $4d33: $80
	rst  $20                                         ; $4d34: $e7
	add  b                                           ; $4d35: $80
	cpl                                              ; $4d36: $2f
	add  b                                           ; $4d37: $80
	res  0, b                                        ; $4d38: $cb $80
	or   e                                           ; $4d3a: $b3
	add  h                                           ; $4d3b: $84
	rst  $38                                         ; $4d3c: $ff
	add  b                                           ; $4d3d: $80
	add  l                                           ; $4d3e: $85
	add  b                                           ; $4d3f: $80
	jp   c, $9780                                    ; $4d40: $da $80 $97

	add  b                                           ; $4d43: $80
	sub  [hl]                                        ; $4d44: $96
	add  b                                           ; $4d45: $80
	sub  a                                           ; $4d46: $97
	add  h                                           ; $4d47: $84
	rst  $38                                         ; $4d48: $ff
	add  b                                           ; $4d49: $80
	ld   a, a                                        ; $4d4a: $7f
	add  b                                           ; $4d4b: $80
	sbc  a                                           ; $4d4c: $9f
	add  b                                           ; $4d4d: $80
	ld   a, a                                        ; $4d4e: $7f
	add  b                                           ; $4d4f: $80
	rst  $38                                         ; $4d50: $ff
	add  b                                           ; $4d51: $80
	ccf                                              ; $4d52: $3f
	add  h                                           ; $4d53: $84
	rst  $38                                         ; $4d54: $ff
	add  h                                           ; $4d55: $84
	ei                                               ; $4d56: $fb
	add  b                                           ; $4d57: $80
	db   $eb                                         ; $4d58: $eb
	add  b                                           ; $4d59: $80
	di                                               ; $4d5a: $f3
	sub  l                                           ; $4d5b: $95
	rst  $38                                         ; $4d5c: $ff
	ld   bc, $e000                                   ; $4d5d: $01 $00 $e0
	add  c                                           ; $4d60: $81
	rst  $38                                         ; $4d61: $ff
	nop                                              ; $4d62: $00
	ldh  [$87], a                                    ; $4d63: $e0 $87
	rst  $38                                         ; $4d65: $ff
	add  h                                           ; $4d66: $84
	ld   a, a                                        ; $4d67: $7f
	nop                                              ; $4d68: $00
	rra                                              ; $4d69: $1f
	add  a                                           ; $4d6a: $87
	ld   a, a                                        ; $4d6b: $7f
	inc  c                                           ; $4d6c: $0c
	sbc  a                                           ; $4d6d: $9f
	add  b                                           ; $4d6e: $80
	and  $76                                         ; $4d6f: $e6 $76
	jr   jr_018_4de1                                 ; $4d71: $18 $6e

	halt                                             ; $4d73: $76
	ld   e, h                                        ; $4d74: $5c
	ld   l, a                                        ; $4d75: $6f
	dec  sp                                          ; $4d76: $3b
	ld   e, a                                        ; $4d77: $5f
	ld   [hl], a                                     ; $4d78: $77
	ccf                                              ; $4d79: $3f
	add  c                                           ; $4d7a: $81
	ld   l, a                                        ; $4d7b: $6f
	ld   bc, $0060                                   ; $4d7c: $01 $60 $00
	add  b                                           ; $4d7f: $80
	rst  $38                                         ; $4d80: $ff
	nop                                              ; $4d81: $00
	nop                                              ; $4d82: $00
	add  b                                           ; $4d83: $80
	rst  $38                                         ; $4d84: $ff
	nop                                              ; $4d85: $00
	nop                                              ; $4d86: $00
	add  [hl]                                        ; $4d87: $86
	rst  $38                                         ; $4d88: $ff
	add  b                                           ; $4d89: $80
	ld   bc, $fc02                                   ; $4d8a: $01 $02 $fc
	cp   $02                                         ; $4d8d: $fe $02
	add  b                                           ; $4d8f: $80
	cp   $00                                         ; $4d90: $fe $00
	ld   b, $86                                      ; $4d92: $06 $86
	or   $00                                         ; $4d94: $f6 $00
	add  hl, bc                                      ; $4d96: $09
	adc  l                                           ; $4d97: $8d
	ld   l, a                                        ; $4d98: $6f
	nop                                              ; $4d99: $00
	sub  b                                           ; $4d9a: $90
	adc  l                                           ; $4d9b: $8d
	or   $00                                         ; $4d9c: $f6 $00
	add  hl, bc                                      ; $4d9e: $09
	add  l                                           ; $4d9f: $85
	ld   l, a                                        ; $4da0: $6f
	add  b                                           ; $4da1: $80
	ld   h, b                                        ; $4da2: $60
	dec  b                                           ; $4da3: $05
	ld   l, a                                        ; $4da4: $6f
	ld   a, a                                        ; $4da5: $7f
	ld   [hl], b                                     ; $4da6: $70
	ld   a, a                                        ; $4da7: $7f

jr_018_4da8:
	rst  $38                                         ; $4da8: $ff
	add  b                                           ; $4da9: $80

jr_018_4daa:
	add  [hl]                                        ; $4daa: $86
	rst  $38                                         ; $4dab: $ff
	add  b                                           ; $4dac: $80
	nop                                              ; $4dad: $00
	add  b                                           ; $4dae: $80
	rst  $38                                         ; $4daf: $ff
	nop                                              ; $4db0: $00
	nop                                              ; $4db1: $00
	add  b                                           ; $4db2: $80
	rst  $38                                         ; $4db3: $ff
	ld   bc, $f000                                   ; $4db4: $01 $00 $f0
	add  c                                           ; $4db7: $81
	or   $80                                         ; $4db8: $f6 $80
	xor  $09                                         ; $4dba: $ee $09
	sub  $dc                                         ; $4dbc: $d6 $dc
	inc  l                                           ; $4dbe: $2c
	ld   a, [hl-]                                    ; $4dbf: $3a
	ld   e, d                                        ; $4dc0: $5a
	halt                                             ; $4dc1: $76
	ld   [hl], $6e                                   ; $4dc2: $36 $6e
	ld   l, a                                        ; $4dc4: $6f
	ld   bc, $ff8e                                   ; $4dc5: $01 $8e $ff
	add  b                                           ; $4dc8: $80
	nop                                              ; $4dc9: $00
	adc  h                                           ; $4dca: $8c
	ld   a, a                                        ; $4dcb: $7f
	add  b                                           ; $4dcc: $80
	nop                                              ; $4dcd: $00
	adc  h                                           ; $4dce: $8c
	rst  $38                                         ; $4dcf: $ff
	adc  [hl]                                        ; $4dd0: $8e
	ld   a, a                                        ; $4dd1: $7f
	nop                                              ; $4dd2: $00
	nop                                              ; $4dd3: $00
	add  c                                           ; $4dd4: $81
	ld   a, a                                        ; $4dd5: $7f
	nop                                              ; $4dd6: $00
	nop                                              ; $4dd7: $00
	add  l                                           ; $4dd8: $85
	ld   a, a                                        ; $4dd9: $7f
	nop                                              ; $4dda: $00
	nop                                              ; $4ddb: $00
	add  d                                           ; $4ddc: $82
	ld   a, a                                        ; $4ddd: $7f
	add  c                                           ; $4dde: $81
	rst  $38                                         ; $4ddf: $ff
	nop                                              ; $4de0: $00

jr_018_4de1:
	nop                                              ; $4de1: $00
	add  l                                           ; $4de2: $85
	rst  $38                                         ; $4de3: $ff
	nop                                              ; $4de4: $00
	nop                                              ; $4de5: $00

jr_018_4de6:
	add  c                                           ; $4de6: $81
	rst  $38                                         ; $4de7: $ff
	jp   c, $8e01                                    ; $4de8: $da $01 $8e

	nop                                              ; $4deb: $00
	ld   [$60ef], sp                                 ; $4dec: $08 $ef $60
	jp   nc, $2420                                   ; $4def: $d2 $20 $24

	jr   nz, jr_018_4e3d                             ; $4df2: $20 $49

	nop                                              ; $4df4: $00
	jr   nc, @-$69                                   ; $4df5: $30 $95

	nop                                              ; $4df7: $00

jr_018_4df8:
	nop                                              ; $4df8: $00
	rst  $38                                         ; $4df9: $ff
	add  b                                           ; $4dfa: $80
	ld   b, b                                        ; $4dfb: $40
	add  b                                           ; $4dfc: $80
	and  [hl]                                        ; $4dfd: $a6
	add  b                                           ; $4dfe: $80
	xor  c                                           ; $4dff: $a9
	rlca                                             ; $4e00: $07
	ld   c, c                                        ; $4e01: $49
	reti                                             ; $4e02: $d9


	ld   d, $48                                      ; $4e03: $16 $48
	ld   c, $31                                      ; $4e05: $0e $31
	nop                                              ; $4e07: $00
	ld   c, $8f                                      ; $4e08: $0e $8f
	nop                                              ; $4e0a: $00
	add  b                                           ; $4e0b: $80
	rlca                                             ; $4e0c: $07
	add  b                                           ; $4e0d: $80
	dec  b                                           ; $4e0e: $05
	add  b                                           ; $4e0f: $80
	rlca                                             ; $4e10: $07
	sbc  b                                           ; $4e11: $98
	nop                                              ; $4e12: $00
	inc  c                                           ; $4e13: $0c
	ld   [hl], $c8                                   ; $4e14: $36 $c8
	ld   [bc], a                                     ; $4e16: $02
	jr   nz, jr_018_4e7b                             ; $4e17: $20 $62

	ld   e, b                                        ; $4e19: $58
	ld   e, e                                        ; $4e1a: $5b
	ld   b, d                                        ; $4e1b: $42
	cp   l                                           ; $4e1c: $bd
	add  c                                           ; $4e1d: $81
	ld   b, d                                        ; $4e1e: $42
	nop                                              ; $4e1f: $00
	add  c                                           ; $4e20: $81
	adc  d                                           ; $4e21: $8a
	nop                                              ; $4e22: $00
	add  d                                           ; $4e23: $82
	db   $10                                         ; $4e24: $10
	add  b                                           ; $4e25: $80
	jr   nz, jr_018_4da8                             ; $4e26: $20 $80

	jr   z, jr_018_4daa                              ; $4e28: $28 $80

	ld   e, b                                        ; $4e2a: $58
	add  b                                           ; $4e2b: $80
	ld   d, b                                        ; $4e2c: $50
	add  b                                           ; $4e2d: $80
	db   $10                                         ; $4e2e: $10
	sub  a                                           ; $4e2f: $97
	nop                                              ; $4e30: $00
	ld   bc, $2050                                   ; $4e31: $01 $50 $20
	add  b                                           ; $4e34: $80
	nop                                              ; $4e35: $00
	ld   a, [bc]                                     ; $4e36: $0a
	jr   nc, jr_018_4e39                             ; $4e37: $30 $00

jr_018_4e39:
	ld   [hl], b                                     ; $4e39: $70
	nop                                              ; $4e3a: $00
	ret  nc                                          ; $4e3b: $d0

	nop                                              ; $4e3c: $00

jr_018_4e3d:
	and  b                                           ; $4e3d: $a0
	add  b                                           ; $4e3e: $80
	ld   b, b                                        ; $4e3f: $40
	nop                                              ; $4e40: $00
	add  b                                           ; $4e41: $80
	sub  l                                           ; $4e42: $95
	nop                                              ; $4e43: $00
	add  b                                           ; $4e44: $80
	ldh  [$88], a                                    ; $4e45: $e0 $88
	nop                                              ; $4e47: $00
	add  b                                           ; $4e48: $80
	inc  b                                           ; $4e49: $04
	inc  d                                           ; $4e4a: $14
	ld   a, [bc]                                     ; $4e4b: $0a
	inc  c                                           ; $4e4c: $0c
	inc  e                                           ; $4e4d: $1c
	inc  d                                           ; $4e4e: $14
	inc  sp                                          ; $4e4f: $33
	ld   [hl+], a                                    ; $4e50: $22
	ld   a, [hl+]                                    ; $4e51: $2a
	ld   [bc], a                                     ; $4e52: $02
	inc  [hl]                                        ; $4e53: $34
	nop                                              ; $4e54: $00
	jr   nc, jr_018_4e78                             ; $4e55: $30 $21

	ld   h, l                                        ; $4e57: $65
	ld   h, b                                        ; $4e58: $60
	add  hl, sp                                      ; $4e59: $39
	db   $10                                         ; $4e5a: $10
	ld   [de], a                                     ; $4e5b: $12
	db   $10                                         ; $4e5c: $10
	inc  h                                           ; $4e5d: $24
	nop                                              ; $4e5e: $00
	jr   jr_018_4de6                                 ; $4e5f: $18 $85

	nop                                              ; $4e61: $00
	ld   [$0004], sp                                 ; $4e62: $08 $04 $00
	dec  bc                                          ; $4e65: $0b
	inc  b                                           ; $4e66: $04
	inc  d                                           ; $4e67: $14
	dec  b                                           ; $4e68: $05
	dec  h                                           ; $4e69: $25
	dec  de                                          ; $4e6a: $1b
	ld   e, e                                        ; $4e6b: $5b
	add  b                                           ; $4e6c: $80
	ccf                                              ; $4e6d: $3f
	ld   bc, $ad2d                                   ; $4e6e: $01 $2d $ad
	add  b                                           ; $4e71: $80
	ld   a, a                                        ; $4e72: $7f
	add  b                                           ; $4e73: $80
	ld   b, a                                        ; $4e74: $47
	add  b                                           ; $4e75: $80
	jr   nz, jr_018_4df8                             ; $4e76: $20 $80

jr_018_4e78:
	ld   d, e                                        ; $4e78: $53
	add  hl, bc                                      ; $4e79: $09
	ld   d, h                                        ; $4e7a: $54

jr_018_4e7b:
	call nc, Call_018_6c24                           ; $4e7b: $d4 $24 $6c
	dec  bc                                          ; $4e7e: $0b
	inc  h                                           ; $4e7f: $24
	rlca                                             ; $4e80: $07
	jr   jr_018_4e83                                 ; $4e81: $18 $00

jr_018_4e83:
	rlca                                             ; $4e83: $07
	adc  c                                           ; $4e84: $89
	nop                                              ; $4e85: $00
	add  b                                           ; $4e86: $80
	ld   bc, $0300                                   ; $4e87: $01 $00 $03
	add  b                                           ; $4e8a: $80
	ld   [bc], a                                     ; $4e8b: $02
	ld   [$0100], sp                                 ; $4e8c: $08 $00 $01
	nop                                              ; $4e8f: $00
	ld   [bc], a                                     ; $4e90: $02
	nop                                              ; $4e91: $00
	inc  bc                                          ; $4e92: $03
	ld   [bc], a                                     ; $4e93: $02
	ld   bc, $8003                                   ; $4e94: $01 $03 $80
	ld   bc, $0202                                   ; $4e97: $01 $02 $02
	nop                                              ; $4e9a: $00
	ld   bc, $0085                                   ; $4e9b: $01 $85 $00
	inc  b                                           ; $4e9e: $04
	ret  nz                                          ; $4e9f: $c0

	nop                                              ; $4ea0: $00
	ld   h, b                                        ; $4ea1: $60
	ret  nz                                          ; $4ea2: $c0

	or   b                                           ; $4ea3: $b0
	add  c                                           ; $4ea4: $81
	ldh  [rAUD1SWEEP], a                             ; $4ea5: $e0 $10
	ld   hl, sp-$10                                  ; $4ea7: $f8 $f0
	or   [hl]                                        ; $4ea9: $b6
	ldh  a, [$e5]                                    ; $4eaa: $f0 $e5
	ld   h, h                                        ; $4eac: $64
	ld   bc, $3110                                   ; $4ead: $01 $10 $31
	xor  h                                           ; $4eb0: $ac
	xor  l                                           ; $4eb1: $ad
	and  c                                           ; $4eb2: $a1
	sbc  $40                                         ; $4eb3: $de $40
	ld   hl, $c000                                   ; $4eb5: $21 $00 $c0
	add  a                                           ; $4eb8: $87
	nop                                              ; $4eb9: $00
	ld   bc, $0060                                   ; $4eba: $01 $60 $00
	add  b                                           ; $4ebd: $80
	ret  nz                                          ; $4ebe: $c0

	ld   bc, $60f1                                   ; $4ebf: $01 $f1 $60
	add  b                                           ; $4ec2: $80
	jr   nz, jr_018_4ed5                             ; $4ec3: $20 $10

	cp   d                                           ; $4ec5: $ba
	ld   sp, $1155                                   ; $4ec6: $31 $55 $11
	ld   bc, $2505                                   ; $4ec9: $01 $05 $25
	ld   [$01a8], sp                                 ; $4ecc: $08 $a8 $01
	call $9280                                       ; $4ecf: $cd $80 $92
	add  b                                           ; $4ed2: $80
	jr   nz, jr_018_4ed5                             ; $4ed3: $20 $00

jr_018_4ed5:
	pop  bc                                          ; $4ed5: $c1
	add  e                                           ; $4ed6: $83
	nop                                              ; $4ed7: $00
	inc  d                                           ; $4ed8: $14
	ld   bc, $0200                                   ; $4ed9: $01 $00 $02
	ld   bc, $0305                                   ; $4edc: $01 $05 $03
	ld   a, [bc]                                     ; $4edf: $0a
	rlca                                             ; $4ee0: $07
	inc  d                                           ; $4ee1: $14
	ld   c, $0d                                      ; $4ee2: $0e $0d
	ld   [$000c], sp                                 ; $4ee4: $08 $0c $00
	dec  e                                           ; $4ee7: $1d
	ld   [bc], a                                     ; $4ee8: $02
	ld   [$0f06], sp                                 ; $4ee9: $08 $06 $0f
	inc  bc                                          ; $4eec: $03
	dec  b                                           ; $4eed: $05
	add  c                                           ; $4eee: $81
	ld   bc, $0202                                   ; $4eef: $01 $02 $02
	nop                                              ; $4ef2: $00
	ld   bc, $0089                                   ; $4ef3: $01 $89 $00
	rlca                                             ; $4ef6: $07
	jr   nc, jr_018_4ef9                             ; $4ef7: $30 $00

jr_018_4ef9:
	ld   h, b                                        ; $4ef9: $60
	jr   nz, @-$46                                   ; $4efa: $20 $b8

	jr   nc, @-$2e                                   ; $4efc: $30 $d0

	db   $10                                         ; $4efe: $10
	add  b                                           ; $4eff: $80
	nop                                              ; $4f00: $00
	ld   a, [bc]                                     ; $4f01: $0a
	jr   jr_018_4f04                                 ; $4f02: $18 $00

jr_018_4f04:
	cp   b                                           ; $4f04: $b8
	nop                                              ; $4f05: $00
	add  sp, -$80                                    ; $4f06: $e8 $80
	ld   d, b                                        ; $4f08: $50
	ld   b, b                                        ; $4f09: $40
	and  b                                           ; $4f0a: $a0
	nop                                              ; $4f0b: $00
	ld   c, b                                        ; $4f0c: $48
	add  c                                           ; $4f0d: $81
	nop                                              ; $4f0e: $00
	ld   b, $14                                      ; $4f0f: $06 $14
	ld   [$0c0f], sp                                 ; $4f11: $08 $0f $0c
	ld   l, h                                        ; $4f14: $6c
	dec  e                                           ; $4f15: $1d
	sbc  c                                           ; $4f16: $99
	add  b                                           ; $4f17: $80
	ld   h, e                                        ; $4f18: $63
	add  b                                           ; $4f19: $80
	rst  $38                                         ; $4f1a: $ff
	add  b                                           ; $4f1b: $80
	db   $db                                         ; $4f1c: $db

jr_018_4f1d:
	add  b                                           ; $4f1d: $80
	rst  $38                                         ; $4f1e: $ff
	add  b                                           ; $4f1f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f20: $cf
	add  b                                           ; $4f21: $80
	inc  hl                                          ; $4f22: $23
	add  b                                           ; $4f23: $80
	add  b                                           ; $4f24: $80
	add  b                                           ; $4f25: $80
	ld   b, [hl]                                     ; $4f26: $46
	add  b                                           ; $4f27: $80
	ld   c, c                                        ; $4f28: $49
	add  b                                           ; $4f29: $80
	adc  c                                           ; $4f2a: $89
	rlca                                             ; $4f2b: $07
	ld   b, $66                                      ; $4f2c: $06 $66
	ld   h, b                                        ; $4f2e: $60
	sbc  a                                           ; $4f2f: $9f
	rra                                              ; $4f30: $1f
	ld   h, b                                        ; $4f31: $60
	nop                                              ; $4f32: $00
	rra                                              ; $4f33: $1f
	adc  c                                           ; $4f34: $89
	nop                                              ; $4f35: $00
	ld   [de], a                                     ; $4f36: $12
	ld   h, b                                        ; $4f37: $60
	nop                                              ; $4f38: $00
	sub  b                                           ; $4f39: $90
	ld   h, b                                        ; $4f3a: $60
	ld   b, b                                        ; $4f3b: $40
	ldh  [$b8], a                                    ; $4f3c: $e0 $b8
	ldh  a, [$30]                                    ; $4f3e: $f0 $30
	or   b                                           ; $4f40: $b0
	inc  a                                           ; $4f41: $3c
	jr   c, jr_018_4f1d                              ; $4f42: $38 $d9

	jr   @+$20                                       ; $4f44: $18 $1e

	inc  e                                           ; $4f46: $1c
	jr   z, jr_018_4f51                              ; $4f47: $28 $08

	nop                                              ; $4f49: $00
	add  b                                           ; $4f4a: $80
	ld   [bc], a                                     ; $4f4b: $02
	dec  c                                           ; $4f4c: $0d
	inc  c                                           ; $4f4d: $0c
	adc  h                                           ; $4f4e: $8c
	nop                                              ; $4f4f: $00
	inc  l                                           ; $4f50: $2c

jr_018_4f51:
	inc  e                                           ; $4f51: $1c
	jp   nz, $8db0                                   ; $4f52: $c2 $b0 $8d

	ldh  [rAUD1SWEEP], a                             ; $4f55: $e0 $10
	ld   b, b                                        ; $4f57: $40
	and  b                                           ; $4f58: $a0
	nop                                              ; $4f59: $00
	ld   b, b                                        ; $4f5a: $40
	adc  a                                           ; $4f5b: $8f
	nop                                              ; $4f5c: $00
	ld   b, $80                                      ; $4f5d: $06 $80
	nop                                              ; $4f5f: $00
	ld   h, b                                        ; $4f60: $60
	add  b                                           ; $4f61: $80
	sub  b                                           ; $4f62: $90
	ldh  [$f8], a                                    ; $4f63: $e0 $f8
	add  c                                           ; $4f65: $81
	ldh  a, [rP1]                                    ; $4f66: $f0 $00
	db   $fc                                         ; $4f68: $fc
	add  c                                           ; $4f69: $81
	ld   hl, sp+$12                                  ; $4f6a: $f8 $12
	ret  c                                           ; $4f6c: $d8

	ld   hl, sp-$4f                                  ; $4f6d: $f8 $b1
	ld   [hl], b                                     ; $4f6f: $70
	inc  hl                                          ; $4f70: $23
	add  hl, hl                                      ; $4f71: $29
	jr   z, jr_018_4f96                              ; $4f72: $28 $22

	ld   [hl-], a                                    ; $4f74: $32
	inc  sp                                          ; $4f75: $33
	ld   [hl], a                                     ; $4f76: $77
	ld   [hl], b                                     ; $4f77: $70
	ld   l, e                                        ; $4f78: $6b
	ld   h, b                                        ; $4f79: $60
	sub  b                                           ; $4f7a: $90
	add  b                                           ; $4f7b: $80
	ld   h, b                                        ; $4f7c: $60
	nop                                              ; $4f7d: $00
	add  b                                           ; $4f7e: $80
	add  c                                           ; $4f7f: $81
	nop                                              ; $4f80: $00
	nop                                              ; $4f81: $00
	ld   bc, $0083                                   ; $4f82: $01 $83 $00
	ld   [$0002], sp                                 ; $4f85: $08 $02 $00
	inc  b                                           ; $4f88: $04
	ld   bc, $0619                                   ; $4f89: $01 $19 $06
	ld   h, $1f                                      ; $4f8c: $26 $1f
	ld   e, a                                        ; $4f8e: $5f
	add  b                                           ; $4f8f: $80
	dec  sp                                          ; $4f90: $3b
	ld   bc, $bf3f                                   ; $4f91: $01 $3f $bf
	add  b                                           ; $4f94: $80
	ld   a, a                                        ; $4f95: $7f

jr_018_4f96:
	add  b                                           ; $4f96: $80
	ld   [hl], a                                     ; $4f97: $77
	add  b                                           ; $4f98: $80
	rst  $38                                         ; $4f99: $ff
	add  b                                           ; $4f9a: $80
	ld   sp, hl                                      ; $4f9b: $f9
	add  b                                           ; $4f9c: $80
	ldh  [$80], a                                    ; $4f9d: $e0 $80
	nop                                              ; $4f9f: $00
	add  b                                           ; $4fa0: $80
	ld   b, h                                        ; $4fa1: $44
	add  b                                           ; $4fa2: $80
	and  b                                           ; $4fa3: $a0
	add  e                                           ; $4fa4: $83
	stop                                             ; $4fa5: $10 $00
	sub  b                                           ; $4fa7: $90
	add  b                                           ; $4fa8: $80
	jr   nz, jr_018_4fb4                             ; $4fa9: $20 $09

	ld   [bc], a                                     ; $4fab: $02
	ld   e, d                                        ; $4fac: $5a
	jr   @+$28                                       ; $4fad: $18 $26

	ld   b, $19                                      ; $4faf: $06 $19
	ld   bc, $0006                                   ; $4fb1: $01 $06 $00

jr_018_4fb4:
	ld   bc, $0091                                   ; $4fb4: $01 $91 $00
	add  b                                           ; $4fb7: $80
	ld   [bc], a                                     ; $4fb8: $02
	inc  d                                           ; $4fb9: $14
	dec  b                                           ; $4fba: $05
	ld   b, $0e                                      ; $4fbb: $06 $0e
	ld   a, [bc]                                     ; $4fbd: $0a
	add  hl, de                                      ; $4fbe: $19
	ld   de, $0115                                   ; $4fbf: $11 $15 $01
	ld   a, [de]                                     ; $4fc2: $1a
	nop                                              ; $4fc3: $00
	jr   jr_018_4fd6                                 ; $4fc4: $18 $10

	ld   [hl-], a                                    ; $4fc6: $32
	jr   nc, jr_018_4fe5                             ; $4fc7: $30 $1c

	ld   [$0809], sp                                 ; $4fc9: $08 $09 $08
	ld   [de], a                                     ; $4fcc: $12
	nop                                              ; $4fcd: $00
	inc  c                                           ; $4fce: $0c
	add  l                                           ; $4fcf: $85
	nop                                              ; $4fd0: $00
	ld   a, [de]                                     ; $4fd1: $1a
	inc  c                                           ; $4fd2: $0c
	ld   [$1c16], sp                                 ; $4fd3: $08 $16 $1c

jr_018_4fd6:
	inc  h                                           ; $4fd6: $24
	inc  [hl]                                        ; $4fd7: $34
	rst  ToBoot                                         ; $4fd8: $c7
	ld   h, [hl]                                     ; $4fd9: $66
	ld   a, [de]                                     ; $4fda: $1a
	ld   b, d                                        ; $4fdb: $42
	ld   hl, $0600                                   ; $4fdc: $21 $00 $06
	nop                                              ; $4fdf: $00
	inc  hl                                          ; $4fe0: $23
	nop                                              ; $4fe1: $00
	ld   [hl], h                                     ; $4fe2: $74
	ld   h, b                                        ; $4fe3: $60
	cp   c                                           ; $4fe4: $b9

jr_018_4fe5:
	jr   nc, jr_018_5029                             ; $4fe5: $30 $42

	nop                                              ; $4fe7: $00
	and  h                                           ; $4fe8: $a4
	nop                                              ; $4fe9: $00
	jr   jr_018_4fec                                 ; $4fea: $18 $00

jr_018_4fec:
	ld   b, b                                        ; $4fec: $40
	add  c                                           ; $4fed: $81
	add  b                                           ; $4fee: $80
	ld   [$c0e0], sp                                 ; $4fef: $08 $e0 $c0
	call c, $a3c0                                    ; $4ff2: $dc $c0 $a3
	inc  l                                           ; $4ff5: $2c
	ld   c, h                                        ; $4ff6: $4c
	rst  JumpTable                                         ; $4ff7: $df
	sbc  a                                           ; $4ff8: $9f
	add  b                                           ; $4ff9: $80
	ccf                                              ; $4ffa: $3f
	add  b                                           ; $4ffb: $80
	rst  JumpTable                                         ; $4ffc: $df
	add  h                                           ; $4ffd: $84
	rst  $38                                         ; $4ffe: $ff
	add  b                                           ; $4fff: $80
	cp   a                                           ; $5000: $bf
	add  b                                           ; $5001: $80
	rst  $38                                         ; $5002: $ff
	add  b                                           ; $5003: $80
	ld   a, a                                        ; $5004: $7f
	inc  bc                                          ; $5005: $03
	rra                                              ; $5006: $1f
	inc  e                                           ; $5007: $1c
	inc  bc                                          ; $5008: $03
	nop                                              ; $5009: $00
	add  b                                           ; $500a: $80
	jr   c, @-$7e                                    ; $500b: $38 $80

	ld   b, h                                        ; $500d: $44
	add  h                                           ; $500e: $84
	add  d                                           ; $500f: $82
	add  b                                           ; $5010: $80
	ld   b, h                                        ; $5011: $44
	ld   [bc], a                                     ; $5012: $02
	jr   c, jr_018_5050                              ; $5013: $38 $3b

	inc  bc                                          ; $5015: $03
	add  b                                           ; $5016: $80
	db   $fc                                         ; $5017: $fc
	ld   [bc], a                                     ; $5018: $02
	inc  bc                                          ; $5019: $03
	nop                                              ; $501a: $00
	db   $fc                                         ; $501b: $fc
	add  c                                           ; $501c: $81
	nop                                              ; $501d: $00
	nop                                              ; $501e: $00
	ld   [bc], a                                     ; $501f: $02
	add  c                                           ; $5020: $81
	nop                                              ; $5021: $00
	ld   b, $05                                      ; $5022: $06 $05
	ld   [bc], a                                     ; $5024: $02
	ld   a, [bc]                                     ; $5025: $0a
	ld   [bc], a                                     ; $5026: $02
	ld   [de], a                                     ; $5027: $12

jr_018_5028:
	dec  c                                           ; $5028: $0d

jr_018_5029:
	xor  l                                           ; $5029: $ad
	add  b                                           ; $502a: $80
	rra                                              ; $502b: $1f
	ld   bc, $5616                                   ; $502c: $01 $16 $56
	add  b                                           ; $502f: $80
	ccf                                              ; $5030: $3f
	add  b                                           ; $5031: $80
	and  e                                           ; $5032: $a3
	ld   bc, $9010                                   ; $5033: $01 $10 $90
	add  b                                           ; $5036: $80
	add  hl, hl                                      ; $5037: $29
	rrca                                             ; $5038: $0f
	ld   a, [hl+]                                    ; $5039: $2a
	ld   l, d                                        ; $503a: $6a
	ld   [de], a                                     ; $503b: $12
	ld   [hl], $05                                   ; $503c: $36 $05
	ld   [de], a                                     ; $503e: $12
	inc  bc                                          ; $503f: $03
	inc  c                                           ; $5040: $0c
	nop                                              ; $5041: $00
	inc  bc                                          ; $5042: $03
	nop                                              ; $5043: $00
	ret  nz                                          ; $5044: $c0

	nop                                              ; $5045: $00
	ld   h, b                                        ; $5046: $60
	ret  nz                                          ; $5047: $c0

	or   b                                           ; $5048: $b0
	add  c                                           ; $5049: $81
	ldh  [rP1], a                                    ; $504a: $e0 $00
	ret  c                                           ; $504c: $d8

	add  c                                           ; $504d: $81
	ldh  a, [rSC]                                    ; $504e: $f0 $02

jr_018_5050:
	db   $fc                                         ; $5050: $fc
	ld   hl, sp-$28                                  ; $5051: $f8 $d8
	add  c                                           ; $5053: $81
	ld   hl, sp+$03                                  ; $5054: $f8 $03
	jr   c, jr_018_5050                              ; $5056: $38 $f8

	ei                                               ; $5058: $fb
	ld   hl, sp-$80                                  ; $5059: $f8 $80
	pop  hl                                          ; $505b: $e1
	nop                                              ; $505c: $00
	ld   h, b                                        ; $505d: $60
	add  b                                           ; $505e: $80
	ld   l, b                                        ; $505f: $68
	nop                                              ; $5060: $00
	ld   h, e                                        ; $5061: $63
	add  b                                           ; $5062: $80
	ld   [hl], e                                     ; $5063: $73
	ld   b, $7c                                      ; $5064: $06 $7c
	nop                                              ; $5066: $00
	ld   h, b                                        ; $5067: $60
	add  b                                           ; $5068: $80
	or   b                                           ; $5069: $b0
	ldh  [$d8], a                                    ; $506a: $e0 $d8
	add  c                                           ; $506c: $81
	ldh  a, [$08]                                    ; $506d: $f0 $08
	db   $fc                                         ; $506f: $fc
	ld   hl, sp-$25                                  ; $5070: $f8 $db
	ld   hl, sp-$0e                                  ; $5072: $f8 $f2
	ld   [hl-], a                                    ; $5074: $32
	nop                                              ; $5075: $00
	adc  b                                           ; $5076: $88
	sbc  b                                           ; $5077: $98
	add  b                                           ; $5078: $80
	ld   d, [hl]                                     ; $5079: $56
	rlca                                             ; $507a: $07
	ld   d, b                                        ; $507b: $50
	ld   l, a                                        ; $507c: $6f
	and  b                                           ; $507d: $a0
	db   $10                                         ; $507e: $10
	add  b                                           ; $507f: $80
	ld   h, b                                        ; $5080: $60
	nop                                              ; $5081: $00
	add  b                                           ; $5082: $80
	adc  e                                           ; $5083: $8b
	nop                                              ; $5084: $00
	ld   bc, $000c                                   ; $5085: $01 $0c $00
	add  b                                           ; $5088: $80
	jr   jr_018_509f                                 ; $5089: $18 $14

	ld   a, $2c                                      ; $508b: $3e $2c
	ld   h, h                                        ; $508d: $64
	ld   b, h                                        ; $508e: $44
	ld   d, a                                        ; $508f: $57
	ld   b, $2a                                      ; $5090: $06 $2a
	ld   [bc], a                                     ; $5092: $02
	ld   b, b                                        ; $5093: $40
	nop                                              ; $5094: $00
	ld   h, h                                        ; $5095: $64
	ld   b, c                                        ; $5096: $41
	ld   sp, $3d60                                   ; $5097: $31 $60 $3d
	jr   nc, jr_018_50ee                             ; $509a: $30 $52

	db   $10                                         ; $509c: $10
	inc  h                                           ; $509d: $24
	nop                                              ; $509e: $00

jr_018_509f:
	jr   jr_018_5028                                 ; $509f: $18 $87

	nop                                              ; $50a1: $00
	ld   bc, $0203                                   ; $50a2: $01 $03 $02
	add  b                                           ; $50a5: $80
	rlca                                             ; $50a6: $07
	ld   b, $0d                                      ; $50a7: $06 $0d
	rrca                                             ; $50a9: $0f
	rra                                              ; $50aa: $1f
	dec  de                                          ; $50ab: $1b
	dec  sp                                          ; $50ac: $3b

jr_018_50ad:
	inc  sp                                          ; $50ad: $33
	db   $fd                                         ; $50ae: $fd
	add  b                                           ; $50af: $80
	ld   h, c                                        ; $50b0: $61
	ld   bc, $4241                                   ; $50b1: $01 $41 $42
	add  b                                           ; $50b4: $80
	jr   nz, jr_018_50ba                             ; $50b5: $20 $03

	add  b                                           ; $50b7: $80
	add  c                                           ; $50b8: $81
	add  b                                           ; $50b9: $80

jr_018_50ba:
	ld   [hl], b                                     ; $50ba: $70
	add  l                                           ; $50bb: $85
	nop                                              ; $50bc: $00
	inc  d                                           ; $50bd: $14
	jr   jr_018_50c0                                 ; $50be: $18 $00

jr_018_50c0:
	jr   nc, jr_018_50d2                             ; $50c0: $30 $10

	ld   e, h                                        ; $50c2: $5c
	jr   jr_018_50ad                                 ; $50c3: $18 $e8

	ld   [$0080], sp                                 ; $50c5: $08 $80 $00
	adc  h                                           ; $50c8: $8c
	nop                                              ; $50c9: $00
	call c, Call_018_7480                            ; $50ca: $dc $80 $74
	ld   b, b                                        ; $50cd: $40
	xor  b                                           ; $50ce: $a8
	jr   nz, jr_018_5121                             ; $50cf: $20 $50

	nop                                              ; $50d1: $00

jr_018_50d2:
	jr   nz, @-$7b                                   ; $50d2: $20 $83

	nop                                              ; $50d4: $00
	nop                                              ; $50d5: $00
	ld   bc, $0081                                   ; $50d6: $01 $81 $00
	nop                                              ; $50d9: $00
	ld   [bc], a                                     ; $50da: $02
	add  c                                           ; $50db: $81
	ld   bc, $0d04                                   ; $50dc: $01 $04 $0d
	inc  bc                                          ; $50df: $03
	inc  de                                          ; $50e0: $13
	inc  c                                           ; $50e1: $0c
	inc  l                                           ; $50e2: $2c
	add  b                                           ; $50e3: $80
	rra                                              ; $50e4: $1f
	inc  bc                                          ; $50e5: $03
	dec  de                                          ; $50e6: $1b
	ld   e, e                                        ; $50e7: $5b
	ccf                                              ; $50e8: $3f
	cp   a                                           ; $50e9: $bf
	add  b                                           ; $50ea: $80
	add  hl, sp                                      ; $50eb: $39
	add  b                                           ; $50ec: $80
	and  h                                           ; $50ed: $a4

jr_018_50ee:
	ld   bc, $9010                                   ; $50ee: $01 $10 $90
	add  b                                           ; $50f1: $80
	jr   z, jr_018_50f5                              ; $50f2: $28 $01

	add  hl, bc                                      ; $50f4: $09

jr_018_50f5:
	ld   c, c                                        ; $50f5: $49
	add  b                                           ; $50f6: $80
	ld   de, $0007                                   ; $50f7: $11 $07 $00
	inc  l                                           ; $50fa: $2c
	inc  c                                           ; $50fb: $0c
	inc  de                                          ; $50fc: $13
	inc  bc                                          ; $50fd: $03
	inc  c                                           ; $50fe: $0c
	nop                                              ; $50ff: $00
	inc  bc                                          ; $5100: $03
	add  e                                           ; $5101: $83
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	add  b                                           ; $5104: $80
	add  c                                           ; $5105: $81
	nop                                              ; $5106: $00
	nop                                              ; $5107: $00
	ret  nz                                          ; $5108: $c0

	add  c                                           ; $5109: $81
	add  b                                           ; $510a: $80
	nop                                              ; $510b: $00
	ldh  [$81], a                                    ; $510c: $e0 $81
	ret  nz                                          ; $510e: $c0

	ld   b, $a0                                      ; $510f: $06 $a0
	add  b                                           ; $5111: $80
	ld   h, b                                        ; $5112: $60
	ld   b, b                                        ; $5113: $40
	add  b                                           ; $5114: $80
	nop                                              ; $5115: $00
	ld   h, b                                        ; $5116: $60
	add  e                                           ; $5117: $83
	nop                                              ; $5118: $00
	ld   [$0080], sp                                 ; $5119: $08 $80 $00
	ldh  a, [$80]                                    ; $511c: $f0 $80
	adc  h                                           ; $511e: $8c
	or   b                                           ; $511f: $b0
	ld   [hl-], a                                    ; $5120: $32

jr_018_5121:
	ld   a, h                                        ; $5121: $7c
	ld   a, a                                        ; $5122: $7f
	add  b                                           ; $5123: $80
	cp   $01                                         ; $5124: $fe $01
	ld   a, [hl]                                     ; $5126: $7e
	ld   a, a                                        ; $5127: $7f
	add  c                                           ; $5128: $81
	rst  $38                                         ; $5129: $ff
	inc  b                                           ; $512a: $04
	ei                                               ; $512b: $fb
	ld   a, a                                        ; $512c: $7f
	halt                                             ; $512d: $76
	ld   c, $04                                      ; $512e: $0e $04
	add  b                                           ; $5130: $80
	push bc                                          ; $5131: $c5
	nop                                              ; $5132: $00
	inc  h                                           ; $5133: $24
	add  b                                           ; $5134: $80
	ld   h, $08                                      ; $5135: $26 $08
	ld   l, $ce                                      ; $5137: $2e $ce
	call $f20c                                       ; $5139: $cd $0c $f2
	ldh  a, [$0c]                                    ; $513c: $f0 $0c
	nop                                              ; $513e: $00
	ldh  a, [$97]                                    ; $513f: $f0 $97
	nop                                              ; $5141: $00
	ld   a, [bc]                                     ; $5142: $0a
	add  c                                           ; $5143: $81
	ld   bc, $0302                                   ; $5144: $01 $02 $03
	inc  b                                           ; $5147: $04
	ld   b, $38                                      ; $5148: $06 $38
	inc  c                                           ; $514a: $0c
	ld   h, e                                        ; $514b: $63
	jr   z, jr_018_5152                              ; $514c: $28 $04

	add  b                                           ; $514e: $80
	ld   b, b                                        ; $514f: $40
	dec  bc                                          ; $5150: $0b
	ld   h, b                                        ; $5151: $60

jr_018_5152:
	db   $e4                                         ; $5152: $e4
	nop                                              ; $5153: $00
	ld   l, [hl]                                     ; $5154: $6e
	inc  c                                           ; $5155: $0c
	rla                                              ; $5156: $17
	ld   b, $08                                      ; $5157: $06 $08
	nop                                              ; $5159: $00
	inc  b                                           ; $515a: $04
	nop                                              ; $515b: $00
	inc  bc                                          ; $515c: $03
	add  e                                           ; $515d: $83
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	rst  $38                                         ; $5160: $ff
	adc  l                                           ; $5161: $8d
	nop                                              ; $5162: $00
	dec  b                                           ; $5163: $05
	cp   l                                           ; $5164: $bd
	cp   a                                           ; $5165: $bf
	ld   e, h                                        ; $5166: $5c
	ld   e, a                                        ; $5167: $5f
	ld   l, $2f                                      ; $5168: $2e $2f
	add  b                                           ; $516a: $80
	rla                                              ; $516b: $17
	add  b                                           ; $516c: $80
	dec  bc                                          ; $516d: $0b
	add  b                                           ; $516e: $80
	dec  b                                           ; $516f: $05
	add  b                                           ; $5170: $80
	ld   [bc], a                                     ; $5171: $02
	add  b                                           ; $5172: $80
	ld   bc, $1511                                   ; $5173: $01 $11 $15
	ld   [$f575], a                                  ; $5176: $ea $75 $f5
	ld   a, [hl-]                                    ; $5179: $3a
	ld   a, [$fd1d]                                  ; $517a: $fa $1d $fd
	adc  [hl]                                        ; $517d: $8e
	cp   $c7                                         ; $517e: $fe $c7
	rst  $38                                         ; $5180: $ff
	db   $e3                                         ; $5181: $e3
	rst  $38                                         ; $5182: $ff
	ld   [hl], c                                     ; $5183: $71
	ld   a, a                                        ; $5184: $7f
	ld   a, d                                        ; $5185: $7a
	add  b                                           ; $5186: $80
	add  b                                           ; $5187: $80
	ld   b, b                                        ; $5188: $40
	add  b                                           ; $5189: $80
	and  b                                           ; $518a: $a0
	add  b                                           ; $518b: $80
	ld   d, b                                        ; $518c: $50
	add  b                                           ; $518d: $80
	xor  b                                           ; $518e: $a8
	add  b                                           ; $518f: $80
	ld   d, h                                        ; $5190: $54
	add  b                                           ; $5191: $80
	xor  d                                           ; $5192: $aa
	add  b                                           ; $5193: $80
	push de                                          ; $5194: $d5
	adc  [hl]                                        ; $5195: $8e
	nop                                              ; $5196: $00
	add  b                                           ; $5197: $80
	dec  hl                                          ; $5198: $2b
	add  b                                           ; $5199: $80
	dec  d                                           ; $519a: $15
	add  b                                           ; $519b: $80
	ld   a, [bc]                                     ; $519c: $0a
	add  b                                           ; $519d: $80
	dec  b                                           ; $519e: $05
	add  b                                           ; $519f: $80
	ld   [bc], a                                     ; $51a0: $02
	add  b                                           ; $51a1: $80
	ld   bc, $0082                                   ; $51a2: $01 $82 $00
	add  b                                           ; $51a5: $80
	ld   a, [$fd80]                                  ; $51a6: $fa $80 $fd
	add  b                                           ; $51a9: $80
	cp   $80                                         ; $51aa: $fe $80
	ld   a, a                                        ; $51ac: $7f
	add  b                                           ; $51ad: $80
	cp   a                                           ; $51ae: $bf
	add  b                                           ; $51af: $80
	ld   e, a                                        ; $51b0: $5f
	add  b                                           ; $51b1: $80
	xor  a                                           ; $51b2: $af
	add  b                                           ; $51b3: $80
	ld   d, a                                        ; $51b4: $57
	add  b                                           ; $51b5: $80
	ld   d, b                                        ; $51b6: $50
	add  b                                           ; $51b7: $80
	jr   z, @-$7e                                    ; $51b8: $28 $80

	sub  h                                           ; $51ba: $94
	add  b                                           ; $51bb: $80
	ld   c, d                                        ; $51bc: $4a
	add  b                                           ; $51bd: $80
	and  l                                           ; $51be: $a5
	add  b                                           ; $51bf: $80
	jp   nc, $e980                                   ; $51c0: $d2 $80 $e9

	add  b                                           ; $51c3: $80
	db   $f4                                         ; $51c4: $f4
	adc  b                                           ; $51c5: $88
	nop                                              ; $51c6: $00
	add  b                                           ; $51c7: $80
	add  b                                           ; $51c8: $80
	add  b                                           ; $51c9: $80
	ld   b, b                                        ; $51ca: $40
	add  b                                           ; $51cb: $80
	and  b                                           ; $51cc: $a0
	add  b                                           ; $51cd: $80
	ld   [hl+], a                                    ; $51ce: $22
	add  b                                           ; $51cf: $80
	ld   de, $0880                                   ; $51d0: $11 $80 $08
	add  b                                           ; $51d3: $80
	inc  b                                           ; $51d4: $04
	add  b                                           ; $51d5: $80
	ld   [bc], a                                     ; $51d6: $02
	add  b                                           ; $51d7: $80
	ld   bc, $0082                                   ; $51d8: $01 $82 $00
	add  b                                           ; $51db: $80
	sub  $80                                         ; $51dc: $d6 $80
	ld   l, e                                        ; $51de: $6b
	add  b                                           ; $51df: $80
	or   l                                           ; $51e0: $b5
	add  b                                           ; $51e1: $80
	ld   e, d                                        ; $51e2: $5a
	add  b                                           ; $51e3: $80
	dec  l                                           ; $51e4: $2d
	add  b                                           ; $51e5: $80
	ld   d, $80                                      ; $51e6: $16 $80
	adc  e                                           ; $51e8: $8b
	add  b                                           ; $51e9: $80
	ld   b, l                                        ; $51ea: $45
	inc  bc                                          ; $51eb: $03
	ld   l, $2f                                      ; $51ec: $2e $2f
	ld   d, $17                                      ; $51ee: $16 $17
	add  b                                           ; $51f0: $80
	adc  e                                           ; $51f1: $8b
	add  b                                           ; $51f2: $80
	push bc                                          ; $51f3: $c5
	add  b                                           ; $51f4: $80
	ld   h, d                                        ; $51f5: $62
	add  b                                           ; $51f6: $80
	or   c                                           ; $51f7: $b1
	add  b                                           ; $51f8: $80
	ld   e, b                                        ; $51f9: $58
	add  b                                           ; $51fa: $80
	xor  h                                           ; $51fb: $ac
	ld   bc, $807f                                   ; $51fc: $01 $7f $80

Call_018_51ff:
	add  b                                           ; $51ff: $80
	ret  nz                                          ; $5200: $c0

	inc  c                                           ; $5201: $0c
	ld   h, b                                        ; $5202: $60
	ldh  [$b0], a                                    ; $5203: $e0 $b0
	ldh  a, [$d8]                                    ; $5205: $f0 $d8
	ld   hl, sp+$6c                                  ; $5207: $f8 $6c
	ld   a, h                                        ; $5209: $7c
	or   [hl]                                        ; $520a: $b6
	cp   [hl]                                        ; $520b: $be
	ld   e, e                                        ; $520c: $5b
	ld   e, a                                        ; $520d: $5f
	db   $ec                                         ; $520e: $ec
	add  d                                           ; $520f: $82
	nop                                              ; $5210: $00
	dec  bc                                          ; $5211: $0b
	jr   nz, @+$16                                   ; $5212: $20 $14

	ld   b, b                                        ; $5214: $40
	ld   c, h                                        ; $5215: $4c
	ld   b, b                                        ; $5216: $40
	ldh  [$d0], a                                    ; $5217: $e0 $d0
	ld   c, b                                        ; $5219: $48
	nop                                              ; $521a: $00
	sub  b                                           ; $521b: $90
	ret  nz                                          ; $521c: $c0

	ld   b, b                                        ; $521d: $40
	add  l                                           ; $521e: $85
	nop                                              ; $521f: $00
	nop                                              ; $5220: $00
	db   $10                                         ; $5221: $10
	add  c                                           ; $5222: $81
	nop                                              ; $5223: $00
	inc  b                                           ; $5224: $04
	jr   nc, jr_018_5227                             ; $5225: $30 $00

jr_018_5227:
	ld   [$2800], sp                                 ; $5227: $08 $00 $28
	adc  e                                           ; $522a: $8b
	nop                                              ; $522b: $00
	add  b                                           ; $522c: $80
	ld   bc, $8403                                   ; $522d: $01 $03 $84
	db   $f4                                         ; $5230: $f4
	jr   nc, jr_018_52a3                             ; $5231: $30 $70

	add  b                                           ; $5233: $80
	ld   [hl], c                                     ; $5234: $71
	dec  c                                           ; $5235: $0d
	ld   d, c                                        ; $5236: $51
	ld   [hl], c                                     ; $5237: $71
	ld   [de], a                                     ; $5238: $12
	ld   [bc], a                                     ; $5239: $02
	cp   e                                           ; $523a: $bb
	jp   $0478                                       ; $523b: $c3 $78 $04


	sbc  h                                           ; $523e: $9c
	and  $7e                                         ; $523f: $e6 $7e
	nop                                              ; $5241: $00
	ld   h, b                                        ; $5242: $60
	ld   a, a                                        ; $5243: $7f
	add  b                                           ; $5244: $80
	rst  $38                                         ; $5245: $ff
	db   $10                                         ; $5246: $10
	rst  $28                                         ; $5247: $ef
	rst  $38                                         ; $5248: $ff
	rst  $30                                         ; $5249: $f7
	rst  $38                                         ; $524a: $ff
	dec  sp                                          ; $524b: $3b
	ccf                                              ; $524c: $3f
	call c, Call_018_471f                            ; $524d: $dc $1f $47
	rlca                                             ; $5250: $07
	ret  c                                           ; $5251: $d8

	nop                                              ; $5252: $00
	ld   [$4000], sp                                 ; $5253: $08 $00 $40
	add  b                                           ; $5256: $80
	sub  b                                           ; $5257: $90
	add  b                                           ; $5258: $80
	and  b                                           ; $5259: $a0
	ld   [bc], a                                     ; $525a: $02
	db   $ec                                         ; $525b: $ec
	sbc  h                                           ; $525c: $9c
	adc  a                                           ; $525d: $8f
	add  b                                           ; $525e: $80
	jp   $3f02                                       ; $525f: $c3 $02 $3f


	rst  $38                                         ; $5262: $ff
	ccf                                              ; $5263: $3f
	adc  d                                           ; $5264: $8a
	nop                                              ; $5265: $00
	add  d                                           ; $5266: $82
	add  b                                           ; $5267: $80
	add  e                                           ; $5268: $83
	nop                                              ; $5269: $00
	ld   [bc], a                                     ; $526a: $02
	ld   [hl], b                                     ; $526b: $70
	ld   c, b                                        ; $526c: $48
	ret  nz                                          ; $526d: $c0

	add  c                                           ; $526e: $81
	db   $e4                                         ; $526f: $e4
	dec  b                                           ; $5270: $05
	db   $fc                                         ; $5271: $fc
	ldh  [$98], a                                    ; $5272: $e0 $98
	add  [hl]                                        ; $5274: $86
	dec  e                                           ; $5275: $1d
	inc  bc                                          ; $5276: $03
	add  b                                           ; $5277: $80
	rlca                                             ; $5278: $07
	ld   bc, $0706                                   ; $5279: $01 $06 $07
	add  b                                           ; $527c: $80
	ld   bc, $0301                                   ; $527d: $01 $01 $03
	ld   [bc], a                                     ; $5280: $02
	add  d                                           ; $5281: $82
	ld   bc, $0080                                   ; $5282: $01 $80 $00
	ld   bc, $e718                                   ; $5285: $01 $18 $e7
	add  e                                           ; $5288: $83
	di                                               ; $5289: $f3
	inc  bc                                          ; $528a: $03
	ldh  a, [$fc]                                    ; $528b: $f0 $fc
	inc  bc                                          ; $528d: $03
	adc  a                                           ; $528e: $8f
	add  c                                           ; $528f: $81
	di                                               ; $5290: $f3
	dec  bc                                          ; $5291: $0b
	or   e                                           ; $5292: $b3
	ldh  a, [c]                                      ; $5293: $f2
	ld   e, l                                        ; $5294: $5d
	ld   a, e                                        ; $5295: $7b
	jr   nz, @-$42                                   ; $5296: $20 $bc

	cp   b                                           ; $5298: $b8
	ccf                                              ; $5299: $3f
	inc  a                                           ; $529a: $3c
	cp   a                                           ; $529b: $bf
	rst  $38                                         ; $529c: $ff
	ld   a, a                                        ; $529d: $7f
	add  b                                           ; $529e: $80
	ccf                                              ; $529f: $3f
	dec  b                                           ; $52a0: $05
	ld   e, a                                        ; $52a1: $5f
	rra                                              ; $52a2: $1f

jr_018_52a3:
	sbc  a                                           ; $52a3: $9f
	rra                                              ; $52a4: $1f
	ccf                                              ; $52a5: $3f
	rst  $38                                         ; $52a6: $ff
	add  b                                           ; $52a7: $80
	ld   hl, sp+$00                                  ; $52a8: $f8 $00
	nop                                              ; $52aa: $00
	add  b                                           ; $52ab: $80
	rlca                                             ; $52ac: $07
	inc  bc                                          ; $52ad: $03
	rst  $38                                         ; $52ae: $ff
	ccf                                              ; $52af: $3f
	cp   $de                                         ; $52b0: $fe $de
	add  b                                           ; $52b2: $80
	ld   sp, hl                                      ; $52b3: $f9
	inc  b                                           ; $52b4: $04
	rst  $20                                         ; $52b5: $e7
	rst  $10                                         ; $52b6: $d7
	rst  JumpTable                                         ; $52b7: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52b8: $cf
	ret  nz                                          ; $52b9: $c0

	add  c                                           ; $52ba: $81
	nop                                              ; $52bb: $00
	add  b                                           ; $52bc: $80
	and  b                                           ; $52bd: $a0
	add  b                                           ; $52be: $80
	ret  z                                           ; $52bf: $c8

	add  b                                           ; $52c0: $80
	inc  l                                           ; $52c1: $2c
	add  b                                           ; $52c2: $80
	db   $d3                                         ; $52c3: $d3
	add  b                                           ; $52c4: $80
	db   $ec                                         ; $52c5: $ec
	add  b                                           ; $52c6: $80
	di                                               ; $52c7: $f3
	adc  d                                           ; $52c8: $8a
	nop                                              ; $52c9: $00
	add  b                                           ; $52ca: $80
	add  b                                           ; $52cb: $80
	add  c                                           ; $52cc: $81
	nop                                              ; $52cd: $00
	ld   bc, $0204                                   ; $52ce: $01 $04 $02
	add  b                                           ; $52d1: $80
	ld   [$0c06], sp                                 ; $52d2: $08 $06 $0c
	dec  c                                           ; $52d5: $0d
	dec  bc                                          ; $52d6: $0b
	inc  c                                           ; $52d7: $0c
	dec  bc                                          ; $52d8: $0b
	ld   [$8104], sp                                 ; $52d9: $08 $04 $81
	ld   b, $01                                      ; $52dc: $06 $01
	ld   a, c                                        ; $52de: $79
	ld   h, [hl]                                     ; $52df: $66
	add  d                                           ; $52e0: $82
	and  $80                                         ; $52e1: $e6 $80
	ld   h, [hl]                                     ; $52e3: $66
	inc  bc                                          ; $52e4: $03
	ld   a, [hl]                                     ; $52e5: $7e
	ld   h, b                                        ; $52e6: $60
	inc  e                                           ; $52e7: $1c
	sub  d                                           ; $52e8: $92
	add  b                                           ; $52e9: $80
	or   d                                           ; $52ea: $b2
	inc  bc                                          ; $52eb: $03
	ld   [de], a                                     ; $52ec: $12
	ld   e, d                                        ; $52ed: $5a
	call nz, $8002                                   ; $52ee: $c4 $02 $80
	inc  bc                                          ; $52f1: $03
	add  b                                           ; $52f2: $80
	rlca                                             ; $52f3: $07
	add  b                                           ; $52f4: $80
	ld   b, $82                                      ; $52f5: $06 $82
	ld   c, $82                                      ; $52f7: $0e $82
	ld   e, $02                                      ; $52f9: $1e $02
	call z, Call_018_56f2                            ; $52fb: $cc $f2 $56
	add  d                                           ; $52fe: $82
	halt                                             ; $52ff: $76
	ld   [bc], a                                     ; $5300: $02
	ld   [hl], h                                     ; $5301: $74
	sbc  h                                           ; $5302: $9c
	add  b                                           ; $5303: $80
	add  b                                           ; $5304: $80

jr_018_5305:
	nop                                              ; $5305: $00
	add  b                                           ; $5306: $80
	add  c                                           ; $5307: $81
	ld   [bc], a                                     ; $5308: $02
	or   c                                           ; $5309: $b1
	cp   a                                           ; $530a: $bf
	or   c                                           ; $530b: $b1
	add  c                                           ; $530c: $81
	ccf                                              ; $530d: $3f
	inc  b                                           ; $530e: $04
	cp   [hl]                                        ; $530f: $be
	ld   a, $06                                      ; $5310: $3e $06
	add  $c1                                         ; $5312: $c6 $c1
	add  b                                           ; $5314: $80
	ld   sp, hl                                      ; $5315: $f9
	ld   [$6c7d], sp                                 ; $5316: $08 $7d $6c
	inc  d                                           ; $5319: $14
	ld   [$ba0e], sp                                 ; $531a: $08 $0e $ba
	cp   a                                           ; $531d: $bf
	ld   a, e                                        ; $531e: $7b
	ld   a, a                                        ; $531f: $7f
	add  b                                           ; $5320: $80
	rst  $38                                         ; $5321: $ff
	nop                                              ; $5322: $00
	db   $fd                                         ; $5323: $fd

jr_018_5324:
	add  e                                           ; $5324: $83
	rst  $38                                         ; $5325: $ff
	ld   bc, $fffe                                   ; $5326: $01 $fe $ff
	add  b                                           ; $5329: $80
	ccf                                              ; $532a: $3f
	inc  bc                                          ; $532b: $03
	add  b                                           ; $532c: $80
	ld   a, h                                        ; $532d: $7c
	cp   h                                           ; $532e: $bc
	cp   a                                           ; $532f: $bf
	add  b                                           ; $5330: $80
	adc  a                                           ; $5331: $8f
	add  b                                           ; $5332: $80
	jp   $e080                                       ; $5333: $c3 $80 $e0


	add  b                                           ; $5336: $80
	pop  af                                          ; $5337: $f1
	add  b                                           ; $5338: $80
	rst  $38                                         ; $5339: $ff
	ld   [bc], a                                     ; $533a: $02
	ccf                                              ; $533b: $3f
	rst  $38                                         ; $533c: $ff
	ccf                                              ; $533d: $3f
	add  b                                           ; $533e: $80
	ret  nz                                          ; $533f: $c0

	add  b                                           ; $5340: $80
	db   $10                                         ; $5341: $10
	add  b                                           ; $5342: $80
	ldh  a, [$82]                                    ; $5343: $f0 $82
	ld   hl, sp-$7d                                  ; $5345: $f8 $83
	db   $fc                                         ; $5347: $fc
	ld   bc, $0ff3                                   ; $5348: $01 $f3 $0f
	add  b                                           ; $534b: $80
	rlca                                             ; $534c: $07
	add  b                                           ; $534d: $80
	ld   [bc], a                                     ; $534e: $02
	add  b                                           ; $534f: $80
	nop                                              ; $5350: $00
	add  b                                           ; $5351: $80
	ld   bc, $0084                                   ; $5352: $01 $84 $00
	inc  b                                           ; $5355: $04
	sbc  h                                           ; $5356: $9c
	ld   e, e                                        ; $5357: $5b
	reti                                             ; $5358: $d9


	add  hl, de                                      ; $5359: $19
	jp   hl                                          ; $535a: $e9


	add  e                                           ; $535b: $83
	xor  l                                           ; $535c: $ad
	nop                                              ; $535d: $00
	or   h                                           ; $535e: $b4
	add  b                                           ; $535f: $80
	sub  [hl]                                        ; $5360: $96
	add  c                                           ; $5361: $81
	sub  $00                                         ; $5362: $d6 $00
	inc  e                                           ; $5364: $1c
	add  c                                           ; $5365: $81
	inc  a                                           ; $5366: $3c
	rrca                                             ; $5367: $0f
	ld   a, e                                        ; $5368: $7b
	ld   a, b                                        ; $5369: $78
	jr   c, jr_018_5324                              ; $536a: $38 $b8

	cp   e                                           ; $536c: $bb
	cp   b                                           ; $536d: $b8
	cp   a                                           ; $536e: $bf
	cp   [hl]                                        ; $536f: $be
	sbc  [hl]                                        ; $5370: $9e
	sbc  $dc                                         ; $5371: $de $dc
	db   $dd                                         ; $5373: $dd
	ldh  a, [$3f]                                    ; $5374: $f0 $3f
	ld   a, $3f                                      ; $5376: $3e $3f
	add  b                                           ; $5378: $80
	ld   a, a                                        ; $5379: $7f
	dec  c                                           ; $537a: $0d
	ld   l, a                                        ; $537b: $6f
	ld   a, a                                        ; $537c: $7f
	ccf                                              ; $537d: $3f
	ld   a, $de                                      ; $537e: $3e $de
	nop                                              ; $5380: $00
	ldh  [rP1], a                                    ; $5381: $e0 $00
	jr   nz, jr_018_5305                             ; $5383: $20 $80

	inc  b                                           ; $5385: $04
	add  [hl]                                        ; $5386: $86
	call nz, $80c6                                   ; $5387: $c4 $c6 $80
	jp   z, $8c80                                    ; $538a: $ca $80 $8c

	add  b                                           ; $538d: $80
	dec  e                                           ; $538e: $1d
	ld   bc, $1b0b                                   ; $538f: $01 $0b $1b
	add  b                                           ; $5392: $80
	add  hl, de                                      ; $5393: $19
	dec  b                                           ; $5394: $05
	ld   d, $36                                      ; $5395: $16 $36
	xor  $df                                         ; $5397: $ee $df
	pop  hl                                          ; $5399: $e1
	ldh  [$80], a                                    ; $539a: $e0 $80
	ld   sp, hl                                      ; $539c: $f9
	inc  bc                                          ; $539d: $03
	db   $fc                                         ; $539e: $fc
	db   $fd                                         ; $539f: $fd
	db   $fc                                         ; $53a0: $fc
	db   $fd                                         ; $53a1: $fd
	add  b                                           ; $53a2: $80
	cp   $80                                         ; $53a3: $fe $80
	rst  $38                                         ; $53a5: $ff
	add  b                                           ; $53a6: $80
	db   $fd                                         ; $53a7: $fd
	dec  bc                                          ; $53a8: $0b
	db   $10                                         ; $53a9: $10
	rst  JumpTable                                         ; $53aa: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53ab: $cf
	ccf                                              ; $53ac: $3f
	rst  $38                                         ; $53ad: $ff
	ld   e, $de                                      ; $53ae: $1e $de
	rst  ToBoot                                         ; $53b0: $c7
	add  a                                           ; $53b1: $87
	pop  bc                                          ; $53b2: $c1
	add  c                                           ; $53b3: $81
	nop                                              ; $53b4: $00
	add  b                                           ; $53b5: $80
	ldh  a, [rSC]                                    ; $53b6: $f0 $02
	add  [hl]                                        ; $53b8: $86
	cp   $78                                         ; $53b9: $fe $78
	add  h                                           ; $53bb: $84
	db   $fc                                         ; $53bc: $fc
	add  b                                           ; $53bd: $80
	db   $f4                                         ; $53be: $f4
	add  b                                           ; $53bf: $80
	cp   $80                                         ; $53c0: $fe $80
	ld   e, $03                                      ; $53c2: $1e $03
	ld   bc, $0200                                   ; $53c4: $01 $00 $02
	inc  bc                                          ; $53c7: $03
	adc  d                                           ; $53c8: $8a
	nop                                              ; $53c9: $00
	nop                                              ; $53ca: $00
	add  b                                           ; $53cb: $80
	add  b                                           ; $53cc: $80
	nop                                              ; $53cd: $00
	nop                                              ; $53ce: $00
	ei                                               ; $53cf: $fb
	add  b                                           ; $53d0: $80
	ld   l, d                                        ; $53d1: $6a
	nop                                              ; $53d2: $00
	ld   l, e                                        ; $53d3: $6b
	add  b                                           ; $53d4: $80
	dec  hl                                          ; $53d5: $2b
	nop                                              ; $53d6: $00
	dec  l                                           ; $53d7: $2d
	add  c                                           ; $53d8: $81
	dec  [hl]                                        ; $53d9: $35
	rlca                                             ; $53da: $07
	ld   d, $1a                                      ; $53db: $16 $1a
	dec  de                                          ; $53dd: $1b
	add  hl, de                                      ; $53de: $19
	add  hl, bc                                      ; $53df: $09
	inc  c                                           ; $53e0: $0c
	adc  [hl]                                        ; $53e1: $8e
	ld   l, l                                        ; $53e2: $6d
	add  b                                           ; $53e3: $80
	jr   z, jr_018_53ed                              ; $53e4: $28 $07

	jr   nz, jr_018_541f                             ; $53e6: $20 $37

	inc  d                                           ; $53e8: $14
	sbc  e                                           ; $53e9: $9b
	adc  l                                           ; $53ea: $8d
	db   $ed                                         ; $53eb: $ed
	push hl                                          ; $53ec: $e5

jr_018_53ed:
	db   $fd                                         ; $53ed: $fd
	add  b                                           ; $53ee: $80
	ld   a, l                                        ; $53ef: $7d
	add  b                                           ; $53f0: $80
	sbc  e                                           ; $53f1: $9b
	inc  bc                                          ; $53f2: $03
	sbc  b                                           ; $53f3: $98
	ret  c                                           ; $53f4: $d8

	sub  d                                           ; $53f5: $92
	jp   nc, $3380                                   ; $53f6: $d2 $80 $33

	nop                                              ; $53f9: $00
	ld   h, $81                                      ; $53fa: $26 $81
	and  [hl]                                        ; $53fc: $a6
	inc  bc                                          ; $53fd: $03

jr_018_53fe:
	and  h                                           ; $53fe: $a4
	dec  h                                           ; $53ff: $25
	ld   d, d                                        ; $5400: $52
	ld   d, e                                        ; $5401: $53
	add  b                                           ; $5402: $80
	ld   e, a                                        ; $5403: $5f
	ld   [bc], a                                     ; $5404: $02
	rlca                                             ; $5405: $07
	scf                                              ; $5406: $37
	ccf                                              ; $5407: $3f
	add  c                                           ; $5408: $81
	ld   l, a                                        ; $5409: $6f
	nop                                              ; $540a: $00
	ld   a, a                                        ; $540b: $7f
	add  c                                           ; $540c: $81
	rst  JumpTable                                         ; $540d: $df
	inc  bc                                          ; $540e: $03
	rst  $38                                         ; $540f: $ff
	cp   a                                           ; $5410: $bf
	ccf                                              ; $5411: $3f
	cp   a                                           ; $5412: $bf
	add  b                                           ; $5413: $80
	ld   a, h                                        ; $5414: $7c
	dec  b                                           ; $5415: $05
	jr   nc, jr_018_5457                             ; $5416: $30 $3f

	call $f1c3                                       ; $5418: $cd $c3 $f1
	ldh  a, [$80]                                    ; $541b: $f0 $80
	ld   hl, sp+$05                                  ; $541d: $f8 $05

jr_018_541f:
	or   $fe                                         ; $541f: $f6 $fe
	jp   hl                                          ; $5421: $e9


	rst  $38                                         ; $5422: $ff
	cp   $ff                                         ; $5423: $fe $ff
	add  b                                           ; $5425: $80
	ld   a, a                                        ; $5426: $7f
	inc  b                                           ; $5427: $04
	rst  JumpTable                                         ; $5428: $df
	rst  $38                                         ; $5429: $ff
	rrca                                             ; $542a: $0f
	rst  $30                                         ; $542b: $f7
	rst  ToBoot                                         ; $542c: $c7
	add  b                                           ; $542d: $80
	ld   a, a                                        ; $542e: $7f
	add  b                                           ; $542f: $80
	rrca                                             ; $5430: $0f
	add  hl, bc                                      ; $5431: $09
	nop                                              ; $5432: $00
	add  b                                           ; $5433: $80
	add  c                                           ; $5434: $81
	ld   h, c                                        ; $5435: $61
	pop  hl                                          ; $5436: $e1
	sbc  l                                           ; $5437: $9d
	db   $fc                                         ; $5438: $fc
	jr   nz, jr_018_53fe                             ; $5439: $20 $c3

	ld   [bc], a                                     ; $543b: $02
	add  c                                           ; $543c: $81
	db   $fd                                         ; $543d: $fd
	inc  b                                           ; $543e: $04
	db   $fc                                         ; $543f: $fc
	jr   @-$26                                       ; $5440: $18 $d8

	ld   a, [hl+]                                    ; $5442: $2a
	ld   [$0480], a                                  ; $5443: $ea $80 $04
	inc  b                                           ; $5446: $04
	ld   b, b                                        ; $5447: $40
	ld   c, a                                        ; $5448: $4f
	nop                                              ; $5449: $00
	ld   c, a                                        ; $544a: $4f
	add  b                                           ; $544b: $80
	add  b                                           ; $544c: $80
	ret  nz                                          ; $544d: $c0

	ld   bc, $c000                                   ; $544e: $01 $00 $c0
	add  b                                           ; $5451: $80
	add  b                                           ; $5452: $80
	add  h                                           ; $5453: $84
	nop                                              ; $5454: $00
	inc  bc                                          ; $5455: $03
	add  b                                           ; $5456: $80

jr_018_5457:
	nop                                              ; $5457: $00
	add  a                                           ; $5458: $87
	rlca                                             ; $5459: $07
	add  b                                           ; $545a: $80
	inc  bc                                          ; $545b: $03
	adc  c                                           ; $545c: $89
	nop                                              ; $545d: $00
	inc  b                                           ; $545e: $04
	ld   bc, $63e2                                   ; $545f: $01 $e2 $63
	ld   a, d                                        ; $5462: $7a
	ld   a, [$f480]                                  ; $5463: $fa $80 $f4
	add  b                                           ; $5466: $80
	inc  bc                                          ; $5467: $03
	add  b                                           ; $5468: $80
	scf                                              ; $5469: $37
	add  b                                           ; $546a: $80
	rrca                                             ; $546b: $0f
	add  b                                           ; $546c: $80
	rra                                              ; $546d: $1f
	ld   [de], a                                     ; $546e: $12
	ld   l, a                                        ; $546f: $6f
	rst  $28                                         ; $5470: $ef
	adc  $4e                                         ; $5471: $ce $4e
	ld   b, c                                        ; $5473: $41
	ld   h, c                                        ; $5474: $61
	cpl                                              ; $5475: $2f
	xor  a                                           ; $5476: $af
	add  a                                           ; $5477: $87
	or   a                                           ; $5478: $b7
	nop                                              ; $5479: $00
	ret  c                                           ; $547a: $d8

	adc  b                                           ; $547b: $88
	rst  $20                                         ; $547c: $e7
	rst  ToBoot                                         ; $547d: $c7
	ld   hl, sp-$20                                  ; $547e: $f8 $e0
	db   $fc                                         ; $5480: $fc
	cp   $80                                         ; $5481: $fe $80
	ei                                               ; $5483: $fb
	nop                                              ; $5484: $00
	ld   a, [$fb80]                                  ; $5485: $fa $80 $fb

jr_018_5488:
	add  b                                           ; $5488: $80
	inc  c                                           ; $5489: $0c
	inc  bc                                          ; $548a: $03
	rlca                                             ; $548b: $07
	ld   [hl], a                                     ; $548c: $77
	rlca                                             ; $548d: $07
	ld   [hl], a                                     ; $548e: $77
	add  b                                           ; $548f: $80
	rrca                                             ; $5490: $0f
	add  b                                           ; $5491: $80
	rst  $38                                         ; $5492: $ff
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	add  c                                           ; $5495: $81
	cp   a                                           ; $5496: $bf
	ld   bc, $bf3f                                   ; $5497: $01 $3f $bf
	add  b                                           ; $549a: $80
	ld   a, a                                        ; $549b: $7f
	nop                                              ; $549c: $00
	cp   a                                           ; $549d: $bf
	add  e                                           ; $549e: $83
	rst  $38                                         ; $549f: $ff
	ld   [bc], a                                     ; $54a0: $02
	cp   a                                           ; $54a1: $bf
	rst  $38                                         ; $54a2: $ff
	inc  a                                           ; $54a3: $3c
	add  c                                           ; $54a4: $81
	rst  $38                                         ; $54a5: $ff
	nop                                              ; $54a6: $00
	db   $fc                                         ; $54a7: $fc
	add  h                                           ; $54a8: $84
	rst  $38                                         ; $54a9: $ff
	add  d                                           ; $54aa: $82
	cp   $00                                         ; $54ab: $fe $00
	db   $fc                                         ; $54ad: $fc
	pop  de                                          ; $54ae: $d1
	ld   bc, $009a                                   ; $54af: $01 $9a $00
	ld   [bc], a                                     ; $54b2: $02
	inc  bc                                          ; $54b3: $03
	nop                                              ; $54b4: $00
	inc  bc                                          ; $54b5: $03
	add  c                                           ; $54b6: $81
	nop                                              ; $54b7: $00
	inc  hl                                          ; $54b8: $23
	rrca                                             ; $54b9: $0f
	nop                                              ; $54ba: $00
	rra                                              ; $54bb: $1f
	rrca                                             ; $54bc: $0f
	ccf                                              ; $54bd: $3f
	rra                                              ; $54be: $1f
	ld   l, [hl]                                     ; $54bf: $6e
	ld   e, $11                                      ; $54c0: $1e $11
	add  hl, de                                      ; $54c2: $19
	dec  bc                                          ; $54c3: $0b
	rlca                                             ; $54c4: $07
	dec  e                                           ; $54c5: $1d
	rlca                                             ; $54c6: $07
	ld   h, e                                        ; $54c7: $63
	inc  bc                                          ; $54c8: $03
	ld   [de], a                                     ; $54c9: $12
	inc  bc                                          ; $54ca: $03
	ld   sp, $7901                                   ; $54cb: $31 $01 $79
	db   $10                                         ; $54ce: $10
	rst  $38                                         ; $54cf: $ff
	ld   a, b                                        ; $54d0: $78
	cp   h                                           ; $54d1: $bc
	ld   a, h                                        ; $54d2: $7c
	ld   e, b                                        ; $54d3: $58
	ld   a, b                                        ; $54d4: $78
	daa                                              ; $54d5: $27
	ld   h, $2e                                      ; $54d6: $26 $2e
	ld   e, $7f                                      ; $54d8: $1e $7f
	rra                                              ; $54da: $1f
	call nc, $801c                                   ; $54db: $d4 $1c $80
	dec  bc                                          ; $54de: $0b
	rlca                                             ; $54df: $07
	ret                                              ; $54e0: $c9


	rlca                                             ; $54e1: $07
	ld   a, a                                        ; $54e2: $7f
	rlca                                             ; $54e3: $07
	ld   [hl+], a                                    ; $54e4: $22
	inc  bc                                          ; $54e5: $03
	dec  de                                          ; $54e6: $1b
	inc  bc                                          ; $54e7: $03
	add  b                                           ; $54e8: $80
	ld   bc, $0c02                                   ; $54e9: $01 $02 $0c
	nop                                              ; $54ec: $00
	ld   b, $81                                      ; $54ed: $06 $81
	nop                                              ; $54ef: $00
	nop                                              ; $54f0: $00
	inc  bc                                          ; $54f1: $03
	add  c                                           ; $54f2: $81
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	ld   bc, $0095                                   ; $54f5: $01 $95 $00
	inc  c                                           ; $54f8: $0c
	inc  bc                                          ; $54f9: $03
	nop                                              ; $54fa: $00
	inc  c                                           ; $54fb: $0c
	nop                                              ; $54fc: $00
	inc  a                                           ; $54fd: $3c
	rrca                                             ; $54fe: $0f
	di                                               ; $54ff: $f3
	ccf                                              ; $5500: $3f
	rrca                                             ; $5501: $0f
	nop                                              ; $5502: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5503: $cf
	nop                                              ; $5504: $00
	jr   nc, jr_018_5488                             ; $5505: $30 $81

	nop                                              ; $5507: $00
	ld   b, $80                                      ; $5508: $06 $80
	nop                                              ; $550a: $00
	ret  nz                                          ; $550b: $c0

	add  b                                           ; $550c: $80
	ld   hl, $c300                                   ; $550d: $21 $00 $c3
	add  b                                           ; $5510: $80
	pop  bc                                          ; $5511: $c1
	ld   bc, $f3c0                                   ; $5512: $01 $c0 $f3
	add  c                                           ; $5515: $81
	ldh  [rTAC], a                                   ; $5516: $e0 $07
	db   $e3                                         ; $5518: $e3
	pop  hl                                          ; $5519: $e1
	ld   bc, $6300                                   ; $551a: $01 $00 $63
	ldh  [$b8], a                                    ; $551d: $e0 $b8
	ldh  a, [$80]                                    ; $551f: $f0 $80
	ld   [hl], b                                     ; $5521: $70
	ld   bc, $785c                                   ; $5522: $01 $5c $78
	add  b                                           ; $5525: $80
	jr   c, jr_018_5537                              ; $5526: $38 $0f

	adc  [hl]                                        ; $5528: $8e
	db   $e3                                         ; $5529: $e3
	ld   sp, hl                                      ; $552a: $f9
	pop  af                                          ; $552b: $f1
	or   c                                           ; $552c: $b1
	pop  af                                          ; $552d: $f1
	ld   a, h                                        ; $552e: $7c
	ld   a, b                                        ; $552f: $78
	jr   @+$3a                                       ; $5530: $18 $38

	ld   l, $3c                                      ; $5532: $2e $3c
	sbc  h                                           ; $5534: $9c
	inc  e                                           ; $5535: $1c
	rst  $10                                         ; $5536: $d7

jr_018_5537:
	ld   e, $80                                      ; $5537: $1e $80
	ld   c, $01                                      ; $5539: $0e $01
	ld   l, c                                        ; $553b: $69
	dec  c                                           ; $553c: $0d
	add  b                                           ; $553d: $80
	inc  b                                           ; $553e: $04
	ld   a, [bc]                                     ; $553f: $0a
	dec  [hl]                                        ; $5540: $35
	ld   bc, $070f                                   ; $5541: $01 $0f $07
	ld   a, a                                        ; $5544: $7f
	rra                                              ; $5545: $1f
	cp   h                                           ; $5546: $bc
	ccf                                              ; $5547: $3f

jr_018_5548:
	jp   $f0cf                                       ; $5548: $c3 $cf $f0


	add  c                                           ; $554b: $81
	nop                                              ; $554c: $00
	inc  b                                           ; $554d: $04
	inc  bc                                          ; $554e: $03
	nop                                              ; $554f: $00
	ld   b, $03                                      ; $5550: $06 $03
	rrca                                             ; $5552: $0f
	add  b                                           ; $5553: $80
	dec  b                                           ; $5554: $05
	ld   b, $01                                      ; $5555: $06 $01
	stop                                             ; $5557: $10 $00
	jr   nz, @+$12                                   ; $5559: $20 $10

	ld   d, b                                        ; $555b: $50
	inc  [hl]                                        ; $555c: $34
	add  b                                           ; $555d: $80
	db   $10                                         ; $555e: $10
	ld   [bc], a                                     ; $555f: $02
	jp   nc, $2d0c                                   ; $5560: $d2 $0c $2d

	add  b                                           ; $5563: $80
	ld   a, [de]                                     ; $5564: $1a
	nop                                              ; $5565: $00
	rla                                              ; $5566: $17

jr_018_5567:
	add  b                                           ; $5567: $80
	inc  de                                          ; $5568: $13
	ld   [$91d1], sp                                 ; $5569: $08 $d1 $91
	ret  nc                                          ; $556c: $d0

	ld   d, b                                        ; $556d: $50
	ld   l, b                                        ; $556e: $68
	nop                                              ; $556f: $00
	ld   [$1400], sp                                 ; $5570: $08 $00 $14
	add  e                                           ; $5573: $83
	ld   [$0902], sp                                 ; $5574: $08 $02 $09
	ld   [$810a], sp                                 ; $5577: $08 $0a $81
	add  hl, bc                                      ; $557a: $09
	inc  bc                                          ; $557b: $03
	add  hl, hl                                      ; $557c: $29
	add  hl, bc                                      ; $557d: $09

jr_018_557e:
	jp   hl                                          ; $557e: $e9


	ld   hl, $f581                                   ; $557f: $21 $81 $f5
	nop                                              ; $5582: $00
	db   $f4                                         ; $5583: $f4
	add  d                                           ; $5584: $82
	cp   $04                                         ; $5585: $fe $04
	ld   a, a                                        ; $5587: $7f
	rst  $38                                         ; $5588: $ff
	ccf                                              ; $5589: $3f
	ld   a, a                                        ; $558a: $7f
	ccf                                              ; $558b: $3f
	adc  c                                           ; $558c: $89
	nop                                              ; $558d: $00
	rlca                                             ; $558e: $07
	add  b                                           ; $558f: $80
	nop                                              ; $5590: $00
	ld   bc, $6300                                   ; $5591: $01 $00 $63
	nop                                              ; $5594: $00
	ld   a, [hl]                                     ; $5595: $7e
	ld   h, b                                        ; $5596: $60
	add  b                                           ; $5597: $80
	ld   a, b                                        ; $5598: $78
	inc  bc                                          ; $5599: $03
	ld   a, [hl]                                     ; $559a: $7e
	ld   a, h                                        ; $559b: $7c
	rst  $38                                         ; $559c: $ff
	cp   $85                                         ; $559d: $fe $85
	rst  $38                                         ; $559f: $ff
	adc  e                                           ; $55a0: $8b
	nop                                              ; $55a1: $00
	dec  de                                          ; $55a2: $1b
	ret  nz                                          ; $55a3: $c0

	nop                                              ; $55a4: $00
	jr   nz, jr_018_5567                             ; $55a5: $20 $c0

	ld   d, b                                        ; $55a7: $50
	ld   h, b                                        ; $55a8: $60
	ld   l, b                                        ; $55a9: $68

jr_018_55aa:
	nop                                              ; $55aa: $00
	call nz, $b838                                   ; $55ab: $c4 $38 $b8
	jr   c, jr_018_5548                              ; $55ae: $38 $98

	jr   jr_018_55aa                                 ; $55b0: $18 $f8

	add  b                                           ; $55b2: $80
	ret  nc                                          ; $55b3: $d0

	ret  z                                           ; $55b4: $c8

	ld   a, [$fcec]                                  ; $55b5: $fa $ec $fc
	db   $f4                                         ; $55b8: $f4
	push hl                                          ; $55b9: $e5
	or   $16                                         ; $55ba: $f6 $16
	ldh  a, [c]                                      ; $55bc: $f2
	cp   $0c                                         ; $55bd: $fe $0c
	add  b                                           ; $55bf: $80
	ld   a, $80                                      ; $55c0: $3e $80
	rst  JumpTable                                         ; $55c2: $df
	add  b                                           ; $55c3: $80
	inc  bc                                          ; $55c4: $03
	nop                                              ; $55c5: $00
	rst  $38                                         ; $55c6: $ff
	sbc  c                                           ; $55c7: $99
	nop                                              ; $55c8: $00
	dec  c                                           ; $55c9: $0d
	add  b                                           ; $55ca: $80
	nop                                              ; $55cb: $00
	ret  nz                                          ; $55cc: $c0

	add  b                                           ; $55cd: $80
	ldh  [$c0], a                                    ; $55ce: $e0 $c0
	ldh  a, [$e0]                                    ; $55d0: $f0 $e0
	ld   c, b                                        ; $55d2: $48
	ld   b, b                                        ; $55d3: $40
	ld   d, h                                        ; $55d4: $54
	ld   e, b                                        ; $55d5: $58
	jp   c, $80dc                                    ; $55d6: $da $dc $80

	cp   h                                           ; $55d9: $bc
	inc  c                                           ; $55da: $0c
	ld   l, l                                        ; $55db: $6d
	ld   a, [hl]                                     ; $55dc: $7e
	sbc  $fe                                         ; $55dd: $de $fe
	ld   b, c                                        ; $55df: $41
	nop                                              ; $55e0: $00
	ld   a, [hl]                                     ; $55e1: $7e
	nop                                              ; $55e2: $00
	rrca                                             ; $55e3: $0f
	ld   a, [hl]                                     ; $55e4: $7e
	ret  nz                                          ; $55e5: $c0

	cp   a                                           ; $55e6: $bf
	adc  a                                           ; $55e7: $8f
	add  c                                           ; $55e8: $81
	cp   a                                           ; $55e9: $bf
	inc  b                                           ; $55ea: $04
	ld   hl, sp-$68                                  ; $55eb: $f8 $98
	nop                                              ; $55ed: $00
	add  b                                           ; $55ee: $80
	jr   nz, jr_018_557e                             ; $55ef: $20 $8d

	nop                                              ; $55f1: $00
	inc  b                                           ; $55f2: $04
	pop  bc                                          ; $55f3: $c1
	add  b                                           ; $55f4: $80
	add  c                                           ; $55f5: $81
	nop                                              ; $55f6: $00
	ld   b, b                                        ; $55f7: $40
	add  l                                           ; $55f8: $85
	nop                                              ; $55f9: $00
	inc  b                                           ; $55fa: $04
	ret  nz                                          ; $55fb: $c0

jr_018_55fc:
	add  b                                           ; $55fc: $80
	ldh  [$c0], a                                    ; $55fd: $e0 $c0
	ldh  [$91], a                                    ; $55ff: $e0 $91
	nop                                              ; $5601: $00
	ld   [bc], a                                     ; $5602: $02
	add  b                                           ; $5603: $80
	nop                                              ; $5604: $00
	ld   b, b                                        ; $5605: $40
	add  c                                           ; $5606: $81
	add  b                                           ; $5607: $80
	inc  bc                                          ; $5608: $03
	and  b                                           ; $5609: $a0
	ret  nz                                          ; $560a: $c0

	rra                                              ; $560b: $1f
	nop                                              ; $560c: $00
	add  b                                           ; $560d: $80
	rra                                              ; $560e: $1f
	nop                                              ; $560f: $00
	ccf                                              ; $5610: $3f
	sub  e                                           ; $5611: $93
	nop                                              ; $5612: $00
	inc  c                                           ; $5613: $0c
	ld   bc, $0700                                   ; $5614: $01 $00 $07

jr_018_5617:
	ld   bc, $050c                                   ; $5617: $01 $0c $05
	sbc  c                                           ; $561a: $99
	ld   c, $e7                                      ; $561b: $0e $e7
	adc  l                                           ; $561d: $8d
	adc  $d3                                         ; $561e: $ce $d3
	ld   de, $eb80                                   ; $5620: $11 $80 $eb
	add  b                                           ; $5623: $80
	db   $e4                                         ; $5624: $e4
	add  hl, bc                                      ; $5625: $09
	and  $e7                                         ; $5626: $e6 $e7

jr_018_5628:
	db   $e4                                         ; $5628: $e4
	ld   bc, $2900                                   ; $5629: $01 $00 $29

jr_018_562c:
	nop                                              ; $562c: $00
	ld   d, $00                                      ; $562d: $16 $00
	inc  h                                           ; $562f: $24

jr_018_5630:
	add  e                                           ; $5630: $83
	nop                                              ; $5631: $00
	ld   a, [bc]                                     ; $5632: $0a
	ret  nz                                          ; $5633: $c0

	nop                                              ; $5634: $00
	ld   b, b                                        ; $5635: $40
	nop                                              ; $5636: $00
	ld   a, b                                        ; $5637: $78
	nop                                              ; $5638: $00
	add  sp, -$20                                    ; $5639: $e8 $e0
	db   $10                                         ; $563b: $10
	ld   b, b                                        ; $563c: $40
	and  b                                           ; $563d: $a0
	sub  c                                           ; $563e: $91
	nop                                              ; $563f: $00
	add  b                                           ; $5640: $80
	db   $10                                         ; $5641: $10
	add  b                                           ; $5642: $80
	ld   h, b                                        ; $5643: $60
	inc  bc                                          ; $5644: $03
	pop  hl                                          ; $5645: $e1
	ldh  [$c1], a                                    ; $5646: $e0 $c1
	ret  nz                                          ; $5648: $c0

	add  b                                           ; $5649: $80
	ld   b, b                                        ; $564a: $40
	add  a                                           ; $564b: $87
	nop                                              ; $564c: $00
	add  b                                           ; $564d: $80
	ld   bc, $0380                                   ; $564e: $01 $80 $03
	add  d                                           ; $5651: $82
	rlca                                             ; $5652: $07
	add  b                                           ; $5653: $80
	inc  bc                                          ; $5654: $03
	add  e                                           ; $5655: $83
	nop                                              ; $5656: $00
	ld   b, $80                                      ; $5657: $06 $80
	nop                                              ; $5659: $00
	ld   b, b                                        ; $565a: $40
	nop                                              ; $565b: $00
	ld   b, b                                        ; $565c: $40
	nop                                              ; $565d: $00
	add  b                                           ; $565e: $80
	adc  b                                           ; $565f: $88
	nop                                              ; $5660: $00
	add  b                                           ; $5661: $80
	and  d                                           ; $5662: $a2
	add  b                                           ; $5663: $80
	pop  af                                          ; $5664: $f1
	add  b                                           ; $5665: $80
	ldh  a, [$80]                                    ; $5666: $f0 $80
	ldh  [$80], a                                    ; $5668: $e0 $80
	ret  nz                                          ; $566a: $c0

	add  e                                           ; $566b: $83
	nop                                              ; $566c: $00
	add  b                                           ; $566d: $80
	inc  e                                           ; $566e: $1c
	add  b                                           ; $566f: $80
	nop                                              ; $5670: $00
	add  b                                           ; $5671: $80
	rlca                                             ; $5672: $07
	add  b                                           ; $5673: $80
	ld   e, $80                                      ; $5674: $1e $80
	ld   [hl], b                                     ; $5676: $70
	add  b                                           ; $5677: $80
	nop                                              ; $5678: $00
	add  b                                           ; $5679: $80
	jr   jr_018_55fc                                 ; $567a: $18 $80

	ld   [hl], b                                     ; $567c: $70
	add  b                                           ; $567d: $80
	ld   h, b                                        ; $567e: $60
	add  b                                           ; $567f: $80
	nop                                              ; $5680: $00
	add  b                                           ; $5681: $80
	ld   bc, $0082                                   ; $5682: $01 $82 $00
	add  b                                           ; $5685: $80
	ld   b, b                                        ; $5686: $40
	inc  bc                                          ; $5687: $03
	adc  l                                           ; $5688: $8d
	add  b                                           ; $5689: $80
	dec  c                                           ; $568a: $0d
	nop                                              ; $568b: $00
	add  b                                           ; $568c: $80
	ld   h, b                                        ; $568d: $60
	add  b                                           ; $568e: $80
	db   $10                                         ; $568f: $10
	add  b                                           ; $5690: $80
	ld   h, b                                        ; $5691: $60
	add  [hl]                                        ; $5692: $86
	nop                                              ; $5693: $00
	add  b                                           ; $5694: $80
	jr   nz, jr_018_5617                             ; $5695: $20 $80

	ld   h, b                                        ; $5697: $60
	ld   bc, $dcc0                                   ; $5698: $01 $c0 $dc
	add  h                                           ; $569b: $84
	inc  e                                           ; $569c: $1c
	ld   bc, $005c                                   ; $569d: $01 $5c $00
	add  b                                           ; $56a0: $80
	db   $10                                         ; $56a1: $10
	ld   bc, $1050                                   ; $56a2: $01 $50 $10
	add  b                                           ; $56a5: $80
	jr   nz, jr_018_5628                             ; $56a6: $20 $80

	nop                                              ; $56a8: $00
	add  b                                           ; $56a9: $80
	jr   nz, jr_018_562c                             ; $56aa: $20 $80

	nop                                              ; $56ac: $00
	add  b                                           ; $56ad: $80
	jr   nz, jr_018_5630                             ; $56ae: $20 $80

	db   $10                                         ; $56b0: $10
	add  b                                           ; $56b1: $80
	nop                                              ; $56b2: $00
	add  b                                           ; $56b3: $80
	ld   b, b                                        ; $56b4: $40
	ld   bc, $3130                                   ; $56b5: $01 $30 $31
	add  b                                           ; $56b8: $80
	ld   hl, $0183                                   ; $56b9: $21 $83 $01
	inc  bc                                          ; $56bc: $03
	nop                                              ; $56bd: $00
	and  b                                           ; $56be: $a0
	rra                                              ; $56bf: $1f
	ccf                                              ; $56c0: $3f
	add  b                                           ; $56c1: $80
	dec  sp                                          ; $56c2: $3b
	nop                                              ; $56c3: $00
	ld   a, a                                        ; $56c4: $7f
	add  c                                           ; $56c5: $81
	rst  $38                                         ; $56c6: $ff
	add  b                                           ; $56c7: $80
	cp   e                                           ; $56c8: $bb
	add  b                                           ; $56c9: $80
	scf                                              ; $56ca: $37
	inc  sp                                          ; $56cb: $33
	adc  e                                           ; $56cc: $8b
	adc  d                                           ; $56cd: $8a
	sbc  $c4                                         ; $56ce: $de $c4
	pop  hl                                          ; $56d0: $e1
	pop  af                                          ; $56d1: $f1
	ldh  a, [rIE]                                    ; $56d2: $f0 $ff
	ld   hl, sp-$0d                                  ; $56d4: $f8 $f3
	ldh  a, [$cb]                                    ; $56d6: $f0 $cb
	ret  nz                                          ; $56d8: $c0

	or   a                                           ; $56d9: $b7
	add  b                                           ; $56da: $80

jr_018_56db:
	ld   b, d                                        ; $56db: $42
	nop                                              ; $56dc: $00
	add  e                                           ; $56dd: $83
	nop                                              ; $56de: $00
	cp   $58                                         ; $56df: $fe $58
	ld   hl, sp+$00                                  ; $56e1: $f8 $00
	ld   e, h                                        ; $56e3: $5c
	nop                                              ; $56e4: $00
	inc  bc                                          ; $56e5: $03
	nop                                              ; $56e6: $00
	rst  $38                                         ; $56e7: $ff
	nop                                              ; $56e8: $00
	rst  $38                                         ; $56e9: $ff
	nop                                              ; $56ea: $00
	cp   $00                                         ; $56eb: $fe $00
	db   $fd                                         ; $56ed: $fd
	nop                                              ; $56ee: $00
	ld   a, h                                        ; $56ef: $7c
	dec  sp                                          ; $56f0: $3b
	cp   c                                           ; $56f1: $b9

Call_018_56f2:
	ld   h, c                                        ; $56f2: $61
	ld   a, l                                        ; $56f3: $7d
	ld   bc, $0111                                   ; $56f4: $01 $11 $01
	ld   a, l                                        ; $56f7: $7d
	ld   bc, $004c                                   ; $56f8: $01 $4c $00
	db   $e3                                         ; $56fb: $e3
	nop                                              ; $56fc: $00
	and  b                                           ; $56fd: $a0
	nop                                              ; $56fe: $00
	add  b                                           ; $56ff: $80
	add  b                                           ; $5700: $80
	and  c                                           ; $5701: $a1
	add  b                                           ; $5702: $80
	ldh  [$80], a                                    ; $5703: $e0 $80
	pop  hl                                          ; $5705: $e1
	add  b                                           ; $5706: $80
	ldh  [$81], a                                    ; $5707: $e0 $81
	pop  hl                                          ; $5709: $e1
	nop                                              ; $570a: $00
	ld   h, c                                        ; $570b: $61
	add  c                                           ; $570c: $81
	ld   b, e                                        ; $570d: $43
	nop                                              ; $570e: $00
	jp   $df80                                       ; $570f: $c3 $80 $df


	inc  bc                                          ; $5712: $03
	cp   a                                           ; $5713: $bf
	cp   [hl]                                        ; $5714: $be
	ld   a, a                                        ; $5715: $7f
	ld   a, [hl]                                     ; $5716: $7e
	add  b                                           ; $5717: $80
	cp   a                                           ; $5718: $bf
	add  b                                           ; $5719: $80
	rst  JumpTable                                         ; $571a: $df
	add  b                                           ; $571b: $80
	rst  $38                                         ; $571c: $ff
	add  b                                           ; $571d: $80
	ld   a, a                                        ; $571e: $7f
	rlca                                             ; $571f: $07
	rst  $38                                         ; $5720: $ff
	inc  bc                                          ; $5721: $03
	rst  $38                                         ; $5722: $ff
	call $b7ff                                       ; $5723: $cd $ff $b7
	rst  $38                                         ; $5726: $ff
	ld   a, c                                        ; $5727: $79
	sbc  c                                           ; $5728: $99
	rst  $38                                         ; $5729: $ff
	ld   c, $fe                                      ; $572a: $0e $fe
	rst  $38                                         ; $572c: $ff
	db   $fd                                         ; $572d: $fd
	rst  $38                                         ; $572e: $ff
	ei                                               ; $572f: $fb
	rst  $38                                         ; $5730: $ff
	add  a                                           ; $5731: $87
	rst  $38                                         ; $5732: $ff
	cp   a                                           ; $5733: $bf
	rst  $38                                         ; $5734: $ff
	rst  JumpTable                                         ; $5735: $df
	rst  $38                                         ; $5736: $ff
	rst  $28                                         ; $5737: $ef
	rst  $38                                         ; $5738: $ff
	ldh  a, [$83]                                    ; $5739: $f0 $83
	rst  $38                                         ; $573b: $ff
	nop                                              ; $573c: $00
	ld   a, a                                        ; $573d: $7f
	add  b                                           ; $573e: $80
	rst  $38                                         ; $573f: $ff
	rlca                                             ; $5740: $07
	db   $fd                                         ; $5741: $fd
	adc  l                                           ; $5742: $8d
	cp   $ee                                         ; $5743: $fe $ee
	rst  $38                                         ; $5745: $ff
	rst  JumpTable                                         ; $5746: $df
	cp   $3e                                         ; $5747: $fe $3e
	add  d                                           ; $5749: $82
	rst  $38                                         ; $574a: $ff
	add  b                                           ; $574b: $80
	ld   a, a                                        ; $574c: $7f
	add  b                                           ; $574d: $80
	ld   [hl], a                                     ; $574e: $77
	add  b                                           ; $574f: $80
	ld   e, a                                        ; $5750: $5f
	add  b                                           ; $5751: $80
	ld   a, $80                                      ; $5752: $3e $80
	ld   a, b                                        ; $5754: $78
	add  b                                           ; $5755: $80
	jr   nc, jr_018_56db                             ; $5756: $30 $83

	rst  $38                                         ; $5758: $ff
	ld   a, [bc]                                     ; $5759: $0a
	cp   $f0                                         ; $575a: $fe $f0
	rst  $30                                         ; $575c: $f7
	add  b                                           ; $575d: $80
	sbc  [hl]                                        ; $575e: $9e
	nop                                              ; $575f: $00
	jr   c, jr_018_5762                              ; $5760: $38 $00

jr_018_5762:
	ld   h, b                                        ; $5762: $60
	nop                                              ; $5763: $00
	ld   b, b                                        ; $5764: $40
	add  d                                           ; $5765: $82
	rst  $38                                         ; $5766: $ff
	dec  b                                           ; $5767: $05
	cp   $1e                                         ; $5768: $fe $1e
	rra                                              ; $576a: $1f
	rst  $20                                         ; $576b: $e7
	inc  bc                                          ; $576c: $03
	rra                                              ; $576d: $1f
	add  b                                           ; $576e: $80
	nop                                              ; $576f: $00
	inc  b                                           ; $5770: $04
	jr   nz, jr_018_5795                             ; $5771: $20 $22

	ld   [hl], b                                     ; $5773: $70
	ld   [hl], l                                     ; $5774: $75
	db   $fc                                         ; $5775: $fc
	add  b                                           ; $5776: $80
	cp   $00                                         ; $5777: $fe $00
	rst  $38                                         ; $5779: $ff
	add  b                                           ; $577a: $80
	rst  $28                                         ; $577b: $ef
	add  b                                           ; $577c: $80
	rst  ToBoot                                         ; $577d: $c7
	add  d                                           ; $577e: $82
	rst  $28                                         ; $577f: $ef
	add  b                                           ; $5780: $80
	ccf                                              ; $5781: $3f
	ld   bc, $e01f                                   ; $5782: $01 $1f $e0
	add  e                                           ; $5785: $83
	nop                                              ; $5786: $00
	add  b                                           ; $5787: $80
	add  b                                           ; $5788: $80
	add  b                                           ; $5789: $80
	ret  nz                                          ; $578a: $c0

	ld   [bc], a                                     ; $578b: $02
	ldh  [$e8], a                                    ; $578c: $e0 $e8
	ld   hl, sp-$80                                  ; $578e: $f8 $80
	db   $fc                                         ; $5790: $fc
	ld   bc, $0fff                                   ; $5791: $01 $ff $0f
	adc  h                                           ; $5794: $8c

jr_018_5795:
	nop                                              ; $5795: $00
	dec  b                                           ; $5796: $05
	add  b                                           ; $5797: $80
	adc  a                                           ; $5798: $8f
	rrca                                             ; $5799: $0f
	rra                                              ; $579a: $1f
	rla                                              ; $579b: $17
	scf                                              ; $579c: $37
	add  c                                           ; $579d: $81
	ccf                                              ; $579e: $3f
	add  b                                           ; $579f: $80
	ld   a, a                                        ; $57a0: $7f
	add  d                                           ; $57a1: $82
	rst  $38                                         ; $57a2: $ff
	ld   b, $fb                                      ; $57a3: $06 $fb
	rst  $38                                         ; $57a5: $ff
	ld   sp, hl                                      ; $57a6: $f9
	xor  h                                           ; $57a7: $ac
	xor  l                                           ; $57a8: $ad
	ld   h, h                                        ; $57a9: $64
	ld   h, [hl]                                     ; $57aa: $66
	add  d                                           ; $57ab: $82
	or   $15                                         ; $57ac: $f6 $15
	ld   a, [$fc9a]                                  ; $57ae: $fa $9a $fc
	db   $fd                                         ; $57b1: $fd
	cp   $9e                                         ; $57b2: $fe $9e
	rst  $38                                         ; $57b4: $ff
	ccf                                              ; $57b5: $3f
	nop                                              ; $57b6: $00
	ldh  [rP1], a                                    ; $57b7: $e0 $00
	jr   jr_018_57bb                                 ; $57b9: $18 $00

jr_018_57bb:
	inc  b                                           ; $57bb: $04
	jr   jr_018_57dc                                 ; $57bc: $18 $1e

	inc  d                                           ; $57be: $14
	rra                                              ; $57bf: $1f
	ld   c, $df                                      ; $57c0: $0e $df
	rra                                              ; $57c2: $1f
	rst  $38                                         ; $57c3: $ff
	add  b                                           ; $57c4: $80
	dec  sp                                          ; $57c5: $3b
	add  c                                           ; $57c6: $81
	nop                                              ; $57c7: $00
	add  hl, bc                                      ; $57c8: $09
	inc  e                                           ; $57c9: $1c
	nop                                              ; $57ca: $00
	ld   a, $00                                      ; $57cb: $3e $00
	ld   b, c                                        ; $57cd: $41
	nop                                              ; $57ce: $00
	ret  nz                                          ; $57cf: $c0

	ld   b, c                                        ; $57d0: $41
	pop  bc                                          ; $57d1: $c1
	ret  nz                                          ; $57d2: $c0

	add  b                                           ; $57d3: $80
	pop  bc                                          ; $57d4: $c1
	inc  c                                           ; $57d5: $0c
	ldh  [c], a                                      ; $57d6: $e2
	nop                                              ; $57d7: $00
	ld   bc, $0c00                                   ; $57d8: $01 $00 $0c
	nop                                              ; $57db: $00

jr_018_57dc:
	rra                                              ; $57dc: $1f
	inc  c                                           ; $57dd: $0c
	adc  a                                           ; $57de: $8f
	ld   c, $7e                                      ; $57df: $0e $7e
	inc  e                                           ; $57e1: $1c
	db   $fc                                         ; $57e2: $fc
	add  b                                           ; $57e3: $80
	ld   hl, sp-$80                                  ; $57e4: $f8 $80
	ldh  [rP1], a                                    ; $57e6: $e0 $00
	add  a                                           ; $57e8: $87
	add  c                                           ; $57e9: $81
	rlca                                             ; $57ea: $07
	ld   bc, $8f0f                                   ; $57eb: $01 $0f $8f
	add  b                                           ; $57ee: $80
	rrca                                             ; $57ef: $0f
	add  b                                           ; $57f0: $80
	dec  e                                           ; $57f1: $1d
	add  b                                           ; $57f2: $80
	add  hl, sp                                      ; $57f3: $39
	add  b                                           ; $57f4: $80
	ld   a, b                                        ; $57f5: $78
	add  b                                           ; $57f6: $80
	ld   hl, sp-$74                                  ; $57f7: $f8 $8c
	rst  $38                                         ; $57f9: $ff
	add  b                                           ; $57fa: $80
	ld   a, a                                        ; $57fb: $7f
	add  b                                           ; $57fc: $80
	cp   $82                                         ; $57fd: $fe $82
	db   $fc                                         ; $57ff: $fc
	add  b                                           ; $5800: $80
	cp   $88                                         ; $5801: $fe $88
	rst  $38                                         ; $5803: $ff
	add  d                                           ; $5804: $82
	ld   a, a                                        ; $5805: $7f
	add  b                                           ; $5806: $80
	cp   a                                           ; $5807: $bf
	add  b                                           ; $5808: $80
	ccf                                              ; $5809: $3f
	add  b                                           ; $580a: $80
	sbc  a                                           ; $580b: $9f
	add  b                                           ; $580c: $80
	rst  $38                                         ; $580d: $ff
	rlca                                             ; $580e: $07
	rst  $28                                         ; $580f: $ef
	ldh  a, [rIE]                                    ; $5810: $f0 $ff
	db   $fd                                         ; $5812: $fd
	rst  $38                                         ; $5813: $ff
	jp   nc, $cfff                                   ; $5814: $d2 $ff $cf

	add  a                                           ; $5817: $87
	rst  $38                                         ; $5818: $ff
	nop                                              ; $5819: $00
	ccf                                              ; $581a: $3f
	add  b                                           ; $581b: $80
	db   $fd                                         ; $581c: $fd
	add  b                                           ; $581d: $80
	ei                                               ; $581e: $fb
	rlca                                             ; $581f: $07
	rst  $30                                         ; $5820: $f7
	ld   [hl], a                                     ; $5821: $77
	rst  $38                                         ; $5822: $ff
	cp   a                                           ; $5823: $bf
	rst  $38                                         ; $5824: $ff
	rst  $30                                         ; $5825: $f7
	rst  $38                                         ; $5826: $ff
	rst  $30                                         ; $5827: $f7
	add  c                                           ; $5828: $81
	cp   $04                                         ; $5829: $fe $04
	rst  $38                                         ; $582b: $ff
	ld   h, b                                        ; $582c: $60
	ld   h, d                                        ; $582d: $62
	ld   b, c                                        ; $582e: $41

jr_018_582f:
	ld   b, l                                        ; $582f: $45
	add  b                                           ; $5830: $80
	add  e                                           ; $5831: $83
	add  b                                           ; $5832: $80
	add  d                                           ; $5833: $82
	add  c                                           ; $5834: $81
	ld   [bc], a                                     ; $5835: $02
	nop                                              ; $5836: $00
	ld   b, $80                                      ; $5837: $06 $80
	ld   bc, $0009                                   ; $5839: $01 $09 $00
	jp   $2000                                       ; $583c: $c3 $00 $20


	ret  nz                                          ; $583f: $c0

	db   $d3                                         ; $5840: $d3
	jr   nz, jr_018_582f                             ; $5841: $20 $ec

	inc  de                                          ; $5843: $13
	inc  sp                                          ; $5844: $33
	add  b                                           ; $5845: $80
	rrca                                             ; $5846: $0f
	ld   bc, $ee0e                                   ; $5847: $01 $0e $ee
	add  b                                           ; $584a: $80
	rra                                              ; $584b: $1f
	inc  bc                                          ; $584c: $03
	ld   a, $c6                                      ; $584d: $3e $c6
	ld   [hl+], a                                    ; $584f: $22
	jp   c, $0280                                    ; $5850: $da $80 $02

	add  b                                           ; $5853: $80
	ld   a, [$fc09]                                  ; $5854: $fa $09 $fc
	db   $fd                                         ; $5857: $fd
	db   $f4                                         ; $5858: $f4
	push af                                          ; $5859: $f5
	add  h                                           ; $585a: $84
	db   $ec                                         ; $585b: $ec
	nop                                              ; $585c: $00
	sub  h                                           ; $585d: $94
	ld   bc, $8002                                   ; $585e: $01 $02 $80
	rrca                                             ; $5861: $0f
	add  b                                           ; $5862: $80
	rlca                                             ; $5863: $07
	add  d                                           ; $5864: $82
	inc  bc                                          ; $5865: $03
	rrca                                             ; $5866: $0f
	ld   bc, $0181                                   ; $5867: $01 $81 $01
	pop  bc                                          ; $586a: $c1
	nop                                              ; $586b: $00
	ldh  [rP1], a                                    ; $586c: $e0 $00
	cp   a                                           ; $586e: $bf
	rst  $38                                         ; $586f: $ff
	rst  JumpTable                                         ; $5870: $df
	rst  $38                                         ; $5871: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5872: $cf
	rst  $38                                         ; $5873: $ff
	cp   a                                           ; $5874: $bf
	rst  $38                                         ; $5875: $ff
	cp   b                                           ; $5876: $b8
	add  c                                           ; $5877: $81
	rst  $38                                         ; $5878: $ff
	nop                                              ; $5879: $00
	rst  $30                                         ; $587a: $f7
	add  c                                           ; $587b: $81
	rst  $38                                         ; $587c: $ff
	add  e                                           ; $587d: $83
	nop                                              ; $587e: $00
	add  b                                           ; $587f: $80

jr_018_5880:
	add  b                                           ; $5880: $80
	add  b                                           ; $5881: $80
	ret  nz                                          ; $5882: $c0

	nop                                              ; $5883: $00
	nop                                              ; $5884: $00
	add  d                                           ; $5885: $82
	add  b                                           ; $5886: $80
	add  b                                           ; $5887: $80
	ret  nz                                          ; $5888: $c0

	ld   [de], a                                     ; $5889: $12
	ld   sp, hl                                      ; $588a: $f9
	rst  $38                                         ; $588b: $ff
	cp   $ff                                         ; $588c: $fe $ff
	rst  $30                                         ; $588e: $f7
	rst  $38                                         ; $588f: $ff
	rst  $28                                         ; $5890: $ef
	rst  $38                                         ; $5891: $ff
	rst  $20                                         ; $5892: $e7
	rst  $38                                         ; $5893: $ff
	cp   $ff                                         ; $5894: $fe $ff
	db   $fd                                         ; $5896: $fd
	rst  $38                                         ; $5897: $ff
	ei                                               ; $5898: $fb
	rst  $38                                         ; $5899: $ff
	ccf                                              ; $589a: $3f
	rst  $38                                         ; $589b: $ff
	cp   a                                           ; $589c: $bf
	add  c                                           ; $589d: $81
	rst  $38                                         ; $589e: $ff
	inc  b                                           ; $589f: $04
	cp   a                                           ; $58a0: $bf
	rst  $38                                         ; $58a1: $ff
	rst  JumpTable                                         ; $58a2: $df
	cp   $1e                                         ; $58a3: $fe $1e
	add  h                                           ; $58a5: $84
	rst  $38                                         ; $58a6: $ff
	add  b                                           ; $58a7: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58a8: $cf
	add  b                                           ; $58a9: $80
	or   b                                           ; $58aa: $b0
	add  b                                           ; $58ab: $80
	cp   h                                           ; $58ac: $bc
	add  b                                           ; $58ad: $80
	cp   l                                           ; $58ae: $bd
	add  b                                           ; $58af: $80
	rrca                                             ; $58b0: $0f
	add  b                                           ; $58b1: $80
	cp   l                                           ; $58b2: $bd
	add  b                                           ; $58b3: $80
	cp   a                                           ; $58b4: $bf
	nop                                              ; $58b5: $00
	rst  $38                                         ; $58b6: $ff
	add  b                                           ; $58b7: $80
	db   $e3                                         ; $58b8: $e3
	nop                                              ; $58b9: $00
	rst  $38                                         ; $58ba: $ff
	add  d                                           ; $58bb: $82
	nop                                              ; $58bc: $00
	add  b                                           ; $58bd: $80
	rst  $38                                         ; $58be: $ff
	add  b                                           ; $58bf: $80
	rst  JumpTable                                         ; $58c0: $df
	add  b                                           ; $58c1: $80
	db   $db                                         ; $58c2: $db
	add  b                                           ; $58c3: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58c4: $cf
	add  b                                           ; $58c5: $80
	rst  $10                                         ; $58c6: $d7
	add  b                                           ; $58c7: $80
	inc  bc                                          ; $58c8: $03
	add  b                                           ; $58c9: $80
	rrca                                             ; $58ca: $0f
	add  b                                           ; $58cb: $80
	ccf                                              ; $58cc: $3f
	add  b                                           ; $58cd: $80
	rst  $38                                         ; $58ce: $ff
	add  b                                           ; $58cf: $80
	ld   a, a                                        ; $58d0: $7f
	add  b                                           ; $58d1: $80
	rst  $38                                         ; $58d2: $ff
	add  b                                           ; $58d3: $80
	cp   $80                                         ; $58d4: $fe $80
	rst  $38                                         ; $58d6: $ff
	add  b                                           ; $58d7: $80
	ld   a, h                                        ; $58d8: $7c
	add  b                                           ; $58d9: $80
	call c, $9e80                                    ; $58da: $dc $80 $9e
	add  d                                           ; $58dd: $82
	cp   a                                           ; $58de: $bf
	add  b                                           ; $58df: $80
	cp   e                                           ; $58e0: $bb
	add  b                                           ; $58e1: $80
	ld   sp, hl                                      ; $58e2: $f9
	ld   b, $78                                      ; $58e3: $06 $78
	ld   e, b                                        ; $58e5: $58
	ccf                                              ; $58e6: $3f
	rrca                                             ; $58e7: $0f
	rra                                              ; $58e8: $1f
	nop                                              ; $58e9: $00
	rrca                                             ; $58ea: $0f
	add  b                                           ; $58eb: $80
	inc  b                                           ; $58ec: $04
	ld   [$0080], sp                                 ; $58ed: $08 $80 $00
	ld   b, b                                        ; $58f0: $40
	add  b                                           ; $58f1: $80
	or   b                                           ; $58f2: $b0
	ret  nz                                          ; $58f3: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58f4: $cf
	ldh  a, [rIF]                                    ; $58f5: $f0 $0f
	add  c                                           ; $58f7: $81
	rst  $38                                         ; $58f8: $ff
	inc  b                                           ; $58f9: $04
	ccf                                              ; $58fa: $3f
	rst  $38                                         ; $58fb: $ff
	ld   c, a                                        ; $58fc: $4f
	ld   a, a                                        ; $58fd: $7f
	jr   nc, jr_018_5880                             ; $58fe: $30 $80

	ccf                                              ; $5900: $3f
	dec  b                                           ; $5901: $05
	jr   c, jr_018_5982                              ; $5902: $38 $7e

	ld   h, [hl]                                     ; $5904: $66
	ei                                               ; $5905: $fb
	dec  de                                          ; $5906: $1b
	rst  $38                                         ; $5907: $ff
	add  b                                           ; $5908: $80
	cp   $80                                         ; $5909: $fe $80
	xor  h                                           ; $590b: $ac
	add  b                                           ; $590c: $80
	call c, $ac80                                    ; $590d: $dc $80 $ac
	add  b                                           ; $5910: $80
	ld   a, h                                        ; $5911: $7c
	add  b                                           ; $5912: $80
	db   $f4                                         ; $5913: $f4
	add  b                                           ; $5914: $80
	db   $fc                                         ; $5915: $fc
	inc  bc                                          ; $5916: $03
	sbc  $da                                         ; $5917: $de $da
	nop                                              ; $5919: $00
	inc  c                                           ; $591a: $0c
	add  c                                           ; $591b: $81
	nop                                              ; $591c: $00
	ld   b, $0f                                      ; $591d: $06 $0f
	nop                                              ; $591f: $00
	inc  b                                           ; $5920: $04
	ld   bc, $0005                                   ; $5921: $01 $05 $00
	inc  bc                                          ; $5924: $03
	add  c                                           ; $5925: $81
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	ld   a, d                                        ; $5928: $7a
	add  b                                           ; $5929: $80
	inc  a                                           ; $592a: $3c
	dec  e                                           ; $592b: $1d
	inc  e                                           ; $592c: $1c
	sbc  l                                           ; $592d: $9d
	ld   b, [hl]                                     ; $592e: $46
	ld   c, [hl]                                     ; $592f: $4e
	ldh  [$f5], a                                    ; $5930: $e0 $f5
	pop  bc                                          ; $5932: $c1
	ret  nc                                          ; $5933: $d0

	ld   h, b                                        ; $5934: $60
	db   $e3                                         ; $5935: $e3
	nop                                              ; $5936: $00
	adc  h                                           ; $5937: $8c
	nop                                              ; $5938: $00
	rst  $38                                         ; $5939: $ff
	ld   bc, $0305                                   ; $593a: $01 $05 $03
	dec  bc                                          ; $593d: $0b
	ld   bc, $09f9                                   ; $593e: $01 $f9 $09
	xor  e                                           ; $5941: $ab
	xor  b                                           ; $5942: $a8
	ld   d, b                                        ; $5943: $50
	nop                                              ; $5944: $00
	xor  a                                           ; $5945: $af
	nop                                              ; $5946: $00
	dec  c                                           ; $5947: $0d
	nop                                              ; $5948: $00
	rst  $28                                         ; $5949: $ef
	add  b                                           ; $594a: $80
	add  b                                           ; $594b: $80
	inc  bc                                          ; $594c: $03
	ret  nz                                          ; $594d: $c0

	ldh  [$80], a                                    ; $594e: $e0 $80
	ret  nz                                          ; $5950: $c0

	add  c                                           ; $5951: $81
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	add  b                                           ; $5954: $80
	add  h                                           ; $5955: $84
	nop                                              ; $5956: $00
	add  b                                           ; $5957: $80
	rst  JumpTable                                         ; $5958: $df
	add  b                                           ; $5959: $80
	ld   a, a                                        ; $595a: $7f
	add  b                                           ; $595b: $80
	ld   l, a                                        ; $595c: $6f
	add  d                                           ; $595d: $82
	ld   a, a                                        ; $595e: $7f
	add  b                                           ; $595f: $80
	ld   l, l                                        ; $5960: $6d
	add  b                                           ; $5961: $80
	ld   l, e                                        ; $5962: $6b
	ld   bc, $d8c7                                   ; $5963: $01 $c7 $d8
	add  c                                           ; $5966: $81
	ldh  [$82], a                                    ; $5967: $e0 $82
	ldh  a, [$82]                                    ; $5969: $f0 $82
	ld   hl, sp-$7e                                  ; $596b: $f8 $82
	db   $fc                                         ; $596d: $fc
	add  b                                           ; $596e: $80
	rra                                              ; $596f: $1f
	add  h                                           ; $5970: $84
	ccf                                              ; $5971: $3f
	add  [hl]                                        ; $5972: $86
	ld   a, a                                        ; $5973: $7f
	adc  b                                           ; $5974: $88
	rst  $38                                         ; $5975: $ff
	add  b                                           ; $5976: $80
	db   $fc                                         ; $5977: $fc
	nop                                              ; $5978: $00
	ei                                               ; $5979: $fb
	add  c                                           ; $597a: $81
	ld   hl, sp+$00                                  ; $597b: $f8 $00
	db   $fc                                         ; $597d: $fc
	add  l                                           ; $597e: $85
	rst  $38                                         ; $597f: $ff
	add  b                                           ; $5980: $80
	rrca                                             ; $5981: $0f

jr_018_5982:
	inc  b                                           ; $5982: $04
	di                                               ; $5983: $f3
	inc  bc                                          ; $5984: $03
	inc  c                                           ; $5985: $0c
	nop                                              ; $5986: $00
	inc  bc                                          ; $5987: $03

jr_018_5988:
	add  b                                           ; $5988: $80
	add  b                                           ; $5989: $80
	add  a                                           ; $598a: $87
	rst  $38                                         ; $598b: $ff
	nop                                              ; $598c: $00
	cp   $80                                         ; $598d: $fe $80
	sbc  $00                                         ; $598f: $de $00
	cp   $80                                         ; $5991: $fe $80
	ld   a, [hl]                                     ; $5993: $7e
	nop                                              ; $5994: $00
	rst  $38                                         ; $5995: $ff
	add  b                                           ; $5996: $80
	di                                               ; $5997: $f3
	add  b                                           ; $5998: $80
	db   $e3                                         ; $5999: $e3
	add  b                                           ; $599a: $80
	pop  af                                          ; $599b: $f1
	add  b                                           ; $599c: $80
	ld   sp, hl                                      ; $599d: $f9
	add  b                                           ; $599e: $80
	cp   $82                                         ; $599f: $fe $82
	ld   a, [hl]                                     ; $59a1: $7e
	add  b                                           ; $59a2: $80
	ccf                                              ; $59a3: $3f
	add  d                                           ; $59a4: $82
	rst  $38                                         ; $59a5: $ff
	add  b                                           ; $59a6: $80
	cp   $82                                         ; $59a7: $fe $82
	rst  $38                                         ; $59a9: $ff
	add  d                                           ; $59aa: $82
	ld   a, a                                        ; $59ab: $7f
	ld   a, [bc]                                     ; $59ac: $0a
	ccf                                              ; $59ad: $3f
	rlca                                             ; $59ae: $07
	nop                                              ; $59af: $00
	ld   b, b                                        ; $59b0: $40
	jr   nc, jr_018_59d3                             ; $59b1: $30 $20

	and  b                                           ; $59b3: $a0
	or   h                                           ; $59b4: $b4
	jr   nz, jr_018_59d9                             ; $59b5: $20 $22

	inc  l                                           ; $59b7: $2c
	add  b                                           ; $59b8: $80
	jr   z, jr_018_59c6                              ; $59b9: $28 $0b

	inc  l                                           ; $59bb: $2c
	jr   z, jr_018_59ea                              ; $59bc: $28 $2c

	jr   z, jr_018_59ea                              ; $59be: $28 $2a

	ld   a, a                                        ; $59c0: $7f
	dec  sp                                          ; $59c1: $3b
	cpl                                              ; $59c2: $2f
	dec  l                                           ; $59c3: $2d
	rra                                              ; $59c4: $1f
	ld   a, [hl]                                     ; $59c5: $7e

jr_018_59c6:
	rra                                              ; $59c6: $1f
	add  b                                           ; $59c7: $80
	rrca                                             ; $59c8: $0f
	add  b                                           ; $59c9: $80
	rlca                                             ; $59ca: $07
	add  b                                           ; $59cb: $80
	inc  bc                                          ; $59cc: $03
	add  b                                           ; $59cd: $80
	ld   bc, $4301                                   ; $59ce: $01 $01 $43
	db   $fc                                         ; $59d1: $fc
	add  b                                           ; $59d2: $80

jr_018_59d3:
	ei                                               ; $59d3: $fb
	add  c                                           ; $59d4: $81
	ldh  a, [rDIV]                                   ; $59d5: $f0 $04
	di                                               ; $59d7: $f3
	ld   [hl], e                                     ; $59d8: $73

jr_018_59d9:
	ldh  a, [c]                                      ; $59d9: $f2
	cp   d                                           ; $59da: $ba
	ld   hl, sp-$80                                  ; $59db: $f8 $80
	adc  $03                                         ; $59dd: $ce $03
	jp   Jump_018_4cb3                               ; $59df: $c3 $b3 $4c


	db   $fc                                         ; $59e2: $fc
	add  b                                           ; $59e3: $80
	ret  nz                                          ; $59e4: $c0

	nop                                              ; $59e5: $00
	nop                                              ; $59e6: $00
	add  b                                           ; $59e7: $80
	ccf                                              ; $59e8: $3f
	ld   [bc], a                                     ; $59e9: $02

jr_018_59ea:
	ret  nz                                          ; $59ea: $c0

	cp   $3e                                         ; $59eb: $fe $3e
	add  b                                           ; $59ed: $80
	ld   sp, hl                                      ; $59ee: $f9
	add  b                                           ; $59ef: $80
	rlca                                             ; $59f0: $07
	add  b                                           ; $59f1: $80
	db   $fc                                         ; $59f2: $fc
	nop                                              ; $59f3: $00
	rst  $38                                         ; $59f4: $ff
	add  d                                           ; $59f5: $82
	cp   $82                                         ; $59f6: $fe $82
	rst  $30                                         ; $59f8: $f7
	add  b                                           ; $59f9: $80
	db   $e3                                         ; $59fa: $e3
	add  e                                           ; $59fb: $83
	rst  $30                                         ; $59fc: $f7
	inc  b                                           ; $59fd: $04
	ldh  a, [rP1]                                    ; $59fe: $f0 $00
	dec  bc                                          ; $5a00: $0b
	nop                                              ; $5a01: $00
	inc  e                                           ; $5a02: $1c
	add  c                                           ; $5a03: $81
	nop                                              ; $5a04: $00
	db   $10                                         ; $5a05: $10
	jr   jr_018_5988                                 ; $5a06: $18 $80

	sbc  b                                           ; $5a08: $98
	add  b                                           ; $5a09: $80
	add  e                                           ; $5a0a: $83
	ret  nz                                          ; $5a0b: $c0

	rst  JumpTable                                         ; $5a0c: $df
	ldh  [rIE], a                                    ; $5a0d: $e0 $ff
	nop                                              ; $5a0f: $00
	cpl                                              ; $5a10: $2f
	nop                                              ; $5a11: $00
	ld   [hl], a                                     ; $5a12: $77
	nop                                              ; $5a13: $00
	ld   e, e                                        ; $5a14: $5b
	nop                                              ; $5a15: $00
	db   $10                                         ; $5a16: $10
	add  c                                           ; $5a17: $81
	nop                                              ; $5a18: $00
	inc  c                                           ; $5a19: $0c
	inc  bc                                          ; $5a1a: $03
	nop                                              ; $5a1b: $00
	add  a                                           ; $5a1c: $87
	nop                                              ; $5a1d: $00
	halt                                             ; $5a1e: $76
	nop                                              ; $5a1f: $00
	cp   $00                                         ; $5a20: $fe $00
	db   $f4                                         ; $5a22: $f4
	nop                                              ; $5a23: $00
	db   $fc                                         ; $5a24: $fc
	nop                                              ; $5a25: $00
	inc  b                                           ; $5a26: $04
	add  c                                           ; $5a27: $81
	nop                                              ; $5a28: $00
	db   $10                                         ; $5a29: $10
	add  c                                           ; $5a2a: $81
	nop                                              ; $5a2b: $00
	jp   nz, $8201                                   ; $5a2c: $c2 $01 $82

	nop                                              ; $5a2f: $00
	ldh  [rP1], a                                    ; $5a30: $e0 $00
	jr   nc, jr_018_5a35                             ; $5a32: $30 $01

	add  hl, de                                      ; $5a34: $19

jr_018_5a35:
	ld   bc, $033d                                   ; $5a35: $01 $3d $03
	ld   a, e                                        ; $5a38: $7b
	inc  bc                                          ; $5a39: $03
	add  a                                           ; $5a3a: $87
	add  b                                           ; $5a3b: $80
	ld   b, $01                                      ; $5a3c: $06 $01
	add  a                                           ; $5a3e: $87
	ld   c, a                                        ; $5a3f: $4f
	add  b                                           ; $5a40: $80
	rst  $28                                         ; $5a41: $ef
	add  b                                           ; $5a42: $80
	rst  ToBoot                                         ; $5a43: $c7
	add  b                                           ; $5a44: $80
	xor  e                                           ; $5a45: $ab
	add  d                                           ; $5a46: $82
	rst  $28                                         ; $5a47: $ef
	add  e                                           ; $5a48: $83
	rst  $38                                         ; $5a49: $ff
	add  b                                           ; $5a4a: $80
	db   $fc                                         ; $5a4b: $fc
	add  h                                           ; $5a4c: $84
	cp   $89                                         ; $5a4d: $fe $89
	rst  $38                                         ; $5a4f: $ff
	add  b                                           ; $5a50: $80
	rst  $30                                         ; $5a51: $f7
	inc  bc                                          ; $5a52: $03
	ld   a, [$fdba]                                  ; $5a53: $fa $ba $fd
	ld   a, l                                        ; $5a56: $7d
	add  b                                           ; $5a57: $80
	ld   a, [$fe09]                                  ; $5a58: $fa $09 $fe
	sbc  $f4                                         ; $5a5b: $de $f4
	db   $e4                                         ; $5a5d: $e4
	db   $fc                                         ; $5a5e: $fc
	nop                                              ; $5a5f: $00
	pop  af                                          ; $5a60: $f1
	pop  hl                                          ; $5a61: $e1
	ld   l, b                                        ; $5a62: $68
	ld   l, e                                        ; $5a63: $6b
	add  b                                           ; $5a64: $80
	adc  b                                           ; $5a65: $88
	add  b                                           ; $5a66: $80
	dec  bc                                          ; $5a67: $0b
	rlca                                             ; $5a68: $07
	rlca                                             ; $5a69: $07
	rla                                              ; $5a6a: $17
	dec  b                                           ; $5a6b: $05
	dec  [hl]                                        ; $5a6c: $35
	inc  b                                           ; $5a6d: $04
	ld   h, [hl]                                     ; $5a6e: $66
	nop                                              ; $5a6f: $00
	ld   e, l                                        ; $5a70: $5d
	add  b                                           ; $5a71: $80
	ret  nz                                          ; $5a72: $c0

	dec  b                                           ; $5a73: $05
	add  b                                           ; $5a74: $80
	ld   h, b                                        ; $5a75: $60
	nop                                              ; $5a76: $00
	add  hl, de                                      ; $5a77: $19
	ldh  [$e6], a                                    ; $5a78: $e0 $e6
	add  b                                           ; $5a7a: $80
	ld   sp, hl                                      ; $5a7b: $f9
	add  b                                           ; $5a7c: $80
	cp   $0d                                         ; $5a7d: $fe $0d
	ld   l, $ee                                      ; $5a7f: $2e $ee
	rra                                              ; $5a81: $1f
	ld   h, c                                        ; $5a82: $61
	ld   e, $2e                                      ; $5a83: $1e $2e
	ld   c, $87                                      ; $5a85: $0e $87
	ld   [hl], e                                     ; $5a87: $73
	ld   [hl], a                                     ; $5a88: $77
	sbc  c                                           ; $5a89: $99
	ld   sp, hl                                      ; $5a8a: $f9
	add  hl, bc                                      ; $5a8b: $09
	adc  c                                           ; $5a8c: $89
	add  c                                           ; $5a8d: $81
	ld   [$ec02], sp                                 ; $5a8e: $08 $02 $ec
	db   $10                                         ; $5a91: $10
	add  sp, -$80                                    ; $5a92: $e8 $80
	ccf                                              ; $5a94: $3f
	add  b                                           ; $5a95: $80
	ld   e, a                                        ; $5a96: $5f
	add  b                                           ; $5a97: $80
	sbc  a                                           ; $5a98: $9f
	add  b                                           ; $5a99: $80
	adc  a                                           ; $5a9a: $8f
	add  b                                           ; $5a9b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a9c: $cf
	add  b                                           ; $5a9d: $80

jr_018_5a9e:
	rst  $30                                         ; $5a9e: $f7
	add  b                                           ; $5a9f: $80
	ld   [hl], e                                     ; $5aa0: $73
	ld   de, $487b                                   ; $5aa1: $11 $7b $48
	inc  a                                           ; $5aa4: $3c
	sbc  h                                           ; $5aa5: $9c
	inc  e                                           ; $5aa6: $1c
	ld   d, $1e                                      ; $5aa7: $16 $1e
	adc  $8e                                         ; $5aa9: $ce $8e
	adc  e                                           ; $5aab: $8b
	adc  a                                           ; $5aac: $8f
	rst  $20                                         ; $5aad: $e7
	rst  ToBoot                                         ; $5aae: $c7
	push bc                                          ; $5aaf: $c5
	rst  ToBoot                                         ; $5ab0: $c7
	di                                               ; $5ab1: $f3
	db   $e3                                         ; $5ab2: $e3
	adc  e                                           ; $5ab3: $8b
	add  c                                           ; $5ab4: $81
	jr   z, @-$7e                                    ; $5ab5: $28 $80

	ld   [$200a], sp                                 ; $5ab7: $08 $0a $20
	nop                                              ; $5aba: $00
	call z, $0010                                   ; $5abb: $cc $10 $00
	inc  b                                           ; $5abe: $04
	call nc, $a084                                   ; $5abf: $d4 $84 $a0
	add  b                                           ; $5ac2: $80
	sbc  e                                           ; $5ac3: $9b
	add  b                                           ; $5ac4: $80
	ld   bc, $0081                                   ; $5ac5: $01 $81 $00
	nop                                              ; $5ac8: $00
	inc  bc                                          ; $5ac9: $03
	add  e                                           ; $5aca: $83
	nop                                              ; $5acb: $00
	add  hl, bc                                      ; $5acc: $09
	inc  e                                           ; $5acd: $1c
	nop                                              ; $5ace: $00
	inc  a                                           ; $5acf: $3c
	inc  e                                           ; $5ad0: $1c
	add  c                                           ; $5ad1: $81
	ld   a, h                                        ; $5ad2: $7c
	db   $fd                                         ; $5ad3: $fd
	ld   a, a                                        ; $5ad4: $7f
	ld   a, $3f                                      ; $5ad5: $3e $3f
	add  b                                           ; $5ad7: $80
	rra                                              ; $5ad8: $1f
	add  b                                           ; $5ad9: $80
	rlca                                             ; $5ada: $07
	add  h                                           ; $5adb: $84
	nop                                              ; $5adc: $00
	inc  b                                           ; $5add: $04
	db   $fc                                         ; $5ade: $fc
	inc  bc                                          ; $5adf: $03
	cp   $ff                                         ; $5ae0: $fe $ff
	ld   bc, $ff83                                   ; $5ae2: $01 $83 $ff
	add  b                                           ; $5ae5: $80
	rra                                              ; $5ae6: $1f
	add  b                                           ; $5ae7: $80
	rrca                                             ; $5ae8: $0f
	add  b                                           ; $5ae9: $80
	rlca                                             ; $5aea: $07
	ld   [bc], a                                     ; $5aeb: $02
	ld   a, a                                        ; $5aec: $7f
	rst  $38                                         ; $5aed: $ff
	ld   a, a                                        ; $5aee: $7f
	add  l                                           ; $5aef: $85
	rst  $38                                         ; $5af0: $ff
	ld   b, $fe                                      ; $5af1: $06 $fe
	rst  $38                                         ; $5af3: $ff
	db   $fd                                         ; $5af4: $fd
	rst  $38                                         ; $5af5: $ff
	ld   hl, sp-$03                                  ; $5af6: $f8 $fd
	ld   b, $8a                                      ; $5af8: $06 $8a
	rst  $38                                         ; $5afa: $ff
	add  b                                           ; $5afb: $80
	cp   b                                           ; $5afc: $b8
	add  b                                           ; $5afd: $80
	and  b                                           ; $5afe: $a0
	add  b                                           ; $5aff: $80
	ldh  a, [$80]                                    ; $5b00: $f0 $80
	ret  c                                           ; $5b02: $d8

	add  b                                           ; $5b03: $80
	cp   $84                                         ; $5b04: $fe $84
	rst  $38                                         ; $5b06: $ff
	add  c                                           ; $5b07: $81
	ccf                                              ; $5b08: $3f
	ld   a, [bc]                                     ; $5b09: $0a
	and  e                                           ; $5b0a: $a3
	nop                                              ; $5b0b: $00
	ldh  [$08], a                                    ; $5b0c: $e0 $08
	ld   a, b                                        ; $5b0e: $78
	nop                                              ; $5b0f: $00
	ld   [$8780], sp                                 ; $5b10: $08 $80 $87
	ldh  a, [$f3]                                    ; $5b13: $f0 $f3
	add  e                                           ; $5b15: $83
	rst  $38                                         ; $5b16: $ff
	inc  b                                           ; $5b17: $04
	sbc  d                                           ; $5b18: $9a
	nop                                              ; $5b19: $00
	dec  a                                           ; $5b1a: $3d
	nop                                              ; $5b1b: $00
	jr   jr_018_5a9e                                 ; $5b1c: $18 $80

	nop                                              ; $5b1e: $00
	inc  bc                                          ; $5b1f: $03
	inc  bc                                          ; $5b20: $03
	jp   $9f1f                                       ; $5b21: $c3 $1f $9f


	add  b                                           ; $5b24: $80
	ei                                               ; $5b25: $fb
	add  c                                           ; $5b26: $81
	rst  $38                                         ; $5b27: $ff
	nop                                              ; $5b28: $00
	scf                                              ; $5b29: $37
	add  b                                           ; $5b2a: $80
	add  a                                           ; $5b2b: $87
	ld   [bc], a                                     ; $5b2c: $02
	dec  b                                           ; $5b2d: $05
	cp   l                                           ; $5b2e: $bd
	adc  a                                           ; $5b2f: $8f
	sub  h                                           ; $5b30: $94
	rst  $38                                         ; $5b31: $ff
	nop                                              ; $5b32: $00
	cp   a                                           ; $5b33: $bf
	add  c                                           ; $5b34: $81
	rst  $38                                         ; $5b35: $ff
	ld   [$fc4f], sp                                 ; $5b36: $08 $4f $fc
	adc  h                                           ; $5b39: $8c
	ld   hl, sp-$28                                  ; $5b3a: $f8 $d8
	ld   hl, sp-$28                                  ; $5b3c: $f8 $d8
	ld   hl, sp+$78                                  ; $5b3e: $f8 $78
	add  d                                           ; $5b40: $82
	ld   hl, sp-$80                                  ; $5b41: $f8 $80
	add  sp, $10                                     ; $5b43: $e8 $10
	ld   hl, sp+$40                                  ; $5b45: $f8 $40
	db   $10                                         ; $5b47: $10
	ld   d, b                                        ; $5b48: $50
	jr   nc, jr_018_5b7f                             ; $5b49: $30 $34

	ld   a, b                                        ; $5b4b: $78
	ld   a, [$7330]                                  ; $5b4c: $fa $30 $73
	ld   [de], a                                     ; $5b4f: $12
	ld   a, [de]                                     ; $5b50: $1a
	ld   [bc], a                                     ; $5b51: $02
	ld   hl, $1e00                                   ; $5b52: $21 $00 $1e
	nop                                              ; $5b55: $00
	inc  c                                           ; $5b56: $0c
	ld   [bc], a                                     ; $5b57: $02
	rst  $38                                         ; $5b58: $ff
	nop                                              ; $5b59: $00
	rst  $38                                         ; $5b5a: $ff
	nop                                              ; $5b5b: $00
	rst  $38                                         ; $5b5c: $ff
	nop                                              ; $5b5d: $00
	rst  $38                                         ; $5b5e: $ff
	nop                                              ; $5b5f: $00
	rst  $38                                         ; $5b60: $ff
	nop                                              ; $5b61: $00
	rst  $38                                         ; $5b62: $ff
	nop                                              ; $5b63: $00
	rst  $38                                         ; $5b64: $ff
	nop                                              ; $5b65: $00
	rst  $38                                         ; $5b66: $ff
	nop                                              ; $5b67: $00
	rst  $38                                         ; $5b68: $ff
	nop                                              ; $5b69: $00
	rst  $38                                         ; $5b6a: $ff
	nop                                              ; $5b6b: $00
	rst  $38                                         ; $5b6c: $ff
	nop                                              ; $5b6d: $00
	rst  $38                                         ; $5b6e: $ff
	nop                                              ; $5b6f: $00
	rst  $38                                         ; $5b70: $ff
	nop                                              ; $5b71: $00
	pop  af                                          ; $5b72: $f1
	nop                                              ; $5b73: $00
	nop                                              ; $5b74: $00
	rst  $38                                         ; $5b75: $ff
	adc  l                                           ; $5b76: $8d

jr_018_5b77:
	nop                                              ; $5b77: $00
	ld   [de], a                                     ; $5b78: $12
	rra                                              ; $5b79: $1f
	add  b                                           ; $5b7a: $80
	adc  a                                           ; $5b7b: $8f
	add  b                                           ; $5b7c: $80
	add  a                                           ; $5b7d: $87
	add  b                                           ; $5b7e: $80

jr_018_5b7f:
	add  d                                           ; $5b7f: $82
	add  b                                           ; $5b80: $80
	add  d                                           ; $5b81: $82
	add  b                                           ; $5b82: $80
	add  a                                           ; $5b83: $87
	add  b                                           ; $5b84: $80
	adc  a                                           ; $5b85: $8f
	add  b                                           ; $5b86: $80
	sbc  a                                           ; $5b87: $9f
	add  b                                           ; $5b88: $80
	ld   b, [hl]                                     ; $5b89: $46
	inc  b                                           ; $5b8a: $04
	add  h                                           ; $5b8b: $84
	add  a                                           ; $5b8c: $87
	inc  b                                           ; $5b8d: $04
	ld   b, $84                                      ; $5b8e: $06 $84
	inc  b                                           ; $5b90: $04
	call nz, $0204                                   ; $5b91: $c4 $04 $02
	nop                                              ; $5b94: $00
	ld   a, a                                        ; $5b95: $7f
	add  b                                           ; $5b96: $80
	nop                                              ; $5b97: $00
	nop                                              ; $5b98: $00
	ccf                                              ; $5b99: $3f
	adc  b                                           ; $5b9a: $88
	jr   nz, jr_018_5b9f                             ; $5b9b: $20 $02

	ld   b, b                                        ; $5b9d: $40
	nop                                              ; $5b9e: $00

jr_018_5b9f:
	rst  $38                                         ; $5b9f: $ff
	add  b                                           ; $5ba0: $80
	nop                                              ; $5ba1: $00
	nop                                              ; $5ba2: $00
	rst  $38                                         ; $5ba3: $ff
	add  l                                           ; $5ba4: $85
	nop                                              ; $5ba5: $00
	add  d                                           ; $5ba6: $82
	ld   bc, $0001                                   ; $5ba7: $01 $01 $00
	rst  $38                                         ; $5baa: $ff
	add  b                                           ; $5bab: $80
	nop                                              ; $5bac: $00
	nop                                              ; $5bad: $00
	rst  $38                                         ; $5bae: $ff
	add  l                                           ; $5baf: $85
	nop                                              ; $5bb0: $00
	add  b                                           ; $5bb1: $80
	rst  $38                                         ; $5bb2: $ff
	ld   bc, $ff00                                   ; $5bb3: $01 $00 $ff
	rst  $38                                         ; $5bb6: $ff
	nop                                              ; $5bb7: $00
	sbc  h                                           ; $5bb8: $9c
	nop                                              ; $5bb9: $00
	ld   bc, $aa55                                   ; $5bba: $01 $55 $aa
	add  b                                           ; $5bbd: $80
	ld   d, l                                        ; $5bbe: $55
	add  b                                           ; $5bbf: $80
	xor  d                                           ; $5bc0: $aa
	add  b                                           ; $5bc1: $80
	ld   d, l                                        ; $5bc2: $55
	add  b                                           ; $5bc3: $80
	xor  d                                           ; $5bc4: $aa
	add  b                                           ; $5bc5: $80
	ld   d, l                                        ; $5bc6: $55
	add  b                                           ; $5bc7: $80
	xor  d                                           ; $5bc8: $aa
	add  b                                           ; $5bc9: $80
	ld   d, l                                        ; $5bca: $55
	adc  [hl]                                        ; $5bcb: $8e
	rst  $38                                         ; $5bcc: $ff
	db   $10                                         ; $5bcd: $10
	xor  d                                           ; $5bce: $aa
	rst  $38                                         ; $5bcf: $ff
	nop                                              ; $5bd0: $00
	rst  $38                                         ; $5bd1: $ff
	nop                                              ; $5bd2: $00
	rst  $38                                         ; $5bd3: $ff
	nop                                              ; $5bd4: $00
	rst  $38                                         ; $5bd5: $ff
	nop                                              ; $5bd6: $00
	rst  $38                                         ; $5bd7: $ff
	nop                                              ; $5bd8: $00
	rst  $38                                         ; $5bd9: $ff
	nop                                              ; $5bda: $00
	rst  $38                                         ; $5bdb: $ff
	nop                                              ; $5bdc: $00
	rst  $38                                         ; $5bdd: $ff
	xor  d                                           ; $5bde: $aa
	adc  l                                           ; $5bdf: $8d
	rst  $38                                         ; $5be0: $ff
	add  b                                           ; $5be1: $80
	ld   d, l                                        ; $5be2: $55
	add  b                                           ; $5be3: $80
	xor  d                                           ; $5be4: $aa
	add  b                                           ; $5be5: $80
	ld   d, l                                        ; $5be6: $55

jr_018_5be7:
	add  b                                           ; $5be7: $80
	xor  d                                           ; $5be8: $aa
	add  b                                           ; $5be9: $80
	ld   d, l                                        ; $5bea: $55
	add  b                                           ; $5beb: $80
	xor  d                                           ; $5bec: $aa
	add  b                                           ; $5bed: $80
	ld   d, l                                        ; $5bee: $55
	add  b                                           ; $5bef: $80
	xor  d                                           ; $5bf0: $aa
	nop                                              ; $5bf1: $00
	sbc  a                                           ; $5bf2: $9f
	add  a                                           ; $5bf3: $87

jr_018_5bf4:
	jr   nz, jr_018_5b77                             ; $5bf4: $20 $81

	ccf                                              ; $5bf6: $3f
	ld   bc, $7f00                                   ; $5bf7: $01 $00 $7f
	adc  c                                           ; $5bfa: $89
	nop                                              ; $5bfb: $00
	add  c                                           ; $5bfc: $81
	rst  $38                                         ; $5bfd: $ff
	ld   bc, $ff00                                   ; $5bfe: $01 $00 $ff
	add  c                                           ; $5c01: $81
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	rst  $38                                         ; $5c04: $ff
	add  b                                           ; $5c05: $80
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	rst  $38                                         ; $5c08: $ff
	add  l                                           ; $5c09: $85
	nop                                              ; $5c0a: $00
	add  d                                           ; $5c0b: $82
	add  b                                           ; $5c0c: $80
	add  b                                           ; $5c0d: $80
	ld   bc, $0085                                   ; $5c0e: $01 $85 $00
	add  c                                           ; $5c11: $81
	rst  $38                                         ; $5c12: $ff
	ld   bc, $ff00                                   ; $5c13: $01 $00 $ff
	add  b                                           ; $5c16: $80
	nop                                              ; $5c17: $00
	add  b                                           ; $5c18: $80
	rst  $38                                         ; $5c19: $ff
	add  l                                           ; $5c1a: $85
	nop                                              ; $5c1b: $00
	add  c                                           ; $5c1c: $81
	rst  $38                                         ; $5c1d: $ff
	ld   bc, $ff00                                   ; $5c1e: $01 $00 $ff
	add  b                                           ; $5c21: $80
	nop                                              ; $5c22: $00
	add  b                                           ; $5c23: $80
	add  b                                           ; $5c24: $80
	add  l                                           ; $5c25: $85
	nop                                              ; $5c26: $00
	add  c                                           ; $5c27: $81
	rst  $38                                         ; $5c28: $ff
	inc  bc                                          ; $5c29: $03
	nop                                              ; $5c2a: $00
	rst  $38                                         ; $5c2b: $ff
	nop                                              ; $5c2c: $00
	ld   b, $87                                      ; $5c2d: $06 $87
	inc  b                                           ; $5c2f: $04
	add  c                                           ; $5c30: $81
	db   $fc                                         ; $5c31: $fc
	rlca                                             ; $5c32: $07
	nop                                              ; $5c33: $00
	cp   $00                                         ; $5c34: $fe $00
	ld   h, b                                        ; $5c36: $60
	jr   nz, jr_018_5c5a                             ; $5c37: $20 $21

	jr   nz, jr_018_5c5e                             ; $5c39: $20 $23

	add  l                                           ; $5c3b: $85
	jr   nz, jr_018_5c44                             ; $5c3c: $20 $06

	inc  hl                                          ; $5c3e: $23
	jr   nz, @+$23                                   ; $5c3f: $20 $21

	jr   nz, jr_018_5bf4                             ; $5c41: $20 $b1

jr_018_5c43:
	nop                                              ; $5c43: $00

jr_018_5c44:
	cp   c                                           ; $5c44: $b9
	add  l                                           ; $5c45: $85
	nop                                              ; $5c46: $00
	ld   c, $02                                      ; $5c47: $0e $02
	nop                                              ; $5c49: $00
	db   $db                                         ; $5c4a: $db
	nop                                              ; $5c4b: $00
	sub  c                                           ; $5c4c: $91
	nop                                              ; $5c4d: $00
	db   $e4                                         ; $5c4e: $e4
	nop                                              ; $5c4f: $00
	ldh  a, [rP1]                                    ; $5c50: $f0 $00
	ld   sp, $2300                                   ; $5c52: $31 $00 $23
	nop                                              ; $5c55: $00
	ld   b, $81                                      ; $5c56: $06 $81
	nop                                              ; $5c58: $00
	inc  b                                           ; $5c59: $04

jr_018_5c5a:
	pop  af                                          ; $5c5a: $f1
	nop                                              ; $5c5b: $00
	pop  af                                          ; $5c5c: $f1
	nop                                              ; $5c5d: $00

jr_018_5c5e:
	jr   nz, jr_018_5be7                             ; $5c5e: $20 $87

	ld   bc, $6104                                   ; $5c60: $01 $04 $61
	ld   bc, $01c1                                   ; $5c63: $01 $c1 $01
	add  c                                           ; $5c66: $81
	add  b                                           ; $5c67: $80
	ld   bc, $0001                                   ; $5c68: $01 $01 $00
	rst  $38                                         ; $5c6b: $ff
	add  b                                           ; $5c6c: $80
	nop                                              ; $5c6d: $00
	nop                                              ; $5c6e: $00
	rst  $38                                         ; $5c6f: $ff
	add  h                                           ; $5c70: $84
	nop                                              ; $5c71: $00
	add  b                                           ; $5c72: $80
	ld   a, b                                        ; $5c73: $78
	add  b                                           ; $5c74: $80
	call z, $0080                                    ; $5c75: $cc $80 $00
	nop                                              ; $5c78: $00
	rst  $38                                         ; $5c79: $ff
	add  b                                           ; $5c7a: $80
	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	rst  $38                                         ; $5c7d: $ff
	add  d                                           ; $5c7e: $82
	nop                                              ; $5c7f: $00
	add  h                                           ; $5c80: $84
	rrca                                             ; $5c81: $0f
	add  b                                           ; $5c82: $80
	nop                                              ; $5c83: $00
	nop                                              ; $5c84: $00
	rst  $38                                         ; $5c85: $ff
	add  b                                           ; $5c86: $80
	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	rst  $38                                         ; $5c89: $ff
	add  d                                           ; $5c8a: $82
	nop                                              ; $5c8b: $00
	add  b                                           ; $5c8c: $80
	rst  $38                                         ; $5c8d: $ff
	add  b                                           ; $5c8e: $80
	rlca                                             ; $5c8f: $07
	add  b                                           ; $5c90: $80
	inc  bc                                          ; $5c91: $03
	add  b                                           ; $5c92: $80
	nop                                              ; $5c93: $00
	nop                                              ; $5c94: $00
	cp   $80                                         ; $5c95: $fe $80
	nop                                              ; $5c97: $00
	nop                                              ; $5c98: $00
	db   $fc                                         ; $5c99: $fc
	add  h                                           ; $5c9a: $84
	inc  b                                           ; $5c9b: $04
	add  b                                           ; $5c9c: $80
	add  h                                           ; $5c9d: $84
	add  b                                           ; $5c9e: $80
	call nz, $ce01                                   ; $5c9f: $c4 $01 $ce
	call z, $7880                            ; $5ca2: $cc $80 $78
	add  h                                           ; $5ca5: $84
	nop                                              ; $5ca6: $00
	add  c                                           ; $5ca7: $81
	rst  $38                                         ; $5ca8: $ff
	ld   [bc], a                                     ; $5ca9: $02
	nop                                              ; $5caa: $00
	rst  $38                                         ; $5cab: $ff
	nop                                              ; $5cac: $00
	add  h                                           ; $5cad: $84
	rrca                                             ; $5cae: $0f
	add  d                                           ; $5caf: $82
	nop                                              ; $5cb0: $00
	add  c                                           ; $5cb1: $81
	rst  $38                                         ; $5cb2: $ff
	ld   bc, $ff00                                   ; $5cb3: $01 $00 $ff
	add  c                                           ; $5cb6: $81
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	ld   a, a                                        ; $5cb9: $7f
	add  b                                           ; $5cba: $80
	nop                                              ; $5cbb: $00
	nop                                              ; $5cbc: $00
	ccf                                              ; $5cbd: $3f
	add  h                                           ; $5cbe: $84
	jr   nz, jr_018_5c43                             ; $5cbf: $20 $82

	inc  hl                                          ; $5cc1: $23
	ld   [bc], a                                     ; $5cc2: $02
	ld   b, b                                        ; $5cc3: $40
	nop                                              ; $5cc4: $00
	rst  $38                                         ; $5cc5: $ff
	add  b                                           ; $5cc6: $80
	nop                                              ; $5cc7: $00
	nop                                              ; $5cc8: $00
	rst  $38                                         ; $5cc9: $ff
	add  h                                           ; $5cca: $84
	nop                                              ; $5ccb: $00
	add  b                                           ; $5ccc: $80
	rst  $20                                         ; $5ccd: $e7
	add  b                                           ; $5cce: $80
	ld   [hl], $80                                   ; $5ccf: $36 $80
	nop                                              ; $5cd1: $00
	nop                                              ; $5cd2: $00
	rst  $38                                         ; $5cd3: $ff
	add  b                                           ; $5cd4: $80
	nop                                              ; $5cd5: $00
	nop                                              ; $5cd6: $00
	rst  $38                                         ; $5cd7: $ff
	add  h                                           ; $5cd8: $84
	nop                                              ; $5cd9: $00
	add  b                                           ; $5cda: $80
	db   $ec                                         ; $5cdb: $ec
	add  b                                           ; $5cdc: $80
	inc  c                                           ; $5cdd: $0c
	add  b                                           ; $5cde: $80
	nop                                              ; $5cdf: $00
	nop                                              ; $5ce0: $00
	rst  $38                                         ; $5ce1: $ff
	add  b                                           ; $5ce2: $80
	nop                                              ; $5ce3: $00
	nop                                              ; $5ce4: $00
	rst  $38                                         ; $5ce5: $ff
	add  h                                           ; $5ce6: $84
	nop                                              ; $5ce7: $00
	add  b                                           ; $5ce8: $80
	rrca                                             ; $5ce9: $0f
	add  b                                           ; $5cea: $80
	add  hl, de                                      ; $5ceb: $19
	add  b                                           ; $5cec: $80
	nop                                              ; $5ced: $00
	nop                                              ; $5cee: $00
	rst  $38                                         ; $5cef: $ff
	add  b                                           ; $5cf0: $80
	nop                                              ; $5cf1: $00
	nop                                              ; $5cf2: $00
	rst  $38                                         ; $5cf3: $ff
	add  h                                           ; $5cf4: $84
	nop                                              ; $5cf5: $00
	add  b                                           ; $5cf6: $80
	ld   e, $80                                      ; $5cf7: $1e $80
	or   e                                           ; $5cf9: $b3
	add  b                                           ; $5cfa: $80
	nop                                              ; $5cfb: $00
	nop                                              ; $5cfc: $00
	rst  $38                                         ; $5cfd: $ff
	add  b                                           ; $5cfe: $80
	nop                                              ; $5cff: $00
	nop                                              ; $5d00: $00
	rst  $38                                         ; $5d01: $ff
	add  h                                           ; $5d02: $84
	nop                                              ; $5d03: $00
	add  b                                           ; $5d04: $80
	ld   a, h                                        ; $5d05: $7c
	add  b                                           ; $5d06: $80
	ld   h, [hl]                                     ; $5d07: $66
	add  b                                           ; $5d08: $80
	nop                                              ; $5d09: $00
	nop                                              ; $5d0a: $00
	rst  $38                                         ; $5d0b: $ff
	add  b                                           ; $5d0c: $80
	nop                                              ; $5d0d: $00
	nop                                              ; $5d0e: $00
	rst  $38                                         ; $5d0f: $ff
	add  h                                           ; $5d10: $84
	nop                                              ; $5d11: $00
	add  b                                           ; $5d12: $80
	rrca                                             ; $5d13: $0f
	add  b                                           ; $5d14: $80
	inc  c                                           ; $5d15: $0c
	add  b                                           ; $5d16: $80
	nop                                              ; $5d17: $00
	nop                                              ; $5d18: $00
	rst  $38                                         ; $5d19: $ff
	add  b                                           ; $5d1a: $80
	nop                                              ; $5d1b: $00
	nop                                              ; $5d1c: $00
	rst  $38                                         ; $5d1d: $ff
	add  h                                           ; $5d1e: $84
	nop                                              ; $5d1f: $00
	add  b                                           ; $5d20: $80
	sbc  a                                           ; $5d21: $9f
	add  b                                           ; $5d22: $80
	reti                                             ; $5d23: $d9


	add  b                                           ; $5d24: $80
	nop                                              ; $5d25: $00
	nop                                              ; $5d26: $00
	rst  $38                                         ; $5d27: $ff
	add  b                                           ; $5d28: $80
	nop                                              ; $5d29: $00
	nop                                              ; $5d2a: $00
	rst  $38                                         ; $5d2b: $ff
	add  h                                           ; $5d2c: $84
	nop                                              ; $5d2d: $00
	add  b                                           ; $5d2e: $80
	ccf                                              ; $5d2f: $3f
	add  b                                           ; $5d30: $80
	or   b                                           ; $5d31: $b0
	add  b                                           ; $5d32: $80
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	rst  $38                                         ; $5d35: $ff
	add  b                                           ; $5d36: $80
	nop                                              ; $5d37: $00
	nop                                              ; $5d38: $00
	rst  $38                                         ; $5d39: $ff
	add  h                                           ; $5d3a: $84
	nop                                              ; $5d3b: $00
	add  b                                           ; $5d3c: $80
	inc  a                                           ; $5d3d: $3c
	add  b                                           ; $5d3e: $80
	ld   h, [hl]                                     ; $5d3f: $66
	add  b                                           ; $5d40: $80
	call z, $c082                                    ; $5d41: $cc $82 $c0
	add  b                                           ; $5d44: $80
	ld   a, b                                        ; $5d45: $78
	add  h                                           ; $5d46: $84
	inc  c                                           ; $5d47: $0c
	add  b                                           ; $5d48: $80
	call z, $0f8e                                    ; $5d49: $cc $8e $0f
	add  d                                           ; $5d4c: $82
	inc  bc                                          ; $5d4d: $03
	add  b                                           ; $5d4e: $80
	rlca                                             ; $5d4f: $07
	add  b                                           ; $5d50: $80
	rst  $38                                         ; $5d51: $ff
	add  b                                           ; $5d52: $80
	rlca                                             ; $5d53: $07
	add  h                                           ; $5d54: $84
	inc  bc                                          ; $5d55: $03
	nop                                              ; $5d56: $00
	add  $81                                         ; $5d57: $c6 $81
	call nz, $8480                                   ; $5d59: $c4 $80 $84
	add  b                                           ; $5d5c: $80
	inc  b                                           ; $5d5d: $04
	add  b                                           ; $5d5e: $80
	add  h                                           ; $5d5f: $84
	add  h                                           ; $5d60: $84
	call nz, $0101                                   ; $5d61: $c4 $01 $01
	inc  bc                                          ; $5d64: $03
	add  b                                           ; $5d65: $80
	rlca                                             ; $5d66: $07
	add  b                                           ; $5d67: $80
	rst  $38                                         ; $5d68: $ff
	add  d                                           ; $5d69: $82
	nop                                              ; $5d6a: $00
	add  c                                           ; $5d6b: $81
	rst  $38                                         ; $5d6c: $ff
	inc  b                                           ; $5d6d: $04
	nop                                              ; $5d6e: $00
	rst  $38                                         ; $5d6f: $ff
	nop                                              ; $5d70: $00
	add  $c4                                         ; $5d71: $c6 $c4
	add  b                                           ; $5d73: $80
	add  h                                           ; $5d74: $84
	add  h                                           ; $5d75: $84
	inc  b                                           ; $5d76: $04
	add  c                                           ; $5d77: $81
	db   $fc                                         ; $5d78: $fc
	inc  bc                                          ; $5d79: $03
	nop                                              ; $5d7a: $00
	cp   $00                                         ; $5d7b: $fe $00
	ld   h, e                                        ; $5d7d: $63
	adc  l                                           ; $5d7e: $8d
	inc  hl                                          ; $5d7f: $23
	nop                                              ; $5d80: $00
	halt                                             ; $5d81: $76
	add  e                                           ; $5d82: $83
	ld   [hl], $80                                   ; $5d83: $36 $80
	rst  $20                                         ; $5d85: $e7
	add  [hl]                                        ; $5d86: $86
	ld   [hl], $84                                   ; $5d87: $36 $84
	inc  c                                           ; $5d89: $0c
	add  b                                           ; $5d8a: $80
	db   $ec                                         ; $5d8b: $ec
	add  [hl]                                        ; $5d8c: $86
	inc  c                                           ; $5d8d: $0c
	adc  [hl]                                        ; $5d8e: $8e
	add  hl, de                                      ; $5d8f: $19
	add  h                                           ; $5d90: $84
	or   e                                           ; $5d91: $b3
	add  b                                           ; $5d92: $80
	cp   a                                           ; $5d93: $bf
	add  [hl]                                        ; $5d94: $86
	or   e                                           ; $5d95: $b3
	adc  [hl]                                        ; $5d96: $8e
	ld   h, [hl]                                     ; $5d97: $66
	add  h                                           ; $5d98: $84
	inc  c                                           ; $5d99: $0c
	add  b                                           ; $5d9a: $80
	rrca                                             ; $5d9b: $0f
	add  [hl]                                        ; $5d9c: $86
	inc  c                                           ; $5d9d: $0c

jr_018_5d9e:
	add  h                                           ; $5d9e: $84
	reti                                             ; $5d9f: $d9


	add  b                                           ; $5da0: $80
	sbc  a                                           ; $5da1: $9f
	add  [hl]                                        ; $5da2: $86
	add  hl, de                                      ; $5da3: $19
	add  h                                           ; $5da4: $84
	or   b                                           ; $5da5: $b0
	add  b                                           ; $5da6: $80
	ccf                                              ; $5da7: $3f
	add  [hl]                                        ; $5da8: $86
	or   b                                           ; $5da9: $b0
	add  b                                           ; $5daa: $80
	ld   h, [hl]                                     ; $5dab: $66
	add  d                                           ; $5dac: $82
	ld   h, b                                        ; $5dad: $60
	add  b                                           ; $5dae: $80
	inc  a                                           ; $5daf: $3c
	add  h                                           ; $5db0: $84
	ld   b, $80                                      ; $5db1: $06 $80
	ld   h, [hl]                                     ; $5db3: $66
	ld   a, [bc]                                     ; $5db4: $0a
	db   $fd                                         ; $5db5: $fd
	ret  nz                                          ; $5db6: $c0

	jp   $e8e0                                       ; $5db7: $c3 $e0 $e8


	ld   h, b                                        ; $5dba: $60
	ld   h, c                                        ; $5dbb: $61
	ld   b, $0a                                      ; $5dbc: $06 $0a
	adc  e                                           ; $5dbe: $8b
	res  0, b                                        ; $5dbf: $cb $80
	adc  e                                           ; $5dc1: $8b
	dec  bc                                          ; $5dc2: $0b
	xor  e                                           ; $5dc3: $ab
	dec  hl                                          ; $5dc4: $2b
	dec  sp                                          ; $5dc5: $3b
	add  sp, $20                                     ; $5dc6: $e8 $20
	inc  h                                           ; $5dc8: $24
	ldh  [$f8], a                                    ; $5dc9: $e0 $f8
	ldh  a, [$72]                                    ; $5dcb: $f0 $72
	ld   [hl], b                                     ; $5dcd: $70
	ld   a, h                                        ; $5dce: $7c
	add  e                                           ; $5dcf: $83
	ld   a, b                                        ; $5dd0: $78
	add  b                                           ; $5dd1: $80
	ld   e, b                                        ; $5dd2: $58
	add  hl, de                                      ; $5dd3: $19
	inc  l                                           ; $5dd4: $2c
	ld   c, $16                                      ; $5dd5: $0e $16
	ld   b, $26                                      ; $5dd7: $06 $26
	ld   b, $0b                                      ; $5dd9: $06 $0b
	inc  bc                                          ; $5ddb: $03
	inc  d                                           ; $5ddc: $14
	nop                                              ; $5ddd: $00
	dec  bc                                          ; $5dde: $0b
	nop                                              ; $5ddf: $00
	ld   b, $00                                      ; $5de0: $06 $00
	ld   bc, $4000                                   ; $5de2: $01 $00 $40
	rlca                                             ; $5de5: $07
	rra                                              ; $5de6: $1f
	rst  $10                                         ; $5de7: $d7
	ccf                                              ; $5de8: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5de9: $cf
	ld   e, h                                        ; $5dea: $5c
	ld   e, a                                        ; $5deb: $5f
	ld   e, h                                        ; $5dec: $5c
	rra                                              ; $5ded: $1f
	add  b                                           ; $5dee: $80
	ld   a, a                                        ; $5def: $7f
	ld   b, $be                                      ; $5df0: $06 $be
	dec  a                                           ; $5df2: $3d
	ld   a, h                                        ; $5df3: $7c
	rra                                              ; $5df4: $1f
	db   $e4                                         ; $5df5: $e4
	dec  sp                                          ; $5df6: $3b
	inc  de                                          ; $5df7: $13
	add  b                                           ; $5df8: $80
	ld   d, e                                        ; $5df9: $53
	ld   bc, $c2d3                                   ; $5dfa: $01 $d3 $c2
	add  b                                           ; $5dfd: $80
	jp   z, $da17                                    ; $5dfe: $ca $17 $da

	reti                                             ; $5e01: $d9


	or   c                                           ; $5e02: $b1
	or   b                                           ; $5e03: $b0
	ld   hl, sp-$05                                  ; $5e04: $f8 $fb
	ret  nz                                          ; $5e06: $c0

	sub  l                                           ; $5e07: $95
	ld   d, b                                        ; $5e08: $50
	ld   c, d                                        ; $5e09: $4a
	ld   b, b                                        ; $5e0a: $40
	ld   d, h                                        ; $5e0b: $54
	ld   b, b                                        ; $5e0c: $40
	xor  b                                           ; $5e0d: $a8
	add  b                                           ; $5e0e: $80
	sub  b                                           ; $5e0f: $90
	add  b                                           ; $5e10: $80
	ld   b, b                                        ; $5e11: $40
	nop                                              ; $5e12: $00
	and  b                                           ; $5e13: $a0
	nop                                              ; $5e14: $00
	ld   b, b                                        ; $5e15: $40
	nop                                              ; $5e16: $00
	db   $e3                                         ; $5e17: $e3
	add  c                                           ; $5e18: $81
	inc  hl                                          ; $5e19: $23
	add  h                                           ; $5e1a: $84
	jr   nz, jr_018_5d9e                             ; $5e1b: $20 $81

	ccf                                              ; $5e1d: $3f
	ld   [bc], a                                     ; $5e1e: $02
	nop                                              ; $5e1f: $00
	ld   a, a                                        ; $5e20: $7f
	nop                                              ; $5e21: $00
	add  b                                           ; $5e22: $80
	ld   [hl], $80                                   ; $5e23: $36 $80
	scf                                              ; $5e25: $37
	add  h                                           ; $5e26: $84
	nop                                              ; $5e27: $00
	add  c                                           ; $5e28: $81
	rst  $38                                         ; $5e29: $ff
	ld   [bc], a                                     ; $5e2a: $02
	nop                                              ; $5e2b: $00
	rst  $38                                         ; $5e2c: $ff
	nop                                              ; $5e2d: $00
	add  b                                           ; $5e2e: $80
	inc  c                                           ; $5e2f: $0c
	add  b                                           ; $5e30: $80
	rst  $28                                         ; $5e31: $ef
	add  h                                           ; $5e32: $84
	nop                                              ; $5e33: $00
	add  c                                           ; $5e34: $81
	rst  $38                                         ; $5e35: $ff
	ld   [bc], a                                     ; $5e36: $02
	nop                                              ; $5e37: $00
	rst  $38                                         ; $5e38: $ff
	nop                                              ; $5e39: $00
	add  b                                           ; $5e3a: $80
	add  hl, de                                      ; $5e3b: $19
	add  b                                           ; $5e3c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e3d: $cf
	add  h                                           ; $5e3e: $84
	nop                                              ; $5e3f: $00
	add  c                                           ; $5e40: $81
	rst  $38                                         ; $5e41: $ff
	ld   [bc], a                                     ; $5e42: $02
	nop                                              ; $5e43: $00
	rst  $38                                         ; $5e44: $ff
	nop                                              ; $5e45: $00
	add  b                                           ; $5e46: $80
	or   e                                           ; $5e47: $b3
	add  b                                           ; $5e48: $80
	inc  sp                                          ; $5e49: $33
	add  h                                           ; $5e4a: $84
	nop                                              ; $5e4b: $00
	add  c                                           ; $5e4c: $81
	rst  $38                                         ; $5e4d: $ff
	ld   [bc], a                                     ; $5e4e: $02
	nop                                              ; $5e4f: $00
	rst  $38                                         ; $5e50: $ff
	nop                                              ; $5e51: $00
	add  b                                           ; $5e52: $80
	ld   h, [hl]                                     ; $5e53: $66
	add  b                                           ; $5e54: $80
	ld   a, h                                        ; $5e55: $7c
	add  h                                           ; $5e56: $84
	nop                                              ; $5e57: $00
	add  c                                           ; $5e58: $81
	rst  $38                                         ; $5e59: $ff
	ld   [bc], a                                     ; $5e5a: $02
	nop                                              ; $5e5b: $00
	rst  $38                                         ; $5e5c: $ff
	nop                                              ; $5e5d: $00
	add  d                                           ; $5e5e: $82
	inc  c                                           ; $5e5f: $0c
	add  h                                           ; $5e60: $84
	nop                                              ; $5e61: $00
	add  c                                           ; $5e62: $81
	rst  $38                                         ; $5e63: $ff
	ld   [bc], a                                     ; $5e64: $02
	nop                                              ; $5e65: $00
	rst  $38                                         ; $5e66: $ff
	nop                                              ; $5e67: $00
	add  d                                           ; $5e68: $82
	add  hl, de                                      ; $5e69: $19
	add  h                                           ; $5e6a: $84
	nop                                              ; $5e6b: $00
	add  c                                           ; $5e6c: $81
	rst  $38                                         ; $5e6d: $ff
	ld   [bc], a                                     ; $5e6e: $02
	nop                                              ; $5e6f: $00
	rst  $38                                         ; $5e70: $ff
	nop                                              ; $5e71: $00
	add  b                                           ; $5e72: $80
	or   b                                           ; $5e73: $b0
	add  b                                           ; $5e74: $80
	cp   a                                           ; $5e75: $bf
	add  h                                           ; $5e76: $84
	nop                                              ; $5e77: $00
	add  c                                           ; $5e78: $81
	rst  $38                                         ; $5e79: $ff
	ld   [bc], a                                     ; $5e7a: $02
	nop                                              ; $5e7b: $00
	rst  $38                                         ; $5e7c: $ff
	nop                                              ; $5e7d: $00
	add  b                                           ; $5e7e: $80
	ld   h, [hl]                                     ; $5e7f: $66
	add  b                                           ; $5e80: $80
	inc  a                                           ; $5e81: $3c
	add  h                                           ; $5e82: $84
	nop                                              ; $5e83: $00
	add  c                                           ; $5e84: $81
	rst  $38                                         ; $5e85: $ff
	dec  c                                           ; $5e86: $0d

jr_018_5e87:
	nop                                              ; $5e87: $00
	rst  $38                                         ; $5e88: $ff
	nop                                              ; $5e89: $00
	db   $fd                                         ; $5e8a: $fd
	ret  nz                                          ; $5e8b: $c0

	jp   $e8e0                                       ; $5e8c: $c3 $e0 $e8


	ld   h, b                                        ; $5e8f: $60
	ld   h, c                                        ; $5e90: $61
	ld   b, $0a                                      ; $5e91: $06 $0a
	adc  e                                           ; $5e93: $8b
	res  0, b                                        ; $5e94: $cb $80
	adc  e                                           ; $5e96: $8b
	dec  bc                                          ; $5e97: $0b
	xor  e                                           ; $5e98: $ab
	dec  hl                                          ; $5e99: $2b
	dec  sp                                          ; $5e9a: $3b
	add  sp, $20                                     ; $5e9b: $e8 $20
	inc  h                                           ; $5e9d: $24
	ldh  [$f8], a                                    ; $5e9e: $e0 $f8
	ldh  a, [$72]                                    ; $5ea0: $f0 $72
	ld   [hl], b                                     ; $5ea2: $70
	ld   a, h                                        ; $5ea3: $7c
	add  e                                           ; $5ea4: $83
	ld   a, b                                        ; $5ea5: $78
	add  b                                           ; $5ea6: $80
	ld   e, b                                        ; $5ea7: $58
	ld   [hl+], a                                    ; $5ea8: $22
	inc  l                                           ; $5ea9: $2c
	ld   c, $16                                      ; $5eaa: $0e $16
	ld   b, $26                                      ; $5eac: $06 $26
	ld   b, $0b                                      ; $5eae: $06 $0b
	inc  bc                                          ; $5eb0: $03
	inc  d                                           ; $5eb1: $14
	nop                                              ; $5eb2: $00
	dec  bc                                          ; $5eb3: $0b
	nop                                              ; $5eb4: $00
	ld   b, $00                                      ; $5eb5: $06 $00
	ld   bc, $4000                                   ; $5eb7: $01 $00 $40
	rlca                                             ; $5eba: $07
	sbc  a                                           ; $5ebb: $9f
	ld   d, a                                        ; $5ebc: $57
	rrca                                             ; $5ebd: $0f
	rst  $38                                         ; $5ebe: $ff
	inc  e                                           ; $5ebf: $1c
	ld   a, a                                        ; $5ec0: $7f
	inc  e                                           ; $5ec1: $1c
	ccf                                              ; $5ec2: $3f
	ld   a, a                                        ; $5ec3: $7f
	ld   a, b                                        ; $5ec4: $78
	cp   b                                           ; $5ec5: $b8
	ccf                                              ; $5ec6: $3f
	ld   a, a                                        ; $5ec7: $7f
	rra                                              ; $5ec8: $1f
	db   $e4                                         ; $5ec9: $e4
	dec  sp                                          ; $5eca: $3b
	inc  de                                          ; $5ecb: $13
	add  b                                           ; $5ecc: $80
	ld   d, e                                        ; $5ecd: $53
	ld   bc, $c2d3                                   ; $5ece: $01 $d3 $c2
	add  b                                           ; $5ed1: $80
	jp   z, $9a17                                    ; $5ed2: $ca $17 $9a

	sbc  c                                           ; $5ed5: $99
	ld   sp, $f830                                   ; $5ed6: $31 $30 $f8
	ei                                               ; $5ed9: $fb
	ret  nz                                          ; $5eda: $c0

	sub  l                                           ; $5edb: $95
	ld   d, b                                        ; $5edc: $50
	ld   c, d                                        ; $5edd: $4a
	ld   b, b                                        ; $5ede: $40
	ld   d, h                                        ; $5edf: $54
	ld   b, b                                        ; $5ee0: $40
	xor  b                                           ; $5ee1: $a8
	add  b                                           ; $5ee2: $80
	sub  b                                           ; $5ee3: $90
	add  b                                           ; $5ee4: $80
	ld   b, b                                        ; $5ee5: $40
	nop                                              ; $5ee6: $00
	and  b                                           ; $5ee7: $a0
	nop                                              ; $5ee8: $00
	ld   b, b                                        ; $5ee9: $40
	nop                                              ; $5eea: $00
	xor  [hl]                                        ; $5eeb: $ae
	add  c                                           ; $5eec: $81
	ld   c, $80                                      ; $5eed: $0e $80
	ld   a, [bc]                                     ; $5eef: $0a
	add  b                                           ; $5ef0: $80
	ld   [bc], a                                     ; $5ef1: $02
	ld   [$020a], sp                                 ; $5ef2: $08 $0a $02
	inc  de                                          ; $5ef5: $13
	inc  bc                                          ; $5ef6: $03
	dec  [hl]                                        ; $5ef7: $35
	ld   bc, $0004                                   ; $5ef8: $01 $04 $00
	db   $d3                                         ; $5efb: $d3
	add  b                                           ; $5efc: $80
	ld   [$4080], sp                                 ; $5efd: $08 $80 $40
	inc  bc                                          ; $5f00: $03
	jp   c, $aa8a                                    ; $5f01: $da $8a $aa

	jr   nz, jr_018_5e87                             ; $5f04: $20 $81

	ld   [hl], l                                     ; $5f06: $75
	nop                                              ; $5f07: $00

jr_018_5f08:
	ld   [hl], h                                     ; $5f08: $74
	add  b                                           ; $5f09: $80
	nop                                              ; $5f0a: $00
	dec  b                                           ; $5f0b: $05
	ld   b, c                                        ; $5f0c: $41
	xor  h                                           ; $5f0d: $ac
	add  sp, -$38                                    ; $5f0e: $e8 $c8
	add  l                                           ; $5f10: $85
	ret  nz                                          ; $5f11: $c0

	add  b                                           ; $5f12: $80
	ld   a, [hl+]                                    ; $5f13: $2a
	ld   bc, $22aa                                   ; $5f14: $01 $aa $22
	add  b                                           ; $5f17: $80
	ld   h, a                                        ; $5f18: $67
	add  b                                           ; $5f19: $80
	ld   l, a                                        ; $5f1a: $6f
	add  c                                           ; $5f1b: $81
	ld   h, b                                        ; $5f1c: $60
	inc  b                                           ; $5f1d: $04
	sub  [hl]                                        ; $5f1e: $96
	jr   nc, jr_018_5f5d                             ; $5f1f: $30 $3c

	jr   c, jr_018_5f3b                              ; $5f21: $38 $18

	add  c                                           ; $5f23: $81
	ret  c                                           ; $5f24: $d8

	ld   [$5054], sp                                 ; $5f25: $08 $54 $50
	ld   [de], a                                     ; $5f28: $12
	sub  b                                           ; $5f29: $90

jr_018_5f2a:
	xor  b                                           ; $5f2a: $a8
	jr   nz, jr_018_5f35                             ; $5f2b: $20 $08

	add  b                                           ; $5f2d: $80
	adc  h                                           ; $5f2e: $8c
	add  b                                           ; $5f2f: $80
	ld   [bc], a                                     ; $5f30: $02
	add  c                                           ; $5f31: $81
	inc  bc                                          ; $5f32: $03
	ld   b, $07                                      ; $5f33: $06 $07

jr_018_5f35:
	ld   bc, $000b                                   ; $5f35: $01 $0b $00
	dec  b                                           ; $5f38: $05
	nop                                              ; $5f39: $00
	inc  bc                                          ; $5f3a: $03

jr_018_5f3b:
	add  c                                           ; $5f3b: $81

jr_018_5f3c:
	nop                                              ; $5f3c: $00
	rlca                                             ; $5f3d: $07
	jr   nc, jr_018_5f41                             ; $5f3e: $30 $01

	rlca                                             ; $5f40: $07

jr_018_5f41:
	ld   d, l                                        ; $5f41: $55

jr_018_5f42:
	ld   a, a                                        ; $5f42: $7f
	ld   h, e                                        ; $5f43: $63
	cpl                                              ; $5f44: $2f
	ld   l, a                                        ; $5f45: $6f
	add  b                                           ; $5f46: $80
	cpl                                              ; $5f47: $2f
	ld   de, $2f8f                                   ; $5f48: $11 $8f $2f
	ld   c, a                                        ; $5f4b: $4f

jr_018_5f4c:
	rrca                                             ; $5f4c: $0f
	or   [hl]                                        ; $5f4d: $b6
	rrca                                             ; $5f4e: $0f
	ld   l, a                                        ; $5f4f: $6f
	ldh  [$f2], a                                    ; $5f50: $e0 $f2
	ld   [$f1ff], a                                  ; $5f52: $ea $ff $f1
	dec  a                                           ; $5f55: $3d
	db   $fd                                         ; $5f56: $fd
	dec  a                                           ; $5f57: $3d
	db   $fd                                         ; $5f58: $fd
	db   $fc                                         ; $5f59: $fc
	db   $fd                                         ; $5f5a: $fd
	add  b                                           ; $5f5b: $80
	db   $fc                                         ; $5f5c: $fc

jr_018_5f5d:
	ld   [bc], a                                     ; $5f5d: $02
	db   $db                                         ; $5f5e: $db
	inc  a                                           ; $5f5f: $3c
	dec  e                                           ; $5f60: $1d
	add  b                                           ; $5f61: $80
	db   $10                                         ; $5f62: $10
	add  c                                           ; $5f63: $81
	or   b                                           ; $5f64: $b0
	ld   [de], a                                     ; $5f65: $12
	jr   c, jr_018_5f08                              ; $5f66: $38 $a0

	inc  [hl]                                        ; $5f68: $34
	nop                                              ; $5f69: $00
	ld   l, b                                        ; $5f6a: $68
	nop                                              ; $5f6b: $00
	or   b                                           ; $5f6c: $b0
	nop                                              ; $5f6d: $00
	ld   b, b                                        ; $5f6e: $40
	nop                                              ; $5f6f: $00
	or   a                                           ; $5f70: $b7
	nop                                              ; $5f71: $00
	jr   jr_018_5f79                                 ; $5f72: $18 $05

	ld   b, a                                        ; $5f74: $47
	dec  c                                           ; $5f75: $0d
	dec  sp                                          ; $5f76: $3b
	add  hl, de                                      ; $5f77: $19
	dec  d                                           ; $5f78: $15

jr_018_5f79:
	add  c                                           ; $5f79: $81
	inc  d                                           ; $5f7a: $14
	inc  c                                           ; $5f7b: $0c
	dec  l                                           ; $5f7c: $2d
	inc  c                                           ; $5f7d: $0c
	ld   c, h                                        ; $5f7e: $4c
	ld   c, $f5                                      ; $5f7f: $0e $f5
	push de                                          ; $5f81: $d5
	pop  bc                                          ; $5f82: $c1
	sbc  h                                           ; $5f83: $9c
	call c, $3c3d                                    ; $5f84: $dc $3d $3c
	ld   a, $be                                      ; $5f87: $3e $be
	add  d                                           ; $5f89: $82
	ld   a, [hl]                                     ; $5f8a: $7e
	add  b                                           ; $5f8b: $80
	ld   [bc], a                                     ; $5f8c: $02
	inc  bc                                          ; $5f8d: $03
	rlca                                             ; $5f8e: $07
	ld   a, c                                        ; $5f8f: $79
	nop                                              ; $5f90: $00
	ld   e, $81                                      ; $5f91: $1e $81
	nop                                              ; $5f93: $00
	ld   [bc], a                                     ; $5f94: $02
	inc  e                                           ; $5f95: $1c
	ld   [bc], a                                     ; $5f96: $02
	ld   a, b                                        ; $5f97: $78
	add  c                                           ; $5f98: $81
	nop                                              ; $5f99: $00
	ld   b, $7a                                      ; $5f9a: $06 $7a
	ld   [bc], a                                     ; $5f9c: $02
	ld   a, [hl]                                     ; $5f9d: $7e
	nop                                              ; $5f9e: $00
	inc  a                                           ; $5f9f: $3c
	ld   b, d                                        ; $5fa0: $42
	ld   e, $81                                      ; $5fa1: $1e $81
	nop                                              ; $5fa3: $00
	ld   [bc], a                                     ; $5fa4: $02
	inc  e                                           ; $5fa5: $1c
	ld   [bc], a                                     ; $5fa6: $02
	jr   jr_018_5f2a                                 ; $5fa7: $18 $81

	nop                                              ; $5fa9: $00
	ld   b, $5a                                      ; $5faa: $06 $5a
	ld   b, d                                        ; $5fac: $42
	ld   a, [hl]                                     ; $5fad: $7e
	nop                                              ; $5fae: $00
	inc  a                                           ; $5faf: $3c
	ld   b, d                                        ; $5fb0: $42
	ld   a, b                                        ; $5fb1: $78
	adc  c                                           ; $5fb2: $89
	nop                                              ; $5fb3: $00
	inc  b                                           ; $5fb4: $04
	ld   b, $00                                      ; $5fb5: $06 $00
	inc  a                                           ; $5fb7: $3c
	ld   b, d                                        ; $5fb8: $42
	jr   jr_018_5f3c                                 ; $5fb9: $18 $81

	nop                                              ; $5fbb: $00
	ld   [bc], a                                     ; $5fbc: $02
	jr   jr_018_5fbf                                 ; $5fbd: $18 $00

jr_018_5fbf:
	jr   jr_018_5f42                                 ; $5fbf: $18 $81

	nop                                              ; $5fc1: $00
	ld   b, $5a                                      ; $5fc2: $06 $5a
	ld   b, d                                        ; $5fc4: $42
	ld   a, [hl]                                     ; $5fc5: $7e
	nop                                              ; $5fc6: $00
	inc  a                                           ; $5fc7: $3c
	ld   b, d                                        ; $5fc8: $42
	jr   jr_018_5f4c                                 ; $5fc9: $18 $81

	nop                                              ; $5fcb: $00
	ld   [bc], a                                     ; $5fcc: $02
	ld   e, b                                        ; $5fcd: $58
	ld   b, b                                        ; $5fce: $40
	ld   a, b                                        ; $5fcf: $78
	add  c                                           ; $5fd0: $81
	nop                                              ; $5fd1: $00
	ld   [bc], a                                     ; $5fd2: $02
	ld   a, [hl-]                                    ; $5fd3: $3a
	ld   b, d                                        ; $5fd4: $42
	ld   a, [hl]                                     ; $5fd5: $7e
	adc  a                                           ; $5fd6: $8f
	nop                                              ; $5fd7: $00
	nop                                              ; $5fd8: $00
	ld   l, $81                                      ; $5fd9: $2e $81
	ld   c, $80                                      ; $5fdb: $0e $80
	ld   a, [bc]                                     ; $5fdd: $0a
	add  b                                           ; $5fde: $80
	ld   [bc], a                                     ; $5fdf: $02
	ld   [$020a], sp                                 ; $5fe0: $08 $0a $02
	inc  de                                          ; $5fe3: $13
	inc  bc                                          ; $5fe4: $03
	dec  [hl]                                        ; $5fe5: $35
	ld   bc, $0004                                   ; $5fe6: $01 $04 $00
	db   $d3                                         ; $5fe9: $d3
	add  b                                           ; $5fea: $80
	ld   [$4080], sp                                 ; $5feb: $08 $80 $40
	rrca                                             ; $5fee: $0f
	jp   c, $aa8a                                    ; $5fef: $da $8a $aa

	jr   nz, jr_018_6069                             ; $5ff2: $20 $75

jr_018_5ff4:
	dec  [hl]                                        ; $5ff4: $35
	ld   b, l                                        ; $5ff5: $45
	inc  c                                           ; $5ff6: $0c
	jr   c, jr_018_6029                              ; $5ff7: $38 $30

	ld   b, c                                        ; $5ff9: $41
	xor  h                                           ; $5ffa: $ac
	add  sp, -$38                                    ; $5ffb: $e8 $c8
	add  l                                           ; $5ffd: $85
	ret  nz                                          ; $5ffe: $c0

	add  b                                           ; $5fff: $80
	ld   a, [hl+]                                    ; $6000: $2a
	ld   bc, $22aa                                   ; $6001: $01 $aa $22
	add  b                                           ; $6004: $80
	ld   h, a                                        ; $6005: $67
	add  hl, bc                                      ; $6006: $09
	ld   l, b                                        ; $6007: $68
	ld   l, h                                        ; $6008: $6c
	ld   h, a                                        ; $6009: $67
	ld   h, e                                        ; $600a: $63
	ld   h, b                                        ; $600b: $60
	sub  [hl]                                        ; $600c: $96
	jr   nc, jr_018_604b                             ; $600d: $30 $3c

	jr   c, jr_018_6029                              ; $600f: $38 $18

	add  c                                           ; $6011: $81
	ret  c                                           ; $6012: $d8

	ld   [$5054], sp                                 ; $6013: $08 $54 $50
	sub  d                                           ; $6016: $92
	sub  b                                           ; $6017: $90
	jr   z, jr_018_603a                              ; $6018: $28 $20

	ld   [$8c80], sp                                 ; $601a: $08 $80 $8c
	add  b                                           ; $601d: $80
	ld   [bc], a                                     ; $601e: $02
	add  c                                           ; $601f: $81
	inc  bc                                          ; $6020: $03
	ld   b, $07                                      ; $6021: $06 $07
	ld   bc, $000b                                   ; $6023: $01 $0b $00
	dec  b                                           ; $6026: $05
	nop                                              ; $6027: $00
	inc  bc                                          ; $6028: $03

jr_018_6029:
	add  c                                           ; $6029: $81
	nop                                              ; $602a: $00
	jr   nz, jr_018_605d                             ; $602b: $20 $30

	ld   bc, $5507                                   ; $602d: $01 $07 $55
	ld   h, e                                        ; $6030: $63
	ld   a, a                                        ; $6031: $7f
	rrca                                             ; $6032: $0f
	ld   a, a                                        ; $6033: $7f
	rrca                                             ; $6034: $0f
	dec  sp                                          ; $6035: $3b
	sbc  a                                           ; $6036: $9f
	inc  a                                           ; $6037: $3c
	ld   e, b                                        ; $6038: $58
	rra                                              ; $6039: $1f

jr_018_603a:
	or   a                                           ; $603a: $b7
	rrca                                             ; $603b: $0f
	ld   l, [hl]                                     ; $603c: $6e
	ldh  [$f2], a                                    ; $603d: $e0 $f2
	ld   [$fff1], a                                  ; $603f: $ea $f1 $ff
	inc  a                                           ; $6042: $3c
	rst  $38                                         ; $6043: $ff
	inc  a                                           ; $6044: $3c
	rst  $30                                         ; $6045: $f7
	cp   $0f                                         ; $6046: $fe $0f
	ld   b, $fe                                      ; $6048: $06 $fe
	ei                                               ; $604a: $fb

jr_018_604b:
	db   $fc                                         ; $604b: $fc
	db   $fd                                         ; $604c: $fd
	add  b                                           ; $604d: $80
	db   $10                                         ; $604e: $10
	add  c                                           ; $604f: $81
	or   b                                           ; $6050: $b0
	ld   [de], a                                     ; $6051: $12
	jr   c, jr_018_5ff4                              ; $6052: $38 $a0

	inc  [hl]                                        ; $6054: $34
	nop                                              ; $6055: $00
	ld   l, b                                        ; $6056: $68
	nop                                              ; $6057: $00
	or   b                                           ; $6058: $b0
	nop                                              ; $6059: $00
	ld   b, b                                        ; $605a: $40
	nop                                              ; $605b: $00
	or   a                                           ; $605c: $b7

jr_018_605d:
	nop                                              ; $605d: $00
	jr   jr_018_6065                                 ; $605e: $18 $05

	ld   b, a                                        ; $6060: $47
	dec  c                                           ; $6061: $0d
	dec  sp                                          ; $6062: $3b
	add  hl, de                                      ; $6063: $19
	dec  d                                           ; $6064: $15

jr_018_6065:
	add  c                                           ; $6065: $81
	inc  d                                           ; $6066: $14
	inc  c                                           ; $6067: $0c
	dec  l                                           ; $6068: $2d

jr_018_6069:
	inc  c                                           ; $6069: $0c
	ld   c, h                                        ; $606a: $4c
	ld   c, $f5                                      ; $606b: $0e $f5
	push de                                          ; $606d: $d5
	pop  bc                                          ; $606e: $c1
	sbc  h                                           ; $606f: $9c
	call c, $3c3d                                    ; $6070: $dc $3d $3c
	ld   a, $be                                      ; $6073: $3e $be
	add  b                                           ; $6075: $80
	ld   a, [hl]                                     ; $6076: $7e
	add  b                                           ; $6077: $80
	ld   c, $80                                      ; $6078: $0e $80
	and  $80                                         ; $607a: $e6 $80
	inc  bc                                          ; $607c: $03
	ld   bc, $00ff                                   ; $607d: $01 $ff $00
	adc  e                                           ; $6080: $8b
	rst  $38                                         ; $6081: $ff
	ld   d, $00                                      ; $6082: $16 $00
	rst  $38                                         ; $6084: $ff
	jr   nz, @+$01                                   ; $6085: $20 $ff

	adc  $ff                                         ; $6087: $ce $ff
	db   $fc                                         ; $6089: $fc
	rst  $38                                         ; $608a: $ff
	pop  hl                                          ; $608b: $e1
	rst  $38                                         ; $608c: $ff
	rst  $30                                         ; $608d: $f7
	rst  $38                                         ; $608e: $ff
	db   $e3                                         ; $608f: $e3
	rst  $38                                         ; $6090: $ff
	rst  ToBoot                                         ; $6091: $c7
	rst  $38                                         ; $6092: $ff
	jr   nz, @+$01                                   ; $6093: $20 $ff

	jr   nz, @+$01                                   ; $6095: $20 $ff

	rra                                              ; $6097: $1f
	rst  $38                                         ; $6098: $ff
	ccf                                              ; $6099: $3f
	add  a                                           ; $609a: $87
	rst  $38                                         ; $609b: $ff
	ld   b, $04                                      ; $609c: $06 $04
	ei                                               ; $609e: $fb
	inc  b                                           ; $609f: $04
	rst  $38                                         ; $60a0: $ff
	ld   hl, sp-$01                                  ; $60a1: $f8 $ff
	db   $fc                                         ; $60a3: $fc
	add  a                                           ; $60a4: $87
	rst  $38                                         ; $60a5: $ff
	inc  c                                           ; $60a6: $0c
	nop                                              ; $60a7: $00
	rst  $38                                         ; $60a8: $ff
	nop                                              ; $60a9: $00
	rst  $38                                         ; $60aa: $ff
	ld   a, a                                        ; $60ab: $7f
	rst  $38                                         ; $60ac: $ff
	rra                                              ; $60ad: $1f
	rst  $38                                         ; $60ae: $ff
	adc  a                                           ; $60af: $8f
	rst  $38                                         ; $60b0: $ff
	rst  $30                                         ; $60b1: $f7
	rst  $38                                         ; $60b2: $ff
	rst  $28                                         ; $60b3: $ef
	add  c                                           ; $60b4: $81
	rst  $38                                         ; $60b5: $ff
	nop                                              ; $60b6: $00
	rst  $30                                         ; $60b7: $f7
	add  c                                           ; $60b8: $81
	nop                                              ; $60b9: $00
	add  c                                           ; $60ba: $81
	rst  $38                                         ; $60bb: $ff
	add  b                                           ; $60bc: $80
	ccf                                              ; $60bd: $3f
	add  b                                           ; $60be: $80
	ld   a, a                                        ; $60bf: $7f
	add  c                                           ; $60c0: $81
	rst  $38                                         ; $60c1: $ff
	add  h                                           ; $60c2: $84

Jump_018_60c3:
	nop                                              ; $60c3: $00
	adc  b                                           ; $60c4: $88
	rst  $38                                         ; $60c5: $ff
	add  h                                           ; $60c6: $84
	nop                                              ; $60c7: $00
	add  b                                           ; $60c8: $80
	db   $fd                                         ; $60c9: $fd
	add  b                                           ; $60ca: $80
	cp   $84                                         ; $60cb: $fe $84
	rst  $38                                         ; $60cd: $ff
	add  h                                           ; $60ce: $84
	nop                                              ; $60cf: $00
	add  b                                           ; $60d0: $80
	rst  $38                                         ; $60d1: $ff
	add  b                                           ; $60d2: $80
	rra                                              ; $60d3: $1f
	add  b                                           ; $60d4: $80
	rst  $20                                         ; $60d5: $e7
	add  b                                           ; $60d6: $80
	ldh  a, [$80]                                    ; $60d7: $f0 $80
	cp   $84                                         ; $60d9: $fe $84
	nop                                              ; $60db: $00
	add  [hl]                                        ; $60dc: $86
	rst  $38                                         ; $60dd: $ff
	add  b                                           ; $60de: $80
	ccf                                              ; $60df: $3f
	add  h                                           ; $60e0: $84
	nop                                              ; $60e1: $00
	add  b                                           ; $60e2: $80
	ei                                               ; $60e3: $fb
	add  b                                           ; $60e4: $80
	ld   hl, sp-$80                                  ; $60e5: $f8 $80
	rst  $38                                         ; $60e7: $ff
	add  b                                           ; $60e8: $80
	cp   $80                                         ; $60e9: $fe $80
	db   $fd                                         ; $60eb: $fd
	add  b                                           ; $60ec: $80
	nop                                              ; $60ed: $00
	ld   [bc], a                                     ; $60ee: $02
	jp   $1842                                       ; $60ef: $c3 $42 $18


	add  a                                           ; $60f2: $87
	nop                                              ; $60f3: $00
	inc  b                                           ; $60f4: $04
	ld   e, d                                        ; $60f5: $5a
	ld   b, d                                        ; $60f6: $42
	ld   a, [hl]                                     ; $60f7: $7e
	nop                                              ; $60f8: $00
	jr   @-$73                                       ; $60f9: $18 $8b

	nop                                              ; $60fb: $00
	inc  b                                           ; $60fc: $04
	jr   jr_018_60ff                                 ; $60fd: $18 $00

jr_018_60ff:
	ld   a, h                                        ; $60ff: $7c
	ld   [bc], a                                     ; $6100: $02
	ld   a, b                                        ; $6101: $78
	add  c                                           ; $6102: $81
	nop                                              ; $6103: $00
	ld   [bc], a                                     ; $6104: $02
	ld   a, [hl-]                                    ; $6105: $3a
	ld   b, d                                        ; $6106: $42
	ld   e, $81                                      ; $6107: $1e $81
	nop                                              ; $6109: $00
	ld   b, $1e                                      ; $610a: $06 $1e
	nop                                              ; $610c: $00
	ld   a, [hl]                                     ; $610d: $7e
	nop                                              ; $610e: $00
	ld   a, h                                        ; $610f: $7c
	ld   [bc], a                                     ; $6110: $02
	ld   a, b                                        ; $6111: $78
	add  c                                           ; $6112: $81
	nop                                              ; $6113: $00
	ld   [bc], a                                     ; $6114: $02
	jr   c, jr_018_6157                              ; $6115: $38 $40

	ld   a, b                                        ; $6117: $78
	add  c                                           ; $6118: $81
	nop                                              ; $6119: $00
	inc  b                                           ; $611a: $04
	ld   a, d                                        ; $611b: $7a
	ld   [bc], a                                     ; $611c: $02
	ld   a, [hl]                                     ; $611d: $7e
	nop                                              ; $611e: $00
	ld   h, [hl]                                     ; $611f: $66
	add  l                                           ; $6120: $85
	nop                                              ; $6121: $00
	ld   [bc], a                                     ; $6122: $02
	ld   e, b                                        ; $6123: $58
	ld   b, b                                        ; $6124: $40
	ld   a, b                                        ; $6125: $78
	add  c                                           ; $6126: $81
	nop                                              ; $6127: $00
	nop                                              ; $6128: $00
	ld   b, $82                                      ; $6129: $06 $82
	nop                                              ; $612b: $00
	dec  c                                           ; $612c: $0d
	rra                                              ; $612d: $1f
	inc  d                                           ; $612e: $14
	ccf                                              ; $612f: $3f
	inc  hl                                          ; $6130: $23
	ld   a, a                                        ; $6131: $7f
	ld   h, a                                        ; $6132: $67
	ld   a, a                                        ; $6133: $7f
	ld   h, a                                        ; $6134: $67
	ld   a, a                                        ; $6135: $7f
	ld   h, a                                        ; $6136: $67
	ld   a, a                                        ; $6137: $7f
	ld   h, a                                        ; $6138: $67
	ld   a, a                                        ; $6139: $7f
	ld   l, b                                        ; $613a: $68
	add  b                                           ; $613b: $80
	nop                                              ; $613c: $00
	ld   [bc], a                                     ; $613d: $02
	ldh  [rAUD1HIGH], a                              ; $613e: $e0 $14
	db   $f4                                         ; $6140: $f4
	add  b                                           ; $6141: $80
	or   $82                                         ; $6142: $f6 $82
	xor  $80                                         ; $6144: $ee $80
	sub  $80                                         ; $6146: $d6 $80
	cp   d                                           ; $6148: $ba
	add  c                                           ; $6149: $81
	nop                                              ; $614a: $00
	dec  c                                           ; $614b: $0d
	ld   a, a                                        ; $614c: $7f
	ld   l, b                                        ; $614d: $68
	ld   a, a                                        ; $614e: $7f
	ld   h, a                                        ; $614f: $67
	ld   a, a                                        ; $6150: $7f
	ld   h, a                                        ; $6151: $67
	ld   a, a                                        ; $6152: $7f
	ld   h, a                                        ; $6153: $67
	ld   a, a                                        ; $6154: $7f
	ld   h, a                                        ; $6155: $67
	ld   a, a                                        ; $6156: $7f

jr_018_6157:
	ld   [hl], a                                     ; $6157: $77
	ld   a, a                                        ; $6158: $7f
	ld   h, b                                        ; $6159: $60
	add  b                                           ; $615a: $80
	nop                                              ; $615b: $00
	ld   bc, $607f                                   ; $615c: $01 $7f $60
	adc  c                                           ; $615f: $89
	ld   a, a                                        ; $6160: $7f
	nop                                              ; $6161: $00
	ld   h, b                                        ; $6162: $60
	add  b                                           ; $6163: $80
	nop                                              ; $6164: $00
	ld   [bc], a                                     ; $6165: $02
	ld   [hl], e                                     ; $6166: $73
	ld   l, [hl]                                     ; $6167: $6e
	ld   a, l                                        ; $6168: $7d
	add  b                                           ; $6169: $80
	ld   a, [hl]                                     ; $616a: $7e
	add  [hl]                                        ; $616b: $86
	ld   a, a                                        ; $616c: $7f
	nop                                              ; $616d: $00
	ld   h, b                                        ; $616e: $60
	add  b                                           ; $616f: $80
	nop                                              ; $6170: $00
	ld   bc, $00fe                                   ; $6171: $01 $fe $00
	add  c                                           ; $6174: $81
	cp   $80                                         ; $6175: $fe $80
	ld   a, [hl]                                     ; $6177: $7e
	add  b                                           ; $6178: $80
	ld   a, $80                                      ; $6179: $3e $80
	cp   [hl]                                        ; $617b: $be
	add  b                                           ; $617c: $80
	sbc  [hl]                                        ; $617d: $9e
	add  c                                           ; $617e: $81
	nop                                              ; $617f: $00
	inc  bc                                          ; $6180: $03
	rra                                              ; $6181: $1f
	db   $10                                         ; $6182: $10

jr_018_6183:
	ccf                                              ; $6183: $3f
	cpl                                              ; $6184: $2f
	add  a                                           ; $6185: $87
	ld   a, a                                        ; $6186: $7f
	nop                                              ; $6187: $00
	ld   h, b                                        ; $6188: $60
	add  c                                           ; $6189: $81
	nop                                              ; $618a: $00
	adc  b                                           ; $618b: $88
	cp   $80                                         ; $618c: $fe $80
	db   $fc                                         ; $618e: $fc
	add  d                                           ; $618f: $82
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	rra                                              ; $6192: $1f
	add  c                                           ; $6193: $81
	ld   a, a                                        ; $6194: $7f
	ld   [$7f6f], sp                                 ; $6195: $08 $6f $7f
	ld   l, a                                        ; $6198: $6f
	ld   a, a                                        ; $6199: $7f
	ld   l, a                                        ; $619a: $6f
	ld   a, a                                        ; $619b: $7f
	ld   l, a                                        ; $619c: $6f
	ld   a, a                                        ; $619d: $7f
	ld   h, b                                        ; $619e: $60
	add  c                                           ; $619f: $81
	nop                                              ; $61a0: $00
	add  b                                           ; $61a1: $80
	db   $fc                                         ; $61a2: $fc
	adc  b                                           ; $61a3: $88

jr_018_61a4:
	cp   $82                                         ; $61a4: $fe $82
	nop                                              ; $61a6: $00
	ld   [bc], a                                     ; $61a7: $02
	rlca                                             ; $61a8: $07
	rra                                              ; $61a9: $1f
	rla                                              ; $61aa: $17
	add  c                                           ; $61ab: $81
	ccf                                              ; $61ac: $3f
	nop                                              ; $61ad: $00
	cpl                                              ; $61ae: $2f
	add  e                                           ; $61af: $83
	ld   a, a                                        ; $61b0: $7f
	nop                                              ; $61b1: $00
	sbc  a                                           ; $61b2: $9f
	add  c                                           ; $61b3: $81
	nop                                              ; $61b4: $00
	add  b                                           ; $61b5: $80
	rst  $38                                         ; $61b6: $ff
	add  b                                           ; $61b7: $80
	cp   $80                                         ; $61b8: $fe $80
	ld   bc, $7f80                                   ; $61ba: $01 $80 $7f
	add  b                                           ; $61bd: $80
	rst  $38                                         ; $61be: $ff
	add  b                                           ; $61bf: $80
	nop                                              ; $61c0: $00
	nop                                              ; $61c1: $00
	rst  $38                                         ; $61c2: $ff
	add  c                                           ; $61c3: $81
	nop                                              ; $61c4: $00
	nop                                              ; $61c5: $00
	rra                                              ; $61c6: $1f
	adc  c                                           ; $61c7: $89
	ld   a, a                                        ; $61c8: $7f
	nop                                              ; $61c9: $00
	ld   h, b                                        ; $61ca: $60
	add  c                                           ; $61cb: $81
	nop                                              ; $61cc: $00
	inc  c                                           ; $61cd: $0c
	rra                                              ; $61ce: $1f
	ld   a, a                                        ; $61cf: $7f
	ld   l, a                                        ; $61d0: $6f
	ld   a, a                                        ; $61d1: $7f
	ld   l, h                                        ; $61d2: $6c
	ld   a, h                                        ; $61d3: $7c
	ld   l, c                                        ; $61d4: $69
	ld   a, c                                        ; $61d5: $79
	ld   l, e                                        ; $61d6: $6b
	ld   a, e                                        ; $61d7: $7b
	ld   h, e                                        ; $61d8: $63
	inc  sp                                          ; $61d9: $33
	jr   nc, @-$7d                                   ; $61da: $30 $81

	nop                                              ; $61dc: $00
	add  b                                           ; $61dd: $80
	add  $80                                         ; $61de: $c6 $80
	ld   e, $80                                      ; $61e0: $1e $80
	and  $80                                         ; $61e2: $e6 $80
	ld   hl, sp-$7e                                  ; $61e4: $f8 $82
	cp   $02                                         ; $61e6: $fe $02
	nop                                              ; $61e8: $00
	rst  $38                                         ; $61e9: $ff
	nop                                              ; $61ea: $00
	add  l                                           ; $61eb: $85
	rst  $38                                         ; $61ec: $ff
	dec  b                                           ; $61ed: $05
	ccf                                              ; $61ee: $3f
	rst  $38                                         ; $61ef: $ff
	rlca                                             ; $61f0: $07
	rst  $38                                         ; $61f1: $ff
	pop  bc                                          ; $61f2: $c1
	rst  $38                                         ; $61f3: $ff
	jr   jr_018_61f8                                 ; $61f4: $18 $02

	add  [hl]                                        ; $61f6: $86
	nop                                              ; $61f7: $00

jr_018_61f8:
	ld   [$0001], sp                                 ; $61f8: $08 $01 $00
	inc  bc                                          ; $61fb: $03
	nop                                              ; $61fc: $00
	ld   b, $01                                      ; $61fd: $06 $01
	dec  c                                           ; $61ff: $0d
	nop                                              ; $6200: $00
	jr   jr_018_6183                                 ; $6201: $18 $80

	ld   b, $01                                      ; $6203: $06 $01
	rlca                                             ; $6205: $07
	scf                                              ; $6206: $37
	add  c                                           ; $6207: $81
	rrca                                             ; $6208: $0f
	ld   [$1f7f], sp                                 ; $6209: $08 $7f $1f
	ld   [de], a                                     ; $620c: $12
	ld   e, $1c                                      ; $620d: $1e $1c
	ld   e, $fe                                      ; $620f: $1e $fe
	dec  a                                           ; $6211: $3d
	add  d                                           ; $6212: $82
	add  a                                           ; $6213: $87
	nop                                              ; $6214: $00
	add  b                                           ; $6215: $80
	ld   bc, $0280                                   ; $6216: $01 $80 $02
	add  b                                           ; $6219: $80
	rlca                                             ; $621a: $07
	add  b                                           ; $621b: $80
	add  hl, bc                                      ; $621c: $09
	add  b                                           ; $621d: $80
	ld   [$1082], sp                                 ; $621e: $08 $82 $10
	add  h                                           ; $6221: $84
	jr   nz, jr_018_61a4                             ; $6222: $20 $80

	ld   b, b                                        ; $6224: $40
	ld   [bc], a                                     ; $6225: $02
	ld   e, a                                        ; $6226: $5f
	dec  sp                                          ; $6227: $3b
	ld   e, e                                        ; $6228: $5b
	add  b                                           ; $6229: $80
	dec  de                                          ; $622a: $1b
	rlca                                             ; $622b: $07
	dec  e                                           ; $622c: $1d
	dec  a                                           ; $622d: $3d
	dec  b                                           ; $622e: $05
	dec  e                                           ; $622f: $1d
	ld   bc, $0007                                   ; $6230: $01 $07 $00
	ld   bc, $00a5                                   ; $6233: $01 $a5 $00
	add  hl, bc                                      ; $6236: $09
	ld   e, $00                                      ; $6237: $1e $00
	ld   h, e                                        ; $6239: $63
	ld   e, $83                                      ; $623a: $1e $83
	ld   a, a                                        ; $623c: $7f
	inc  e                                           ; $623d: $1c
	db   $fc                                         ; $623e: $fc
	ld   a, e                                        ; $623f: $7b
	ei                                               ; $6240: $fb
	add  b                                           ; $6241: $80
	rst  $30                                         ; $6242: $f7
	nop                                              ; $6243: $00
	rst  $38                                         ; $6244: $ff
	adc  l                                           ; $6245: $8d
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	db   $fc                                         ; $6248: $fc
	add  c                                           ; $6249: $81
	ei                                               ; $624a: $fb
	nop                                              ; $624b: $00
	ld   hl, sp-$7e                                  ; $624c: $f8 $82
	ei                                               ; $624e: $fb
	add  b                                           ; $624f: $80
	ld   hl, sp+$0d                                  ; $6250: $f8 $0d
	ld   a, a                                        ; $6252: $7f
	rst  $38                                         ; $6253: $ff
	rra                                              ; $6254: $1f
	ld   a, a                                        ; $6255: $7f
	rlca                                             ; $6256: $07
	rra                                              ; $6257: $1f
	ld   bc, $0007                                   ; $6258: $01 $07 $00
	rlca                                             ; $625b: $07
	nop                                              ; $625c: $00
	dec  c                                           ; $625d: $0d
	ld   b, $1e                                      ; $625e: $06 $1e
	adc  b                                           ; $6260: $88
	rrca                                             ; $6261: $0f
	ld   b, $0e                                      ; $6262: $06 $0e

jr_018_6264:
	ld   d, $06                                      ; $6264: $16 $06
	rlca                                             ; $6266: $07
	dec  b                                           ; $6267: $05
	add  hl, bc                                      ; $6268: $09
	ld   bc, $0380                                   ; $6269: $01 $80 $03
	nop                                              ; $626c: $00
	rrca                                             ; $626d: $0f
	add  e                                           ; $626e: $83
	rlca                                             ; $626f: $07
	nop                                              ; $6270: $00
	rra                                              ; $6271: $1f
	add  a                                           ; $6272: $87
	rrca                                             ; $6273: $0f
	add  c                                           ; $6274: $81
	nop                                              ; $6275: $00
	ld   bc, $1f0f                                   ; $6276: $01 $0f $1f
	add  b                                           ; $6279: $80
	rlca                                             ; $627a: $07
	inc  b                                           ; $627b: $04
	nop                                              ; $627c: $00
	ld   [$0002], sp                                 ; $627d: $08 $02 $00
	ld   [bc], a                                     ; $6280: $02
	add  d                                           ; $6281: $82
	nop                                              ; $6282: $00
	nop                                              ; $6283: $00
	dec  c                                           ; $6284: $0d
	add  c                                           ; $6285: $81
	dec  b                                           ; $6286: $05
	nop                                              ; $6287: $00
	rrca                                             ; $6288: $0f
	adc  l                                           ; $6289: $8d
	nop                                              ; $628a: $00
	ld   bc, $0205                                   ; $628b: $01 $05 $02
	add  b                                           ; $628e: $80
	nop                                              ; $628f: $00
	add  b                                           ; $6290: $80
	ld   [bc], a                                     ; $6291: $02
	dec  b                                           ; $6292: $05
	add  d                                           ; $6293: $82
	ld   [bc], a                                     ; $6294: $02
	ldh  [c], a                                      ; $6295: $e2
	add  d                                           ; $6296: $82
	ld   a, [$80e2]                                  ; $6297: $fa $e2 $80
	adc  d                                           ; $629a: $8a
	add  b                                           ; $629b: $80
	jr   c, jr_018_62a2                              ; $629c: $38 $04

	db   $db                                         ; $629e: $db
	rst  $38                                         ; $629f: $ff
	adc  e                                           ; $62a0: $8b
	rst  $38                                         ; $62a1: $ff

jr_018_62a2:
	ld   d, b                                        ; $62a2: $50
	add  d                                           ; $62a3: $82

jr_018_62a4:
	rst  $38                                         ; $62a4: $ff
	ld   bc, $0300                                   ; $62a5: $01 $00 $03
	add  e                                           ; $62a8: $83
	ei                                               ; $62a9: $fb
	nop                                              ; $62aa: $00
	rst  $38                                         ; $62ab: $ff

jr_018_62ac:
	add  b                                           ; $62ac: $80
	rst  $30                                         ; $62ad: $f7
	dec  c                                           ; $62ae: $0d
	ld   [hl], a                                     ; $62af: $77
	rst  $38                                         ; $62b0: $ff
	rrca                                             ; $62b1: $0f
	ld   l, a                                        ; $62b2: $6f
	rrca                                             ; $62b3: $0f
	cp   a                                           ; $62b4: $bf
	rra                                              ; $62b5: $1f
	ld   b, d                                        ; $62b6: $42
	add  e                                           ; $62b7: $83
	cp   l                                           ; $62b8: $bd
	cp   h                                           ; $62b9: $bc
	rst  $38                                         ; $62ba: $ff
	ld   a, a                                        ; $62bb: $7f
	rst  $38                                         ; $62bc: $ff
	adc  l                                           ; $62bd: $8d
	nop                                              ; $62be: $00
	add  c                                           ; $62bf: $81
	rst  $38                                         ; $62c0: $ff
	add  b                                           ; $62c1: $80
	rlca                                             ; $62c2: $07
	inc  bc                                          ; $62c3: $03
	ret  c                                           ; $62c4: $d8

	ld   c, e                                        ; $62c5: $4b
	ret  c                                           ; $62c6: $d8

	ld   c, b                                        ; $62c7: $48
	add  c                                           ; $62c8: $81
	nop                                              ; $62c9: $00
	nop                                              ; $62ca: $00
	dec  h                                           ; $62cb: $25
	add  c                                           ; $62cc: $81
	or   b                                           ; $62cd: $b0
	nop                                              ; $62ce: $00
	ld   l, c                                        ; $62cf: $69
	adc  c                                           ; $62d0: $89
	nop                                              ; $62d1: $00
	add  b                                           ; $62d2: $80
	stop                                             ; $62d3: $10 $00
	nop                                              ; $62d5: $00
	add  d                                           ; $62d6: $82
	jr   nc, jr_018_6264                             ; $62d7: $30 $8b

	nop                                              ; $62d9: $00
	ld   [bc], a                                     ; $62da: $02
	db   $fc                                         ; $62db: $fc
	ld   [hl], a                                     ; $62dc: $77
	ld   a, e                                        ; $62dd: $7b
	add  c                                           ; $62de: $81
	ld   l, a                                        ; $62df: $6f
	nop                                              ; $62e0: $00
	ld   a, a                                        ; $62e1: $7f
	add  b                                           ; $62e2: $80
	ld   e, a                                        ; $62e3: $5f
	add  b                                           ; $62e4: $80
	rra                                              ; $62e5: $1f
	inc  b                                           ; $62e6: $04
	rst  JumpTable                                         ; $62e7: $df
	ret  nz                                          ; $62e8: $c0

	nop                                              ; $62e9: $00
	ccf                                              ; $62ea: $3f
	cp   a                                           ; $62eb: $bf
	add  c                                           ; $62ec: $81
	add  b                                           ; $62ed: $80
	dec  b                                           ; $62ee: $05
	rst  JumpTable                                         ; $62ef: $df
	rst  $10                                         ; $62f0: $d7
	rst  JumpTable                                         ; $62f1: $df
	ret  c                                           ; $62f2: $d8

	rst  JumpTable                                         ; $62f3: $df
	rst  $10                                         ; $62f4: $d7
	add  c                                           ; $62f5: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f6: $cf
	nop                                              ; $62f7: $00
	rst  $38                                         ; $62f8: $ff
	add  c                                           ; $62f9: $81
	add  a                                           ; $62fa: $87
	ld   [bc], a                                     ; $62fb: $02
	ld   d, b                                        ; $62fc: $50
	rst  $10                                         ; $62fd: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62fe: $cf
	add  c                                           ; $62ff: $81
	db   $db                                         ; $6300: $db
	nop                                              ; $6301: $00
	rst  JumpTable                                         ; $6302: $df
	add  b                                           ; $6303: $80
	call $cc80                                       ; $6304: $cd $80 $cc
	dec  b                                           ; $6307: $05
	call $0031                                       ; $6308: $cd $31 $00
	cp   $06                                         ; $630b: $fe $06
	ld   hl, sp-$80                                  ; $630d: $f8 $80
	nop                                              ; $630f: $00
	inc  b                                           ; $6310: $04
	db   $fd                                         ; $6311: $fd
	pop  af                                          ; $6312: $f1
	db   $fd                                         ; $6313: $fd
	dec  c                                           ; $6314: $0d
	db   $dd                                         ; $6315: $dd
	add  d                                           ; $6316: $82
	reti                                             ; $6317: $d9


	nop                                              ; $6318: $00
	rst  $10                                         ; $6319: $d7
	add  b                                           ; $631a: $80
	ret  nc                                          ; $631b: $d0

	ld   bc, $99b0                                   ; $631c: $01 $b0 $99
	add  e                                           ; $631f: $83
	jr   nz, @-$7a                                   ; $6320: $20 $84

	jr   nc, jr_018_62a4                             ; $6322: $30 $80

	nop                                              ; $6324: $00
	add  b                                           ; $6325: $80
	ld   hl, sp-$7c                                  ; $6326: $f8 $84
	nop                                              ; $6328: $00
	add  [hl]                                        ; $6329: $86
	jr   nz, jr_018_62ac                             ; $632a: $20 $80

	ld   b, b                                        ; $632c: $40
	adc  l                                           ; $632d: $8d
	nop                                              ; $632e: $00
	add  d                                           ; $632f: $82
	ldh  a, [$8c]                                    ; $6330: $f0 $8c
	nop                                              ; $6332: $00
	add  c                                           ; $6333: $81
	rst  $38                                         ; $6334: $ff
	nop                                              ; $6335: $00
	nop                                              ; $6336: $00
	add  d                                           ; $6337: $82
	rst  $38                                         ; $6338: $ff
	inc  bc                                          ; $6339: $03
	nop                                              ; $633a: $00
	ld   h, b                                        ; $633b: $60
	rst  $28                                         ; $633c: $ef
	ld   l, a                                        ; $633d: $6f
	add  c                                           ; $633e: $81
	rst  $28                                         ; $633f: $ef
	db   $10                                         ; $6340: $10
	rst  $38                                         ; $6341: $ff
	or   $f7                                         ; $6342: $f6 $f7

jr_018_6344:
	ldh  a, [$fa]                                    ; $6344: $f0 $fa
	ld   hl, sp+$78                                  ; $6346: $f8 $78
	ld   hl, sp-$02                                  ; $6348: $f8 $fe
	db   $fc                                         ; $634a: $fc
	and  c                                           ; $634b: $a1
	ldh  [$de], a                                    ; $634c: $e0 $de
	sbc  [hl]                                        ; $634e: $9e
	rst  $38                                         ; $634f: $ff
	ld   a, a                                        ; $6350: $7f
	rst  $38                                         ; $6351: $ff
	adc  l                                           ; $6352: $8d
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	rst  $38                                         ; $6355: $ff
	add  b                                           ; $6356: $80
	ld   a, a                                        ; $6357: $7f
	add  b                                           ; $6358: $80
	ld   hl, sp+$01                                  ; $6359: $f8 $01
	ld   bc, $8261                                   ; $635b: $01 $61 $82

jr_018_635e:
	dec  c                                           ; $635e: $0d
	dec  b                                           ; $635f: $05
	nop                                              ; $6360: $00
	ld   b, c                                        ; $6361: $41
	adc  h                                           ; $6362: $8c
	sbc  l                                           ; $6363: $9d
	add  [hl]                                        ; $6364: $86
	ld   c, c                                        ; $6365: $49
	adc  l                                           ; $6366: $8d
	nop                                              ; $6367: $00
	db   $10                                         ; $6368: $10
	ldh  [rP1], a                                    ; $6369: $e0 $00
	jr   @-$1e                                       ; $636b: $18 $e0

	ld   d, $f8                                      ; $636d: $16 $f8
	ld   b, c                                        ; $636f: $41
	ld   c, [hl]                                     ; $6370: $4e
	jr   nc, jr_018_63aa                             ; $6371: $30 $37

	adc  $cf                                         ; $6373: $ce $cf
	ld   [hl], $37                                   ; $6375: $36 $37
	db   $fc                                         ; $6377: $fc
	rst  $38                                         ; $6378: $ff
	ldh  [c], a                                      ; $6379: $e2
	add  c                                           ; $637a: $81
	rst  $28                                         ; $637b: $ef
	nop                                              ; $637c: $00
	rrca                                             ; $637d: $0f
	add  d                                           ; $637e: $82
	rst  $28                                         ; $637f: $ef
	rrca                                             ; $6380: $0f
	ld   c, $0f                                      ; $6381: $0e $0f
	ld   hl, sp-$02                                  ; $6383: $f8 $fe
	ldh  [$f8], a                                    ; $6385: $e0 $f8
	add  b                                           ; $6387: $80
	ldh  [rP1], a                                    ; $6388: $e0 $00
	add  b                                           ; $638a: $80
	nop                                              ; $638b: $00
	jr   nc, jr_018_638e                             ; $638c: $30 $00

jr_018_638e:
	ld   e, b                                        ; $638e: $58
	jr   nc, @-$42                                   ; $638f: $30 $bc

	add  b                                           ; $6391: $80
	ld   a, b                                        ; $6392: $78
	add  d                                           ; $6393: $82
	ld   hl, sp-$7f                                  ; $6394: $f8 $81
	ld   a, b                                        ; $6396: $78
	rlca                                             ; $6397: $07
	ld   hl, sp-$48                                  ; $6398: $f8 $b8
	or   h                                           ; $639a: $b4
	or   b                                           ; $639b: $b0
	ldh  a, [$d0]                                    ; $639c: $f0 $d0
	ret  z                                           ; $639e: $c8

	ret  nz                                          ; $639f: $c0

	add  b                                           ; $63a0: $80
	ldh  [$0b], a                                    ; $63a1: $e0 $0b
	cp   b                                           ; $63a3: $b8
	ldh  a, [$90]                                    ; $63a4: $f0 $90
	ldh  a, [$c0]                                    ; $63a6: $f0 $c0
	ldh  a, [$f4]                                    ; $63a8: $f0 $f4

jr_018_63aa:
	ld   hl, sp-$18                                  ; $63aa: $f8 $e8
	ld   hl, sp-$10                                  ; $63ac: $f8 $f0
	ld   hl, sp-$80                                  ; $63ae: $f8 $80
	ld   a, b                                        ; $63b0: $78
	add  b                                           ; $63b1: $80
	ld   hl, sp-$7f                                  ; $63b2: $f8 $81
	nop                                              ; $63b4: $00
	ld   bc, $04f8                                   ; $63b5: $01 $f8 $04
	add  l                                           ; $63b8: $85
	nop                                              ; $63b9: $00
	ld   b, $80                                      ; $63ba: $06 $80
	nop                                              ; $63bc: $00
	ret  nz                                          ; $63bd: $c0

	nop                                              ; $63be: $00
	ld   h, b                                        ; $63bf: $60
	nop                                              ; $63c0: $00
	jr   nc, jr_018_6344                             ; $63c1: $30 $81

	ret  nz                                          ; $63c3: $c0

	inc  b                                           ; $63c4: $04
	ret  c                                           ; $63c5: $d8

	ldh  [$80], a                                    ; $63c6: $e0 $80
	ldh  [$7c], a                                    ; $63c8: $e0 $7c
	add  d                                           ; $63ca: $82
	ldh  a, [rSB]                                    ; $63cb: $f0 $01
	ld   [hl], b                                     ; $63cd: $70
	ld   a, [hl]                                     ; $63ce: $7e
	add  c                                           ; $63cf: $81
	ld   a, b                                        ; $63d0: $78
	nop                                              ; $63d1: $00
	add  d                                           ; $63d2: $82
	add  a                                           ; $63d3: $87
	nop                                              ; $63d4: $00
	add  b                                           ; $63d5: $80
	add  b                                           ; $63d6: $80
	add  b                                           ; $63d7: $80
	ret  nz                                          ; $63d8: $c0

	add  d                                           ; $63d9: $82
	jr   nz, jr_018_635e                             ; $63da: $20 $82

	db   $10                                         ; $63dc: $10
	add  h                                           ; $63dd: $84
	ld   [$0482], sp                                 ; $63de: $08 $82 $04
	nop                                              ; $63e1: $00
	ld   a, [$b88b]                                  ; $63e2: $fa $8b $b8
	ld   a, [bc]                                     ; $63e5: $0a
	or   [hl]                                        ; $63e6: $b6
	cp   b                                           ; $63e7: $b8
	or   b                                           ; $63e8: $b0
	cp   b                                           ; $63e9: $b8
	cp   h                                           ; $63ea: $bc
	ld   [hl], b                                     ; $63eb: $70
	ld   a, b                                        ; $63ec: $78
	ret  nz                                          ; $63ed: $c0

	ldh  a, [rP1]                                    ; $63ee: $f0 $00
	ret  nz                                          ; $63f0: $c0

	add  l                                           ; $63f1: $85
	nop                                              ; $63f2: $00
	adc  h                                           ; $63f3: $8c
	inc  b                                           ; $63f4: $04
	sub  b                                           ; $63f5: $90
	nop                                              ; $63f6: $00
	inc  bc                                          ; $63f7: $03
	ei                                               ; $63f8: $fb
	inc  b                                           ; $63f9: $04
	di                                               ; $63fa: $f3
	db   $d3                                         ; $63fb: $d3
	add  d                                           ; $63fc: $82
	rst  $10                                         ; $63fd: $d7
	ld   bc, $d7c7                                   ; $63fe: $01 $c7 $d7
	add  b                                           ; $6401: $80
	call nc, $d380                                   ; $6402: $d4 $80 $d3
	add  b                                           ; $6405: $80
	rst  $10                                         ; $6406: $d7
	inc  b                                           ; $6407: $04
	ld   hl, wBaseInitialStickyCounter                                   ; $6408: $21 $13 $c2
	and  [hl]                                        ; $640b: $a6
	or   [hl]                                        ; $640c: $b6
	add  b                                           ; $640d: $80
	or   c                                           ; $640e: $b1
	add  b                                           ; $640f: $80
	or   a                                           ; $6410: $b7
	ld   [de], a                                     ; $6411: $12
	or   [hl]                                        ; $6412: $b6
	ld   [hl], a                                     ; $6413: $77
	ld   de, $a5c1                                   ; $6414: $11 $c1 $a5
	or   a                                           ; $6417: $b7
	or   e                                           ; $6418: $b3
	ld   [$0161], sp                                 ; $6419: $08 $61 $01
	add  c                                           ; $641c: $81
	push de                                          ; $641d: $d5
	ld   d, l                                        ; $641e: $55

jr_018_641f:
	ld   c, c                                        ; $641f: $49
	ld   b, b                                        ; $6420: $40
	ld   c, e                                        ; $6421: $4b
	ld   c, d                                        ; $6422: $4a
	ld   l, d                                        ; $6423: $6a
	ld   l, e                                        ; $6424: $6b
	add  b                                           ; $6425: $80
	dec  hl                                          ; $6426: $2b
	add  b                                           ; $6427: $80
	xor  e                                           ; $6428: $ab
	ld   [$7303], sp                                 ; $6429: $08 $03 $73
	ld   a, e                                        ; $642c: $7b
	ld   l, e                                        ; $642d: $6b
	ld   l, h                                        ; $642e: $6c
	xor  l                                           ; $642f: $ad
	and  c                                           ; $6430: $a1
	nop                                              ; $6431: $00
	rst  $38                                         ; $6432: $ff
	add  b                                           ; $6433: $80
	rlca                                             ; $6434: $07
	rrca                                             ; $6435: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6436: $cf
	set  1, a                                        ; $6437: $cb $cf
	jp   $f9cf                                       ; $6439: $c3 $cf $f9


	pop  bc                                          ; $643c: $c1
	cp   e                                           ; $643d: $bb
	xor  e                                           ; $643e: $ab
	ld   l, l                                        ; $643f: $6d
	ld   [hl], l                                     ; $6440: $75
	dec  [hl]                                        ; $6441: $35
	push af                                          ; $6442: $f5
	push de                                          ; $6443: $d5
	ld   [hl], l                                     ; $6444: $75
	push af                                          ; $6445: $f5
	add  e                                           ; $6446: $83
	or   l                                           ; $6447: $b5
	nop                                              ; $6448: $00
	rst  $10                                         ; $6449: $d7
	add  d                                           ; $644a: $82
	cp   $82                                         ; $644b: $fe $82
	db   $fc                                         ; $644d: $fc
	nop                                              ; $644e: $00
	ld   sp, hl                                      ; $644f: $f9
	add  b                                           ; $6450: $80
	ld   hl, sp+$01                                  ; $6451: $f8 $01
	rst  $38                                         ; $6453: $ff
	ld   sp, hl                                      ; $6454: $f9
	add  b                                           ; $6455: $80
	and  $07                                         ; $6456: $e6 $07
	sbc  c                                           ; $6458: $99
	ld   e, $67                                      ; $6459: $1e $67
	ld   l, h                                        ; $645b: $6c
	ld   l, a                                        ; $645c: $6f
	di                                               ; $645d: $f3
	sbc  $ce                                         ; $645e: $de $ce
	add  b                                           ; $6460: $80
	ccf                                              ; $6461: $3f
	add  b                                           ; $6462: $80
	db   $fc                                         ; $6463: $fc
	add  b                                           ; $6464: $80
	di                                               ; $6465: $f3
	add  b                                           ; $6466: $80
	call z, $ef06                                    ; $6467: $cc $06 $ef
	ld   l, a                                        ; $646a: $6f
	ld   e, a                                        ; $646b: $5f
	sbc  a                                           ; $646c: $9f
	rst  $38                                         ; $646d: $ff
	and  a                                           ; $646e: $a7
	ld   h, a                                        ; $646f: $67
	add  b                                           ; $6470: $80
	ld   a, c                                        ; $6471: $79
	ld   [bc], a                                     ; $6472: $02
	ld   a, [hl]                                     ; $6473: $7e
	sbc  $df                                         ; $6474: $de $df
	add  b                                           ; $6476: $80
	rst  $38                                         ; $6477: $ff
	ld   [bc], a                                     ; $6478: $02
	dec  sp                                          ; $6479: $3b
	ei                                               ; $647a: $fb
	inc  a                                           ; $647b: $3c
	add  c                                           ; $647c: $81
	db   $fc                                         ; $647d: $fc
	inc  c                                           ; $647e: $0c
	add  sp, -$04                                    ; $647f: $e8 $fc
	ldh  [$fc], a                                    ; $6481: $e0 $fc
	and  b                                           ; $6483: $a0
	ld   a, b                                        ; $6484: $78
	jr   nz, jr_018_641f                             ; $6485: $20 $98

	ret  nc                                          ; $6487: $d0

	ldh  [rSB], a                                    ; $6488: $e0 $01
	pop  af                                          ; $648a: $f1
	ld   c, a                                        ; $648b: $4f
	add  c                                           ; $648c: $81
	rst  $10                                         ; $648d: $d7
	inc  bc                                          ; $648e: $03
	scf                                              ; $648f: $37
	rlca                                             ; $6490: $07
	and  $d6                                         ; $6491: $e6 $d6
	add  b                                           ; $6493: $80
	pop  de                                          ; $6494: $d1
	inc  bc                                          ; $6495: $03
	push de                                          ; $6496: $d5
	push bc                                          ; $6497: $c5
	db   $fc                                         ; $6498: $fc
	db   $dd                                         ; $6499: $dd
	add  b                                           ; $649a: $80
	or   c                                           ; $649b: $b1
	nop                                              ; $649c: $00
	sub  $81                                         ; $649d: $d6 $81
	or   a                                           ; $649f: $b7
	add  b                                           ; $64a0: $80
	xor  a                                           ; $64a1: $af
	ld   bc, $0f6f                                   ; $64a2: $01 $6f $0f
	add  b                                           ; $64a5: $80
	reti                                             ; $64a6: $d9


	add  b                                           ; $64a7: $80
	rst  ToBoot                                         ; $64a8: $c7
	dec  bc                                          ; $64a9: $0b
	inc  a                                           ; $64aa: $3c
	cp   h                                           ; $64ab: $bc
	sbc  b                                           ; $64ac: $98
	ld   a, [de]                                     ; $64ad: $1a
	sub  c                                           ; $64ae: $91
	sub  e                                           ; $64af: $93
	ei                                               ; $64b0: $fb
	rst  $38                                         ; $64b1: $ff
	di                                               ; $64b2: $f3
	rst  $38                                         ; $64b3: $ff
	or   a                                           ; $64b4: $b7
	cp   a                                           ; $64b5: $bf
	add  b                                           ; $64b6: $80
	nop                                              ; $64b7: $00
	add  b                                           ; $64b8: $80
	rst  $38                                         ; $64b9: $ff
	add  d                                           ; $64ba: $82
	nop                                              ; $64bb: $00
	nop                                              ; $64bc: $00
	rst  $38                                         ; $64bd: $ff
	add  b                                           ; $64be: $80
	rst  JumpTable                                         ; $64bf: $df
	add  b                                           ; $64c0: $80
	rst  $28                                         ; $64c1: $ef
	inc  b                                           ; $64c2: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64c3: $cf
	adc  $82                                         ; $64c4: $ce $82
	ld   b, b                                        ; $64c6: $40
	inc  a                                           ; $64c7: $3c
	add  b                                           ; $64c8: $80
	rst  $38                                         ; $64c9: $ff
	add  b                                           ; $64ca: $80
	nop                                              ; $64cb: $00
	add  b                                           ; $64cc: $80
	ld   bc, $bd05                                   ; $64cd: $01 $05 $bd
	or   l                                           ; $64d0: $b5
	jp   nc, $f1ca                                   ; $64d1: $d2 $ca $f1

	pop  hl                                          ; $64d4: $e1
	add  b                                           ; $64d5: $80
	ei                                               ; $64d6: $fb
	add  b                                           ; $64d7: $80
	dec  c                                           ; $64d8: $0d
	add  b                                           ; $64d9: $80
	ld   sp, $de80                                   ; $64da: $31 $80 $de
	inc  bc                                          ; $64dd: $03
	db   $ec                                         ; $64de: $ec
	inc  l                                           ; $64df: $2c
	ld   e, c                                        ; $64e0: $59
	sbc  c                                           ; $64e1: $99
	add  b                                           ; $64e2: $80
	ld   a, [hl]                                     ; $64e3: $7e
	dec  c                                           ; $64e4: $0d
	cp   a                                           ; $64e5: $bf
	rst  $38                                         ; $64e6: $ff
	cp   a                                           ; $64e7: $bf
	rst  $38                                         ; $64e8: $ff
	di                                               ; $64e9: $f3
	rst  $38                                         ; $64ea: $ff
	db   $e3                                         ; $64eb: $e3
	rst  $38                                         ; $64ec: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ed: $cf
	rst  $38                                         ; $64ee: $ff
	ld   h, a                                        ; $64ef: $67
	ld   b, [hl]                                     ; $64f0: $46
	ld   [hl-], a                                    ; $64f1: $32
	inc  sp                                          ; $64f2: $33
	add  b                                           ; $64f3: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64f4: $cf
	add  b                                           ; $64f5: $80
	ccf                                              ; $64f6: $3f
	nop                                              ; $64f7: $00
	rst  $38                                         ; $64f8: $ff
	add  b                                           ; $64f9: $80
	cp   $80                                         ; $64fa: $fe $80
	ld   sp, hl                                      ; $64fc: $f9
	add  b                                           ; $64fd: $80
	rst  $20                                         ; $64fe: $e7
	add  b                                           ; $64ff: $80
	adc  a                                           ; $6500: $8f
	inc  bc                                          ; $6501: $03
	ccf                                              ; $6502: $3f
	dec  sp                                          ; $6503: $3b
	ei                                               ; $6504: $fb
	db   $fd                                         ; $6505: $fd
	add  b                                           ; $6506: $80
	call $3d03                                       ; $6507: $cd $03 $3d
	ld   a, $fe                                      ; $650a: $3e $fe
	ld   hl, sp-$80                                  ; $650c: $f8 $80
	cp   $05                                         ; $650e: $fe $05
	rst  $38                                         ; $6510: $ff
	rst  $20                                         ; $6511: $e7
	rst  $38                                         ; $6512: $ff
	sbc  a                                           ; $6513: $9f
	rst  $38                                         ; $6514: $ff
	ccf                                              ; $6515: $3f
	add  h                                           ; $6516: $84
	dec  a                                           ; $6517: $3d
	add  a                                           ; $6518: $87
	dec  sp                                          ; $6519: $3b
	inc  b                                           ; $651a: $04
	ld   [hl], h                                     ; $651b: $74
	rst  $38                                         ; $651c: $ff
	di                                               ; $651d: $f3
	rst  $38                                         ; $651e: $ff
	db   $fc                                         ; $651f: $fc
	add  b                                           ; $6520: $80
	rst  $38                                         ; $6521: $ff
	ld   bc, $fffe                                   ; $6522: $01 $fe $ff
	add  c                                           ; $6525: $81
	db   $fd                                         ; $6526: $fd
	nop                                              ; $6527: $00
	rst  $38                                         ; $6528: $ff
	add  b                                           ; $6529: $80
	ld   hl, sp+$06                                  ; $652a: $f8 $06
	ei                                               ; $652c: $fb
	ld   d, e                                        ; $652d: $53
	ei                                               ; $652e: $fb
	jp   nz, $c9ba                                   ; $652f: $c2 $ba $c9

	pop  hl                                          ; $6532: $e1
	add  b                                           ; $6533: $80
	rra                                              ; $6534: $1f
	add  c                                           ; $6535: $81
	rst  $38                                         ; $6536: $ff
	add  b                                           ; $6537: $80
	ret  nz                                          ; $6538: $c0

	add  b                                           ; $6539: $80
	ld   bc, $ff00                                   ; $653a: $01 $00 $ff
	add  b                                           ; $653d: $80
	ld   c, h                                        ; $653e: $4c
	add  b                                           ; $653f: $80
	dec  a                                           ; $6540: $3d
	ld   [bc], a                                     ; $6541: $02
	or   $f4                                         ; $6542: $f6 $f4
	db   $fc                                         ; $6544: $fc
	add  b                                           ; $6545: $80
	ld   hl, sp+$01                                  ; $6546: $f8 $01
	add  b                                           ; $6548: $80
	add  c                                           ; $6549: $81
	add  b                                           ; $654a: $80
	rra                                              ; $654b: $1f
	add  c                                           ; $654c: $81
	rst  $38                                         ; $654d: $ff
	add  hl, bc                                      ; $654e: $09
	ldh  [$e1], a                                    ; $654f: $e0 $e1
	ld   sp, hl                                      ; $6551: $f9
	ld   hl, sp-$04                                  ; $6552: $f8 $fc
	rst  $38                                         ; $6554: $ff
	db   $fd                                         ; $6555: $fd
	rst  $38                                         ; $6556: $ff
	cp   $ff                                         ; $6557: $fe $ff
	add  b                                           ; $6559: $80
	ld   a, a                                        ; $655a: $7f
	add  b                                           ; $655b: $80
	inc  e                                           ; $655c: $1c
	ld   [bc], a                                     ; $655d: $02
	ld   l, b                                        ; $655e: $68
	ld   l, d                                        ; $655f: $6a
	ld   [bc], a                                     ; $6560: $02
	add  b                                           ; $6561: $80
	rst  $38                                         ; $6562: $ff
	add  b                                           ; $6563: $80
	nop                                              ; $6564: $00
	add  c                                           ; $6565: $81
	rst  $38                                         ; $6566: $ff
	ld   bc, $7f80                                   ; $6567: $01 $80 $7f
	add  b                                           ; $656a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $656b: $cf
	ld   [bc], a                                     ; $656c: $02
	jr   nc, @+$22                                   ; $656d: $30 $20

	db   $10                                         ; $656f: $10
	add  b                                           ; $6570: $80
	nop                                              ; $6571: $00
	add  b                                           ; $6572: $80

jr_018_6573:
	cp   $80                                         ; $6573: $fe $80
	nop                                              ; $6575: $00
	add  c                                           ; $6576: $81
	rst  $38                                         ; $6577: $ff
	ld   bc, $bf40                                   ; $6578: $01 $40 $bf
	add  b                                           ; $657b: $80
	rst  $38                                         ; $657c: $ff
	add  d                                           ; $657d: $82
	nop                                              ; $657e: $00
	add  b                                           ; $657f: $80
	inc  bc                                          ; $6580: $03
	add  b                                           ; $6581: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6582: $cf
	dec  b                                           ; $6583: $05
	rra                                              ; $6584: $1f
	ccf                                              ; $6585: $3f
	rra                                              ; $6586: $1f
	rst  $38                                         ; $6587: $ff
	rra                                              ; $6588: $1f
	rst  JumpTable                                         ; $6589: $df
	add  b                                           ; $658a: $80
	rst  $38                                         ; $658b: $ff
	add  b                                           ; $658c: $80
	inc  e                                           ; $658d: $1c
	ld   [$2b0b], sp                                 ; $658e: $08 $0b $2b
	cp   c                                           ; $6591: $b9
	sbc  b                                           ; $6592: $98
	rst  JumpTable                                         ; $6593: $df
	sbc  $b7                                         ; $6594: $de $b7
	sub  a                                           ; $6596: $97
	sbc  a                                           ; $6597: $9f
	add  b                                           ; $6598: $80
	adc  a                                           ; $6599: $8f
	ld   bc, $4080                                   ; $659a: $01 $80 $40
	add  b                                           ; $659d: $80
	ld   a, h                                        ; $659e: $7c
	add  c                                           ; $659f: $81
	ld   a, a                                        ; $65a0: $7f
	inc  bc                                          ; $65a1: $03
	cp   $7f                                         ; $65a2: $fe $7f
	cp   l                                           ; $65a4: $bd
	ccf                                              ; $65a5: $3f
	add  b                                           ; $65a6: $80
	jp   $ff01                                       ; $65a7: $c3 $01 $ff


	db   $fc                                         ; $65aa: $fc
	add  c                                           ; $65ab: $81
	rst  $38                                         ; $65ac: $ff
	add  b                                           ; $65ad: $80
	ld   bc, $c080                                   ; $65ae: $01 $80 $c0
	ld   bc, $00ff                                   ; $65b1: $01 $ff $00
	add  h                                           ; $65b4: $84
	rst  $38                                         ; $65b5: $ff
	ld   bc, $ff3f                                   ; $65b6: $01 $3f $ff
	add  c                                           ; $65b9: $81
	rst  JumpTable                                         ; $65ba: $df
	nop                                              ; $65bb: $00
	rst  $38                                         ; $65bc: $ff
	add  b                                           ; $65bd: $80
	rrca                                             ; $65be: $0f
	dec  b                                           ; $65bf: $05
	rst  $28                                         ; $65c0: $ef
	push af                                          ; $65c1: $f5
	ei                                               ; $65c2: $fb
	db   $fd                                         ; $65c3: $fd
	rst  $38                                         ; $65c4: $ff
	inc  bc                                          ; $65c5: $03
	add  d                                           ; $65c6: $82
	rst  $38                                         ; $65c7: $ff
	add  b                                           ; $65c8: $80
	nop                                              ; $65c9: $00
	rrca                                             ; $65ca: $0f
	jp   z, $f40a                                    ; $65cb: $ca $0a $f4

	call nc, Call_018_6afa                           ; $65ce: $d4 $fa $6a
	ld   [hl], c                                     ; $65d1: $71
	ld   a, c                                        ; $65d2: $79
	ld   a, b                                        ; $65d3: $78
	ld   a, h                                        ; $65d4: $7c
	ld   a, a                                        ; $65d5: $7f
	ld   a, l                                        ; $65d6: $7d
	ld   a, a                                        ; $65d7: $7f
	ld   a, [hl]                                     ; $65d8: $7e
	ld   a, a                                        ; $65d9: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65da: $cf
	add  c                                           ; $65db: $81
	rst  $38                                         ; $65dc: $ff
	ld   b, $f7                                      ; $65dd: $06 $f7
	rst  $28                                         ; $65df: $ef
	ld   h, b                                        ; $65e0: $60
	ld   c, e                                        ; $65e1: $4b
	inc  sp                                          ; $65e2: $33
	jr   nc, jr_018_65e5                             ; $65e3: $30 $00

jr_018_65e5:
	add  b                                           ; $65e5: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e6: $cf
	ld   bc, $00ff                                   ; $65e7: $01 $ff $00
	add  c                                           ; $65ea: $81
	rst  $38                                         ; $65eb: $ff
	inc  b                                           ; $65ec: $04
	rst  $28                                         ; $65ed: $ef
	rst  $38                                         ; $65ee: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65ef: $cf
	rst  $38                                         ; $65f0: $ff
	jr   nz, jr_018_6573                             ; $65f1: $20 $80

	rst  $38                                         ; $65f3: $ff
	add  b                                           ; $65f4: $80
	nop                                              ; $65f5: $00
	add  c                                           ; $65f6: $81
	rst  $38                                         ; $65f7: $ff
	stop                                             ; $65f8: $10 $00
	rst  $38                                         ; $65fa: $ff
	ei                                               ; $65fb: $fb
	db   $fd                                         ; $65fc: $fd
	ld   a, [$fcff]                                  ; $65fd: $fa $ff $fc
	rst  $38                                         ; $6600: $ff
	rlca                                             ; $6601: $07
	rst  ToBoot                                         ; $6602: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6603: $cf
	rrca                                             ; $6604: $0f
	rra                                              ; $6605: $1f
	rst  $38                                         ; $6606: $ff
	rst  JumpTable                                         ; $6607: $df
	rst  $38                                         ; $6608: $ff
	ccf                                              ; $6609: $3f
	add  d                                           ; $660a: $82
	rst  $38                                         ; $660b: $ff
	rlca                                             ; $660c: $07
	ld   a, a                                        ; $660d: $7f
	ld   a, e                                        ; $660e: $7b
	ei                                               ; $660f: $fb
	cpl                                              ; $6610: $2f
	ld   l, a                                        ; $6611: $6f
	ld   e, a                                        ; $6612: $5f
	ld   a, a                                        ; $6613: $7f
	ld   h, b                                        ; $6614: $60
	add  d                                           ; $6615: $82
	ld   a, a                                        ; $6616: $7f
	add  hl, bc                                      ; $6617: $09
	nop                                              ; $6618: $00
	add  b                                           ; $6619: $80
	xor  c                                           ; $661a: $a9
	xor  b                                           ; $661b: $a8
	sub  a                                           ; $661c: $97
	sub  l                                           ; $661d: $95
	xor  a                                           ; $661e: $af
	call c, $8cfc                                    ; $661f: $dc $fc $8c
	add  b                                           ; $6622: $80
	db   $fc                                         ; $6623: $fc
	ld   bc, $7efe                                   ; $6624: $01 $fe $7e
	add  b                                           ; $6627: $80
	cp   $80                                         ; $6628: $fe $80
	ldh  a, [$80]                                    ; $662a: $f0 $80
	ld   [$da80], a                                  ; $662c: $ea $80 $da
	rlca                                             ; $662f: $07
	ld   [$ffcf], sp                                 ; $6630: $08 $cf $ff
	ld   a, [$dcff]                                  ; $6633: $fa $ff $dc
	rst  $38                                         ; $6636: $ff
	cp   $81                                         ; $6637: $fe $81
	rst  $38                                         ; $6639: $ff
	nop                                              ; $663a: $00
	rst  $28                                         ; $663b: $ef
	add  d                                           ; $663c: $82
	rst  $38                                         ; $663d: $ff
	ld   bc, $f2fd                                   ; $663e: $01 $fd $f2
	add  c                                           ; $6641: $81
	rst  $38                                         ; $6642: $ff
	dec  c                                           ; $6643: $0d
	ld   e, a                                        ; $6644: $5f
	rst  $38                                         ; $6645: $ff
	rrca                                             ; $6646: $0f
	rst  $38                                         ; $6647: $ff
	rlca                                             ; $6648: $07
	rst  $38                                         ; $6649: $ff
	add  a                                           ; $664a: $87
	rst  $38                                         ; $664b: $ff
	rst  ToBoot                                         ; $664c: $c7
	rst  $38                                         ; $664d: $ff
	db   $eb                                         ; $664e: $eb
	rst  $38                                         ; $664f: $ff
	inc  bc                                          ; $6650: $03
	rst  $38                                         ; $6651: $ff
	add  d                                           ; $6652: $82
	cp   $0b                                         ; $6653: $fe $0b
	sbc  [hl]                                        ; $6655: $9e
	cp   $87                                         ; $6656: $fe $87
	rst  $38                                         ; $6658: $ff
	db   $e3                                         ; $6659: $e3
	rst  $38                                         ; $665a: $ff
	ld   sp, hl                                      ; $665b: $f9
	rst  $38                                         ; $665c: $ff
	ldh  a, [rIE]                                    ; $665d: $f0 $ff
	ld   [de], a                                     ; $665f: $12
	rra                                              ; $6660: $1f
	add  h                                           ; $6661: $84
	xor  a                                           ; $6662: $af
	add  b                                           ; $6663: $80
	rra                                              ; $6664: $1f
	add  d                                           ; $6665: $82
	rst  $38                                         ; $6666: $ff
	add  b                                           ; $6667: $80
	rst  JumpTable                                         ; $6668: $df
	ld   [bc], a                                     ; $6669: $02
	add  a                                           ; $666a: $87
	sbc  a                                           ; $666b: $9f
	sbc  b                                           ; $666c: $98
	add  b                                           ; $666d: $80
	sbc  a                                           ; $666e: $9f
	add  d                                           ; $666f: $82
	cp   a                                           ; $6670: $bf
	add  b                                           ; $6671: $80
	add  a                                           ; $6672: $87
	add  b                                           ; $6673: $80
	xor  e                                           ; $6674: $ab
	add  b                                           ; $6675: $80
	xor  l                                           ; $6676: $ad
	ld   [bc], a                                     ; $6677: $02
	adc  b                                           ; $6678: $88
	ld   h, a                                        ; $6679: $67
	ld   l, e                                        ; $667a: $6b
	add  d                                           ; $667b: $82
	ei                                               ; $667c: $fb
	ld   a, [bc]                                     ; $667d: $0a
	sbc  e                                           ; $667e: $9b
	ei                                               ; $667f: $fb
	adc  e                                           ; $6680: $8b
	di                                               ; $6681: $f3
	db   $e3                                         ; $6682: $e3
	rst  $38                                         ; $6683: $ff
	cp   e                                           ; $6684: $bb
	or   a                                           ; $6685: $b7
	pop  af                                          ; $6686: $f1
	rst  $30                                         ; $6687: $f7
	adc  d                                           ; $6688: $8a
	add  b                                           ; $6689: $80
	jp   nc, $d680                                   ; $668a: $d2 $80 $d6

	ld   bc, $4ece                                   ; $668d: $01 $ce $4e
	add  b                                           ; $6690: $80
	ret  c                                           ; $6691: $d8

	add  b                                           ; $6692: $80
	db   $db                                         ; $6693: $db
	add  b                                           ; $6694: $80
	ld   [$e680], a                                  ; $6695: $ea $80 $e6
	inc  bc                                          ; $6698: $03
	db   $e4                                         ; $6699: $e4
	inc  d                                           ; $669a: $14
	rst  $38                                         ; $669b: $ff
	rst  $30                                         ; $669c: $f7
	add  c                                           ; $669d: $81
	rst  $38                                         ; $669e: $ff
	dec  b                                           ; $669f: $05
	rlca                                             ; $66a0: $07
	inc  bc                                          ; $66a1: $03
	rlca                                             ; $66a2: $07
	db   $f4                                         ; $66a3: $f4
	rst  $30                                         ; $66a4: $f7

jr_018_66a5:
	inc  bc                                          ; $66a5: $03
	add  b                                           ; $66a6: $80
	di                                               ; $66a7: $f3
	ld   [bc], a                                     ; $66a8: $02
	ld   bc, $0603                                   ; $66a9: $01 $03 $06
	add  [hl]                                        ; $66ac: $86
	rst  $38                                         ; $66ad: $ff
	add  b                                           ; $66ae: $80
	cp   $80                                         ; $66af: $fe $80
	ld   a, l                                        ; $66b1: $7d
	inc  c                                           ; $66b2: $0c
	inc  bc                                          ; $66b3: $03
	ld   [bc], a                                     ; $66b4: $02
	ld   [hl], a                                     ; $66b5: $77
	ld   c, e                                        ; $66b6: $4b
	rst  $38                                         ; $66b7: $ff
	or   h                                           ; $66b8: $b4
	rst  $38                                         ; $66b9: $ff
	ldh  a, [c]                                      ; $66ba: $f2
	rst  $38                                         ; $66bb: $ff
	ld   a, a                                        ; $66bc: $7f
	rst  $38                                         ; $66bd: $ff
	dec  sp                                          ; $66be: $3b
	ccf                                              ; $66bf: $3f
	add  b                                           ; $66c0: $80
	rst  JumpTable                                         ; $66c1: $df
	add  hl, bc                                      ; $66c2: $09
	jr   nz, jr_018_66a5                             ; $66c3: $20 $e0

	ld   [hl], b                                     ; $66c5: $70
	rst  $30                                         ; $66c6: $f7
	jr   c, @+$01                                    ; $66c7: $38 $ff

	ccf                                              ; $66c9: $3f
	rst  $38                                         ; $66ca: $ff
	cp   a                                           ; $66cb: $bf
	rst  $38                                         ; $66cc: $ff
	add  b                                           ; $66cd: $80
	ldh  [$03], a                                    ; $66ce: $e0 $03
	sub  b                                           ; $66d0: $90
	sub  a                                           ; $66d1: $97
	ld   [hl], a                                     ; $66d2: $77
	ld   [hl], b                                     ; $66d3: $70
	add  b                                           ; $66d4: $80
	ld   [hl], a                                     ; $66d5: $77
	ld   [bc], a                                     ; $66d6: $02
	ld   d, b                                        ; $66d7: $50
	ld   [hl], b                                     ; $66d8: $70
	and  b                                           ; $66d9: $a0
	add  b                                           ; $66da: $80
	and  l                                           ; $66db: $a5
	add  b                                           ; $66dc: $80
	or   l                                           ; $66dd: $b5
	ld   bc, $39b9                                   ; $66de: $01 $b9 $39
	add  b                                           ; $66e1: $80
	dec  c                                           ; $66e2: $0d
	add  b                                           ; $66e3: $80
	db   $ed                                         ; $66e4: $ed
	ld   b, $2b                                      ; $66e5: $06 $2b
	xor  e                                           ; $66e7: $ab
	or   e                                           ; $66e8: $b3
	inc  sp                                          ; $66e9: $33
	inc  de                                          ; $66ea: $13
	add  sp, -$05                                    ; $66eb: $e8 $fb
	add  d                                           ; $66ed: $82
	rst  $38                                         ; $66ee: $ff
	nop                                              ; $66ef: $00
	ld   a, a                                        ; $66f0: $7f
	add  d                                           ; $66f1: $82
	rst  $38                                         ; $66f2: $ff
	nop                                              ; $66f3: $00
	rst  $30                                         ; $66f4: $f7
	add  b                                           ; $66f5: $80
	or   $02                                         ; $66f6: $f6 $02
	rst  $20                                         ; $66f8: $e7
	rst  $30                                         ; $66f9: $f7
	ld   h, [hl]                                     ; $66fa: $66
	add  d                                           ; $66fb: $82
	rst  $20                                         ; $66fc: $e7
	add  c                                           ; $66fd: $81
	rst  $28                                         ; $66fe: $ef
	add  b                                           ; $66ff: $80
	ld   l, a                                        ; $6700: $6f
	dec  bc                                          ; $6701: $0b
	db   $ed                                         ; $6702: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6703: $cf
	scf                                              ; $6704: $37
	rlca                                             ; $6705: $07
	inc  bc                                          ; $6706: $03
	ld   hl, sp-$07                                  ; $6707: $f8 $f9
	push hl                                          ; $6709: $e5
	db   $e4                                         ; $670a: $e4
	db   $ec                                         ; $670b: $ec
	rst  $28                                         ; $670c: $ef
	db   $eb                                         ; $670d: $eb
	add  b                                           ; $670e: $80
	add  sp, -$80                                    ; $670f: $e8 $80
	db   $eb                                         ; $6711: $eb
	inc  bc                                          ; $6712: $03
	add  sp, -$28                                    ; $6713: $e8 $d8
	rst  JumpTable                                         ; $6715: $df
	rst  $10                                         ; $6716: $d7
	add  b                                           ; $6717: $80
	ret  nc                                          ; $6718: $d0

	inc  bc                                          ; $6719: $03
	add  hl, sp                                      ; $671a: $39
	rst  $20                                         ; $671b: $e7
	ld   b, $07                                      ; $671c: $06 $07
	add  b                                           ; $671e: $80
	rst  $20                                         ; $671f: $e7
	add  b                                           ; $6720: $80
	rlca                                             ; $6721: $07
	inc  bc                                          ; $6722: $03
	rst  $20                                         ; $6723: $e7
	and  $1e                                         ; $6724: $e6 $1e
	ld   c, $80                                      ; $6726: $0e $80
	adc  $80                                         ; $6728: $ce $80
	ld   c, $02                                      ; $672a: $0e $02
	dec  e                                           ; $672c: $1d
	ld   [hl], a                                     ; $672d: $77
	ld   a, e                                        ; $672e: $7b
	add  c                                           ; $672f: $81
	ld   l, a                                        ; $6730: $6f
	nop                                              ; $6731: $00
	ld   a, a                                        ; $6732: $7f
	add  b                                           ; $6733: $80
	ld   e, a                                        ; $6734: $5f
	add  b                                           ; $6735: $80
	rra                                              ; $6736: $1f
	ld   [$c0df], sp                                 ; $6737: $08 $df $c0
	nop                                              ; $673a: $00
	ccf                                              ; $673b: $3f
	cp   a                                           ; $673c: $bf
	bit  7, e                                        ; $673d: $cb $7b
	jr   c, jr_018_67b9                              ; $673f: $38 $78

	add  b                                           ; $6741: $80
	ld   a, e                                        ; $6742: $7b
	add  b                                           ; $6743: $80
	ld   a, b                                        ; $6744: $78
	dec  c                                           ; $6745: $0d
	ld   a, e                                        ; $6746: $7b
	dec  sp                                          ; $6747: $3b
	inc  [hl]                                        ; $6748: $34
	cp   h                                           ; $6749: $bc
	cp   l                                           ; $674a: $bd
	dec  a                                           ; $674b: $3d
	inc  a                                           ; $674c: $3c
	cp   h                                           ; $674d: $bc
	ld   a, b                                        ; $674e: $78
	db   $d3                                         ; $674f: $d3
	inc  de                                          ; $6750: $13
	dec  de                                          ; $6751: $1b
	ei                                               ; $6752: $fb
	db   $eb                                         ; $6753: $eb
	add  b                                           ; $6754: $80
	dec  bc                                          ; $6755: $0b
	add  b                                           ; $6756: $80
	db   $eb                                         ; $6757: $eb
	inc  bc                                          ; $6758: $03
	dec  bc                                          ; $6759: $0b
	dec  c                                           ; $675a: $0d
	db   $fd                                         ; $675b: $fd
	push af                                          ; $675c: $f5
	add  b                                           ; $675d: $80
	dec  b                                           ; $675e: $05
	nop                                              ; $675f: $00
	ld   a, [hl+]                                    ; $6760: $2a
	add  d                                           ; $6761: $82
	di                                               ; $6762: $f3
	ld   bc, $e3fb                                   ; $6763: $01 $fb $e3
	add  c                                           ; $6766: $81
	ei                                               ; $6767: $fb
	inc  b                                           ; $6768: $04
	db   $db                                         ; $6769: $db
	ld   sp, hl                                      ; $676a: $f9
	cp   $f0                                         ; $676b: $fe $f0
	ldh  [$80], a                                    ; $676d: $e0 $80
	adc  a                                           ; $676f: $8f
	add  b                                           ; $6770: $80
	rrca                                             ; $6771: $0f
	ld   bc, $f0d0                                   ; $6772: $01 $d0 $f0
	add  b                                           ; $6775: $80
	ld   l, $09                                      ; $6776: $2e $09
	jr   nc, jr_018_67cb                             ; $6778: $30 $51

	ld   e, l                                        ; $677a: $5d
	ld   e, a                                        ; $677b: $5f
	ld   h, d                                        ; $677c: $62
	and  $f5                                         ; $677d: $e6 $f5
	db   $fd                                         ; $677f: $fd
	db   $ed                                         ; $6780: $ed
	ld   [hl+], a                                    ; $6781: $22
	add  b                                           ; $6782: $80
	cp   $80                                         ; $6783: $fe $80
	nop                                              ; $6785: $00
	add  b                                           ; $6786: $80
	rst  $38                                         ; $6787: $ff
	ld   bc, $ff3f                                   ; $6788: $01 $3f $ff
	add  b                                           ; $678b: $80
	ld   e, a                                        ; $678c: $5f
	ld   bc, $ffdf                                   ; $678d: $01 $df $ff
	add  c                                           ; $6790: $81
	rst  $28                                         ; $6791: $ef
	nop                                              ; $6792: $00
	rrca                                             ; $6793: $0f
	add  b                                           ; $6794: $80
	cp   a                                           ; $6795: $bf
	add  b                                           ; $6796: $80
	add  b                                           ; $6797: $80
	add  b                                           ; $6798: $80
	rst  $38                                         ; $6799: $ff
	ld   bc, $fffe                                   ; $679a: $01 $fe $ff
	add  c                                           ; $679d: $81
	db   $fd                                         ; $679e: $fd
	nop                                              ; $679f: $00
	rst  $38                                         ; $67a0: $ff
	add  c                                           ; $67a1: $81
	ei                                               ; $67a2: $fb
	add  c                                           ; $67a3: $81
	ld   hl, sp-$80                                  ; $67a4: $f8 $80
	dec  b                                           ; $67a6: $05
	add  b                                           ; $67a7: $80
	cp   d                                           ; $67a8: $ba
	add  hl, bc                                      ; $67a9: $09
	ld   b, $c6                                      ; $67aa: $06 $c6
	ld   e, l                                        ; $67ac: $5d
	ld   a, l                                        ; $67ad: $7d
	and  e                                           ; $67ae: $a3
	or   e                                           ; $67af: $b3
	rst  $10                                         ; $67b0: $d7
	rst  JumpTable                                         ; $67b1: $df
	db   $db                                         ; $67b2: $db
	call c, $008f                                    ; $67b3: $dc $8f $00
	add  b                                           ; $67b6: $80
	inc  b                                           ; $67b7: $04
	add  [hl]                                        ; $67b8: $86

jr_018_67b9:
	nop                                              ; $67b9: $00
	add  b                                           ; $67ba: $80
	ld   bc, $1080                                   ; $67bb: $01 $80 $10
	add  b                                           ; $67be: $80
	ld   bc, $0280                                   ; $67bf: $01 $80 $02
	add  b                                           ; $67c2: $80
	add  hl, bc                                      ; $67c3: $09
	add  b                                           ; $67c4: $80
	add  d                                           ; $67c5: $82
	add  b                                           ; $67c6: $80
	ld   bc, $0080                                   ; $67c7: $01 $80 $00
	add  b                                           ; $67ca: $80

jr_018_67cb:
	ld   [$008c], sp                                 ; $67cb: $08 $8c $00
	add  b                                           ; $67ce: $80
	db   $10                                         ; $67cf: $10
	add  b                                           ; $67d0: $80
	add  b                                           ; $67d1: $80
	add  b                                           ; $67d2: $80
	ld   b, b                                        ; $67d3: $40
	add  b                                           ; $67d4: $80
	and  b                                           ; $67d5: $a0
	add  b                                           ; $67d6: $80
	ret  nc                                          ; $67d7: $d0

	add  b                                           ; $67d8: $80
	ld   hl, sp-$80                                  ; $67d9: $f8 $80
	db   $fc                                         ; $67db: $fc
	add  b                                           ; $67dc: $80
	ld   a, $80                                      ; $67dd: $3e $80
	rrca                                             ; $67df: $0f
	add  b                                           ; $67e0: $80
	ld   [bc], a                                     ; $67e1: $02
	add  b                                           ; $67e2: $80
	jr   z, @-$7e                                    ; $67e3: $28 $80

	nop                                              ; $67e5: $00
	add  b                                           ; $67e6: $80
	ld   d, l                                        ; $67e7: $55
	add  b                                           ; $67e8: $80
	xor  d                                           ; $67e9: $aa
	add  b                                           ; $67ea: $80
	dec  d                                           ; $67eb: $15
	add  b                                           ; $67ec: $80
	ld   c, e                                        ; $67ed: $4b
	add  b                                           ; $67ee: $80
	sub  l                                           ; $67ef: $95
	add  b                                           ; $67f0: $80
	ld   a, [hl+]                                    ; $67f1: $2a
	add  b                                           ; $67f2: $80
	ld   d, l                                        ; $67f3: $55
	add  b                                           ; $67f4: $80
	ld   a, [hl+]                                    ; $67f5: $2a
	add  b                                           ; $67f6: $80
	push de                                          ; $67f7: $d5
	add  b                                           ; $67f8: $80
	cp   $80                                         ; $67f9: $fe $80
	dec  sp                                          ; $67fb: $3b
	add  b                                           ; $67fc: $80
	rlca                                             ; $67fd: $07
	add  b                                           ; $67fe: $80
	ld   b, b                                        ; $67ff: $40
	add  d                                           ; $6800: $82
	nop                                              ; $6801: $00
	add  b                                           ; $6802: $80
	add  b                                           ; $6803: $80
	add  b                                           ; $6804: $80
	ld   [$8080], sp                                 ; $6805: $08 $80 $80
	add  b                                           ; $6808: $80
	ld   b, b                                        ; $6809: $40
	add  b                                           ; $680a: $80
	ret  nz                                          ; $680b: $c0

	add  b                                           ; $680c: $80
	ld   h, b                                        ; $680d: $60
	add  b                                           ; $680e: $80
	or   b                                           ; $680f: $b0
	add  b                                           ; $6810: $80
	ret  nc                                          ; $6811: $d0

	add  b                                           ; $6812: $80
	ld   hl, sp-$7e                                  ; $6813: $f8 $82
	db   $fc                                         ; $6815: $fc
	add  b                                           ; $6816: $80
	cp   $80                                         ; $6817: $fe $80
	rst  $38                                         ; $6819: $ff
	add  b                                           ; $681a: $80
	ld   a, a                                        ; $681b: $7f
	add  b                                           ; $681c: $80
	ld   c, $80                                      ; $681d: $0e $80
	ld   [bc], a                                     ; $681f: $02
	add  b                                           ; $6820: $80
	sub  l                                           ; $6821: $95
	add  b                                           ; $6822: $80
	dec  hl                                          ; $6823: $2b
	add  b                                           ; $6824: $80
	ld   d, l                                        ; $6825: $55
	add  b                                           ; $6826: $80
	cp   e                                           ; $6827: $bb
	add  b                                           ; $6828: $80
	ld   e, a                                        ; $6829: $5f
	add  b                                           ; $682a: $80
	cp   a                                           ; $682b: $bf
	add  b                                           ; $682c: $80
	ld   a, a                                        ; $682d: $7f
	add  b                                           ; $682e: $80
	cp   a                                           ; $682f: $bf
	add  b                                           ; $6830: $80
	ld   e, a                                        ; $6831: $5f
	add  b                                           ; $6832: $80
	ld   a, a                                        ; $6833: $7f
	add  b                                           ; $6834: $80
	ccf                                              ; $6835: $3f
	add  b                                           ; $6836: $80
	ld   c, $80                                      ; $6837: $0e $80
	nop                                              ; $6839: $00
	add  b                                           ; $683a: $80
	ld   b, b                                        ; $683b: $40
	add  h                                           ; $683c: $84
	nop                                              ; $683d: $00
	add  b                                           ; $683e: $80
	adc  b                                           ; $683f: $88
	add  b                                           ; $6840: $80
	ld   b, b                                        ; $6841: $40
	add  b                                           ; $6842: $80
	ldh  [$80], a                                    ; $6843: $e0 $80
	ret  nz                                          ; $6845: $c0

	add  d                                           ; $6846: $82
	ldh  [$80], a                                    ; $6847: $e0 $80
	ret  c                                           ; $6849: $d8

	add  b                                           ; $684a: $80
	ld   d, h                                        ; $684b: $54
	add  b                                           ; $684c: $80
	xor  h                                           ; $684d: $ac
	add  b                                           ; $684e: $80
	ld   d, [hl]                                     ; $684f: $56
	add  b                                           ; $6850: $80
	xor  h                                           ; $6851: $ac
	add  b                                           ; $6852: $80
	sbc  $80                                         ; $6853: $de $80
	ld   l, b                                        ; $6855: $68
	add  b                                           ; $6856: $80
	nop                                              ; $6857: $00
	add  b                                           ; $6858: $80
	dec  h                                           ; $6859: $25
	add  b                                           ; $685a: $80
	adc  d                                           ; $685b: $8a
	add  b                                           ; $685c: $80
	ld   d, l                                        ; $685d: $55
	add  b                                           ; $685e: $80
	ld   a, [hl+]                                    ; $685f: $2a
	add  b                                           ; $6860: $80
	ld   d, l                                        ; $6861: $55
	add  b                                           ; $6862: $80
	xor  a                                           ; $6863: $af
	add  b                                           ; $6864: $80
	ld   e, e                                        ; $6865: $5b
	add  b                                           ; $6866: $80
	cpl                                              ; $6867: $2f
	add  b                                           ; $6868: $80
	ld   e, d                                        ; $6869: $5a
	add  b                                           ; $686a: $80
	dec  h                                           ; $686b: $25
	add  b                                           ; $686c: $80
	sub  d                                           ; $686d: $92
	add  b                                           ; $686e: $80
	nop                                              ; $686f: $00
	add  b                                           ; $6870: $80
	inc  b                                           ; $6871: $04
	add  h                                           ; $6872: $84
	nop                                              ; $6873: $00
	add  b                                           ; $6874: $80
	ld   b, b                                        ; $6875: $40
	add  b                                           ; $6876: $80
	add  b                                           ; $6877: $80
	add  b                                           ; $6878: $80
	ld   l, b                                        ; $6879: $68
	add  b                                           ; $687a: $80
	ret  nc                                          ; $687b: $d0

	add  b                                           ; $687c: $80
	and  b                                           ; $687d: $a0
	add  b                                           ; $687e: $80
	ret  nc                                          ; $687f: $d0

	add  b                                           ; $6880: $80
	and  b                                           ; $6881: $a0
	add  b                                           ; $6882: $80
	ld   c, b                                        ; $6883: $48
	add  b                                           ; $6884: $80
	sub  [hl]                                        ; $6885: $96
	add  b                                           ; $6886: $80
	ld   a, [hl+]                                    ; $6887: $2a
	add  b                                           ; $6888: $80
	ld   d, $80                                      ; $6889: $16 $80
	sbc  h                                           ; $688b: $9c
	add  $00                                         ; $688c: $c6 $00
	ldh  a, [c]                                      ; $688e: $f2
	ld   bc, $0300                                   ; $688f: $01 $00 $03
	add  d                                           ; $6892: $82
	ld   bc, $0000                                   ; $6893: $01 $00 $00
	add  d                                           ; $6896: $82
	ld   bc, $0202                                   ; $6897: $01 $02 $02
	nop                                              ; $689a: $00
	ld   bc, $00a1                                   ; $689b: $01 $a1 $00
	rrca                                             ; $689e: $0f
	add  c                                           ; $689f: $81
	ld   e, $c0                                      ; $68a0: $1e $c0
	and  b                                           ; $68a2: $a0
	nop                                              ; $68a3: $00
	ld   c, $8f                                      ; $68a4: $0e $8f
	adc  h                                           ; $68a6: $8c
	ld   c, $18                                      ; $68a7: $0e $18
	inc  e                                           ; $68a9: $1c
	ret  nz                                          ; $68aa: $c0

	ret  c                                           ; $68ab: $d8

	nop                                              ; $68ac: $00
	ldh  [rP1], a                                    ; $68ad: $e0 $00
	add  b                                           ; $68af: $80
	ld   h, b                                        ; $68b0: $60
	adc  [hl]                                        ; $68b1: $8e
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	ld   bc, $0081                                   ; $68b4: $01 $81 $00
	inc  b                                           ; $68b7: $04
	ld   [bc], a                                     ; $68b8: $02
	ld   bc, $0100                                   ; $68b9: $01 $00 $01
	rlca                                             ; $68bc: $07
	add  e                                           ; $68bd: $83
	inc  bc                                          ; $68be: $03
	nop                                              ; $68bf: $00
	ld   bc, $0381                                   ; $68c0: $01 $81 $03
	nop                                              ; $68c3: $00
	ld   [bc], a                                     ; $68c4: $02
	add  e                                           ; $68c5: $83
	inc  bc                                          ; $68c6: $03
	nop                                              ; $68c7: $00
	rlca                                             ; $68c8: $07
	add  c                                           ; $68c9: $81
	ld   bc, $0302                                   ; $68ca: $01 $02 $03
	nop                                              ; $68cd: $00
	ld   bc, $008d                                   ; $68ce: $01 $8d $00
	nop                                              ; $68d1: $00
	ld   b, d                                        ; $68d2: $42
	add  c                                           ; $68d3: $81
	cp   l                                           ; $68d4: $bd
	add  b                                           ; $68d5: $80
	nop                                              ; $68d6: $00
	nop                                              ; $68d7: $00
	rst  $38                                         ; $68d8: $ff
	add  c                                           ; $68d9: $81
	nop                                              ; $68da: $00
	ld   b, $03                                      ; $68db: $06 $03
	nop                                              ; $68dd: $00
	inc  a                                           ; $68de: $3c
	inc  bc                                          ; $68df: $03
	ld   b, e                                        ; $68e0: $43
	scf                                              ; $68e1: $37
	ld   c, b                                        ; $68e2: $48
	adc  l                                           ; $68e3: $8d
	nop                                              ; $68e4: $00
	inc  b                                           ; $68e5: $04
	ld   h, a                                        ; $68e6: $67
	cp   e                                           ; $68e7: $bb
	and  e                                           ; $68e8: $a3
	cp   e                                           ; $68e9: $bb
	dec  sp                                          ; $68ea: $3b
	add  b                                           ; $68eb: $80
	cp   e                                           ; $68ec: $bb
	add  b                                           ; $68ed: $80
	cp   l                                           ; $68ee: $bd
	add  b                                           ; $68ef: $80
	db   $dd                                         ; $68f0: $dd
	dec  b                                           ; $68f1: $05
	call c, $c0df                                    ; $68f2: $dc $df $c0
	db   $fc                                         ; $68f5: $fc
	nop                                              ; $68f6: $00
	ret  nz                                          ; $68f7: $c0

	adc  e                                           ; $68f8: $8b
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	ld   bc, $0081                                   ; $68fb: $01 $81 $00
	nop                                              ; $68fe: $00
	inc  bc                                          ; $68ff: $03
	add  c                                           ; $6900: $81
	ld   bc, $0700                                   ; $6901: $01 $00 $07
	add  e                                           ; $6904: $83
	inc  bc                                          ; $6905: $03
	add  d                                           ; $6906: $82
	ld   bc, $0282                                   ; $6907: $01 $82 $02
	ld   bc, $0105                                   ; $690a: $01 $05 $01
	add  b                                           ; $690d: $80
	nop                                              ; $690e: $00
	add  b                                           ; $690f: $80
	ld   bc, $070b                                   ; $6910: $01 $0b $07
	inc  bc                                          ; $6913: $03
	rrca                                             ; $6914: $0f
	rlca                                             ; $6915: $07
	rrca                                             ; $6916: $0f
	inc  bc                                          ; $6917: $03
	inc  de                                          ; $6918: $13
	inc  c                                           ; $6919: $0c
	dec  c                                           ; $691a: $0d
	ld   c, $3e                                      ; $691b: $0e $3e
	ld   e, $80                                      ; $691d: $1e $80
	dec  e                                           ; $691f: $1d
	ld   bc, $2060                                   ; $6920: $01 $60 $20
	add  b                                           ; $6923: $80
	dec  e                                           ; $6924: $1d
	add  b                                           ; $6925: $80
	dec  a                                           ; $6926: $3d
	ld   [bc], a                                     ; $6927: $02
	ld   b, c                                        ; $6928: $41
	ld   bc, $803d                                   ; $6929: $01 $3d $80
	ld   bc, $0001                                   ; $692c: $01 $01 $00
	ld   [bc], a                                     ; $692f: $02
	sbc  c                                           ; $6930: $99
	nop                                              ; $6931: $00
	inc  b                                           ; $6932: $04
	ld   b, h                                        ; $6933: $44
	add  e                                           ; $6934: $83
	ld   b, e                                        ; $6935: $43
	inc  bc                                          ; $6936: $03
	add  e                                           ; $6937: $83
	add  c                                           ; $6938: $81
	inc  bc                                          ; $6939: $03
	ld   [bc], a                                     ; $693a: $02

jr_018_693b:
	add  hl, sp                                      ; $693b: $39
	ld   bc, $80c0                                   ; $693c: $01 $c0 $80
	ld   a, $80                                      ; $693f: $3e $80
	cp   a                                           ; $6941: $bf
	ld   bc, $807f                                   ; $6942: $01 $7f $80
	adc  l                                           ; $6945: $8d
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	rst  $38                                         ; $6948: $ff
	add  b                                           ; $6949: $80
	rst  JumpTable                                         ; $694a: $df
	add  b                                           ; $694b: $80
	sbc  $0b                                         ; $694c: $de $0b
	db   $ec                                         ; $694e: $ec
	rst  $28                                         ; $694f: $ef
	ldh  [$ed], a                                    ; $6950: $e0 $ed
	add  b                                           ; $6952: $80
	di                                               ; $6953: $f3
	ld   bc, $0387                                   ; $6954: $01 $87 $03
	ld   [$0f00], sp                                 ; $6957: $08 $00 $0f
	adc  l                                           ; $695a: $8d
	nop                                              ; $695b: $00
	ld   bc, $0f10                                   ; $695c: $01 $10 $0f
	add  b                                           ; $695f: $80
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	rla                                              ; $6962: $17
	add  c                                           ; $6963: $81
	rlca                                             ; $6964: $07
	dec  b                                           ; $6965: $05
	scf                                              ; $6966: $37
	rlca                                             ; $6967: $07
	ld   b, a                                        ; $6968: $47
	daa                                              ; $6969: $27
	and  e                                           ; $696a: $a3
	ld   b, e                                        ; $696b: $43
	add  b                                           ; $696c: $80
	jp   $a000                                       ; $696d: $c3 $00 $a0


	add  c                                           ; $6970: $81
	rst  $38                                         ; $6971: $ff
	add  b                                           ; $6972: $80
	ccf                                              ; $6973: $3f
	inc  bc                                          ; $6974: $03
	rst  $20                                         ; $6975: $e7
	rst  ToBoot                                         ; $6976: $c7
	rlca                                             ; $6977: $07
	nop                                              ; $6978: $00
	add  b                                           ; $6979: $80
	rst  ToBoot                                         ; $697a: $c7
	ld   b, $88                                      ; $697b: $06 $88
	or   b                                           ; $697d: $b0
	ld   a, b                                        ; $697e: $78
	ld   a, a                                        ; $697f: $7f
	ld   [hl], a                                     ; $6980: $77
	ld   a, a                                        ; $6981: $7f
	rst  $28                                         ; $6982: $ef
	add  b                                           ; $6983: $80
	ld   a, a                                        ; $6984: $7f
	rlca                                             ; $6985: $07

jr_018_6986:
	sbc  [hl]                                        ; $6986: $9e
	add  [hl]                                        ; $6987: $86
	add  $33                                         ; $6988: $c6 $33
	jr   nc, jr_018_6986                             ; $698a: $30 $fa

	ret  z                                           ; $698c: $c8

	db   $fc                                         ; $698d: $fc
	add  c                                           ; $698e: $81
	ldh  a, [rDIV]                                   ; $698f: $f0 $04
	db   $f4                                         ; $6991: $f4
	ldh  a, [$80]                                    ; $6992: $f0 $80
	nop                                              ; $6994: $00
	ld   a, b                                        ; $6995: $78
	xor  c                                           ; $6996: $a9
	nop                                              ; $6997: $00
	ld   [$c73f], sp                                 ; $6998: $08 $3f $c7
	ld   bc, $860f                                   ; $699b: $01 $0f $86
	ccf                                              ; $699e: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $699f: $cf
	cp   a                                           ; $69a0: $bf
	ccf                                              ; $69a1: $3f
	add  b                                           ; $69a2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69a3: $cf
	add  b                                           ; $69a4: $80
	rst  $20                                         ; $69a5: $e7
	add  b                                           ; $69a6: $80
	ld   sp, hl                                      ; $69a7: $f9
	ld   bc, $02fc                                   ; $69a8: $01 $fc $02
	add  b                                           ; $69ab: $80
	cp   $0d                                         ; $69ac: $fe $0d
	db   $fd                                         ; $69ae: $fd
	cp   $f2                                         ; $69af: $fe $f2
	db   $fd                                         ; $69b1: $fd
	call z, $20fa                                    ; $69b2: $cc $fa $20
	db   $f4                                         ; $69b5: $f4
	ldh  [rAUD1SWEEP], a                             ; $69b6: $e0 $10
	nop                                              ; $69b8: $00
	jr   nz, jr_018_693b                             ; $69b9: $20 $80

	ret  nz                                          ; $69bb: $c0

	add  c                                           ; $69bc: $81
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	add  b                                           ; $69bf: $80
	sbc  c                                           ; $69c0: $99
	nop                                              ; $69c1: $00
	add  hl, bc                                      ; $69c2: $09
	ret  nz                                          ; $69c3: $c0

	cp   a                                           ; $69c4: $bf
	sbc  a                                           ; $69c5: $9f
	rst  JumpTable                                         ; $69c6: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69c7: $cf
	ld   c, a                                        ; $69c8: $4f
	ld   [hl], e                                     ; $69c9: $73
	or   e                                           ; $69ca: $b3
	inc  e                                           ; $69cb: $1c
	sbc  h                                           ; $69cc: $9c
	add  b                                           ; $69cd: $80
	daa                                              ; $69ce: $27
	ld   b, $b8                                      ; $69cf: $06 $b8
	jr   c, jr_018_6a31                              ; $69d1: $38 $5e

	ld   e, $a1                                      ; $69d3: $1e $a1
	ld   bc, $8117                                   ; $69d5: $01 $17 $81
	rlca                                             ; $69d8: $07
	add  d                                           ; $69d9: $82
	inc  bc                                          ; $69da: $03
	inc  bc                                          ; $69db: $03
	ld   e, $03                                      ; $69dc: $1e $03
	inc  de                                          ; $69de: $13
	ld   bc, $0080                                   ; $69df: $01 $80 $00
	inc  b                                           ; $69e2: $04
	add  b                                           ; $69e3: $80
	nop                                              ; $69e4: $00
	add  b                                           ; $69e5: $80
	nop                                              ; $69e6: $00
	add  b                                           ; $69e7: $80
	add  a                                           ; $69e8: $87
	nop                                              ; $69e9: $00

jr_018_69ea:
	dec  b                                           ; $69ea: $05
	ld   [bc], a                                     ; $69eb: $02
	nop                                              ; $69ec: $00
	dec  b                                           ; $69ed: $05
	ld   [bc], a                                     ; $69ee: $02
	inc  b                                           ; $69ef: $04
	ld   bc, $009a                                   ; $69f0: $01 $9a $00
	nop                                              ; $69f3: $00
	rst  $38                                         ; $69f4: $ff
	add  b                                           ; $69f5: $80
	ldh  a, [$80]                                    ; $69f6: $f0 $80
	rst  $38                                         ; $69f8: $ff
	ld   a, [bc]                                     ; $69f9: $0a
	ldh  a, [rIE]                                    ; $69fa: $f0 $ff
	rrca                                             ; $69fc: $0f
	cp   a                                           ; $69fd: $bf
	ld   a, a                                        ; $69fe: $7f
	cp   b                                           ; $69ff: $b8
	jr   c, jr_018_6a28                              ; $6a00: $38 $26

	ld   b, $58                                      ; $6a02: $06 $58
	ld   c, b                                        ; $6a04: $48
	add  b                                           ; $6a05: $80
	ld   b, [hl]                                     ; $6a06: $46
	ld   b, $68                                      ; $6a07: $06 $68
	ld   h, b                                        ; $6a09: $60
	ld   h, [hl]                                     ; $6a0a: $66
	ld   h, d                                        ; $6a0b: $62
	ld   [hl], d                                     ; $6a0c: $72
	ld   h, b                                        ; $6a0d: $60
	ld   h, c                                        ; $6a0e: $61
	add  b                                           ; $6a0f: $80
	ld   h, b                                        ; $6a10: $60
	ld   bc, $b8b0                                   ; $6a11: $01 $b0 $b8
	add  b                                           ; $6a14: $80
	ret  nz                                          ; $6a15: $c0

	nop                                              ; $6a16: $00
	ld   hl, sp-$7e                                  ; $6a17: $f8 $82
	ld   a, h                                        ; $6a19: $7c
	nop                                              ; $6a1a: $00
	ld   a, $80                                      ; $6a1b: $3e $80
	ld   b, $01                                      ; $6a1d: $06 $01
	nop                                              ; $6a1f: $00
	ld   bc, $0080                                   ; $6a20: $01 $80 $00
	ld   b, $31                                      ; $6a23: $06 $31
	ld   de, $051d                                   ; $6a25: $11 $1d $05

jr_018_6a28:
	ld   [bc], a                                     ; $6a28: $02
	dec  b                                           ; $6a29: $05
	nop                                              ; $6a2a: $00
	add  b                                           ; $6a2b: $80
	add  b                                           ; $6a2c: $80
	sbc  d                                           ; $6a2d: $9a
	nop                                              ; $6a2e: $00
	inc  b                                           ; $6a2f: $04
	halt                                             ; $6a30: $76

jr_018_6a31:
	jr   nz, jr_018_6a57                             ; $6a31: $20 $24

	jr   nz, jr_018_6a5d                             ; $6a33: $20 $28

	add  c                                           ; $6a35: $81
	jr   nc, jr_018_6a3d                             ; $6a36: $30 $05

	inc  a                                           ; $6a38: $3c
	jr   c, jr_018_6a63                              ; $6a39: $38 $28

	ld   a, b                                        ; $6a3b: $78
	ld   e, b                                        ; $6a3c: $58

jr_018_6a3d:
	ld   a, b                                        ; $6a3d: $78
	add  b                                           ; $6a3e: $80
	jr   c, jr_018_6a42                              ; $6a3f: $38 $01

	or   a                                           ; $6a41: $b7

jr_018_6a42:
	adc  c                                           ; $6a42: $89
	add  b                                           ; $6a43: $80
	adc  l                                           ; $6a44: $8d
	add  d                                           ; $6a45: $82
	add  l                                           ; $6a46: $85
	add  b                                           ; $6a47: $80
	add  c                                           ; $6a48: $81
	add  h                                           ; $6a49: $84
	ld   bc, $0f00                                   ; $6a4a: $01 $00 $0f
	add  b                                           ; $6a4d: $80
	dec  de                                          ; $6a4e: $1b
	add  b                                           ; $6a4f: $80
	dec  bc                                          ; $6a50: $0b
	ld   bc, $0709                                   ; $6a51: $01 $09 $07
	add  e                                           ; $6a54: $83
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00

jr_018_6a57:
	ld   bc, $0081                                   ; $6a57: $01 $81 $00
	dec  c                                           ; $6a5a: $0d
	sbc  a                                           ; $6a5b: $9f
	inc  c                                           ; $6a5c: $0c

jr_018_6a5d:
	ld   l, h                                        ; $6a5d: $6c
	sbc  h                                           ; $6a5e: $9c
	ld   e, l                                        ; $6a5f: $5d
	call c, $382e                                    ; $6a60: $dc $2e $38

jr_018_6a63:
	ld   hl, sp-$10                                  ; $6a63: $f8 $f0
	ldh  [$e8], a                                    ; $6a65: $e0 $e8
	db   $10                                         ; $6a67: $10
	jr   jr_018_69ea                                 ; $6a68: $18 $80

	ld   hl, sp+$02                                  ; $6a6a: $f8 $02
	ld   a, [$f9f8]                                  ; $6a6c: $fa $f8 $f9
	add  b                                           ; $6a6f: $80
	ldh  a, [c]                                      ; $6a70: $f2
	add  b                                           ; $6a71: $80
	db   $e3                                         ; $6a72: $e3
	dec  b                                           ; $6a73: $05
	inc  bc                                          ; $6a74: $03
	rrca                                             ; $6a75: $0f
	rlca                                             ; $6a76: $07
	dec  b                                           ; $6a77: $05
	rlca                                             ; $6a78: $07
	ld   e, $80                                      ; $6a79: $1e $80
	inc  bc                                          ; $6a7b: $03
	ld   [bc], a                                     ; $6a7c: $02
	ld   bc, $6071                                   ; $6a7d: $01 $71 $60
	adc  [hl]                                        ; $6a80: $8e
	nop                                              ; $6a81: $00
	add  b                                           ; $6a82: $80
	ld   [$1880], sp                                 ; $6a83: $08 $80 $18
	add  b                                           ; $6a86: $80
	ld   hl, sp-$7e                                  ; $6a87: $f8 $82
	ldh  a, [$80]                                    ; $6a89: $f0 $80
	db   $ec                                         ; $6a8b: $ec
	add  b                                           ; $6a8c: $80
	xor  $00                                         ; $6a8d: $ee $00
	jp   nz, $fd80                                   ; $6a8f: $c2 $80 $fd

	add  e                                           ; $6a92: $83
	db   $ed                                         ; $6a93: $ed
	ld   bc, $eece                                   ; $6a94: $01 $ce $ee
	add  d                                           ; $6a97: $82
	adc  $00                                         ; $6a98: $ce $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a9a: $cf
	add  c                                           ; $6a9b: $81
	adc  $00                                         ; $6a9c: $ce $00
	adc  [hl]                                        ; $6a9e: $8e
	add  c                                           ; $6a9f: $81
	adc  h                                           ; $6aa0: $8c
	ld   [bc], a                                     ; $6aa1: $02
	adc  b                                           ; $6aa2: $88
	ld   [$8084], sp                                 ; $6aa3: $08 $84 $80
	add  b                                           ; $6aa6: $80
	nop                                              ; $6aa7: $00
	ld   [$0086], sp                                 ; $6aa8: $08 $86 $00
	ld   [de], a                                     ; $6aab: $12
	add  b                                           ; $6aac: $80
	nop                                              ; $6aad: $00
	ld   h, b                                        ; $6aae: $60
	add  b                                           ; $6aaf: $80
	sub  b                                           ; $6ab0: $90
	ldh  [$e8], a                                    ; $6ab1: $e0 $e8
	ldh  a, [$f4]                                    ; $6ab3: $f0 $f4
	ld   hl, sp+$7a                                  ; $6ab5: $f8 $7a
	db   $fc                                         ; $6ab7: $fc
	sbc  h                                           ; $6ab8: $9c
	db   $fc                                         ; $6ab9: $fc
	db   $ec                                         ; $6aba: $ec
	inc  a                                           ; $6abb: $3c
	inc  [hl]                                        ; $6abc: $34
	inc  e                                           ; $6abd: $1c
	ld   e, $80                                      ; $6abe: $1e $80
	ld   [$0007], sp                                 ; $6ac0: $08 $07 $00

jr_018_6ac3:
	inc  c                                           ; $6ac3: $0c
	nop                                              ; $6ac4: $00
	jr   c, jr_018_6ac7                              ; $6ac5: $38 $00

jr_018_6ac7:
	ldh  a, [rP1]                                    ; $6ac7: $f0 $00
	ret  nz                                          ; $6ac9: $c0

	adc  a                                           ; $6aca: $8f
	nop                                              ; $6acb: $00
	add  b                                           ; $6acc: $80
	ret  nz                                          ; $6acd: $c0

	add  b                                           ; $6ace: $80
	ldh  [$80], a                                    ; $6acf: $e0 $80
	ldh  a, [$80]                                    ; $6ad1: $f0 $80
	ld   hl, sp-$80                                  ; $6ad3: $f8 $80
	ldh  a, [$80]                                    ; $6ad5: $f0 $80
	ret  nz                                          ; $6ad7: $c0

	add  b                                           ; $6ad8: $80
	nop                                              ; $6ad9: $00
	ld   [bc], a                                     ; $6ada: $02
	ret  nz                                          ; $6adb: $c0

	add  b                                           ; $6adc: $80
	and  b                                           ; $6add: $a0
	add  c                                           ; $6ade: $81
	ret  nz                                          ; $6adf: $c0

	nop                                              ; $6ae0: $00
	ret  nc                                          ; $6ae1: $d0

	add  e                                           ; $6ae2: $83
	ld   h, b                                        ; $6ae3: $60
	nop                                              ; $6ae4: $00
	ld   d, b                                        ; $6ae5: $50

jr_018_6ae6:
	add  d                                           ; $6ae6: $82
	ld   h, b                                        ; $6ae7: $60
	ld   [bc], a                                     ; $6ae8: $02
	ld   b, b                                        ; $6ae9: $40
	nop                                              ; $6aea: $00
	ld   b, b                                        ; $6aeb: $40
	add  c                                           ; $6aec: $81
	ret  nz                                          ; $6aed: $c0

	add  d                                           ; $6aee: $82
	add  b                                           ; $6aef: $80
	add  e                                           ; $6af0: $83
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	rst  $38                                         ; $6af3: $ff
	adc  l                                           ; $6af4: $8d
	nop                                              ; $6af5: $00
	nop                                              ; $6af6: $00
	rst  $38                                         ; $6af7: $ff
	add  b                                           ; $6af8: $80
	rra                                              ; $6af9: $1f

Call_018_6afa:
	add  b                                           ; $6afa: $80
	ld   bc, $0083                                   ; $6afb: $01 $83 $00
	ld   a, [bc]                                     ; $6afe: $0a
	ret  nz                                          ; $6aff: $c0

	nop                                              ; $6b00: $00
	jr   c, jr_018_6ac3                              ; $6b01: $38 $c0

	add  $f8                                         ; $6b03: $c6 $f8
	add  hl, bc                                      ; $6b05: $09
	push hl                                          ; $6b06: $e5
	and  l                                           ; $6b07: $a5
	add  h                                           ; $6b08: $84
	call nz, $0581                                   ; $6b09: $c4 $81 $05
	ld   c, $95                                      ; $6b0c: $0e $95
	dec  bc                                          ; $6b0e: $0b
	adc  e                                           ; $6b0f: $8b
	inc  bc                                          ; $6b10: $03
	ld   [hl+], a                                    ; $6b11: $22
	dec  bc                                          ; $6b12: $0b
	ld   c, c                                        ; $6b13: $49
	rla                                              ; $6b14: $17
	sub  h                                           ; $6b15: $94
	ld   a, [hl]                                     ; $6b16: $7e
	ld   h, [hl]                                     ; $6b17: $66
	rst  $38                                         ; $6b18: $ff
	ei                                               ; $6b19: $fb
	rst  $38                                         ; $6b1a: $ff
	call c, $ff81                                    ; $6b1b: $dc $81 $ff
	ld   [bc], a                                     ; $6b1e: $02
	cp   a                                           ; $6b1f: $bf
	rst  $30                                         ; $6b20: $f7
	ld   [hl], a                                     ; $6b21: $77
	add  b                                           ; $6b22: $80
	di                                               ; $6b23: $f3
	inc  c                                           ; $6b24: $0c
	pop  hl                                          ; $6b25: $e1
	ld   c, $de                                      ; $6b26: $0e $de
	and  [hl]                                        ; $6b28: $a6
	ld   l, a                                        ; $6b29: $6f
	ld   [hl], b                                     ; $6b2a: $70
	ld   [hl], a                                     ; $6b2b: $77
	jr   c, jr_018_6ae6                              ; $6b2c: $38 $b8

	rra                                              ; $6b2e: $1f
	rst  JumpTable                                         ; $6b2f: $df
	and  a                                           ; $6b30: $a7
	rst  $20                                         ; $6b31: $e7
	add  b                                           ; $6b32: $80
	ld   hl, sp-$80                                  ; $6b33: $f8 $80
	rst  $38                                         ; $6b35: $ff
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	add  b                                           ; $6b38: $80
	ld   l, [hl]                                     ; $6b39: $6e
	ld   bc, $f7ee                                   ; $6b3a: $01 $ee $f7
	add  c                                           ; $6b3d: $81
	db   $dd                                         ; $6b3e: $dd
	inc  b                                           ; $6b3f: $04
	db   $fd                                         ; $6b40: $fd
	cp   l                                           ; $6b41: $bd
	cp   a                                           ; $6b42: $bf
	cp   e                                           ; $6b43: $bb
	dec  sp                                          ; $6b44: $3b

jr_018_6b45:
	add  b                                           ; $6b45: $80
	cp   c                                           ; $6b46: $b9
	dec  b                                           ; $6b47: $05
	sbc  c                                           ; $6b48: $99
	jp   nz, $f1f7                                   ; $6b49: $c2 $f7 $f1

jr_018_6b4c:
	rst  $30                                         ; $6b4c: $f7
	sbc  $81                                         ; $6b4d: $de $81
	rst  $28                                         ; $6b4f: $ef
	nop                                              ; $6b50: $00
	rst  $38                                         ; $6b51: $ff
	add  d                                           ; $6b52: $82
	rst  JumpTable                                         ; $6b53: $df
	add  b                                           ; $6b54: $80
	sbc  $01                                         ; $6b55: $de $01
	ret  nz                                          ; $6b57: $c0

	rra                                              ; $6b58: $1f
	add  b                                           ; $6b59: $80
	db   $fc                                         ; $6b5a: $fc
	dec  b                                           ; $6b5b: $05
	ei                                               ; $6b5c: $fb
	dec  de                                          ; $6b5d: $1b
	ei                                               ; $6b5e: $fb
	db   $e3                                         ; $6b5f: $e3
	ld   a, [$80fb]                                  ; $6b60: $fa $fb $80
	ld   sp, hl                                      ; $6b63: $f9
	dec  d                                           ; $6b64: $15
	pop  bc                                          ; $6b65: $c1
	ldh  [rSC], a                                    ; $6b66: $e0 $02
	ld   [hl], d                                     ; $6b68: $72
	inc  hl                                          ; $6b69: $23
	adc  h                                           ; $6b6a: $8c
	scf                                              ; $6b6b: $37
	daa                                              ; $6b6c: $27
	or   a                                           ; $6b6d: $b7
	sub  a                                           ; $6b6e: $97
	ld   [hl], c                                     ; $6b6f: $71
	ld   sp, $7c70                                   ; $6b70: $31 $70 $7c
	ld   a, b                                        ; $6b73: $78
	ld   a, [hl-]                                    ; $6b74: $3a
	jr   jr_018_6b94                                 ; $6b75: $18 $1d

	ld   [$88a8], sp                                 ; $6b77: $08 $a8 $88
	db   $eb                                         ; $6b7a: $eb
	add  b                                           ; $6b7b: $80
	ret  nz                                          ; $6b7c: $c0

	add  e                                           ; $6b7d: $83
	add  b                                           ; $6b7e: $80
	ld   [bc], a                                     ; $6b7f: $02
	nop                                              ; $6b80: $00
	ld   b, b                                        ; $6b81: $40
	ret  nz                                          ; $6b82: $c0

	add  b                                           ; $6b83: $80
	jr   nz, jr_018_6b89                             ; $6b84: $20 $03

	nop                                              ; $6b86: $00
	add  b                                           ; $6b87: $80
	nop                                              ; $6b88: $00

jr_018_6b89:
	add  b                                           ; $6b89: $80
	add  b                                           ; $6b8a: $80
	rst  $38                                         ; $6b8b: $ff
	add  b                                           ; $6b8c: $80
	ccf                                              ; $6b8d: $3f
	add  b                                           ; $6b8e: $80
	rrca                                             ; $6b8f: $0f
	add  a                                           ; $6b90: $87
	nop                                              ; $6b91: $00
	inc  bc                                          ; $6b92: $03
	adc  [hl]                                        ; $6b93: $8e

jr_018_6b94:
	ld   [hl], l                                     ; $6b94: $75
	db   $fd                                         ; $6b95: $fd
	ld   sp, hl                                      ; $6b96: $f9
	add  b                                           ; $6b97: $80
	db   $fd                                         ; $6b98: $fd
	add  b                                           ; $6b99: $80
	ld   c, $80                                      ; $6b9a: $0e $80
	rst  $30                                         ; $6b9c: $f7
	add  b                                           ; $6b9d: $80
	ld   a, [$fd01]                                  ; $6b9e: $fa $01 $fd
	db   $fc                                         ; $6ba1: $fc
	add  b                                           ; $6ba2: $80
	ld   a, h                                        ; $6ba3: $7c
	jr   nz, jr_018_6b45                             ; $6ba4: $20 $9f

	adc  b                                           ; $6ba6: $88
	reti                                             ; $6ba7: $d9


	add  h                                           ; $6ba8: $84
	adc  h                                           ; $6ba9: $8c
	nop                                              ; $6baa: $00
	inc  e                                           ; $6bab: $1c
	jr   jr_018_6b4c                                 ; $6bac: $18 $9e

	inc  c                                           ; $6bae: $0c
	db   $fd                                         ; $6baf: $fd
	inc  b                                           ; $6bb0: $04
	ld   a, [de]                                     ; $6bb1: $1a
	nop                                              ; $6bb2: $00
	call Call_018_4200                               ; $6bb3: $cd $00 $42
	nop                                              ; $6bb6: $00
	ld   [hl-], a                                    ; $6bb7: $32
	nop                                              ; $6bb8: $00
	call z, $3300                                    ; $6bb9: $cc $00 $33
	nop                                              ; $6bbc: $00
	ld   c, $00                                      ; $6bbd: $0e $00
	add  c                                           ; $6bbf: $81
	nop                                              ; $6bc0: $00
	ld   h, b                                        ; $6bc1: $60
	nop                                              ; $6bc2: $00
	sbc  h                                           ; $6bc3: $9c
	nop                                              ; $6bc4: $00
	ld   a, h                                        ; $6bc5: $7c
	add  c                                           ; $6bc6: $81
	nop                                              ; $6bc7: $00
	inc  c                                           ; $6bc8: $0c
	jr   c, jr_018_6bcc                              ; $6bc9: $38 $01

	push bc                                          ; $6bcb: $c5

jr_018_6bcc:
	jr   c, jr_018_6c09                              ; $6bcc: $38 $3b

	inc  b                                           ; $6bce: $04
	cp   h                                           ; $6bcf: $bc
	ld   bc, wEndingOBJColorToUpdate                                   ; $6bd0: $01 $61 $c3
	db   $db                                         ; $6bd3: $db
	inc  bc                                          ; $6bd4: $03
	inc  e                                           ; $6bd5: $1c
	add  c                                           ; $6bd6: $81
	nop                                              ; $6bd7: $00
	ld   bc, $8060                                   ; $6bd8: $01 $60 $80
	add  b                                           ; $6bdb: $80
	nop                                              ; $6bdc: $00
	ld   b, $20                                      ; $6bdd: $06 $20
	add  b                                           ; $6bdf: $80
	sbc  b                                           ; $6be0: $98
	ldh  [$e6], a                                    ; $6be1: $e0 $e6
	ld   hl, sp-$07                                  ; $6be3: $f8 $f9
	add  b                                           ; $6be5: $80
	db   $fc                                         ; $6be6: $fc
	adc  c                                           ; $6be7: $89
	nop                                              ; $6be8: $00
	add  b                                           ; $6be9: $80
	xor  b                                           ; $6bea: $a8
	add  b                                           ; $6beb: $80
	ld   d, l                                        ; $6bec: $55
	nop                                              ; $6bed: $00
	nop                                              ; $6bee: $00
	add  b                                           ; $6bef: $80
	ld   [$000d], sp                                 ; $6bf0: $08 $0d $00
	ld   bc, $0200                                   ; $6bf3: $01 $00 $02
	nop                                              ; $6bf6: $00
	ld   hl, $2400                                   ; $6bf7: $21 $00 $24
	nop                                              ; $6bfa: $00
	ld   [$5200], sp                                 ; $6bfb: $08 $00 $52
	ld   d, b                                        ; $6bfe: $50
	inc  c                                           ; $6bff: $0c
	add  c                                           ; $6c00: $81
	nop                                              ; $6c01: $00
	ld   [de], a                                     ; $6c02: $12
	ld   bc, $2200                                   ; $6c03: $01 $00 $22
	nop                                              ; $6c06: $00
	dec  h                                           ; $6c07: $25
	nop                                              ; $6c08: $00

jr_018_6c09:
	ld   [$1200], sp                                 ; $6c09: $08 $00 $12
	nop                                              ; $6c0c: $00
	jr   nz, jr_018_6c0f                             ; $6c0d: $20 $00

jr_018_6c0f:
	ld   a, $00                                      ; $6c0f: $3e $00
	add  h                                           ; $6c11: $84
	nop                                              ; $6c12: $00
	add  b                                           ; $6c13: $80
	nop                                              ; $6c14: $00
	ld   b, $81                                      ; $6c15: $06 $81
	nop                                              ; $6c17: $00
	ld   [bc], a                                     ; $6c18: $02
	ld   b, b                                        ; $6c19: $40
	nop                                              ; $6c1a: $00
	ld   b, b                                        ; $6c1b: $40
	adc  e                                           ; $6c1c: $8b
	nop                                              ; $6c1d: $00
	add  b                                           ; $6c1e: $80
	ld   bc, $0280                                   ; $6c1f: $01 $80 $02
	ld   [bc], a                                     ; $6c22: $02
	inc  d                                           ; $6c23: $14

Call_018_6c24:
	dec  d                                           ; $6c24: $15
	ld   bc, $0083                                   ; $6c25: $01 $83 $00
	add  b                                           ; $6c28: $80
	ld   bc, $0a80                                   ; $6c29: $01 $80 $0a
	ld   b, $45                                      ; $6c2c: $06 $45
	ld   [hl], l                                     ; $6c2e: $75
	ld   [hl-], a                                    ; $6c2f: $32
	ld   a, [$f1fd]                                  ; $6c30: $fa $fd $f1
	db   $f4                                         ; $6c33: $f4
	add  b                                           ; $6c34: $80
	nop                                              ; $6c35: $00
	inc  b                                           ; $6c36: $04
	inc  c                                           ; $6c37: $0c
	ld   a, [bc]                                     ; $6c38: $0a
	ld   [$555b], sp                                 ; $6c39: $08 $5b $55
	add  b                                           ; $6c3c: $80
	xor  d                                           ; $6c3d: $aa
	add  b                                           ; $6c3e: $80
	ld   d, l                                        ; $6c3f: $55
	inc  bc                                          ; $6c40: $03
	xor  d                                           ; $6c41: $aa
	adc  d                                           ; $6c42: $8a
	ld   [hl], l                                     ; $6c43: $75
	ld   d, l                                        ; $6c44: $55
	add  b                                           ; $6c45: $80
	nop                                              ; $6c46: $00
	add  b                                           ; $6c47: $80
	dec  d                                           ; $6c48: $15
	add  b                                           ; $6c49: $80
	xor  d                                           ; $6c4a: $aa
	add  b                                           ; $6c4b: $80
	ld   d, l                                        ; $6c4c: $55
	add  b                                           ; $6c4d: $80
	xor  d                                           ; $6c4e: $aa
	add  b                                           ; $6c4f: $80
	ld   d, l                                        ; $6c50: $55
	add  b                                           ; $6c51: $80
	xor  d                                           ; $6c52: $aa
	add  b                                           ; $6c53: $80
	ld   d, l                                        ; $6c54: $55
	add  b                                           ; $6c55: $80
	xor  d                                           ; $6c56: $aa
	add  b                                           ; $6c57: $80
	ld   d, l                                        ; $6c58: $55
	add  b                                           ; $6c59: $80
	xor  d                                           ; $6c5a: $aa
	add  b                                           ; $6c5b: $80
	ld   d, l                                        ; $6c5c: $55
	inc  bc                                          ; $6c5d: $03
	xor  d                                           ; $6c5e: $aa
	ld   a, [hl+]                                    ; $6c5f: $2a
	push de                                          ; $6c60: $d5
	ld   d, l                                        ; $6c61: $55
	add  b                                           ; $6c62: $80
	xor  d                                           ; $6c63: $aa
	add  b                                           ; $6c64: $80
	ld   d, l                                        ; $6c65: $55
	add  b                                           ; $6c66: $80
	sbc  h                                           ; $6c67: $9c
	add  b                                           ; $6c68: $80
	db   $e4                                         ; $6c69: $e4
	ld   bc, $1918                                   ; $6c6a: $01 $18 $19
	add  b                                           ; $6c6d: $80
	push hl                                          ; $6c6e: $e5
	add  b                                           ; $6c6f: $80
	ld   hl, sp+$07                                  ; $6c70: $f8 $07
	ld   sp, hl                                      ; $6c72: $f9
	add  b                                           ; $6c73: $80
	adc  b                                           ; $6c74: $88
	ld   [bc], a                                     ; $6c75: $02
	ld   [de], a                                     ; $6c76: $12
	ld   [bc], a                                     ; $6c77: $02
	ld   c, b                                        ; $6c78: $48
	xor  d                                           ; $6c79: $aa
	add  b                                           ; $6c7a: $80
	ld   d, l                                        ; $6c7b: $55
	add  b                                           ; $6c7c: $80
	xor  d                                           ; $6c7d: $aa
	add  b                                           ; $6c7e: $80
	ld   d, l                                        ; $6c7f: $55
	add  b                                           ; $6c80: $80
	xor  d                                           ; $6c81: $aa
	add  b                                           ; $6c82: $80
	ld   d, l                                        ; $6c83: $55
	add  b                                           ; $6c84: $80
	xor  a                                           ; $6c85: $af
	add  b                                           ; $6c86: $80
	rst  $38                                         ; $6c87: $ff
	add  b                                           ; $6c88: $80
	xor  d                                           ; $6c89: $aa
	add  b                                           ; $6c8a: $80
	ld   d, l                                        ; $6c8b: $55
	add  b                                           ; $6c8c: $80
	xor  d                                           ; $6c8d: $aa
	add  b                                           ; $6c8e: $80
	ld   d, l                                        ; $6c8f: $55
	inc  b                                           ; $6c90: $04
	xor  d                                           ; $6c91: $aa
	ld   a, [hl+]                                    ; $6c92: $2a
	ld   d, l                                        ; $6c93: $55
	sub  l                                           ; $6c94: $95
	cp   a                                           ; $6c95: $bf
	add  b                                           ; $6c96: $80
	sbc  a                                           ; $6c97: $9f
	ld   b, $cf                                      ; $6c98: $06 $cf
	jr   nz, jr_018_6cb9                             ; $6c9a: $20 $1d

	or   h                                           ; $6c9c: $b4
	cp   l                                           ; $6c9d: $bd
	ld   a, c                                        ; $6c9e: $79
	ld   a, l                                        ; $6c9f: $7d
	add  b                                           ; $6ca0: $80
	dec  a                                           ; $6ca1: $3d
	ld   bc, $3dbd                                   ; $6ca2: $01 $bd $3d
	add  b                                           ; $6ca5: $80
	dec  e                                           ; $6ca6: $1d
	inc  b                                           ; $6ca7: $04
	ld   l, $0e                                      ; $6ca8: $2e $0e
	inc  [hl]                                        ; $6caa: $34
	inc  b                                           ; $6cab: $04
	ld   l, b                                        ; $6cac: $68
	add  b                                           ; $6cad: $80
	ld   sp, hl                                      ; $6cae: $f9
	add  d                                           ; $6caf: $82
	ld   a, [$fb03]                                  ; $6cb0: $fa $03 $fb
	ld   sp, hl                                      ; $6cb3: $f9
	ei                                               ; $6cb4: $fb
	ld   [bc], a                                     ; $6cb5: $02
	add  c                                           ; $6cb6: $81
	inc  bc                                          ; $6cb7: $03
	inc  bc                                          ; $6cb8: $03

jr_018_6cb9:
	ld   a, e                                        ; $6cb9: $7b
	dec  sp                                          ; $6cba: $3b
	ld   [$80a8], a                                  ; $6cbb: $ea $a8 $80
	ld   d, l                                        ; $6cbe: $55
	ld   bc, $aaac                                   ; $6cbf: $01 $ac $aa
	add  b                                           ; $6cc2: $80
	ld   d, c                                        ; $6cc3: $51
	ld   bc, $a2aa                                   ; $6cc4: $01 $aa $a2
	add  b                                           ; $6cc7: $80
	ld   d, c                                        ; $6cc8: $51
	inc  c                                           ; $6cc9: $0c
	rst  $30                                         ; $6cca: $f7
	ldh  [c], a                                      ; $6ccb: $e2
	and  $e4                                         ; $6ccc: $e6 $e4
	and  l                                           ; $6cce: $a5
	and  d                                           ; $6ccf: $a2
	ld   h, c                                        ; $6cd0: $61
	ld   b, c                                        ; $6cd1: $41
	add  e                                           ; $6cd2: $83
	add  d                                           ; $6cd3: $82
	ld   b, d                                        ; $6cd4: $42
	nop                                              ; $6cd5: $00
	add  b                                           ; $6cd6: $80
	add  d                                           ; $6cd7: $82
	nop                                              ; $6cd8: $00
	add  c                                           ; $6cd9: $81
	ld   bc, $0603                                   ; $6cda: $01 $03 $06
	add  b                                           ; $6cdd: $80
	add  l                                           ; $6cde: $85
	dec  b                                           ; $6cdf: $05
	add  b                                           ; $6ce0: $80
	ld   [bc], a                                     ; $6ce1: $02
	ld   bc, $050d                                   ; $6ce2: $01 $0d $05
	add  b                                           ; $6ce5: $80
	ld   a, [bc]                                     ; $6ce6: $0a
	rlca                                             ; $6ce7: $07
	push af                                          ; $6ce8: $f5
	dec  b                                           ; $6ce9: $05
	ld   [bc], a                                     ; $6cea: $02
	ldh  [c], a                                      ; $6ceb: $e2
	pop  hl                                          ; $6cec: $e1
	pop  af                                          ; $6ced: $f1
	ldh  a, [rP1]                                    ; $6cee: $f0 $00
	add  b                                           ; $6cf0: $80
	ld   b, b                                        ; $6cf1: $40
	add  b                                           ; $6cf2: $80
	xor  b                                           ; $6cf3: $a8
	inc  bc                                          ; $6cf4: $03
	ld   d, a                                        ; $6cf5: $57
	ld   d, l                                        ; $6cf6: $55
	xor  b                                           ; $6cf7: $a8
	xor  d                                           ; $6cf8: $aa
	add  b                                           ; $6cf9: $80
	ld   d, l                                        ; $6cfa: $55
	inc  d                                           ; $6cfb: $14
	dec  hl                                          ; $6cfc: $2b
	xor  d                                           ; $6cfd: $aa
	sub  $54                                         ; $6cfe: $d6 $54
	inc  bc                                          ; $6d00: $03
	nop                                              ; $6d01: $00
	add  b                                           ; $6d02: $80
	nop                                              ; $6d03: $00
	add  h                                           ; $6d04: $84
	nop                                              ; $6d05: $00
	ld   l, h                                        ; $6d06: $6c
	ld   b, b                                        ; $6d07: $40
	ldh  a, [$88]                                    ; $6d08: $f0 $88
	push hl                                          ; $6d0a: $e5
	dec  d                                           ; $6d0b: $15
	ld   c, d                                        ; $6d0c: $4a
	ld   a, [hl+]                                    ; $6d0d: $2a
	dec  d                                           ; $6d0e: $15
	ld   d, h                                        ; $6d0f: $54
	add  c                                           ; $6d10: $81
	add  b                                           ; $6d11: $80
	ld   bc, $0083                                   ; $6d12: $01 $83 $00
	add  hl, bc                                      ; $6d15: $09
	inc  b                                           ; $6d16: $04
	nop                                              ; $6d17: $00
	inc  h                                           ; $6d18: $24
	nop                                              ; $6d19: $00
	pop  bc                                          ; $6d1a: $c1
	and  b                                           ; $6d1b: $a0
	sub  l                                           ; $6d1c: $95
	ld   d, h                                        ; $6d1d: $54
	add  b                                           ; $6d1e: $80
	nop                                              ; $6d1f: $00
	add  b                                           ; $6d20: $80
	dec  b                                           ; $6d21: $05
	add  b                                           ; $6d22: $80
	ld   a, [bc]                                     ; $6d23: $0a
	add  b                                           ; $6d24: $80
	ld   d, l                                        ; $6d25: $55
	add  b                                           ; $6d26: $80
	xor  d                                           ; $6d27: $aa
	inc  bc                                          ; $6d28: $03
	ld   d, l                                        ; $6d29: $55
	ld   b, l                                        ; $6d2a: $45
	cp   d                                           ; $6d2b: $ba
	xor  d                                           ; $6d2c: $aa
	add  b                                           ; $6d2d: $80
	ld   d, l                                        ; $6d2e: $55
	inc  bc                                          ; $6d2f: $03
	xor  b                                           ; $6d30: $a8
	xor  c                                           ; $6d31: $a9
	ld   d, h                                        ; $6d32: $54
	ld   d, l                                        ; $6d33: $55
	add  b                                           ; $6d34: $80
	xor  d                                           ; $6d35: $aa
	add  b                                           ; $6d36: $80
	dec  d                                           ; $6d37: $15
	dec  b                                           ; $6d38: $05
	ld   a, [hl+]                                    ; $6d39: $2a
	ld   c, d                                        ; $6d3a: $4a
	ld   d, a                                        ; $6d3b: $57
	ld   b, a                                        ; $6d3c: $47
	jp   c, $80aa                                    ; $6d3d: $da $aa $80

	ld   d, l                                        ; $6d40: $55
	add  hl, bc                                      ; $6d41: $09
	ld   e, $c2                                      ; $6d42: $1e $c2
	pop  af                                          ; $6d44: $f1
	add  c                                           ; $6d45: $81
	ld   e, d                                        ; $6d46: $5a
	ld   [bc], a                                     ; $6d47: $02
	adc  c                                           ; $6d48: $89
	ld   b, l                                        ; $6d49: $45
	add  d                                           ; $6d4a: $82
	cp   d                                           ; $6d4b: $ba
	add  b                                           ; $6d4c: $80
	ld   e, a                                        ; $6d4d: $5f
	add  b                                           ; $6d4e: $80
	rst  $38                                         ; $6d4f: $ff
	add  b                                           ; $6d50: $80
	db   $fc                                         ; $6d51: $fc
	add  b                                           ; $6d52: $80
	xor  d                                           ; $6d53: $aa
	add  b                                           ; $6d54: $80
	ld   d, l                                        ; $6d55: $55
	add  b                                           ; $6d56: $80
	xor  d                                           ; $6d57: $aa
	ld   bc, $1f7f                                   ; $6d58: $01 $7f $1f
	add  c                                           ; $6d5b: $81
	sbc  a                                           ; $6d5c: $9f
	add  c                                           ; $6d5d: $81
	rst  $38                                         ; $6d5e: $ff
	inc  bc                                          ; $6d5f: $03
	add  e                                           ; $6d60: $83
	adc  a                                           ; $6d61: $8f
	and  [hl]                                        ; $6d62: $a6
	xor  d                                           ; $6d63: $aa
	add  b                                           ; $6d64: $80
	ld   d, a                                        ; $6d65: $57
	add  c                                           ; $6d66: $81
	rst  $38                                         ; $6d67: $ff
	add  b                                           ; $6d68: $80
	cp   a                                           ; $6d69: $bf
	add  l                                           ; $6d6a: $85
	rst  $38                                         ; $6d6b: $ff
	ld   [$c081], sp                                 ; $6d6c: $08 $81 $c0
	pop  bc                                          ; $6d6f: $c1
	ldh  [hScriptOpcodeParams], a                                    ; $6d70: $e0 $a0
	ldh  a, [$d0]                                    ; $6d72: $f0 $d0
	rst  $38                                         ; $6d74: $ff
	ldh  [$80], a                                    ; $6d75: $e0 $80
	ld   hl, sp-$7e                                  ; $6d77: $f8 $82
	ldh  a, [$80]                                    ; $6d79: $f0 $80
	ldh  [$82], a                                    ; $6d7b: $e0 $82
	rst  $38                                         ; $6d7d: $ff
	add  b                                           ; $6d7e: $80
	ld   a, a                                        ; $6d7f: $7f
	add  b                                           ; $6d80: $80
	cp   a                                           ; $6d81: $bf
	add  b                                           ; $6d82: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d83: $cf
	add  b                                           ; $6d84: $80
	rst  $20                                         ; $6d85: $e7
	add  b                                           ; $6d86: $80
	ld   sp, hl                                      ; $6d87: $f9
	add  b                                           ; $6d88: $80
	db   $fc                                         ; $6d89: $fc
	add  a                                           ; $6d8a: $87
	rst  $38                                         ; $6d8b: $ff
	add  b                                           ; $6d8c: $80
	di                                               ; $6d8d: $f3
	add  b                                           ; $6d8e: $80
	db   $ed                                         ; $6d8f: $ed
	add  b                                           ; $6d90: $80
	sbc  $00                                         ; $6d91: $de $00
	rst  $38                                         ; $6d93: $ff
	add  b                                           ; $6d94: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d95: $cf
	add  b                                           ; $6d96: $80
	rst  $20                                         ; $6d97: $e7
	add  b                                           ; $6d98: $80
	db   $e3                                         ; $6d99: $e3
	add  b                                           ; $6d9a: $80
	pop  af                                          ; $6d9b: $f1
	add  d                                           ; $6d9c: $82
	ldh  a, [$82]                                    ; $6d9d: $f0 $82
	ld   hl, sp-$78                                  ; $6d9f: $f8 $88
	rst  $38                                         ; $6da1: $ff
	add  d                                           ; $6da2: $82
	ld   a, a                                        ; $6da3: $7f
	add  b                                           ; $6da4: $80
	ccf                                              ; $6da5: $3f
	ld   bc, $efff                                   ; $6da6: $01 $ff $ef
	add  l                                           ; $6da9: $85
	rst  $38                                         ; $6daa: $ff
	nop                                              ; $6dab: $00
	rst  JumpTable                                         ; $6dac: $df
	add  c                                           ; $6dad: $81
	rst  $38                                         ; $6dae: $ff
	ld   b, $fe                                      ; $6daf: $06 $fe
	rst  $38                                         ; $6db1: $ff
	jp   z, $ccc0                                    ; $6db2: $ca $c0 $cc

	ret  nz                                          ; $6db5: $c0

	ret  z                                           ; $6db6: $c8

	add  b                                           ; $6db7: $80
	ret  nz                                          ; $6db8: $c0

	add  d                                           ; $6db9: $82
	add  b                                           ; $6dba: $80
	add  d                                           ; $6dbb: $82
	nop                                              ; $6dbc: $00
	add  b                                           ; $6dbd: $80
	add  b                                           ; $6dbe: $80
	add  b                                           ; $6dbf: $80
	ld   bc, $0286                                   ; $6dc0: $01 $86 $02
	add  b                                           ; $6dc3: $80
	ld   bc, $0081                                   ; $6dc4: $01 $81 $00
	inc  c                                           ; $6dc7: $0c
	rst  $38                                         ; $6dc8: $ff
	ret  c                                           ; $6dc9: $d8

	ld   e, c                                        ; $6dca: $59
	ld   l, c                                        ; $6dcb: $69
	inc  sp                                          ; $6dcc: $33
	inc  bc                                          ; $6dcd: $03
	cpl                                              ; $6dce: $2f
	rlca                                             ; $6dcf: $07
	rra                                              ; $6dd0: $1f
	rrca                                             ; $6dd1: $0f
	rst  $38                                         ; $6dd2: $ff
	ld   e, $fe                                      ; $6dd3: $1e $fe
	add  b                                           ; $6dd5: $80
	db   $fc                                         ; $6dd6: $fc
	nop                                              ; $6dd7: $00
	ld   hl, sp-$80                                  ; $6dd8: $f8 $80
	xor  b                                           ; $6dda: $a8
	ld   b, $58                                      ; $6ddb: $06 $58
	ld   d, c                                        ; $6ddd: $51
	ldh  a, [$e2]                                    ; $6dde: $f0 $e2
	pop  hl                                          ; $6de0: $e1
	push bc                                          ; $6de1: $c5
	rst  ToBoot                                         ; $6de2: $c7
	add  b                                           ; $6de3: $80
	adc  a                                           ; $6de4: $8f
	add  b                                           ; $6de5: $80
	rra                                              ; $6de6: $1f
	add  b                                           ; $6de7: $80
	ld   e, $0d                                      ; $6de8: $1e $0d
	jr   c, jr_018_6e58                              ; $6dea: $38 $6c

	xor  b                                           ; $6dec: $a8
	ld   d, h                                        ; $6ded: $54
	ld   d, c                                        ; $6dee: $51
	xor  b                                           ; $6def: $a8
	and  d                                           ; $6df0: $a2
	ld   d, c                                        ; $6df1: $51
	ld   b, l                                        ; $6df2: $45
	ldh  [c], a                                      ; $6df3: $e2
	add  d                                           ; $6df4: $82
	add  l                                           ; $6df5: $85
	dec  c                                           ; $6df6: $0d
	rrca                                             ; $6df7: $0f
	add  b                                           ; $6df8: $80
	rra                                              ; $6df9: $1f
	ld   [bc], a                                     ; $6dfa: $02
	ccf                                              ; $6dfb: $3f
	ld   l, d                                        ; $6dfc: $6a
	xor  d                                           ; $6dfd: $aa
	add  b                                           ; $6dfe: $80
	ld   d, l                                        ; $6dff: $55
	add  b                                           ; $6e00: $80
	xor  d                                           ; $6e01: $aa
	dec  b                                           ; $6e02: $05
	ld   d, c                                        ; $6e03: $51
	ld   d, l                                        ; $6e04: $55
	adc  [hl]                                        ; $6e05: $8e
	xor  d                                           ; $6e06: $aa
	ld   [hl], l                                     ; $6e07: $75
	ld   d, l                                        ; $6e08: $55
	add  b                                           ; $6e09: $80
	xor  d                                           ; $6e0a: $aa
	inc  bc                                          ; $6e0b: $03
	db   $fd                                         ; $6e0c: $fd
	push af                                          ; $6e0d: $f5
	adc  b                                           ; $6e0e: $88
	add  b                                           ; $6e0f: $80
	add  b                                           ; $6e10: $80
	ld   d, b                                        ; $6e11: $50
	add  b                                           ; $6e12: $80
	xor  d                                           ; $6e13: $aa
	add  b                                           ; $6e14: $80
	ld   d, l                                        ; $6e15: $55
	add  b                                           ; $6e16: $80
	xor  d                                           ; $6e17: $aa
	add  b                                           ; $6e18: $80
	ld   d, l                                        ; $6e19: $55
	add  b                                           ; $6e1a: $80
	xor  d                                           ; $6e1b: $aa
	add  b                                           ; $6e1c: $80
	ld   d, l                                        ; $6e1d: $55
	add  b                                           ; $6e1e: $80
	xor  d                                           ; $6e1f: $aa
	add  b                                           ; $6e20: $80
	ld   d, l                                        ; $6e21: $55
	add  b                                           ; $6e22: $80
	xor  a                                           ; $6e23: $af
	add  b                                           ; $6e24: $80
	ld   a, a                                        ; $6e25: $7f
	nop                                              ; $6e26: $00
	rst  $38                                         ; $6e27: $ff
	add  b                                           ; $6e28: $80
	rst  $28                                         ; $6e29: $ef
	nop                                              ; $6e2a: $00
	rst  $38                                         ; $6e2b: $ff
	add  b                                           ; $6e2c: $80
	ret  nz                                          ; $6e2d: $c0

	add  b                                           ; $6e2e: $80
	rst  $38                                         ; $6e2f: $ff
	add  b                                           ; $6e30: $80
	cp   a                                           ; $6e31: $bf
	add  c                                           ; $6e32: $81
	rst  $38                                         ; $6e33: $ff
	add  b                                           ; $6e34: $80
	rst  $30                                         ; $6e35: $f7
	add  e                                           ; $6e36: $83
	rst  $38                                         ; $6e37: $ff
	inc  b                                           ; $6e38: $04
	rlca                                             ; $6e39: $07
	rst  $38                                         ; $6e3a: $ff
	ld   a, b                                        ; $6e3b: $78
	add  a                                           ; $6e3c: $87
	ld   hl, sp-$80                                  ; $6e3d: $f8 $80
	cp   a                                           ; $6e3f: $bf
	rlca                                             ; $6e40: $07
	ei                                               ; $6e41: $fb
	ld   a, [$e2fd]                                  ; $6e42: $fa $fd $e2
	cp   $e6                                         ; $6e45: $fe $e6
	ld   sp, hl                                      ; $6e47: $f9
	rst  $38                                         ; $6e48: $ff
	add  b                                           ; $6e49: $80
	cp   e                                           ; $6e4a: $bb
	dec  bc                                          ; $6e4b: $0b
	db   $fd                                         ; $6e4c: $fd
	ld   a, l                                        ; $6e4d: $7d
	cp   $71                                         ; $6e4e: $fe $71
	di                                               ; $6e50: $f3
	add  e                                           ; $6e51: $83
	db   $fc                                         ; $6e52: $fc
	db   $fd                                         ; $6e53: $fd
	add  b                                           ; $6e54: $80
	or   $f7                                         ; $6e55: $f6 $f7
	rst  $38                                         ; $6e57: $ff

jr_018_6e58:
	add  b                                           ; $6e58: $80
	dec  sp                                          ; $6e59: $3b
	ld   a, [bc]                                     ; $6e5a: $0a
	adc  a                                           ; $6e5b: $8f
	adc  [hl]                                        ; $6e5c: $8e
	jp   nz, Jump_018_60c3                           ; $6e5d: $c2 $c3 $60

	and  b                                           ; $6e60: $a0
	rst  $38                                         ; $6e61: $ff
	pop  bc                                          ; $6e62: $c1
	ccf                                              ; $6e63: $3f
	ld   [hl], c                                     ; $6e64: $71
	ld   c, a                                        ; $6e65: $4f
	add  e                                           ; $6e66: $83
	rst  $38                                         ; $6e67: $ff
	add  b                                           ; $6e68: $80
	rst  JumpTable                                         ; $6e69: $df
	add  b                                           ; $6e6a: $80
	rst  $28                                         ; $6e6b: $ef
	add  b                                           ; $6e6c: $80
	di                                               ; $6e6d: $f3
	add  e                                           ; $6e6e: $83
	rst  $38                                         ; $6e6f: $ff
	add  c                                           ; $6e70: $81
	rst  ToBoot                                         ; $6e71: $c7
	add  b                                           ; $6e72: $80
	rst  $10                                         ; $6e73: $d7
	nop                                              ; $6e74: $00
	rst  ToBoot                                         ; $6e75: $c7
	add  e                                           ; $6e76: $83
	rst  $38                                         ; $6e77: $ff
	add  b                                           ; $6e78: $80
	cp   $84                                         ; $6e79: $fe $84
	rst  $38                                         ; $6e7b: $ff
	add  b                                           ; $6e7c: $80
	rst  $20                                         ; $6e7d: $e7
	add  b                                           ; $6e7e: $80
	pop  af                                          ; $6e7f: $f1
	add  b                                           ; $6e80: $80
	db   $fc                                         ; $6e81: $fc
	ld   de, $fcff                                   ; $6e82: $11 $ff $fc
	dec  a                                           ; $6e85: $3d
	add  hl, hl                                      ; $6e86: $29
	sbc  c                                           ; $6e87: $99
	pop  bc                                          ; $6e88: $c1
	adc  [hl]                                        ; $6e89: $8e
	ldh  [c], a                                      ; $6e8a: $e2
	jp   nz, $c1c0                                   ; $6e8b: $c2 $c0 $c1

	ldh  a, [$e0]                                    ; $6e8e: $f0 $e0
	cp   $71                                         ; $6e90: $fe $71
	ld   a, a                                        ; $6e92: $7f
	ld   e, $9e                                      ; $6e93: $1e $9e
	add  c                                           ; $6e95: $81
	ld   a, h                                        ; $6e96: $7c
	nop                                              ; $6e97: $00
	inc  a                                           ; $6e98: $3c
	add  d                                           ; $6e99: $82
	cp   [hl]                                        ; $6e9a: $be
	add  c                                           ; $6e9b: $81
	cp   a                                           ; $6e9c: $bf
	nop                                              ; $6e9d: $00
	ld   a, a                                        ; $6e9e: $7f
	add  b                                           ; $6e9f: $80
	sbc  a                                           ; $6ea0: $9f
	add  b                                           ; $6ea1: $80
	rlca                                             ; $6ea2: $07
	add  b                                           ; $6ea3: $80
	rra                                              ; $6ea4: $1f
	add  d                                           ; $6ea5: $82
	rrca                                             ; $6ea6: $0f
	add  b                                           ; $6ea7: $80
	rlca                                             ; $6ea8: $07
	add  b                                           ; $6ea9: $80
	inc  bc                                          ; $6eaa: $03
	add  c                                           ; $6eab: $81
	ld   bc, $0012                                   ; $6eac: $01 $12 $00
	inc  bc                                          ; $6eaf: $03
	inc  sp                                          ; $6eb0: $33
	rst  $38                                         ; $6eb1: $ff
	cp   l                                           ; $6eb2: $bd
	rst  $38                                         ; $6eb3: $ff
	cp   $ff                                         ; $6eb4: $fe $ff
	db   $fd                                         ; $6eb6: $fd
	cp   $8a                                         ; $6eb7: $fe $8a
	cp   $8a                                         ; $6eb9: $fe $8a
	cp   $0a                                         ; $6ebb: $fe $0a
	cp   $84                                         ; $6ebd: $fe $84
	rst  $38                                         ; $6ebf: $ff
	ld   bc, $8082                                   ; $6ec0: $01 $82 $80
	sub  e                                           ; $6ec3: $93
	nop                                              ; $6ec4: $00
	ld   b, $01                                      ; $6ec5: $06 $01
	nop                                              ; $6ec7: $00
	ld   bc, $0e00                                   ; $6ec8: $01 $00 $0e
	nop                                              ; $6ecb: $00
	ld   c, $80                                      ; $6ecc: $0e $80
	ldh  a, [rTAC]                                   ; $6ece: $f0 $07
	ld   h, b                                        ; $6ed0: $60
	ld   h, c                                        ; $6ed1: $61
	nop                                              ; $6ed2: $00
	ld   a, a                                        ; $6ed3: $7f
	ld   bc, $07ff                                   ; $6ed4: $01 $ff $07
	add  a                                           ; $6ed7: $87
	add  b                                           ; $6ed8: $80
	add  [hl]                                        ; $6ed9: $86
	add  b                                           ; $6eda: $80
	inc  c                                           ; $6edb: $0c
	add  b                                           ; $6edc: $80
	ld   [$7080], sp                                 ; $6edd: $08 $80 $70
	inc  bc                                          ; $6ee0: $03
	nop                                              ; $6ee1: $00
	ret  nz                                          ; $6ee2: $c0

	nop                                              ; $6ee3: $00
	ret  nz                                          ; $6ee4: $c0

	add  b                                           ; $6ee5: $80
	add  c                                           ; $6ee6: $81
	add  b                                           ; $6ee7: $80
	inc  bc                                          ; $6ee8: $03
	add  d                                           ; $6ee9: $82
	rlca                                             ; $6eea: $07
	ld   [bc], a                                     ; $6eeb: $02
	ld   c, $72                                      ; $6eec: $0e $72
	inc  bc                                          ; $6eee: $03
	add  c                                           ; $6eef: $81
	ld   a, a                                        ; $6ef0: $7f
	add  b                                           ; $6ef1: $80
	db   $fd                                         ; $6ef2: $fd
	add  b                                           ; $6ef3: $80
	ei                                               ; $6ef4: $fb
	add  b                                           ; $6ef5: $80
	and  $80                                         ; $6ef6: $e6 $80
	push bc                                          ; $6ef8: $c5
	add  b                                           ; $6ef9: $80
	add  d                                           ; $6efa: $82
	add  b                                           ; $6efb: $80
	inc  b                                           ; $6efc: $04
	add  b                                           ; $6efd: $80
	ld   l, [hl]                                     ; $6efe: $6e
	add  b                                           ; $6eff: $80
	rst  JumpTable                                         ; $6f00: $df
	add  b                                           ; $6f01: $80
	cp   l                                           ; $6f02: $bd
	add  b                                           ; $6f03: $80
	ld   e, a                                        ; $6f04: $5f
	add  b                                           ; $6f05: $80
	cp   a                                           ; $6f06: $bf
	add  b                                           ; $6f07: $80
	ld   a, $04                                      ; $6f08: $3e $04
	ccf                                              ; $6f0a: $3f
	ld   b, e                                        ; $6f0b: $43
	ld   a, a                                        ; $6f0c: $7f
	ld   d, [hl]                                     ; $6f0d: $56
	xor  d                                           ; $6f0e: $aa
	add  b                                           ; $6f0f: $80
	push af                                          ; $6f10: $f5
	add  b                                           ; $6f11: $80
	cp   $83                                         ; $6f12: $fe $83
	rst  $38                                         ; $6f14: $ff
	add  b                                           ; $6f15: $80
	cp   $81                                         ; $6f16: $fe $81
	rst  $38                                         ; $6f18: $ff
	db   $eb                                         ; $6f19: $eb
	ld   bc, $0086                                   ; $6f1a: $01 $86 $00
	ld   [$0001], sp                                 ; $6f1d: $08 $01 $00
	inc  bc                                          ; $6f20: $03
	ld   bc, $0307                                   ; $6f21: $01 $07 $03
	rrca                                             ; $6f24: $0f
	rlca                                             ; $6f25: $07
	rra                                              ; $6f26: $1f
	add  c                                           ; $6f27: $81
	rrca                                             ; $6f28: $0f
	nop                                              ; $6f29: $00
	ccf                                              ; $6f2a: $3f
	add  c                                           ; $6f2b: $81
	rra                                              ; $6f2c: $1f
	ld   b, $6f                                      ; $6f2d: $06 $6f
	ccf                                              ; $6f2f: $3f
	ld   [hl-], a                                    ; $6f30: $32
	ld   a, $3c                                      ; $6f31: $3e $3c
	ld   a, $de                                      ; $6f33: $3e $de
	add  [hl]                                        ; $6f35: $86
	ld   a, l                                        ; $6f36: $7d
	add  a                                           ; $6f37: $87
	ld   a, e                                        ; $6f38: $7b
	ld   [bc], a                                     ; $6f39: $02
	sbc  e                                           ; $6f3a: $9b

jr_018_6f3b:
	dec  sp                                          ; $6f3b: $3b
	ld   e, e                                        ; $6f3c: $5b
	add  b                                           ; $6f3d: $80
	dec  de                                          ; $6f3e: $1b
	rlca                                             ; $6f3f: $07
	dec  e                                           ; $6f40: $1d
	dec  a                                           ; $6f41: $3d
	dec  b                                           ; $6f42: $05
	dec  e                                           ; $6f43: $1d
	ld   bc, $0007                                   ; $6f44: $01 $07 $00
	ld   bc, $0095                                   ; $6f47: $01 $95 $00
	dec  b                                           ; $6f4a: $05
	ld   e, $00                                      ; $6f4b: $1e $00
	ld   a, a                                        ; $6f4d: $7f
	ld   e, $ff                                      ; $6f4e: $1e $ff
	ld   a, a                                        ; $6f50: $7f
	add  b                                           ; $6f51: $80
	db   $fc                                         ; $6f52: $fc
	add  b                                           ; $6f53: $80
	ei                                               ; $6f54: $fb
	add  b                                           ; $6f55: $80
	rst  $30                                         ; $6f56: $f7
	nop                                              ; $6f57: $00
	rst  $38                                         ; $6f58: $ff
	adc  l                                           ; $6f59: $8d
	nop                                              ; $6f5a: $00
	ld   b, $fe                                      ; $6f5b: $06 $fe
	ld   sp, hl                                      ; $6f5d: $f9
	cp   $f6                                         ; $6f5e: $fe $f6
	pop  af                                          ; $6f60: $f1
	ld   sp, hl                                      ; $6f61: $f9
	ld   hl, sp-$80                                  ; $6f62: $f8 $80
	cp   $80                                         ; $6f64: $fe $80
	rst  $38                                         ; $6f66: $ff
	add  hl, bc                                      ; $6f67: $09
	ld   a, a                                        ; $6f68: $7f
	rst  $38                                         ; $6f69: $ff
	rra                                              ; $6f6a: $1f
	ld   a, a                                        ; $6f6b: $7f
	rlca                                             ; $6f6c: $07
	rra                                              ; $6f6d: $1f
	ld   bc, $0007                                   ; $6f6e: $01 $07 $00
	ld   bc, $008b                                   ; $6f71: $01 $8b $00
	nop                                              ; $6f74: $00
	ld   bc, $0081                                   ; $6f75: $01 $81 $00
	inc  bc                                          ; $6f78: $03
	ld   [bc], a                                     ; $6f79: $02
	ld   bc, $0104                              ; $6f7a: $01 $04 $01
	add  b                                           ; $6f7d: $80
	inc  bc                                          ; $6f7e: $03
	nop                                              ; $6f7f: $00
	rrca                                             ; $6f80: $0f
	add  e                                           ; $6f81: $83

jr_018_6f82:
	rlca                                             ; $6f82: $07
	nop                                              ; $6f83: $00
	rra                                              ; $6f84: $1f
	add  a                                           ; $6f85: $87
	rrca                                             ; $6f86: $0f
	add  c                                           ; $6f87: $81
	nop                                              ; $6f88: $00
	ld   bc, $1f0f                                   ; $6f89: $01 $0f $1f
	add  b                                           ; $6f8c: $80
	rlca                                             ; $6f8d: $07
	inc  b                                           ; $6f8e: $04
	nop                                              ; $6f8f: $00
	ld   [$0002], sp                                 ; $6f90: $08 $02 $00
	ld   [bc], a                                     ; $6f93: $02
	add  d                                           ; $6f94: $82
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	dec  c                                           ; $6f97: $0d
	add  c                                           ; $6f98: $81
	dec  b                                           ; $6f99: $05
	nop                                              ; $6f9a: $00
	rrca                                             ; $6f9b: $0f
	adc  l                                           ; $6f9c: $8d
	nop                                              ; $6f9d: $00
	ld   bc, $0205                                   ; $6f9e: $01 $05 $02
	add  b                                           ; $6fa1: $80
	nop                                              ; $6fa2: $00
	add  b                                           ; $6fa3: $80
	ld   [bc], a                                     ; $6fa4: $02
	dec  b                                           ; $6fa5: $05
	add  d                                           ; $6fa6: $82
	ld   [bc], a                                     ; $6fa7: $02
	ldh  [c], a                                      ; $6fa8: $e2
	add  d                                           ; $6fa9: $82
	ld   a, [$80e2]                                  ; $6faa: $fa $e2 $80
	adc  d                                           ; $6fad: $8a
	ld   b, $10                                      ; $6fae: $06 $10
	jr   c, jr_018_6f82                              ; $6fb0: $38 $d0

	rst  $38                                         ; $6fb2: $ff
	rst  $20                                         ; $6fb3: $e7
	rst  $38                                         ; $6fb4: $ff
	rra                                              ; $6fb5: $1f
	add  b                                           ; $6fb6: $80
	ld   a, [hl]                                     ; $6fb7: $7e
	add  b                                           ; $6fb8: $80
	jr   c, jr_018_6f3b                              ; $6fb9: $38 $80

	add  e                                           ; $6fbb: $83
	ld   bc, $f8fb                                   ; $6fbc: $01 $fb $f8
	add  c                                           ; $6fbf: $81
	ei                                               ; $6fc0: $fb
	nop                                              ; $6fc1: $00
	rst  $38                                         ; $6fc2: $ff
	add  b                                           ; $6fc3: $80
	rst  $30                                         ; $6fc4: $f7
	dec  c                                           ; $6fc5: $0d
	ld   [hl], a                                     ; $6fc6: $77
	rst  $38                                         ; $6fc7: $ff
	rrca                                             ; $6fc8: $0f
	ld   l, a                                        ; $6fc9: $6f
	rrca                                             ; $6fca: $0f
	ccf                                              ; $6fcb: $3f
	rra                                              ; $6fcc: $1f
	ld   b, d                                        ; $6fcd: $42
	inc  bc                                          ; $6fce: $03
	dec  e                                           ; $6fcf: $1d
	inc  a                                           ; $6fd0: $3c
	sbc  a                                           ; $6fd1: $9f
	ld   a, a                                        ; $6fd2: $7f
	cp   a                                           ; $6fd3: $bf
	adc  l                                           ; $6fd4: $8d
	nop                                              ; $6fd5: $00
	add  c                                           ; $6fd6: $81
	rst  $38                                         ; $6fd7: $ff
	add  b                                           ; $6fd8: $80
	rlca                                             ; $6fd9: $07
	inc  bc                                          ; $6fda: $03
	ret  c                                           ; $6fdb: $d8

	ld   c, e                                        ; $6fdc: $4b
	ret  c                                           ; $6fdd: $d8

	ld   c, b                                        ; $6fde: $48
	add  c                                           ; $6fdf: $81
	nop                                              ; $6fe0: $00
	nop                                              ; $6fe1: $00
	dec  h                                           ; $6fe2: $25
	add  c                                           ; $6fe3: $81
	or   b                                           ; $6fe4: $b0
	nop                                              ; $6fe5: $00
	ld   l, c                                        ; $6fe6: $69
	adc  c                                           ; $6fe7: $89
	nop                                              ; $6fe8: $00
	add  b                                           ; $6fe9: $80
	stop                                             ; $6fea: $10 $00
	nop                                              ; $6fec: $00
	add  d                                           ; $6fed: $82
	jr   nc, @-$73                                   ; $6fee: $30 $8b

	nop                                              ; $6ff0: $00
	rrca                                             ; $6ff1: $0f
	db   $fc                                         ; $6ff2: $fc
	ld   [hl], a                                     ; $6ff3: $77
	ld   a, e                                        ; $6ff4: $7b
	ld   l, a                                        ; $6ff5: $6f
	ld   l, [hl]                                     ; $6ff6: $6e
	ld   l, a                                        ; $6ff7: $6f
	ld   a, a                                        ; $6ff8: $7f
	ld   e, a                                        ; $6ff9: $5f
	ld   e, h                                        ; $6ffa: $5c
	rra                                              ; $6ffb: $1f
	dec  e                                           ; $6ffc: $1d
	rst  JumpTable                                         ; $6ffd: $df
	ret  nz                                          ; $6ffe: $c0

	nop                                              ; $6fff: $00
	ccf                                              ; $7000: $3f
	cp   a                                           ; $7001: $bf
	add  c                                           ; $7002: $81
	add  b                                           ; $7003: $80
	add  hl, bc                                      ; $7004: $09
	rst  JumpTable                                         ; $7005: $df
	rst  $10                                         ; $7006: $d7
	rst  JumpTable                                         ; $7007: $df
	ret  c                                           ; $7008: $d8

	rst  JumpTable                                         ; $7009: $df
	rst  $10                                         ; $700a: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $700b: $cf
	adc  $cf                                         ; $700c: $ce $cf
	cp   $81                                         ; $700e: $fe $81
	add  a                                           ; $7010: $87
	ld   [bc], a                                     ; $7011: $02
	ld   d, b                                        ; $7012: $50
	rst  $30                                         ; $7013: $f7
	rst  $28                                         ; $7014: $ef
	add  c                                           ; $7015: $81
	ei                                               ; $7016: $fb
	ld   [bc], a                                     ; $7017: $02
	ld   a, a                                        ; $7018: $7f
	db   $fd                                         ; $7019: $fd
	ld   a, l                                        ; $701a: $7d
	add  b                                           ; $701b: $80
	db   $fc                                         ; $701c: $fc
	ld   [bc], a                                     ; $701d: $02
	db   $fd                                         ; $701e: $fd
	ld   bc, $8000                                   ; $701f: $01 $00 $80
	cp   $81                                         ; $7022: $fe $81
	nop                                              ; $7024: $00
	inc  b                                           ; $7025: $04
	db   $fd                                         ; $7026: $fd
	pop  af                                          ; $7027: $f1
	db   $fd                                         ; $7028: $fd
	dec  c                                           ; $7029: $0d
	db   $fd                                         ; $702a: $fd
	add  d                                           ; $702b: $82
	ld   sp, hl                                      ; $702c: $f9
	nop                                              ; $702d: $00
	rst  $30                                         ; $702e: $f7
	add  c                                           ; $702f: $81
	ldh  a, [rP1]                                    ; $7030: $f0 $00
	ld   sp, hl                                      ; $7032: $f9
	adc  h                                           ; $7033: $8c
	nop                                              ; $7034: $00
	add  d                                           ; $7035: $82
	ldh  a, [$8b]                                    ; $7036: $f0 $8b
	nop                                              ; $7038: $00
	db   $10                                         ; $7039: $10
	adc  a                                           ; $703a: $8f
	or   $77                                         ; $703b: $f6 $77
	ldh  a, [$fa]                                    ; $703d: $f0 $fa
	ld   hl, sp+$78                                  ; $703f: $f8 $78
	ld   hl, sp-$02                                  ; $7041: $f8 $fe
	db   $fc                                         ; $7043: $fc
	and  c                                           ; $7044: $a1
	ldh  [$de], a                                    ; $7045: $e0 $de

jr_018_7047:
	sbc  [hl]                                        ; $7047: $9e

jr_018_7048:
	rst  $38                                         ; $7048: $ff
	ld   a, a                                        ; $7049: $7f
	rst  $38                                         ; $704a: $ff
	sbc  l                                           ; $704b: $9d
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	rst  $38                                         ; $704e: $ff
	add  b                                           ; $704f: $80
	ld   a, a                                        ; $7050: $7f
	add  b                                           ; $7051: $80
	ld   hl, sp+$01                                  ; $7052: $f8 $01
	ld   bc, $8261                                   ; $7054: $01 $61 $82
	dec  c                                           ; $7057: $0d
	dec  b                                           ; $7058: $05
	nop                                              ; $7059: $00
	ld   b, c                                        ; $705a: $41
	adc  h                                           ; $705b: $8c
	sbc  l                                           ; $705c: $9d
	add  [hl]                                        ; $705d: $86
	ld   c, c                                        ; $705e: $49
	adc  l                                           ; $705f: $8d
	nop                                              ; $7060: $00
	db   $10                                         ; $7061: $10
	ldh  [rP1], a                                    ; $7062: $e0 $00
	jr   @-$1e                                       ; $7064: $18 $e0

	ld   d, $f8                                      ; $7066: $16 $f8
	ld   b, c                                        ; $7068: $41
	ld   c, [hl]                                     ; $7069: $4e

jr_018_706a:
	jr   nc, jr_018_70a3                             ; $706a: $30 $37

	adc  $cf                                         ; $706c: $ce $cf

jr_018_706e:
	scf                                              ; $706e: $37
	ld   [hl], $fe                                   ; $706f: $36 $fe
	db   $fd                                         ; $7071: $fd
	ldh  a, [c]                                      ; $7072: $f2
	add  b                                           ; $7073: $80
	rst  $30                                         ; $7074: $f7
	add  b                                           ; $7075: $80
	rlca                                             ; $7076: $07
	inc  de                                          ; $7077: $13
	rst  $30                                         ; $7078: $f7
	rst  $20                                         ; $7079: $e7
	rst  $28                                         ; $707a: $ef
	rrca                                             ; $707b: $0f
	xor  $ef                                         ; $707c: $ee $ef
	ret  c                                           ; $707e: $d8

	sbc  $a0                                         ; $707f: $de $a0
	cp   b                                           ; $7081: $b8
	add  b                                           ; $7082: $80
	ldh  [rP1], a                                    ; $7083: $e0 $00
	add  b                                           ; $7085: $80
	nop                                              ; $7086: $00
	jr   nc, jr_018_7089                             ; $7087: $30 $00

jr_018_7089:
	ld   e, b                                        ; $7089: $58
	jr   nc, jr_018_7048                             ; $708a: $30 $bc

	add  b                                           ; $708c: $80
	ld   a, b                                        ; $708d: $78
	add  d                                           ; $708e: $82
	ld   hl, sp+$02                                  ; $708f: $f8 $02
	ld   a, b                                        ; $7091: $78
	sbc  h                                           ; $7092: $9c
	nop                                              ; $7093: $00
	add  b                                           ; $7094: $80
	ldh  a, [$9a]                                    ; $7095: $f0 $9a
	nop                                              ; $7097: $00
	add  hl, bc                                      ; $7098: $09
	db   $e4                                         ; $7099: $e4
	ld   a, b                                        ; $709a: $78
	ld   hl, sp-$48                                  ; $709b: $f8 $b8
	or   h                                           ; $709d: $b4
	or   b                                           ; $709e: $b0
	ldh  a, [$d0]                                    ; $709f: $f0 $d0
	ret  z                                           ; $70a1: $c8

	ret  nz                                          ; $70a2: $c0

jr_018_70a3:
	add  b                                           ; $70a3: $80
	ldh  [$0b], a                                    ; $70a4: $e0 $0b
	cp   b                                           ; $70a6: $b8

jr_018_70a7:
	ldh  a, [$90]                                    ; $70a7: $f0 $90
	ldh  a, [$c0]                                    ; $70a9: $f0 $c0
	ldh  a, [$f4]                                    ; $70ab: $f0 $f4
	ld   hl, sp-$18                                  ; $70ad: $f8 $e8
	ld   hl, sp-$10                                  ; $70af: $f8 $f0
	ld   hl, sp-$80                                  ; $70b1: $f8 $80
	ld   a, b                                        ; $70b3: $78
	add  b                                           ; $70b4: $80
	ld   hl, sp-$7f                                  ; $70b5: $f8 $81
	nop                                              ; $70b7: $00
	ld   bc, $04f8                                   ; $70b8: $01 $f8 $04
	add  l                                           ; $70bb: $85
	nop                                              ; $70bc: $00
	ld   b, $80                                      ; $70bd: $06 $80
	nop                                              ; $70bf: $00
	ret  nz                                          ; $70c0: $c0

	nop                                              ; $70c1: $00
	ld   h, b                                        ; $70c2: $60
	nop                                              ; $70c3: $00
	jr   nc, jr_018_7047                             ; $70c4: $30 $81

	ret  nz                                          ; $70c6: $c0

	inc  b                                           ; $70c7: $04
	ret  c                                           ; $70c8: $d8

	ldh  a, [$90]                                    ; $70c9: $f0 $90
	ldh  a, [$6c]                                    ; $70cb: $f0 $6c
	add  d                                           ; $70cd: $82
	ld   hl, sp-$7f                                  ; $70ce: $f8 $81
	ld   a, b                                        ; $70d0: $78
	ld   [bc], a                                     ; $70d1: $02
	ld   [hl], h                                     ; $70d2: $74
	ld   [hl], b                                     ; $70d3: $70
	adc  b                                           ; $70d4: $88
	add  a                                           ; $70d5: $87
	nop                                              ; $70d6: $00
	add  b                                           ; $70d7: $80
	add  b                                           ; $70d8: $80
	add  b                                           ; $70d9: $80
	ret  nz                                          ; $70da: $c0

	add  d                                           ; $70db: $82
	jr   nz, jr_018_706a                             ; $70dc: $20 $8c

	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	ld   hl, sp-$80                                  ; $70e0: $f8 $80
	and  b                                           ; $70e2: $a0
	ld   bc, $9490                                   ; $70e3: $01 $90 $94
	add  b                                           ; $70e6: $80
	jr   c, jr_018_706e                              ; $70e7: $38 $85

	cp   b                                           ; $70e9: $b8
	nop                                              ; $70ea: $00
	cp   h                                           ; $70eb: $bc
	add  c                                           ; $70ec: $81
	or   b                                           ; $70ed: $b0
	ld   b, $b8                                      ; $70ee: $06 $b8
	ld   h, b                                        ; $70f0: $60
	ld   [hl], b                                     ; $70f1: $70
	ret  nz                                          ; $70f2: $c0

	ldh  [rP1], a                                    ; $70f3: $e0 $00
	ret  nz                                          ; $70f5: $c0

	add  a                                           ; $70f6: $87
	nop                                              ; $70f7: $00
	add  b                                           ; $70f8: $80
	inc  b                                           ; $70f9: $04
	add  [hl]                                        ; $70fa: $86
	nop                                              ; $70fb: $00
	add  b                                           ; $70fc: $80
	ld   bc, $1080                                   ; $70fd: $01 $80 $10
	add  b                                           ; $7100: $80
	ld   bc, $0280                                   ; $7101: $01 $80 $02
	add  b                                           ; $7104: $80
	add  hl, bc                                      ; $7105: $09
	add  b                                           ; $7106: $80
	add  d                                           ; $7107: $82
	add  b                                           ; $7108: $80
	ld   bc, $0080                                   ; $7109: $01 $80 $00
	add  b                                           ; $710c: $80
	ld   [$008c], sp                                 ; $710d: $08 $8c $00
	add  b                                           ; $7110: $80
	db   $10                                         ; $7111: $10
	add  b                                           ; $7112: $80
	add  b                                           ; $7113: $80
	add  b                                           ; $7114: $80
	ld   b, b                                        ; $7115: $40
	add  b                                           ; $7116: $80
	and  b                                           ; $7117: $a0
	add  b                                           ; $7118: $80
	ret  nc                                          ; $7119: $d0

	add  b                                           ; $711a: $80
	ld   hl, sp-$80                                  ; $711b: $f8 $80
	db   $fc                                         ; $711d: $fc
	add  b                                           ; $711e: $80
	ld   a, $80                                      ; $711f: $3e $80
	rrca                                             ; $7121: $0f
	add  b                                           ; $7122: $80
	ld   [bc], a                                     ; $7123: $02
	add  b                                           ; $7124: $80
	jr   z, jr_018_70a7                              ; $7125: $28 $80

	nop                                              ; $7127: $00
	add  b                                           ; $7128: $80
	ld   d, l                                        ; $7129: $55
	add  b                                           ; $712a: $80
	xor  d                                           ; $712b: $aa
	add  b                                           ; $712c: $80
	dec  d                                           ; $712d: $15
	add  b                                           ; $712e: $80
	ld   c, e                                        ; $712f: $4b
	add  b                                           ; $7130: $80
	sub  l                                           ; $7131: $95
	add  b                                           ; $7132: $80
	ld   a, [hl+]                                    ; $7133: $2a
	add  b                                           ; $7134: $80
	ld   d, l                                        ; $7135: $55
	add  b                                           ; $7136: $80
	ld   a, [hl+]                                    ; $7137: $2a
	add  b                                           ; $7138: $80
	push de                                          ; $7139: $d5
	add  b                                           ; $713a: $80
	cp   $80                                         ; $713b: $fe $80
	dec  sp                                          ; $713d: $3b
	add  b                                           ; $713e: $80
	rlca                                             ; $713f: $07
	add  b                                           ; $7140: $80
	ld   b, b                                        ; $7141: $40
	add  d                                           ; $7142: $82
	nop                                              ; $7143: $00
	add  b                                           ; $7144: $80
	add  b                                           ; $7145: $80
	add  b                                           ; $7146: $80
	ld   [$8080], sp                                 ; $7147: $08 $80 $80
	add  b                                           ; $714a: $80
	ld   b, b                                        ; $714b: $40
	add  b                                           ; $714c: $80
	ret  nz                                          ; $714d: $c0

	add  b                                           ; $714e: $80
	ld   h, b                                        ; $714f: $60
	add  b                                           ; $7150: $80
	or   b                                           ; $7151: $b0
	add  b                                           ; $7152: $80
	ret  nc                                          ; $7153: $d0

	add  b                                           ; $7154: $80
	ld   hl, sp-$7e                                  ; $7155: $f8 $82
	db   $fc                                         ; $7157: $fc
	add  b                                           ; $7158: $80
	cp   $80                                         ; $7159: $fe $80
	rst  $38                                         ; $715b: $ff
	add  b                                           ; $715c: $80
	ld   a, a                                        ; $715d: $7f
	add  b                                           ; $715e: $80
	ld   c, $80                                      ; $715f: $0e $80
	ld   [bc], a                                     ; $7161: $02
	add  b                                           ; $7162: $80
	sub  l                                           ; $7163: $95
	add  b                                           ; $7164: $80
	dec  hl                                          ; $7165: $2b
	add  b                                           ; $7166: $80
	ld   d, l                                        ; $7167: $55
	add  b                                           ; $7168: $80
	cp   e                                           ; $7169: $bb
	add  b                                           ; $716a: $80
	ld   e, a                                        ; $716b: $5f
	add  b                                           ; $716c: $80
	cp   a                                           ; $716d: $bf
	add  b                                           ; $716e: $80
	ld   a, a                                        ; $716f: $7f
	add  b                                           ; $7170: $80
	cp   a                                           ; $7171: $bf
	add  b                                           ; $7172: $80
	ld   e, a                                        ; $7173: $5f
	add  b                                           ; $7174: $80
	ld   a, a                                        ; $7175: $7f
	add  b                                           ; $7176: $80
	ccf                                              ; $7177: $3f
	add  b                                           ; $7178: $80
	ld   c, $80                                      ; $7179: $0e $80
	nop                                              ; $717b: $00
	add  b                                           ; $717c: $80
	ld   b, b                                        ; $717d: $40
	add  h                                           ; $717e: $84
	nop                                              ; $717f: $00
	add  b                                           ; $7180: $80
	adc  b                                           ; $7181: $88
	add  b                                           ; $7182: $80
	ld   b, b                                        ; $7183: $40
	add  b                                           ; $7184: $80
	ldh  [$80], a                                    ; $7185: $e0 $80
	ret  nz                                          ; $7187: $c0

	add  d                                           ; $7188: $82
	ldh  [$80], a                                    ; $7189: $e0 $80
	ret  c                                           ; $718b: $d8

	add  b                                           ; $718c: $80
	ld   d, h                                        ; $718d: $54
	add  b                                           ; $718e: $80
	xor  h                                           ; $718f: $ac
	add  b                                           ; $7190: $80
	ld   d, [hl]                                     ; $7191: $56
	add  b                                           ; $7192: $80
	xor  h                                           ; $7193: $ac
	add  b                                           ; $7194: $80
	sbc  $80                                         ; $7195: $de $80
	ld   l, b                                        ; $7197: $68
	add  b                                           ; $7198: $80
	nop                                              ; $7199: $00
	add  b                                           ; $719a: $80
	dec  h                                           ; $719b: $25
	add  b                                           ; $719c: $80
	adc  d                                           ; $719d: $8a
	add  b                                           ; $719e: $80
	ld   d, l                                        ; $719f: $55
	add  b                                           ; $71a0: $80
	ld   a, [hl+]                                    ; $71a1: $2a
	add  b                                           ; $71a2: $80
	ld   d, l                                        ; $71a3: $55
	add  b                                           ; $71a4: $80
	xor  a                                           ; $71a5: $af
	add  b                                           ; $71a6: $80
	ld   e, e                                        ; $71a7: $5b
	add  b                                           ; $71a8: $80
	cpl                                              ; $71a9: $2f
	add  b                                           ; $71aa: $80
	ld   e, d                                        ; $71ab: $5a
	add  b                                           ; $71ac: $80
	dec  h                                           ; $71ad: $25
	add  b                                           ; $71ae: $80
	sub  d                                           ; $71af: $92
	add  b                                           ; $71b0: $80
	nop                                              ; $71b1: $00
	add  b                                           ; $71b2: $80
	inc  b                                           ; $71b3: $04
	add  h                                           ; $71b4: $84
	nop                                              ; $71b5: $00
	add  b                                           ; $71b6: $80
	ld   b, b                                        ; $71b7: $40
	add  b                                           ; $71b8: $80
	add  b                                           ; $71b9: $80
	add  b                                           ; $71ba: $80
	ld   l, b                                        ; $71bb: $68
	add  b                                           ; $71bc: $80
	ret  nc                                          ; $71bd: $d0

	add  b                                           ; $71be: $80
	and  b                                           ; $71bf: $a0
	add  b                                           ; $71c0: $80
	ret  nc                                          ; $71c1: $d0

	add  b                                           ; $71c2: $80
	and  b                                           ; $71c3: $a0
	add  b                                           ; $71c4: $80
	ld   c, b                                        ; $71c5: $48
	add  b                                           ; $71c6: $80
	sub  [hl]                                        ; $71c7: $96
	add  b                                           ; $71c8: $80
	ld   a, [hl+]                                    ; $71c9: $2a
	add  b                                           ; $71ca: $80
	ld   d, $80                                      ; $71cb: $16 $80
	sbc  h                                           ; $71cd: $9c
	add  $00                                         ; $71ce: $c6 $00
	inc  bc                                          ; $71d0: $03
	ei                                               ; $71d1: $fb
	inc  b                                           ; $71d2: $04
	di                                               ; $71d3: $f3
	db   $d3                                         ; $71d4: $d3
	add  d                                           ; $71d5: $82
	rst  $10                                         ; $71d6: $d7
	ld   bc, $d7c7                                   ; $71d7: $01 $c7 $d7
	add  b                                           ; $71da: $80
	call nc, $d380                                   ; $71db: $d4 $80 $d3
	add  b                                           ; $71de: $80
	rst  $10                                         ; $71df: $d7
	inc  b                                           ; $71e0: $04
	ld   hl, wBaseInitialStickyCounter                                   ; $71e1: $21 $13 $c2
	and  [hl]                                        ; $71e4: $a6
	or   [hl]                                        ; $71e5: $b6
	add  b                                           ; $71e6: $80
	or   c                                           ; $71e7: $b1
	add  b                                           ; $71e8: $80
	or   a                                           ; $71e9: $b7
	ld   [de], a                                     ; $71ea: $12
	or   [hl]                                        ; $71eb: $b6
	ld   [hl], a                                     ; $71ec: $77
	ld   de, $a5c1                                   ; $71ed: $11 $c1 $a5
	or   a                                           ; $71f0: $b7
	or   e                                           ; $71f1: $b3
	ld   [$0161], sp                                 ; $71f2: $08 $61 $01
	add  c                                           ; $71f5: $81
	push de                                          ; $71f6: $d5
	ld   d, l                                        ; $71f7: $55
	ld   c, c                                        ; $71f8: $49
	ld   b, b                                        ; $71f9: $40
	ld   c, e                                        ; $71fa: $4b
	ld   c, d                                        ; $71fb: $4a
	ld   l, d                                        ; $71fc: $6a
	ld   l, e                                        ; $71fd: $6b
	add  b                                           ; $71fe: $80
	dec  hl                                          ; $71ff: $2b
	add  b                                           ; $7200: $80
	xor  e                                           ; $7201: $ab
	ld   [$7303], sp                                 ; $7202: $08 $03 $73
	ld   a, e                                        ; $7205: $7b
	ld   l, e                                        ; $7206: $6b
	ld   l, h                                        ; $7207: $6c
	xor  l                                           ; $7208: $ad
	and  c                                           ; $7209: $a1
	nop                                              ; $720a: $00
	rst  $38                                         ; $720b: $ff
	add  b                                           ; $720c: $80
	rlca                                             ; $720d: $07
	rrca                                             ; $720e: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $720f: $cf
	set  5, a                                        ; $7210: $cb $ef
	db   $e3                                         ; $7212: $e3
	rst  $28                                         ; $7213: $ef
	reti                                             ; $7214: $d9


	pop  bc                                          ; $7215: $c1
	cp   e                                           ; $7216: $bb
	xor  e                                           ; $7217: $ab
	ld   l, l                                        ; $7218: $6d
	ld   [hl], l                                     ; $7219: $75
	dec  [hl]                                        ; $721a: $35
	push af                                          ; $721b: $f5
	push de                                          ; $721c: $d5
	ld   [hl], l                                     ; $721d: $75
	push af                                          ; $721e: $f5
	add  e                                           ; $721f: $83
	or   l                                           ; $7220: $b5
	nop                                              ; $7221: $00
	rst  $10                                         ; $7222: $d7
	add  d                                           ; $7223: $82
	cp   $82                                         ; $7224: $fe $82
	db   $fc                                         ; $7226: $fc
	nop                                              ; $7227: $00
	ld   sp, hl                                      ; $7228: $f9
	add  b                                           ; $7229: $80
	ld   hl, sp+$01                                  ; $722a: $f8 $01
	rst  $38                                         ; $722c: $ff
	ld   sp, hl                                      ; $722d: $f9
	add  b                                           ; $722e: $80
	and  $07                                         ; $722f: $e6 $07
	sbc  c                                           ; $7231: $99
	ld   e, $67                                      ; $7232: $1e $67
	ld   l, h                                        ; $7234: $6c
	ld   l, a                                        ; $7235: $6f
	di                                               ; $7236: $f3
	sbc  $ce                                         ; $7237: $de $ce
	add  b                                           ; $7239: $80
	ccf                                              ; $723a: $3f
	add  b                                           ; $723b: $80
	db   $fc                                         ; $723c: $fc
	add  b                                           ; $723d: $80
	di                                               ; $723e: $f3
	add  b                                           ; $723f: $80
	call z, $ef06                                    ; $7240: $cc $06 $ef
	ld   l, a                                        ; $7243: $6f
	ld   e, a                                        ; $7244: $5f
	sbc  a                                           ; $7245: $9f
	rst  $38                                         ; $7246: $ff
	or   a                                           ; $7247: $b7
	ld   [hl], a                                     ; $7248: $77
	add  b                                           ; $7249: $80
	ld   a, c                                        ; $724a: $79
	rla                                              ; $724b: $17
	ld   a, [hl]                                     ; $724c: $7e
	call c, $e8df                                    ; $724d: $dc $df $e8
	rst  $38                                         ; $7250: $ff
	inc  b                                           ; $7251: $04
	ei                                               ; $7252: $fb
	ld   [bc], a                                     ; $7253: $02
	db   $fc                                         ; $7254: $fc
	ret  nz                                          ; $7255: $c0

	db   $fc                                         ; $7256: $fc
	ret  nz                                          ; $7257: $c0

	db   $fc                                         ; $7258: $fc
	ret  nz                                          ; $7259: $c0

	db   $fc                                         ; $725a: $fc
	add  b                                           ; $725b: $80
	ld   a, b                                        ; $725c: $78
	and  b                                           ; $725d: $a0
	sbc  b                                           ; $725e: $98
	ld   d, b                                        ; $725f: $50
	ldh  [rSB], a                                    ; $7260: $e0 $01
	pop  af                                          ; $7262: $f1
	ld   c, a                                        ; $7263: $4f
	add  c                                           ; $7264: $81
	rst  $10                                         ; $7265: $d7
	inc  bc                                          ; $7266: $03
	scf                                              ; $7267: $37
	rlca                                             ; $7268: $07
	and  $d6                                         ; $7269: $e6 $d6
	add  b                                           ; $726b: $80
	pop  de                                          ; $726c: $d1
	inc  bc                                          ; $726d: $03
	push de                                          ; $726e: $d5
	push bc                                          ; $726f: $c5
	db   $fc                                         ; $7270: $fc
	db   $dd                                         ; $7271: $dd
	add  b                                           ; $7272: $80
	or   c                                           ; $7273: $b1
	nop                                              ; $7274: $00
	sub  $81                                         ; $7275: $d6 $81
	or   a                                           ; $7277: $b7
	add  b                                           ; $7278: $80
	xor  a                                           ; $7279: $af
	ld   bc, $0f6f                                   ; $727a: $01 $6f $0f
	add  b                                           ; $727d: $80
	reti                                             ; $727e: $d9


	add  b                                           ; $727f: $80
	rst  ToBoot                                         ; $7280: $c7
	dec  bc                                          ; $7281: $0b
	inc  a                                           ; $7282: $3c
	cp   h                                           ; $7283: $bc
	sbc  b                                           ; $7284: $98
	ld   a, [de]                                     ; $7285: $1a
	sub  c                                           ; $7286: $91
	sub  e                                           ; $7287: $93
	ei                                               ; $7288: $fb
	rst  $38                                         ; $7289: $ff
	di                                               ; $728a: $f3
	rst  $38                                         ; $728b: $ff
	or   a                                           ; $728c: $b7
	cp   a                                           ; $728d: $bf
	add  b                                           ; $728e: $80
	nop                                              ; $728f: $00
	dec  b                                           ; $7290: $05
	rst  $20                                         ; $7291: $e7
	rst  $38                                         ; $7292: $ff
	dec  bc                                          ; $7293: $0b
	ccf                                              ; $7294: $3f
	inc  l                                           ; $7295: $2c
	nop                                              ; $7296: $00
	add  c                                           ; $7297: $81
	rst  $38                                         ; $7298: $ff
	add  b                                           ; $7299: $80
	rst  $28                                         ; $729a: $ef
	inc  b                                           ; $729b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $729c: $cf
	adc  $82                                         ; $729d: $ce $82
	ld   b, b                                        ; $729f: $40
	inc  a                                           ; $72a0: $3c
	add  b                                           ; $72a1: $80
	rst  $38                                         ; $72a2: $ff
	add  hl, bc                                      ; $72a3: $09
	ret  nz                                          ; $72a4: $c0

	ldh  [rAUD4ENV], a                               ; $72a5: $e0 $21
	ld   bc, $b5bd                                   ; $72a7: $01 $bd $b5
	jp   nc, $f1ca                                   ; $72aa: $d2 $ca $f1

	pop  hl                                          ; $72ad: $e1
	add  b                                           ; $72ae: $80
	ei                                               ; $72af: $fb
	add  b                                           ; $72b0: $80
	dec  c                                           ; $72b1: $0d
	add  b                                           ; $72b2: $80
	ld   sp, $de80                                   ; $72b3: $31 $80 $de
	inc  bc                                          ; $72b6: $03
	db   $ec                                         ; $72b7: $ec
	inc  l                                           ; $72b8: $2c
	ld   e, c                                        ; $72b9: $59
	sbc  c                                           ; $72ba: $99
	add  b                                           ; $72bb: $80
	ld   a, [hl]                                     ; $72bc: $7e
	dec  c                                           ; $72bd: $0d
	cp   a                                           ; $72be: $bf
	rst  $38                                         ; $72bf: $ff
	cp   a                                           ; $72c0: $bf
	rst  $38                                         ; $72c1: $ff
	di                                               ; $72c2: $f3
	rst  $38                                         ; $72c3: $ff
	db   $e3                                         ; $72c4: $e3
	rst  $38                                         ; $72c5: $ff
	call Call_018_51ff                               ; $72c6: $cd $ff $51
	ld   [hl], d                                     ; $72c9: $72
	ld   [hl-], a                                    ; $72ca: $32
	inc  sp                                          ; $72cb: $33
	add  b                                           ; $72cc: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72cd: $cf
	add  b                                           ; $72ce: $80
	ccf                                              ; $72cf: $3f
	nop                                              ; $72d0: $00
	rst  $38                                         ; $72d1: $ff
	add  b                                           ; $72d2: $80
	cp   $09                                         ; $72d3: $fe $09
	ld   sp, hl                                      ; $72d5: $f9
	cp   c                                           ; $72d6: $b9
	db   $e3                                         ; $72d7: $e3
	dec  hl                                          ; $72d8: $2b
	adc  a                                           ; $72d9: $8f
	ld   [de], a                                     ; $72da: $12
	ccf                                              ; $72db: $3f
	ld   l, $f3                                      ; $72dc: $2e $f3
	push af                                          ; $72de: $f5
	add  b                                           ; $72df: $80
	db   $dd                                         ; $72e0: $dd
	nop                                              ; $72e1: $00
	db   $fd                                         ; $72e2: $fd
	add  b                                           ; $72e3: $80
	cp   $00                                         ; $72e4: $fe $00
	ld   hl, sp-$80                                  ; $72e6: $f8 $80
	cp   $05                                         ; $72e8: $fe $05
	rst  $38                                         ; $72ea: $ff
	rst  $20                                         ; $72eb: $e7
	rst  $38                                         ; $72ec: $ff
	sbc  a                                           ; $72ed: $9f
	rst  $38                                         ; $72ee: $ff
	ccf                                              ; $72ef: $3f
	add  h                                           ; $72f0: $84
	ld   a, l                                        ; $72f1: $7d
	add  a                                           ; $72f2: $87
	ld   a, e                                        ; $72f3: $7b
	inc  b                                           ; $72f4: $04
	ld   sp, $f4ff                                   ; $72f5: $31 $ff $f4
	rst  $38                                         ; $72f8: $ff
	cp   $80                                         ; $72f9: $fe $80
	rst  $38                                         ; $72fb: $ff
	ld   bc, $fffe                                   ; $72fc: $01 $fe $ff
	add  c                                           ; $72ff: $81
	db   $fd                                         ; $7300: $fd
	nop                                              ; $7301: $00
	rst  $38                                         ; $7302: $ff
	add  b                                           ; $7303: $80
	ld   hl, sp+$08                                  ; $7304: $f8 $08
	ei                                               ; $7306: $fb
	ld   d, e                                        ; $7307: $53
	ei                                               ; $7308: $fb
	ld   b, b                                        ; $7309: $40
	cp   b                                           ; $730a: $b8
	dec  bc                                          ; $730b: $0b

jr_018_730c:
	db   $e3                                         ; $730c: $e3
	ld   e, a                                        ; $730d: $5f
	rra                                              ; $730e: $1f
	add  c                                           ; $730f: $81
	rst  $38                                         ; $7310: $ff
	add  b                                           ; $7311: $80
	pop  af                                          ; $7312: $f1
	inc  b                                           ; $7313: $04
	rrca                                             ; $7314: $0f
	ld   c, $ff                                      ; $7315: $0e $ff
	dec  c                                           ; $7317: $0d
	inc  c                                           ; $7318: $0c
	add  b                                           ; $7319: $80
	db   $fd                                         ; $731a: $fd
	ld   [bc], a                                     ; $731b: $02
	or   $f4                                         ; $731c: $f6 $f4
	db   $fc                                         ; $731e: $fc
	add  b                                           ; $731f: $80
	ld   hl, sp+$03                                  ; $7320: $f8 $03
	ldh  [$61], a                                    ; $7322: $e0 $61
	rst  $38                                         ; $7324: $ff
	cp   a                                           ; $7325: $bf
	add  c                                           ; $7326: $81
	rst  $38                                         ; $7327: $ff
	add  hl, bc                                      ; $7328: $09

jr_018_7329:
	jr   nz, jr_018_730c                             ; $7329: $20 $e1

	ld   sp, hl                                      ; $732b: $f9
	ld   hl, sp-$04                                  ; $732c: $f8 $fc
	rst  $38                                         ; $732e: $ff
	db   $fd                                         ; $732f: $fd
	rst  $38                                         ; $7330: $ff
	cp   $ff                                         ; $7331: $fe $ff
	add  b                                           ; $7333: $80
	ld   a, a                                        ; $7334: $7f
	add  b                                           ; $7335: $80
	inc  e                                           ; $7336: $1c
	ld   [bc], a                                     ; $7337: $02
	ld   l, b                                        ; $7338: $68
	ld   l, d                                        ; $7339: $6a
	ld   [bc], a                                     ; $733a: $02
	add  b                                           ; $733b: $80
	ld   hl, sp-$80                                  ; $733c: $f8 $80
	rlca                                             ; $733e: $07
	add  b                                           ; $733f: $80
	ld   hl, sp+$02                                  ; $7340: $f8 $02
	rst  $38                                         ; $7342: $ff
	add  b                                           ; $7343: $80
	ld   a, a                                        ; $7344: $7f
	add  b                                           ; $7345: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7346: $cf
	ld   [bc], a                                     ; $7347: $02
	jr   nc, jr_018_736a                             ; $7348: $30 $20

	db   $10                                         ; $734a: $10
	add  b                                           ; $734b: $80
	nop                                              ; $734c: $00
	add  b                                           ; $734d: $80
	ld   e, $80                                      ; $734e: $1e $80
	ldh  [$80], a                                    ; $7350: $e0 $80

jr_018_7352:
	rra                                              ; $7352: $1f
	ld   bc, $c0ff                                   ; $7353: $01 $ff $c0
	add  b                                           ; $7356: $80
	cp   a                                           ; $7357: $bf
	inc  b                                           ; $7358: $04
	rst  $38                                         ; $7359: $ff
	ld   e, b                                        ; $735a: $58
	db   $fc                                         ; $735b: $fc
	ld   h, h                                        ; $735c: $64
	nop                                              ; $735d: $00
	add  b                                           ; $735e: $80
	inc  bc                                          ; $735f: $03
	add  b                                           ; $7360: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7361: $cf
	dec  b                                           ; $7362: $05
	rra                                              ; $7363: $1f
	ccf                                              ; $7364: $3f
	rra                                              ; $7365: $1f
	rst  $38                                         ; $7366: $ff
	rra                                              ; $7367: $1f
	rst  JumpTable                                         ; $7368: $df
	add  b                                           ; $7369: $80

jr_018_736a:
	rst  $38                                         ; $736a: $ff
	add  b                                           ; $736b: $80
	inc  e                                           ; $736c: $1c
	ld   c, $0b                                      ; $736d: $0e $0b
	dec  hl                                          ; $736f: $2b
	xor  l                                           ; $7370: $ad
	adc  h                                           ; $7371: $8c
	rst  $28                                         ; $7372: $ef
	and  $d7                                         ; $7373: $e6 $d7
	rst  ToBoot                                         ; $7375: $c7
	jp   $afcb                                       ; $7376: $c3 $cb $af


	add  e                                           ; $7379: $83
	inc  bc                                          ; $737a: $03
	inc  a                                           ; $737b: $3c
	cp   h                                           ; $737c: $bc
	add  c                                           ; $737d: $81
	cp   a                                           ; $737e: $bf
	db   $10                                         ; $737f: $10
	ld   d, h                                        ; $7380: $54
	rst  $38                                         ; $7381: $ff
	inc  bc                                          ; $7382: $03
	rst  $38                                         ; $7383: $ff
	rlca                                             ; $7384: $07
	ld   a, a                                        ; $7385: $7f
	xor  a                                           ; $7386: $af
	cp   a                                           ; $7387: $bf
	rst  $38                                         ; $7388: $ff
	pop  bc                                          ; $7389: $c1
	rst  $38                                         ; $738a: $ff
	sbc  $d7                                         ; $738b: $de $d7
	cpl                                              ; $738d: $2f
	ccf                                              ; $738e: $3f
	ld   e, l                                        ; $738f: $5d
	cp   d                                           ; $7390: $ba
	add  h                                           ; $7391: $84
	rst  $38                                         ; $7392: $ff
	add  b                                           ; $7393: $80
	cp   $80                                         ; $7394: $fe $80
	db   $fd                                         ; $7396: $fd
	rlca                                             ; $7397: $07
	dec  a                                           ; $7398: $3d
	db   $fd                                         ; $7399: $fd
	db   $db                                         ; $739a: $db
	ei                                               ; $739b: $fb
	rst  $28                                         ; $739c: $ef
	dec  d                                           ; $739d: $15
	ld   a, e                                        ; $739e: $7b
	ld   h, c                                        ; $739f: $61
	add  b                                           ; $73a0: $80
	ld   a, a                                        ; $73a1: $7f
	add  b                                           ; $73a2: $80
	ccf                                              ; $73a3: $3f
	add  b                                           ; $73a4: $80
	rrca                                             ; $73a5: $0f
	add  b                                           ; $73a6: $80
	jr   nc, jr_018_7329                             ; $73a7: $30 $80

	jp   z, $f403                                    ; $73a9: $ca $03 $f4

	inc  [hl]                                        ; $73ac: $34
	ld   a, [$800a]                                  ; $73ad: $fa $0a $80
	ld   [hl], c                                     ; $73b0: $71
	rlca                                             ; $73b1: $07
	ld   a, b                                        ; $73b2: $78
	ld   [hl], b                                     ; $73b3: $70
	ld   a, a                                        ; $73b4: $7f
	ld   a, e                                        ; $73b5: $7b
	ld   a, a                                        ; $73b6: $7f
	ld   e, h                                        ; $73b7: $5c
	ld   a, a                                        ; $73b8: $7f
	ld   l, a                                        ; $73b9: $6f
	add  c                                           ; $73ba: $81
	rst  $38                                         ; $73bb: $ff
	ld   b, $f7                                      ; $73bc: $06 $f7
	rst  $28                                         ; $73be: $ef
	and  b                                           ; $73bf: $a0
	ld   c, e                                        ; $73c0: $4b
	inc  sp                                          ; $73c1: $33
	jr   nc, jr_018_73c4                             ; $73c2: $30 $00

jr_018_73c4:
	add  b                                           ; $73c4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73c5: $cf
	ld   bc, $00ff                                   ; $73c6: $01 $ff $00
	add  c                                           ; $73c9: $81
	rst  $38                                         ; $73ca: $ff
	inc  b                                           ; $73cb: $04
	rst  $28                                         ; $73cc: $ef
	rst  $38                                         ; $73cd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ce: $cf
	rst  $38                                         ; $73cf: $ff
	jr   nz, jr_018_7352                             ; $73d0: $20 $80

	add  e                                           ; $73d2: $83
	add  b                                           ; $73d3: $80
	ld   a, h                                        ; $73d4: $7c
	add  b                                           ; $73d5: $80
	add  e                                           ; $73d6: $83
	add  c                                           ; $73d7: $81
	rst  $38                                         ; $73d8: $ff
	ld   c, $06                                      ; $73d9: $0e $06
	rst  $38                                         ; $73db: $ff
	ld   a, [$fdff]                                  ; $73dc: $fa $ff $fd
	rst  $38                                         ; $73df: $ff
	ld   b, $c7                                      ; $73e0: $06 $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73e2: $cf
	rrca                                             ; $73e3: $0f
	rra                                              ; $73e4: $1f
	rst  $38                                         ; $73e5: $ff
	rst  JumpTable                                         ; $73e6: $df
	rst  $38                                         ; $73e7: $ff
	ccf                                              ; $73e8: $3f
	add  e                                           ; $73e9: $83
	rst  $38                                         ; $73ea: $ff
	add  b                                           ; $73eb: $80
	ei                                               ; $73ec: $fb
	inc  b                                           ; $73ed: $04
	cpl                                              ; $73ee: $2f
	ld   l, a                                        ; $73ef: $6f
	ld   e, a                                        ; $73f0: $5f
	ld   a, a                                        ; $73f1: $7f
	ld   h, b                                        ; $73f2: $60
	add  d                                           ; $73f3: $82
	ld   a, a                                        ; $73f4: $7f
	rlca                                             ; $73f5: $07
	rra                                              ; $73f6: $1f
	sbc  a                                           ; $73f7: $9f
	and  b                                           ; $73f8: $a0
	and  c                                           ; $73f9: $a1
	sub  a                                           ; $73fa: $97
	sub  h                                           ; $73fb: $94
	xor  a                                           ; $73fc: $af
	jp   nz, $be80                                   ; $73fd: $c2 $80 $be

	dec  b                                           ; $7400: $05
	rst  $38                                         ; $7401: $ff
	rst  $28                                         ; $7402: $ef
	rst  $38                                         ; $7403: $ff
	inc  bc                                          ; $7404: $03
	rst  $38                                         ; $7405: $ff
	db   $fc                                         ; $7406: $fc
	add  d                                           ; $7407: $82
	rst  $38                                         ; $7408: $ff
	dec  b                                           ; $7409: $05
	rlca                                             ; $740a: $07
	and  a                                           ; $740b: $a7
	jp   hl                                          ; $740c: $e9


	cp   c                                           ; $740d: $b9
	db   $fc                                         ; $740e: $fc
	adc  h                                           ; $740f: $8c
	add  b                                           ; $7410: $80
	db   $fc                                         ; $7411: $fc
	ld   bc, $7efe                                   ; $7412: $01 $fe $7e
	add  b                                           ; $7415: $80
	cp   $80                                         ; $7416: $fe $80
	ldh  a, [$80]                                    ; $7418: $f0 $80
	ld   [$da80], a                                  ; $741a: $ea $80 $da
	ld   de, $0708                                   ; $741d: $11 $08 $07
	rst  $38                                         ; $7420: $ff
	or   $ff                                         ; $7421: $f6 $ff
	ei                                               ; $7423: $fb
	db   $fd                                         ; $7424: $fd
	ei                                               ; $7425: $fb
	rst  $38                                         ; $7426: $ff
	ei                                               ; $7427: $fb
	rst  $38                                         ; $7428: $ff
	di                                               ; $7429: $f3
	ei                                               ; $742a: $fb
	di                                               ; $742b: $f3
	cp   $f8                                         ; $742c: $fe $f8
	rst  $38                                         ; $742e: $ff
	ld   [bc], a                                     ; $742f: $02
	add  b                                           ; $7430: $80
	rst  $38                                         ; $7431: $ff
	dec  c                                           ; $7432: $0d
	ld   l, a                                        ; $7433: $6f
	adc  a                                           ; $7434: $8f
	sub  a                                           ; $7435: $97
	add  a                                           ; $7436: $87
	rst  $28                                         ; $7437: $ef
	rst  $20                                         ; $7438: $e7
	rst  $30                                         ; $7439: $f7
	push af                                          ; $743a: $f5
	rst  $38                                         ; $743b: $ff
	db   $fd                                         ; $743c: $fd
	ei                                               ; $743d: $fb
	ld   hl, sp-$01                                  ; $743e: $f8 $ff
	inc  b                                           ; $7440: $04
	add  c                                           ; $7441: $81
	rst  $38                                         ; $7442: $ff
	add  b                                           ; $7443: $80
	cp   $0c                                         ; $7444: $fe $0c
	sbc  [hl]                                        ; $7446: $9e
	cp   $87                                         ; $7447: $fe $87
	rst  $38                                         ; $7449: $ff
	db   $e3                                         ; $744a: $e3
	rst  $38                                         ; $744b: $ff
	ld   sp, hl                                      ; $744c: $f9
	rst  $38                                         ; $744d: $ff
	db   $fc                                         ; $744e: $fc
	rst  $38                                         ; $744f: $ff
	ld   e, $df                                      ; $7450: $1e $df
	rst  $28                                         ; $7452: $ef
	add  b                                           ; $7453: $80
	xor  a                                           ; $7454: $af

jr_018_7455:
	nop                                              ; $7455: $00
	cpl                                              ; $7456: $2f
	add  b                                           ; $7457: $80
	xor  a                                           ; $7458: $af
	add  b                                           ; $7459: $80
	rra                                              ; $745a: $1f
	add  d                                           ; $745b: $82
	rst  $38                                         ; $745c: $ff
	inc  b                                           ; $745d: $04
	sbc  $df                                         ; $745e: $de $df
	add  h                                           ; $7460: $84
	sbc  a                                           ; $7461: $9f
	sbc  d                                           ; $7462: $9a
	add  b                                           ; $7463: $80
	sbc  a                                           ; $7464: $9f
	add  c                                           ; $7465: $81
	cp   a                                           ; $7466: $bf
	nop                                              ; $7467: $00
	ccf                                              ; $7468: $3f
	add  b                                           ; $7469: $80
	add  a                                           ; $746a: $87
	add  b                                           ; $746b: $80
	xor  e                                           ; $746c: $ab
	add  b                                           ; $746d: $80
	xor  l                                           ; $746e: $ad
	ld   de, $e788                                   ; $746f: $11 $88 $e7
	ld   l, e                                        ; $7472: $6b
	ld   a, e                                        ; $7473: $7b
	ei                                               ; $7474: $fb
	ld   a, e                                        ; $7475: $7b
	ei                                               ; $7476: $fb
	sbc  e                                           ; $7477: $9b
	ei                                               ; $7478: $fb
	adc  e                                           ; $7479: $8b
	di                                               ; $747a: $f3
	db   $e3                                         ; $747b: $e3
	rst  $38                                         ; $747c: $ff
	cp   e                                           ; $747d: $bb
	or   a                                           ; $747e: $b7
	pop  af                                          ; $747f: $f1

Call_018_7480:
	rst  $30                                         ; $7480: $f7
	adc  d                                           ; $7481: $8a
	add  b                                           ; $7482: $80
	jp   nc, $d680                                   ; $7483: $d2 $80 $d6

	ld   bc, $4ece                                   ; $7486: $01 $ce $4e
	add  b                                           ; $7489: $80
	ret  c                                           ; $748a: $d8

	add  b                                           ; $748b: $80
	db   $db                                         ; $748c: $db
	add  b                                           ; $748d: $80
	ld   [$e680], a                                  ; $748e: $ea $80 $e6
	add  b                                           ; $7491: $80
	db   $e4                                         ; $7492: $e4
	add  h                                           ; $7493: $84
	rst  $38                                         ; $7494: $ff
	add  b                                           ; $7495: $80
	ld   a, a                                        ; $7496: $7f
	inc  b                                           ; $7497: $04
	add  c                                           ; $7498: $81
	add  a                                           ; $7499: $87
	halt                                             ; $749a: $76
	rst  $30                                         ; $749b: $f7
	add  a                                           ; $749c: $87
	add  b                                           ; $749d: $80
	ld   [hl], a                                     ; $749e: $77
	ld   b, $08                                      ; $749f: $06 $08
	rst  $38                                         ; $74a1: $ff
	rlca                                             ; $74a2: $07
	rst  JumpTable                                         ; $74a3: $df
	rrca                                             ; $74a4: $0f
	rst  $38                                         ; $74a5: $ff
	rst  JumpTable                                         ; $74a6: $df
	add  b                                           ; $74a7: $80
	rst  $38                                         ; $74a8: $ff
	add  b                                           ; $74a9: $80
	cp   $80                                         ; $74aa: $fe $80
	db   $fd                                         ; $74ac: $fd
	dec  b                                           ; $74ad: $05
	inc  bc                                          ; $74ae: $03
	ld   [bc], a                                     ; $74af: $02
	ld   [hl], a                                     ; $74b0: $77
	ld   c, c                                        ; $74b1: $49
	rst  $38                                         ; $74b2: $ff
	cp   a                                           ; $74b3: $bf
	add  c                                           ; $74b4: $81
	rst  $38                                         ; $74b5: $ff
	ld   bc, $ff7f                                   ; $74b6: $01 $7f $ff
	add  b                                           ; $74b9: $80
	ccf                                              ; $74ba: $3f
	add  b                                           ; $74bb: $80
	rst  JumpTable                                         ; $74bc: $df
	rrca                                             ; $74bd: $0f
	jr   nz, @-$1e                                   ; $74be: $20 $e0

	ld   [hl], b                                     ; $74c0: $70
	rst  $30                                         ; $74c1: $f7
	add  hl, sp                                      ; $74c2: $39
	rst  $38                                         ; $74c3: $ff
	dec  a                                           ; $74c4: $3d
	rst  $38                                         ; $74c5: $ff
	cp   e                                           ; $74c6: $bb
	rst  $38                                         ; $74c7: $ff
	rst  $20                                         ; $74c8: $e7
	ldh  [$90], a                                    ; $74c9: $e0 $90
	sub  a                                           ; $74cb: $97
	ld   [hl], a                                     ; $74cc: $77
	ld   [hl], b                                     ; $74cd: $70
	add  b                                           ; $74ce: $80
	ld   [hl], a                                     ; $74cf: $77
	ld   [bc], a                                     ; $74d0: $02
	ld   d, b                                        ; $74d1: $50
	ld   [hl], b                                     ; $74d2: $70
	jr   nz, jr_018_7455                             ; $74d3: $20 $80

	and  l                                           ; $74d5: $a5
	add  b                                           ; $74d6: $80
	or   l                                           ; $74d7: $b5
	add  b                                           ; $74d8: $80
	cp   c                                           ; $74d9: $b9
	add  b                                           ; $74da: $80
	dec  c                                           ; $74db: $0d
	add  b                                           ; $74dc: $80
	db   $ed                                         ; $74dd: $ed
	ld   b, $2b                                      ; $74de: $06 $2b
	xor  e                                           ; $74e0: $ab
	or   e                                           ; $74e1: $b3
	inc  sp                                          ; $74e2: $33
	inc  de                                          ; $74e3: $13
	add  sp, -$05                                    ; $74e4: $e8 $fb
	add  b                                           ; $74e6: $80
	rst  $38                                         ; $74e7: $ff
	inc  c                                           ; $74e8: $0c
	rst  $30                                         ; $74e9: $f7
	rst  $38                                         ; $74ea: $ff
	ld   h, a                                        ; $74eb: $67
	rst  $38                                         ; $74ec: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74ed: $cf
	rst  $38                                         ; $74ee: $ff
	rst  JumpTable                                         ; $74ef: $df
	rst  $38                                         ; $74f0: $ff
	cp   $f6                                         ; $74f1: $fe $f6
	rst  $20                                         ; $74f3: $e7
	rst  $30                                         ; $74f4: $f7
	ld   h, [hl]                                     ; $74f5: $66
	add  d                                           ; $74f6: $82
	rst  $20                                         ; $74f7: $e7
	add  c                                           ; $74f8: $81
	rst  $28                                         ; $74f9: $ef
	add  b                                           ; $74fa: $80
	ld   l, a                                        ; $74fb: $6f
	dec  bc                                          ; $74fc: $0b
	db   $ed                                         ; $74fd: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74fe: $cf
	scf                                              ; $74ff: $37
	rlca                                             ; $7500: $07
	inc  bc                                          ; $7501: $03
	ld   hl, sp-$07                                  ; $7502: $f8 $f9
	push hl                                          ; $7504: $e5
	db   $e4                                         ; $7505: $e4
	db   $ec                                         ; $7506: $ec
	rst  $28                                         ; $7507: $ef
	db   $eb                                         ; $7508: $eb
	add  b                                           ; $7509: $80
	add  sp, -$80                                    ; $750a: $e8 $80
	db   $eb                                         ; $750c: $eb
	inc  bc                                          ; $750d: $03
	add  sp, -$28                                    ; $750e: $e8 $d8
	rst  JumpTable                                         ; $7510: $df
	rst  $10                                         ; $7511: $d7
	add  b                                           ; $7512: $80
	ret  nc                                          ; $7513: $d0

	inc  bc                                          ; $7514: $03
	reti                                             ; $7515: $d9


	rrca                                             ; $7516: $0f
	xor  $ef                                         ; $7517: $ee $ef
	add  b                                           ; $7519: $80
	rrca                                             ; $751a: $0f
	add  b                                           ; $751b: $80
	rst  $28                                         ; $751c: $ef
	inc  bc                                          ; $751d: $03
	rrca                                             ; $751e: $0f
	ld   c, $d6                                      ; $751f: $0e $d6
	sbc  $80                                         ; $7521: $de $80
	ld   e, $80                                      ; $7523: $1e $80
	sbc  $03                                         ; $7525: $de $03
	ld   b, l                                        ; $7527: $45
	ld   a, e                                        ; $7528: $7b
	jr   c, @+$7a                                    ; $7529: $38 $78

	add  b                                           ; $752b: $80
	ld   a, e                                        ; $752c: $7b
	add  b                                           ; $752d: $80
	ld   a, b                                        ; $752e: $78
	dec  c                                           ; $752f: $0d
	ld   a, e                                        ; $7530: $7b
	dec  sp                                          ; $7531: $3b
	inc  [hl]                                        ; $7532: $34
	cp   h                                           ; $7533: $bc
	cp   l                                           ; $7534: $bd
	dec  a                                           ; $7535: $3d
	inc  a                                           ; $7536: $3c
	cp   h                                           ; $7537: $bc
	ld   a, b                                        ; $7538: $78
	db   $d3                                         ; $7539: $d3
	inc  de                                          ; $753a: $13
	dec  de                                          ; $753b: $1b
	ei                                               ; $753c: $fb
	db   $eb                                         ; $753d: $eb
	add  b                                           ; $753e: $80
	dec  bc                                          ; $753f: $0b
	add  b                                           ; $7540: $80
	db   $eb                                         ; $7541: $eb
	inc  bc                                          ; $7542: $03
	dec  bc                                          ; $7543: $0b
	dec  c                                           ; $7544: $0d
	db   $fd                                         ; $7545: $fd
	push af                                          ; $7546: $f5
	add  b                                           ; $7547: $80
	dec  b                                           ; $7548: $05
	nop                                              ; $7549: $00
	ld   a, [hl+]                                    ; $754a: $2a
	add  d                                           ; $754b: $82
	rst  $30                                         ; $754c: $f7
	ld   bc, $e3fb                                   ; $754d: $01 $fb $e3
	add  c                                           ; $7550: $81
	ei                                               ; $7551: $fb
	inc  b                                           ; $7552: $04
	db   $db                                         ; $7553: $db
	ld   sp, hl                                      ; $7554: $f9
	cp   $f0                                         ; $7555: $fe $f0
	ldh  [$80], a                                    ; $7557: $e0 $80
	adc  a                                           ; $7559: $8f
	add  b                                           ; $755a: $80
	rrca                                             ; $755b: $0f
	ld   bc, $f0d0                                   ; $755c: $01 $d0 $f0
	add  b                                           ; $755f: $80
	ld   l, $09                                      ; $7560: $2e $09
	db $30, $51

	ld   e, l                                        ; $7564: $5d
	ld   e, a                                        ; $7565: $5f
	ld   h, d                                        ; $7566: $62
	and  $f5                                         ; $7567: $e6 $f5
	db   $fd                                         ; $7569: $fd
	db   $ed                                         ; $756a: $ed
	ld   [hl+], a                                    ; $756b: $22
	add  b                                           ; $756c: $80
	sbc  [hl]                                        ; $756d: $9e
	add  b                                           ; $756e: $80
	cp   $80                                         ; $756f: $fe $80
	nop                                              ; $7571: $00
	ld   bc, $ff3f                                   ; $7572: $01 $3f $ff
	add  b                                           ; $7575: $80
	ld   e, a                                        ; $7576: $5f
	ld   bc, $ffdf                                   ; $7577: $01 $df $ff
	add  c                                           ; $757a: $81
	rst  $28                                         ; $757b: $ef
	nop                                              ; $757c: $00
	rrca                                             ; $757d: $0f
	add  b                                           ; $757e: $80
	cp   a                                           ; $757f: $bf
	add  b                                           ; $7580: $80
	add  b                                           ; $7581: $80
	add  b                                           ; $7582: $80
	rst  $38                                         ; $7583: $ff
	ld   bc, $fffe                                   ; $7584: $01 $fe $ff
	add  c                                           ; $7587: $81
	db   $fd                                         ; $7588: $fd
	nop                                              ; $7589: $00
	rst  $38                                         ; $758a: $ff
	add  c                                           ; $758b: $81
	ei                                               ; $758c: $fb
	add  c                                           ; $758d: $81
	ld   hl, sp-$80                                  ; $758e: $f8 $80
	dec  b                                           ; $7590: $05
	add  b                                           ; $7591: $80
	cp   d                                           ; $7592: $ba
	add  hl, bc                                      ; $7593: $09
	ld   b, $c6                                      ; $7594: $06 $c6
	ld   e, l                                        ; $7596: $5d
	ld   a, l                                        ; $7597: $7d
	and  e                                           ; $7598: $a3
	or   e                                           ; $7599: $b3
	rst  $10                                         ; $759a: $d7
	rst  JumpTable                                         ; $759b: $df
	db   $db                                         ; $759c: $db
	call c, $00cd                                    ; $759d: $dc $cd $00


if def(VWF)
else
RLEXorTileData_Ranking2::
endc
	db $bc, $01, $8c, $ff, $02, $00, $ff, $00, $81, $ff, $0c, $f8, $ff, $f8, $ff, $f8, $ff, $fd, $ff, $fe, $ff, $04, $ff, $00, $81, $ff, $0c, $01, $ff, $61, $ff, $61
	db $ff, $6b, $ff, $73, $ff, $e6, $ff, $00, $81, $ff, $04, $9c, $ff, $f7, $ff, $ef, $81, $ff, $04, $8f, $ff, $0b, $ff, $00, $81, $ff, $0c, $fe, $ff, $99, $ff, $7a
	db $ff, $1f, $ff, $df, $ff, $22, $ff, $00, $81, $ff, $04, $60, $ff, $9b, $ff, $df, $81, $ff, $04, $f8, $ff, $dc, $ff, $00, $81, $ff, $0c, $c4, $ff, $eb, $ff, $fd
	db $ff, $f9, $ff, $ea, $ff, $3e, $ff, $00, $81, $ff, $06, $9f, $ff, $6f, $ff, $8f, $ff, $cf, $81, $ff, $02, $b0, $ff, $00, $81, $ff, $0c, $ce, $ff, $31, $ff, $31
	db $ff, $b1, $ff, $ea, $ff, $6a, $ff, $00, $81, $ff, $0c, $7e, $ff, $99, $ff, $9e, $ff, $ba, $ff, $fb, $ff, $c7, $ff, $00, $81, $ff, $00, $60, $81, $ff, $08, $73
	db $ff, $7f, $ff, $73, $ff, $1f, $ff, $00, $81, $ff, $02, $f8, $ff, $fd, $83, $ff, $04, $fd, $ff, $07, $ff, $00, $81, $ff, $0c, $93, $ff, $6d, $ff, $b1, $ff, $39
	db $ff, $57, $ff, $de, $ff, $00, $81, $ff, $0c, $c0, $ff, $e0, $ff, $e0, $ff, $c7, $ff, $d8, $ff, $20, $ff, $00, $81, $ff, $00, $3f, $87, $ff, $02, $c0, $ff, $00
	db $8b, $ff, $02, $00, $ff, $00, $8c, $ff, $80, $00, $81, $ff, $0c, $f8, $ff, $f8, $ff, $f8, $ff, $fd, $ff, $fe, $ff, $fa, $01, $00, $81, $ff, $0c, $01, $ff, $61
	db $ff, $61, $ff, $6b, $ff, $73, $ff, $71, $68, $00, $81, $ff, $04, $9c, $ff, $f7, $ff, $ef, $81, $ff, $04, $8f, $ff, $8f, $7b, $00, $81, $ff, $0c, $fe, $ff, $99
	db $ff, $7a, $ff, $1f, $ff, $df, $ff, $3a, $e7, $00, $81, $ff, $04, $60, $ff, $9b, $ff, $df, $81, $ff, $04, $f8, $ff, $dd, $fe, $00, $81, $ff, $0c, $c4, $ff, $eb
	db $ff, $fd, $ff, $f9, $ff, $ea, $ff, $f0, $31, $00, $81, $ff, $06, $9f, $ff, $6f, $ff, $8f, $ff, $cf, $81, $ff, $02, $af, $e0, $00, $81, $ff, $0c, $ce, $ff, $31
	db $ff, $31, $ff, $b1, $ff, $ea, $ff, $ea, $7f, $00, $81, $ff, $0c, $7e, $ff, $99, $ff, $9e, $ff, $ba, $ff, $fb, $ff, $fc, $c4, $00, $81, $ff, $00, $60, $81, $ff
	db $08, $73, $ff, $7f, $ff, $73, $ff, $bf, $5f, $00, $81, $ff, $02, $f8, $ff, $fd, $83, $ff, $04, $fd, $ff, $fe, $06, $00, $81, $ff, $0c, $93, $ff, $6d, $ff, $b1
	db $ff, $39, $ff, $57, $ff, $19, $38, $00, $81, $ff, $0c, $c0, $ff, $e0, $ff, $e0, $ff, $c7, $ff, $d8, $ff, $e0, $3f, $00, $81, $ff, $00, $3f, $88, $ff, $01, $c0
	db $00, $8c, $ff, $80, $00, $81, $ff, $01, $00, $ff, $88, $00, $05, $03, $ff, $fc, $ff, $00, $ff, $88, $00, $05, $fc, $ff, $03, $ff, $00, $ff, $88, $00, $05, $78
	db $ff, $dc, $ff, $5b, $ff, $89, $00, $04, $ff, $fc, $ff, $03, $ff, $88, $00, $05, $1b, $ff, $3f, $ff, $db, $ff, $88, $00, $05, $2b, $ff, $fa, $ff, $2e, $ff, $88
	db $00, $05, $c0, $ff, $df, $ff, $e0, $ff, $89, $00, $01, $ff, $00, $81, $ff, $88, $00, $05, $07, $ff, $1f, $ff, $e7, $ff, $88, $00, $00, $d3, $81, $ff, $01, $d3
	db $ff, $88, $00, $00, $05, $81, $ff, $01, $05, $ff, $88, $00, $05, $78, $ff, $5b, $ff, $dc, $ff, $88, $00, $05, $20, $ff, $e0, $ff, $3f, $ff, $88, $00, $00, $c0
	db $81, $ff, $01, $c0, $ff, $89, $00, $81, $ff, $01, $00, $ff, $89, $00, $91, $ff, $0c, $f8, $ff, $f8, $ff, $f8, $ff, $fd, $ff, $fe, $ff, $fa, $ff, $fe, $81, $ff
	db $0c, $01, $ff, $61, $ff, $61, $ff, $6b, $ff, $73, $ff, $71, $ff, $97, $81, $ff, $04, $9c, $ff, $f7, $ff, $ef, $81, $ff, $04, $8f, $ff, $8f, $ff, $84, $81, $ff
	db $0c, $fe, $ff, $99, $ff, $7a, $ff, $1f, $ff, $df, $ff, $3a, $ff, $18, $81, $ff, $04, $60, $ff, $9b, $ff, $df, $81, $ff, $04, $f8, $ff, $dd, $ff, $01, $81, $ff
	db $0c, $c4, $ff, $eb, $ff, $fd, $ff, $f9, $ff, $ea, $ff, $f0, $ff, $ce, $81, $ff, $06, $9f, $ff, $6f, $ff, $8f, $ff, $cf, $81, $ff, $02, $af, $ff, $1f, $81, $ff
	db $0c, $ce, $ff, $31, $ff, $31, $ff, $b1, $ff, $ea, $ff, $ea, $ff, $80, $81, $ff, $0c, $7e, $ff, $99, $ff, $9e, $ff, $ba, $ff, $fb, $ff, $fc, $ff, $3b, $81, $ff
	db $00, $60, $81, $ff, $08, $73, $ff, $7f, $ff, $73, $ff, $bf, $ff, $a0, $81, $ff, $02, $f8, $ff, $fd, $83, $ff, $04, $fd, $ff, $fe, $ff, $f9, $81, $ff, $0c, $93
	db $ff, $6d, $ff, $b1, $ff, $39, $ff, $57, $ff, $19, $ff, $c7, $81, $ff, $0c, $c0, $ff, $e0, $ff, $e0, $ff, $c7, $ff, $d8, $ff, $e0, $ff, $c0, $81, $ff, $00, $3f
	db $89, $ff, $00, $3f, $9d, $ff, $0a, $fc, $ff, $fc, $ff, $f8, $ff, $f8, $ff, $fd, $ff, $fa, $81, $ff, $0c, $f8, $ff, $03, $ff, $03, $ff, $01, $ff, $b1, $ff, $fb
	db $ff, $b5, $81, $ff, $0c, $01, $ff, $87, $ff, $dc, $ff, $df, $ff, $df, $ff, $df, $ff, $df, $81, $ff, $00, $a4, $81, $ff, $14, $fc, $ff, $9f, $ff, $7e, $ff, $1f
	db $ff, $df, $ff, $3e, $ff, $1c, $ff, $e4, $ff, $3f, $ff, $fb, $ff, $f8, $85, $ff, $16, $27, $ff, $d4, $ff, $fa, $ff, $e8, $ff, $f5, $ff, $fa, $ff, $f9, $ff, $fe
	db $ff, $ce, $ff, $3f, $ff, $df, $ff, $cf, $83, $ff, $04, $ef, $ff, $bf, $ff, $7f, $81, $ff, $18, $00, $ff, $9b, $ff, $fb, $ff, $43, $ff, $db, $ff, $e4, $ff, $e3
	db $ff, $f8, $ff, $1f, $ff, $39, $ff, $f9, $ff, $df, $ff, $fd, $81, $ff, $02, $fa, $ff, $2c, $81, $ff, $04, $73, $ff, $b3, $ff, $bf, $81, $ff, $04, $d3, $ff, $80
	db $ff, $fa, $81, $ff, $02, $fd, $ff, $fe, $83, $ff, $24, $7f, $ff, $79, $ff, $87, $ff, $5b, $ff, $19, $ff, $bf, $ff, $5f, $ff, $3d, $ff, $df, $ff, $c7, $ff, $df
	db $ff, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $ff, $c6, $ff, $de, $ff, $c7, $ff, $3f, $85, $ff, $06, $7f, $ff, $3f, $ff, $bf, $ff, $3f, $90, $ff, $80, $00, $8a, $ff
	db $82, $00, $0c, $ff, $f8, $ff, $f8, $ff, $f8, $ff, $fd, $ff, $fe, $ff, $fa, $01, $81, $00, $0c, $ff, $01, $ff, $61, $ff, $61, $ff, $6b, $ff, $73, $ff, $71, $68
	db $81, $00, $05, $ff, $9c, $ff, $f7, $ff, $ef, $81, $ff, $03, $8f, $ff, $8f, $7b, $81, $00, $0c, $ff, $fe, $ff, $99, $ff, $7a, $ff, $1f, $ff, $df, $ff, $3a, $e7
	db $81, $00, $05, $ff, $60, $ff, $9b, $ff, $df, $81, $ff, $03, $f8, $ff, $dd, $fe, $81, $00, $0c, $ff, $c4, $ff, $eb, $ff, $fd, $ff, $f9, $ff, $ea, $ff, $f0, $31
	db $81, $00, $07, $ff, $9f, $ff, $6f, $ff, $8f, $ff, $cf, $81, $ff, $01, $af, $e0, $81, $00, $0c, $ff, $ce, $ff, $31, $ff, $31, $ff, $b1, $ff, $ea, $ff, $ea, $7f
	db $81, $00, $0c, $ff, $7e, $ff, $99, $ff, $9e, $ff, $ba, $ff, $fb, $ff, $fc, $c4, $81, $00, $01, $ff, $60, $81, $ff, $07, $73, $ff, $7f, $ff, $73, $ff, $bf, $5f
	db $81, $00, $03, $ff, $f8, $ff, $fd, $83, $ff, $03, $fd, $ff, $fe, $06, $81, $00, $0c, $ff, $93, $ff, $6d, $ff, $b1, $ff, $39, $ff, $57, $ff, $19, $38, $81, $00
	db $0c, $ff, $c0, $ff, $e0, $ff, $e0, $ff, $c7, $ff, $d8, $ff, $e0, $3f, $81, $00, $01, $ff, $3f, $88, $ff, $00, $c0, $81, $00, $8a, $ff, $80, $00, $83, $ff, $01
	db $00, $ff, $87, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $07, $80, $00, $80, $07, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $fe, $80, $60, $80, $fe
	db $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $63, $80, $6b, $80, $7b, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $01, $80, $67, $80, $e2, $00, $00
	db $83, $ff, $01, $00, $ff, $80, $00, $80, $9f, $80, $fb, $80, $db, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $3b, $80, $2f, $80, $2d, $00, $00, $83, $ff
	db $01, $00, $ff, $80, $00, $80, $60, $80, $f0, $80, $80, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $31, $80, $ff, $80, $31, $00, $00, $83, $ff, $01, $00
	db $ff, $80, $00, $80, $81, $80, $e7, $80, $86, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $82, $9f, $80, $13, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80
	db $07, $82, $05, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $6c, $80, $fe, $80, $b0, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $80, $3f, $80, $20, $80
	db $3f, $00, $00, $83, $ff, $01, $00, $ff, $80, $00, $84, $c0, $00, $00, $83, $ff, $01, $00, $ff, $86, $00, $80, $ff, $8c, $00, $80, $ff, $80, $00, $80, $07, $80
	db $00, $80, $02, $82, $07, $80, $00, $80, $ff, $80, $00, $80, $fe, $80, $b0, $80, $b4, $82, $fe, $80, $00, $80, $ff, $80, $5b, $80, $7b, $80, $5b, $80, $7b, $82
	db $5b, $80, $00, $80, $ff, $80, $03, $80, $63, $80, $e2, $80, $02, $80, $22, $80, $e3, $80, $00, $80, $ff, $80, $db, $80, $df, $86, $d8, $80, $00, $80, $ff, $80
	db $2e, $80, $39, $80, $33, $80, $36, $80, $30, $80, $31, $80, $00, $80, $ff, $80, $e0, $84, $d0, $80, $c0, $80, $80, $80, $00, $82, $ff, $80, $9b, $80, $9f, $80
	db $23, $80, $07, $80, $1c, $80, $00, $80, $ff, $80, $e7, $80, $21, $80, $27, $80, $07, $82, $05, $80, $00, $80, $ff, $80, $d3, $80, $5f, $80, $13, $82, $53, $80
	db $7f, $80, $00, $80, $ff, $80, $05, $80, $07, $84, $06, $80, $86, $80, $00, $80, $ff, $80, $dc, $80, $3a, $80, $7a, $80, $da, $80, $18, $80, $38, $80, $00, $80
	db $ff, $80, $3f, $80, $20, $80, $3f, $80, $20, $80, $19, $80, $38, $80, $00, $80, $ff, $84, $c0, $80, $40, $80, $80, $80, $c0, $80, $00, $80, $ff, $8c, $00



	jr   nz, jr_018_7c22                             ; $7c1f: $20 $01

	add  b                                           ; $7c21: $80

jr_018_7c22:
	nop                                              ; $7c22: $00
	ld   b, $08                                      ; $7c23: $06 $08
	db   $10                                         ; $7c25: $10
	add  hl, de                                      ; $7c26: $19
	nop                                              ; $7c27: $00
	stop                                             ; $7c28: $10 $00
	inc  de                                          ; $7c2a: $13
	add  b                                           ; $7c2b: $80
	nop                                              ; $7c2c: $00
	add  e                                           ; $7c2d: $83
	ld   bc, $0080                                   ; $7c2e: $01 $80 $00
	nop                                              ; $7c31: $00
	inc  bc                                          ; $7c32: $03
	adc  a                                           ; $7c33: $8f
	nop                                              ; $7c34: $00
	inc  c                                           ; $7c35: $0c
	ld   bc, $0300                                   ; $7c36: $01 $00 $03

jr_018_7c39:
	ld   bc, $0307                                   ; $7c39: $01 $07 $03
	dec  c                                           ; $7c3c: $0d
	dec  b                                           ; $7c3d: $05
	ld   a, [de]                                     ; $7c3e: $1a
	ld   a, [bc]                                     ; $7c3f: $0a
	inc  a                                           ; $7c40: $3c
	dec  e                                           ; $7c41: $1d
	ld   a, $95                                      ; $7c42: $3e $95
	nop                                              ; $7c44: $00
	ld   [bc], a                                     ; $7c45: $02
	inc  b                                           ; $7c46: $04
	ld   [$840c], sp                                 ; $7c47: $08 $0c $84
	nop                                              ; $7c4a: $00
	add  hl, bc                                      ; $7c4b: $09
	add  b                                           ; $7c4c: $80
	nop                                              ; $7c4d: $00
	ld   b, b                                        ; $7c4e: $40
	add  c                                           ; $7c4f: $81
	nop                                              ; $7c50: $00
	ld   b, a                                        ; $7c51: $47
	ld   bc, $070f                                   ; $7c52: $01 $0f $07
	rra                                              ; $7c55: $1f
	add  e                                           ; $7c56: $83
	rrca                                             ; $7c57: $0f
	dec  b                                           ; $7c58: $05
	ld   de, $7f01                                   ; $7c59: $11 $01 $7f
	rrca                                             ; $7c5c: $0f
	rst  $38                                         ; $7c5d: $ff
	ld   a, a                                        ; $7c5e: $7f
	add  b                                           ; $7c5f: $80
	rst  $38                                         ; $7c60: $ff
	ld   b, $fe                                      ; $7c61: $06 $fe
	rst  $38                                         ; $7c63: $ff
	ld   sp, hl                                      ; $7c64: $f9
	rst  $38                                         ; $7c65: $ff
	rst  ToBoot                                         ; $7c66: $c7
	rst  $38                                         ; $7c67: $ff
	ccf                                              ; $7c68: $3f
	add  b                                           ; $7c69: $80
	ldh  [rTIMA], a                                  ; $7c6a: $e0 $05
	rrca                                             ; $7c6c: $0f
	rst  $28                                         ; $7c6d: $ef
	ld   c, $0f                                      ; $7c6e: $0e $0f
	nop                                              ; $7c70: $00
	ld   e, $87                                      ; $7c71: $1e $87
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	ld   [$0783], sp                                 ; $7c75: $08 $83 $07
	rlca                                             ; $7c78: $07
	dec  bc                                          ; $7c79: $0b
	inc  bc                                          ; $7c7a: $03
	add  e                                           ; $7c7b: $83
	inc  bc                                          ; $7c7c: $03
	add  e                                           ; $7c7d: $83
	inc  bc                                          ; $7c7e: $03
	dec  b                                           ; $7c7f: $05
	ld   bc, $0080                                   ; $7c80: $01 $80 $00
	nop                                              ; $7c83: $00
	inc  bc                                          ; $7c84: $03
	add  c                                           ; $7c85: $81
	nop                                              ; $7c86: $00
	add  b                                           ; $7c87: $80
	rlca                                             ; $7c88: $07
	add  b                                           ; $7c89: $80
	db $38, $80

	ret  nz                                          ; $7c8c: $c0

	adc  [hl]                                        ; $7c8d: $8e
	nop                                              ; $7c8e: $00
	db   $10                                         ; $7c8f: $10
	ld   c, $00                                      ; $7c90: $0e $00
	rra                                              ; $7c92: $1f
	ld   c, $34                                      ; $7c93: $0e $34
	dec  d                                           ; $7c95: $15
	ld   l, c                                        ; $7c96: $69
	dec  hl                                          ; $7c97: $2b
	di                                               ; $7c98: $f3
	ld   [hl], a                                     ; $7c99: $77
	and  a                                           ; $7c9a: $a7
	xor  [hl]                                        ; $7c9b: $ae
	ld   c, [hl]                                     ; $7c9c: $4e
	ld   d, d                                        ; $7c9d: $52
	sub  d                                           ; $7c9e: $92
	or   e                                           ; $7c9f: $b3
	inc  sp                                          ; $7ca0: $33
	add  b                                           ; $7ca1: $80
	ld   a, a                                        ; $7ca2: $7f
	inc  bc                                          ; $7ca3: $03
	and  $e7                                         ; $7ca4: $e6 $e7
	dec  h                                           ; $7ca6: $25
	db   $db                                         ; $7ca7: $db
	sub  l                                           ; $7ca8: $95
	nop                                              ; $7ca9: $00
	dec  bc                                          ; $7caa: $0b
	inc  bc                                          ; $7cab: $03
	nop                                              ; $7cac: $00
	inc  b                                           ; $7cad: $04
	inc  bc                                          ; $7cae: $03
	dec  bc                                          ; $7caf: $0b
	rlca                                             ; $7cb0: $07
	rla                                              ; $7cb1: $17
	rrca                                             ; $7cb2: $0f
	cpl                                              ; $7cb3: $2f
	ld   b, $fe                                      ; $7cb4: $06 $fe
	jr   c, jr_018_7c39                              ; $7cb6: $38 $81

	db   $fc                                         ; $7cb8: $fc
	add  b                                           ; $7cb9: $80
	db   $fd                                         ; $7cba: $fd
	nop                                              ; $7cbb: $00
	db   $fc                                         ; $7cbc: $fc
	add  b                                           ; $7cbd: $80
	db   $fd                                         ; $7cbe: $fd
	add  e                                           ; $7cbf: $83
	cp   $83                                         ; $7cc0: $fe $83
	rst  $38                                         ; $7cc2: $ff
	ld   a, [bc]                                     ; $7cc3: $0a
	ld   sp, hl                                      ; $7cc4: $f9
	ld   hl, sp-$1d                                  ; $7cc5: $f8 $e3
	ldh  [$82], a                                    ; $7cc7: $e0 $82
	sub  h                                           ; $7cc9: $94
	dec  [hl]                                        ; $7cca: $35
	jr   nc, jr_018_7d42                             ; $7ccb: $30 $75

	ld   l, l                                        ; $7ccd: $6d
	rst  $30                                         ; $7cce: $f7
	add  c                                           ; $7ccf: $81
	nop                                              ; $7cd0: $00
	add  d                                           ; $7cd1: $82
	ld   b, b                                        ; $7cd2: $40
	add  h                                           ; $7cd3: $84
	jr   nz, @-$7a                                   ; $7cd4: $20 $84

	db   $10                                         ; $7cd6: $10
	add  d                                           ; $7cd7: $82
	ld   [$0086], sp                                 ; $7cd8: $08 $86 $00
	db   $10                                         ; $7cdb: $10
	rst  $38                                         ; $7cdc: $ff
	xor  $f6                                         ; $7cdd: $ee $f6
	ld   e, $da                                      ; $7cdf: $1e $da
	rra                                              ; $7ce1: $1f
	ld   a, l                                        ; $7ce2: $7d
	ccf                                              ; $7ce3: $3f
	rst  $38                                         ; $7ce4: $ff
	ld   a, a                                        ; $7ce5: $7f
	dec  e                                           ; $7ce6: $1d
	rra                                              ; $7ce7: $1f
	add  e                                           ; $7ce8: $83
	jr   nz, jr_018_7d4b                             ; $7ce9: $20 $60

	rra                                              ; $7ceb: $1f
	ccf                                              ; $7cec: $3f
	add  h                                           ; $7ced: $84
	rrca                                             ; $7cee: $0f
	add  e                                           ; $7cef: $83
	ld   c, $02                                      ; $7cf0: $0e $02
	xor  [hl]                                        ; $7cf2: $ae
	ld   [bc], a                                     ; $7cf3: $02
	ld   b, d                                        ; $7cf4: $42
	add  b                                           ; $7cf5: $80
	jr   nc, @+$11                                   ; $7cf6: $30 $0f

	ret  c                                           ; $7cf8: $d8

	jp   c, $ece8                                    ; $7cf9: $da $e8 $ec

	ld   h, b                                        ; $7cfc: $60
	ld   a, [hl]                                     ; $7cfd: $7e
	ld   e, b                                        ; $7cfe: $58
	ld   [hl], d                                     ; $7cff: $72
	cp   d                                           ; $7d00: $ba
	xor  $76                                         ; $7d01: $ee $76
	rst  JumpTable                                         ; $7d03: $df
	rst  $28                                         ; $7d04: $ef
	xor  [hl]                                        ; $7d05: $ae
	xor  $9f                                         ; $7d06: $ee $9f
	adc  l                                           ; $7d08: $8d
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	ld   hl, sp-$7d                                  ; $7d0b: $f8 $83
	ld   a, a                                        ; $7d0d: $7f
	nop                                              ; $7d0e: $00
	ei                                               ; $7d0f: $fb
	add  e                                           ; $7d10: $83
	ccf                                              ; $7d11: $3f
	ld   d, $3d                                      ; $7d12: $16 $3d
	ccf                                              ; $7d14: $3f
	ld   a, a                                        ; $7d15: $7f
	rra                                              ; $7d16: $1f
	ld   e, $10                                      ; $7d17: $1e $10
	rla                                              ; $7d19: $17
	rlca                                             ; $7d1a: $07
	inc  e                                           ; $7d1b: $1c
	rra                                              ; $7d1c: $1f
	jp   $1f02                                       ; $7d1d: $c3 $02 $1f


	sbc  l                                           ; $7d20: $9d

jr_018_7d21:
	add  b                                           ; $7d21: $80
	ldh  [$e2], a                                    ; $7d22: $e0 $e2
	adc  [hl]                                        ; $7d24: $8e
	adc  a                                           ; $7d25: $8f
	ld   b, a                                        ; $7d26: $47
	inc  b                                           ; $7d27: $04
	dec  e                                           ; $7d28: $1d
	dec  a                                           ; $7d29: $3d
	add  b                                           ; $7d2a: $80
	ld   b, $0b                                      ; $7d2b: $06 $0b
	ld   [$0b88], sp                                 ; $7d2d: $08 $88 $0b
	dec  hl                                          ; $7d30: $2b
	inc  bc                                          ; $7d31: $03
	inc  de                                          ; $7d32: $13
	rla                                              ; $7d33: $17
	rra                                              ; $7d34: $1f
	add  hl, de                                      ; $7d35: $19
	ld   e, a                                        ; $7d36: $5f
	ld   e, $7f                                      ; $7d37: $1e $7f
	and  e                                           ; $7d39: $a3
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	add  b                                           ; $7d3c: $80
	add  e                                           ; $7d3d: $83
	nop                                              ; $7d3e: $00
	inc  b                                           ; $7d3f: $04
	ldh  a, [$80]                                    ; $7d40: $f0 $80

jr_018_7d42:
	inc  e                                           ; $7d42: $1c
	jr   nc, jr_018_7d21                             ; $7d43: $30 $dc

	adc  [hl]                                        ; $7d45: $8e
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	rst  $38                                         ; $7d48: $ff
	add  b                                           ; $7d49: $80
	db   $fc                                         ; $7d4a: $fc

jr_018_7d4b:
	ld   bc, $e0e3                                   ; $7d4b: $01 $e3 $e0
	add  b                                           ; $7d4e: $80
	sbc  b                                           ; $7d4f: $98
	nop                                              ; $7d50: $00
	ld   c, $80                                      ; $7d51: $0e $80
	ld   l, h                                        ; $7d53: $6c
	dec  b                                           ; $7d54: $05
	inc  c                                           ; $7d55: $0c
	ld   [hl], c                                     ; $7d56: $71
	ld   [hl], b                                     ; $7d57: $70
	ld   c, [hl]                                     ; $7d58: $4e
	adc  $7f                                         ; $7d59: $ce $7f
	adc  l                                           ; $7d5b: $8d
	nop                                              ; $7d5c: $00
	add  b                                           ; $7d5d: $80
	inc  b                                           ; $7d5e: $04
	sub  b                                           ; $7d5f: $90
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	add  b                                           ; $7d62: $80
	add  e                                           ; $7d63: $83
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	ret  nz                                          ; $7d66: $c0

	add  e                                           ; $7d67: $83
	add  b                                           ; $7d68: $80
	ld   bc, $4060                                   ; $7d69: $01 $60 $40
	add  b                                           ; $7d6c: $80
	nop                                              ; $7d6d: $00
	ld   b, $c0                                      ; $7d6e: $06 $c0
	nop                                              ; $7d70: $00
	jr   nz, jr_018_7d73                             ; $7d71: $20 $00

jr_018_7d73:
	inc  b                                           ; $7d73: $04
	nop                                              ; $7d74: $00
	inc  b                                           ; $7d75: $04
	add  c                                           ; $7d76: $81
	nop                                              ; $7d77: $00
	ld   [bc], a                                     ; $7d78: $02
	rst  $38                                         ; $7d79: $ff
	nop                                              ; $7d7a: $00
	ldh  [$80], a                                    ; $7d7b: $e0 $80
	db   $eb                                         ; $7d7d: $eb
	inc  bc                                          ; $7d7e: $03
	ldh  [$7b], a                                    ; $7d7f: $e0 $7b
	ld   hl, sp-$02                                  ; $7d81: $f8 $fe
	add  c                                           ; $7d83: $81
	db   $fc                                         ; $7d84: $fc
	ld   a, [bc]                                     ; $7d85: $0a
	adc  h                                           ; $7d86: $8c
	db   $fc                                         ; $7d87: $fc
	ld   a, [$f4f8]                                  ; $7d88: $fa $f8 $f4
	ldh  a, [$f8]                                    ; $7d8b: $f0 $f8
	ret  nz                                          ; $7d8d: $c0

	ldh  a, [rP1]                                    ; $7d8e: $f0 $00
	ret  nz                                          ; $7d90: $c0

	add  l                                           ; $7d91: $85
	nop                                              ; $7d92: $00
	ld   b, $40                                      ; $7d93: $06 $40
	nop                                              ; $7d95: $00
	ldh  [rLCDC], a                                  ; $7d96: $e0 $40
	add  b                                           ; $7d98: $80
	ret  nz                                          ; $7d99: $c0

	ld   h, b                                        ; $7d9a: $60
	add  d                                           ; $7d9b: $82
	add  b                                           ; $7d9c: $80
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	add  b                                           ; $7d9f: $80
	add  b                                           ; $7da0: $80
	add  b                                           ; $7da1: $80
	nop                                              ; $7da2: $00
	add  d                                           ; $7da3: $82
	add  b                                           ; $7da4: $80
	nop                                              ; $7da5: $00
	ret  nz                                          ; $7da6: $c0

	sbc  c                                           ; $7da7: $99
	nop                                              ; $7da8: $00
	ld   [bc], a                                     ; $7da9: $02
	ld   [$0800], sp                                 ; $7daa: $08 $00 $08
	add  d                                           ; $7dad: $82
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	inc  c                                           ; $7db0: $0c
	add  b                                           ; $7db1: $80
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	inc  c                                           ; $7db4: $0c
	add  d                                           ; $7db5: $82
	nop                                              ; $7db6: $00
	dec  b                                           ; $7db7: $05
	ld   b, b                                        ; $7db8: $40
	nop                                              ; $7db9: $00
	add  b                                           ; $7dba: $80
	ld   b, b                                        ; $7dbb: $40
	nop                                              ; $7dbc: $00
	add  b                                           ; $7dbd: $80
	add  c                                           ; $7dbe: $81
	nop                                              ; $7dbf: $00
	ld   [bc], a                                     ; $7dc0: $02
	add  h                                           ; $7dc1: $84
	ld   [$838c], sp                                 ; $7dc2: $08 $8c $83
	nop                                              ; $7dc5: $00
	inc  bc                                          ; $7dc6: $03
	inc  bc                                          ; $7dc7: $03
	nop                                              ; $7dc8: $00
	di                                               ; $7dc9: $f3
	nop                                              ; $7dca: $00
	add  b                                           ; $7dcb: $80
	ret  nz                                          ; $7dcc: $c0

	rlca                                             ; $7dcd: $07
	ret  z                                           ; $7dce: $c8

	ret  nc                                          ; $7dcf: $d0

	sub  b                                           ; $7dd0: $90
	or   b                                           ; $7dd1: $b0
	or   h                                           ; $7dd2: $b4
	and  b                                           ; $7dd3: $a0
	cp   a                                           ; $7dd4: $bf
	sbc  h                                           ; $7dd5: $9c
	add  b                                           ; $7dd6: $80
	cp   e                                           ; $7dd7: $bb
	inc  b                                           ; $7dd8: $04
	ld   d, $b6                                      ; $7dd9: $16 $b6
	xor  h                                           ; $7ddb: $ac
	dec  l                                           ; $7ddc: $2d
	sbc  $81                                         ; $7ddd: $de $81
	nop                                              ; $7ddf: $00
	add  b                                           ; $7de0: $80
	add  b                                           ; $7de1: $80
	sbc  b                                           ; $7de2: $98
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	rst  $38                                         ; $7de5: $ff
	add  b                                           ; $7de6: $80
	cp   $05                                         ; $7de7: $fe $05
	rrca                                             ; $7de9: $0f
	rst  $38                                         ; $7dea: $ff
	ld   bc, $000f                                   ; $7deb: $01 $0f $00
	ld   bc, $009b                                   ; $7dee: $01 $9b $00
	inc  d                                           ; $7df1: $14
	ldh  a, [rP1]                                    ; $7df2: $f0 $00
	add  sp, -$20                                    ; $7df4: $e8 $e0
	add  b                                           ; $7df6: $80
	sub  b                                           ; $7df7: $90
	inc  d                                           ; $7df8: $14
	ld   h, b                                        ; $7df9: $60
	ld   e, a                                        ; $7dfa: $5f
	db   $fc                                         ; $7dfb: $fc
	or   e                                           ; $7dfc: $b3

jr_018_7dfd:
	di                                               ; $7dfd: $f3
	ld   l, [hl]                                     ; $7dfe: $6e
	xor  $d8                                         ; $7dff: $ee $d8
	reti                                             ; $7e01: $d9


	or   a                                           ; $7e02: $b7
	or   b                                           ; $7e03: $b0
	add  hl, hl                                      ; $7e04: $29
	ld   h, b                                        ; $7e05: $60
	ld   d, b                                        ; $7e06: $50
	add  b                                           ; $7e07: $80
	ld   b, b                                        ; $7e08: $40
	ld   a, [bc]                                     ; $7e09: $0a
	ret  nz                                          ; $7e0a: $c0

	ldh  a, [hScriptOpcodeParams]                                    ; $7e0b: $f0 $a0
	ret  z                                           ; $7e0d: $c8

	ld   b, b                                        ; $7e0e: $40
	ld   b, $80                                      ; $7e0f: $06 $80
	sbc  a                                           ; $7e11: $9f
	sbc  [hl]                                        ; $7e12: $9e
	cp   a                                           ; $7e13: $bf
	ccf                                              ; $7e14: $3f
	add  b                                           ; $7e15: $80
	ld   a, b                                        ; $7e16: $78
	add  b                                           ; $7e17: $80
	ld   h, a                                        ; $7e18: $67
	inc  b                                           ; $7e19: $04
	ld   c, a                                        ; $7e1a: $4f
	ld   e, a                                        ; $7e1b: $5f
	rla                                              ; $7e1c: $17
	ccf                                              ; $7e1d: $3f
	dec  sp                                          ; $7e1e: $3b
	add  c                                           ; $7e1f: $81
	ld   a, a                                        ; $7e20: $7f
	ld   b, $7d                                      ; $7e21: $06 $7d
	ccf                                              ; $7e23: $3f
	rst  $38                                         ; $7e24: $ff
	rrca                                             ; $7e25: $0f
	ld   a, $07                                      ; $7e26: $3e $07
	rrca                                             ; $7e28: $0f
	add  c                                           ; $7e29: $81
	inc  bc                                          ; $7e2a: $03
	nop                                              ; $7e2b: $00
	rlca                                             ; $7e2c: $07
	add  c                                           ; $7e2d: $81
	ld   bc, $0300                                   ; $7e2e: $01 $00 $03
	add  e                                           ; $7e31: $83
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	ld   bc, $0095                                   ; $7e34: $01 $95 $00
	nop                                              ; $7e37: $00
	inc  e                                           ; $7e38: $1c
	adc  a                                           ; $7e39: $8f
	ld   [$2c00], sp                                 ; $7e3a: $08 $00 $2c
	adc  e                                           ; $7e3d: $8b
	stop                                             ; $7e3e: $10 $00
	cpl                                              ; $7e40: $2f
	adc  l                                           ; $7e41: $8d
	ld   [bc], a                                     ; $7e42: $02
	nop                                              ; $7e43: $00
	dec  bc                                          ; $7e44: $0b
	adc  e                                           ; $7e45: $8b
	inc  b                                           ; $7e46: $04
	inc  bc                                          ; $7e47: $03

jr_018_7e48:
	add  h                                           ; $7e48: $84
	inc  b                                           ; $7e49: $04
	ret  nz                                          ; $7e4a: $c0

	add  b                                           ; $7e4b: $80
	add  c                                           ; $7e4c: $81
	nop                                              ; $7e4d: $00
	add  d                                           ; $7e4e: $82
	add  b                                           ; $7e4f: $80
	ld   bc, $c000                                   ; $7e50: $01 $00 $c0
	add  e                                           ; $7e53: $83
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	ld   e, $83                                      ; $7e56: $1e $83
	nop                                              ; $7e58: $00
	inc  b                                           ; $7e59: $04
	add  b                                           ; $7e5a: $80
	nop                                              ; $7e5b: $00
	ld   b, b                                        ; $7e5c: $40
	nop                                              ; $7e5d: $00
	ldh  [$85], a                                    ; $7e5e: $e0 $85
	ret  nz                                          ; $7e60: $c0

	adc  b                                           ; $7e61: $88
	ldh  [rSB], a                                    ; $7e62: $e0 $01
	ld   h, b                                        ; $7e64: $60
	ldh  [$80], a                                    ; $7e65: $e0 $80
	add  b                                           ; $7e67: $80
	nop                                              ; $7e68: $00
	ld   [hl], h                                     ; $7e69: $74
	adc  l                                           ; $7e6a: $8d
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	ld   a, [bc]                                     ; $7e6d: $0a
	adc  l                                           ; $7e6e: $8d
	inc  b                                           ; $7e6f: $04
	nop                                              ; $7e70: $00
	ld   a, [de]                                     ; $7e71: $1a
	add  a                                           ; $7e72: $87
	ld   [$8888], sp                                 ; $7e73: $08 $88 $88
	add  d                                           ; $7e76: $82
	ld   c, b                                        ; $7e77: $48
	add  d                                           ; $7e78: $82
	jr   z, jr_018_7dfd                              ; $7e79: $28 $82

	ld   [$1c00], sp                                 ; $7e7b: $08 $00 $1c
	adc  l                                           ; $7e7e: $8d
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	ld   bc, $be82                                   ; $7e81: $01 $82 $be
	nop                                              ; $7e84: $00
	sbc  $85                                         ; $7e85: $de $85
	rst  JumpTable                                         ; $7e87: $df
	nop                                              ; $7e88: $00
	rst  $28                                         ; $7e89: $ef
	add  b                                           ; $7e8a: $80
	xor  $80                                         ; $7e8b: $ee $80
	add  hl, hl                                      ; $7e8d: $29
	dec  b                                           ; $7e8e: $05
	rst  $10                                         ; $7e8f: $d7
	rst  ToBoot                                         ; $7e90: $c7
	rra                                              ; $7e91: $1f
	rst  JumpTable                                         ; $7e92: $df
	rst  $38                                         ; $7e93: $ff
	ccf                                              ; $7e94: $3f
	add  d                                           ; $7e95: $82
	ld   a, a                                        ; $7e96: $7f
	nop                                              ; $7e97: $00
	ccf                                              ; $7e98: $3f
	add  b                                           ; $7e99: $80
	rst  $38                                         ; $7e9a: $ff
	inc  b                                           ; $7e9b: $04
	ld   a, a                                        ; $7e9c: $7f
	cp   b                                           ; $7e9d: $b8
	ret  c                                           ; $7e9e: $d8

	jp   c, $83ea                                    ; $7e9f: $da $ea $83

	db   $ed                                         ; $7ea2: $ed
	nop                                              ; $7ea3: $00
	push af                                          ; $7ea4: $f5
	add  e                                           ; $7ea5: $83
	or   $01                                         ; $7ea6: $f6 $01
	ld   a, [$8005]                                  ; $7ea8: $fa $05 $80
	ld   e, c                                        ; $7eab: $59
	add  hl, bc                                      ; $7eac: $09
	pop  hl                                          ; $7ead: $e1
	call $31ad                                       ; $7eae: $cd $ad $31
	or   e                                           ; $7eb1: $b3
	jp   z, $23cb                                    ; $7eb2: $ca $cb $23

	daa                                              ; $7eb5: $27
	rlca                                             ; $7eb6: $07
	add  b                                           ; $7eb7: $80
	rrca                                             ; $7eb8: $0f
	ld   [$c1fe], sp                                 ; $7eb9: $08 $fe $c1
	ld   a, a                                        ; $7ebc: $7f
	ld   e, a                                        ; $7ebd: $5f
	ld   a, a                                        ; $7ebe: $7f
	rst  $38                                         ; $7ebf: $ff
	cp   a                                           ; $7ec0: $bf
	xor  a                                           ; $7ec1: $af
	cp   a                                           ; $7ec2: $bf
	add  b                                           ; $7ec3: $80
	cp   h                                           ; $7ec4: $bc
	nop                                              ; $7ec5: $00
	jr   nc, jr_018_7e48                             ; $7ec6: $30 $80

	db   $d3                                         ; $7ec8: $d3
	add  b                                           ; $7ec9: $80
	rst  $10                                         ; $7eca: $d7
	add  b                                           ; $7ecb: $80
	call z, $7980                            ; $7ecc: $cc $80 $79
	inc  b                                           ; $7ecf: $04
	add  b                                           ; $7ed0: $80
	adc  a                                           ; $7ed1: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ed2: $cf
	cp   $3e                                         ; $7ed3: $fe $3e
	add  b                                           ; $7ed5: $80
	ld   d, c                                        ; $7ed6: $51
	add  b                                           ; $7ed7: $80
	rrca                                             ; $7ed8: $0f
	add  b                                           ; $7ed9: $80
	db   $fc                                         ; $7eda: $fc
	add  b                                           ; $7edb: $80
	jp   nz, $0003                                   ; $7edc: $c2 $03 $00

	inc  bc                                          ; $7edf: $03
	di                                               ; $7ee0: $f3
	ldh  a, [$80]                                    ; $7ee1: $f0 $80
	ld   c, a                                        ; $7ee3: $4f
	add  b                                           ; $7ee4: $80
	ccf                                              ; $7ee5: $3f
	add  [hl]                                        ; $7ee6: $86
	rst  $38                                         ; $7ee7: $ff
	ld   a, [bc]                                     ; $7ee8: $0a
	ld   d, l                                        ; $7ee9: $55
	push de                                          ; $7eea: $d5
	sbc  e                                           ; $7eeb: $9b
	dec  bc                                          ; $7eec: $0b
	xor  e                                           ; $7eed: $ab
	or   b                                           ; $7eee: $b0
	and  b                                           ; $7eef: $a0
	xor  e                                           ; $7ef0: $ab
	or   e                                           ; $7ef1: $b3
	cp   e                                           ; $7ef2: $bb
	xor  b                                           ; $7ef3: $a8
	add  c                                           ; $7ef4: $81
	cp   e                                           ; $7ef5: $bb
	ld   [bc], a                                     ; $7ef6: $02
	sbc  e                                           ; $7ef7: $9b
	xor  e                                           ; $7ef8: $ab
	call nc, $ff82                                   ; $7ef9: $d4 $82 $ff
	add  b                                           ; $7efc: $80
	nop                                              ; $7efd: $00
	add  e                                           ; $7efe: $83
	rst  $38                                         ; $7eff: $ff
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	add  b                                           ; $7f02: $80
	rst  $38                                         ; $7f03: $ff
	inc  bc                                          ; $7f04: $03
	db   $fc                                         ; $7f05: $fc
	sbc  b                                           ; $7f06: $98
	ld   c, h                                        ; $7f07: $4c
	ld   l, l                                        ; $7f08: $6d
	add  b                                           ; $7f09: $80
	dec  l                                           ; $7f0a: $2d
	dec  b                                           ; $7f0b: $05
	ld   c, l                                        ; $7f0c: $4d
	rrca                                             ; $7f0d: $0f
	ld   l, a                                        ; $7f0e: $6f
	ld   l, c                                        ; $7f0f: $69
	ld   l, a                                        ; $7f10: $6f
	ld   l, [hl]                                     ; $7f11: $6e
	add  b                                           ; $7f12: $80
	ldh  a, [c]                                      ; $7f13: $f2
	add  b                                           ; $7f14: $80
	nop                                              ; $7f15: $00
	ld   bc, $4ae8                                   ; $7f16: $01 $e8 $4a
	add  b                                           ; $7f19: $80
	xor  d                                           ; $7f1a: $aa
	nop                                              ; $7f1b: $00
	and  d                                           ; $7f1c: $a2
	add  b                                           ; $7f1d: $80
	xor  c                                           ; $7f1e: $a9
	inc  b                                           ; $7f1f: $04
	rra                                              ; $7f20: $1f
	inc  e                                           ; $7f21: $1c
	ld   a, h                                        ; $7f22: $7c
	ld   a, b                                        ; $7f23: $78
	ld   hl, sp-$80                                  ; $7f24: $f8 $80
	ld   sp, hl                                      ; $7f26: $f9
	add  e                                           ; $7f27: $83
	rst  $38                                         ; $7f28: $ff
	add  b                                           ; $7f29: $80
	ccf                                              ; $7f2a: $3f
	ld   [bc], a                                     ; $7f2b: $02
	sbc  $df                                         ; $7f2c: $de $df
	rst  $28                                         ; $7f2e: $ef
	add  b                                           ; $7f2f: $80
	ld   l, a                                        ; $7f30: $6f
	nop                                              ; $7f31: $00
	xor  $84                                         ; $7f32: $ee $84
	or   $02                                         ; $7f34: $f6 $02
	add  b                                           ; $7f36: $80
	cp   a                                           ; $7f37: $bf
	ccf                                              ; $7f38: $3f
	add  b                                           ; $7f39: $80
	cp   b                                           ; $7f3a: $b8
	add  b                                           ; $7f3b: $80
	add  c                                           ; $7f3c: $81
	ld   bc, $4342                                   ; $7f3d: $01 $42 $43
	add  d                                           ; $7f40: $82
	db   $db                                         ; $7f41: $db
	ld   bc, $5a5b                                   ; $7f42: $01 $5b $5a
	add  b                                           ; $7f45: $80
	ld   d, l                                        ; $7f46: $55
	dec  bc                                          ; $7f47: $0b
	jp   nz, $3fc1                                   ; $7f48: $c2 $c1 $3f

	ld   [hl+], a                                    ; $7f4b: $22
	cp   $ee                                         ; $7f4c: $fe $ee
	ld   a, [hl]                                     ; $7f4e: $7e
	db   $f4                                         ; $7f4f: $f4
	cp   l                                           ; $7f50: $bd
	db   $fd                                         ; $7f51: $fd
	db   $dd                                         ; $7f52: $dd
	ld   sp, hl                                      ; $7f53: $f9
	add  c                                           ; $7f54: $81
	db   $eb                                         ; $7f55: $eb
	inc  b                                           ; $7f56: $04
	inc  bc                                          ; $7f57: $03
	db   $db                                         ; $7f58: $db
	db   $d3                                         ; $7f59: $d3
	ld   d, a                                        ; $7f5a: $57
	ld   d, [hl]                                     ; $7f5b: $56
	add  b                                           ; $7f5c: $80
	or   a                                           ; $7f5d: $b7
	rrca                                             ; $7f5e: $0f
	xor  a                                           ; $7f5f: $af
	xor  [hl]                                        ; $7f60: $ae
	rst  $10                                         ; $7f61: $d7
	and  a                                           ; $7f62: $a7
	ei                                               ; $7f63: $fb
	or   a                                           ; $7f64: $b7
	db   $fc                                         ; $7f65: $fc
	add  $fe                                         ; $7f66: $c6 $fe
	rra                                              ; $7f68: $1f
	rst  $38                                         ; $7f69: $ff
	db   $db                                         ; $7f6a: $db
	rst  $38                                         ; $7f6b: $ff
	ld   a, h                                        ; $7f6c: $7c
	ld   a, a                                        ; $7f6d: $7f
	ccf                                              ; $7f6e: $3f
	add  b                                           ; $7f6f: $80
	ld   a, a                                        ; $7f70: $7f
	add  b                                           ; $7f71: $80
	rra                                              ; $7f72: $1f
	add  b                                           ; $7f73: $80
	ld   h, b                                        ; $7f74: $60
	add  b                                           ; $7f75: $80
	ld   a, a                                        ; $7f76: $7f
	ld   [bc], a                                     ; $7f77: $02
	cp   a                                           ; $7f78: $bf
	ld   c, e                                        ; $7f79: $4b
	push af                                          ; $7f7a: $f5
	add  d                                           ; $7f7b: $82
	db   $ed                                         ; $7f7c: $ed
	ld   [bc], a                                     ; $7f7d: $02
	dec  c                                           ; $7f7e: $0d
	db   $dd                                         ; $7f7f: $dd
	pop  de                                          ; $7f80: $d1
	add  b                                           ; $7f81: $80
	dec  sp                                          ; $7f82: $3b
	add  b                                           ; $7f83: $80
	ei                                               ; $7f84: $fb
	add  b                                           ; $7f85: $80
	rst  $30                                         ; $7f86: $f7
	add  b                                           ; $7f87: $80
	rst  $20                                         ; $7f88: $e7
	add  b                                           ; $7f89: $80
	dec  [hl]                                        ; $7f8a: $35
	add  b                                           ; $7f8b: $80
	xor  e                                           ; $7f8c: $ab
	add  b                                           ; $7f8d: $80
	ld   b, a                                        ; $7f8e: $47
	add  b                                           ; $7f8f: $80
	ld   e, e                                        ; $7f90: $5b
	add  b                                           ; $7f91: $80
	ld   e, l                                        ; $7f92: $5d
	add  b                                           ; $7f93: $80
	dec  a                                           ; $7f94: $3d
	add  b                                           ; $7f95: $80
	ld   a, [hl]                                     ; $7f96: $7e
	add  b                                           ; $7f97: $80
	ld   a, $80                                      ; $7f98: $3e $80
	rst  $10                                         ; $7f9a: $d7
	ld   a, [bc]                                     ; $7f9b: $0a
	or   d                                           ; $7f9c: $b2
	or   e                                           ; $7f9d: $b3
	cp   c                                           ; $7f9e: $b9
	cp   e                                           ; $7f9f: $bb
	ld   a, e                                        ; $7fa0: $7b
	ld   a, a                                        ; $7fa1: $7f
	ld   [hl], a                                     ; $7fa2: $77
	ld   a, a                                        ; $7fa3: $7f
	rst  $28                                         ; $7fa4: $ef
	rst  $38                                         ; $7fa5: $ff
	rst  JumpTable                                         ; $7fa6: $df
	add  b                                           ; $7fa7: $80
	sbc  $01                                         ; $7fa8: $de $01
	add  b                                           ; $7faa: $80
	ld   e, [hl]                                     ; $7fab: $5e
	add  e                                           ; $7fac: $83
	sbc  $04                                         ; $7fad: $de $04
	call c, $eafe                                    ; $7faf: $dc $fe $ea
	cp   $f6                                         ; $7fb2: $fe $f6
	add  b                                           ; $7fb4: $80
	ld   a, d                                        ; $7fb5: $7a
	add  b                                           ; $7fb6: $80
	ld   a, [$7e80]                                  ; $7fb7: $fa $80 $7e
	add  c                                           ; $7fba: $81
	rst  $38                                         ; $7fbb: $ff
	add  b                                           ; $7fbc: $80
	cp   a                                           ; $7fbd: $bf
	add  b                                           ; $7fbe: $80
	ccf                                              ; $7fbf: $3f
	dec  bc                                          ; $7fc0: $0b
	ld   a, a                                        ; $7fc1: $7f
	ld   l, e                                        ; $7fc2: $6b
	rst  $28                                         ; $7fc3: $ef
	ld   l, l                                        ; $7fc4: $6d
	ld   l, a                                        ; $7fc5: $6f
	halt                                             ; $7fc6: $76
	ld   [hl], a                                     ; $7fc7: $77
	ld   a, [de]                                     ; $7fc8: $1a
	db   $dd                                         ; $7fc9: $dd
	db   $fd                                         ; $7fca: $fd
	dec  a                                           ; $7fcb: $3d
	ei                                               ; $7fcc: $fb
	add  b                                           ; $7fcd: $80
	ld   hl, sp-$80                                  ; $7fce: $f8 $80
	ld   a, [$fb00]                                  ; $7fd0: $fa $00 $fb
	add  b                                           ; $7fd3: $80
	rst  $30                                         ; $7fd4: $f7
	dec  b                                           ; $7fd5: $05
	jp   $34f7                                       ; $7fd6: $c3 $f7 $34


	rst  $30                                         ; $7fd9: $f7
	rlca                                             ; $7fda: $07
	ldh  a, [$80]                                    ; $7fdb: $f0 $80
	db   $ed                                         ; $7fdd: $ed
	dec  b                                           ; $7fde: $05
	sub  $56                                         ; $7fdf: $d6 $56
	ld   e, e                                        ; $7fe1: $5b
	dec  de                                          ; $7fe2: $1b
	ld   l, l                                        ; $7fe3: $6d
	xor  l                                           ; $7fe4: $ad
	add  b                                           ; $7fe5: $80
	sbc  [hl]                                        ; $7fe6: $9e
	nop                                              ; $7fe7: $00
	ccf                                              ; $7fe8: $3f
	add  c                                           ; $7fe9: $81
	ld   a, a                                        ; $7fea: $7f
	nop                                              ; $7feb: $00
	cp   a                                           ; $7fec: $bf
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
	adc  b                                           ; $7ff7: $88
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
