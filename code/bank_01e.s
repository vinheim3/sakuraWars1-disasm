; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

	or   d                                           ; $4000: $b2
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	ld   [$0084], sp                                 ; $4003: $08 $84 $00
	nop                                              ; $4006: $00
	ld   bc, $0087                                   ; $4007: $01 $87 $00
	inc  b                                           ; $400a: $04
	ld   bc, $2000                                   ; $400b: $01 $00 $20
	nop                                              ; $400e: $00
	inc  hl                                          ; $400f: $23
	adc  b                                           ; $4010: $88
	nop                                              ; $4011: $00
	ld   [bc], a                                     ; $4012: $02
	ld   b, e                                        ; $4013: $43
	nop                                              ; $4014: $00
	ld   b, b                                        ; $4015: $40
	add  d                                           ; $4016: $82
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	ld   bc, $0087                                   ; $4019: $01 $87 $00
	inc  b                                           ; $401c: $04
	ld   bc, $6000                                   ; $401d: $01 $00 $60
	nop                                              ; $4020: $00
	ld   h, e                                        ; $4021: $63
	adc  b                                           ; $4022: $88
	nop                                              ; $4023: $00
	ld   bc, $2023                                   ; $4024: $01 $23 $20
	sub  c                                           ; $4027: $91
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00
	inc  bc                                          ; $402a: $03
	adc  b                                           ; $402b: $88
	nop                                              ; $402c: $00
	ld   [bc], a                                     ; $402d: $02
	inc  bc                                          ; $402e: $03
	nop                                              ; $402f: $00
	ld   [$008e], sp                                 ; $4030: $08 $8e $00
	ld   [bc], a                                     ; $4033: $02
	ld   [$2320], sp                                 ; $4034: $08 $20 $23
	adc  b                                           ; $4037: $88
	nop                                              ; $4038: $00
	ld   [bc], a                                     ; $4039: $02
	inc  bc                                          ; $403a: $03
	nop                                              ; $403b: $00
	ld   [$008e], sp                                 ; $403c: $08 $8e $00
	ld   [bc], a                                     ; $403f: $02
	ld   [$2320], sp                                 ; $4040: $08 $20 $23
	adc  b                                           ; $4043: $88
	nop                                              ; $4044: $00
	ld   [bc], a                                     ; $4045: $02
	inc  bc                                          ; $4046: $03
	nop                                              ; $4047: $00
	ld   [$008e], sp                                 ; $4048: $08 $8e $00
	ld   [bc], a                                     ; $404b: $02
	ld   [$2320], sp                                 ; $404c: $08 $20 $23
	adc  b                                           ; $404f: $88
	nop                                              ; $4050: $00
	ld   [bc], a                                     ; $4051: $02
	inc  bc                                          ; $4052: $03
	nop                                              ; $4053: $00
	ld   [$008e], sp                                 ; $4054: $08 $8e $00
	ld   [bc], a                                     ; $4057: $02
	ld   [$2320], sp                                 ; $4058: $08 $20 $23
	adc  b                                           ; $405b: $88
	nop                                              ; $405c: $00
	ld   [bc], a                                     ; $405d: $02
	inc  bc                                          ; $405e: $03
	nop                                              ; $405f: $00
	ld   [$008e], sp                                 ; $4060: $08 $8e $00
	ld   [bc], a                                     ; $4063: $02
	ld   [$2320], sp                                 ; $4064: $08 $20 $23
	adc  b                                           ; $4067: $88
	nop                                              ; $4068: $00
	ld   [bc], a                                     ; $4069: $02
	inc  bc                                          ; $406a: $03
	nop                                              ; $406b: $00
	ld   [$008e], sp                                 ; $406c: $08 $8e $00
	ld   [bc], a                                     ; $406f: $02
	ld   [$2320], sp                                 ; $4070: $08 $20 $23
	adc  b                                           ; $4073: $88
	nop                                              ; $4074: $00
	ld   [bc], a                                     ; $4075: $02
	inc  bc                                          ; $4076: $03
	nop                                              ; $4077: $00
	ld   [$008a], sp                                 ; $4078: $08 $8a $00
	nop                                              ; $407b: $00
	ld   [$0082], sp                                 ; $407c: $08 $82 $00
	ld   bc, $2320                                   ; $407f: $01 $20 $23
	adc  b                                           ; $4082: $88
	nop                                              ; $4083: $00
	ld   [bc], a                                     ; $4084: $02
	inc  bc                                          ; $4085: $03
	nop                                              ; $4086: $00
	ld   [$008a], sp                                 ; $4087: $08 $8a $00
	nop                                              ; $408a: $00
	ld   [$0082], sp                                 ; $408b: $08 $82 $00
	ld   bc, $2320                                   ; $408e: $01 $20 $23
	adc  b                                           ; $4091: $88
	nop                                              ; $4092: $00
	nop                                              ; $4093: $00
	inc  bc                                          ; $4094: $03
	sub  c                                           ; $4095: $91
	nop                                              ; $4096: $00
	ld   bc, $2320                                   ; $4097: $01 $20 $23
	adc  b                                           ; $409a: $88
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	inc  bc                                          ; $409d: $03
	sub  c                                           ; $409e: $91
	nop                                              ; $409f: $00
	ld   bc, $2320                                   ; $40a0: $01 $20 $23
	adc  b                                           ; $40a3: $88
	nop                                              ; $40a4: $00
	nop                                              ; $40a5: $00
	inc  bc                                          ; $40a6: $03
	sub  c                                           ; $40a7: $91
	nop                                              ; $40a8: $00
	ld   bc, $2320                                   ; $40a9: $01 $20 $23
	adc  b                                           ; $40ac: $88
	nop                                              ; $40ad: $00
	nop                                              ; $40ae: $00
	inc  bc                                          ; $40af: $03
	sub  c                                           ; $40b0: $91
	nop                                              ; $40b1: $00
	ld   bc, $2320                                   ; $40b2: $01 $20 $23
	adc  b                                           ; $40b5: $88
	nop                                              ; $40b6: $00
	nop                                              ; $40b7: $00
	inc  bc                                          ; $40b8: $03
	sub  c                                           ; $40b9: $91
	nop                                              ; $40ba: $00
	ld   bc, $2320                                   ; $40bb: $01 $20 $23
	adc  b                                           ; $40be: $88
	nop                                              ; $40bf: $00
	nop                                              ; $40c0: $00
	inc  bc                                          ; $40c1: $03
	sub  c                                           ; $40c2: $91
	nop                                              ; $40c3: $00
	ld   bc, $2320                                   ; $40c4: $01 $20 $23
	adc  b                                           ; $40c7: $88
	nop                                              ; $40c8: $00
	ld   bc, $2063                                   ; $40c9: $01 $63 $20
	sub  c                                           ; $40cc: $91
	nop                                              ; $40cd: $00
	nop                                              ; $40ce: $00
	ld   b, e                                        ; $40cf: $43
	adc  b                                           ; $40d0: $88
	nop                                              ; $40d1: $00
	nop                                              ; $40d2: $00
	inc  bc                                          ; $40d3: $03
	adc  l                                           ; $40d4: $8d
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	inc  bc                                          ; $40d7: $03
	adc  l                                           ; $40d8: $8d
	nop                                              ; $40d9: $00
	nop                                              ; $40da: $00
	inc  bc                                          ; $40db: $03
	adc  l                                           ; $40dc: $8d
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	inc  bc                                          ; $40df: $03
	adc  l                                           ; $40e0: $8d
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	inc  bc                                          ; $40e3: $03
	add  l                                           ; $40e4: $85
	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	inc  bc                                          ; $40e7: $03
	sub  l                                           ; $40e8: $95
	nop                                              ; $40e9: $00
	nop                                              ; $40ea: $00
	inc  bc                                          ; $40eb: $03
	add  l                                           ; $40ec: $85
	nop                                              ; $40ed: $00
	nop                                              ; $40ee: $00
	inc  bc                                          ; $40ef: $03
	sub  l                                           ; $40f0: $95
	nop                                              ; $40f1: $00
	nop                                              ; $40f2: $00
	inc  bc                                          ; $40f3: $03
	add  h                                           ; $40f4: $84
	nop                                              ; $40f5: $00
	nop                                              ; $40f6: $00
	ld   bc, $0083                                   ; $40f7: $01 $83 $00
	add  c                                           ; $40fa: $81
	ld   bc, $0001                                   ; $40fb: $01 $01 $00
	inc  bc                                          ; $40fe: $03
	adc  h                                           ; $40ff: $8c
	nop                                              ; $4100: $00
	nop                                              ; $4101: $00
	inc  bc                                          ; $4102: $03
	add  h                                           ; $4103: $84
	nop                                              ; $4104: $00
	nop                                              ; $4105: $00
	ld   bc, $0083                                   ; $4106: $01 $83 $00
	add  c                                           ; $4109: $81
	ld   bc, $0001                                   ; $410a: $01 $01 $00
	inc  bc                                          ; $410d: $03
	adc  h                                           ; $410e: $8c
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	inc  bc                                          ; $4111: $03
	add  e                                           ; $4112: $83
	nop                                              ; $4113: $00
	nop                                              ; $4114: $00
	ld   bc, $0083                                   ; $4115: $01 $83 $00
	ld   bc, $0001                                   ; $4118: $01 $01 $00
	add  b                                           ; $411b: $80
	ld   bc, $0001                                   ; $411c: $01 $01 $00
	inc  bc                                          ; $411f: $03
	adc  h                                           ; $4120: $8c
	nop                                              ; $4121: $00
	nop                                              ; $4122: $00
	inc  bc                                          ; $4123: $03
	add  e                                           ; $4124: $83
	nop                                              ; $4125: $00
	nop                                              ; $4126: $00
	ld   bc, $0083                                   ; $4127: $01 $83 $00
	ld   bc, $0001                                   ; $412a: $01 $01 $00
	add  b                                           ; $412d: $80
	ld   bc, $0001                                   ; $412e: $01 $01 $00
	inc  bc                                          ; $4131: $03
	adc  h                                           ; $4132: $8c
	nop                                              ; $4133: $00
	nop                                              ; $4134: $00
	inc  bc                                          ; $4135: $03
	add  e                                           ; $4136: $83
	nop                                              ; $4137: $00
	nop                                              ; $4138: $00
	ld   bc, $0083                                   ; $4139: $01 $83 $00
	nop                                              ; $413c: $00
	ld   bc, $0080                                   ; $413d: $01 $80 $00
	add  b                                           ; $4140: $80
	ld   bc, $0300                                   ; $4141: $01 $00 $03
	adc  h                                           ; $4144: $8c
	nop                                              ; $4145: $00
	nop                                              ; $4146: $00
	inc  bc                                          ; $4147: $03
	add  e                                           ; $4148: $83
	nop                                              ; $4149: $00
	nop                                              ; $414a: $00
	ld   bc, $0083                                   ; $414b: $01 $83 $00
	nop                                              ; $414e: $00
	ld   bc, $0080                                   ; $414f: $01 $80 $00
	add  b                                           ; $4152: $80
	ld   bc, $0300                                   ; $4153: $01 $00 $03
	adc  h                                           ; $4156: $8c
	nop                                              ; $4157: $00
	nop                                              ; $4158: $00
	inc  bc                                          ; $4159: $03
	add  d                                           ; $415a: $82
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	ld   bc, $0083                                   ; $415d: $01 $83 $00
	nop                                              ; $4160: $00
	ld   bc, $0081                                   ; $4161: $01 $81 $00
	add  b                                           ; $4164: $80
	ld   bc, $0300                                   ; $4165: $01 $00 $03
	adc  h                                           ; $4168: $8c
	nop                                              ; $4169: $00
	nop                                              ; $416a: $00
	inc  bc                                          ; $416b: $03
	add  d                                           ; $416c: $82
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	ld   bc, $0083                                   ; $416f: $01 $83 $00
	nop                                              ; $4172: $00
	ld   bc, $0081                                   ; $4173: $01 $81 $00
	add  b                                           ; $4176: $80
	ld   bc, $0300                                   ; $4177: $01 $00 $03
	adc  h                                           ; $417a: $8c
	nop                                              ; $417b: $00
	nop                                              ; $417c: $00
	inc  bc                                          ; $417d: $03
	add  d                                           ; $417e: $82
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	ld   bc, $0083                                   ; $4181: $01 $83 $00
	nop                                              ; $4184: $00
	ld   bc, $0082                                   ; $4185: $01 $82 $00
	ld   bc, $0201                                   ; $4188: $01 $01 $02
	adc  h                                           ; $418b: $8c
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	inc  bc                                          ; $418e: $03
	add  d                                           ; $418f: $82
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	ld   bc, $0083                                   ; $4192: $01 $83 $00
	nop                                              ; $4195: $00
	ld   bc, $0082                                   ; $4196: $01 $82 $00
	ld   bc, $0201                                   ; $4199: $01 $01 $02
	adc  h                                           ; $419c: $8c
	nop                                              ; $419d: $00
	ld   b, [hl]                                     ; $419e: $46
	nop                                              ; $419f: $00
	add  e                                           ; $41a0: $83
	nop                                              ; $41a1: $00
	ld   b, $75                                      ; $41a2: $06 $75
	inc  bc                                          ; $41a4: $03
	ld   bc, $010f                                   ; $41a5: $01 $0f $01
	inc  bc                                          ; $41a8: $03
	ld   a, d                                        ; $41a9: $7a
	add  e                                           ; $41aa: $83
	nop                                              ; $41ab: $00
	inc  bc                                          ; $41ac: $03
	ld   h, e                                        ; $41ad: $63
	ld   bc, $de03                                   ; $41ae: $01 $03 $de
	adc  c                                           ; $41b1: $89
	nop                                              ; $41b2: $00
	nop                                              ; $41b3: $00
	cp   a                                           ; $41b4: $bf
	add  c                                           ; $41b5: $81
	nop                                              ; $41b6: $00
	rlca                                             ; $41b7: $07
	ld   bc, $016b                                   ; $41b8: $01 $6b $01
	rlca                                             ; $41bb: $07
	ld   bc, $0103                                   ; $41bc: $01 $03 $01
	ld   l, a                                        ; $41bf: $6f
	add  d                                           ; $41c0: $82
	nop                                              ; $41c1: $00
	inc  b                                           ; $41c2: $04
	ld   l, a                                        ; $41c3: $6f
	ld   bc, $0103                                   ; $41c4: $01 $03 $01
	db   $d3                                         ; $41c7: $d3
	adc  c                                           ; $41c8: $89
	nop                                              ; $41c9: $00
	nop                                              ; $41ca: $00
	cp   a                                           ; $41cb: $bf
	add  d                                           ; $41cc: $82
	nop                                              ; $41cd: $00
	dec  b                                           ; $41ce: $05
	ld   e, a                                        ; $41cf: $5f
	ccf                                              ; $41d0: $3f
	ld   bc, $0103                                   ; $41d1: $01 $03 $01
	ld   h, e                                        ; $41d4: $63
	add  e                                           ; $41d5: $83
	nop                                              ; $41d6: $00
	inc  b                                           ; $41d7: $04
	ld   a, d                                        ; $41d8: $7a
	inc  bc                                          ; $41d9: $03
	ld   bc, $c80f                                   ; $41da: $01 $0f $c8
	adc  c                                           ; $41dd: $89
	nop                                              ; $41de: $00
	inc  d                                           ; $41df: $14
	cp   a                                           ; $41e0: $bf
	nop                                              ; $41e1: $00
	ld   [bc], a                                     ; $41e2: $02
	ld   bc, $0107                                   ; $41e3: $01 $07 $01
	inc  bc                                          ; $41e6: $03
	ld   bc, $010f                                   ; $41e7: $01 $0f $01
	nop                                              ; $41ea: $00
	ld   bc, $010f                                   ; $41eb: $01 $0f $01
	inc  bc                                          ; $41ee: $03
	ld   bc, $0107                                   ; $41ef: $01 $07 $01
	ld   a, a                                        ; $41f2: $7f
	ld   bc, $89c3                                   ; $41f3: $01 $c3 $89
	nop                                              ; $41f6: $00
	inc  d                                           ; $41f7: $14
	cp   a                                           ; $41f8: $bf
	ld   a, [bc]                                     ; $41f9: $0a
	ld   bc, $0107                                   ; $41fa: $01 $07 $01
	inc  bc                                          ; $41fd: $03
	ld   bc, $011f                                   ; $41fe: $01 $1f $01
	inc  bc                                          ; $4201: $03
	nop                                              ; $4202: $00
	inc  bc                                          ; $4203: $03
	ld   bc, $011f                                   ; $4204: $01 $1f $01
	inc  bc                                          ; $4207: $03
	ld   bc, $0107                                   ; $4208: $01 $07 $01
	ld   a, [bc]                                     ; $420b: $0a
	cp   a                                           ; $420c: $bf
	adc  c                                           ; $420d: $89
	nop                                              ; $420e: $00
	ld   [bc], a                                     ; $420f: $02
	jp   z, $0766                                    ; $4210: $ca $66 $07

	add  e                                           ; $4213: $83
	nop                                              ; $4214: $00
	inc  b                                           ; $4215: $04
	ld   bc, $0003                                   ; $4216: $01 $03 $00
	inc  bc                                          ; $4219: $03
	ld   bc, $0083                                   ; $421a: $01 $83 $00
	ld   [bc], a                                     ; $421d: $02
	rlca                                             ; $421e: $07
	inc  de                                          ; $421f: $13
	cp   a                                           ; $4220: $bf
	adc  c                                           ; $4221: $89
	nop                                              ; $4222: $00
	ld   c, $d5                                      ; $4223: $0e $d5
	ld   a, c                                        ; $4225: $79
	rlca                                             ; $4226: $07
	inc  bc                                          ; $4227: $03
	rrca                                             ; $4228: $0f
	ld   bc, $0e0d                                   ; $4229: $01 $0d $0e
	ld   bc, $0807                                   ; $422c: $01 $07 $08
	add  hl, bc                                      ; $422f: $09
	inc  bc                                          ; $4230: $03
	ld   a, [bc]                                     ; $4231: $0a
	nop                                              ; $4232: $00
	add  b                                           ; $4233: $80
	dec  bc                                          ; $4234: $0b
	inc  bc                                          ; $4235: $03
	nop                                              ; $4236: $00
	rlca                                             ; $4237: $07
	inc  de                                          ; $4238: $13
	cp   a                                           ; $4239: $bf
	adc  c                                           ; $423a: $89
	nop                                              ; $423b: $00
	inc  d                                           ; $423c: $14
	ldh  [$4c], a                                    ; $423d: $e0 $4c
	rlca                                             ; $423f: $07
	inc  [hl]                                        ; $4240: $34
	ld   bc, $0103                                   ; $4241: $01 $03 $01
	rlca                                             ; $4244: $07
	ld   bc, $0103                                   ; $4245: $01 $03 $01
	rrca                                             ; $4248: $0f
	ld   bc, $0103                                   ; $4249: $01 $03 $01
	rlca                                             ; $424c: $07
	ld   bc, $0739                                   ; $424d: $01 $39 $07
	inc  de                                          ; $4250: $13
	cp   a                                           ; $4251: $bf
	adc  c                                           ; $4252: $89
	nop                                              ; $4253: $00
	inc  d                                           ; $4254: $14
	cp   a                                           ; $4255: $bf
	inc  de                                          ; $4256: $13
	rlca                                             ; $4257: $07
	ld   a, [hl-]                                    ; $4258: $3a
	ld   bc, $011f                                   ; $4259: $01 $1f $01
	inc  bc                                          ; $425c: $03
	ld   bc, $0107                                   ; $425d: $01 $07 $01
	inc  bc                                          ; $4260: $03
	ld   bc, $010f                                   ; $4261: $01 $0f $01
	inc  bc                                          ; $4264: $03
	ld   bc, $072f                                   ; $4265: $01 $2f $07
	inc  de                                          ; $4268: $13
	cp   a                                           ; $4269: $bf
	adc  c                                           ; $426a: $89
	nop                                              ; $426b: $00
	inc  d                                           ; $426c: $14
	cp   a                                           ; $426d: $bf
	inc  de                                          ; $426e: $13
	rlca                                             ; $426f: $07
	jr   z, jr_01e_4273                              ; $4270: $28 $01

	inc  bc                                          ; $4272: $03

jr_01e_4273:
	ld   bc, $017f                                   ; $4273: $01 $7f $01
	inc  bc                                          ; $4276: $03
	ld   bc, $0107                                   ; $4277: $01 $07 $01
	inc  bc                                          ; $427a: $03
	ld   bc, $010f                                   ; $427b: $01 $0f $01
	ld   e, l                                        ; $427e: $5d
	rlca                                             ; $427f: $07
	inc  de                                          ; $4280: $13
	cp   a                                           ; $4281: $bf
	adc  c                                           ; $4282: $89
	nop                                              ; $4283: $00
	ld   [bc], a                                     ; $4284: $02
	cp   a                                           ; $4285: $bf
	inc  de                                          ; $4286: $13
	rlca                                             ; $4287: $07
	adc  l                                           ; $4288: $8d
	nop                                              ; $4289: $00
	ld   [bc], a                                     ; $428a: $02
	rlca                                             ; $428b: $07
	inc  de                                          ; $428c: $13
	cp   a                                           ; $428d: $bf
	adc  c                                           ; $428e: $89
	nop                                              ; $428f: $00
	ld   [bc], a                                     ; $4290: $02
	cp   a                                           ; $4291: $bf
	inc  de                                          ; $4292: $13
	rlca                                             ; $4293: $07
	add  e                                           ; $4294: $83
	nop                                              ; $4295: $00
	inc  b                                           ; $4296: $04
	ld   e, [hl]                                     ; $4297: $5e
	ld   bc, $0100                                   ; $4298: $01 $00 $01
	ld   e, [hl]                                     ; $429b: $5e
	add  e                                           ; $429c: $83
	nop                                              ; $429d: $00
	ld   [bc], a                                     ; $429e: $02
	rlca                                             ; $429f: $07
	inc  de                                          ; $42a0: $13
	cp   a                                           ; $42a1: $bf
	adc  c                                           ; $42a2: $89
	nop                                              ; $42a3: $00
	inc  d                                           ; $42a4: $14
	di                                               ; $42a5: $f3
	ld   bc, $5a03                                   ; $42a6: $01 $03 $5a
	ld   e, e                                        ; $42a9: $5b
	rra                                              ; $42aa: $1f
	ld   bc, $0103                                   ; $42ab: $01 $03 $01
	rlca                                             ; $42ae: $07
	nop                                              ; $42af: $00
	rlca                                             ; $42b0: $07
	ld   bc, $0103                                   ; $42b1: $01 $03 $01
	rra                                              ; $42b4: $1f
	ld   e, e                                        ; $42b5: $5b
	rra                                              ; $42b6: $1f
	ld   bc, $bf0a                                   ; $42b7: $01 $0a $bf
	adc  c                                           ; $42ba: $89
	nop                                              ; $42bb: $00
	inc  d                                           ; $42bc: $14
	ld   [$0103], a                                  ; $42bd: $ea $03 $01
	rrca                                             ; $42c0: $0f

jr_01e_42c1:
	ld   bc, $0103                                   ; $42c1: $01 $03 $01
	rlca                                             ; $42c4: $07
	ld   bc, $0003                                   ; $42c5: $01 $03 $00
	inc  bc                                          ; $42c8: $03
	ld   bc, $0107                                   ; $42c9: $01 $07 $01
	inc  bc                                          ; $42cc: $03
	ld   bc, $025a                                   ; $42cd: $01 $5a $02
	nop                                              ; $42d0: $00
	cp   a                                           ; $42d1: $bf
	adc  c                                           ; $42d2: $89
	nop                                              ; $42d3: $00
	dec  b                                           ; $42d4: $05
	ldh  [$3f], a                                    ; $42d5: $e0 $3f
	ld   bc, $0103                                   ; $42d7: $01 $03 $01
	ld   h, e                                        ; $42da: $63
	add  b                                           ; $42db: $80
	nop                                              ; $42dc: $00
	dec  b                                           ; $42dd: $05
	ld   h, l                                        ; $42de: $65
	inc  bc                                          ; $42df: $03
	ld   bc, $010f                                   ; $42e0: $01 $0f $01
	ld   l, c                                        ; $42e3: $69
	add  c                                           ; $42e4: $81

jr_01e_42e5:
	nop                                              ; $42e5: $00
	inc  bc                                          ; $42e6: $03
	ld   a, l                                        ; $42e7: $7d
	ld   bc, $c407                                   ; $42e8: $01 $07 $c4
	adc  c                                           ; $42eb: $89
	nop                                              ; $42ec: $00
	inc  d                                           ; $42ed: $14
	push de                                          ; $42ee: $d5
	ld   bc, $0107                                   ; $42ef: $01 $07 $01
	inc  bc                                          ; $42f2: $03
	ld   bc, $006f                                   ; $42f3: $01 $6f $00
	ld   [hl], b                                     ; $42f6: $70
	ld   bc, $0103                                   ; $42f7: $01 $03 $01
	rlca                                             ; $42fa: $07
	ld   [hl], h                                     ; $42fb: $74
	nop                                              ; $42fc: $00
	ld   a, d                                        ; $42fd: $7a
	inc  bc                                          ; $42fe: $03
	ld   bc, $010f                                   ; $42ff: $01 $0f $01
	ret                                              ; $4302: $c9


	adc  c                                           ; $4303: $89
	nop                                              ; $4304: $00
	ld   b, $ca                                      ; $4305: $06 $ca
	inc  bc                                          ; $4307: $03
	ld   bc, $010f                                   ; $4308: $01 $0f $01

jr_01e_430b:
	inc  bc                                          ; $430b: $03
	ld   a, d                                        ; $430c: $7a
	add  [hl]                                        ; $430d: $86
	nop                                              ; $430e: $00
	dec  b                                           ; $430f: $05
	ld   l, a                                        ; $4310: $6f
	ld   bc, $0103                                   ; $4311: $01 $03 $01
	rlca                                             ; $4314: $07
	call nc, $0089                                   ; $4315: $d4 $89 $00
	inc  b                                           ; $4318: $04
	cp   a                                           ; $4319: $bf
	ld   a, e                                        ; $431a: $7b
	rlca                                             ; $431b: $07
	ld   bc, $897d                                   ; $431c: $01 $7d $89
	nop                                              ; $431f: $00
	inc  b                                           ; $4320: $04
	ld   h, e                                        ; $4321: $63
	ld   bc, $0103                                   ; $4322: $01 $03 $01
	rst  JumpTable                                         ; $4325: $df
	rst  $38                                         ; $4326: $ff
	nop                                              ; $4327: $00
	rst  $38                                         ; $4328: $ff
	nop                                              ; $4329: $00
	rst  $38                                         ; $432a: $ff

Jump_01e_432b:
	nop                                              ; $432b: $00
	add  $00                                         ; $432c: $c6 $00
	or   [hl]                                        ; $432e: $b6

jr_01e_432f:
	nop                                              ; $432f: $00
	nop                                              ; $4330: $00
	nop                                              ; $4331: $00
	add  b                                           ; $4332: $80
	add  b                                           ; $4333: $80
	add  b                                           ; $4334: $80
	sbc  a                                           ; $4335: $9f
	add  d                                           ; $4336: $82
	sub  c                                           ; $4337: $91
	add  b                                           ; $4338: $80
	sbc  a                                           ; $4339: $9f
	add  h                                           ; $433a: $84
	nop                                              ; $433b: $00
	add  d                                           ; $433c: $82

jr_01e_433d:
	jr   nz, @-$7e                                   ; $433d: $20 $80

	jr   z, jr_01e_42c1                              ; $433f: $28 $80

	inc  h                                           ; $4341: $24
	add  b                                           ; $4342: $80
	inc  sp                                          ; $4343: $33
	add  h                                           ; $4344: $84
	nop                                              ; $4345: $00
	add  b                                           ; $4346: $80
	ld   bc, $0380                                   ; $4347: $01 $80 $03
	add  b                                           ; $434a: $80
	ld   [bc], a                                     ; $434b: $02
	add  b                                           ; $434c: $80
	inc  b                                           ; $434d: $04
	add  b                                           ; $434e: $80
	sbc  b                                           ; $434f: $98
	add  h                                           ; $4350: $84
	nop                                              ; $4351: $00
	add  b                                           ; $4352: $80
	dec  b                                           ; $4353: $05
	add  b                                           ; $4354: $80
	add  a                                           ; $4355: $87
	add  b                                           ; $4356: $80
	add  b                                           ; $4357: $80
	add  b                                           ; $4358: $80
	ld   b, l                                        ; $4359: $45
	add  b                                           ; $435a: $80
	dec  [hl]                                        ; $435b: $35
	add  h                                           ; $435c: $84
	nop                                              ; $435d: $00
	add  b                                           ; $435e: $80
	jr   z, @-$7e                                    ; $435f: $28 $80

	db   $10                                         ; $4361: $10
	add  d                                           ; $4362: $82
	jr   z, jr_01e_42e5                              ; $4363: $28 $80

	ld   b, h                                        ; $4365: $44
	add  h                                           ; $4366: $84
	nop                                              ; $4367: $00
	add  d                                           ; $4368: $82
	add  b                                           ; $4369: $80
	add  b                                           ; $436a: $80
	add  h                                           ; $436b: $84
	add  b                                           ; $436c: $80
	ld   c, b                                        ; $436d: $48
	add  b                                           ; $436e: $80
	jr   nc, @-$7a                                   ; $436f: $30 $84

	nop                                              ; $4371: $00
	add  b                                           ; $4372: $80
	db   $10                                         ; $4373: $10
	add  b                                           ; $4374: $80
	ldh  a, [$80]                                    ; $4375: $f0 $80
	sbc  b                                           ; $4377: $98
	add  b                                           ; $4378: $80
	sub  h                                           ; $4379: $94
	add  b                                           ; $437a: $80
	ld   [hl], b                                     ; $437b: $70
	add  h                                           ; $437c: $84
	nop                                              ; $437d: $00
	add  d                                           ; $437e: $82
	add  b                                           ; $437f: $80
	add  b                                           ; $4380: $80
	add  h                                           ; $4381: $84
	add  b                                           ; $4382: $80
	ld   c, b                                        ; $4383: $48
	add  b                                           ; $4384: $80
	jr   nc, jr_01e_430b                             ; $4385: $30 $84

	nop                                              ; $4387: $00
	add  b                                           ; $4388: $80
	add  b                                           ; $4389: $80
	add  d                                           ; $438a: $82

jr_01e_438b:
	and  b                                           ; $438b: $a0
	add  b                                           ; $438c: $80
	sbc  [hl]                                        ; $438d: $9e
	add  [hl]                                        ; $438e: $86
	nop                                              ; $438f: $00
	add  h                                           ; $4390: $84
	ld   [$0480], sp                                 ; $4391: $08 $80 $04
	add  b                                           ; $4394: $80
	inc  bc                                          ; $4395: $03
	adc  d                                           ; $4396: $8a
	nop                                              ; $4397: $00
	add  b                                           ; $4398: $80
	ld   b, c                                        ; $4399: $41
	add  b                                           ; $439a: $80
	add  d                                           ; $439b: $82
	add  h                                           ; $439c: $84
	nop                                              ; $439d: $00
	add  d                                           ; $439e: $82
	ld   b, b                                        ; $439f: $40
	add  b                                           ; $43a0: $80
	add  b                                           ; $43a1: $80
	adc  b                                           ; $43a2: $88
	nop                                              ; $43a3: $00
	adc  b                                           ; $43a4: $88
	ld   [bc], a                                     ; $43a5: $02
	add  [hl]                                        ; $43a6: $86
	nop                                              ; $43a7: $00
	add  b                                           ; $43a8: $80
	ld   hl, sp-$80                                  ; $43a9: $f8 $80
	ld   c, b                                        ; $43ab: $48
	add  b                                           ; $43ac: $80
	jr   nc, jr_01e_432f                             ; $43ad: $30 $80

	call c, $0084                                    ; $43af: $dc $84 $00
	add  b                                           ; $43b2: $80
	ld   b, h                                        ; $43b3: $44
	add  h                                           ; $43b4: $84
	ld   b, b                                        ; $43b5: $40
	add  b                                           ; $43b6: $80
	jr   nz, jr_01e_433d                             ; $43b7: $20 $84

	nop                                              ; $43b9: $00
	add  b                                           ; $43ba: $80
	ld   b, h                                        ; $43bb: $44
	add  d                                           ; $43bc: $82
	inc  b                                           ; $43bd: $04
	add  b                                           ; $43be: $80
	ld   [$3080], sp                                 ; $43bf: $08 $80 $30
	add  [hl]                                        ; $43c2: $86
	nop                                              ; $43c3: $00
	add  b                                           ; $43c4: $80
	inc  b                                           ; $43c5: $04
	add  b                                           ; $43c6: $80
	ccf                                              ; $43c7: $3f
	add  b                                           ; $43c8: $80
	inc  b                                           ; $43c9: $04
	add  b                                           ; $43ca: $80
	rra                                              ; $43cb: $1f
	add  b                                           ; $43cc: $80
	ld   de, $9f80                                   ; $43cd: $11 $80 $9f
	add  b                                           ; $43d0: $80
	sub  c                                           ; $43d1: $91
	add  d                                           ; $43d2: $82
	nop                                              ; $43d3: $00
	add  b                                           ; $43d4: $80

jr_01e_43d5:
	sub  b                                           ; $43d5: $90
	adc  b                                           ; $43d6: $88
	db   $10                                         ; $43d7: $10
	add  h                                           ; $43d8: $84
	nop                                              ; $43d9: $00
	add  b                                           ; $43da: $80
	ccf                                              ; $43db: $3f
	add  b                                           ; $43dc: $80
	ld   [bc], a                                     ; $43dd: $02
	add  b                                           ; $43de: $80
	inc  b                                           ; $43df: $04
	add  d                                           ; $43e0: $82
	ld   [$0084], sp                                 ; $43e1: $08 $84 $00
	add  b                                           ; $43e4: $80
	cp   a                                           ; $43e5: $bf
	add  d                                           ; $43e6: $82
	ld   [bc], a                                     ; $43e7: $02
	add  b                                           ; $43e8: $80
	inc  bc                                          ; $43e9: $03
	add  b                                           ; $43ea: $80
	ld   [bc], a                                     ; $43eb: $02
	add  d                                           ; $43ec: $82
	nop                                              ; $43ed: $00
	add  b                                           ; $43ee: $80
	ld   bc, $e180                                   ; $43ef: $01 $80 $e1
	add  b                                           ; $43f2: $80
	rlca                                             ; $43f3: $07
	add  d                                           ; $43f4: $82
	nop                                              ; $43f5: $00
	add  b                                           ; $43f6: $80
	add  b                                           ; $43f7: $80
	add  [hl]                                        ; $43f8: $86
	nop                                              ; $43f9: $00
	add  b                                           ; $43fa: $80
	db   $e4                                         ; $43fb: $e4
	add  b                                           ; $43fc: $80
	add  h                                           ; $43fd: $84
	add  b                                           ; $43fe: $80
	ld   b, h                                        ; $43ff: $44
	add  b                                           ; $4400: $80
	inc  h                                           ; $4401: $24
	add  [hl]                                        ; $4402: $86
	nop                                              ; $4403: $00
	add  b                                           ; $4404: $80
	ld   b, b                                        ; $4405: $40
	add  b                                           ; $4406: $80
	jr   nz, jr_01e_438b                             ; $4407: $20 $82

	db   $10                                         ; $4409: $10
	add  b                                           ; $440a: $80
	ld   b, b                                        ; $440b: $40
	add  d                                           ; $440c: $82
	inc  b                                           ; $440d: $04
	add  b                                           ; $440e: $80
	ld   [bc], a                                     ; $440f: $02
	add  b                                           ; $4410: $80
	ld   bc, $0084                                   ; $4411: $01 $84 $00
	add  b                                           ; $4414: $80
	inc  h                                           ; $4415: $24
	add  d                                           ; $4416: $82
	inc  b                                           ; $4417: $04
	add  b                                           ; $4418: $80
	ld   [bc], a                                     ; $4419: $02
	add  b                                           ; $441a: $80
	pop  bc                                          ; $441b: $c1
	add  h                                           ; $441c: $84
	nop                                              ; $441d: $00
	add  d                                           ; $441e: $82
	db   $10                                         ; $441f: $10
	add  b                                           ; $4420: $80
	ld   [bc], a                                     ; $4421: $02
	add  b                                           ; $4422: $80
	add  l                                           ; $4423: $85
	add  b                                           ; $4424: $80
	ld   [bc], a                                     ; $4425: $02
	adc  h                                           ; $4426: $8c
	nop                                              ; $4427: $00
	add  b                                           ; $4428: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4429: $cf
	add  b                                           ; $442a: $80
	ld   c, b                                        ; $442b: $48
	add  d                                           ; $442c: $82
	ld   [$0082], sp                                 ; $442d: $08 $82 $00
	add  b                                           ; $4430: $80
	and  b                                           ; $4431: $a0
	add  b                                           ; $4432: $80
	sub  b                                           ; $4433: $90
	add  b                                           ; $4434: $80
	ldh  a, [$80]                                    ; $4435: $f0 $80
	add  e                                           ; $4437: $83
	add  b                                           ; $4438: $80
	add  b                                           ; $4439: $80
	add  b                                           ; $443a: $80
	ld   d, b                                        ; $443b: $50
	add  d                                           ; $443c: $82
	nop                                              ; $443d: $00
	add  d                                           ; $443e: $82
	ld   [$3e80], sp                                 ; $443f: $08 $80 $3e
	add  b                                           ; $4442: $80
	jp   z, $8a82                                    ; $4443: $ca $82 $8a

	add  b                                           ; $4446: $80
	rrca                                             ; $4447: $0f
	add  h                                           ; $4448: $84
	add  hl, bc                                      ; $4449: $09
	add  b                                           ; $444a: $80
	db   $d3                                         ; $444b: $d3
	add  h                                           ; $444c: $84
	nop                                              ; $444d: $00
	add  d                                           ; $444e: $82
	ld   d, b                                        ; $444f: $50
	add  b                                           ; $4450: $80
	inc  hl                                          ; $4451: $23
	add  b                                           ; $4452: $80
	jr   nz, jr_01e_43d5                             ; $4453: $20 $80

	ld   d, b                                        ; $4455: $50
	add  h                                           ; $4456: $84
	nop                                              ; $4457: $00
	add  b                                           ; $4458: $80
	adc  d                                           ; $4459: $8a
	add  b                                           ; $445a: $80
	jp   z, $1280                                    ; $445b: $ca $80 $12

	add  b                                           ; $445e: $80
	ld   a, [hl+]                                    ; $445f: $2a
	add  b                                           ; $4460: $80
	inc  b                                           ; $4461: $04
	add  h                                           ; $4462: $84
	nop                                              ; $4463: $00
	add  b                                           ; $4464: $80
	sbc  a                                           ; $4465: $9f
	add  b                                           ; $4466: $80
	sub  c                                           ; $4467: $91
	add  b                                           ; $4468: $80
	sbc  a                                           ; $4469: $9f
	add  b                                           ; $446a: $80
	add  b                                           ; $446b: $80
	add  b                                           ; $446c: $80
	rst  $38                                         ; $446d: $ff
	add  h                                           ; $446e: $84
	nop                                              ; $446f: $00
	add  h                                           ; $4470: $84
	db   $10                                         ; $4471: $10
	add  b                                           ; $4472: $80
	add  hl, bc                                      ; $4473: $09
	add  b                                           ; $4474: $80
	add  [hl]                                        ; $4475: $86
	add  h                                           ; $4476: $84
	nop                                              ; $4477: $00
	add  d                                           ; $4478: $82
	ld   [$8880], sp                                 ; $4479: $08 $80 $88
	add  b                                           ; $447c: $80
	inc  b                                           ; $447d: $04
	add  b                                           ; $447e: $80
	inc  bc                                          ; $447f: $03
	add  h                                           ; $4480: $84
	nop                                              ; $4481: $00
	adc  b                                           ; $4482: $88
	ld   [bc], a                                     ; $4483: $02
	rst  $38                                         ; $4484: $ff
	nop                                              ; $4485: $00
	rst  $38                                         ; $4486: $ff
	nop                                              ; $4487: $00
	rst  $38                                         ; $4488: $ff
	nop                                              ; $4489: $00
	rst  $38                                         ; $448a: $ff
	nop                                              ; $448b: $00
	rst  $38                                         ; $448c: $ff
	nop                                              ; $448d: $00
	rst  $38                                         ; $448e: $ff
	nop                                              ; $448f: $00
	rst  $38                                         ; $4490: $ff
	nop                                              ; $4491: $00
	rst  $38                                         ; $4492: $ff
	nop                                              ; $4493: $00
	rst  $38                                         ; $4494: $ff
	nop                                              ; $4495: $00
	rst  $38                                         ; $4496: $ff
	nop                                              ; $4497: $00
	rst  $38                                         ; $4498: $ff
	nop                                              ; $4499: $00
	cp   b                                           ; $449a: $b8
	nop                                              ; $449b: $00
	ld   d, b                                        ; $449c: $50
	nop                                              ; $449d: $00
	ld   [bc], a                                     ; $449e: $02
	add  b                                           ; $449f: $80
	ld   bc, $8e03                                   ; $44a0: $01 $03 $8e
	nop                                              ; $44a3: $00
	ld   bc, $7f02                                   ; $44a4: $01 $02 $7f
	adc  c                                           ; $44a7: $89
	nop                                              ; $44a8: $00
	db   $10                                         ; $44a9: $10
	ld   a, h                                        ; $44aa: $7c

jr_01e_44ab:
	rlca                                             ; $44ab: $07
	ld   bc, $0103                                   ; $44ac: $01 $03 $01
	rrca                                             ; $44af: $0f
	ld   bc, $0103                                   ; $44b0: $01 $03 $01
	rlca                                             ; $44b3: $07
	ld   bc, $0103                                   ; $44b4: $01 $03 $01
	rra                                              ; $44b7: $1f
	ld   bc, $1703                                   ; $44b8: $01 $03 $17
	add  b                                           ; $44bb: $80
	nop                                              ; $44bc: $00
	ld   bc, $7c06                                   ; $44bd: $01 $06 $7c
	adc  c                                           ; $44c0: $89
	nop                                              ; $44c1: $00
	inc  d                                           ; $44c2: $14
	ld   l, h                                        ; $44c3: $6c
	rlca                                             ; $44c4: $07
	ld   de, $0310                                   ; $44c5: $11 $10 $03
	ld   bc, $010f                                   ; $44c8: $01 $0f $01
	inc  bc                                          ; $44cb: $03
	ld   bc, $0107                                   ; $44cc: $01 $07 $01
	inc  bc                                          ; $44cf: $03
	ld   bc, $013f                  ; $44d0: $01 $3f $01
	inc  de                                          ; $44d3: $13
	scf                                              ; $44d4: $37
	nop                                              ; $44d5: $00
	ld   b, $7c                                      ; $44d6: $06 $7c
	adc  c                                           ; $44d8: $89
	nop                                              ; $44d9: $00
	inc  d                                           ; $44da: $14
	ld   a, h                                        ; $44db: $7c
	ld   b, $27                                      ; $44dc: $06 $27
	ld   bc, $2307                                   ; $44de: $01 $07 $23
	ld   [hl+], a                                    ; $44e1: $22
	inc  bc                                          ; $44e2: $03
	ld   bc, $2d22                                   ; $44e3: $01 $22 $2d
	ld   bc, $0103                                   ; $44e6: $01 $03 $01
	add  hl, bc                                      ; $44e9: $09
	dec  h                                           ; $44ea: $25
	dec  bc                                          ; $44eb: $0b
	add  hl, bc                                      ; $44ec: $09
	nop                                              ; $44ed: $00
	ld   b, $7c                                      ; $44ee: $06 $7c
	adc  c                                           ; $44f0: $89
	nop                                              ; $44f1: $00
	inc  d                                           ; $44f2: $14
	ld   a, h                                        ; $44f3: $7c
	ld   b, $28                                      ; $44f4: $06 $28
	inc  bc                                          ; $44f6: $03
	ld   bc, $2639                                   ; $44f7: $01 $39 $26
	ld   bc, $1516                                   ; $44fa: $01 $16 $15
	ld   bc, $0107                                   ; $44fd: $01 $07 $01
	inc  bc                                          ; $4500: $03
	dec  de                                          ; $4501: $1b
	dec  sp                                          ; $4502: $3b
	dec  c                                           ; $4503: $0d
	ld   e, $00                                      ; $4504: $1e $00
	ld   b, $7c                                      ; $4506: $06 $7c
	adc  c                                           ; $4508: $89
	nop                                              ; $4509: $00
	dec  b                                           ; $450a: $05
	ld   a, h                                        ; $450b: $7c
	ld   b, $32                                      ; $450c: $06 $32
	rrca                                             ; $450e: $0f
	ld   bc, $8a3c                                   ; $450f: $01 $3c $8a
	nop                                              ; $4512: $00
	ld   [bc], a                                     ; $4513: $02
	ld   de, $6c07                                   ; $4514: $11 $07 $6c
	adc  c                                           ; $4517: $89
	nop                                              ; $4518: $00
	ld   b, $7c                                      ; $4519: $06 $7c
	ld   b, $3f                                      ; $451b: $06 $3f
	ld   bc, $0107                                   ; $451d: $01 $07 $01
	jr   c, jr_01e_44ab                              ; $4520: $38 $89

	nop                                              ; $4522: $00
	ld   [bc], a                                     ; $4523: $02
	ld   bc, $7c07                                   ; $4524: $01 $07 $7c
	adc  c                                           ; $4527: $89
	nop                                              ; $4528: $00
	ld   bc, $027f                                   ; $4529: $01 $7f $02
	add  e                                           ; $452c: $83
	nop                                              ; $452d: $00
	ld   b, $41                                      ; $452e: $06 $41
	rlca                                             ; $4530: $07
	ld   bc, $0103                                   ; $4531: $01 $03 $01
	inc  b                                           ; $4534: $04
	ld   b, c                                        ; $4535: $41
	add  d                                           ; $4536: $82
	nop                                              ; $4537: $00
	ld   [bc], a                                     ; $4538: $02
	inc  bc                                          ; $4539: $03
	ld   bc, $897f                                   ; $453a: $01 $7f $89
	nop                                              ; $453d: $00
	nop                                              ; $453e: $00
	scf                                              ; $453f: $37
	add  h                                           ; $4540: $84
	nop                                              ; $4541: $00
	ld   b, $01                                      ; $4542: $06 $01
	inc  bc                                          ; $4544: $03
	ld   bc, $0107                                   ; $4545: $01 $07 $01
	inc  bc                                          ; $4548: $03
	ld   b, $84                                      ; $4549: $06 $84
	nop                                              ; $454b: $00
	nop                                              ; $454c: $00
	scf                                              ; $454d: $37
	adc  c                                           ; $454e: $89
	nop                                              ; $454f: $00
	nop                                              ; $4550: $00
	ld   a, d                                        ; $4551: $7a
	add  h                                           ; $4552: $84
	nop                                              ; $4553: $00
	ld   b, $54                                      ; $4554: $06 $54
	inc  bc                                          ; $4556: $03
	ld   bc, $0107                                   ; $4557: $01 $07 $01
	inc  bc                                          ; $455a: $03
	ld   d, e                                        ; $455b: $53
	add  h                                           ; $455c: $84
	nop                                              ; $455d: $00
	nop                                              ; $455e: $00
	ld   a, d                                        ; $455f: $7a
	adc  c                                           ; $4560: $89
	nop                                              ; $4561: $00
	ld   [bc], a                                     ; $4562: $02
	ld   a, d                                        ; $4563: $7a
	ld   e, a                                        ; $4564: $5f
	ld   bc, $0780                                   ; $4565: $01 $80 $07
	add  d                                           ; $4568: $82
	nop                                              ; $4569: $00
	ld   bc, $5f01                                   ; $456a: $01 $01 $5f
	add  a                                           ; $456d: $87
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	ld   a, d                                        ; $4570: $7a
	adc  c                                           ; $4571: $89
	nop                                              ; $4572: $00
	dec  b                                           ; $4573: $05
	ld   a, d                                        ; $4574: $7a
	ld   h, [hl]                                     ; $4575: $66
	rlca                                             ; $4576: $07
	ld   bc, $0203                                   ; $4577: $01 $03 $02
	add  c                                           ; $457a: $81
	nop                                              ; $457b: $00
	ld   bc, $6607                                   ; $457c: $01 $07 $66
	add  a                                           ; $457f: $87
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	ld   a, d                                        ; $4582: $7a
	adc  c                                           ; $4583: $89
	nop                                              ; $4584: $00
	dec  b                                           ; $4585: $05
	ld   a, d                                        ; $4586: $7a
	ld   h, [hl]                                     ; $4587: $66
	ld   c, $03                                      ; $4588: $0e $03
	ld   bc, $801f                                   ; $458a: $01 $1f $80
	ld   bc, $020c                                   ; $458d: $01 $0c $02
	ld   de, $3b66                                   ; $4590: $11 $66 $3b
	ld   bc, $457f                                   ; $4593: $01 $7f $45
	ld   d, l                                        ; $4596: $55
	rlca                                             ; $4597: $07
	rrca                                             ; $4598: $0f
	ld   e, l                                        ; $4599: $5d
	nop                                              ; $459a: $00
	ld   a, d                                        ; $459b: $7a
	adc  c                                           ; $459c: $89
	nop                                              ; $459d: $00
	ld   [bc], a                                     ; $459e: $02
	ld   a, d                                        ; $459f: $7a
	ld   h, [hl]                                     ; $45a0: $66
	rlca                                             ; $45a1: $07
	add  b                                           ; $45a2: $80
	db   $10                                         ; $45a3: $10
	add  d                                           ; $45a4: $82
	nop                                              ; $45a5: $00
	dec  bc                                          ; $45a6: $0b
	rlca                                             ; $45a7: $07
	ld   h, [hl]                                     ; $45a8: $66
	ld   b, h                                        ; $45a9: $44
	inc  bc                                          ; $45aa: $03
	dec  c                                           ; $45ab: $0d
	ld   c, d                                        ; $45ac: $4a
	ld   h, l                                        ; $45ad: $65
	rlca                                             ; $45ae: $07
	rrca                                             ; $45af: $0f
	ld   l, l                                        ; $45b0: $6d
	nop                                              ; $45b1: $00
	ld   a, d                                        ; $45b2: $7a
	adc  c                                           ; $45b3: $89
	nop                                              ; $45b4: $00
	ld   [bc], a                                     ; $45b5: $02
	ld   a, d                                        ; $45b6: $7a
	ld   e, a                                        ; $45b7: $5f
	ld   bc, $0780                                   ; $45b8: $01 $80 $07
	add  d                                           ; $45bb: $82
	nop                                              ; $45bc: $00
	ld   bc, $5f01                                   ; $45bd: $01 $01 $5f
	add  a                                           ; $45c0: $87
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	ld   a, d                                        ; $45c3: $7a
	adc  c                                           ; $45c4: $89
	nop                                              ; $45c5: $00
	inc  d                                           ; $45c6: $14
	ld   a, d                                        ; $45c7: $7a
	ld   [hl], d                                     ; $45c8: $72
	rrca                                             ; $45c9: $0f
	ld   l, b                                        ; $45ca: $68
	ld   l, c                                        ; $45cb: $69
	inc  bc                                          ; $45cc: $03
	ld   bc, $0107                                   ; $45cd: $01 $07 $01
	inc  bc                                          ; $45d0: $03
	ld   bc, $2e7a                                   ; $45d1: $01 $7a $2e
	add  hl, bc                                      ; $45d4: $09
	dec  h                                           ; $45d5: $25
	dec  bc                                          ; $45d6: $0b
	dec  sp                                          ; $45d7: $3b
	ld   l, [hl]                                     ; $45d8: $6e
	ld   e, h                                        ; $45d9: $5c
	nop                                              ; $45da: $00
	ld   a, d                                        ; $45db: $7a
	adc  c                                           ; $45dc: $89
	nop                                              ; $45dd: $00
	inc  d                                           ; $45de: $14
	ld   a, d                                        ; $45df: $7a
	ld   [hl], e                                     ; $45e0: $73
	jr   z, jr_01e_4624                              ; $45e1: $28 $41

	ld   b, b                                        ; $45e3: $40
	ld   a, $03                                      ; $45e4: $3e $03
	dec  bc                                          ; $45e6: $0b
	inc  bc                                          ; $45e7: $03
	ld   bc, $5e07                                   ; $45e8: $01 $07 $5e
	inc  b                                           ; $45eb: $04
	dec  de                                          ; $45ec: $1b
	dec  sp                                          ; $45ed: $3b
	dec  c                                           ; $45ee: $0d
	ld   hl, $6067                                   ; $45ef: $21 $67 $60
	jr   c, jr_01e_466e                              ; $45f2: $38 $7a

	adc  c                                           ; $45f4: $89
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	scf                                              ; $45f7: $37
	sub  c                                           ; $45f8: $91
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00
	scf                                              ; $45fb: $37
	rst  $38                                         ; $45fc: $ff
	nop                                              ; $45fd: $00
	rst  $38                                         ; $45fe: $ff
	nop                                              ; $45ff: $00
	rst  $38                                         ; $4600: $ff
	nop                                              ; $4601: $00
	add  $00                                         ; $4602: $c6 $00
	ld   e, e                                        ; $4604: $5b
	nop                                              ; $4605: $00
	ld   [bc], a                                     ; $4606: $02
	add  b                                           ; $4607: $80
	ld   bc, $8e03                                   ; $4608: $01 $03 $8e
	nop                                              ; $460b: $00
	ld   bc, $7002                                   ; $460c: $01 $02 $70
	adc  c                                           ; $460f: $89
	nop                                              ; $4610: $00
	inc  d                                           ; $4611: $14
	ld   [hl], e                                     ; $4612: $73
	rlca                                             ; $4613: $07
	inc  d                                           ; $4614: $14
	ld   bc, $0103                                   ; $4615: $01 $03 $01
	rlca                                             ; $4618: $07
	ld   bc, $0103                                   ; $4619: $01 $03 $01
	rrca                                             ; $461c: $0f
	ld   bc, $0103                                   ; $461d: $01 $03 $01
	rlca                                             ; $4620: $07
	ld   bc, $0f03                                   ; $4621: $01 $03 $0f

jr_01e_4624:
	ld   d, $04                                      ; $4624: $16 $04
	ld   [hl], e                                     ; $4626: $73
	adc  c                                           ; $4627: $89
	nop                                              ; $4628: $00
	inc  d                                           ; $4629: $14
	ld   [hl], l                                     ; $462a: $75
	inc  bc                                          ; $462b: $03
	ld   h, $01                                      ; $462c: $26 $01
	inc  bc                                          ; $462e: $03
	ld   bc, $0107                                   ; $462f: $01 $07 $01
	inc  bc                                          ; $4632: $03
	ld   bc, $010f                                   ; $4633: $01 $0f $01
	inc  bc                                          ; $4636: $03
	ld   bc, $0107                                   ; $4637: $01 $07 $01
	inc  bc                                          ; $463a: $03
	rrca                                             ; $463b: $0f
	ld   h, $04                                      ; $463c: $26 $04
	ld   [hl], e                                     ; $463e: $73
	adc  c                                           ; $463f: $89
	nop                                              ; $4640: $00
	ld   c, $73                                      ; $4641: $0e $73
	inc  b                                           ; $4643: $04
	jr   jr_01e_4675                                 ; $4644: $18 $2f

	ld   bc, $3305                                   ; $4646: $01 $05 $33
	ld   sp, $0f01                                   ; $4649: $31 $01 $0f
	ld   bc, $0103                                   ; $464c: $01 $03 $01
	rlca                                             ; $464f: $07
	dec  sp                                          ; $4650: $3b
	add  d                                           ; $4651: $82
	nop                                              ; $4652: $00
	ld   bc, $7304                                   ; $4653: $01 $04 $73
	adc  c                                           ; $4656: $89
	nop                                              ; $4657: $00
	rrca                                             ; $4658: $0f
	ld   [hl], e                                     ; $4659: $73
	inc  b                                           ; $465a: $04
	jr   z, jr_01e_46cc                              ; $465b: $28 $6f

	ld   bc, $0105                                   ; $465d: $01 $05 $01
	inc  bc                                          ; $4660: $03
	ld   bc, $010f                                   ; $4661: $01 $0f $01
	inc  bc                                          ; $4664: $03
	ld   bc, $7907                                   ; $4665: $01 $07 $79
	ld   [hl-], a                                    ; $4668: $32
	add  c                                           ; $4669: $81
	nop                                              ; $466a: $00
	ld   bc, $7304                                   ; $466b: $01 $04 $73

jr_01e_466e:
	adc  c                                           ; $466e: $89
	nop                                              ; $466f: $00
	dec  bc                                          ; $4670: $0b
	ld   [hl], e                                     ; $4671: $73
	inc  b                                           ; $4672: $04
	ld   a, [hl-]                                    ; $4673: $3a
	inc  bc                                          ; $4674: $03

jr_01e_4675:
	ld   [bc], a                                     ; $4675: $02
	ld   a, [hl+]                                    ; $4676: $2a
	add  hl, hl                                      ; $4677: $29
	ld   l, a                                        ; $4678: $6f
	ld   bc, $0103                                   ; $4679: $01 $03 $01
	ld   b, b                                        ; $467c: $40
	add  b                                           ; $467d: $80
	ld   b, a                                        ; $467e: $47
	ld   b, $20                                      ; $467f: $06 $20
	ld   [$3b07], sp                                 ; $4681: $08 $07 $3b
	ld   bc, $7503                                   ; $4684: $01 $03 $75
	adc  c                                           ; $4687: $89
	nop                                              ; $4688: $00
	dec  bc                                          ; $4689: $0b
	ld   [hl], e                                     ; $468a: $73
	inc  b                                           ; $468b: $04
	ld   c, d                                        ; $468c: $4a
	inc  bc                                          ; $468d: $03
	ld   [bc], a                                     ; $468e: $02
	ld   l, d                                        ; $468f: $6a
	ld   l, c                                        ; $4690: $69
	cpl                                              ; $4691: $2f
	ld   bc, $0103                                   ; $4692: $01 $03 $01
	ld   b, b                                        ; $4695: $40
	add  b                                           ; $4696: $80
	ld   b, a                                        ; $4697: $47
	ld   b, $60                                      ; $4698: $06 $60
	ld   [$7907], sp                                 ; $469a: $08 $07 $79
	ld   sp, $7307                                   ; $469d: $31 $07 $73
	adc  c                                           ; $46a0: $89
	nop                                              ; $46a1: $00
	ld   bc, $0270                                   ; $46a2: $01 $70 $02
	adc  [hl]                                        ; $46a5: $8e
	nop                                              ; $46a6: $00
	ld   [bc], a                                     ; $46a7: $02
	inc  bc                                          ; $46a8: $03
	ld   bc, $8970                                   ; $46a9: $01 $70 $89
	nop                                              ; $46ac: $00
	nop                                              ; $46ad: $00
	ld   [hl], a                                     ; $46ae: $77
	add  h                                           ; $46af: $84
	nop                                              ; $46b0: $00
	ld   b, $5e                                      ; $46b1: $06 $5e
	inc  bc                                          ; $46b3: $03
	ld   bc, $0107                                   ; $46b4: $01 $07 $01
	inc  bc                                          ; $46b7: $03
	ld   e, c                                        ; $46b8: $59
	add  h                                           ; $46b9: $84
	nop                                              ; $46ba: $00
	nop                                              ; $46bb: $00
	ld   [hl], a                                     ; $46bc: $77
	adc  c                                           ; $46bd: $89
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	ld   [hl], a                                     ; $46c0: $77
	add  h                                           ; $46c1: $84
	nop                                              ; $46c2: $00
	ld   b, $6e                                      ; $46c3: $06 $6e
	inc  bc                                          ; $46c5: $03
	ld   bc, $0107                                   ; $46c6: $01 $07 $01
	inc  bc                                          ; $46c9: $03
	ld   l, c                                        ; $46ca: $69
	add  h                                           ; $46cb: $84

jr_01e_46cc:
	nop                                              ; $46cc: $00
	nop                                              ; $46cd: $00
	ld   [hl], a                                     ; $46ce: $77
	adc  c                                           ; $46cf: $89
	nop                                              ; $46d0: $00
	nop                                              ; $46d1: $00
	ld   [hl], a                                     ; $46d2: $77
	add  h                                           ; $46d3: $84
	nop                                              ; $46d4: $00
	ld   b, $58                                      ; $46d5: $06 $58
	jr   nc, jr_01e_46ec                             ; $46d7: $30 $13

	ld   bc, $0103                                   ; $46d9: $01 $03 $01
	ld   a, b                                        ; $46dc: $78
	add  h                                           ; $46dd: $84
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	ld   [hl], a                                     ; $46e0: $77
	adc  c                                           ; $46e1: $89
	nop                                              ; $46e2: $00
	nop                                              ; $46e3: $00
	ld   a, b                                        ; $46e4: $78
	sub  c                                           ; $46e5: $91
	nop                                              ; $46e6: $00
	nop                                              ; $46e7: $00
	ld   a, b                                        ; $46e8: $78
	adc  c                                           ; $46e9: $89
	nop                                              ; $46ea: $00
	nop                                              ; $46eb: $00

jr_01e_46ec:
	ld   [hl], a                                     ; $46ec: $77
	add  b                                           ; $46ed: $80
	nop                                              ; $46ee: $00
	ld   [bc], a                                     ; $46ef: $02
	ld   c, $03                                      ; $46f0: $0e $03
	dec  c                                           ; $46f2: $0d
	adc  h                                           ; $46f3: $8c
	nop                                              ; $46f4: $00
	nop                                              ; $46f5: $00
	ld   [hl], a                                     ; $46f6: $77
	adc  c                                           ; $46f7: $89
	nop                                              ; $46f8: $00
	inc  c                                           ; $46f9: $0c
	ld   [hl], a                                     ; $46fa: $77
	nop                                              ; $46fb: $00
	inc  c                                           ; $46fc: $0c
	rlca                                             ; $46fd: $07
	ld   bc, $0c06                                   ; $46fe: $01 $06 $0c
	ld   [hl], h                                     ; $4701: $74
	rlca                                             ; $4702: $07
	ld   bc, $0072                                   ; $4703: $01 $72 $00
	ld   a, [hl]                                     ; $4706: $7e
	add  b                                           ; $4707: $80
	inc  bc                                          ; $4708: $03
	nop                                              ; $4709: $00
	ld   a, [hl]                                     ; $470a: $7e
	add  d                                           ; $470b: $82
	nop                                              ; $470c: $00
	nop                                              ; $470d: $00
	ld   [hl], a                                     ; $470e: $77
	adc  c                                           ; $470f: $89
	nop                                              ; $4710: $00
	inc  c                                           ; $4711: $0c
	ld   [hl], a                                     ; $4712: $77
	nop                                              ; $4713: $00
	add  hl, bc                                      ; $4714: $09
	ld   bc, $7e7f                                   ; $4715: $01 $7f $7e
	add  hl, bc                                      ; $4718: $09
	ld   [hl], c                                     ; $4719: $71
	ld   bc, $7f0f                                   ; $471a: $01 $0f $7f
	nop                                              ; $471d: $00
	ld   [hl], c                                     ; $471e: $71
	add  b                                           ; $471f: $80
	dec  c                                           ; $4720: $0d
	nop                                              ; $4721: $00
	ld   [hl], c                                     ; $4722: $71
	add  d                                           ; $4723: $82
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	ld   [hl], a                                     ; $4726: $77
	adc  c                                           ; $4727: $89
	nop                                              ; $4728: $00
	nop                                              ; $4729: $00
	ld   [hl], a                                     ; $472a: $77
	add  b                                           ; $472b: $80
	nop                                              ; $472c: $00
	ld   [$0376], sp                                 ; $472d: $08 $76 $03
	daa                                              ; $4730: $27
	inc  bc                                          ; $4731: $03
	ld   l, h                                        ; $4732: $6c
	ld   bc, $0f6c                                   ; $4733: $01 $6c $0f
	ld   e, a                                        ; $4736: $5f
	add  b                                           ; $4737: $80
	nop                                              ; $4738: $00
	ld   [bc], a                                     ; $4739: $02
	dec  [hl]                                        ; $473a: $35
	inc  h                                           ; $473b: $24
	ld   de, $0081                                   ; $473c: $11 $81 $00
	nop                                              ; $473f: $00
	ld   [hl], a                                     ; $4740: $77
	adc  c                                           ; $4741: $89
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	ld   [hl], a                                     ; $4744: $77
	add  d                                           ; $4745: $82
	nop                                              ; $4746: $00
	ld   b, $62                                      ; $4747: $06 $62
	inc  bc                                          ; $4749: $03
	inc  l                                           ; $474a: $2c
	ld   bc, $0f2c                                   ; $474b: $01 $2c $0f
	ld   l, a                                        ; $474e: $6f
	add  b                                           ; $474f: $80
	nop                                              ; $4750: $00
	ld   [bc], a                                     ; $4751: $02
	ld   b, l                                        ; $4752: $45
	ld   h, h                                        ; $4753: $64
	ld   hl, $0081                                   ; $4754: $21 $81 $00
	nop                                              ; $4757: $00
	ld   [hl], a                                     ; $4758: $77
	adc  c                                           ; $4759: $89
	nop                                              ; $475a: $00
	nop                                              ; $475b: $00
	ld   a, b                                        ; $475c: $78
	sub  c                                           ; $475d: $91
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	ld   a, b                                        ; $4760: $78
	rst  $38                                         ; $4761: $ff
	nop                                              ; $4762: $00
	rst  $38                                         ; $4763: $ff
	nop                                              ; $4764: $00
	rst  $38                                         ; $4765: $ff
	nop                                              ; $4766: $00
	add  $00                                         ; $4767: $c6 $00
	ld   c, l                                        ; $4769: $4d
	nop                                              ; $476a: $00
	ld   [bc], a                                     ; $476b: $02
	add  b                                           ; $476c: $80
	ld   bc, $8e03                                   ; $476d: $01 $03 $8e
	nop                                              ; $4770: $00
	ld   bc, $df02                                   ; $4771: $01 $02 $df
	adc  c                                           ; $4774: $89
	nop                                              ; $4775: $00
	inc  d                                           ; $4776: $14
	call c, $1407                                    ; $4777: $dc $07 $14
	ld   bc, $0103                                   ; $477a: $01 $03 $01
	rlca                                             ; $477d: $07
	ld   bc, $0103                                   ; $477e: $01 $03 $01
	rrca                                             ; $4781: $0f
	ld   bc, $0103                                   ; $4782: $01 $03 $01
	rlca                                             ; $4785: $07
	ld   bc, $0103                                   ; $4786: $01 $03 $01
	jr   jr_01e_478f                                 ; $4789: $18 $04

	call c, $0089                                    ; $478b: $dc $89 $00
	inc  d                                           ; $478e: $14

jr_01e_478f:
	jp   c, $2603                                    ; $478f: $da $03 $26

	ld   bc, $0103                                   ; $4792: $01 $03 $01
	rlca                                             ; $4795: $07
	ld   bc, $0103                                   ; $4796: $01 $03 $01
	rrca                                             ; $4799: $0f
	ld   bc, $0103                                   ; $479a: $01 $03 $01
	rlca                                             ; $479d: $07
	ld   bc, $0103                                   ; $479e: $01 $03 $01
	jr   z, jr_01e_47a7                              ; $47a1: $28 $04

	call c, $0089                                    ; $47a3: $dc $89 $00
	inc  d                                           ; $47a6: $14

jr_01e_47a7:
	call c, $3704                                    ; $47a7: $dc $04 $37
	ld   bc, $0103                                   ; $47aa: $01 $03 $01
	rlca                                             ; $47ad: $07
	ld   bc, $3103                                   ; $47ae: $01 $03 $31
	nop                                              ; $47b1: $00
	jr   nc, @+$11                                   ; $47b2: $30 $0f

	ld   bc, $0103                                   ; $47b4: $01 $03 $01
	rlca                                             ; $47b7: $07
	ld   bc, $043a                                   ; $47b8: $01 $3a $04
	call c, $0089                                    ; $47bb: $dc $89 $00
	inc  d                                           ; $47be: $14
	call c, $4704                                    ; $47bf: $dc $04 $47
	ld   bc, $0103                                   ; $47c2: $01 $03 $01
	rlca                                             ; $47c5: $07
	ld   bc, $4e03                                   ; $47c6: $01 $03 $4e
	rrca                                             ; $47c9: $0f
	ld   b, b                                        ; $47ca: $40
	rrca                                             ; $47cb: $0f
	ld   bc, $0103                                   ; $47cc: $01 $03 $01
	rlca                                             ; $47cf: $07
	ld   bc, LCDCInterruptHandler.return                                   ; $47d0: $01 $4a $04
	call c, $0089                                    ; $47d3: $dc $89 $00
	ld   a, [bc]                                     ; $47d6: $0a
	call c, $3904                                    ; $47d7: $dc $04 $39
	ld   bc, $016f                                   ; $47da: $01 $6f $01
	inc  bc                                          ; $47dd: $03
	ld   bc, $0107                                   ; $47de: $01 $07 $01
	ld   d, d                                        ; $47e1: $52
	add  l                                           ; $47e2: $85
	nop                                              ; $47e3: $00
	ld   [bc], a                                     ; $47e4: $02
	ld   bc, $da03                                   ; $47e5: $01 $03 $da
	adc  c                                           ; $47e8: $89
	nop                                              ; $47e9: $00
	dec  bc                                          ; $47ea: $0b
	call c, Call_01e_4904                            ; $47eb: $dc $04 $49
	ld   bc, $012f                                   ; $47ee: $01 $2f $01
	inc  bc                                          ; $47f1: $03
	ld   bc, $0107                                   ; $47f2: $01 $07 $01
	ld   l, l                                        ; $47f5: $6d
	rrca                                             ; $47f6: $0f
	add  h                                           ; $47f7: $84
	nop                                              ; $47f8: $00
	ld   [bc], a                                     ; $47f9: $02
	inc  bc                                          ; $47fa: $03
	rlca                                             ; $47fb: $07
	call c, $0089                                    ; $47fc: $dc $89 $00
	ld   bc, $02df                                   ; $47ff: $01 $df $02
	adc  [hl]                                        ; $4802: $8e
	nop                                              ; $4803: $00
	ld   [bc], a                                     ; $4804: $02
	inc  bc                                          ; $4805: $03
	ld   bc, $89df                                   ; $4806: $01 $df $89
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	ret  c                                           ; $480b: $d8

	add  h                                           ; $480c: $84
	nop                                              ; $480d: $00
	ld   b, $0e                                      ; $480e: $06 $0e
	inc  bc                                          ; $4810: $03
	ld   bc, $0107                                   ; $4811: $01 $07 $01
	inc  b                                           ; $4814: $04
	ld   c, $84                                      ; $4815: $0e $84
	nop                                              ; $4817: $00
	nop                                              ; $4818: $00
	ret  c                                           ; $4819: $d8

	adc  c                                           ; $481a: $89
	nop                                              ; $481b: $00
	nop                                              ; $481c: $00
	ret  c                                           ; $481d: $d8

	add  h                                           ; $481e: $84
	nop                                              ; $481f: $00
	ld   b, $09                                      ; $4820: $06 $09
	ld   bc, $0159                                   ; $4822: $01 $59 $01
	rrca                                             ; $4825: $0f
	ld   bc, $845e                                   ; $4826: $01 $5e $84
	nop                                              ; $4829: $00
	nop                                              ; $482a: $00
	ret  c                                           ; $482b: $d8

	adc  c                                           ; $482c: $89
	nop                                              ; $482d: $00
	nop                                              ; $482e: $00
	ret  c                                           ; $482f: $d8

	add  h                                           ; $4830: $84
	nop                                              ; $4831: $00
	ld   b, $5d                                      ; $4832: $06 $5d
	ld   bc, $0107                                   ; $4834: $01 $07 $01
	inc  bc                                          ; $4837: $03
	ld   bc, $8458                                   ; $4838: $01 $58 $84
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	ret  c                                           ; $483d: $d8

	adc  c                                           ; $483e: $89
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	cp   c                                           ; $4841: $b9
	sub  c                                           ; $4842: $91
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	cp   c                                           ; $4845: $b9
	adc  c                                           ; $4846: $89
	nop                                              ; $4847: $00
	nop                                              ; $4848: $00
	ret  c                                           ; $4849: $d8

	sub  c                                           ; $484a: $91
	nop                                              ; $484b: $00
	nop                                              ; $484c: $00
	ret  c                                           ; $484d: $d8

	adc  c                                           ; $484e: $89
	nop                                              ; $484f: $00
	nop                                              ; $4850: $00
	ret  c                                           ; $4851: $d8

	add  b                                           ; $4852: $80
	nop                                              ; $4853: $00
	add  hl, bc                                      ; $4854: $09

jr_01e_4855:
	ld   h, b                                        ; $4855: $60
	rrca                                             ; $4856: $0f
	ld   l, a                                        ; $4857: $6f
	halt                                             ; $4858: $76
	inc  bc                                          ; $4859: $03
	ld   bc, $7307                                   ; $485a: $01 $07 $73
	nop                                              ; $485d: $00
	ld   a, b                                        ; $485e: $78
	add  b                                           ; $485f: $80
	cp   $02                                         ; $4860: $fe $02
	db   $fc                                         ; $4862: $fc
	rlca                                             ; $4863: $07
	add  e                                           ; $4864: $83
	add  b                                           ; $4865: $80
	nop                                              ; $4866: $00
	nop                                              ; $4867: $00
	ret  c                                           ; $4868: $d8

	adc  c                                           ; $4869: $89

jr_01e_486a:
	nop                                              ; $486a: $00
	inc  c                                           ; $486b: $0c
	ret  c                                           ; $486c: $d8

	nop                                              ; $486d: $00
	ld   l, [hl]                                     ; $486e: $6e
	inc  bc                                          ; $486f: $03
	dec  b                                           ; $4870: $05
	ld   b, $1c                                      ; $4871: $06 $1c
	inc  bc                                          ; $4873: $03
	ld   bc, $7f0f                                   ; $4874: $01 $0f $7f
	nop                                              ; $4877: $00
	add  a                                           ; $4878: $87
	add  b                                           ; $4879: $80
	ld   [bc], a                                     ; $487a: $02
	ld   [bc], a                                     ; $487b: $02
	dec  b                                           ; $487c: $05
	inc  bc                                          ; $487d: $03

jr_01e_487e:
	add  c                                           ; $487e: $81
	add  b                                           ; $487f: $80
	nop                                              ; $4880: $00
	nop                                              ; $4881: $00
	ret  c                                           ; $4882: $d8

	adc  c                                           ; $4883: $89
	nop                                              ; $4884: $00
	inc  d                                           ; $4885: $14
	ret  c                                           ; $4886: $d8

	nop                                              ; $4887: $00
	ld   l, h                                        ; $4888: $6c
	rlca                                             ; $4889: $07
	inc  e                                           ; $488a: $1c
	dec  de                                          ; $488b: $1b
	ld   l, h                                        ; $488c: $6c
	ld   a, [hl]                                     ; $488d: $7e
	inc  bc                                          ; $488e: $03
	ld   bc, $807c                                   ; $488f: $01 $7c $80
	rrca                                             ; $4892: $0f
	ld   bc, $6fb6                                   ; $4893: $01 $b6 $6f
	ld   bc, $5503                                   ; $4896: $01 $03 $55
	nop                                              ; $4899: $00
	ret  c                                           ; $489a: $d8

	adc  c                                           ; $489b: $89
	nop                                              ; $489c: $00
	nop                                              ; $489d: $00
	ret  c                                           ; $489e: $d8

	add  b                                           ; $489f: $80
	nop                                              ; $48a0: $00
	ld   de, $036a                                   ; $48a1: $11 $6a $03
	ld   l, c                                        ; $48a4: $69

jr_01e_48a5:
	nop                                              ; $48a5: $00
	ld   a, e                                        ; $48a6: $7b
	ld   bc, $7903                                   ; $48a7: $01 $03 $79
	add  a                                           ; $48aa: $87
	ld   a, [bc]                                     ; $48ab: $0a
	ld   bc, $2fc4                                   ; $48ac: $01 $c4 $2f
	ld   bc, $6503                                   ; $48af: $01 $03 $65
	nop                                              ; $48b2: $00
	ret  c                                           ; $48b3: $d8

	adc  c                                           ; $48b4: $89
	nop                                              ; $48b5: $00

jr_01e_48b6:
	nop                                              ; $48b6: $00
	cp   c                                           ; $48b7: $b9
	sub  c                                           ; $48b8: $91
	nop                                              ; $48b9: $00
	nop                                              ; $48ba: $00
	cp   c                                           ; $48bb: $b9
	rst  $38                                         ; $48bc: $ff
	nop                                              ; $48bd: $00
	rst  $38                                         ; $48be: $ff
	nop                                              ; $48bf: $00
	rst  $38                                         ; $48c0: $ff
	nop                                              ; $48c1: $00
	add  $00                                         ; $48c2: $c6 $00
	ld   a, c                                        ; $48c4: $79
	nop                                              ; $48c5: $00
	nop                                              ; $48c6: $00
	ld   bc, $0082                                   ; $48c7: $01 $82 $00
	nop                                              ; $48ca: $00
	ld   b, b                                        ; $48cb: $40
	add  e                                           ; $48cc: $83
	nop                                              ; $48cd: $00
	nop                                              ; $48ce: $00
	ld   b, b                                        ; $48cf: $40
	add  e                                           ; $48d0: $83
	nop                                              ; $48d1: $00
	nop                                              ; $48d2: $00
	jr   nz, jr_01e_4855                             ; $48d3: $20 $80

	nop                                              ; $48d5: $00
	nop                                              ; $48d6: $00
	add  hl, hl                                      ; $48d7: $29
	adc  c                                           ; $48d8: $89
	nop                                              ; $48d9: $00
	nop                                              ; $48da: $00
	add  hl, bc                                      ; $48db: $09
	add  d                                           ; $48dc: $82
	nop                                              ; $48dd: $00
	nop                                              ; $48de: $00
	ld   b, b                                        ; $48df: $40
	add  e                                           ; $48e0: $83
	nop                                              ; $48e1: $00
	nop                                              ; $48e2: $00
	ld   b, b                                        ; $48e3: $40
	add  d                                           ; $48e4: $82
	nop                                              ; $48e5: $00
	nop                                              ; $48e6: $00
	jr   nz, jr_01e_486a                             ; $48e7: $20 $81

	nop                                              ; $48e9: $00
	nop                                              ; $48ea: $00
	add  hl, hl                                      ; $48eb: $29
	adc  c                                           ; $48ec: $89
	nop                                              ; $48ed: $00
	nop                                              ; $48ee: $00
	add  hl, bc                                      ; $48ef: $09
	add  d                                           ; $48f0: $82
	nop                                              ; $48f1: $00
	nop                                              ; $48f2: $00
	ld   b, b                                        ; $48f3: $40
	add  d                                           ; $48f4: $82
	nop                                              ; $48f5: $00
	nop                                              ; $48f6: $00
	ld   b, b                                        ; $48f7: $40
	add  e                                           ; $48f8: $83
	nop                                              ; $48f9: $00
	nop                                              ; $48fa: $00
	jr   nz, jr_01e_487e                             ; $48fb: $20 $81

	nop                                              ; $48fd: $00

jr_01e_48fe:
	nop                                              ; $48fe: $00
	add  hl, hl                                      ; $48ff: $29
	adc  c                                           ; $4900: $89
	nop                                              ; $4901: $00
	nop                                              ; $4902: $00
	add  hl, bc                                      ; $4903: $09

Call_01e_4904:
	add  b                                           ; $4904: $80
	nop                                              ; $4905: $00
	nop                                              ; $4906: $00
	ld   bc, $0084                                   ; $4907: $01 $84 $00
	nop                                              ; $490a: $00
	jr   nz, @-$7a                                   ; $490b: $20 $84

	nop                                              ; $490d: $00

jr_01e_490e:
	nop                                              ; $490e: $00
	ld   bc, $0080                                   ; $490f: $01 $80 $00
	nop                                              ; $4912: $00
	add  hl, hl                                      ; $4913: $29
	adc  c                                           ; $4914: $89
	nop                                              ; $4915: $00
	nop                                              ; $4916: $00
	add  hl, bc                                      ; $4917: $09
	add  b                                           ; $4918: $80
	nop                                              ; $4919: $00
	nop                                              ; $491a: $00
	ld   bc, $0084                                   ; $491b: $01 $84 $00
	nop                                              ; $491e: $00
	jr   nz, jr_01e_48a5                             ; $491f: $20 $84

	nop                                              ; $4921: $00
	inc  bc                                          ; $4922: $03

jr_01e_4923:
	ld   bc, $2000                                   ; $4923: $01 $00 $20
	add  hl, bc                                      ; $4926: $09
	adc  c                                           ; $4927: $89
	nop                                              ; $4928: $00
	ld   bc, $4149                                   ; $4929: $01 $49 $41
	add  [hl]                                        ; $492c: $86
	nop                                              ; $492d: $00
	ld   [bc], a                                     ; $492e: $02
	jr   nz, jr_01e_4931                             ; $492f: $20 $00

jr_01e_4931:
	jr   nz, jr_01e_48b6                             ; $4931: $20 $83

	nop                                              ; $4933: $00
	ld   [bc], a                                     ; $4934: $02
	jr   nz, jr_01e_4958                             ; $4935: $20 $21

	add  hl, bc                                      ; $4937: $09
	adc  c                                           ; $4938: $89
	nop                                              ; $4939: $00
	ld   bc, $4149                                   ; $493a: $01 $49 $41
	adc  [hl]                                        ; $493d: $8e
	nop                                              ; $493e: $00
	ld   [bc], a                                     ; $493f: $02
	jr   nz, jr_01e_4963                             ; $4940: $20 $21

	add  hl, bc                                      ; $4942: $09
	adc  c                                           ; $4943: $89
	nop                                              ; $4944: $00
	ld   bc, $4149                                   ; $4945: $01 $49 $41
	adc  [hl]                                        ; $4948: $8e
	nop                                              ; $4949: $00
	ld   [bc], a                                     ; $494a: $02
	jr   nz, jr_01e_496e                             ; $494b: $20 $21

	add  hl, bc                                      ; $494d: $09
	adc  c                                           ; $494e: $89
	nop                                              ; $494f: $00
	ld   bc, $0109                                   ; $4950: $01 $09 $01
	adc  [hl]                                        ; $4953: $8e
	nop                                              ; $4954: $00
	ld   [bc], a                                     ; $4955: $02
	jr   nz, jr_01e_4979                             ; $4956: $20 $21

jr_01e_4958:
	add  hl, bc                                      ; $4958: $09
	adc  c                                           ; $4959: $89
	nop                                              ; $495a: $00
	ld   bc, $0109                                   ; $495b: $01 $09 $01
	adc  [hl]                                        ; $495e: $8e
	nop                                              ; $495f: $00
	ld   [bc], a                                     ; $4960: $02
	jr   nz, jr_01e_4984                             ; $4961: $20 $21

jr_01e_4963:
	add  hl, bc                                      ; $4963: $09
	adc  c                                           ; $4964: $89
	nop                                              ; $4965: $00
	ld   bc, $0109                                   ; $4966: $01 $09 $01
	adc  [hl]                                        ; $4969: $8e
	nop                                              ; $496a: $00
	ld   [bc], a                                     ; $496b: $02
	jr   nz, jr_01e_498f                             ; $496c: $20 $21

jr_01e_496e:
	add  hl, bc                                      ; $496e: $09
	adc  c                                           ; $496f: $89
	nop                                              ; $4970: $00
	ld   bc, $0109                                   ; $4971: $01 $09 $01
	add  [hl]                                        ; $4974: $86
	nop                                              ; $4975: $00
	ld   [bc], a                                     ; $4976: $02
	jr   nz, jr_01e_4979                             ; $4977: $20 $00

jr_01e_4979:
	jr   nz, jr_01e_48fe                             ; $4979: $20 $83

	nop                                              ; $497b: $00
	ld   [bc], a                                     ; $497c: $02
	jr   nz, jr_01e_49a0                             ; $497d: $20 $21

	add  hl, bc                                      ; $497f: $09
	adc  c                                           ; $4980: $89
	nop                                              ; $4981: $00
	ld   [bc], a                                     ; $4982: $02
	add  hl, bc                                      ; $4983: $09

jr_01e_4984:
	nop                                              ; $4984: $00
	ld   bc, $0085                                   ; $4985: $01 $85 $00
	nop                                              ; $4988: $00
	jr   nz, jr_01e_490e                             ; $4989: $20 $83

	nop                                              ; $498b: $00
	inc  b                                           ; $498c: $04
	jr   nz, jr_01e_49f0                             ; $498d: $20 $61

jr_01e_498f:
	nop                                              ; $498f: $00
	ld   h, b                                        ; $4990: $60
	add  hl, bc                                      ; $4991: $09
	adc  c                                           ; $4992: $89
	nop                                              ; $4993: $00
	nop                                              ; $4994: $00
	add  hl, bc                                      ; $4995: $09
	add  b                                           ; $4996: $80
	nop                                              ; $4997: $00
	nop                                              ; $4998: $00
	ld   bc, $0084                                   ; $4999: $01 $84 $00
	nop                                              ; $499c: $00
	jr   nz, jr_01e_4923                             ; $499d: $20 $84

	nop                                              ; $499f: $00

jr_01e_49a0:
	inc  bc                                          ; $49a0: $03
	ld   b, c                                        ; $49a1: $41
	nop                                              ; $49a2: $00
	ld   h, b                                        ; $49a3: $60
	add  hl, bc                                      ; $49a4: $09
	adc  c                                           ; $49a5: $89
	nop                                              ; $49a6: $00
	nop                                              ; $49a7: $00
	add  hl, bc                                      ; $49a8: $09
	adc  [hl]                                        ; $49a9: $8e
	nop                                              ; $49aa: $00
	nop                                              ; $49ab: $00
	ld   h, b                                        ; $49ac: $60
	add  b                                           ; $49ad: $80
	nop                                              ; $49ae: $00
	nop                                              ; $49af: $00
	ld   l, c                                        ; $49b0: $69
	adc  c                                           ; $49b1: $89
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	add  hl, bc                                      ; $49b4: $09
	adc  h                                           ; $49b5: $8c
	nop                                              ; $49b6: $00
	nop                                              ; $49b7: $00
	ld   h, b                                        ; $49b8: $60
	add  d                                           ; $49b9: $82
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00
	ld   l, c                                        ; $49bc: $69
	adc  c                                           ; $49bd: $89
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	add  hl, bc                                      ; $49c0: $09
	adc  h                                           ; $49c1: $8c
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	ld   h, b                                        ; $49c4: $60
	add  d                                           ; $49c5: $82
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	ld   l, c                                        ; $49c8: $69
	adc  c                                           ; $49c9: $89
	nop                                              ; $49ca: $00
	nop                                              ; $49cb: $00
	add  hl, bc                                      ; $49cc: $09
	adc  l                                           ; $49cd: $8d
	nop                                              ; $49ce: $00
	nop                                              ; $49cf: $00
	ld   h, b                                        ; $49d0: $60
	add  c                                           ; $49d1: $81
	nop                                              ; $49d2: $00
	nop                                              ; $49d3: $00
	ld   l, c                                        ; $49d4: $69
	rst  $38                                         ; $49d5: $ff
	nop                                              ; $49d6: $00
	rst  $38                                         ; $49d7: $ff
	nop                                              ; $49d8: $00
	rst  $38                                         ; $49d9: $ff
	nop                                              ; $49da: $00
	add  $00                                         ; $49db: $c6 $00
	dec  [hl]                                        ; $49dd: $35
	nop                                              ; $49de: $00
	add  d                                           ; $49df: $82
	nop                                              ; $49e0: $00
	dec  b                                           ; $49e1: $05
	rlca                                             ; $49e2: $07
	nop                                              ; $49e3: $00
	ld   [$1300], sp                                 ; $49e4: $08 $00 $13
	inc  bc                                          ; $49e7: $03
	add  b                                           ; $49e8: $80
	ld   b, $01                                      ; $49e9: $06 $01
	inc  d                                           ; $49eb: $14
	inc  b                                           ; $49ec: $04
	add  b                                           ; $49ed: $80
	nop                                              ; $49ee: $00
	nop                                              ; $49ef: $00

jr_01e_49f0:
	add  hl, bc                                      ; $49f0: $09
	add  c                                           ; $49f1: $81
	ld   bc, $0408                                   ; $49f2: $01 $08 $04
	nop                                              ; $49f5: $00
	ld   [bc], a                                     ; $49f6: $02
	nop                                              ; $49f7: $00
	ld   bc, $1000                                   ; $49f8: $01 $00 $10
	nop                                              ; $49fb: $00
	db   $10                                         ; $49fc: $10
	add  a                                           ; $49fd: $87
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00

jr_01e_4a00:
	add  b                                           ; $4a00: $80
	add  c                                           ; $4a01: $81
	nop                                              ; $4a02: $00
	db   $10                                         ; $4a03: $10
	ld   [hl], b                                     ; $4a04: $70
	nop                                              ; $4a05: $00
	ld   c, b                                        ; $4a06: $48
	ld   b, b                                        ; $4a07: $40
	or   h                                           ; $4a08: $b4
	ldh  a, [$50]                                    ; $4a09: $f0 $50
	ldh  a, [$50]                                    ; $4a0b: $f0 $50
	ldh  a, [rP1]                                    ; $4a0d: $f0 $00
	ld   b, b                                        ; $4a0f: $40
	inc  c                                           ; $4a10: $0c
	nop                                              ; $4a11: $00
	stop                                             ; $4a12: $10 $00
	ldh  [$83], a                                    ; $4a14: $e0 $83
	nop                                              ; $4a16: $00
	ld   l, $06                                      ; $4a17: $2e $06
	nop                                              ; $4a19: $00
	add  hl, de                                      ; $4a1a: $19
	nop                                              ; $4a1b: $00
	dec  h                                           ; $4a1c: $25
	dec  b                                           ; $4a1d: $05
	ld   c, a                                        ; $4a1e: $4f
	rrca                                             ; $4a1f: $0f
	ld   a, [de]                                     ; $4a20: $1a
	dec  de                                          ; $4a21: $1b
	add  hl, de                                      ; $4a22: $19
	rra                                              ; $4a23: $1f
	or   a                                           ; $4a24: $b7
	ccf                                              ; $4a25: $3f
	dec  h                                           ; $4a26: $25
	cpl                                              ; $4a27: $2f
	dec  a                                           ; $4a28: $3d
	ccf                                              ; $4a29: $3f
	or   l                                           ; $4a2a: $b5
	ccf                                              ; $4a2b: $3f
	dec  e                                           ; $4a2c: $1d
	rra                                              ; $4a2d: $1f
	ld   d, $1f                                      ; $4a2e: $16 $1f
	ld   c, c                                        ; $4a30: $49
	rrca                                             ; $4a31: $0f
	ld   h, $06                                      ; $4a32: $26 $06
	add  b                                           ; $4a34: $80
	nop                                              ; $4a35: $00
	reti                                             ; $4a36: $d9


	nop                                              ; $4a37: $00
	and  [hl]                                        ; $4a38: $a6
	nop                                              ; $4a39: $00
	stop                                             ; $4a3a: $10 $00
	call z, $dac0                                    ; $4a3c: $cc $c0 $da
	ret  c                                           ; $4a3f: $d8

	ld   l, h                                        ; $4a40: $6c
	db   $fc                                         ; $4a41: $fc
	sub  h                                           ; $4a42: $94
	db   $fc                                         ; $4a43: $fc
	db   $dd                                         ; $4a44: $dd
	db   $fc                                         ; $4a45: $fc
	call nc, $fc81                                   ; $4a46: $d4 $81 $fc
	inc  bc                                          ; $4a49: $03
	db   $ec                                         ; $4a4a: $ec
	db   $fc                                         ; $4a4b: $fc
	ld   [hl], b                                     ; $4a4c: $70
	ldh  a, [$80]                                    ; $4a4d: $f0 $80
	ld   hl, sp+$14                                  ; $4a4f: $f8 $14
	add  hl, bc                                      ; $4a51: $09
	ld   l, b                                        ; $4a52: $68
	ld   [hl], d                                     ; $4a53: $72
	ld   [hl], b                                     ; $4a54: $70
	inc  b                                           ; $4a55: $04
	nop                                              ; $4a56: $00
	ld   l, b                                        ; $4a57: $68
	nop                                              ; $4a58: $00
	sub  b                                           ; $4a59: $90
	nop                                              ; $4a5a: $00
	rlca                                             ; $4a5b: $07
	nop                                              ; $4a5c: $00
	jr   jr_01e_4a5f                                 ; $4a5d: $18 $00

jr_01e_4a5f:
	ld   l, $0e                                      ; $4a5f: $2e $0e
	ld   d, b                                        ; $4a61: $50
	jr   @+$53                                       ; $4a62: $18 $51

	add  hl, de                                      ; $4a64: $19
	ld   d, d                                        ; $4a65: $52
	add  c                                           ; $4a66: $81
	ld   [de], a                                     ; $4a67: $12
	add  b                                           ; $4a68: $80
	nop                                              ; $4a69: $00
	inc  c                                           ; $4a6a: $0c
	ld   b, h                                        ; $4a6b: $44
	inc  b                                           ; $4a6c: $04
	ld   b, [hl]                                     ; $4a6d: $46
	ld   b, $4b                                      ; $4a6e: $06 $4b
	rrca                                             ; $4a70: $0f
	jr   nz, jr_01e_4a7a                             ; $4a71: $20 $07

	inc  bc                                          ; $4a73: $03
	nop                                              ; $4a74: $00
	add  hl, de                                      ; $4a75: $19
	nop                                              ; $4a76: $00
	ld   b, $81                                      ; $4a77: $06 $81
	nop                                              ; $4a79: $00

jr_01e_4a7a:
	ld   [bc], a                                     ; $4a7a: $02
	ret  nz                                          ; $4a7b: $c0

	nop                                              ; $4a7c: $00
	jr   c, jr_01e_4a00                              ; $4a7d: $38 $81

	nop                                              ; $4a7f: $00
	ld   bc, $7074                                   ; $4a80: $01 $74 $70
	add  b                                           ; $4a83: $80
	jr   nc, jr_01e_4a86                             ; $4a84: $30 $00

jr_01e_4a86:
	ld   a, [de]                                     ; $4a86: $1a
	add  c                                           ; $4a87: $81
	jr   jr_01e_4a98                                 ; $4a88: $18 $0e

	db   $10                                         ; $4a8a: $10
	jr   jr_01e_4a9f                                 ; $4a8b: $18 $12

	jr   jr_01e_4aa3                                 ; $4a8d: $18 $14

	db   $10                                         ; $4a8f: $10
	call nz, $84c0                                   ; $4a90: $c4 $c0 $84
	add  b                                           ; $4a93: $80
	ld   [rROMB1], sp                                 ; $4a94: $08 $00 $30
	nop                                              ; $4a97: $00

jr_01e_4a98:
	ret  nz                                          ; $4a98: $c0

	add  c                                           ; $4a99: $81
	nop                                              ; $4a9a: $00
	ld   [bc], a                                     ; $4a9b: $02
	ld   bc, $0100                                   ; $4a9c: $01 $00 $01

jr_01e_4a9f:
	add  e                                           ; $4a9f: $83
	nop                                              ; $4aa0: $00
	inc  b                                           ; $4aa1: $04
	ld   b, d                                        ; $4aa2: $42

jr_01e_4aa3:
	nop                                              ; $4aa3: $00
	add  [hl]                                        ; $4aa4: $86
	nop                                              ; $4aa5: $00
	ld   c, b                                        ; $4aa6: $48
	add  c                                           ; $4aa7: $81
	nop                                              ; $4aa8: $00
	ld   d, $84                                      ; $4aa9: $16 $84
	nop                                              ; $4aab: $00
	inc  c                                           ; $4aac: $0c
	nop                                              ; $4aad: $00
	inc  d                                           ; $4aae: $14
	nop                                              ; $4aaf: $00
	stop                                             ; $4ab0: $10 $00
	ld   a, [de]                                     ; $4ab2: $1a
	nop                                              ; $4ab3: $00
	ld   d, $00                                      ; $4ab4: $16 $00
	inc  c                                           ; $4ab6: $0c
	nop                                              ; $4ab7: $00
	ld   [$3400], sp                                 ; $4ab8: $08 $00 $34
	nop                                              ; $4abb: $00
	ld   a, [hl-]                                    ; $4abc: $3a
	nop                                              ; $4abd: $00
	rlca                                             ; $4abe: $07
	nop                                              ; $4abf: $00
	ld   bc, $0081                                   ; $4ac0: $01 $81 $00
	inc  b                                           ; $4ac3: $04
	ld   [$4d00], sp                                 ; $4ac4: $08 $00 $4d
	nop                                              ; $4ac7: $00
	ld   b, c                                        ; $4ac8: $41
	add  c                                           ; $4ac9: $81
	nop                                              ; $4aca: $00
	inc  c                                           ; $4acb: $0c
	inc  b                                           ; $4acc: $04
	nop                                              ; $4acd: $00
	ld   bc, $1200                                   ; $4ace: $01 $00 $12
	nop                                              ; $4ad1: $00
	ld   de, $0a00                                   ; $4ad2: $11 $00 $0a
	nop                                              ; $4ad5: $00
	ld   d, b                                        ; $4ad6: $50
	nop                                              ; $4ad7: $00
	ld   e, b                                        ; $4ad8: $58
	rst  $38                                         ; $4ad9: $ff
	nop                                              ; $4ada: $00
	rst  $38                                         ; $4adb: $ff
	nop                                              ; $4adc: $00
	rst  $38                                         ; $4add: $ff
	nop                                              ; $4ade: $00
	rst  $38                                         ; $4adf: $ff
	nop                                              ; $4ae0: $00
	rst  $38                                         ; $4ae1: $ff
	nop                                              ; $4ae2: $00
	rst  $38                                         ; $4ae3: $ff
	nop                                              ; $4ae4: $00
	rst  $38                                         ; $4ae5: $ff
	nop                                              ; $4ae6: $00
	rst  $38                                         ; $4ae7: $ff
	nop                                              ; $4ae8: $00
	rst  $38                                         ; $4ae9: $ff
	nop                                              ; $4aea: $00
	rst  $38                                         ; $4aeb: $ff
	nop                                              ; $4aec: $00
	rst  $38                                         ; $4aed: $ff
	nop                                              ; $4aee: $00
	rst  $38                                         ; $4aef: $ff
	nop                                              ; $4af0: $00
	rst  $38                                         ; $4af1: $ff
	nop                                              ; $4af2: $00
	ldh  a, [rP1]                                    ; $4af3: $f0 $00
	adc  c                                           ; $4af5: $89
	nop                                              ; $4af6: $00
	nop                                              ; $4af7: $00
	ld   [bc], a                                     ; $4af8: $02
	sub  c                                           ; $4af9: $91
	nop                                              ; $4afa: $00
	nop                                              ; $4afb: $00
	ld   [bc], a                                     ; $4afc: $02
	adc  c                                           ; $4afd: $89
	nop                                              ; $4afe: $00
	add  b                                           ; $4aff: $80
	ld   [bc], a                                     ; $4b00: $02
	adc  a                                           ; $4b01: $8f
	nop                                              ; $4b02: $00
	add  b                                           ; $4b03: $80
	ld   [bc], a                                     ; $4b04: $02
	adc  c                                           ; $4b05: $89
	nop                                              ; $4b06: $00
	add  b                                           ; $4b07: $80
	ld   [bc], a                                     ; $4b08: $02
	adc  a                                           ; $4b09: $8f
	nop                                              ; $4b0a: $00
	add  b                                           ; $4b0b: $80
	ld   [bc], a                                     ; $4b0c: $02
	adc  c                                           ; $4b0d: $89
	nop                                              ; $4b0e: $00
	add  b                                           ; $4b0f: $80
	ld   [bc], a                                     ; $4b10: $02
	adc  a                                           ; $4b11: $8f
	nop                                              ; $4b12: $00
	add  b                                           ; $4b13: $80
	ld   [bc], a                                     ; $4b14: $02
	adc  c                                           ; $4b15: $89
	nop                                              ; $4b16: $00
	add  b                                           ; $4b17: $80
	ld   [bc], a                                     ; $4b18: $02
	adc  a                                           ; $4b19: $8f
	nop                                              ; $4b1a: $00
	add  b                                           ; $4b1b: $80
	ld   [bc], a                                     ; $4b1c: $02
	adc  c                                           ; $4b1d: $89
	nop                                              ; $4b1e: $00
	add  b                                           ; $4b1f: $80
	ld   [bc], a                                     ; $4b20: $02
	ld   bc, $0100                                   ; $4b21: $01 $00 $01
	add  c                                           ; $4b24: $81
	nop                                              ; $4b25: $00
	nop                                              ; $4b26: $00
	ld   bc, $0089                                   ; $4b27: $01 $89 $00
	add  b                                           ; $4b2a: $80
	ld   [bc], a                                     ; $4b2b: $02
	adc  c                                           ; $4b2c: $89
	nop                                              ; $4b2d: $00
	add  b                                           ; $4b2e: $80
	ld   [bc], a                                     ; $4b2f: $02
	ld   bc, $0100                                   ; $4b30: $01 $00 $01
	add  c                                           ; $4b33: $81
	nop                                              ; $4b34: $00
	nop                                              ; $4b35: $00
	ld   bc, $0089                                   ; $4b36: $01 $89 $00
	add  b                                           ; $4b39: $80
	ld   [bc], a                                     ; $4b3a: $02
	adc  c                                           ; $4b3b: $89
	nop                                              ; $4b3c: $00
	add  b                                           ; $4b3d: $80
	ld   [bc], a                                     ; $4b3e: $02
	adc  a                                           ; $4b3f: $8f
	nop                                              ; $4b40: $00
	add  b                                           ; $4b41: $80
	ld   [bc], a                                     ; $4b42: $02
	adc  c                                           ; $4b43: $89
	nop                                              ; $4b44: $00
	add  b                                           ; $4b45: $80
	ld   [bc], a                                     ; $4b46: $02
	adc  a                                           ; $4b47: $8f
	nop                                              ; $4b48: $00
	add  b                                           ; $4b49: $80
	ld   [bc], a                                     ; $4b4a: $02
	adc  c                                           ; $4b4b: $89
	nop                                              ; $4b4c: $00
	add  b                                           ; $4b4d: $80
	ld   [bc], a                                     ; $4b4e: $02
	adc  a                                           ; $4b4f: $8f
	nop                                              ; $4b50: $00
	add  b                                           ; $4b51: $80
	ld   [bc], a                                     ; $4b52: $02
	adc  c                                           ; $4b53: $89
	nop                                              ; $4b54: $00
	add  b                                           ; $4b55: $80
	ld   [bc], a                                     ; $4b56: $02
	adc  a                                           ; $4b57: $8f
	nop                                              ; $4b58: $00
	add  b                                           ; $4b59: $80
	ld   [bc], a                                     ; $4b5a: $02
	adc  c                                           ; $4b5b: $89
	nop                                              ; $4b5c: $00
	add  b                                           ; $4b5d: $80
	ld   [bc], a                                     ; $4b5e: $02
	adc  a                                           ; $4b5f: $8f
	nop                                              ; $4b60: $00
	add  b                                           ; $4b61: $80
	ld   [bc], a                                     ; $4b62: $02
	adc  c                                           ; $4b63: $89
	nop                                              ; $4b64: $00
	add  b                                           ; $4b65: $80
	ld   [bc], a                                     ; $4b66: $02
	adc  a                                           ; $4b67: $8f
	nop                                              ; $4b68: $00
	add  b                                           ; $4b69: $80
	ld   [bc], a                                     ; $4b6a: $02
	adc  c                                           ; $4b6b: $89
	nop                                              ; $4b6c: $00
	add  b                                           ; $4b6d: $80
	ld   [bc], a                                     ; $4b6e: $02
	adc  a                                           ; $4b6f: $8f
	nop                                              ; $4b70: $00
	add  b                                           ; $4b71: $80
	ld   [bc], a                                     ; $4b72: $02
	adc  c                                           ; $4b73: $89
	nop                                              ; $4b74: $00
	add  b                                           ; $4b75: $80
	ld   [bc], a                                     ; $4b76: $02
	adc  a                                           ; $4b77: $8f
	nop                                              ; $4b78: $00
	add  b                                           ; $4b79: $80
	ld   [bc], a                                     ; $4b7a: $02
	adc  c                                           ; $4b7b: $89
	nop                                              ; $4b7c: $00
	add  b                                           ; $4b7d: $80
	ld   [bc], a                                     ; $4b7e: $02
	adc  a                                           ; $4b7f: $8f
	nop                                              ; $4b80: $00
	add  b                                           ; $4b81: $80
	ld   [bc], a                                     ; $4b82: $02
	adc  c                                           ; $4b83: $89
	nop                                              ; $4b84: $00
	add  b                                           ; $4b85: $80
	ld   [bc], a                                     ; $4b86: $02
	adc  a                                           ; $4b87: $8f
	nop                                              ; $4b88: $00
	add  b                                           ; $4b89: $80
	ld   [bc], a                                     ; $4b8a: $02
	adc  c                                           ; $4b8b: $89
	nop                                              ; $4b8c: $00
	nop                                              ; $4b8d: $00
	ld   [bc], a                                     ; $4b8e: $02
	sub  c                                           ; $4b8f: $91
	nop                                              ; $4b90: $00
	nop                                              ; $4b91: $00
	ld   [bc], a                                     ; $4b92: $02
	adc  c                                           ; $4b93: $89
	nop                                              ; $4b94: $00
	add  b                                           ; $4b95: $80
	ld   [bc], a                                     ; $4b96: $02
	adc  a                                           ; $4b97: $8f
	nop                                              ; $4b98: $00
	add  b                                           ; $4b99: $80
	ld   [bc], a                                     ; $4b9a: $02
	adc  c                                           ; $4b9b: $89
	nop                                              ; $4b9c: $00
	add  b                                           ; $4b9d: $80
	ld   [bc], a                                     ; $4b9e: $02
	adc  a                                           ; $4b9f: $8f
	nop                                              ; $4ba0: $00
	add  b                                           ; $4ba1: $80
	ld   [bc], a                                     ; $4ba2: $02
	adc  c                                           ; $4ba3: $89
	nop                                              ; $4ba4: $00
	add  b                                           ; $4ba5: $80
	ld   [bc], a                                     ; $4ba6: $02
	adc  a                                           ; $4ba7: $8f
	nop                                              ; $4ba8: $00
	add  b                                           ; $4ba9: $80
	ld   [bc], a                                     ; $4baa: $02
	adc  c                                           ; $4bab: $89
	nop                                              ; $4bac: $00
	add  b                                           ; $4bad: $80
	ld   [bc], a                                     ; $4bae: $02
	adc  a                                           ; $4baf: $8f
	nop                                              ; $4bb0: $00
	add  b                                           ; $4bb1: $80
	ld   [bc], a                                     ; $4bb2: $02
	adc  c                                           ; $4bb3: $89
	nop                                              ; $4bb4: $00
	add  b                                           ; $4bb5: $80
	ld   [bc], a                                     ; $4bb6: $02
	adc  a                                           ; $4bb7: $8f
	nop                                              ; $4bb8: $00
	add  b                                           ; $4bb9: $80
	ld   [bc], a                                     ; $4bba: $02
	adc  c                                           ; $4bbb: $89
	nop                                              ; $4bbc: $00
	add  b                                           ; $4bbd: $80
	ld   [bc], a                                     ; $4bbe: $02
	adc  a                                           ; $4bbf: $8f
	nop                                              ; $4bc0: $00
	add  b                                           ; $4bc1: $80
	ld   [bc], a                                     ; $4bc2: $02
	adc  c                                           ; $4bc3: $89
	nop                                              ; $4bc4: $00
	add  b                                           ; $4bc5: $80
	ld   [bc], a                                     ; $4bc6: $02
	adc  a                                           ; $4bc7: $8f
	nop                                              ; $4bc8: $00
	add  b                                           ; $4bc9: $80
	ld   [bc], a                                     ; $4bca: $02
	adc  c                                           ; $4bcb: $89
	nop                                              ; $4bcc: $00
	add  b                                           ; $4bcd: $80
	ld   [bc], a                                     ; $4bce: $02
	adc  a                                           ; $4bcf: $8f
	nop                                              ; $4bd0: $00
	add  b                                           ; $4bd1: $80
	ld   [bc], a                                     ; $4bd2: $02
	adc  c                                           ; $4bd3: $89
	nop                                              ; $4bd4: $00
	add  b                                           ; $4bd5: $80
	ld   [bc], a                                     ; $4bd6: $02
	ld   bc, $0100                                   ; $4bd7: $01 $00 $01
	add  b                                           ; $4bda: $80
	nop                                              ; $4bdb: $00
	nop                                              ; $4bdc: $00
	ld   bc, $008a                                   ; $4bdd: $01 $8a $00
	add  b                                           ; $4be0: $80
	ld   [bc], a                                     ; $4be1: $02
	adc  c                                           ; $4be2: $89
	nop                                              ; $4be3: $00
	add  b                                           ; $4be4: $80
	ld   [bc], a                                     ; $4be5: $02
	adc  a                                           ; $4be6: $8f
	nop                                              ; $4be7: $00
	add  b                                           ; $4be8: $80
	ld   [bc], a                                     ; $4be9: $02
	adc  c                                           ; $4bea: $89
	nop                                              ; $4beb: $00
	add  b                                           ; $4bec: $80
	ld   [bc], a                                     ; $4bed: $02
	adc  a                                           ; $4bee: $8f
	nop                                              ; $4bef: $00
	add  b                                           ; $4bf0: $80
	ld   [bc], a                                     ; $4bf1: $02
	adc  c                                           ; $4bf2: $89
	nop                                              ; $4bf3: $00
	add  b                                           ; $4bf4: $80
	ld   [bc], a                                     ; $4bf5: $02
	adc  a                                           ; $4bf6: $8f
	nop                                              ; $4bf7: $00
	add  b                                           ; $4bf8: $80
	ld   [bc], a                                     ; $4bf9: $02
	adc  c                                           ; $4bfa: $89
	nop                                              ; $4bfb: $00
	add  b                                           ; $4bfc: $80
	ld   [bc], a                                     ; $4bfd: $02
	adc  a                                           ; $4bfe: $8f
	nop                                              ; $4bff: $00
	add  b                                           ; $4c00: $80
	ld   [bc], a                                     ; $4c01: $02
	adc  c                                           ; $4c02: $89
	nop                                              ; $4c03: $00
	add  b                                           ; $4c04: $80
	ld   [bc], a                                     ; $4c05: $02
	adc  a                                           ; $4c06: $8f
	nop                                              ; $4c07: $00
	add  b                                           ; $4c08: $80
	ld   [bc], a                                     ; $4c09: $02
	adc  c                                           ; $4c0a: $89
	nop                                              ; $4c0b: $00
	ld   l, [hl]                                     ; $4c0c: $6e
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	ld   b, $90                                      ; $4c0f: $06 $90
	nop                                              ; $4c11: $00
	ld   bc, $ae20                                   ; $4c12: $01 $20 $ae
	adc  c                                           ; $4c15: $89
	nop                                              ; $4c16: $00
	ld   bc, $018e                                   ; $4c17: $01 $8e $01
	adc  a                                           ; $4c1a: $8f
	nop                                              ; $4c1b: $00
	ld   bc, $ae21                                   ; $4c1c: $01 $21 $ae
	adc  c                                           ; $4c1f: $89
	nop                                              ; $4c20: $00
	ld   bc, $018e                                   ; $4c21: $01 $8e $01
	adc  a                                           ; $4c24: $8f
	nop                                              ; $4c25: $00
	ld   bc, $ae21                                   ; $4c26: $01 $21 $ae
	adc  c                                           ; $4c29: $89
	nop                                              ; $4c2a: $00
	ld   bc, $018e                                   ; $4c2b: $01 $8e $01
	adc  a                                           ; $4c2e: $8f
	nop                                              ; $4c2f: $00
	ld   bc, $ae21                                   ; $4c30: $01 $21 $ae
	adc  c                                           ; $4c33: $89
	nop                                              ; $4c34: $00
	ld   bc, $018e                                   ; $4c35: $01 $8e $01
	add  h                                           ; $4c38: $84
	nop                                              ; $4c39: $00
	add  b                                           ; $4c3a: $80
	ld   b, b                                        ; $4c3b: $40
	add  a                                           ; $4c3c: $87
	nop                                              ; $4c3d: $00
	ld   bc, $ae21                                   ; $4c3e: $01 $21 $ae
	adc  c                                           ; $4c41: $89
	nop                                              ; $4c42: $00
	ld   bc, $018e                                   ; $4c43: $01 $8e $01
	adc  [hl]                                        ; $4c46: $8e
	nop                                              ; $4c47: $00
	ld   [bc], a                                     ; $4c48: $02
	ld   h, b                                        ; $4c49: $60
	ld   bc, $89ee                                   ; $4c4a: $01 $ee $89
	nop                                              ; $4c4d: $00
	ld   bc, $018e                                   ; $4c4e: $01 $8e $01
	adc  [hl]                                        ; $4c51: $8e
	nop                                              ; $4c52: $00
	ld   [bc], a                                     ; $4c53: $02
	ld   h, b                                        ; $4c54: $60
	ld   b, c                                        ; $4c55: $41
	xor  [hl]                                        ; $4c56: $ae
	adc  c                                           ; $4c57: $89
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	adc  $84                                         ; $4c5a: $ce $84
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	ld   b, c                                        ; $4c5e: $41
	add  d                                           ; $4c5f: $82
	nop                                              ; $4c60: $00
	ld   bc, $6120                                   ; $4c61: $01 $20 $61
	add  d                                           ; $4c64: $82
	nop                                              ; $4c65: $00
	ld   [bc], a                                     ; $4c66: $02
	jr   nz, jr_01e_4c69                             ; $4c67: $20 $00

jr_01e_4c69:
	xor  $89                                         ; $4c69: $ee $89
	nop                                              ; $4c6b: $00
	nop                                              ; $4c6c: $00
	adc  l                                           ; $4c6d: $8d
	add  h                                           ; $4c6e: $84
	nop                                              ; $4c6f: $00
	nop                                              ; $4c70: $00
	ld   [bc], a                                     ; $4c71: $02
	add  e                                           ; $4c72: $83
	nop                                              ; $4c73: $00
	nop                                              ; $4c74: $00
	ld   [bc], a                                     ; $4c75: $02
	add  h                                           ; $4c76: $84
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	adc  l                                           ; $4c79: $8d
	adc  c                                           ; $4c7a: $89
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	adc  a                                           ; $4c7d: $8f
	add  e                                           ; $4c7e: $83
	nop                                              ; $4c7f: $00
	add  b                                           ; $4c80: $80
	ld   [bc], a                                     ; $4c81: $02
	add  e                                           ; $4c82: $83
	nop                                              ; $4c83: $00
	nop                                              ; $4c84: $00
	ld   [bc], a                                     ; $4c85: $02
	add  h                                           ; $4c86: $84
	nop                                              ; $4c87: $00
	nop                                              ; $4c88: $00
	adc  l                                           ; $4c89: $8d
	adc  c                                           ; $4c8a: $89
	nop                                              ; $4c8b: $00
	ld   bc, $028d                                   ; $4c8c: $01 $8d $02
	add  l                                           ; $4c8f: $85
	nop                                              ; $4c90: $00
	ld   bc, $2220                                   ; $4c91: $01 $20 $22
	add  a                                           ; $4c94: $87
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	adc  l                                           ; $4c97: $8d
	adc  c                                           ; $4c98: $89
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	adc  l                                           ; $4c9b: $8d
	add  b                                           ; $4c9c: $80
	ld   [bc], a                                     ; $4c9d: $02
	ld   [bc], a                                     ; $4c9e: $02
	nop                                              ; $4c9f: $00
	inc  bc                                          ; $4ca0: $03
	ld   bc, $0081                                   ; $4ca1: $01 $81 $00
	ld   bc, $2220                                   ; $4ca4: $01 $20 $22
	add  a                                           ; $4ca7: $87
	nop                                              ; $4ca8: $00
	nop                                              ; $4ca9: $00
	adc  l                                           ; $4caa: $8d
	adc  c                                           ; $4cab: $89
	nop                                              ; $4cac: $00
	nop                                              ; $4cad: $00
	adc  l                                           ; $4cae: $8d
	add  b                                           ; $4caf: $80
	ld   [bc], a                                     ; $4cb0: $02
	add  b                                           ; $4cb1: $80
	inc  bc                                          ; $4cb2: $03
	inc  bc                                          ; $4cb3: $03
	ld   [bc], a                                     ; $4cb4: $02
	nop                                              ; $4cb5: $00
	ld   h, b                                        ; $4cb6: $60
	ld   h, d                                        ; $4cb7: $62
	add  b                                           ; $4cb8: $80
	ld   [hl+], a                                    ; $4cb9: $22
	nop                                              ; $4cba: $00
	ld   [bc], a                                     ; $4cbb: $02
	add  b                                           ; $4cbc: $80
	nop                                              ; $4cbd: $00
	add  b                                           ; $4cbe: $80
	ld   [bc], a                                     ; $4cbf: $02
	add  b                                           ; $4cc0: $80
	nop                                              ; $4cc1: $00
	ld   [bc], a                                     ; $4cc2: $02
	ld   [bc], a                                     ; $4cc3: $02
	nop                                              ; $4cc4: $00
	adc  l                                           ; $4cc5: $8d
	adc  c                                           ; $4cc6: $89
	nop                                              ; $4cc7: $00
	nop                                              ; $4cc8: $00
	adc  l                                           ; $4cc9: $8d
	add  b                                           ; $4cca: $80
	ld   [bc], a                                     ; $4ccb: $02
	ld   bc, $0200                                   ; $4ccc: $01 $00 $02
	add  d                                           ; $4ccf: $82
	nop                                              ; $4cd0: $00
	ld   [bc], a                                     ; $4cd1: $02
	jr   nz, jr_01e_4cf6                             ; $4cd2: $20 $22

	ld   [bc], a                                     ; $4cd4: $02
	add  b                                           ; $4cd5: $80
	nop                                              ; $4cd6: $00
	add  b                                           ; $4cd7: $80
	ld   [bc], a                                     ; $4cd8: $02
	add  b                                           ; $4cd9: $80
	nop                                              ; $4cda: $00
	ld   [bc], a                                     ; $4cdb: $02
	ld   [bc], a                                     ; $4cdc: $02
	nop                                              ; $4cdd: $00
	adc  l                                           ; $4cde: $8d
	adc  c                                           ; $4cdf: $89
	nop                                              ; $4ce0: $00
	ld   bc, $428d                                   ; $4ce1: $01 $8d $42
	add  l                                           ; $4ce4: $85
	nop                                              ; $4ce5: $00
	ld   [bc], a                                     ; $4ce6: $02
	jr   nz, jr_01e_4d49                             ; $4ce7: $20 $60

	ld   [bc], a                                     ; $4ce9: $02
	add  [hl]                                        ; $4cea: $86
	nop                                              ; $4ceb: $00
	nop                                              ; $4cec: $00
	adc  l                                           ; $4ced: $8d
	adc  c                                           ; $4cee: $89
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	adc  a                                           ; $4cf1: $8f
	sub  c                                           ; $4cf2: $91
	nop                                              ; $4cf3: $00
	nop                                              ; $4cf4: $00
	adc  a                                           ; $4cf5: $8f

jr_01e_4cf6:
	adc  c                                           ; $4cf6: $89
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	adc  a                                           ; $4cf9: $8f
	sub  b                                           ; $4cfa: $90
	nop                                              ; $4cfb: $00
	ld   bc, $8d02                                   ; $4cfc: $01 $02 $8d
	adc  c                                           ; $4cff: $89
	nop                                              ; $4d00: $00
	nop                                              ; $4d01: $00
	call $0091                                       ; $4d02: $cd $91 $00
	nop                                              ; $4d05: $00
	call $00ff                                       ; $4d06: $cd $ff $00
	rst  $38                                         ; $4d09: $ff
	nop                                              ; $4d0a: $00
	rst  $38                                         ; $4d0b: $ff
	nop                                              ; $4d0c: $00
	add  $00                                         ; $4d0d: $c6 $00
	ld   l, e                                        ; $4d0f: $6b
	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	add  [hl]                                        ; $4d12: $86
	sub  b                                           ; $4d13: $90
	nop                                              ; $4d14: $00
	ld   bc, $2e20                                   ; $4d15: $01 $20 $2e
	adc  c                                           ; $4d18: $89
	nop                                              ; $4d19: $00
	ld   [bc], a                                     ; $4d1a: $02
	ld   c, $01                                      ; $4d1b: $0e $01
	ld   [bc], a                                     ; $4d1d: $02
	adc  [hl]                                        ; $4d1e: $8e
	nop                                              ; $4d1f: $00
	ld   bc, $2e23                                   ; $4d20: $01 $23 $2e
	adc  c                                           ; $4d23: $89
	nop                                              ; $4d24: $00
	ld   [bc], a                                     ; $4d25: $02
	ld   c, $01                                      ; $4d26: $0e $01
	ld   [bc], a                                     ; $4d28: $02
	adc  [hl]                                        ; $4d29: $8e
	nop                                              ; $4d2a: $00
	ld   bc, $2e23                                   ; $4d2b: $01 $23 $2e
	adc  c                                           ; $4d2e: $89
	nop                                              ; $4d2f: $00
	ld   bc, $030e                                   ; $4d30: $01 $0e $03
	adc  a                                           ; $4d33: $8f
	nop                                              ; $4d34: $00
	ld   bc, $2e23                                   ; $4d35: $01 $23 $2e
	adc  c                                           ; $4d38: $89
	nop                                              ; $4d39: $00
	ld   bc, $030e                                   ; $4d3a: $01 $0e $03
	adc  a                                           ; $4d3d: $8f
	nop                                              ; $4d3e: $00
	ld   bc, $2e23                                   ; $4d3f: $01 $23 $2e
	adc  c                                           ; $4d42: $89
	nop                                              ; $4d43: $00
	ld   bc, $030e                                   ; $4d44: $01 $0e $03
	adc  [hl]                                        ; $4d47: $8e
	nop                                              ; $4d48: $00

jr_01e_4d49:
	ld   [bc], a                                     ; $4d49: $02
	ld   h, d                                        ; $4d4a: $62
	ld   bc, $896e                                   ; $4d4b: $01 $6e $89
	nop                                              ; $4d4e: $00
	ld   bc, $030e                                   ; $4d4f: $01 $0e $03
	adc  [hl]                                        ; $4d52: $8e
	nop                                              ; $4d53: $00
	ld   [bc], a                                     ; $4d54: $02
	ld   h, d                                        ; $4d55: $62
	ld   bc, $896e                                   ; $4d56: $01 $6e $89
	nop                                              ; $4d59: $00
	ld   bc, $204e                                   ; $4d5a: $01 $4e $20
	sub  b                                           ; $4d5d: $90
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	ld   l, [hl]                                     ; $4d60: $6e
	adc  c                                           ; $4d61: $89
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	ld   c, $84                                      ; $4d64: $0e $84
	nop                                              ; $4d66: $00
	nop                                              ; $4d67: $00
	ld   bc, $0082                                   ; $4d68: $01 $82 $00
	ld   bc, $2120                                   ; $4d6b: $01 $20 $21
	add  h                                           ; $4d6e: $84
	nop                                              ; $4d6f: $00
	nop                                              ; $4d70: $00
	ld   c, $89                                      ; $4d71: $0e $89
	nop                                              ; $4d73: $00
	nop                                              ; $4d74: $00
	ld   c, $84                                      ; $4d75: $0e $84
	nop                                              ; $4d77: $00
	nop                                              ; $4d78: $00
	ld   bc, $0083                                   ; $4d79: $01 $83 $00
	nop                                              ; $4d7c: $00
	ld   bc, $0084                                   ; $4d7d: $01 $84 $00
	nop                                              ; $4d80: $00
	ld   c, $89                                      ; $4d81: $0e $89
	nop                                              ; $4d83: $00
	nop                                              ; $4d84: $00
	ld   c, $84                                      ; $4d85: $0e $84
	nop                                              ; $4d87: $00
	nop                                              ; $4d88: $00
	ld   bc, $0083                                   ; $4d89: $01 $83 $00
	nop                                              ; $4d8c: $00
	ld   bc, $0084                                   ; $4d8d: $01 $84 $00
	nop                                              ; $4d90: $00
	ld   c, $89                                      ; $4d91: $0e $89
	nop                                              ; $4d93: $00
	nop                                              ; $4d94: $00
	dec  c                                           ; $4d95: $0d
	sub  c                                           ; $4d96: $91
	nop                                              ; $4d97: $00
	nop                                              ; $4d98: $00
	dec  c                                           ; $4d99: $0d
	adc  c                                           ; $4d9a: $89
	nop                                              ; $4d9b: $00
	nop                                              ; $4d9c: $00
	dec  c                                           ; $4d9d: $0d

jr_01e_4d9e:
	sub  c                                           ; $4d9e: $91
	nop                                              ; $4d9f: $00
	nop                                              ; $4da0: $00
	dec  c                                           ; $4da1: $0d
	adc  c                                           ; $4da2: $89
	nop                                              ; $4da3: $00
	nop                                              ; $4da4: $00
	dec  c                                           ; $4da5: $0d
	add  b                                           ; $4da6: $80
	nop                                              ; $4da7: $00
	ld   [bc], a                                     ; $4da8: $02
	ld   [bc], a                                     ; $4da9: $02
	nop                                              ; $4daa: $00
	ld   [bc], a                                     ; $4dab: $02
	add  e                                           ; $4dac: $83
	nop                                              ; $4dad: $00
	inc  b                                           ; $4dae: $04
	ld   b, b                                        ; $4daf: $40
	ld   b, d                                        ; $4db0: $42
	nop                                              ; $4db1: $00
	jr   nz, jr_01e_4dd6                             ; $4db2: $20 $22

	add  d                                           ; $4db4: $82
	nop                                              ; $4db5: $00
	nop                                              ; $4db6: $00
	dec  c                                           ; $4db7: $0d
	adc  c                                           ; $4db8: $89
	nop                                              ; $4db9: $00
	ld   [bc], a                                     ; $4dba: $02
	dec  c                                           ; $4dbb: $0d
	nop                                              ; $4dbc: $00
	ld   [bc], a                                     ; $4dbd: $02

jr_01e_4dbe:
	add  b                                           ; $4dbe: $80
	nop                                              ; $4dbf: $00
	ld   bc, $2220                                   ; $4dc0: $01 $20 $22
	add  e                                           ; $4dc3: $83
	nop                                              ; $4dc4: $00
	inc  bc                                          ; $4dc5: $03
	ld   [bc], a                                     ; $4dc6: $02
	nop                                              ; $4dc7: $00
	jr   nz, jr_01e_4dec                             ; $4dc8: $20 $22

	add  d                                           ; $4dca: $82
	nop                                              ; $4dcb: $00
	nop                                              ; $4dcc: $00
	dec  c                                           ; $4dcd: $0d
	adc  c                                           ; $4dce: $89
	nop                                              ; $4dcf: $00
	ld   [bc], a                                     ; $4dd0: $02
	dec  c                                           ; $4dd1: $0d
	nop                                              ; $4dd2: $00
	ld   [bc], a                                     ; $4dd3: $02
	add  b                                           ; $4dd4: $80
	nop                                              ; $4dd5: $00

jr_01e_4dd6:
	ld   bc, $2220                                   ; $4dd6: $01 $20 $22
	add  d                                           ; $4dd9: $82
	nop                                              ; $4dda: $00
	nop                                              ; $4ddb: $00
	ld   [bc], a                                     ; $4ddc: $02
	add  b                                           ; $4ddd: $80
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	ld   [bc], a                                     ; $4de0: $02
	add  e                                           ; $4de1: $83
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	dec  c                                           ; $4de4: $0d
	adc  c                                           ; $4de5: $89

jr_01e_4de6:
	nop                                              ; $4de6: $00
	nop                                              ; $4de7: $00
	dec  c                                           ; $4de8: $0d
	add  b                                           ; $4de9: $80
	nop                                              ; $4dea: $00
	ld   [bc], a                                     ; $4deb: $02

jr_01e_4dec:
	ld   [bc], a                                     ; $4dec: $02
	nop                                              ; $4ded: $00
	ld   [bc], a                                     ; $4dee: $02
	add  e                                           ; $4def: $83
	nop                                              ; $4df0: $00
	nop                                              ; $4df1: $00
	ld   [bc], a                                     ; $4df2: $02
	add  b                                           ; $4df3: $80
	nop                                              ; $4df4: $00
	nop                                              ; $4df5: $00
	ld   [bc], a                                     ; $4df6: $02
	add  e                                           ; $4df7: $83
	nop                                              ; $4df8: $00
	nop                                              ; $4df9: $00
	dec  c                                           ; $4dfa: $0d
	adc  c                                           ; $4dfb: $89
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	ld   c, l                                        ; $4dfe: $4d
	sub  c                                           ; $4dff: $91
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	ld   c, l                                        ; $4e02: $4d
	rst  $38                                         ; $4e03: $ff
	nop                                              ; $4e04: $00
	rst  $38                                         ; $4e05: $ff

jr_01e_4e06:
	nop                                              ; $4e06: $00
	rst  $38                                         ; $4e07: $ff

jr_01e_4e08:
	nop                                              ; $4e08: $00
	add  $00                                         ; $4e09: $c6 $00
	ld   a, h                                        ; $4e0b: $7c
	nop                                              ; $4e0c: $00
	add  l                                           ; $4e0d: $85
	nop                                              ; $4e0e: $00
	add  b                                           ; $4e0f: $80
	ld   b, c                                        ; $4e10: $41
	add  [hl]                                        ; $4e11: $86
	ld   b, b                                        ; $4e12: $40
	add  d                                           ; $4e13: $82
	nop                                              ; $4e14: $00
	add  b                                           ; $4e15: $80
	inc  bc                                          ; $4e16: $03
	add  b                                           ; $4e17: $80
	ld   hl, sp-$80                                  ; $4e18: $f8 $80
	db   $10                                         ; $4e1a: $10
	add  d                                           ; $4e1b: $82
	jr   nz, jr_01e_4d9e                             ; $4e1c: $20 $80

	ld   b, b                                        ; $4e1e: $40
	add  d                                           ; $4e1f: $82

jr_01e_4e20:
	nop                                              ; $4e20: $00
	add  b                                           ; $4e21: $80
	db   $fc                                         ; $4e22: $fc
	add  b                                           ; $4e23: $80
	ld   b, b                                        ; $4e24: $40
	add  b                                           ; $4e25: $80
	ld   b, e                                        ; $4e26: $43
	add  b                                           ; $4e27: $80
	ld   h, b                                        ; $4e28: $60
	add  d                                           ; $4e29: $82
	ld   d, b                                        ; $4e2a: $50
	add  h                                           ; $4e2b: $84
	nop                                              ; $4e2c: $00
	add  b                                           ; $4e2d: $80
	add  h                                           ; $4e2e: $84
	add  b                                           ; $4e2f: $80
	db   $f4                                         ; $4e30: $f4
	add  d                                           ; $4e31: $82
	add  h                                           ; $4e32: $84
	add  b                                           ; $4e33: $80
	ld   b, h                                        ; $4e34: $44
	add  [hl]                                        ; $4e35: $86
	nop                                              ; $4e36: $00
	add  b                                           ; $4e37: $80
	ld   b, b                                        ; $4e38: $40
	adc  b                                           ; $4e39: $88
	jr   nz, jr_01e_4dbe                             ; $4e3a: $20 $82

	ld   [hl+], a                                    ; $4e3c: $22
	add  b                                           ; $4e3d: $80
	inc  e                                           ; $4e3e: $1c
	add  h                                           ; $4e3f: $84
	nop                                              ; $4e40: $00
	add  h                                           ; $4e41: $84
	inc  b                                           ; $4e42: $04
	add  b                                           ; $4e43: $80
	ld   [$7080], sp                                 ; $4e44: $08 $80 $70
	add  h                                           ; $4e47: $84
	nop                                              ; $4e48: $00
	add  [hl]                                        ; $4e49: $86
	ld   bc, $0280                                   ; $4e4a: $01 $80 $02
	add  [hl]                                        ; $4e4d: $86
	nop                                              ; $4e4e: $00
	add  b                                           ; $4e4f: $80
	ld   a, h                                        ; $4e50: $7c
	add  b                                           ; $4e51: $80
	inc  h                                           ; $4e52: $24
	add  b                                           ; $4e53: $80
	jr   jr_01e_4dd6                                 ; $4e54: $18 $80

	ld   l, [hl]                                     ; $4e56: $6e
	add  h                                           ; $4e57: $84
	nop                                              ; $4e58: $00
	add  b                                           ; $4e59: $80
	ld   b, d                                        ; $4e5a: $42
	add  b                                           ; $4e5b: $80
	ld   b, h                                        ; $4e5c: $44
	add  d                                           ; $4e5d: $82
	ld   b, b                                        ; $4e5e: $40
	add  b                                           ; $4e5f: $80
	jr   nz, jr_01e_4de6                             ; $4e60: $20 $84

	nop                                              ; $4e62: $00
	add  b                                           ; $4e63: $80
	ld   b, l                                        ; $4e64: $45
	add  b                                           ; $4e65: $80
	dec  b                                           ; $4e66: $05
	add  d                                           ; $4e67: $82
	add  hl, bc                                      ; $4e68: $09
	add  b                                           ; $4e69: $80
	ld   sp, $0084                                   ; $4e6a: $31 $84 $00
	add  b                                           ; $4e6d: $80
	ld   a, h                                        ; $4e6e: $7c
	add  b                                           ; $4e6f: $80
	ld   b, h                                        ; $4e70: $44
	add  b                                           ; $4e71: $80
	ld   a, h                                        ; $4e72: $7c
	add  b                                           ; $4e73: $80
	nop                                              ; $4e74: $00
	add  b                                           ; $4e75: $80
	rst  $38                                         ; $4e76: $ff
	add  h                                           ; $4e77: $84
	nop                                              ; $4e78: $00
	add  b                                           ; $4e79: $80
	ld   b, b                                        ; $4e7a: $40
	add  d                                           ; $4e7b: $82
	ld   b, d                                        ; $4e7c: $42
	add  b                                           ; $4e7d: $80
	inc  h                                           ; $4e7e: $24
	add  b                                           ; $4e7f: $80
	jr   jr_01e_4e06                                 ; $4e80: $18 $84

	nop                                              ; $4e82: $00
	add  h                                           ; $4e83: $84
	ld   b, b                                        ; $4e84: $40
	add  b                                           ; $4e85: $80
	jr   nz, jr_01e_4e08                             ; $4e86: $20 $80

	db   $10                                         ; $4e88: $10
	add  h                                           ; $4e89: $84
	nop                                              ; $4e8a: $00
	add  d                                           ; $4e8b: $82
	ld   b, b                                        ; $4e8c: $40
	add  d                                           ; $4e8d: $82
	ld   b, d                                        ; $4e8e: $42
	add  b                                           ; $4e8f: $80
	ld   b, c                                        ; $4e90: $41
	add  h                                           ; $4e91: $84
	nop                                              ; $4e92: $00
	add  b                                           ; $4e93: $80
	inc  h                                           ; $4e94: $24
	add  b                                           ; $4e95: $80
	ld   h, h                                        ; $4e96: $64
	add  d                                           ; $4e97: $82
	ld   [bc], a                                     ; $4e98: $02
	add  b                                           ; $4e99: $80
	pop  bc                                          ; $4e9a: $c1
	add  h                                           ; $4e9b: $84
	nop                                              ; $4e9c: $00
	add  b                                           ; $4e9d: $80
	jr   nz, jr_01e_4e20                             ; $4e9e: $20 $80

	nop                                              ; $4ea0: $00
	add  b                                           ; $4ea1: $80
	add  b                                           ; $4ea2: $80
	add  b                                           ; $4ea3: $80
	add  h                                           ; $4ea4: $84
	add  b                                           ; $4ea5: $80
	ld   a, [bc]                                     ; $4ea6: $0a
	add  b                                           ; $4ea7: $80
	inc  b                                           ; $4ea8: $04
	adc  d                                           ; $4ea9: $8a
	nop                                              ; $4eaa: $00
	add  b                                           ; $4eab: $80
	ldh  [$80], a                                    ; $4eac: $e0 $80
	daa                                              ; $4eae: $27
	add  b                                           ; $4eaf: $80
	ld   b, h                                        ; $4eb0: $44
	add  b                                           ; $4eb1: $80
	inc  b                                           ; $4eb2: $04
	add  d                                           ; $4eb3: $82
	nop                                              ; $4eb4: $00
	add  b                                           ; $4eb5: $80
	and  b                                           ; $4eb6: $a0
	add  b                                           ; $4eb7: $80
	sub  b                                           ; $4eb8: $90
	add  b                                           ; $4eb9: $80
	add  b                                           ; $4eba: $80
	add  b                                           ; $4ebb: $80
	rst  $30                                         ; $4ebc: $f7
	add  b                                           ; $4ebd: $80
	add  c                                           ; $4ebe: $81
	add  b                                           ; $4ebf: $80
	sub  c                                           ; $4ec0: $91
	add  d                                           ; $4ec1: $82
	nop                                              ; $4ec2: $00
	add  d                                           ; $4ec3: $82
	db   $10                                         ; $4ec4: $10
	add  b                                           ; $4ec5: $80
	ld   a, h                                        ; $4ec6: $7c
	add  b                                           ; $4ec7: $80
	sub  h                                           ; $4ec8: $94
	add  d                                           ; $4ec9: $82
	inc  d                                           ; $4eca: $14
	add  b                                           ; $4ecb: $80
	inc  b                                           ; $4ecc: $04
	add  b                                           ; $4ecd: $80
	rlca                                             ; $4ece: $07
	add  d                                           ; $4ecf: $82
	dec  b                                           ; $4ed0: $05
	add  b                                           ; $4ed1: $80
	jp   hl                                          ; $4ed2: $e9


	add  h                                           ; $4ed3: $84
	nop                                              ; $4ed4: $00
	add  d                                           ; $4ed5: $82
	ld   d, c                                        ; $4ed6: $51
	add  b                                           ; $4ed7: $80
	ld   hl, $2680                                   ; $4ed8: $21 $80 $26
	add  b                                           ; $4edb: $80
	ld   d, b                                        ; $4edc: $50
	add  h                                           ; $4edd: $84
	nop                                              ; $4ede: $00
	add  d                                           ; $4edf: $82
	inc  d                                           ; $4ee0: $14
	add  b                                           ; $4ee1: $80
	and  h                                           ; $4ee2: $a4
	add  b                                           ; $4ee3: $80
	inc  h                                           ; $4ee4: $24
	add  b                                           ; $4ee5: $80
	ld   c, b                                        ; $4ee6: $48
	add  h                                           ; $4ee7: $84
	nop                                              ; $4ee8: $00
	adc  [hl]                                        ; $4ee9: $8e
	add  b                                           ; $4eea: $80
	rst  $38                                         ; $4eeb: $ff
	nop                                              ; $4eec: $00
	rst  $38                                         ; $4eed: $ff
	nop                                              ; $4eee: $00
	rst  $38                                         ; $4eef: $ff
	nop                                              ; $4ef0: $00
	rst  $38                                         ; $4ef1: $ff
	nop                                              ; $4ef2: $00
	rst  $38                                         ; $4ef3: $ff
	nop                                              ; $4ef4: $00
	rst  $38                                         ; $4ef5: $ff
	nop                                              ; $4ef6: $00
	rst  $38                                         ; $4ef7: $ff
	nop                                              ; $4ef8: $00
	rst  $38                                         ; $4ef9: $ff
	nop                                              ; $4efa: $00
	rst  $38                                         ; $4efb: $ff
	nop                                              ; $4efc: $00
	rst  $38                                         ; $4efd: $ff
	nop                                              ; $4efe: $00
	rst  $38                                         ; $4eff: $ff
	nop                                              ; $4f00: $00
	rst  $38                                         ; $4f01: $ff
	nop                                              ; $4f02: $00
	pop  af                                          ; $4f03: $f1
	nop                                              ; $4f04: $00
	dec  d                                           ; $4f05: $15
	nop                                              ; $4f06: $00
	inc  d                                           ; $4f07: $14
	nop                                              ; $4f08: $00
	ld   bc, $0103                                   ; $4f09: $01 $03 $01
	rlca                                             ; $4f0c: $07
	ld   bc, $0103                                   ; $4f0d: $01 $03 $01
	rrca                                             ; $4f10: $0f
	ld   bc, $0103                                   ; $4f11: $01 $03 $01
	rlca                                             ; $4f14: $07
	ld   bc, $0103                                   ; $4f15: $01 $03 $01
	cpl                                              ; $4f18: $2f
	rrca                                             ; $4f19: $0f
	dec  c                                           ; $4f1a: $0d
	ld   bc, $8923                                   ; $4f1b: $01 $23 $89
	nop                                              ; $4f1e: $00
	inc  d                                           ; $4f1f: $14
	db   $10                                         ; $4f20: $10
	ld   bc, $0103                                   ; $4f21: $01 $03 $01
	rlca                                             ; $4f24: $07
	ld   bc, $0103                                   ; $4f25: $01 $03 $01
	rrca                                             ; $4f28: $0f
	ld   bc, $0103                                   ; $4f29: $01 $03 $01
	rlca                                             ; $4f2c: $07
	ld   bc, $0103                                   ; $4f2d: $01 $03 $01
	ld   a, $1e                                      ; $4f30: $3e $1e
	dec  de                                          ; $4f32: $1b
	ld   bc, $8925                                   ; $4f33: $01 $25 $89
	nop                                              ; $4f36: $00
	inc  d                                           ; $4f37: $14
	jr   nz, jr_01e_4f3b                             ; $4f38: $20 $01

	inc  bc                                          ; $4f3a: $03

jr_01e_4f3b:
	ld   bc, $0107                                   ; $4f3b: $01 $07 $01
	inc  bc                                          ; $4f3e: $03
	ld   bc, $010f                                   ; $4f3f: $01 $0f $01
	inc  bc                                          ; $4f42: $03
	ld   bc, $0107                                   ; $4f43: $01 $07 $01
	inc  bc                                          ; $4f46: $03
	ld   sp, $6e3e                                   ; $4f47: $31 $3e $6e
	ld   l, e                                        ; $4f4a: $6b
	ld   bc, $8925                                   ; $4f4b: $01 $25 $89
	nop                                              ; $4f4e: $00
	inc  d                                           ; $4f4f: $14
	jr   nc, jr_01e_4f53                             ; $4f50: $30 $01

	inc  bc                                          ; $4f52: $03

jr_01e_4f53:
	ld   bc, $0107                                   ; $4f53: $01 $07 $01
	inc  bc                                          ; $4f56: $03
	ld   bc, $0c02                                   ; $4f57: $01 $02 $0c
	inc  bc                                          ; $4f5a: $03
	ld   bc, $080e                                   ; $4f5b: $01 $0e $08
	inc  bc                                          ; $4f5e: $03
	ld   hl, $7e3e                                   ; $4f5f: $21 $3e $7e
	ld   a, e                                        ; $4f62: $7b
	ld   bc, $8925                                   ; $4f63: $01 $25 $89
	nop                                              ; $4f66: $00
	inc  d                                           ; $4f67: $14
	ld   b, b                                        ; $4f68: $40
	ld   bc, $0103                                   ; $4f69: $01 $03 $01
	rlca                                             ; $4f6c: $07
	ld   bc, $0103                                   ; $4f6d: $01 $03 $01
	rrca                                             ; $4f70: $0f
	ld   bc, $0103                                   ; $4f71: $01 $03 $01
	rlca                                             ; $4f74: $07
	ld   bc, $5103                                   ; $4f75: $01 $03 $51
	ld   a, $4e                                      ; $4f78: $3e $4e
	ld   c, e                                        ; $4f7a: $4b
	ld   bc, $8925                                   ; $4f7b: $01 $25 $89
	nop                                              ; $4f7e: $00
	inc  d                                           ; $4f7f: $14
	ld   d, b                                        ; $4f80: $50
	ld   [bc], a                                     ; $4f81: $02
	nop                                              ; $4f82: $00
	ld   bc, $0107                                   ; $4f83: $01 $07 $01
	inc  bc                                          ; $4f86: $03
	ld   bc, $010f                                   ; $4f87: $01 $0f $01
	inc  bc                                          ; $4f8a: $03
	ld   bc, $0107                                   ; $4f8b: $01 $07 $01
	inc  bc                                          ; $4f8e: $03
	ld   b, c                                        ; $4f8f: $41
	ld   a, $19                                      ; $4f90: $3e $19
	inc  e                                           ; $4f92: $1c
	ld   bc, $8925                                   ; $4f93: $01 $25 $89
	nop                                              ; $4f96: $00
	inc  d                                           ; $4f97: $14
	ld   h, b                                        ; $4f98: $60

jr_01e_4f99:
	ld   [bc], a                                     ; $4f99: $02
	nop                                              ; $4f9a: $00
	ld   bc, $0107                                   ; $4f9b: $01 $07 $01
	inc  bc                                          ; $4f9e: $03
	ld   bc, $010f                                   ; $4f9f: $01 $0f $01
	inc  bc                                          ; $4fa2: $03
	ld   bc, $0107                                   ; $4fa3: $01 $07 $01
	inc  bc                                          ; $4fa6: $03
	ld   [hl], c                                     ; $4fa7: $71
	ld   a, $1d                                      ; $4fa8: $3e $1d
	jr   jr_01e_4fad                                 ; $4faa: $18 $01

	dec  h                                           ; $4fac: $25

jr_01e_4fad:
	adc  c                                           ; $4fad: $89
	nop                                              ; $4fae: $00
	inc  d                                           ; $4faf: $14
	ld   [hl], b                                     ; $4fb0: $70

jr_01e_4fb1:
	ld   bc, $0103                                   ; $4fb1: $01 $03 $01
	rlca                                             ; $4fb4: $07
	ld   bc, $0103                                   ; $4fb5: $01 $03 $01
	rrca                                             ; $4fb8: $0f
	ld   bc, $0103                                   ; $4fb9: $01 $03 $01
	rlca                                             ; $4fbc: $07

jr_01e_4fbd:
	ld   bc, $0103                                   ; $4fbd: $01 $03 $01
	ld   l, $30                                      ; $4fc0: $2e $30
	ld   b, l                                        ; $4fc2: $45
	ld   bc, $8a25                                   ; $4fc3: $01 $25 $8a
	nop                                              ; $4fc6: $00
	inc  de                                          ; $4fc7: $13
	ld   bc, $0103                                   ; $4fc8: $01 $03 $01
	rlca                                             ; $4fcb: $07
	ld   bc, $0103                                   ; $4fcc: $01 $03 $01
	rrca                                             ; $4fcf: $0f
	ld   bc, $0103                                   ; $4fd0: $01 $03 $01
	rlca                                             ; $4fd3: $07
	ld   bc, $0103                                   ; $4fd4: $01 $03 $01
	add  hl, hl                                      ; $4fd7: $29
	ld   bc, $0103                                   ; $4fd8: $01 $03 $01
	dec  h                                           ; $4fdb: $25
	adc  c                                           ; $4fdc: $89
	nop                                              ; $4fdd: $00

jr_01e_4fde:
	inc  d                                           ; $4fde: $14
	db   $10                                         ; $4fdf: $10
	ld   bc, $0103                                   ; $4fe0: $01 $03 $01
	rlca                                             ; $4fe3: $07
	ld   bc, $0103                                   ; $4fe4: $01 $03 $01
	rrca                                             ; $4fe7: $0f
	ld   bc, $0103                                   ; $4fe8: $01 $03 $01
	rlca                                             ; $4feb: $07
	ld   bc, $0010                                   ; $4fec: $01 $10 $00
	ld   [de], a                                     ; $4fef: $12
	ld   bc, $013a                                   ; $4ff0: $01 $3a $01

jr_01e_4ff3:
	dec  h                                           ; $4ff3: $25
	adc  c                                           ; $4ff4: $89
	nop                                              ; $4ff5: $00
	nop                                              ; $4ff6: $00
	db $f0 
	
	
RleXorTileAttr_ResetData::
	db $6a, $00, $92, $00, $00, $08, $89, $00, $00, $08, $91, $00, $00, $08, $89, $00, $00, $08, $91, $00, $00, $08, $89, $00, $00, $08, $8b, $00, $80, $20, $82, $00
	db $00, $08, $89, $00, $00, $08, $8b, $00, $80, $20, $82, $00, $00, $08, $89, $00, $00, $08, $8b, $00, $80, $20, $82, $00, $00, $08, $89, $00, $00, $08, $8b, $00
	db $80, $20, $82, $00, $00, $08, $89, $00, $00, $08, $8b, $00, $80, $20, $82, $00, $00, $08, $89, $00, $00, $08, $83, $00, $80, $01, $03, $00, $01, $00, $01, $80
	db $00, $80, $20, $82, $00, $00, $08, $89, $00, $00, $08, $83, $00, $80, $01, $03, $00, $01, $00, $01, $80, $00, $80, $20, $82, $00, $00, $08, $89, $00, $00, $08
	db $82, $00, $00, $40, $86, $00, $01, $20, $60, $82, $00, $00, $08, $89, $00, $00, $08, $91, $00, $00, $08, $89, $00, $00, $08, $91, $00, $00, $08, $89, $00, $00
	db $08, $81, $00, $00, $01, $89, $00, $00, $01, $81, $00, $00, $08, $89, $00, $00, $08, $81, $00, $00, $01, $89, $00, $00, $01, $81, $00, $00, $08, $89, $00, $00
	db $08, $91, $00, $00, $08, $89, $00, $00, $08, $91, $00, $00, $08, $89, $00, $00, $08, $91, $00, $00, $08, $ff, $00, $ff, $00, $ff, $00, $c6, $00


	inc  de                                          ; $50d5: $13
	nop                                              ; $50d6: $00
	inc  bc                                          ; $50d7: $03
	db   $10                                         ; $50d8: $10
	ld   bc, $d403                                   ; $50d9: $01 $03 $d4
	add  b                                           ; $50dc: $80
	nop                                              ; $50dd: $00
	ld   c, $01                                      ; $50de: $0e $01
	rrca                                             ; $50e0: $0f
	ld   bc, $0103                                   ; $50e1: $01 $03 $01
	rlca                                             ; $50e4: $07
	ld   bc, $0403                                   ; $50e5: $01 $03 $04
	dec  b                                           ; $50e8: $05
	rra                                              ; $50e9: $1f
	ld   bc, $d503                                   ; $50ea: $01 $03 $d5
	dec  [hl]                                        ; $50ed: $35
	adc  c                                           ; $50ee: $89
	nop                                              ; $50ef: $00
	inc  bc                                          ; $50f0: $03
	ld   hl, $d207                                   ; $50f1: $21 $07 $d2
	nop                                              ; $50f4: $00
	add  b                                           ; $50f5: $80
	dec  d                                           ; $50f6: $15
	ld   c, $12                                      ; $50f7: $0e $12
	inc  de                                          ; $50f9: $13
	rrca                                             ; $50fa: $0f
	ld   bc, $0103                                   ; $50fb: $01 $03 $01
	rlca                                             ; $50fe: $07
	ld   bc, $0403                                   ; $50ff: $01 $03 $04
	dec  b                                           ; $5102: $05
	rra                                              ; $5103: $1f
	ld   bc, $35d6                                   ; $5104: $01 $d6 $35
	adc  c                                           ; $5107: $89
	nop                                              ; $5108: $00
	inc  d                                           ; $5109: $14
	ld   bc, $d025                                   ; $510a: $01 $25 $d0
	inc  de                                          ; $510d: $13
	inc  bc                                          ; $510e: $03
	ld   bc, $010f                                   ; $510f: $01 $0f $01
	ld   e, $0f                                      ; $5112: $1e $0f
	ld   bc, $0103                                   ; $5114: $01 $03 $01
	rlca                                             ; $5117: $07
	ld   bc, $0403                                   ; $5118: $01 $03 $04
	dec  b                                           ; $511b: $05
	rra                                              ; $511c: $1f
	rst  $10                                         ; $511d: $d7
	dec  [hl]                                        ; $511e: $35
	adc  c                                           ; $511f: $89
	nop                                              ; $5120: $00
	inc  d                                           ; $5121: $14
	ld   b, $f2                                      ; $5122: $06 $f2
	inc  e                                           ; $5124: $1c
	ld   bc, $0107                                   ; $5125: $01 $07 $01
	inc  bc                                          ; $5128: $03
	ld   bc, $273f                                   ; $5129: $01 $3f $27
	rrca                                             ; $512c: $0f
	ld   bc, $0103                                   ; $512d: $01 $03 $01
	rlca                                             ; $5130: $07
	ld   bc, $0403                                   ; $5131: $01 $03 $04
	dec  b                                           ; $5134: $05
	ret  z                                           ; $5135: $c8

	dec  [hl]                                        ; $5136: $35
	adc  c                                           ; $5137: $89
	nop                                              ; $5138: $00
	inc  d                                           ; $5139: $14
	ld   [de], a                                     ; $513a: $12
	pop  bc                                          ; $513b: $c1
	inc  bc                                          ; $513c: $03
	ld   bc, $0107                                   ; $513d: $01 $07 $01
	inc  bc                                          ; $5140: $03
	ld   bc, $2e0f                                   ; $5141: $01 $0f $2e
	ld   bc, $010f                                   ; $5144: $01 $0f $01
	inc  bc                                          ; $5147: $03
	ld   bc, $0107                                   ; $5148: $01 $07 $01
	inc  bc                                          ; $514b: $03
	inc  b                                           ; $514c: $04
	call $8935                                       ; $514d: $cd $35 $89
	nop                                              ; $5150: $00
	inc  d                                           ; $5151: $14
	ld   [de], a                                     ; $5152: $12
	ret                                              ; $5153: $c9


	inc  bc                                          ; $5154: $03
	ld   bc, $0107                                   ; $5155: $01 $07 $01
	inc  bc                                          ; $5158: $03
	ld   bc, $011f                                   ; $5159: $01 $1f $01
	scf                                              ; $515c: $37
	ld   bc, $010f                                   ; $515d: $01 $0f $01
	inc  bc                                          ; $5160: $03
	ld   bc, $0107                                   ; $5161: $01 $07 $01
	inc  bc                                          ; $5164: $03
	ret                                              ; $5165: $c9


	dec  [hl]                                        ; $5166: $35
	adc  c                                           ; $5167: $89
	nop                                              ; $5168: $00
	inc  d                                           ; $5169: $14
	ld   [de], a                                     ; $516a: $12
	and  $34                                         ; $516b: $e6 $34
	ld   bc, $0107                                   ; $516d: $01 $07 $01
	inc  bc                                          ; $5170: $03
	ld   bc, $010f                                   ; $5171: $01 $0f $01
	ccf                                              ; $5174: $3f
	nop                                              ; $5175: $00
	ld   bc, $010f                                   ; $5176: $01 $0f $01
	inc  bc                                          ; $5179: $03
	ld   bc, $36de                                   ; $517a: $01 $de $36
	rlca                                             ; $517d: $07
	ld   d, $89                                      ; $517e: $16 $89
	nop                                              ; $5180: $00
	rrca                                             ; $5181: $0f
	db   $10                                         ; $5182: $10
	db   $e4                                         ; $5183: $e4
	inc  a                                           ; $5184: $3c
	ld   bc, $0107                                   ; $5185: $01 $07 $01
	inc  bc                                          ; $5188: $03
	ld   bc, $01ff                                   ; $5189: $01 $ff $01
	inc  bc                                          ; $518c: $03
	call nz, Boot                                    ; $518d: $c4 $00 $01
	ldh  [c], a                                      ; $5190: $e2
	inc  bc                                          ; $5191: $03
	rrca                                             ; $5192: $0f
	nop                                              ; $5193: $00
	inc  d                                           ; $5194: $14
	db   $10                                         ; $5195: $10
	ld   bc, $1203                                   ; $5196: $01 $03 $12
	ld   bc, $0103                                   ; $5199: $01 $03 $01
	or   e                                           ; $519c: $b3
	ld   bc, $0103                                   ; $519d: $01 $03 $01
	rlca                                             ; $51a0: $07
	ld   bc, $bd03                                   ; $51a1: $01 $03 $bd
	rlca                                             ; $51a4: $07
	ld   bc, $0103                                   ; $51a5: $01 $03 $01
	ld   [$8935], sp                                 ; $51a8: $08 $35 $89
	nop                                              ; $51ab: $00
	inc  d                                           ; $51ac: $14
	ld   hl, $0407                                   ; $51ad: $21 $07 $04
	ld   bc, $a503                                   ; $51b0: $01 $03 $a5
	rrca                                             ; $51b3: $0f
	ld   bc, $0103                                   ; $51b4: $01 $03 $01
	rlca                                             ; $51b7: $07
	ld   bc, $0103                                   ; $51b8: $01 $03 $01
	ld   a, a                                        ; $51bb: $7f
	call c, $0301                                    ; $51bc: $dc $01 $03
	ld   bc, $3518                                   ; $51bf: $01 $18 $35
	adc  c                                           ; $51c2: $89
	nop                                              ; $51c3: $00
	inc  d                                           ; $51c4: $14
	ld   bc, $3625                                   ; $51c5: $01 $25 $36
	ld   bc, $03e0                                   ; $51c8: $01 $e0 $03
	ld   bc, $0107                                   ; $51cb: $01 $07 $01
	inc  bc                                          ; $51ce: $03
	ld   bc, $010f                                   ; $51cf: $01 $0f $01
	inc  bc                                          ; $51d2: $03
	ld   bc, $03e6                                   ; $51d3: $01 $e6 $03
	ld   bc, $371f                                   ; $51d6: $01 $1f $37
	dec  [hl]                                        ; $51d9: $35
	adc  c                                           ; $51da: $89
	nop                                              ; $51db: $00
	inc  d                                           ; $51dc: $14
	ld   b, $05                                      ; $51dd: $06 $05
	inc  bc                                          ; $51df: $03
	ld   bc, $0107                                   ; $51e0: $01 $07 $01
	inc  bc                                          ; $51e3: $03
	ld   a, [$0301]                                  ; $51e4: $fa $01 $03
	ld   bc, $011f                                   ; $51e7: $01 $1f $01
	db   $ec                                         ; $51ea: $ec
	inc  bc                                          ; $51eb: $03
	ld   bc, $017f                                   ; $51ec: $01 $7f $01
	inc  bc                                          ; $51ef: $03
	ld   b, l                                        ; $51f0: $45
	dec  [hl]                                        ; $51f1: $35
	adc  c                                           ; $51f2: $89
	nop                                              ; $51f3: $00
	inc  d                                           ; $51f4: $14
	ld   [de], a                                     ; $51f5: $12
	ld   h, e                                        ; $51f6: $63
	rlca                                             ; $51f7: $07
	ld   bc, $0103                                   ; $51f8: $01 $03 $01
	rrca                                             ; $51fb: $0f
	sbc  d                                           ; $51fc: $9a
	ld   bc, $0107                                   ; $51fd: $01 $07 $01
	inc  bc                                          ; $5200: $03
	ld   bc, $1f98                                   ; $5201: $01 $98 $1f
	ld   bc, $0103                                   ; $5204: $01 $03 $01
	rlca                                             ; $5207: $07
	ld   d, e                                        ; $5208: $53
	dec  [hl]                                        ; $5209: $35
	adc  c                                           ; $520a: $89
	nop                                              ; $520b: $00
	inc  d                                           ; $520c: $14
	ld   [de], a                                     ; $520d: $12
	ld   [hl], l                                     ; $520e: $75
	inc  bc                                          ; $520f: $03
	ld   bc, $010f                                   ; $5210: $01 $0f $01
	add  c                                           ; $5213: $81
	ld   bc, $0103                                   ; $5214: $01 $03 $01
	rlca                                             ; $5217: $07
	ld   bc, $0103                                   ; $5218: $01 $03 $01
	cp   l                                           ; $521b: $bd
	ld   bc, $0107                                   ; $521c: $01 $07 $01
	inc  bc                                          ; $521f: $03
	ld   h, c                                        ; $5220: $61
	dec  [hl]                                        ; $5221: $35
	adc  c                                           ; $5222: $89
	nop                                              ; $5223: $00
	inc  d                                           ; $5224: $14
	ld   [de], a                                     ; $5225: $12
	ld   b, a                                        ; $5226: $47
	rrca                                             ; $5227: $0f
	ld   bc, $0103                                   ; $5228: $01 $03 $01
	adc  e                                           ; $522b: $8b
	ld   bc, $0103                                   ; $522c: $01 $03 $01
	sub  e                                           ; $522f: $93
	sub  h                                           ; $5230: $94
	ld   bc, $9203                                   ; $5231: $01 $03 $92
	ld   bc, $6303                                   ; $5234: $01 $03 $63
	ld   [hl], $07                                   ; $5237: $36 $07
	ld   d, $89                                      ; $5239: $16 $89
	nop                                              ; $523b: $00
	rrca                                             ; $523c: $0f
	db   $10                                         ; $523d: $10
	ld   d, l                                        ; $523e: $55
	rrca                                             ; $523f: $0f
	ld   bc, $0103                                   ; $5240: $01 $03 $01
	rlca                                             ; $5243: $07
	sbc  e                                           ; $5244: $9b
	rrca                                             ; $5245: $0f
	and  h                                           ; $5246: $a4
	ld   l, e                                        ; $5247: $6b
	adc  $03                                         ; $5248: $ce $03
	ret  nc                                          ; $524a: $d0

	rra                                              ; $524b: $1f
	inc  bc                                          ; $524c: $03
	rrca                                             ; $524d: $0f
	nop                                              ; $524e: $00
	inc  d                                           ; $524f: $14
	db   $10                                         ; $5250: $10
	ld   bc, $1203                                   ; $5251: $01 $03 $12
	ld   bc, $0103                                   ; $5254: $01 $03 $01
	rlca                                             ; $5257: $07
	ld   bc, $0103                                   ; $5258: $01 $03 $01
	rst  ToBoot                                         ; $525b: $c7
	ret                                              ; $525c: $c9


	inc  bc                                          ; $525d: $03
	ld   bc, $0107                                   ; $525e: $01 $07 $01
	inc  bc                                          ; $5261: $03
	ld   bc, $3508                                   ; $5262: $01 $08 $35
	adc  c                                           ; $5265: $89
	nop                                              ; $5266: $00
	inc  d                                           ; $5267: $14
	ld   hl, $0407                                   ; $5268: $21 $07 $04
	ld   bc, $0103                                   ; $526b: $01 $03 $01
	rlca                                             ; $526e: $07
	push de                                          ; $526f: $d5
	inc  bc                                          ; $5270: $03
	ld   bc, $0107                                   ; $5271: $01 $07 $01
	rst  $10                                         ; $5274: $d7
	ld   [$dadc], sp                                 ; $5275: $08 $dc $da
	ld   bc, $0103                                   ; $5278: $01 $03 $01
	jr   jr_01e_52b2                                 ; $527b: $18 $35

	adc  c                                           ; $527d: $89
	nop                                              ; $527e: $00
	inc  d                                           ; $527f: $14
	ld   bc, $3625                                   ; $5280: $01 $25 $36
	ld   bc, $e503                                   ; $5283: $01 $03 $e5
	rrca                                             ; $5286: $0f
	ld   bc, $0103                                   ; $5287: $01 $03 $01
	rlca                                             ; $528a: $07
	ld   bc, $0103                                   ; $528b: $01 $03 $01
	rra                                              ; $528e: $1f
	db   $fd                                         ; $528f: $fd
	inc  bc                                          ; $5290: $03
	ld   bc, $371f                                   ; $5291: $01 $1f $37
	dec  [hl]                                        ; $5294: $35
	adc  c                                           ; $5295: $89
	nop                                              ; $5296: $00
	inc  d                                           ; $5297: $14
	ld   b, $05                                      ; $5298: $06 $05
	inc  bc                                          ; $529a: $03
	ld   bc, $e507                                   ; $529b: $01 $07 $e5
	inc  bc                                          ; $529e: $03
	ld   bc, $0107                                   ; $529f: $01 $07 $01
	inc  bc                                          ; $52a2: $03
	ld   bc, $010f                                   ; $52a3: $01 $0f $01
	inc  bc                                          ; $52a6: $03
	ld   bc, $019b                                   ; $52a7: $01 $9b $01
	inc  bc                                          ; $52aa: $03
	ld   b, l                                        ; $52ab: $45
	dec  [hl]                                        ; $52ac: $35
	adc  c                                           ; $52ad: $89
	nop                                              ; $52ae: $00
	inc  d                                           ; $52af: $14
	ld   [de], a                                     ; $52b0: $12
	ld   h, e                                        ; $52b1: $63

jr_01e_52b2:
	rlca                                             ; $52b2: $07
	ld   bc, $9a03                                   ; $52b3: $01 $03 $9a
	ld   bc, $0103                                   ; $52b6: $01 $03 $01
	ccf                                              ; $52b9: $3f
	ld   bc, $ac03                                   ; $52ba: $01 $03 $ac
	ld   bc, $011f                                   ; $52bd: $01 $1f $01
	inc  bc                                          ; $52c0: $03
	ld   bc, $5307                                   ; $52c1: $01 $07 $53
	dec  [hl]                                        ; $52c4: $35
	adc  c                                           ; $52c5: $89
	nop                                              ; $52c6: $00
	inc  d                                           ; $52c7: $14
	ld   [de], a                                     ; $52c8: $12
	ld   [hl], l                                     ; $52c9: $75
	inc  bc                                          ; $52ca: $03
	ld   bc, $bb0f                                   ; $52cb: $01 $0f $bb
	cp   c                                           ; $52ce: $b9
	ld   bc, $01bf                                   ; $52cf: $01 $bf $01
	inc  bc                                          ; $52d2: $03
	ld   bc, $0187                                   ; $52d3: $01 $87 $01
	inc  bc                                          ; $52d6: $03
	ld   bc, $0107                                   ; $52d7: $01 $07 $01
	inc  bc                                          ; $52da: $03
	ld   h, c                                        ; $52db: $61
	dec  [hl]                                        ; $52dc: $35
	adc  c                                           ; $52dd: $89
	nop                                              ; $52de: $00
	inc  d                                           ; $52df: $14
	ld   [de], a                                     ; $52e0: $12
	ld   b, a                                        ; $52e1: $47
	rrca                                             ; $52e2: $0f
	ld   bc, $0103                                   ; $52e3: $01 $03 $01
	rlca                                             ; $52e6: $07
	ld   bc, $0185                                   ; $52e7: $01 $85 $01
	inc  bc                                          ; $52ea: $03
	ld   bc, $0199                                   ; $52eb: $01 $99 $01
	rlca                                             ; $52ee: $07
	ld   bc, $6303                                   ; $52ef: $01 $03 $63
	ld   [hl], $07                                   ; $52f2: $36 $07
	ld   d, $89                                      ; $52f4: $16 $89
	nop                                              ; $52f6: $00
	rrca                                             ; $52f7: $0f
	db   $10                                         ; $52f8: $10
	ld   d, l                                        ; $52f9: $55
	rrca                                             ; $52fa: $0f
	ld   bc, $0103                                   ; $52fb: $01 $03 $01
	rlca                                             ; $52fe: $07
	sub  b                                           ; $52ff: $90
	ld   bc, $a2a1                                   ; $5300: $01 $a1 $a2
	ld   bc, $03d6                                   ; $5303: $01 $d6 $03
	rra                                              ; $5306: $1f
	inc  bc                                          ; $5307: $03
	rrca                                             ; $5308: $0f
	nop                                              ; $5309: $00
	inc  d                                           ; $530a: $14
	db   $10                                         ; $530b: $10
	ld   bc, $1203                                   ; $530c: $01 $03 $12
	ld   bc, $0103                                   ; $530f: $01 $03 $01
	jp   $0301                                       ; $5312: $c3 $01 $03


	ld   bc, $0107                                   ; $5315: $01 $07 $01
	inc  bc                                          ; $5318: $03
	call $0107                                       ; $5319: $cd $07 $01
	inc  bc                                          ; $531c: $03
	ld   bc, $3508                                   ; $531d: $01 $08 $35
	adc  c                                           ; $5320: $89
	nop                                              ; $5321: $00
	inc  d                                           ; $5322: $14
	ld   hl, $0407                                   ; $5323: $21 $07 $04
	ld   bc, $0103                                   ; $5326: $01 $03 $01
	rlca                                             ; $5329: $07
	db   $d3                                         ; $532a: $d3
	rrca                                             ; $532b: $0f
	ld   bc, $0103                                   ; $532c: $01 $03 $01
	rlca                                             ; $532f: $07
	ld   bc, $d203                                   ; $5330: $01 $03 $d2
	ld   bc, $0103                                   ; $5333: $01 $03 $01
	jr   jr_01e_536d                                 ; $5336: $18 $35

	adc  c                                           ; $5338: $89
	nop                                              ; $5339: $00
	inc  d                                           ; $533a: $14
	ld   bc, $3625                                   ; $533b: $01 $25 $36
	ld   bc, $ed03                                   ; $533e: $01 $03 $ed
	rra                                              ; $5341: $1f
	ld   bc, $0103                                   ; $5342: $01 $03 $01
	rlca                                             ; $5345: $07
	ld   bc, $0103                                   ; $5346: $01 $03 $01
	ei                                               ; $5349: $fb
	ld   bc, $0103                                   ; $534a: $01 $03 $01
	rra                                              ; $534d: $1f
	scf                                              ; $534e: $37
	dec  [hl]                                        ; $534f: $35
	adc  c                                           ; $5350: $89
	nop                                              ; $5351: $00
	inc  d                                           ; $5352: $14
	ld   b, $05                                      ; $5353: $06 $05
	inc  bc                                          ; $5355: $03
	ld   bc, $0107                                   ; $5356: $01 $07 $01
	inc  bc                                          ; $5359: $03
	xor  $01                                         ; $535a: $ee $01
	inc  bc                                          ; $535c: $03
	ld   bc, $0107                                   ; $535d: $01 $07 $01
	inc  bc                                          ; $5360: $03
	ldh  [rSB], a                                    ; $5361: $e0 $01
	ld   a, a                                        ; $5363: $7f
	ld   bc, $4503                                   ; $5364: $01 $03 $45
	dec  [hl]                                        ; $5367: $35
	adc  c                                           ; $5368: $89
	nop                                              ; $5369: $00
	inc  d                                           ; $536a: $14
	ld   [de], a                                     ; $536b: $12
	ld   h, e                                        ; $536c: $63

jr_01e_536d:
	rlca                                             ; $536d: $07
	ld   bc, $0103                                   ; $536e: $01 $03 $01
	rrca                                             ; $5371: $0f
	ld   bc, $3f96                                   ; $5372: $01 $96 $3f
	ld   bc, $0103                                   ; $5375: $01 $03 $01
	rlca                                             ; $5378: $07
	or   h                                           ; $5379: $b4
	ld   bc, $0103                                   ; $537a: $01 $03 $01
	rlca                                             ; $537d: $07
	ld   d, e                                        ; $537e: $53
	dec  [hl]                                        ; $537f: $35
	adc  c                                           ; $5380: $89
	nop                                              ; $5381: $00
	inc  d                                           ; $5382: $14
	ld   [de], a                                     ; $5383: $12
	ld   [hl], l                                     ; $5384: $75
	inc  bc                                          ; $5385: $03
	ld   bc, $010f                                   ; $5386: $01 $0f $01
	inc  bc                                          ; $5389: $03
	ld   bc, $03be                                   ; $538a: $01 $be $03
	ld   bc, $880f                                   ; $538d: $01 $0f $88
	ld   bc, $0103                                   ; $5390: $01 $03 $01
	rlca                                             ; $5393: $07
	ld   bc, $6103                                   ; $5394: $01 $03 $61
	dec  [hl]                                        ; $5397: $35
	adc  c                                           ; $5398: $89
	nop                                              ; $5399: $00
	inc  d                                           ; $539a: $14
	ld   [de], a                                     ; $539b: $12
	ld   b, a                                        ; $539c: $47
	rrca                                             ; $539d: $0f
	ld   bc, $0103                                   ; $539e: $01 $03 $01
	rlca                                             ; $53a1: $07
	ld   bc, $0384                                   ; $53a2: $01 $84 $03
	ld   bc, $9e07                                   ; $53a5: $01 $07 $9e
	ld   bc, $0107                                   ; $53a8: $01 $07 $01
	inc  bc                                          ; $53ab: $03
	ld   h, e                                        ; $53ac: $63
	ld   [hl], $07                                   ; $53ad: $36 $07
	ld   d, $89                                      ; $53af: $16 $89
	nop                                              ; $53b1: $00
	rrca                                             ; $53b2: $0f
	db   $10                                         ; $53b3: $10
	ld   d, l                                        ; $53b4: $55
	rrca                                             ; $53b5: $0f
	ld   bc, $0103                                   ; $53b6: $01 $03 $01
	rlca                                             ; $53b9: $07
	ld   bc, $a190                                   ; $53ba: $01 $90 $a1
	ld   l, e                                        ; $53bd: $6b
	ret                                              ; $53be: $c9


	ld   bc, $1fd5                                   ; $53bf: $01 $d5 $1f
	inc  bc                                          ; $53c2: $03
	rrca                                             ; $53c3: $0f
	nop                                              ; $53c4: $00
	inc  d                                           ; $53c5: $14
	db   $10                                         ; $53c6: $10
	ld   bc, $1203                                   ; $53c7: $01 $03 $12
	ld   bc, $0103                                   ; $53ca: $01 $03 $01
	jp   $0301                                       ; $53cd: $c3 $01 $03


	ld   bc, $0107                                   ; $53d0: $01 $07 $01
	inc  bc                                          ; $53d3: $03
	call $0107                                       ; $53d4: $cd $07 $01
	inc  bc                                          ; $53d7: $03
	ld   bc, $3508                                   ; $53d8: $01 $08 $35
	adc  c                                           ; $53db: $89
	nop                                              ; $53dc: $00
	inc  d                                           ; $53dd: $14
	ld   hl, $0407                                   ; $53de: $21 $07 $04
	ld   bc, $0103                                   ; $53e1: $01 $03 $01
	call nc, $010f                                   ; $53e4: $d4 $0f $01
	inc  bc                                          ; $53e7: $03
	ld   bc, $0107                                   ; $53e8: $01 $07 $01
	inc  bc                                          ; $53eb: $03
	ld   bc, $01d3                                   ; $53ec: $01 $d3 $01
	inc  bc                                          ; $53ef: $03
	ld   bc, $3518                                   ; $53f0: $01 $18 $35
	adc  c                                           ; $53f3: $89
	nop                                              ; $53f4: $00
	inc  d                                           ; $53f5: $14
	ld   bc, $3625                                   ; $53f6: $01 $25 $36
	ld   bc, $0103                                   ; $53f9: $01 $03 $01
	di                                               ; $53fc: $f3
	ld   bc, $0103                                   ; $53fd: $01 $03 $01
	rlca                                             ; $5400: $07
	ld   bc, $0103                                   ; $5401: $01 $03 $01
	rrca                                             ; $5404: $0f
	ld   bc, $01f7                                   ; $5405: $01 $f7 $01
	rra                                              ; $5408: $1f
	scf                                              ; $5409: $37
	dec  [hl]                                        ; $540a: $35
	adc  c                                           ; $540b: $89
	nop                                              ; $540c: $00
	inc  d                                           ; $540d: $14
	ld   b, $05                                      ; $540e: $06 $05
	inc  bc                                          ; $5410: $03
	ld   bc, $0107                                   ; $5411: $01 $07 $01
	inc  bc                                          ; $5414: $03
	db   $ec                                         ; $5415: $ec
	ld   bc, $0107                                   ; $5416: $01 $07 $01
	inc  bc                                          ; $5419: $03
	ld   bc, $03e2                                   ; $541a: $01 $e2 $03
	ld   bc, $017f                                   ; $541d: $01 $7f $01
	inc  bc                                          ; $5420: $03
	ld   b, l                                        ; $5421: $45
	dec  [hl]                                        ; $5422: $35
	adc  c                                           ; $5423: $89
	nop                                              ; $5424: $00
	inc  d                                           ; $5425: $14
	ld   [de], a                                     ; $5426: $12
	ld   h, e                                        ; $5427: $63
	rlca                                             ; $5428: $07
	ld   bc, $0103                                   ; $5429: $01 $03 $01
	rrca                                             ; $542c: $0f
	ld   bc, $01a9                                   ; $542d: $01 $a9 $01
	inc  bc                                          ; $5430: $03
	ld   bc, $ab07                                   ; $5431: $01 $07 $ab
	rra                                              ; $5434: $1f
	ld   bc, $0103                                   ; $5435: $01 $03 $01
	rlca                                             ; $5438: $07
	ld   d, e                                        ; $5439: $53
	dec  [hl]                                        ; $543a: $35
	adc  c                                           ; $543b: $89
	nop                                              ; $543c: $00
	inc  d                                           ; $543d: $14
	ld   [de], a                                     ; $543e: $12
	ld   [hl], l                                     ; $543f: $75
	inc  bc                                          ; $5440: $03
	ld   bc, $010f                                   ; $5441: $01 $0f $01
	inc  bc                                          ; $5444: $03
	ld   bc, $b907                                   ; $5445: $01 $07 $b9
	inc  bc                                          ; $5448: $03
	ld   bc, $0187                                   ; $5449: $01 $87 $01
	inc  bc                                          ; $544c: $03
	ld   bc, $0107                                   ; $544d: $01 $07 $01
	inc  bc                                          ; $5450: $03
	ld   h, c                                        ; $5451: $61
	dec  [hl]                                        ; $5452: $35
	adc  c                                           ; $5453: $89
	nop                                              ; $5454: $00
	inc  d                                           ; $5455: $14
	ld   [de], a                                     ; $5456: $12
	ld   b, a                                        ; $5457: $47
	rrca                                             ; $5458: $0f
	ld   bc, $0103                                   ; $5459: $01 $03 $01
	rlca                                             ; $545c: $07
	ld   bc, $8603                                   ; $545d: $01 $03 $86
	ld   bc, $9803                                   ; $5460: $01 $03 $98
	ld   bc, $0107                                   ; $5463: $01 $07 $01
	inc  bc                                          ; $5466: $03
	ld   h, e                                        ; $5467: $63
	ld   [hl], $07                                   ; $5468: $36 $07
	ld   d, $89                                      ; $546a: $16 $89
	nop                                              ; $546c: $00
	rrca                                             ; $546d: $0f
	db   $10                                         ; $546e: $10
	ld   d, l                                        ; $546f: $55
	rrca                                             ; $5470: $0f
	ld   bc, $0103                                   ; $5471: $01 $03 $01
	rlca                                             ; $5474: $07
	sub  a                                           ; $5475: $97
	rlca                                             ; $5476: $07
	ld   bc, $c9ca                                   ; $5477: $01 $ca $c9
	rst  $10                                         ; $547a: $d7
	inc  bc                                          ; $547b: $03
	rra                                              ; $547c: $1f
	inc  bc                                          ; $547d: $03
	rrca                                             ; $547e: $0f
	nop                                              ; $547f: $00
	inc  d                                           ; $5480: $14
	db   $10                                         ; $5481: $10
	ld   bc, $1203                                   ; $5482: $01 $03 $12
	ld   bc, $0103                                   ; $5485: $01 $03 $01
	jp   $0301                                       ; $5488: $c3 $01 $03


	ld   bc, $0107                                   ; $548b: $01 $07 $01
	inc  bc                                          ; $548e: $03
	call $0107                                       ; $548f: $cd $07 $01
	inc  bc                                          ; $5492: $03
	ld   bc, $3508                                   ; $5493: $01 $08 $35
	adc  c                                           ; $5496: $89
	nop                                              ; $5497: $00
	inc  d                                           ; $5498: $14
	ld   hl, $0407                                   ; $5499: $21 $07 $04
	ld   bc, $d503                                   ; $549c: $01 $03 $d5
	rrca                                             ; $549f: $0f
	ld   bc, $0103                                   ; $54a0: $01 $03 $01
	rlca                                             ; $54a3: $07
	ld   bc, $0103                                   ; $54a4: $01 $03 $01
	rra                                              ; $54a7: $1f
	call z, $0301                                    ; $54a8: $cc $01 $03
	ld   bc, $3518                                   ; $54ab: $01 $18 $35
	adc  c                                           ; $54ae: $89
	nop                                              ; $54af: $00
	inc  d                                           ; $54b0: $14
	ld   bc, $3625                                   ; $54b1: $01 $25 $36
	ld   bc, $03f0                                   ; $54b4: $01 $f0 $03
	ld   bc, $0107                                   ; $54b7: $01 $07 $01
	inc  bc                                          ; $54ba: $03
	ld   bc, $010f                                   ; $54bb: $01 $0f $01
	inc  bc                                          ; $54be: $03
	ld   bc, $03f6                                   ; $54bf: $01 $f6 $03
	ld   bc, $371f                                   ; $54c2: $01 $1f $37
	dec  [hl]                                        ; $54c5: $35
	adc  c                                           ; $54c6: $89
	nop                                              ; $54c7: $00
	inc  d                                           ; $54c8: $14
	ld   b, $05                                      ; $54c9: $06 $05
	inc  bc                                          ; $54cb: $03
	ld   bc, $0107                                   ; $54cc: $01 $07 $01
	inc  bc                                          ; $54cf: $03
	ld   [$0301], a                                  ; $54d0: $ea $01 $03
	ld   bc, $013f                  ; $54d3: $01 $3f $01
	inc  bc                                          ; $54d6: $03
	call c, Call_01e_7f01                            ; $54d7: $dc $01 $7f
	ld   bc, $4503                                   ; $54da: $01 $03 $45
	dec  [hl]                                        ; $54dd: $35
	adc  c                                           ; $54de: $89
	nop                                              ; $54df: $00
	inc  d                                           ; $54e0: $14
	ld   [de], a                                     ; $54e1: $12
	ld   h, e                                        ; $54e2: $63
	rlca                                             ; $54e3: $07
	ld   bc, $0103                                   ; $54e4: $01 $03 $01
	rrca                                             ; $54e7: $0f
	xor  e                                           ; $54e8: $ab
	rlca                                             ; $54e9: $07
	ld   bc, $0103                                   ; $54ea: $01 $03 $01
	rrca                                             ; $54ed: $0f
	and  a                                           ; $54ee: $a7
	rra                                              ; $54ef: $1f
	ld   bc, $0103                                   ; $54f0: $01 $03 $01
	rlca                                             ; $54f3: $07
	ld   d, e                                        ; $54f4: $53
	dec  [hl]                                        ; $54f5: $35
	adc  c                                           ; $54f6: $89
	nop                                              ; $54f7: $00
	inc  d                                           ; $54f8: $14
	ld   [de], a                                     ; $54f9: $12
	ld   [hl], l                                     ; $54fa: $75
	inc  bc                                          ; $54fb: $03
	ld   bc, $010f                                   ; $54fc: $01 $0f $01
	or   b                                           ; $54ff: $b0
	inc  bc                                          ; $5500: $03
	ld   bc, $0107                                   ; $5501: $01 $07 $01
	inc  bc                                          ; $5504: $03
	ld   bc, $921f                                   ; $5505: $01 $1f $92
	ld   bc, $0107                                   ; $5508: $01 $07 $01
	inc  bc                                          ; $550b: $03
	ld   h, c                                        ; $550c: $61
	dec  [hl]                                        ; $550d: $35
	adc  c                                           ; $550e: $89
	nop                                              ; $550f: $00
	inc  d                                           ; $5510: $14
	ld   [de], a                                     ; $5511: $12
	ld   b, a                                        ; $5512: $47
	rrca                                             ; $5513: $0f
	ld   bc, $0103                                   ; $5514: $01 $03 $01
	sbc  d                                           ; $5517: $9a
	inc  bc                                          ; $5518: $03
	ld   bc, $1f9c                                   ; $5519: $01 $9c $1f
	add  h                                           ; $551c: $84
	ld   bc, $8203                                   ; $551d: $01 $03 $82
	ld   bc, $6303                                   ; $5520: $01 $03 $63
	ld   [hl], $07                                   ; $5523: $36 $07
	ld   d, $89                                      ; $5525: $16 $89
	nop                                              ; $5527: $00
	rrca                                             ; $5528: $0f
	db   $10                                         ; $5529: $10
	ld   d, l                                        ; $552a: $55
	rrca                                             ; $552b: $0f
	ld   bc, $0103                                   ; $552c: $01 $03 $01
	rlca                                             ; $552f: $07
	adc  e                                           ; $5530: $8b
	rrca                                             ; $5531: $0f
	or   h                                           ; $5532: $b4
	ld   l, e                                        ; $5533: $6b
	sbc  $03                                         ; $5534: $de $03
	ret  nz                                          ; $5536: $c0

	rra                                              ; $5537: $1f
	inc  bc                                          ; $5538: $03
	rrca                                             ; $5539: $0f
	nop                                              ; $553a: $00
	inc  d                                           ; $553b: $14
	db   $10                                         ; $553c: $10
	ld   bc, $1203                                   ; $553d: $01 $03 $12
	ld   bc, $0103                                   ; $5540: $01 $03 $01
	rlca                                             ; $5543: $07
	ld   bc, $0103                                   ; $5544: $01 $03 $01
	rrca                                             ; $5547: $0f
	ld   bc, $0103                                   ; $5548: $01 $03 $01
	rlca                                             ; $554b: $07
	ld   bc, $0103                                   ; $554c: $01 $03 $01
	ld   [$8935], sp                                 ; $554f: $08 $35 $89
	nop                                              ; $5552: $00
	inc  d                                           ; $5553: $14
	ld   hl, $0407                                   ; $5554: $21 $07 $04
	ld   bc, $0103                                   ; $5557: $01 $03 $01
	rlca                                             ; $555a: $07
	ld   bc, $0103                                   ; $555b: $01 $03 $01
	rrca                                             ; $555e: $0f
	ld   bc, $080b                                   ; $555f: $01 $0b $08
	ld   bc, $0107                                   ; $5562: $01 $07 $01
	inc  bc                                          ; $5565: $03
	ld   bc, $3518                                   ; $5566: $01 $18 $35
	adc  c                                           ; $5569: $89
	nop                                              ; $556a: $00
	inc  d                                           ; $556b: $14
	ld   bc, $3625                                   ; $556c: $01 $25 $36
	ld   bc, $0103                                   ; $556f: $01 $03 $01
	rlca                                             ; $5572: $07
	ld   bc, $5803                                   ; $5573: $01 $03 $58
	ld   bc, $0356                                   ; $5576: $01 $56 $03
	ld   bc, $0107                                   ; $5579: $01 $07 $01
	inc  bc                                          ; $557c: $03
	ld   bc, $371f                                   ; $557d: $01 $1f $37
	dec  [hl]                                        ; $5580: $35
	adc  c                                           ; $5581: $89
	nop                                              ; $5582: $00
	inc  d                                           ; $5583: $14
	ld   b, $05                                      ; $5584: $06 $05
	inc  bc                                          ; $5586: $03
	ld   bc, $0107                                   ; $5587: $01 $07 $01
	inc  bc                                          ; $558a: $03
	ld   bc, $780f                                   ; $558b: $01 $0f $78
	ld   bc, $077a                                   ; $558e: $01 $7a $07
	ld   bc, $0103                                   ; $5591: $01 $03 $01
	ld   a, a                                        ; $5594: $7f
	ld   bc, $4503                                   ; $5595: $01 $03 $45
	dec  [hl]                                        ; $5598: $35
	adc  c                                           ; $5599: $89
	nop                                              ; $559a: $00
	inc  d                                           ; $559b: $14
	ld   [de], a                                     ; $559c: $12
	ld   h, e                                        ; $559d: $63
	rlca                                             ; $559e: $07
	ld   bc, $0103                                   ; $559f: $01 $03 $01
	rrca                                             ; $55a2: $0f
	ld   bc, $0803                                   ; $55a3: $01 $03 $08
	ld   bc, $030e                                   ; $55a6: $01 $0e $03
	ld   bc, $011f                                   ; $55a9: $01 $1f $01
	inc  bc                                          ; $55ac: $03
	ld   bc, $5307                                   ; $55ad: $01 $07 $53
	dec  [hl]                                        ; $55b0: $35
	adc  c                                           ; $55b1: $89
	nop                                              ; $55b2: $00
	inc  d                                           ; $55b3: $14
	ld   [de], a                                     ; $55b4: $12
	ld   [hl], l                                     ; $55b5: $75
	inc  bc                                          ; $55b6: $03
	ld   bc, $010f                                   ; $55b7: $01 $0f $01
	inc  bc                                          ; $55ba: $03
	ld   bc, $0107                                   ; $55bb: $01 $07 $01
	inc  bc                                          ; $55be: $03
	ld   bc, $013f                  ; $55bf: $01 $3f $01
	inc  bc                                          ; $55c2: $03
	ld   bc, $0107                                   ; $55c3: $01 $07 $01
	inc  bc                                          ; $55c6: $03
	ld   h, c                                        ; $55c7: $61
	dec  [hl]                                        ; $55c8: $35
	adc  c                                           ; $55c9: $89
	nop                                              ; $55ca: $00
	inc  d                                           ; $55cb: $14
	ld   [de], a                                     ; $55cc: $12
	ld   b, a                                        ; $55cd: $47
	rrca                                             ; $55ce: $0f
	ld   bc, $0103                                   ; $55cf: $01 $03 $01
	rlca                                             ; $55d2: $07
	ld   bc, $0103                                   ; $55d3: $01 $03 $01
	rra                                              ; $55d6: $1f
	ld   bc, $0103                                   ; $55d7: $01 $03 $01
	rlca                                             ; $55da: $07
	ld   bc, $6303                                   ; $55db: $01 $03 $63
	ld   [hl], $07                                   ; $55de: $36 $07
	ld   d, $89                                      ; $55e0: $16 $89
	nop                                              ; $55e2: $00
	rrca                                             ; $55e3: $0f
	db   $10                                         ; $55e4: $10
	ld   d, l                                        ; $55e5: $55
	rrca                                             ; $55e6: $0f
	ld   bc, $0103                                   ; $55e7: $01 $03 $01
	rlca                                             ; $55ea: $07
	ld   bc, $0736                                   ; $55eb: $01 $36 $07
	ld   l, e                                        ; $55ee: $6b
	rrca                                             ; $55ef: $0f
	ld   de, $1f03                                   ; $55f0: $11 $03 $1f
	inc  bc                                          ; $55f3: $03
	rrca                                             ; $55f4: $0f
	nop                                              ; $55f5: $00
	inc  d                                           ; $55f6: $14
	db   $10                                         ; $55f7: $10
	ld   bc, $ac03                                   ; $55f8: $01 $03 $ac
	ld   bc, $017f                                   ; $55fb: $01 $7f $01
	inc  bc                                          ; $55fe: $03
	ld   bc, $0107                                   ; $55ff: $01 $07 $01
	inc  bc                                          ; $5602: $03
	ld   bc, $010f                                   ; $5603: $01 $0f $01
	inc  bc                                          ; $5606: $03
	ld   bc, $0107                                   ; $5607: $01 $07 $01
	jp   z, $8935                                    ; $560a: $ca $35 $89

	nop                                              ; $560d: $00
	inc  d                                           ; $560e: $14
	ld   hl, $da07                                   ; $560f: $21 $07 $da
	ld   bc, $011f                                   ; $5612: $01 $1f $01
	inc  bc                                          ; $5615: $03
	ld   bc, $0107                                   ; $5616: $01 $07 $01
	inc  bc                                          ; $5619: $03
	ld   bc, $010f                                   ; $561a: $01 $0f $01
	inc  bc                                          ; $561d: $03
	ld   bc, $0107                                   ; $561e: $01 $07 $01
	inc  bc                                          ; $5621: $03
	reti                                             ; $5622: $d9


	dec  [hl]                                        ; $5623: $35
	adc  c                                           ; $5624: $89
	nop                                              ; $5625: $00
	inc  d                                           ; $5626: $14
	ld   bc, $c925                                   ; $5627: $01 $25 $c9
	ccf                                              ; $562a: $3f
	ld   bc, $0103                                   ; $562b: $01 $03 $01
	rlca                                             ; $562e: $07
	ld   bc, $0103                                   ; $562f: $01 $03 $01
	rrca                                             ; $5632: $0f
	ld   bc, $0103                                   ; $5633: $01 $03 $01
	rlca                                             ; $5636: $07
	ld   bc, $0103                                   ; $5637: $01 $03 $01
	add  sp, $35                                     ; $563a: $e8 $35
	adc  c                                           ; $563c: $89
	nop                                              ; $563d: $00
	inc  d                                           ; $563e: $14
	ld   b, $c4                                      ; $563f: $06 $c4
	ld   bc, $0103                                   ; $5641: $01 $03 $01
	rlca                                             ; $5644: $07
	ld   bc, $0103                                   ; $5645: $01 $03 $01
	rrca                                             ; $5648: $0f
	ld   bc, $0103                                   ; $5649: $01 $03 $01
	rlca                                             ; $564c: $07
	ld   bc, $0103                                   ; $564d: $01 $03 $01
	rst  $38                                         ; $5650: $ff
	ld   bc, $3506                                   ; $5651: $01 $06 $35
	adc  c                                           ; $5654: $89
	nop                                              ; $5655: $00
	inc  d                                           ; $5656: $14
	ld   [de], a                                     ; $5657: $12
	ld   [hl+], a                                    ; $5658: $22
	ld   bc, $0107                                   ; $5659: $01 $07 $01
	inc  bc                                          ; $565c: $03
	ld   bc, $010f                                   ; $565d: $01 $0f $01
	inc  bc                                          ; $5660: $03
	ld   bc, $0107                                   ; $5661: $01 $07 $01
	inc  bc                                          ; $5664: $03
	ld   bc, $011f                                   ; $5665: $01 $1f $01
	inc  bc                                          ; $5668: $03
	ld   bc, $3514                                   ; $5669: $01 $14 $35
	adc  c                                           ; $566c: $89
	nop                                              ; $566d: $00
	inc  d                                           ; $566e: $14
	ld   [de], a                                     ; $566f: $12
	inc  [hl]                                        ; $5670: $34
	ld   bc, $0103                                   ; $5671: $01 $03 $01
	rrca                                             ; $5674: $0f
	ld   bc, $0103                                   ; $5675: $01 $03 $01
	rlca                                             ; $5678: $07
	ld   bc, $0103                                   ; $5679: $01 $03 $01
	ccf                                              ; $567c: $3f
	ld   bc, $0103                                   ; $567d: $01 $03 $01
	rlca                                             ; $5680: $07
	ld   bc, $3522                                   ; $5681: $01 $22 $35
	adc  c                                           ; $5684: $89
	nop                                              ; $5685: $00
	inc  d                                           ; $5686: $14
	ld   [de], a                                     ; $5687: $12
	ld   b, $01                                      ; $5688: $06 $01
	rrca                                             ; $568a: $0f
	ld   bc, $0103                                   ; $568b: $01 $03 $01
	rlca                                             ; $568e: $07
	ld   bc, $0103                                   ; $568f: $01 $03 $01
	rra                                              ; $5692: $1f
	ld   bc, $0103                                   ; $5693: $01 $03 $01
	rlca                                             ; $5696: $07
	ld   bc, $3620                                   ; $5697: $01 $20 $36
	rlca                                             ; $569a: $07
	ld   d, $89                                      ; $569b: $16 $89
	nop                                              ; $569d: $00
	rrca                                             ; $569e: $0f
	db   $10                                         ; $569f: $10
	inc  d                                           ; $56a0: $14
	ld   bc, $010f                                   ; $56a1: $01 $0f $01
	inc  bc                                          ; $56a4: $03
	rra                                              ; $56a5: $1f
	nop                                              ; $56a6: $00
	ld   e, $07                                      ; $56a7: $1e $07
	ld   bc, $0103                                   ; $56a9: $01 $03 $01
	ld   a, [de]                                     ; $56ac: $1a
	nop                                              ; $56ad: $00
	inc  bc                                          ; $56ae: $03
	rrca                                             ; $56af: $0f
	nop                                              ; $56b0: $00
	inc  d                                           ; $56b1: $14
	db   $10                                         ; $56b2: $10
	ld   bc, $be03                                   ; $56b3: $01 $03 $be
	ld   bc, $0103                                   ; $56b6: $01 $03 $01
	rra                                              ; $56b9: $1f
	ld   bc, $0103                                   ; $56ba: $01 $03 $01
	rlca                                             ; $56bd: $07
	ld   bc, $0103                                   ; $56be: $01 $03 $01
	rrca                                             ; $56c1: $0f
	ld   bc, $0103                                   ; $56c2: $01 $03 $01
	cp   h                                           ; $56c5: $bc
	dec  [hl]                                        ; $56c6: $35
	adc  c                                           ; $56c7: $89
	nop                                              ; $56c8: $00
	inc  d                                           ; $56c9: $14
	ld   hl, $a807                                   ; $56ca: $21 $07 $a8
	ld   bc, $0103                                   ; $56cd: $01 $03 $01
	ld   a, a                                        ; $56d0: $7f
	ld   bc, $0103                                   ; $56d1: $01 $03 $01
	rlca                                             ; $56d4: $07
	ld   bc, $0103                                   ; $56d5: $01 $03 $01
	rrca                                             ; $56d8: $0f
	ld   bc, $0103                                   ; $56d9: $01 $03 $01
	rlca                                             ; $56dc: $07
	swap l                                           ; $56dd: $cb $35
	adc  c                                           ; $56df: $89
	nop                                              ; $56e0: $00
	inc  d                                           ; $56e1: $14
	ld   bc, $db25                                   ; $56e2: $01 $25 $db
	inc  bc                                          ; $56e5: $03
	ld   bc, $011f                                   ; $56e6: $01 $1f $01
	inc  bc                                          ; $56e9: $03
	ld   bc, $6707                                   ; $56ea: $01 $07 $67
	nop                                              ; $56ed: $00
	ld   h, [hl]                                     ; $56ee: $66
	inc  bc                                          ; $56ef: $03
	ld   bc, $010f                                   ; $56f0: $01 $0f $01
	inc  bc                                          ; $56f3: $03
	ld   bc, $35dc                                   ; $56f4: $01 $dc $35
	adc  c                                           ; $56f7: $89
	nop                                              ; $56f8: $00
	inc  d                                           ; $56f9: $14
	ld   b, $e8                                      ; $56fa: $06 $e8
	ld   bc, $0103                                   ; $56fc: $01 $03 $01
	ccf                                              ; $56ff: $3f
	ld   bc, $0103                                   ; $5700: $01 $03 $01
	rlca                                             ; $5703: $07
	ld   bc, $5556                                   ; $5704: $01 $56 $55
	ld   bc, $010f                                   ; $5707: $01 $0f $01
	inc  bc                                          ; $570a: $03
	ld   bc, $eb07                                   ; $570b: $01 $07 $eb
	dec  [hl]                                        ; $570e: $35
	adc  c                                           ; $570f: $89
	nop                                              ; $5710: $00
	inc  d                                           ; $5711: $14
	ld   [de], a                                     ; $5712: $12
	call $0103                                       ; $5713: $cd $03 $01
	rra                                              ; $5716: $1f
	ld   bc, $0103                                   ; $5717: $01 $03 $01
	rlca                                             ; $571a: $07
	ld   bc, $0103                                   ; $571b: $01 $03 $01
	rrca                                             ; $571e: $0f
	ld   bc, $0103                                   ; $571f: $01 $03 $01
	rlca                                             ; $5722: $07
	ld   c, a                                        ; $5723: $4f
	ld   c, [hl]                                     ; $5724: $4e
	ld   a, [$8935]                                  ; $5725: $fa $35 $89
	nop                                              ; $5728: $00
	inc  d                                           ; $5729: $14
	ld   [de], a                                     ; $572a: $12
	sbc  $01                                         ; $572b: $de $01
	rst  $38                                         ; $572d: $ff
	ld   bc, $0103                                   ; $572e: $01 $03 $01
	rlca                                             ; $5731: $07
	ld   bc, $0103                                   ; $5732: $01 $03 $01
	rrca                                             ; $5735: $0f
	ld   bc, $0103                                   ; $5736: $01 $03 $01
	rlca                                             ; $5739: $07
	cp   a                                           ; $573a: $bf
	cp   [hl]                                        ; $573b: $be
	inc  bc                                          ; $573c: $03
	add  hl, bc                                      ; $573d: $09
	dec  [hl]                                        ; $573e: $35
	adc  c                                           ; $573f: $89
	nop                                              ; $5740: $00
	inc  d                                           ; $5741: $14
	ld   [de], a                                     ; $5742: $12
	cpl                                              ; $5743: $2f
	rra                                              ; $5744: $1f
	ld   bc, $0103                                   ; $5745: $01 $03 $01
	rlca                                             ; $5748: $07
	ld   bc, $0103                                   ; $5749: $01 $03 $01
	rrca                                             ; $574c: $0f
	ld   bc, $0103                                   ; $574d: $01 $03 $01
	rlca                                             ; $5750: $07
	ld   bc, $0b03                                   ; $5751: $01 $03 $0b
	ld   [hl], $07                                   ; $5754: $36 $07
	ld   d, $89                                      ; $5756: $16 $89
	nop                                              ; $5758: $00
	rrca                                             ; $5759: $0f
	db   $10                                         ; $575a: $10
	dec  a                                           ; $575b: $3d
	ccf                                              ; $575c: $3f
	ld   bc, $0103                                   ; $575d: $01 $03 $01
	rlca                                             ; $5760: $07
	ld   bc, $0103                                   ; $5761: $01 $03 $01
	rrca                                             ; $5764: $0f
	ld   bc, $0103                                   ; $5765: $01 $03 $01
	ld   c, $03                                      ; $5768: $0e $03
	rrca                                             ; $576a: $0f
	nop                                              ; $576b: $00
	inc  d                                           ; $576c: $14
	db   $10                                         ; $576d: $10
	ld   bc, $a203                                   ; $576e: $01 $03 $a2
	ld   bc, $0103                                   ; $5771: $01 $03 $01
	rlca                                             ; $5774: $07
	ld   bc, $0103                                   ; $5775: $01 $03 $01
	rrca                                             ; $5778: $0f
	ld   bc, $0103                                   ; $5779: $01 $03 $01
	rlca                                             ; $577c: $07
	ld   bc, $0103                                   ; $577d: $01 $03 $01
	cp   b                                           ; $5780: $b8
	ret  c                                           ; $5781: $d8

	adc  c                                           ; $5782: $89
	nop                                              ; $5783: $00
	inc  d                                           ; $5784: $14
	call z, $a407                                    ; $5785: $cc $07 $a4
	ld   [hl], b                                     ; $5788: $70
	ld   bc, $0103                                   ; $5789: $01 $03 $01
	rlca                                             ; $578c: $07
	ld   bc, $0103                                   ; $578d: $01 $03 $01
	rrca                                             ; $5790: $0f
	ld   bc, $0103                                   ; $5791: $01 $03 $01
	rlca                                             ; $5794: $07
	ld   bc, $0103                                   ; $5795: $01 $03 $01
	ret  z                                           ; $5798: $c8

	ret  c                                           ; $5799: $d8

	adc  c                                           ; $579a: $89
	nop                                              ; $579b: $00
	inc  d                                           ; $579c: $14
	db   $ec                                         ; $579d: $ec
	dec  h                                           ; $579e: $25
	add  $01                                         ; $579f: $c6 $01
	inc  bc                                          ; $57a1: $03
	ld   bc, $0107                                   ; $57a2: $01 $07 $01
	inc  bc                                          ; $57a5: $03
	ld   bc, $010f                                   ; $57a6: $01 $0f $01
	inc  bc                                          ; $57a9: $03
	ld   bc, $0107                                   ; $57aa: $01 $07 $01
	inc  bc                                          ; $57ad: $03
	ld   bc, $e73f                                   ; $57ae: $01 $3f $e7
	ret  c                                           ; $57b1: $d8

	adc  c                                           ; $57b2: $89
	nop                                              ; $57b3: $00
	inc  d                                           ; $57b4: $14
	db   $eb                                         ; $57b5: $eb
	call nc, Boot                                    ; $57b6: $d4 $00 $01
	inc  bc                                          ; $57b9: $03
	ld   bc, $0107                                   ; $57ba: $01 $07 $01
	inc  bc                                          ; $57bd: $03
	ld   bc, $010f                                   ; $57be: $01 $0f $01
	inc  bc                                          ; $57c1: $03
	ld   bc, $0107                                   ; $57c2: $01 $07 $01
	inc  bc                                          ; $57c5: $03
	ld   c, $0f                                      ; $57c6: $0e $0f
	add  sp, -$28                                    ; $57c8: $e8 $d8
	adc  c                                           ; $57ca: $89
	nop                                              ; $57cb: $00
	inc  d                                           ; $57cc: $14
	rst  $38                                         ; $57cd: $ff
	ret  nc                                          ; $57ce: $d0

	ld   bc, $1211                                   ; $57cf: $01 $11 $12
	ld   bc, $0107                                   ; $57d2: $01 $07 $01
	inc  bc                                          ; $57d5: $03
	ld   bc, $010f                                   ; $57d6: $01 $0f $01
	inc  bc                                          ; $57d9: $03
	ld   bc, $0107                                   ; $57da: $01 $07 $01
	inc  bc                                          ; $57dd: $03
	ld   bc, $07ff                                   ; $57de: $01 $ff $07
	ret  c                                           ; $57e1: $d8

	adc  c                                           ; $57e2: $89
	nop                                              ; $57e3: $00
	inc  d                                           ; $57e4: $14
	rst  $38                                         ; $57e5: $ff
	ld   hl, $0103                                   ; $57e6: $21 $03 $01
	rlca                                             ; $57e9: $07
	ld   bc, $0103                                   ; $57ea: $01 $03 $01
	rrca                                             ; $57ed: $0f
	ld   bc, $0103                                   ; $57ee: $01 $03 $01
	rlca                                             ; $57f1: $07
	ld   bc, $0103                                   ; $57f2: $01 $03 $01
	rra                                              ; $57f5: $1f
	ld   bc, $1503                                   ; $57f6: $01 $03 $15
	ret  c                                           ; $57f9: $d8

	adc  c                                           ; $57fa: $89
	nop                                              ; $57fb: $00
	inc  d                                           ; $57fc: $14
	rst  $38                                         ; $57fd: $ff
	inc  sp                                          ; $57fe: $33
	rlca                                             ; $57ff: $07
	ld   bc, $0103                                   ; $5800: $01 $03 $01
	rrca                                             ; $5803: $0f
	ld   bc, $0103                                   ; $5804: $01 $03 $01
	rlca                                             ; $5807: $07
	ld   bc, $0103                                   ; $5808: $01 $03 $01
	ccf                                              ; $580b: $3f
	ld   bc, $3703                                   ; $580c: $01 $03 $37
	ld   [hl], $07                                   ; $580f: $36 $07
	ei                                               ; $5811: $fb
	adc  c                                           ; $5812: $89
	nop                                              ; $5813: $00
	rrca                                             ; $5814: $0f
	db   $fd                                         ; $5815: $fd
	ld   bc, $0107                                   ; $5816: $01 $07 $01
	inc  bc                                          ; $5819: $03
	ld   bc, $010f                                   ; $581a: $01 $0f $01
	inc  bc                                          ; $581d: $03
	ld   bc, $0107                                   ; $581e: $01 $07 $01
	inc  bc                                          ; $5821: $03
	ld   bc, $030a                                   ; $5822: $01 $0a $03
	ld   a, [de]                                     ; $5825: $1a
	nop                                              ; $5826: $00
	inc  bc                                          ; $5827: $03
	db   $10                                         ; $5828: $10
	ld   bc, $aa03                                   ; $5829: $01 $03 $aa
	add  c                                           ; $582c: $81
	nop                                              ; $582d: $00
	inc  b                                           ; $582e: $04
	ld   bc, $0103                                   ; $582f: $01 $03 $01
	rlca                                             ; $5832: $07
	inc  b                                           ; $5833: $04
	add  l                                           ; $5834: $85
	nop                                              ; $5835: $00
	ld   bc, $35bf                                   ; $5836: $01 $bf $35
	adc  c                                           ; $5839: $89
	nop                                              ; $583a: $00
	ld   [bc], a                                     ; $583b: $02
	ld   hl, $ac07                                   ; $583c: $21 $07 $ac
	add  b                                           ; $583f: $80
	nop                                              ; $5840: $00
	ld   b, $05                                      ; $5841: $06 $05
	inc  bc                                          ; $5843: $03
	ld   bc, $017f                                   ; $5844: $01 $7f $01
	inc  bc                                          ; $5847: $03
	ld   a, d                                        ; $5848: $7a
	add  d                                           ; $5849: $82
	nop                                              ; $584a: $00
	add  b                                           ; $584b: $80
	and  l                                           ; $584c: $a5
	ld   [bc], a                                     ; $584d: $02
	nop                                              ; $584e: $00
	cp   a                                           ; $584f: $bf
	dec  [hl]                                        ; $5850: $35
	adc  c                                           ; $5851: $89
	nop                                              ; $5852: $00
	ld   [bc], a                                     ; $5853: $02
	ld   bc, $ae25                                   ; $5854: $01 $25 $ae
	add  d                                           ; $5857: $82
	nop                                              ; $5858: $00
	dec  c                                           ; $5859: $0d
	ld   a, e                                        ; $585a: $7b
	rlca                                             ; $585b: $07
	ld   bc, $0103                                   ; $585c: $01 $03 $01
	rrca                                             ; $585f: $0f
	ld   bc, $0103                                   ; $5860: $01 $03 $01
	push de                                          ; $5863: $d5
	ld   bc, $bfa7                                   ; $5864: $01 $a7 $bf
	dec  [hl]                                        ; $5867: $35
	adc  c                                           ; $5868: $89
	nop                                              ; $5869: $00
	inc  d                                           ; $586a: $14
	ld   b, $8c                                      ; $586b: $06 $8c
	ld   [hl], h                                     ; $586d: $74
	ld   bc, $0103                                   ; $586e: $01 $03 $01
	rra                                              ; $5871: $1f
	ld   bc, $0103                                   ; $5872: $01 $03 $01
	rlca                                             ; $5875: $07
	ld   bc, $0103                                   ; $5876: $01 $03 $01
	rrca                                             ; $5879: $0f
	ld   bc, $0103                                   ; $587a: $01 $03 $01
	ld   h, e                                        ; $587d: $63
	cp   a                                           ; $587e: $bf
	dec  [hl]                                        ; $587f: $35
	adc  c                                           ; $5880: $89
	nop                                              ; $5881: $00
	inc  d                                           ; $5882: $14
	ld   [de], a                                     ; $5883: $12
	db   $fc                                         ; $5884: $fc
	ld   bc, $0103                                   ; $5885: $01 $03 $01
	ccf                                              ; $5888: $3f
	ld   bc, $0103                                   ; $5889: $01 $03 $01
	rlca                                             ; $588c: $07
	ld   bc, $0103                                   ; $588d: $01 $03 $01
	rrca                                             ; $5890: $0f
	ld   bc, $0103                                   ; $5891: $01 $03 $01
	rlca                                             ; $5894: $07
	ld   bc, $35ea                                   ; $5895: $01 $ea $35
	adc  c                                           ; $5898: $89
	nop                                              ; $5899: $00
	inc  d                                           ; $589a: $14
	ld   [de], a                                     ; $589b: $12
	adc  $01                                         ; $589c: $ce $01
	rra                                              ; $589e: $1f
	ld   bc, $0103                                   ; $589f: $01 $03 $01
	rlca                                             ; $58a2: $07
	ld   bc, $0103                                   ; $58a3: $01 $03 $01
	rrca                                             ; $58a6: $0f
	ld   bc, $0103                                   ; $58a7: $01 $03 $01
	rlca                                             ; $58aa: $07
	ld   bc, $0103                                   ; $58ab: $01 $03 $01
	ld   hl, sp+$35                                  ; $58ae: $f8 $35
	adc  c                                           ; $58b0: $89
	nop                                              ; $58b1: $00
	inc  d                                           ; $58b2: $14
	ld   [de], a                                     ; $58b3: $12
	jr   nz, jr_01e_58b7                             ; $58b4: $20 $01

	inc  bc                                          ; $58b6: $03

jr_01e_58b7:
	ld   bc, $0107                                   ; $58b7: $01 $07 $01
	inc  bc                                          ; $58ba: $03
	ld   bc, $010f                                   ; $58bb: $01 $0f $01
	inc  bc                                          ; $58be: $03
	ld   bc, $0107                                   ; $58bf: $01 $07 $01
	inc  bc                                          ; $58c2: $03
	ld   bc, $361a                                   ; $58c3: $01 $1a $36
	rlca                                             ; $58c6: $07
	ld   d, $89                                      ; $58c7: $16 $89
	nop                                              ; $58c9: $00
	rrca                                             ; $58ca: $0f
	db   $10                                         ; $58cb: $10
	ld   [hl-], a                                    ; $58cc: $32
	ld   bc, $0103                                   ; $58cd: $01 $03 $01
	rlca                                             ; $58d0: $07
	ld   bc, $0103                                   ; $58d1: $01 $03 $01
	rrca                                             ; $58d4: $0f
	ld   bc, $0103                                   ; $58d5: $01 $03 $01
	rlca                                             ; $58d8: $07
	add  hl, sp                                      ; $58d9: $39
	inc  bc                                          ; $58da: $03
	ld   b, a                                        ; $58db: $47
	nop                                              ; $58dc: $00
	nop                                              ; $58dd: $00
	inc  bc                                          ; $58de: $03
	add  b                                           ; $58df: $80
	nop                                              ; $58e0: $00
	ld   bc, $0206                                   ; $58e1: $01 $06 $02
	add  b                                           ; $58e4: $80
	nop                                              ; $58e5: $00
	nop                                              ; $58e6: $00
	ld   bc, $0083                                   ; $58e7: $01 $83 $00
	nop                                              ; $58ea: $00
	ld   bc, $0083                                   ; $58eb: $01 $83 $00
	ld   bc, $0c03                                   ; $58ee: $01 $03 $0c
	adc  c                                           ; $58f1: $89
	nop                                              ; $58f2: $00
	inc  bc                                          ; $58f3: $03
	dec  bc                                          ; $58f4: $0b
	nop                                              ; $58f5: $00
	ld   b, $02                                      ; $58f6: $06 $02
	add  c                                           ; $58f8: $81
	nop                                              ; $58f9: $00
	nop                                              ; $58fa: $00
	ld   bc, $0084                                   ; $58fb: $01 $84 $00
	nop                                              ; $58fe: $00
	ld   bc, $0082                                   ; $58ff: $01 $82 $00
	ld   bc, $0c03                                   ; $5902: $01 $03 $0c
	adc  c                                           ; $5905: $89
	nop                                              ; $5906: $00
	ld   [bc], a                                     ; $5907: $02
	dec  bc                                          ; $5908: $0b
	nop                                              ; $5909: $00
	inc  b                                           ; $590a: $04
	add  c                                           ; $590b: $81
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	ld   bc, $0085                                   ; $590e: $01 $85 $00
	nop                                              ; $5911: $00
	ld   bc, $0082                                   ; $5912: $01 $82 $00
	ld   bc, $0c03                                   ; $5915: $01 $03 $0c
	adc  c                                           ; $5918: $89
	nop                                              ; $5919: $00
	ld   bc, $040b                                   ; $591a: $01 $0b $04
	add  c                                           ; $591d: $81
	nop                                              ; $591e: $00
	add  b                                           ; $591f: $80
	ld   [bc], a                                     ; $5920: $02
	nop                                              ; $5921: $00
	ld   bc, $0084                                   ; $5922: $01 $84 $00
	nop                                              ; $5925: $00
	ld   bc, $0082                                   ; $5926: $01 $82 $00
	ld   bc, $0c03                                   ; $5929: $01 $03 $0c
	adc  c                                           ; $592c: $89
	nop                                              ; $592d: $00
	ld   bc, $040b                                   ; $592e: $01 $0b $04
	add  c                                           ; $5931: $81
	nop                                              ; $5932: $00
	inc  bc                                          ; $5933: $03
	ld   [bc], a                                     ; $5934: $02
	nop                                              ; $5935: $00
	ld   [bc], a                                     ; $5936: $02
	ld   bc, $0083                                   ; $5937: $01 $83 $00
	nop                                              ; $593a: $00
	ld   bc, $0081                                   ; $593b: $01 $81 $00
	ld   [bc], a                                     ; $593e: $02
	ld   [$0c0b], sp                                 ; $593f: $08 $0b $0c
	adc  c                                           ; $5942: $89
	nop                                              ; $5943: $00
	inc  bc                                          ; $5944: $03
	dec  bc                                          ; $5945: $0b
	ld   c, $00                                      ; $5946: $0e $00
	ld   [bc], a                                     ; $5948: $02
	add  b                                           ; $5949: $80
	nop                                              ; $594a: $00
	nop                                              ; $594b: $00
	ld   [bc], a                                     ; $594c: $02
	add  b                                           ; $594d: $80
	nop                                              ; $594e: $00
	nop                                              ; $594f: $00
	inc  bc                                          ; $5950: $03
	add  c                                           ; $5951: $81
	nop                                              ; $5952: $00
	ld   bc, $0203                                   ; $5953: $01 $03 $02
	add  b                                           ; $5956: $80
	nop                                              ; $5957: $00
	inc  bc                                          ; $5958: $03
	ld   [bc], a                                     ; $5959: $02
	nop                                              ; $595a: $00
	add  hl, bc                                      ; $595b: $09
	inc  c                                           ; $595c: $0c
	adc  c                                           ; $595d: $89
	nop                                              ; $595e: $00
	ld   bc, $0e0b                                   ; $595f: $01 $0b $0e
	add  d                                           ; $5962: $82
	nop                                              ; $5963: $00
	add  c                                           ; $5964: $81
	ld   [bc], a                                     ; $5965: $02
	nop                                              ; $5966: $00
	ld   bc, $0081                                   ; $5967: $01 $81 $00
	ld   bc, $0003                                   ; $596a: $01 $03 $00
	add  b                                           ; $596d: $80
	ld   [bc], a                                     ; $596e: $02
	nop                                              ; $596f: $00
	ld   c, $80                                      ; $5970: $0e $80
	nop                                              ; $5972: $00
	nop                                              ; $5973: $00
	dec  bc                                          ; $5974: $0b
	adc  c                                           ; $5975: $89
	nop                                              ; $5976: $00
	ld   bc, $090c                                   ; $5977: $01 $0c $09
	add  d                                           ; $597a: $82
	nop                                              ; $597b: $00
	nop                                              ; $597c: $00
	ld   [bc], a                                     ; $597d: $02
	add  b                                           ; $597e: $80
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	ld   bc, $0081                                   ; $5981: $01 $81 $00
	ld   [bc], a                                     ; $5984: $02
	ld   bc, $000c                                   ; $5985: $01 $0c $00
	ld   b, b                                        ; $5988: $40
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	inc  bc                                          ; $598b: $03
	add  b                                           ; $598c: $80
	nop                                              ; $598d: $00
	nop                                              ; $598e: $00
	dec  b                                           ; $598f: $05
	add  a                                           ; $5990: $87
	nop                                              ; $5991: $00
	nop                                              ; $5992: $00
	inc  bc                                          ; $5993: $03
	add  b                                           ; $5994: $80
	nop                                              ; $5995: $00
	nop                                              ; $5996: $00
	inc  bc                                          ; $5997: $03
	add  b                                           ; $5998: $80
	nop                                              ; $5999: $00
	ld   bc, $0402                                   ; $599a: $01 $02 $04
	adc  c                                           ; $599d: $89
	nop                                              ; $599e: $00
	ld   [bc], a                                     ; $599f: $02
	inc  bc                                          ; $59a0: $03
	nop                                              ; $59a1: $00
	dec  b                                           ; $59a2: $05
	adc  b                                           ; $59a3: $88
	nop                                              ; $59a4: $00
	nop                                              ; $59a5: $00
	inc  bc                                          ; $59a6: $03
	add  b                                           ; $59a7: $80
	nop                                              ; $59a8: $00
	nop                                              ; $59a9: $00
	inc  bc                                          ; $59aa: $03
	add  b                                           ; $59ab: $80
	nop                                              ; $59ac: $00
	ld   bc, $0402                                   ; $59ad: $01 $02 $04
	adc  c                                           ; $59b0: $89
	nop                                              ; $59b1: $00
	inc  bc                                          ; $59b2: $03
	inc  bc                                          ; $59b3: $03
	nop                                              ; $59b4: $00
	dec  b                                           ; $59b5: $05
	nop                                              ; $59b6: $00
	add  b                                           ; $59b7: $80
	inc  bc                                          ; $59b8: $03
	add  b                                           ; $59b9: $80
	nop                                              ; $59ba: $00
	inc  b                                           ; $59bb: $04
	ld   bc, $0100                                   ; $59bc: $01 $00 $01
	nop                                              ; $59bf: $00
	inc  bc                                          ; $59c0: $03
	add  e                                           ; $59c1: $83
	nop                                              ; $59c2: $00
	ld   [bc], a                                     ; $59c3: $02
	inc  bc                                          ; $59c4: $03
	ld   [bc], a                                     ; $59c5: $02
	inc  b                                           ; $59c6: $04
	adc  c                                           ; $59c7: $89
	nop                                              ; $59c8: $00
	ld   [bc], a                                     ; $59c9: $02
	inc  bc                                          ; $59ca: $03
	dec  b                                           ; $59cb: $05
	inc  bc                                          ; $59cc: $03
	add  b                                           ; $59cd: $80
	nop                                              ; $59ce: $00
	ld   [bc], a                                     ; $59cf: $02
	inc  bc                                          ; $59d0: $03
	nop                                              ; $59d1: $00
	ld   bc, $0081                                   ; $59d2: $01 $81 $00
	ld   bc, $0301                                   ; $59d5: $01 $01 $03
	add  e                                           ; $59d8: $83
	nop                                              ; $59d9: $00
	ld   [bc], a                                     ; $59da: $02
	inc  bc                                          ; $59db: $03
	ld   [bc], a                                     ; $59dc: $02
	inc  b                                           ; $59dd: $04
	adc  c                                           ; $59de: $89
	nop                                              ; $59df: $00
	ld   [bc], a                                     ; $59e0: $02
	inc  bc                                          ; $59e1: $03
	dec  b                                           ; $59e2: $05
	inc  bc                                          ; $59e3: $03
	add  c                                           ; $59e4: $81
	nop                                              ; $59e5: $00
	nop                                              ; $59e6: $00
	ld   [bc], a                                     ; $59e7: $02
	add  e                                           ; $59e8: $83
	nop                                              ; $59e9: $00
	ld   bc, $0301                                   ; $59ea: $01 $01 $03
	add  c                                           ; $59ed: $81
	nop                                              ; $59ee: $00
	inc  bc                                          ; $59ef: $03
	inc  bc                                          ; $59f0: $03
	nop                                              ; $59f1: $00
	ld   [bc], a                                     ; $59f2: $02
	inc  b                                           ; $59f3: $04
	adc  c                                           ; $59f4: $89
	nop                                              ; $59f5: $00
	inc  bc                                          ; $59f6: $03
	inc  bc                                          ; $59f7: $03
	dec  b                                           ; $59f8: $05
	inc  bc                                          ; $59f9: $03
	ld   [$0080], sp                                 ; $59fa: $08 $80 $00
	ld   bc, $0103                                   ; $59fd: $01 $03 $01
	add  h                                           ; $5a00: $84
	nop                                              ; $5a01: $00
	ld   bc, $0001                                   ; $5a02: $01 $01 $00
	add  b                                           ; $5a05: $80
	ld   [$0002], sp                                 ; $5a06: $08 $02 $00
	ld   a, [bc]                                     ; $5a09: $0a
	inc  b                                           ; $5a0a: $04
	adc  c                                           ; $5a0b: $89
	nop                                              ; $5a0c: $00
	ld   [bc], a                                     ; $5a0d: $02
	inc  bc                                          ; $5a0e: $03
	dec  c                                           ; $5a0f: $0d
	inc  bc                                          ; $5a10: $03
	add  b                                           ; $5a11: $80
	nop                                              ; $5a12: $00
	ld   [bc], a                                     ; $5a13: $02
	inc  bc                                          ; $5a14: $03
	nop                                              ; $5a15: $00
	ld   bc, $0082                                   ; $5a16: $01 $82 $00
	nop                                              ; $5a19: $00
	ld   bc, $0082                                   ; $5a1a: $01 $82 $00
	nop                                              ; $5a1d: $00
	dec  c                                           ; $5a1e: $0d
	add  b                                           ; $5a1f: $80
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	inc  bc                                          ; $5a22: $03
	adc  c                                           ; $5a23: $89
	nop                                              ; $5a24: $00
	ld   bc, $0904                                   ; $5a25: $01 $04 $09
	add  c                                           ; $5a28: $81
	nop                                              ; $5a29: $00
	ld   bc, $0103                                   ; $5a2a: $01 $03 $01
	add  l                                           ; $5a2d: $85
	nop                                              ; $5a2e: $00
	ld   bc, $000c                                   ; $5a2f: $01 $0c $00
	ld   b, e                                        ; $5a32: $43
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	inc  bc                                          ; $5a35: $03
	add  b                                           ; $5a36: $80
	nop                                              ; $5a37: $00
	nop                                              ; $5a38: $00
	dec  c                                           ; $5a39: $0d
	add  l                                           ; $5a3a: $85
	nop                                              ; $5a3b: $00
	add  b                                           ; $5a3c: $80
	add  hl, bc                                      ; $5a3d: $09
	add  c                                           ; $5a3e: $81
	nop                                              ; $5a3f: $00
	nop                                              ; $5a40: $00
	inc  bc                                          ; $5a41: $03
	add  b                                           ; $5a42: $80
	nop                                              ; $5a43: $00
	ld   bc, $0409                                   ; $5a44: $01 $09 $04
	adc  c                                           ; $5a47: $89
	nop                                              ; $5a48: $00
	ld   [bc], a                                     ; $5a49: $02
	inc  bc                                          ; $5a4a: $03
	nop                                              ; $5a4b: $00
	ld   c, $80                                      ; $5a4c: $0e $80
	nop                                              ; $5a4e: $00
	ld   [bc], a                                     ; $5a4f: $02
	inc  bc                                          ; $5a50: $03
	nop                                              ; $5a51: $00
	add  hl, bc                                      ; $5a52: $09
	add  d                                           ; $5a53: $82
	nop                                              ; $5a54: $00
	ld   bc, $000a                                   ; $5a55: $01 $0a $00
	add  b                                           ; $5a58: $80
	ld   a, [bc]                                     ; $5a59: $0a
	add  c                                           ; $5a5a: $81
	nop                                              ; $5a5b: $00
	ld   bc, $0409                                   ; $5a5c: $01 $09 $04
	adc  c                                           ; $5a5f: $89
	nop                                              ; $5a60: $00
	ld   [bc], a                                     ; $5a61: $02
	inc  bc                                          ; $5a62: $03
	nop                                              ; $5a63: $00
	ld   c, $80                                      ; $5a64: $0e $80
	nop                                              ; $5a66: $00
	nop                                              ; $5a67: $00
	ld   a, [bc]                                     ; $5a68: $0a
	add  a                                           ; $5a69: $87
	nop                                              ; $5a6a: $00
	nop                                              ; $5a6b: $00
	ld   a, [bc]                                     ; $5a6c: $0a
	add  c                                           ; $5a6d: $81
	nop                                              ; $5a6e: $00
	ld   bc, $0409                                   ; $5a6f: $01 $09 $04
	adc  c                                           ; $5a72: $89
	nop                                              ; $5a73: $00
	ld   bc, $0e03                                   ; $5a74: $01 $03 $0e
	add  c                                           ; $5a77: $81
	nop                                              ; $5a78: $00
	nop                                              ; $5a79: $00
	ld   a, [bc]                                     ; $5a7a: $0a
	adc  b                                           ; $5a7b: $88
	nop                                              ; $5a7c: $00
	nop                                              ; $5a7d: $00
	ld   a, [bc]                                     ; $5a7e: $0a
	add  b                                           ; $5a7f: $80
	nop                                              ; $5a80: $00
	ld   bc, $0409                                   ; $5a81: $01 $09 $04
	adc  c                                           ; $5a84: $89
	nop                                              ; $5a85: $00
	ld   bc, $0e03                                   ; $5a86: $01 $03 $0e
	add  c                                           ; $5a89: $81
	nop                                              ; $5a8a: $00
	nop                                              ; $5a8b: $00
	ld   a, [bc]                                     ; $5a8c: $0a
	add  h                                           ; $5a8d: $84
	nop                                              ; $5a8e: $00
	nop                                              ; $5a8f: $00
	ld   a, [bc]                                     ; $5a90: $0a
	add  h                                           ; $5a91: $84
	nop                                              ; $5a92: $00
	ld   bc, $0409                                   ; $5a93: $01 $09 $04
	adc  c                                           ; $5a96: $89
	nop                                              ; $5a97: $00
	ld   bc, $0e03                                   ; $5a98: $01 $03 $0e
	add  c                                           ; $5a9b: $81
	nop                                              ; $5a9c: $00
	add  b                                           ; $5a9d: $80
	ld   a, [bc]                                     ; $5a9e: $0a
	ld   bc, $0a00                                   ; $5a9f: $01 $00 $0a
	add  c                                           ; $5aa2: $81
	nop                                              ; $5aa3: $00
	nop                                              ; $5aa4: $00
	ld   a, [bc]                                     ; $5aa5: $0a
	add  h                                           ; $5aa6: $84
	nop                                              ; $5aa7: $00
	ld   bc, $0409                                   ; $5aa8: $01 $09 $04
	adc  c                                           ; $5aab: $89
	nop                                              ; $5aac: $00
	ld   bc, $0e03                                   ; $5aad: $01 $03 $0e
	add  h                                           ; $5ab0: $84
	nop                                              ; $5ab1: $00
	nop                                              ; $5ab2: $00
	ld   a, [bc]                                     ; $5ab3: $0a
	add  c                                           ; $5ab4: $81
	nop                                              ; $5ab5: $00
	nop                                              ; $5ab6: $00
	ld   a, [bc]                                     ; $5ab7: $0a
	add  d                                           ; $5ab8: $82
	nop                                              ; $5ab9: $00
	nop                                              ; $5aba: $00
	ld   c, $80                                      ; $5abb: $0e $80
	nop                                              ; $5abd: $00
	nop                                              ; $5abe: $00
	inc  bc                                          ; $5abf: $03
	adc  c                                           ; $5ac0: $89
	nop                                              ; $5ac1: $00
	ld   bc, $0904                                   ; $5ac2: $01 $04 $09
	add  e                                           ; $5ac5: $83
	nop                                              ; $5ac6: $00
	ld   bc, $000a                                   ; $5ac7: $01 $0a $00
	add  b                                           ; $5aca: $80
	ld   a, [bc]                                     ; $5acb: $0a
	inc  b                                           ; $5acc: $04
	nop                                              ; $5acd: $00
	ld   a, [bc]                                     ; $5ace: $0a
	nop                                              ; $5acf: $00
	ld   c, $00                                      ; $5ad0: $0e $00
	ld   b, e                                        ; $5ad2: $43
	nop                                              ; $5ad3: $00
	nop                                              ; $5ad4: $00
	inc  b                                           ; $5ad5: $04
	adc  h                                           ; $5ad6: $8c
	nop                                              ; $5ad7: $00
	ld   bc, $0807                                   ; $5ad8: $01 $07 $08
	add  b                                           ; $5adb: $80
	rrca                                             ; $5adc: $0f
	ld   bc, $0b00                                   ; $5add: $01 $00 $0b
	adc  c                                           ; $5ae0: $89
	nop                                              ; $5ae1: $00
	nop                                              ; $5ae2: $00
	dec  b                                           ; $5ae3: $05
	add  c                                           ; $5ae4: $81
	nop                                              ; $5ae5: $00
	nop                                              ; $5ae6: $00
	ld   bc, $0088                                   ; $5ae7: $01 $88 $00
	ld   bc, $0807                                   ; $5aea: $01 $07 $08
	add  b                                           ; $5aed: $80
	rrca                                             ; $5aee: $0f
	ld   bc, $0b00                                   ; $5aef: $01 $00 $0b
	adc  c                                           ; $5af2: $89
	nop                                              ; $5af3: $00
	nop                                              ; $5af4: $00
	dec  b                                           ; $5af5: $05
	add  d                                           ; $5af6: $82
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	ld   bc, $0087                                   ; $5af9: $01 $87 $00
	ld   bc, $0807                                   ; $5afc: $01 $07 $08
	add  b                                           ; $5aff: $80
	rrca                                             ; $5b00: $0f
	ld   bc, $0b00                                   ; $5b01: $01 $00 $0b
	adc  c                                           ; $5b04: $89
	nop                                              ; $5b05: $00
	nop                                              ; $5b06: $00
	inc  bc                                          ; $5b07: $03
	add  d                                           ; $5b08: $82
	nop                                              ; $5b09: $00
	nop                                              ; $5b0a: $00
	ld   b, $87                                      ; $5b0b: $06 $87
	nop                                              ; $5b0d: $00
	ld   bc, $0806                                   ; $5b0e: $01 $06 $08
	add  b                                           ; $5b11: $80
	ld   c, $01                                      ; $5b12: $0e $01
	nop                                              ; $5b14: $00
	dec  bc                                          ; $5b15: $0b
	adc  c                                           ; $5b16: $89
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	inc  bc                                          ; $5b19: $03
	add  d                                           ; $5b1a: $82
	nop                                              ; $5b1b: $00
	nop                                              ; $5b1c: $00
	ld   b, $87                                      ; $5b1d: $06 $87
	nop                                              ; $5b1f: $00
	ld   bc, $0806                                   ; $5b20: $01 $06 $08
	add  b                                           ; $5b23: $80
	ld   c, $01                                      ; $5b24: $0e $01
	nop                                              ; $5b26: $00
	dec  bc                                          ; $5b27: $0b
	adc  c                                           ; $5b28: $89
	nop                                              ; $5b29: $00
	nop                                              ; $5b2a: $00
	inc  bc                                          ; $5b2b: $03
	add  d                                           ; $5b2c: $82
	nop                                              ; $5b2d: $00
	nop                                              ; $5b2e: $00
	ld   b, $87                                      ; $5b2f: $06 $87
	nop                                              ; $5b31: $00
	ld   bc, $0806                                   ; $5b32: $01 $06 $08
	add  b                                           ; $5b35: $80
	ld   c, $01                                      ; $5b36: $0e $01
	nop                                              ; $5b38: $00
	dec  bc                                          ; $5b39: $0b
	adc  c                                           ; $5b3a: $89
	nop                                              ; $5b3b: $00
	nop                                              ; $5b3c: $00
	inc  bc                                          ; $5b3d: $03
	add  c                                           ; $5b3e: $81
	nop                                              ; $5b3f: $00
	nop                                              ; $5b40: $00
	ld   b, $88                                      ; $5b41: $06 $88
	nop                                              ; $5b43: $00
	ld   bc, $0806                                   ; $5b44: $01 $06 $08
	add  b                                           ; $5b47: $80
	ld   c, $01                                      ; $5b48: $0e $01
	nop                                              ; $5b4a: $00
	dec  bc                                          ; $5b4b: $0b
	adc  c                                           ; $5b4c: $89
	nop                                              ; $5b4d: $00
	nop                                              ; $5b4e: $00
	dec  b                                           ; $5b4f: $05
	adc  h                                           ; $5b50: $8c
	nop                                              ; $5b51: $00
	dec  b                                           ; $5b52: $05
	ld   b, $00                                      ; $5b53: $06 $00
	ld   b, $0e                                      ; $5b55: $06 $0e
	nop                                              ; $5b57: $00
	dec  bc                                          ; $5b58: $0b
	adc  c                                           ; $5b59: $89
	nop                                              ; $5b5a: $00
	nop                                              ; $5b5b: $00
	dec  c                                           ; $5b5c: $0d
	adc  a                                           ; $5b5d: $8f
	nop                                              ; $5b5e: $00
	ld   [bc], a                                     ; $5b5f: $02
	ld   b, $00                                      ; $5b60: $06 $00
	dec  bc                                          ; $5b62: $0b
	adc  c                                           ; $5b63: $89
	nop                                              ; $5b64: $00
	nop                                              ; $5b65: $00
	dec  c                                           ; $5b66: $0d
	adc  a                                           ; $5b67: $8f
	nop                                              ; $5b68: $00
	ld   [bc], a                                     ; $5b69: $02
	ld   b, $00                                      ; $5b6a: $06 $00
	dec  bc                                          ; $5b6c: $0b
	adc  c                                           ; $5b6d: $89
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	ld   [$0043], sp                                 ; $5b70: $08 $43 $00
	nop                                              ; $5b73: $00
	inc  bc                                          ; $5b74: $03
	add  b                                           ; $5b75: $80
	nop                                              ; $5b76: $00
	ld   [bc], a                                     ; $5b77: $02
	dec  b                                           ; $5b78: $05
	nop                                              ; $5b79: $00
	ld   bc, $0080                                   ; $5b7a: $01 $80 $00
	nop                                              ; $5b7d: $00
	ld   bc, $0088                                   ; $5b7e: $01 $88 $00
	ld   bc, $0402                                   ; $5b81: $01 $02 $04
	adc  c                                           ; $5b84: $89
	nop                                              ; $5b85: $00
	ld   [bc], a                                     ; $5b86: $02
	inc  bc                                          ; $5b87: $03
	nop                                              ; $5b88: $00
	dec  b                                           ; $5b89: $05
	add  b                                           ; $5b8a: $80
	nop                                              ; $5b8b: $00
	nop                                              ; $5b8c: $00
	ld   bc, $0081                                   ; $5b8d: $01 $81 $00
	nop                                              ; $5b90: $00
	ld   bc, $0087                                   ; $5b91: $01 $87 $00
	ld   bc, $0402                                   ; $5b94: $01 $02 $04
	adc  c                                           ; $5b97: $89
	nop                                              ; $5b98: $00
	inc  b                                           ; $5b99: $04
	inc  bc                                          ; $5b9a: $03
	nop                                              ; $5b9b: $00
	dec  b                                           ; $5b9c: $05
	nop                                              ; $5b9d: $00
	ld   bc, $0083                                   ; $5b9e: $01 $83 $00
	nop                                              ; $5ba1: $00
	ld   bc, $0086                                   ; $5ba2: $01 $86 $00
	ld   bc, $0402                                   ; $5ba5: $01 $02 $04
	adc  c                                           ; $5ba8: $89
	nop                                              ; $5ba9: $00
	ld   bc, $0503                                   ; $5baa: $01 $03 $05
	add  b                                           ; $5bad: $80
	nop                                              ; $5bae: $00
	nop                                              ; $5baf: $00
	ld   bc, $0083                                   ; $5bb0: $01 $83 $00
	nop                                              ; $5bb3: $00
	ld   bc, $0086                                   ; $5bb4: $01 $86 $00
	ld   bc, $0402                                   ; $5bb7: $01 $02 $04
	adc  c                                           ; $5bba: $89
	nop                                              ; $5bbb: $00
	ld   bc, $0503                                   ; $5bbc: $01 $03 $05
	add  c                                           ; $5bbf: $81
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	ld   bc, $0082                                   ; $5bc2: $01 $82 $00
	nop                                              ; $5bc5: $00
	ld   bc, $0086                                   ; $5bc6: $01 $86 $00
	ld   bc, $0402                                   ; $5bc9: $01 $02 $04
	adc  c                                           ; $5bcc: $89
	nop                                              ; $5bcd: $00
	ld   bc, $0503                                   ; $5bce: $01 $03 $05
	add  d                                           ; $5bd1: $82
	nop                                              ; $5bd2: $00
	nop                                              ; $5bd3: $00
	ld   bc, $0081                                   ; $5bd4: $01 $81 $00
	ld   bc, $0001                                   ; $5bd7: $01 $01 $00
	add  c                                           ; $5bda: $81
	ld   [$0081], sp                                 ; $5bdb: $08 $81 $00
	ld   [bc], a                                     ; $5bde: $02
	ld   [$0402], sp                                 ; $5bdf: $08 $02 $04
	adc  c                                           ; $5be2: $89
	nop                                              ; $5be3: $00
	ld   bc, $0d03                                   ; $5be4: $01 $03 $0d
	add  c                                           ; $5be7: $81
	nop                                              ; $5be8: $00
	nop                                              ; $5be9: $00
	ld   bc, $0081                                   ; $5bea: $01 $81 $00
	add  b                                           ; $5bed: $80
	add  hl, bc                                      ; $5bee: $09
	ld   bc, $0001                                   ; $5bef: $01 $01 $00
	add  b                                           ; $5bf2: $80
	ld   [$0080], sp                                 ; $5bf3: $08 $80 $00
	nop                                              ; $5bf6: $00
	dec  c                                           ; $5bf7: $0d
	add  b                                           ; $5bf8: $80
	nop                                              ; $5bf9: $00
	nop                                              ; $5bfa: $00
	inc  bc                                          ; $5bfb: $03
	adc  c                                           ; $5bfc: $89
	nop                                              ; $5bfd: $00
	ld   bc, $0a04                                   ; $5bfe: $01 $04 $0a
	add  c                                           ; $5c01: $81
	nop                                              ; $5c02: $00
	add  b                                           ; $5c03: $80
	ld   bc, $0000                                   ; $5c04: $01 $00 $00
	add  b                                           ; $5c07: $80
	ld   [$0180], sp                                 ; $5c08: $08 $80 $01
	add  b                                           ; $5c0b: $80
	ld   [$0d01], sp                                 ; $5c0c: $08 $01 $0d
	nop                                              ; $5c0f: $00
	ccf                                              ; $5c10: $3f
	nop                                              ; $5c11: $00
	nop                                              ; $5c12: $00
	inc  bc                                          ; $5c13: $03
	add  b                                           ; $5c14: $80
	nop                                              ; $5c15: $00
	nop                                              ; $5c16: $00
	dec  c                                           ; $5c17: $0d
	add  c                                           ; $5c18: $81
	nop                                              ; $5c19: $00
	nop                                              ; $5c1a: $00
	add  hl, bc                                      ; $5c1b: $09
	add  h                                           ; $5c1c: $84
	nop                                              ; $5c1d: $00
	ld   [bc], a                                     ; $5c1e: $02
	add  hl, bc                                      ; $5c1f: $09
	nop                                              ; $5c20: $00
	inc  bc                                          ; $5c21: $03
	add  b                                           ; $5c22: $80
	nop                                              ; $5c23: $00
	ld   bc, $0409                                   ; $5c24: $01 $09 $04
	adc  c                                           ; $5c27: $89
	nop                                              ; $5c28: $00
	ld   [bc], a                                     ; $5c29: $02
	inc  bc                                          ; $5c2a: $03
	nop                                              ; $5c2b: $00
	ld   c, $80                                      ; $5c2c: $0e $80
	nop                                              ; $5c2e: $00
	nop                                              ; $5c2f: $00
	ld   a, [bc]                                     ; $5c30: $0a
	add  a                                           ; $5c31: $87
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	ld   a, [bc]                                     ; $5c34: $0a
	add  c                                           ; $5c35: $81
	nop                                              ; $5c36: $00
	ld   bc, $0409                                   ; $5c37: $01 $09 $04
	adc  c                                           ; $5c3a: $89
	nop                                              ; $5c3b: $00
	inc  b                                           ; $5c3c: $04
	inc  bc                                          ; $5c3d: $03
	nop                                              ; $5c3e: $00
	ld   c, $00                                      ; $5c3f: $0e $00
	ld   a, [bc]                                     ; $5c41: $0a
	adc  b                                           ; $5c42: $88
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	ld   a, [bc]                                     ; $5c45: $0a
	add  c                                           ; $5c46: $81
	nop                                              ; $5c47: $00
	ld   bc, $0409                                   ; $5c48: $01 $09 $04
	adc  c                                           ; $5c4b: $89
	nop                                              ; $5c4c: $00
	ld   bc, $0e03                                   ; $5c4d: $01 $03 $0e
	add  e                                           ; $5c50: $83
	nop                                              ; $5c51: $00
	nop                                              ; $5c52: $00
	ld   a, [bc]                                     ; $5c53: $0a
	add  h                                           ; $5c54: $84
	nop                                              ; $5c55: $00
	nop                                              ; $5c56: $00
	ld   a, [bc]                                     ; $5c57: $0a
	add  d                                           ; $5c58: $82
	nop                                              ; $5c59: $00
	ld   bc, $0409                                   ; $5c5a: $01 $09 $04
	adc  c                                           ; $5c5d: $89
	nop                                              ; $5c5e: $00
	ld   bc, $0e03                                   ; $5c5f: $01 $03 $0e
	add  e                                           ; $5c62: $83
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	ld   a, [bc]                                     ; $5c65: $0a
	add  e                                           ; $5c66: $83
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	ld   a, [bc]                                     ; $5c69: $0a
	add  e                                           ; $5c6a: $83
	nop                                              ; $5c6b: $00
	ld   bc, $0409                                   ; $5c6c: $01 $09 $04
	adc  c                                           ; $5c6f: $89
	nop                                              ; $5c70: $00
	ld   bc, $0e03                                   ; $5c71: $01 $03 $0e
	add  d                                           ; $5c74: $82
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	ld   a, [bc]                                     ; $5c77: $0a
	add  l                                           ; $5c78: $85
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	ld   a, [bc]                                     ; $5c7b: $0a
	add  d                                           ; $5c7c: $82
	nop                                              ; $5c7d: $00
	ld   bc, $0409                                   ; $5c7e: $01 $09 $04
	adc  c                                           ; $5c81: $89
	nop                                              ; $5c82: $00
	ld   bc, $0e03                                   ; $5c83: $01 $03 $0e
	add  d                                           ; $5c86: $82
	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	ld   a, [bc]                                     ; $5c89: $0a
	add  b                                           ; $5c8a: $80
	nop                                              ; $5c8b: $00
	ld   [bc], a                                     ; $5c8c: $02
	ld   a, [bc]                                     ; $5c8d: $0a
	nop                                              ; $5c8e: $00
	ld   a, [bc]                                     ; $5c8f: $0a
	add  b                                           ; $5c90: $80
	nop                                              ; $5c91: $00
	nop                                              ; $5c92: $00
	ld   a, [bc]                                     ; $5c93: $0a
	add  b                                           ; $5c94: $80
	nop                                              ; $5c95: $00
	nop                                              ; $5c96: $00
	ld   c, $80                                      ; $5c97: $0e $80
	nop                                              ; $5c99: $00
	nop                                              ; $5c9a: $00
	inc  bc                                          ; $5c9b: $03
	adc  c                                           ; $5c9c: $89
	nop                                              ; $5c9d: $00
	ld   bc, $0904                                   ; $5c9e: $01 $04 $09
	add  e                                           ; $5ca1: $83
	nop                                              ; $5ca2: $00
	ld   [$000a], sp                                 ; $5ca3: $08 $0a $00
	ld   a, [bc]                                     ; $5ca6: $0a
	nop                                              ; $5ca7: $00
	ld   a, [bc]                                     ; $5ca8: $0a
	nop                                              ; $5ca9: $00
	ld   a, [bc]                                     ; $5caa: $0a
	ld   c, $00                                      ; $5cab: $0e $00
	ccf                                              ; $5cad: $3f
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	inc  bc                                          ; $5cb0: $03
	add  b                                           ; $5cb1: $80
	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	dec  c                                           ; $5cb4: $0d
	add  c                                           ; $5cb5: $81
	nop                                              ; $5cb6: $00
	nop                                              ; $5cb7: $00
	add  hl, bc                                      ; $5cb8: $09
	add  h                                           ; $5cb9: $84
	nop                                              ; $5cba: $00
	ld   [bc], a                                     ; $5cbb: $02
	add  hl, bc                                      ; $5cbc: $09
	nop                                              ; $5cbd: $00
	inc  bc                                          ; $5cbe: $03
	add  b                                           ; $5cbf: $80
	nop                                              ; $5cc0: $00
	ld   bc, $0409                                   ; $5cc1: $01 $09 $04
	adc  c                                           ; $5cc4: $89
	nop                                              ; $5cc5: $00
	ld   [bc], a                                     ; $5cc6: $02
	inc  bc                                          ; $5cc7: $03
	nop                                              ; $5cc8: $00
	ld   c, $80                                      ; $5cc9: $0e $80
	nop                                              ; $5ccb: $00
	nop                                              ; $5ccc: $00
	ld   a, [bc]                                     ; $5ccd: $0a
	add  a                                           ; $5cce: $87
	nop                                              ; $5ccf: $00
	nop                                              ; $5cd0: $00
	ld   a, [bc]                                     ; $5cd1: $0a
	add  c                                           ; $5cd2: $81
	nop                                              ; $5cd3: $00
	ld   bc, $0409                                   ; $5cd4: $01 $09 $04
	adc  c                                           ; $5cd7: $89
	nop                                              ; $5cd8: $00
	inc  b                                           ; $5cd9: $04
	inc  bc                                          ; $5cda: $03
	nop                                              ; $5cdb: $00
	ld   c, $00                                      ; $5cdc: $0e $00
	ld   a, [bc]                                     ; $5cde: $0a
	adc  b                                           ; $5cdf: $88
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	ld   a, [bc]                                     ; $5ce2: $0a
	add  c                                           ; $5ce3: $81
	nop                                              ; $5ce4: $00
	ld   bc, $0409                                   ; $5ce5: $01 $09 $04
	adc  c                                           ; $5ce8: $89
	nop                                              ; $5ce9: $00
	ld   bc, $0e03                                   ; $5cea: $01 $03 $0e
	add  e                                           ; $5ced: $83
	nop                                              ; $5cee: $00
	nop                                              ; $5cef: $00
	ld   a, [bc]                                     ; $5cf0: $0a
	add  e                                           ; $5cf1: $83
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	ld   a, [bc]                                     ; $5cf4: $0a
	add  e                                           ; $5cf5: $83
	nop                                              ; $5cf6: $00
	ld   bc, $0409                                   ; $5cf7: $01 $09 $04
	adc  c                                           ; $5cfa: $89
	nop                                              ; $5cfb: $00
	ld   bc, $0e03                                   ; $5cfc: $01 $03 $0e
	add  e                                           ; $5cff: $83
	nop                                              ; $5d00: $00
	nop                                              ; $5d01: $00
	ld   a, [bc]                                     ; $5d02: $0a
	add  e                                           ; $5d03: $83
	nop                                              ; $5d04: $00
	nop                                              ; $5d05: $00
	ld   a, [bc]                                     ; $5d06: $0a
	add  e                                           ; $5d07: $83
	nop                                              ; $5d08: $00
	ld   bc, $0409                                   ; $5d09: $01 $09 $04
	adc  c                                           ; $5d0c: $89
	nop                                              ; $5d0d: $00
	ld   bc, $0e03                                   ; $5d0e: $01 $03 $0e
	add  d                                           ; $5d11: $82
	nop                                              ; $5d12: $00
	nop                                              ; $5d13: $00
	ld   a, [bc]                                     ; $5d14: $0a
	add  l                                           ; $5d15: $85
	nop                                              ; $5d16: $00
	nop                                              ; $5d17: $00
	ld   a, [bc]                                     ; $5d18: $0a
	add  d                                           ; $5d19: $82
	nop                                              ; $5d1a: $00
	ld   bc, $0409                                   ; $5d1b: $01 $09 $04
	adc  c                                           ; $5d1e: $89
	nop                                              ; $5d1f: $00
	ld   bc, $0e03                                   ; $5d20: $01 $03 $0e
	add  d                                           ; $5d23: $82
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	ld   a, [bc]                                     ; $5d26: $0a
	add  c                                           ; $5d27: $81
	nop                                              ; $5d28: $00
	add  b                                           ; $5d29: $80
	ld   a, [bc]                                     ; $5d2a: $0a
	add  b                                           ; $5d2b: $80
	nop                                              ; $5d2c: $00
	nop                                              ; $5d2d: $00
	ld   a, [bc]                                     ; $5d2e: $0a
	add  b                                           ; $5d2f: $80
	nop                                              ; $5d30: $00
	nop                                              ; $5d31: $00
	ld   c, $80                                      ; $5d32: $0e $80
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	inc  bc                                          ; $5d36: $03
	adc  c                                           ; $5d37: $89
	nop                                              ; $5d38: $00
	ld   bc, $0904                                   ; $5d39: $01 $04 $09
	add  e                                           ; $5d3c: $83
	nop                                              ; $5d3d: $00
	ld   [$000a], sp                                 ; $5d3e: $08 $0a $00
	ld   a, [bc]                                     ; $5d41: $0a
	nop                                              ; $5d42: $00
	ld   a, [bc]                                     ; $5d43: $0a
	nop                                              ; $5d44: $00
	ld   a, [bc]                                     ; $5d45: $0a
	ld   c, $00                                      ; $5d46: $0e $00
	ld   b, b                                        ; $5d48: $40
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00
	inc  bc                                          ; $5d4b: $03
	add  b                                           ; $5d4c: $80
	nop                                              ; $5d4d: $00
	nop                                              ; $5d4e: $00
	dec  c                                           ; $5d4f: $0d
	add  c                                           ; $5d50: $81
	nop                                              ; $5d51: $00
	nop                                              ; $5d52: $00
	add  hl, bc                                      ; $5d53: $09
	add  h                                           ; $5d54: $84
	nop                                              ; $5d55: $00
	ld   [bc], a                                     ; $5d56: $02
	add  hl, bc                                      ; $5d57: $09
	nop                                              ; $5d58: $00
	inc  bc                                          ; $5d59: $03
	add  b                                           ; $5d5a: $80
	nop                                              ; $5d5b: $00
	ld   bc, $0409                                   ; $5d5c: $01 $09 $04
	adc  c                                           ; $5d5f: $89
	nop                                              ; $5d60: $00
	ld   [bc], a                                     ; $5d61: $02
	inc  bc                                          ; $5d62: $03
	nop                                              ; $5d63: $00
	ld   c, $80                                      ; $5d64: $0e $80
	nop                                              ; $5d66: $00
	ld   [bc], a                                     ; $5d67: $02
	inc  bc                                          ; $5d68: $03
	nop                                              ; $5d69: $00
	add  hl, bc                                      ; $5d6a: $09
	add  l                                           ; $5d6b: $85
	nop                                              ; $5d6c: $00
	nop                                              ; $5d6d: $00
	ld   a, [bc]                                     ; $5d6e: $0a
	add  c                                           ; $5d6f: $81
	nop                                              ; $5d70: $00
	ld   bc, $0409                                   ; $5d71: $01 $09 $04
	adc  c                                           ; $5d74: $89
	nop                                              ; $5d75: $00
	ld   [bc], a                                     ; $5d76: $02
	inc  bc                                          ; $5d77: $03
	nop                                              ; $5d78: $00
	ld   c, $80                                      ; $5d79: $0e $80
	nop                                              ; $5d7b: $00
	nop                                              ; $5d7c: $00
	ld   a, [bc]                                     ; $5d7d: $0a
	add  [hl]                                        ; $5d7e: $86
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	ld   a, [bc]                                     ; $5d81: $0a
	add  d                                           ; $5d82: $82
	nop                                              ; $5d83: $00
	ld   bc, $0409                                   ; $5d84: $01 $09 $04
	adc  c                                           ; $5d87: $89
	nop                                              ; $5d88: $00
	ld   bc, $0e03                                   ; $5d89: $01 $03 $0e
	add  e                                           ; $5d8c: $83
	nop                                              ; $5d8d: $00
	nop                                              ; $5d8e: $00
	ld   a, [bc]                                     ; $5d8f: $0a
	add  h                                           ; $5d90: $84
	nop                                              ; $5d91: $00
	nop                                              ; $5d92: $00
	ld   a, [bc]                                     ; $5d93: $0a
	add  d                                           ; $5d94: $82
	nop                                              ; $5d95: $00
	ld   bc, $0409                                   ; $5d96: $01 $09 $04
	adc  c                                           ; $5d99: $89
	nop                                              ; $5d9a: $00
	ld   bc, $0e03                                   ; $5d9b: $01 $03 $0e
	add  h                                           ; $5d9e: $84
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	ld   a, [bc]                                     ; $5da1: $0a
	add  e                                           ; $5da2: $83
	nop                                              ; $5da3: $00
	nop                                              ; $5da4: $00
	ld   a, [bc]                                     ; $5da5: $0a
	add  d                                           ; $5da6: $82
	nop                                              ; $5da7: $00
	ld   bc, $0409                                   ; $5da8: $01 $09 $04
	adc  c                                           ; $5dab: $89
	nop                                              ; $5dac: $00
	ld   bc, $0e03                                   ; $5dad: $01 $03 $0e
	add  h                                           ; $5db0: $84
	nop                                              ; $5db1: $00
	nop                                              ; $5db2: $00
	ld   a, [bc]                                     ; $5db3: $0a
	add  c                                           ; $5db4: $81
	nop                                              ; $5db5: $00
	nop                                              ; $5db6: $00
	ld   a, [bc]                                     ; $5db7: $0a
	add  h                                           ; $5db8: $84
	nop                                              ; $5db9: $00
	ld   bc, $0409                                   ; $5dba: $01 $09 $04
	adc  c                                           ; $5dbd: $89
	nop                                              ; $5dbe: $00
	ld   bc, $0e03                                   ; $5dbf: $01 $03 $0e
	add  h                                           ; $5dc2: $84
	nop                                              ; $5dc3: $00
	nop                                              ; $5dc4: $00
	ld   a, [bc]                                     ; $5dc5: $0a
	add  c                                           ; $5dc6: $81
	nop                                              ; $5dc7: $00
	nop                                              ; $5dc8: $00
	ld   a, [bc]                                     ; $5dc9: $0a
	add  d                                           ; $5dca: $82
	nop                                              ; $5dcb: $00
	nop                                              ; $5dcc: $00
	ld   c, $80                                      ; $5dcd: $0e $80
	nop                                              ; $5dcf: $00
	nop                                              ; $5dd0: $00
	inc  bc                                          ; $5dd1: $03
	adc  c                                           ; $5dd2: $89
	nop                                              ; $5dd3: $00
	ld   bc, $0904                                   ; $5dd4: $01 $04 $09
	add  h                                           ; $5dd7: $84
	nop                                              ; $5dd8: $00
	add  b                                           ; $5dd9: $80
	ld   a, [bc]                                     ; $5dda: $0a
	dec  b                                           ; $5ddb: $05
	nop                                              ; $5ddc: $00
	ld   a, [bc]                                     ; $5ddd: $0a
	nop                                              ; $5dde: $00
	ld   a, [bc]                                     ; $5ddf: $0a
	ld   c, $00                                      ; $5de0: $0e $00
	ld   b, d                                        ; $5de2: $42
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	inc  bc                                          ; $5de5: $03
	add  b                                           ; $5de6: $80
	nop                                              ; $5de7: $00
	nop                                              ; $5de8: $00
	dec  c                                           ; $5de9: $0d
	add  c                                           ; $5dea: $81
	nop                                              ; $5deb: $00
	nop                                              ; $5dec: $00
	add  hl, bc                                      ; $5ded: $09
	add  h                                           ; $5dee: $84
	nop                                              ; $5def: $00
	ld   [bc], a                                     ; $5df0: $02
	add  hl, bc                                      ; $5df1: $09
	nop                                              ; $5df2: $00
	inc  bc                                          ; $5df3: $03
	add  b                                           ; $5df4: $80
	nop                                              ; $5df5: $00
	ld   bc, $0409                                   ; $5df6: $01 $09 $04
	adc  c                                           ; $5df9: $89
	nop                                              ; $5dfa: $00
	ld   [bc], a                                     ; $5dfb: $02
	inc  bc                                          ; $5dfc: $03
	nop                                              ; $5dfd: $00
	ld   c, $80                                      ; $5dfe: $0e $80
	nop                                              ; $5e00: $00
	ld   bc, $0903                                   ; $5e01: $01 $03 $09
	add  [hl]                                        ; $5e04: $86
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	ld   a, [bc]                                     ; $5e07: $0a
	add  c                                           ; $5e08: $81
	nop                                              ; $5e09: $00
	ld   bc, $0409                                   ; $5e0a: $01 $09 $04
	adc  c                                           ; $5e0d: $89
	nop                                              ; $5e0e: $00
	ld   [bc], a                                     ; $5e0f: $02
	inc  bc                                          ; $5e10: $03
	nop                                              ; $5e11: $00
	ld   c, $81                                      ; $5e12: $0e $81
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	ld   a, [bc]                                     ; $5e16: $0a
	add  a                                           ; $5e17: $87
	nop                                              ; $5e18: $00
	nop                                              ; $5e19: $00
	ld   a, [bc]                                     ; $5e1a: $0a
	add  b                                           ; $5e1b: $80
	nop                                              ; $5e1c: $00
	ld   bc, $0409                                   ; $5e1d: $01 $09 $04
	adc  c                                           ; $5e20: $89
	nop                                              ; $5e21: $00
	ld   bc, $0e03                                   ; $5e22: $01 $03 $0e
	add  e                                           ; $5e25: $83
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	ld   a, [bc]                                     ; $5e28: $0a
	add  e                                           ; $5e29: $83
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	ld   a, [bc]                                     ; $5e2c: $0a
	add  e                                           ; $5e2d: $83
	nop                                              ; $5e2e: $00
	ld   bc, $0409                                   ; $5e2f: $01 $09 $04
	adc  c                                           ; $5e32: $89
	nop                                              ; $5e33: $00
	ld   bc, $0e03                                   ; $5e34: $01 $03 $0e
	add  h                                           ; $5e37: $84
	nop                                              ; $5e38: $00
	nop                                              ; $5e39: $00
	ld   a, [bc]                                     ; $5e3a: $0a
	add  d                                           ; $5e3b: $82
	nop                                              ; $5e3c: $00
	nop                                              ; $5e3d: $00
	ld   a, [bc]                                     ; $5e3e: $0a
	add  e                                           ; $5e3f: $83
	nop                                              ; $5e40: $00
	ld   bc, $0409                                   ; $5e41: $01 $09 $04
	adc  c                                           ; $5e44: $89
	nop                                              ; $5e45: $00
	ld   bc, $0e03                                   ; $5e46: $01 $03 $0e
	add  l                                           ; $5e49: $85
	nop                                              ; $5e4a: $00
	nop                                              ; $5e4b: $00
	ld   a, [bc]                                     ; $5e4c: $0a
	add  b                                           ; $5e4d: $80
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	ld   a, [bc]                                     ; $5e50: $0a
	add  h                                           ; $5e51: $84
	nop                                              ; $5e52: $00
	ld   bc, $0409                                   ; $5e53: $01 $09 $04
	adc  c                                           ; $5e56: $89
	nop                                              ; $5e57: $00
	ld   bc, $0e03                                   ; $5e58: $01 $03 $0e
	add  l                                           ; $5e5b: $85
	nop                                              ; $5e5c: $00
	nop                                              ; $5e5d: $00
	ld   a, [bc]                                     ; $5e5e: $0a
	add  b                                           ; $5e5f: $80
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	ld   a, [bc]                                     ; $5e62: $0a
	add  d                                           ; $5e63: $82
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00
	ld   c, $80                                      ; $5e66: $0e $80
	nop                                              ; $5e68: $00
	nop                                              ; $5e69: $00
	inc  bc                                          ; $5e6a: $03
	adc  c                                           ; $5e6b: $89
	nop                                              ; $5e6c: $00
	ld   bc, $0904                                   ; $5e6d: $01 $04 $09
	add  e                                           ; $5e70: $83
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	ld   a, [bc]                                     ; $5e73: $0a
	add  b                                           ; $5e74: $80
	nop                                              ; $5e75: $00
	add  c                                           ; $5e76: $81
	ld   a, [bc]                                     ; $5e77: $0a
	ld   [bc], a                                     ; $5e78: $02
	nop                                              ; $5e79: $00
	ld   c, $00                                      ; $5e7a: $0e $00
	dec  a                                           ; $5e7c: $3d
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00
	inc  bc                                          ; $5e7f: $03
	add  b                                           ; $5e80: $80
	nop                                              ; $5e81: $00
	nop                                              ; $5e82: $00
	ld   b, $84                                      ; $5e83: $06 $84
	nop                                              ; $5e85: $00
	add  b                                           ; $5e86: $80
	ld   [bc], a                                     ; $5e87: $02
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	add  b                                           ; $5e8a: $80
	ld   [bc], a                                     ; $5e8b: $02
	add  d                                           ; $5e8c: $82
	nop                                              ; $5e8d: $00
	ld   bc, $0401                                   ; $5e8e: $01 $01 $04
	adc  c                                           ; $5e91: $89
	nop                                              ; $5e92: $00
	ld   [bc], a                                     ; $5e93: $02
	inc  bc                                          ; $5e94: $03
	nop                                              ; $5e95: $00
	ld   b, $83                                      ; $5e96: $06 $83
	nop                                              ; $5e98: $00
	nop                                              ; $5e99: $00
	ld   [bc], a                                     ; $5e9a: $02
	add  b                                           ; $5e9b: $80
	nop                                              ; $5e9c: $00
	ld   bc, $0002                                   ; $5e9d: $01 $02 $00
	add  b                                           ; $5ea0: $80
	ld   [bc], a                                     ; $5ea1: $02
	add  d                                           ; $5ea2: $82
	nop                                              ; $5ea3: $00
	ld   bc, $0401                                   ; $5ea4: $01 $01 $04
	adc  c                                           ; $5ea7: $89
	nop                                              ; $5ea8: $00
	ld   [bc], a                                     ; $5ea9: $02
	inc  bc                                          ; $5eaa: $03
	nop                                              ; $5eab: $00
	ld   b, $85                                      ; $5eac: $06 $85
	nop                                              ; $5eae: $00
	add  c                                           ; $5eaf: $81
	ld   [bc], a                                     ; $5eb0: $02
	ld   bc, $0200                                   ; $5eb1: $01 $00 $02
	add  d                                           ; $5eb4: $82
	nop                                              ; $5eb5: $00
	ld   bc, $0401                                   ; $5eb6: $01 $01 $04
	adc  c                                           ; $5eb9: $89
	nop                                              ; $5eba: $00
	ld   bc, $0603                                   ; $5ebb: $01 $03 $06
	add  [hl]                                        ; $5ebe: $86
	nop                                              ; $5ebf: $00
	nop                                              ; $5ec0: $00
	ld   [bc], a                                     ; $5ec1: $02
	add  c                                           ; $5ec2: $81
	nop                                              ; $5ec3: $00
	nop                                              ; $5ec4: $00
	ld   [bc], a                                     ; $5ec5: $02
	add  d                                           ; $5ec6: $82
	nop                                              ; $5ec7: $00
	ld   bc, $0401                                   ; $5ec8: $01 $01 $04
	adc  c                                           ; $5ecb: $89
	nop                                              ; $5ecc: $00
	ld   bc, $0603                                   ; $5ecd: $01 $03 $06
	add  l                                           ; $5ed0: $85
	nop                                              ; $5ed1: $00
	nop                                              ; $5ed2: $00
	ld   [bc], a                                     ; $5ed3: $02
	add  d                                           ; $5ed4: $82
	nop                                              ; $5ed5: $00
	nop                                              ; $5ed6: $00
	ld   [bc], a                                     ; $5ed7: $02
	add  d                                           ; $5ed8: $82
	nop                                              ; $5ed9: $00
	ld   bc, $0401                                   ; $5eda: $01 $01 $04
	adc  c                                           ; $5edd: $89
	nop                                              ; $5ede: $00
	ld   bc, $0603                                   ; $5edf: $01 $03 $06
	add  l                                           ; $5ee2: $85
	nop                                              ; $5ee3: $00
	ld   [bc], a                                     ; $5ee4: $02
	ld   [bc], a                                     ; $5ee5: $02
	nop                                              ; $5ee6: $00
	ld   [bc], a                                     ; $5ee7: $02
	add  l                                           ; $5ee8: $85
	nop                                              ; $5ee9: $00
	ld   bc, $0401                                   ; $5eea: $01 $01 $04
	adc  c                                           ; $5eed: $89
	nop                                              ; $5eee: $00
	ld   bc, $0603                                   ; $5eef: $01 $03 $06
	add  l                                           ; $5ef2: $85
	nop                                              ; $5ef3: $00
	ld   [bc], a                                     ; $5ef4: $02
	ld   [bc], a                                     ; $5ef5: $02
	nop                                              ; $5ef6: $00
	ld   [bc], a                                     ; $5ef7: $02
	add  e                                           ; $5ef8: $83
	nop                                              ; $5ef9: $00
	nop                                              ; $5efa: $00
	ld   b, $80                                      ; $5efb: $06 $80
	nop                                              ; $5efd: $00
	nop                                              ; $5efe: $00
	inc  bc                                          ; $5eff: $03

Call_01e_5f00:
	adc  c                                           ; $5f00: $89
	nop                                              ; $5f01: $00
	ld   bc, $0104                              ; $5f02: $01 $04 $01
	add  l                                           ; $5f05: $85
	nop                                              ; $5f06: $00
	nop                                              ; $5f07: $00
	ld   [bc], a                                     ; $5f08: $02
	add  b                                           ; $5f09: $80
	nop                                              ; $5f0a: $00
	inc  bc                                          ; $5f0b: $03
	ld   [bc], a                                     ; $5f0c: $02
	nop                                              ; $5f0d: $00
	ld   b, $00                                      ; $5f0e: $06 $00
	dec  a                                           ; $5f10: $3d
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	inc  bc                                          ; $5f13: $03
	add  b                                           ; $5f14: $80
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	ld   b, $83                                      ; $5f17: $06 $83
	nop                                              ; $5f19: $00
	ld   [bc], a                                     ; $5f1a: $02
	ld   [bc], a                                     ; $5f1b: $02
	nop                                              ; $5f1c: $00
	ld   [bc], a                                     ; $5f1d: $02
	add  l                                           ; $5f1e: $85
	nop                                              ; $5f1f: $00
	ld   bc, $0401                                   ; $5f20: $01 $01 $04
	adc  c                                           ; $5f23: $89
	nop                                              ; $5f24: $00
	ld   [bc], a                                     ; $5f25: $02
	inc  bc                                          ; $5f26: $03
	nop                                              ; $5f27: $00
	ld   b, $83                                      ; $5f28: $06 $83
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	ld   [bc], a                                     ; $5f2c: $02
	add  c                                           ; $5f2d: $81
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	ld   [bc], a                                     ; $5f30: $02
	add  h                                           ; $5f31: $84
	nop                                              ; $5f32: $00
	ld   bc, $0401                                   ; $5f33: $01 $01 $04
	adc  c                                           ; $5f36: $89
	nop                                              ; $5f37: $00
	ld   [bc], a                                     ; $5f38: $02
	inc  bc                                          ; $5f39: $03
	nop                                              ; $5f3a: $00
	ld   b, $84                                      ; $5f3b: $06 $84
	nop                                              ; $5f3d: $00
	ld   [bc], a                                     ; $5f3e: $02
	ld   [bc], a                                     ; $5f3f: $02
	nop                                              ; $5f40: $00
	ld   [bc], a                                     ; $5f41: $02
	add  l                                           ; $5f42: $85
	nop                                              ; $5f43: $00
	ld   bc, $0401                                   ; $5f44: $01 $01 $04
	adc  c                                           ; $5f47: $89
	nop                                              ; $5f48: $00
	ld   bc, $0603                                   ; $5f49: $01 $03 $06
	add  h                                           ; $5f4c: $84
	nop                                              ; $5f4d: $00
	nop                                              ; $5f4e: $00
	ld   [bc], a                                     ; $5f4f: $02
	add  d                                           ; $5f50: $82
	nop                                              ; $5f51: $00
	nop                                              ; $5f52: $00
	ld   [bc], a                                     ; $5f53: $02
	add  e                                           ; $5f54: $83
	nop                                              ; $5f55: $00
	ld   bc, $0401                                   ; $5f56: $01 $01 $04
	adc  c                                           ; $5f59: $89
	nop                                              ; $5f5a: $00
	ld   bc, $0603                                   ; $5f5b: $01 $03 $06
	add  h                                           ; $5f5e: $84
	nop                                              ; $5f5f: $00
	nop                                              ; $5f60: $00
	ld   [bc], a                                     ; $5f61: $02
	add  b                                           ; $5f62: $80
	nop                                              ; $5f63: $00
	add  c                                           ; $5f64: $81
	ld   [bc], a                                     ; $5f65: $02
	add  e                                           ; $5f66: $83
	nop                                              ; $5f67: $00
	ld   bc, $0401                                   ; $5f68: $01 $01 $04
	adc  c                                           ; $5f6b: $89
	nop                                              ; $5f6c: $00
	ld   bc, $0603                                   ; $5f6d: $01 $03 $06
	add  h                                           ; $5f70: $84
	nop                                              ; $5f71: $00
	nop                                              ; $5f72: $00
	ld   [bc], a                                     ; $5f73: $02
	add  b                                           ; $5f74: $80
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	ld   [bc], a                                     ; $5f77: $02
	add  l                                           ; $5f78: $85
	nop                                              ; $5f79: $00
	ld   bc, $0401                                   ; $5f7a: $01 $01 $04
	adc  c                                           ; $5f7d: $89
	nop                                              ; $5f7e: $00
	ld   bc, $0603                                   ; $5f7f: $01 $03 $06
	add  d                                           ; $5f82: $82
	nop                                              ; $5f83: $00
	add  c                                           ; $5f84: $81
	ld   [bc], a                                     ; $5f85: $02
	add  b                                           ; $5f86: $80
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	ld   [bc], a                                     ; $5f89: $02
	add  e                                           ; $5f8a: $83
	nop                                              ; $5f8b: $00
	nop                                              ; $5f8c: $00
	ld   b, $80                                      ; $5f8d: $06 $80
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	inc  bc                                          ; $5f91: $03
	adc  c                                           ; $5f92: $89
	nop                                              ; $5f93: $00
	ld   bc, $0104                              ; $5f94: $01 $04 $01
	add  d                                           ; $5f97: $82
	nop                                              ; $5f98: $00
	add  c                                           ; $5f99: $81
	ld   [bc], a                                     ; $5f9a: $02
	add  c                                           ; $5f9b: $81
	nop                                              ; $5f9c: $00
	inc  bc                                          ; $5f9d: $03
	ld   [bc], a                                     ; $5f9e: $02
	nop                                              ; $5f9f: $00
	ld   b, $00                                      ; $5fa0: $06 $00
	ld   sp, $0300                                   ; $5fa2: $31 $00 $03
	db   $10                                         ; $5fa5: $10
	ld   bc, $5603                                   ; $5fa6: $01 $03 $56
	add  h                                           ; $5fa9: $84
	nop                                              ; $5faa: $00
	add  b                                           ; $5fab: $80
	add  h                                           ; $5fac: $84
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	add  b                                           ; $5faf: $80
	add  l                                           ; $5fb0: $85
	add  d                                           ; $5fb1: $82
	nop                                              ; $5fb2: $00
	ld   bc, $3543                                   ; $5fb3: $01 $43 $35
	adc  c                                           ; $5fb6: $89
	nop                                              ; $5fb7: $00
	ld   [bc], a                                     ; $5fb8: $02
	ld   hl, $5007                                   ; $5fb9: $21 $07 $50
	add  e                                           ; $5fbc: $83
	nop                                              ; $5fbd: $00
	inc  b                                           ; $5fbe: $04
	add  [hl]                                        ; $5fbf: $86
	ld   bc, $8007                                   ; $5fc0: $01 $07 $80
	nop                                              ; $5fc3: $00
	add  b                                           ; $5fc4: $80
	add  c                                           ; $5fc5: $81
	add  d                                           ; $5fc6: $82
	nop                                              ; $5fc7: $00
	ld   bc, $3543                                   ; $5fc8: $01 $43 $35
	adc  c                                           ; $5fcb: $89
	nop                                              ; $5fcc: $00
	ld   [bc], a                                     ; $5fcd: $02
	ld   bc, $5325                                   ; $5fce: $01 $25 $53
	add  l                                           ; $5fd1: $85
	nop                                              ; $5fd2: $00
	add  b                                           ; $5fd3: $80
	add  e                                           ; $5fd4: $83
	ld   [bc], a                                     ; $5fd5: $02
	add  d                                           ; $5fd6: $82
	rrca                                             ; $5fd7: $0f
	adc  l                                           ; $5fd8: $8d
	add  d                                           ; $5fd9: $82
	nop                                              ; $5fda: $00
	ld   bc, $3542                                   ; $5fdb: $01 $42 $35
	adc  c                                           ; $5fde: $89
	nop                                              ; $5fdf: $00
	ld   bc, $7206                                   ; $5fe0: $01 $06 $72
	add  [hl]                                        ; $5fe3: $86
	nop                                              ; $5fe4: $00
	inc  b                                           ; $5fe5: $04
	adc  a                                           ; $5fe6: $8f
	inc  bc                                          ; $5fe7: $03
	ld   bc, $8a07                                   ; $5fe8: $01 $07 $8a
	add  d                                           ; $5feb: $82
	nop                                              ; $5fec: $00
	ld   bc, $3541                                   ; $5fed: $01 $41 $35
	adc  c                                           ; $5ff0: $89
	nop                                              ; $5ff1: $00
	ld   bc, $6712                                   ; $5ff2: $01 $12 $67
	add  l                                           ; $5ff5: $85
	nop                                              ; $5ff6: $00
	dec  b                                           ; $5ff7: $05
	adc  d                                           ; $5ff8: $8a
	inc  bc                                          ; $5ff9: $03
	ld   bc, $011f                                   ; $5ffa: $01 $1f $01
	sub  [hl]                                        ; $5ffd: $96
	add  d                                           ; $5ffe: $82
	nop                                              ; $5fff: $00
	ld   bc, $3540                                   ; $6000: $01 $40 $35
	adc  c                                           ; $6003: $89
	nop                                              ; $6004: $00
	ld   bc, $6812                                   ; $6005: $01 $12 $68
	add  l                                           ; $6008: $85
	nop                                              ; $6009: $00
	ld   [bc], a                                     ; $600a: $02
	sbc  d                                           ; $600b: $9a
	ld   bc, $859b                                   ; $600c: $01 $9b $85
	nop                                              ; $600f: $00
	ld   bc, $354f                                   ; $6010: $01 $4f $35
	adc  c                                           ; $6013: $89
	nop                                              ; $6014: $00
	ld   bc, $6912                                   ; $6015: $01 $12 $69
	add  l                                           ; $6018: $85
	nop                                              ; $6019: $00
	ld   [bc], a                                     ; $601a: $02
	sbc  l                                           ; $601b: $9d
	ld   bc, $839c                                   ; $601c: $01 $9c $83
	nop                                              ; $601f: $00
	inc  bc                                          ; $6020: $03
	ld   e, h                                        ; $6021: $5c
	ld   [hl], $07                                   ; $6022: $36 $07
	ld   d, $89                                      ; $6024: $16 $89
	nop                                              ; $6026: $00
	ld   bc, $6810                                   ; $6027: $01 $10 $68
	add  l                                           ; $602a: $85
	nop                                              ; $602b: $00
	ld   b, $9c                                      ; $602c: $06 $9c
	ld   bc, $920f                                   ; $602e: $01 $0f $92
	nop                                              ; $6031: $00
	ld   l, a                                        ; $6032: $6f
	inc  bc                                          ; $6033: $03
	dec  sp                                          ; $6034: $3b
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	inc  bc                                          ; $6037: $03
	add  b                                           ; $6038: $80
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	ld   b, $83                                      ; $603b: $06 $83
	nop                                              ; $603d: $00
	add  b                                           ; $603e: $80
	ld   [bc], a                                     ; $603f: $02
	add  [hl]                                        ; $6040: $86
	nop                                              ; $6041: $00
	ld   bc, $0401                                   ; $6042: $01 $01 $04
	adc  c                                           ; $6045: $89
	nop                                              ; $6046: $00
	ld   [bc], a                                     ; $6047: $02
	inc  bc                                          ; $6048: $03
	nop                                              ; $6049: $00
	ld   b, $84                                      ; $604a: $06 $84
	nop                                              ; $604c: $00
	ld   [bc], a                                     ; $604d: $02
	ld   [bc], a                                     ; $604e: $02
	nop                                              ; $604f: $00
	ld   [bc], a                                     ; $6050: $02
	add  l                                           ; $6051: $85
	nop                                              ; $6052: $00
	ld   bc, $0401                                   ; $6053: $01 $01 $04
	adc  c                                           ; $6056: $89
	nop                                              ; $6057: $00
	ld   [bc], a                                     ; $6058: $02
	inc  bc                                          ; $6059: $03
	nop                                              ; $605a: $00
	ld   b, $83                                      ; $605b: $06 $83
	nop                                              ; $605d: $00
	ld   [bc], a                                     ; $605e: $02
	ld   [bc], a                                     ; $605f: $02
	nop                                              ; $6060: $00
	ld   [bc], a                                     ; $6061: $02
	add  [hl]                                        ; $6062: $86
	nop                                              ; $6063: $00
	ld   bc, $0401                                   ; $6064: $01 $01 $04
	adc  c                                           ; $6067: $89
	nop                                              ; $6068: $00
	ld   bc, $0603                                   ; $6069: $01 $03 $06
	add  h                                           ; $606c: $84
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	ld   [bc], a                                     ; $606f: $02
	add  c                                           ; $6070: $81
	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	ld   [bc], a                                     ; $6073: $02
	add  h                                           ; $6074: $84
	nop                                              ; $6075: $00
	ld   bc, $0401                                   ; $6076: $01 $01 $04
	adc  c                                           ; $6079: $89
	nop                                              ; $607a: $00
	ld   bc, $0603                                   ; $607b: $01 $03 $06
	add  e                                           ; $607e: $83
	nop                                              ; $607f: $00
	nop                                              ; $6080: $00
	ld   [bc], a                                     ; $6081: $02
	add  e                                           ; $6082: $83
	nop                                              ; $6083: $00
	nop                                              ; $6084: $00
	ld   [bc], a                                     ; $6085: $02
	add  e                                           ; $6086: $83
	nop                                              ; $6087: $00
	ld   bc, $0401                                   ; $6088: $01 $01 $04
	adc  c                                           ; $608b: $89
	nop                                              ; $608c: $00
	ld   bc, $0603                                   ; $608d: $01 $03 $06
	add  h                                           ; $6090: $84
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	ld   [bc], a                                     ; $6093: $02
	add  b                                           ; $6094: $80
	nop                                              ; $6095: $00
	nop                                              ; $6096: $00
	ld   [bc], a                                     ; $6097: $02
	add  l                                           ; $6098: $85
	nop                                              ; $6099: $00
	ld   bc, $0401                                   ; $609a: $01 $01 $04
	adc  c                                           ; $609d: $89
	nop                                              ; $609e: $00
	ld   bc, $0603                                   ; $609f: $01 $03 $06
	add  l                                           ; $60a2: $85
	nop                                              ; $60a3: $00
	ld   [bc], a                                     ; $60a4: $02
	ld   [bc], a                                     ; $60a5: $02
	nop                                              ; $60a6: $00
	ld   [bc], a                                     ; $60a7: $02
	add  e                                           ; $60a8: $83
	nop                                              ; $60a9: $00
	nop                                              ; $60aa: $00
	ld   b, $80                                      ; $60ab: $06 $80
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	inc  bc                                          ; $60af: $03
	adc  c                                           ; $60b0: $89
	nop                                              ; $60b1: $00
	ld   bc, $0104                              ; $60b2: $01 $04 $01
	add  h                                           ; $60b5: $84
	nop                                              ; $60b6: $00
	nop                                              ; $60b7: $00
	ld   [bc], a                                     ; $60b8: $02
	add  b                                           ; $60b9: $80
	nop                                              ; $60ba: $00
	nop                                              ; $60bb: $00
	ld   [bc], a                                     ; $60bc: $02
	add  b                                           ; $60bd: $80
	nop                                              ; $60be: $00
	ld   bc, $0006                                   ; $60bf: $01 $06 $00
	ld   a, [hl-]                                    ; $60c2: $3a
	nop                                              ; $60c3: $00
	nop                                              ; $60c4: $00
	inc  bc                                          ; $60c5: $03
	add  b                                           ; $60c6: $80
	nop                                              ; $60c7: $00
	nop                                              ; $60c8: $00
	ld   b, $83                                      ; $60c9: $06 $83
	nop                                              ; $60cb: $00
	add  b                                           ; $60cc: $80
	ld   [bc], a                                     ; $60cd: $02
	add  [hl]                                        ; $60ce: $86
	nop                                              ; $60cf: $00
	ld   bc, $0401                                   ; $60d0: $01 $01 $04
	adc  c                                           ; $60d3: $89
	nop                                              ; $60d4: $00
	ld   [bc], a                                     ; $60d5: $02
	inc  bc                                          ; $60d6: $03
	nop                                              ; $60d7: $00
	ld   b, $84                                      ; $60d8: $06 $84
	nop                                              ; $60da: $00
	nop                                              ; $60db: $00
	ld   [bc], a                                     ; $60dc: $02
	add  b                                           ; $60dd: $80
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	ld   [bc], a                                     ; $60e0: $02
	add  h                                           ; $60e1: $84
	nop                                              ; $60e2: $00
	ld   bc, $0401                                   ; $60e3: $01 $01 $04
	adc  c                                           ; $60e6: $89
	nop                                              ; $60e7: $00
	ld   [bc], a                                     ; $60e8: $02
	inc  bc                                          ; $60e9: $03
	nop                                              ; $60ea: $00
	ld   b, $84                                      ; $60eb: $06 $84
	nop                                              ; $60ed: $00
	ld   [bc], a                                     ; $60ee: $02
	ld   [bc], a                                     ; $60ef: $02
	nop                                              ; $60f0: $00
	ld   [bc], a                                     ; $60f1: $02
	add  l                                           ; $60f2: $85
	nop                                              ; $60f3: $00
	ld   bc, $0401                                   ; $60f4: $01 $01 $04
	adc  c                                           ; $60f7: $89
	nop                                              ; $60f8: $00
	ld   bc, $0603                                   ; $60f9: $01 $03 $06
	add  e                                           ; $60fc: $83
	nop                                              ; $60fd: $00
	nop                                              ; $60fe: $00
	ld   [bc], a                                     ; $60ff: $02
	add  d                                           ; $6100: $82
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	ld   [bc], a                                     ; $6103: $02
	add  h                                           ; $6104: $84
	nop                                              ; $6105: $00
	ld   bc, $0401                                   ; $6106: $01 $01 $04
	adc  c                                           ; $6109: $89
	nop                                              ; $610a: $00
	ld   bc, $0603                                   ; $610b: $01 $03 $06
	add  e                                           ; $610e: $83
	nop                                              ; $610f: $00
	add  c                                           ; $6110: $81
	ld   [bc], a                                     ; $6111: $02
	add  b                                           ; $6112: $80
	nop                                              ; $6113: $00
	nop                                              ; $6114: $00
	ld   [bc], a                                     ; $6115: $02
	add  h                                           ; $6116: $84
	nop                                              ; $6117: $00
	ld   bc, $0401                                   ; $6118: $01 $01 $04
	adc  c                                           ; $611b: $89
	nop                                              ; $611c: $00
	ld   bc, $0603                                   ; $611d: $01 $03 $06
	add  e                                           ; $6120: $83
	nop                                              ; $6121: $00
	add  c                                           ; $6122: $81
	ld   [bc], a                                     ; $6123: $02
	ld   bc, $0200                                   ; $6124: $01 $00 $02
	add  l                                           ; $6127: $85
	nop                                              ; $6128: $00
	ld   bc, $0401                                   ; $6129: $01 $01 $04
	adc  c                                           ; $612c: $89
	nop                                              ; $612d: $00
	ld   bc, $0603                                   ; $612e: $01 $03 $06
	add  l                                           ; $6131: $85
	nop                                              ; $6132: $00
	ld   [bc], a                                     ; $6133: $02
	ld   [bc], a                                     ; $6134: $02
	nop                                              ; $6135: $00
	ld   [bc], a                                     ; $6136: $02
	add  e                                           ; $6137: $83
	nop                                              ; $6138: $00
	nop                                              ; $6139: $00
	ld   b, $80                                      ; $613a: $06 $80
	nop                                              ; $613c: $00
	nop                                              ; $613d: $00
	inc  bc                                          ; $613e: $03
	adc  c                                           ; $613f: $89
	nop                                              ; $6140: $00
	ld   bc, $0104                              ; $6141: $01 $04 $01
	add  l                                           ; $6144: $85
	nop                                              ; $6145: $00
	ld   [bc], a                                     ; $6146: $02
	ld   [bc], a                                     ; $6147: $02
	nop                                              ; $6148: $00
	ld   [bc], a                                     ; $6149: $02
	add  b                                           ; $614a: $80
	nop                                              ; $614b: $00
	ld   bc, $0006                                   ; $614c: $01 $06 $00
	ld   sp, $0300                                   ; $614f: $31 $00 $03
	db   $10                                         ; $6152: $10
	ld   bc, $5603                                   ; $6153: $01 $03 $56
	add  e                                           ; $6156: $83
	nop                                              ; $6157: $00
	add  b                                           ; $6158: $80
	add  h                                           ; $6159: $84
	add  [hl]                                        ; $615a: $86
	nop                                              ; $615b: $00
	ld   bc, $3543                                   ; $615c: $01 $43 $35
	adc  c                                           ; $615f: $89
	nop                                              ; $6160: $00
	ld   [bc], a                                     ; $6161: $02
	ld   hl, $5007                                   ; $6162: $21 $07 $50
	add  h                                           ; $6165: $84
	nop                                              ; $6166: $00
	inc  bc                                          ; $6167: $03
	add  l                                           ; $6168: $85
	inc  bc                                          ; $6169: $03
	ld   bc, $8487                                   ; $616a: $01 $87 $84
	nop                                              ; $616d: $00
	ld   bc, $3543                                   ; $616e: $01 $43 $35
	adc  c                                           ; $6171: $89
	nop                                              ; $6172: $00
	ld   [bc], a                                     ; $6173: $02
	ld   bc, $5325                                   ; $6174: $01 $25 $53
	add  h                                           ; $6177: $84
	nop                                              ; $6178: $00
	ld   [bc], a                                     ; $6179: $02
	add  c                                           ; $617a: $81
	ld   bc, $8580                                   ; $617b: $01 $80 $85
	nop                                              ; $617e: $00
	ld   bc, $3542                                   ; $617f: $01 $42 $35
	adc  c                                           ; $6182: $89
	nop                                              ; $6183: $00
	ld   bc, $7206                                   ; $6184: $01 $06 $72
	add  e                                           ; $6187: $83
	nop                                              ; $6188: $00
	dec  b                                           ; $6189: $05
	add  b                                           ; $618a: $80
	ld   bc, $010f                                   ; $618b: $01 $0f $01
	inc  bc                                          ; $618e: $03
	adc  h                                           ; $618f: $8c
	add  h                                           ; $6190: $84
	nop                                              ; $6191: $00
	ld   bc, $3541                                   ; $6192: $01 $41 $35
	adc  c                                           ; $6195: $89
	nop                                              ; $6196: $00
	ld   bc, $6712                                   ; $6197: $01 $12 $67
	add  e                                           ; $619a: $83
	nop                                              ; $619b: $00
	add  b                                           ; $619c: $80
	adc  h                                           ; $619d: $8c
	inc  bc                                          ; $619e: $03
	adc  e                                           ; $619f: $8b
	ld   bc, $8903                                   ; $61a0: $01 $03 $89
	add  h                                           ; $61a3: $84
	nop                                              ; $61a4: $00
	ld   bc, $3540                                   ; $61a5: $01 $40 $35
	adc  c                                           ; $61a8: $89
	nop                                              ; $61a9: $00
	ld   bc, $6812                                   ; $61aa: $01 $12 $68
	add  e                                           ; $61ad: $83
	nop                                              ; $61ae: $00
	add  b                                           ; $61af: $80
	add  a                                           ; $61b0: $87
	ld   [bc], a                                     ; $61b1: $02
	sbc  b                                           ; $61b2: $98
	ld   bc, $8599                                   ; $61b3: $01 $99 $85
	nop                                              ; $61b6: $00
	ld   bc, $354f                                   ; $61b7: $01 $4f $35
	adc  c                                           ; $61ba: $89
	nop                                              ; $61bb: $00
	ld   bc, $6912                                   ; $61bc: $01 $12 $69
	add  l                                           ; $61bf: $85
	nop                                              ; $61c0: $00
	ld   [bc], a                                     ; $61c1: $02
	sbc  e                                           ; $61c2: $9b
	ld   bc, $839a                                   ; $61c3: $01 $9a $83
	nop                                              ; $61c6: $00
	inc  bc                                          ; $61c7: $03
	ld   e, h                                        ; $61c8: $5c
	ld   [hl], $07                                   ; $61c9: $36 $07
	ld   d, $89                                      ; $61cb: $16 $89
	nop                                              ; $61cd: $00
	ld   bc, $6810                                   ; $61ce: $01 $10 $68
	add  l                                           ; $61d1: $85
	nop                                              ; $61d2: $00
	ld   [bc], a                                     ; $61d3: $02
	sbc  [hl]                                        ; $61d4: $9e
	ld   bc, $809f                                   ; $61d5: $01 $9f $80
	nop                                              ; $61d8: $00
	ld   bc, $036f                                   ; $61d9: $01 $6f $03
	cpl                                              ; $61dc: $2f
	nop                                              ; $61dd: $00
	inc  bc                                          ; $61de: $03
	db   $10                                         ; $61df: $10
	ld   bc, $5603                                   ; $61e0: $01 $03 $56
	add  e                                           ; $61e3: $83
	nop                                              ; $61e4: $00
	add  b                                           ; $61e5: $80
	add  h                                           ; $61e6: $84
	add  [hl]                                        ; $61e7: $86
	nop                                              ; $61e8: $00
	ld   bc, $3543                                   ; $61e9: $01 $43 $35
	adc  c                                           ; $61ec: $89
	nop                                              ; $61ed: $00
	ld   [bc], a                                     ; $61ee: $02
	ld   hl, $5007                                   ; $61ef: $21 $07 $50
	add  h                                           ; $61f2: $84
	nop                                              ; $61f3: $00
	ld   [bc], a                                     ; $61f4: $02
	add  l                                           ; $61f5: $85
	inc  bc                                          ; $61f6: $03
	add  [hl]                                        ; $61f7: $86
	add  l                                           ; $61f8: $85
	nop                                              ; $61f9: $00
	ld   bc, $3543                                   ; $61fa: $01 $43 $35
	adc  c                                           ; $61fd: $89
	nop                                              ; $61fe: $00
	ld   [bc], a                                     ; $61ff: $02
	ld   bc, $5325                                   ; $6200: $01 $25 $53
	add  e                                           ; $6203: $83
	nop                                              ; $6204: $00
	ld   [bc], a                                     ; $6205: $02
	add  [hl]                                        ; $6206: $86
	rlca                                             ; $6207: $07
	add  c                                           ; $6208: $81
	add  [hl]                                        ; $6209: $86
	nop                                              ; $620a: $00
	ld   bc, $3542                                   ; $620b: $01 $42 $35
	adc  c                                           ; $620e: $89
	nop                                              ; $620f: $00
	ld   bc, $7206                                   ; $6210: $01 $06 $72
	add  h                                           ; $6213: $84
	nop                                              ; $6214: $00
	inc  b                                           ; $6215: $04
	add  e                                           ; $6216: $83
	inc  bc                                          ; $6217: $03
	ld   bc, $8e0f                                   ; $6218: $01 $0f $8e
	add  h                                           ; $621b: $84
	nop                                              ; $621c: $00
	ld   bc, $3541                                   ; $621d: $01 $41 $35
	adc  c                                           ; $6220: $89
	nop                                              ; $6221: $00
	ld   bc, $6712                                   ; $6222: $01 $12 $67
	add  e                                           ; $6225: $83
	nop                                              ; $6226: $00
	ld   b, $8e                                      ; $6227: $06 $8e
	inc  bc                                          ; $6229: $03
	ld   bc, $0107                                   ; $622a: $01 $07 $01
	inc  bc                                          ; $622d: $03
	adc  c                                           ; $622e: $89
	add  e                                           ; $622f: $83
	nop                                              ; $6230: $00
	ld   bc, $3540                                   ; $6231: $01 $40 $35
	adc  c                                           ; $6234: $89
	nop                                              ; $6235: $00
	ld   bc, $6812                                   ; $6236: $01 $12 $68
	add  h                                           ; $6239: $84
	nop                                              ; $623a: $00
	inc  bc                                          ; $623b: $03
	add  a                                           ; $623c: $87
	rra                                              ; $623d: $1f
	ld   bc, $8599                                   ; $623e: $01 $99 $85
	nop                                              ; $6241: $00
	ld   bc, $354f                                   ; $6242: $01 $4f $35
	adc  c                                           ; $6245: $89
	nop                                              ; $6246: $00
	ld   bc, $6912                                   ; $6247: $01 $12 $69
	add  l                                           ; $624a: $85
	nop                                              ; $624b: $00
	ld   [bc], a                                     ; $624c: $02
	sbc  e                                           ; $624d: $9b
	ld   bc, $839a                                   ; $624e: $01 $9a $83
	nop                                              ; $6251: $00
	inc  bc                                          ; $6252: $03
	ld   e, h                                        ; $6253: $5c
	ld   [hl], $07                                   ; $6254: $36 $07
	ld   d, $89                                      ; $6256: $16 $89
	nop                                              ; $6258: $00
	ld   bc, $6810                                   ; $6259: $01 $10 $68
	add  h                                           ; $625c: $84
	nop                                              ; $625d: $00
	inc  bc                                          ; $625e: $03
	sbc  [hl]                                        ; $625f: $9e
	ld   bc, $9c03                                   ; $6260: $01 $03 $9c
	add  b                                           ; $6263: $80
	nop                                              ; $6264: $00
	ld   bc, $036f                                   ; $6265: $01 $6f $03
	ld   sp, $0000                                   ; $6268: $31 $00 $00
	inc  bc                                          ; $626b: $03
	add  b                                           ; $626c: $80
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	ld   b, $80                                      ; $626f: $06 $80
	ld   [bc], a                                     ; $6271: $02
	adc  e                                           ; $6272: $8b
	nop                                              ; $6273: $00
	ld   bc, $0401                                   ; $6274: $01 $01 $04
	adc  c                                           ; $6277: $89
	nop                                              ; $6278: $00
	inc  bc                                          ; $6279: $03
	inc  bc                                          ; $627a: $03
	nop                                              ; $627b: $00
	ld   b, $02                                      ; $627c: $06 $02
	add  d                                           ; $627e: $82
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	ld   [bc], a                                     ; $6281: $02
	adc  b                                           ; $6282: $88
	nop                                              ; $6283: $00
	ld   bc, $0401                                   ; $6284: $01 $01 $04
	adc  c                                           ; $6287: $89
	nop                                              ; $6288: $00
	inc  bc                                          ; $6289: $03
	inc  bc                                          ; $628a: $03
	nop                                              ; $628b: $00
	dec  b                                           ; $628c: $05
	ld   bc, $0083                                   ; $628d: $01 $83 $00
	nop                                              ; $6290: $00
	ld   [bc], a                                     ; $6291: $02
	add  a                                           ; $6292: $87
	nop                                              ; $6293: $00
	ld   bc, $0401                                   ; $6294: $01 $01 $04
	adc  c                                           ; $6297: $89
	nop                                              ; $6298: $00
	inc  bc                                          ; $6299: $03
	inc  bc                                          ; $629a: $03
	dec  b                                           ; $629b: $05
	nop                                              ; $629c: $00
	ld   bc, $0083                                   ; $629d: $01 $83 $00
	nop                                              ; $62a0: $00
	ld   [bc], a                                     ; $62a1: $02
	add  l                                           ; $62a2: $85
	nop                                              ; $62a3: $00
	inc  bc                                          ; $62a4: $03
	ld   [$0900], sp                                 ; $62a5: $08 $00 $09
	inc  b                                           ; $62a8: $04
	adc  c                                           ; $62a9: $89
	nop                                              ; $62aa: $00
	inc  bc                                          ; $62ab: $03
	inc  bc                                          ; $62ac: $03
	dec  c                                           ; $62ad: $0d
	nop                                              ; $62ae: $00
	ld   bc, $0084                                   ; $62af: $01 $84 $00
	nop                                              ; $62b2: $00
	ld   [bc], a                                     ; $62b3: $02
	add  [hl]                                        ; $62b4: $86
	nop                                              ; $62b5: $00
	ld   bc, $0409                                   ; $62b6: $01 $09 $04
	adc  c                                           ; $62b9: $89
	nop                                              ; $62ba: $00
	inc  b                                           ; $62bb: $04
	inc  bc                                          ; $62bc: $03
	ld   c, $03                                      ; $62bd: $0e $03
	nop                                              ; $62bf: $00
	ld   bc, $0082                                   ; $62c0: $01 $82 $00
	nop                                              ; $62c3: $00
	ld   [bc], a                                     ; $62c4: $02
	add  a                                           ; $62c5: $87
	nop                                              ; $62c6: $00
	ld   bc, $0409                                   ; $62c7: $01 $09 $04
	adc  c                                           ; $62ca: $89
	nop                                              ; $62cb: $00
	dec  b                                           ; $62cc: $05
	inc  bc                                          ; $62cd: $03
	ld   c, $00                                      ; $62ce: $0e $00
	inc  bc                                          ; $62d0: $03
	nop                                              ; $62d1: $00
	ld   bc, $0081                                   ; $62d2: $01 $81 $00
	nop                                              ; $62d5: $00
	ld   [bc], a                                     ; $62d6: $02
	add  l                                           ; $62d7: $85
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	ld   c, $80                                      ; $62da: $0e $80
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	inc  bc                                          ; $62de: $03
	adc  c                                           ; $62df: $89
	nop                                              ; $62e0: $00
	rlca                                             ; $62e1: $07
	inc  b                                           ; $62e2: $04
	add  hl, bc                                      ; $62e3: $09
	nop                                              ; $62e4: $00
	inc  bc                                          ; $62e5: $03
	nop                                              ; $62e6: $00
	ld   bc, $0002                                   ; $62e7: $01 $02 $00
	add  b                                           ; $62ea: $80
	ld   [bc], a                                     ; $62eb: $02
	add  d                                           ; $62ec: $82
	nop                                              ; $62ed: $00
	ld   bc, $000e                                   ; $62ee: $01 $0e $00
	dec  [hl]                                        ; $62f1: $35
	nop                                              ; $62f2: $00
	nop                                              ; $62f3: $00
	inc  bc                                          ; $62f4: $03
	add  b                                           ; $62f5: $80
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	ld   b, $8d                                      ; $62f8: $06 $8d
	nop                                              ; $62fa: $00
	ld   bc, $0401                                   ; $62fb: $01 $01 $04
	adc  c                                           ; $62fe: $89
	nop                                              ; $62ff: $00
	inc  bc                                          ; $6300: $03
	inc  bc                                          ; $6301: $03
	nop                                              ; $6302: $00
	ld   b, $00                                      ; $6303: $06 $00
	add  d                                           ; $6305: $82
	ld   [bc], a                                     ; $6306: $02
	adc  c                                           ; $6307: $89
	nop                                              ; $6308: $00
	ld   bc, $0401                                   ; $6309: $01 $01 $04
	adc  c                                           ; $630c: $89
	nop                                              ; $630d: $00
	inc  b                                           ; $630e: $04
	inc  bc                                          ; $630f: $03
	nop                                              ; $6310: $00
	ld   b, $02                                      ; $6311: $06 $02
	nop                                              ; $6313: $00
	add  b                                           ; $6314: $80
	ld   bc, $0001                                   ; $6315: $01 $01 $00
	ld   [bc], a                                     ; $6318: $02
	adc  b                                           ; $6319: $88
	nop                                              ; $631a: $00
	ld   bc, $0401                                   ; $631b: $01 $01 $04
	adc  c                                           ; $631e: $89
	nop                                              ; $631f: $00
	ld   [bc], a                                     ; $6320: $02
	inc  bc                                          ; $6321: $03
	ld   b, $02                                      ; $6322: $06 $02
	add  b                                           ; $6324: $80
	nop                                              ; $6325: $00
	add  b                                           ; $6326: $80
	ld   bc, $0080                                   ; $6327: $01 $80 $00
	nop                                              ; $632a: $00
	ld   [bc], a                                     ; $632b: $02
	add  a                                           ; $632c: $87
	nop                                              ; $632d: $00
	ld   bc, $0401                                   ; $632e: $01 $01 $04
	adc  c                                           ; $6331: $89
	nop                                              ; $6332: $00
	ld   [bc], a                                     ; $6333: $02
	inc  bc                                          ; $6334: $03
	inc  b                                           ; $6335: $04
	nop                                              ; $6336: $00
	add  d                                           ; $6337: $82
	ld   bc, $0080                                   ; $6338: $01 $80 $00
	nop                                              ; $633b: $00
	ld   [bc], a                                     ; $633c: $02
	add  a                                           ; $633d: $87
	nop                                              ; $633e: $00
	ld   bc, $0401                                   ; $633f: $01 $01 $04
	adc  c                                           ; $6342: $89
	nop                                              ; $6343: $00
	dec  b                                           ; $6344: $05
	inc  bc                                          ; $6345: $03
	inc  b                                           ; $6346: $04
	nop                                              ; $6347: $00
	ld   bc, $0100                                   ; $6348: $01 $00 $01
	add  d                                           ; $634b: $82
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	ld   [bc], a                                     ; $634e: $02
	add  [hl]                                        ; $634f: $86
	nop                                              ; $6350: $00
	ld   bc, $0401                                   ; $6351: $01 $01 $04
	adc  c                                           ; $6354: $89
	nop                                              ; $6355: $00
	ld   [bc], a                                     ; $6356: $02
	inc  bc                                          ; $6357: $03
	ld   b, $02                                      ; $6358: $06 $02
	add  l                                           ; $635a: $85
	nop                                              ; $635b: $00
	nop                                              ; $635c: $00
	ld   [bc], a                                     ; $635d: $02
	add  h                                           ; $635e: $84
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	ld   b, $80                                      ; $6361: $06 $80
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	inc  bc                                          ; $6365: $03
	adc  c                                           ; $6366: $89
	nop                                              ; $6367: $00
	ld   [bc], a                                     ; $6368: $02
	inc  b                                           ; $6369: $04
	ld   bc, $8302                                   ; $636a: $01 $02 $83
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	ld   [$0080], sp                                 ; $636f: $08 $80 $00
	nop                                              ; $6372: $00
	ld   a, [bc]                                     ; $6373: $0a
	add  b                                           ; $6374: $80
	nop                                              ; $6375: $00
	ld   bc, $0006                                   ; $6376: $01 $06 $00
	dec  [hl]                                        ; $6379: $35
	nop                                              ; $637a: $00
	nop                                              ; $637b: $00
	inc  bc                                          ; $637c: $03
	add  b                                           ; $637d: $80
	nop                                              ; $637e: $00
	nop                                              ; $637f: $00
	dec  b                                           ; $6380: $05
	add  c                                           ; $6381: $81
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	ld   bc, $0081                                   ; $6384: $01 $81 $00
	nop                                              ; $6387: $00
	ld   bc, $0085                                   ; $6388: $01 $85 $00
	ld   bc, $0402                                   ; $638b: $01 $02 $04
	adc  c                                           ; $638e: $89
	nop                                              ; $638f: $00
	ld   [bc], a                                     ; $6390: $02
	inc  bc                                          ; $6391: $03
	nop                                              ; $6392: $00
	dec  b                                           ; $6393: $05
	add  b                                           ; $6394: $80
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	ld   bc, $0083                                   ; $6397: $01 $83 $00
	nop                                              ; $639a: $00
	ld   bc, $0082                                   ; $639b: $01 $82 $00
	add  b                                           ; $639e: $80
	ld   [$0002], sp                                 ; $639f: $08 $02 $00
	ld   [bc], a                                     ; $63a2: $02
	inc  b                                           ; $63a3: $04
	adc  c                                           ; $63a4: $89
	nop                                              ; $63a5: $00
	ld   [bc], a                                     ; $63a6: $02
	inc  bc                                          ; $63a7: $03
	nop                                              ; $63a8: $00
	dec  b                                           ; $63a9: $05
	add  d                                           ; $63aa: $82
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	ld   bc, $0082                                   ; $63ad: $01 $82 $00
	nop                                              ; $63b0: $00
	ld   bc, $0081                                   ; $63b1: $01 $81 $00
	inc  b                                           ; $63b4: $04
	ld   [$0800], sp                                 ; $63b5: $08 $00 $08
	ld   [bc], a                                     ; $63b8: $02
	inc  b                                           ; $63b9: $04
	adc  c                                           ; $63ba: $89
	nop                                              ; $63bb: $00
	ld   bc, $0503                                   ; $63bc: $01 $03 $05
	add  e                                           ; $63bf: $83
	nop                                              ; $63c0: $00
	add  b                                           ; $63c1: $80
	ld   bc, $0003                                   ; $63c2: $01 $03 $00
	ld   bc, $0100                                   ; $63c5: $01 $00 $01
	add  h                                           ; $63c8: $84
	nop                                              ; $63c9: $00
	ld   bc, $0402                                   ; $63ca: $01 $02 $04
	adc  c                                           ; $63cd: $89
	nop                                              ; $63ce: $00
	ld   bc, $0503                                   ; $63cf: $01 $03 $05
	add  d                                           ; $63d2: $82
	nop                                              ; $63d3: $00
	add  b                                           ; $63d4: $80
	ld   bc, $0089                                   ; $63d5: $01 $89 $00
	ld   bc, $0402                                   ; $63d8: $01 $02 $04
	adc  c                                           ; $63db: $89
	nop                                              ; $63dc: $00
	ld   bc, $0503                                   ; $63dd: $01 $03 $05
	adc  a                                           ; $63e0: $8f
	nop                                              ; $63e1: $00
	ld   bc, $0402                                   ; $63e2: $01 $02 $04
	adc  c                                           ; $63e5: $89
	nop                                              ; $63e6: $00
	ld   bc, $0d03                                   ; $63e7: $01 $03 $0d
	adc  l                                           ; $63ea: $8d
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	dec  c                                           ; $63ed: $0d
	add  b                                           ; $63ee: $80
	nop                                              ; $63ef: $00
	nop                                              ; $63f0: $00
	inc  bc                                          ; $63f1: $03
	adc  c                                           ; $63f2: $89
	nop                                              ; $63f3: $00
	ld   bc, $0a04                                   ; $63f4: $01 $04 $0a
	adc  d                                           ; $63f7: $8a
	nop                                              ; $63f8: $00
	ld   bc, $000d                                   ; $63f9: $01 $0d $00
	rst  $38                                         ; $63fc: $ff
	ld   a, a                                        ; $63fd: $7f
	ld   d, d                                        ; $63fe: $52
	ld   c, [hl]                                     ; $63ff: $4e
	add  hl, hl                                      ; $6400: $29
	dec  l                                           ; $6401: $2d
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	rst  $38                                         ; $6404: $ff
	ld   a, a                                        ; $6405: $7f
	sub  [hl]                                        ; $6406: $96
	ld   b, [hl]                                     ; $6407: $46
	ld   [hl-], a                                    ; $6408: $32
	ld   b, d                                        ; $6409: $42
	add  hl, hl                                      ; $640a: $29
	dec  l                                           ; $640b: $2d
	rst  $38                                         ; $640c: $ff
	ld   a, a                                        ; $640d: $7f
	sbc  b                                           ; $640e: $98
	ld   c, [hl]                                     ; $640f: $4e
	jr   @+$3c                                       ; $6410: $18 $3a

	add  hl, hl                                      ; $6412: $29
	dec  l                                           ; $6413: $2d
	rst  $38                                         ; $6414: $ff
	ld   a, a                                        ; $6415: $7f
	sbc  b                                           ; $6416: $98
	ld   c, [hl]                                     ; $6417: $4e
	ld   l, l                                        ; $6418: $6d
	ld   sp, $2d29                                   ; $6419: $31 $29 $2d
	rst  $38                                         ; $641c: $ff
	ld   a, a                                        ; $641d: $7f
	rla                                              ; $641e: $17
	inc  l                                           ; $641f: $2c
	ld   [de], a                                     ; $6420: $12
	jr   nz, jr_01e_6423                             ; $6421: $20 $00

jr_01e_6423:
	nop                                              ; $6423: $00
	rst  $38                                         ; $6424: $ff
	ld   a, a                                        ; $6425: $7f
	ldh  [$50], a                                    ; $6426: $e0 $50
	add  b                                           ; $6428: $80
	inc  [hl]                                        ; $6429: $34
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	rst  $38                                         ; $642c: $ff
	ld   a, a                                        ; $642d: $7f
	and  a                                           ; $642e: $a7
	ld   a, [hl]                                     ; $642f: $7e
	db   $e3                                         ; $6430: $e3
	ld   h, l                                        ; $6431: $65
	nop                                              ; $6432: $00
	nop                                              ; $6433: $00
	rst  $38                                         ; $6434: $ff
	ld   a, a                                        ; $6435: $7f
	ld   l, l                                        ; $6436: $6d
	ld   sp, $3a18                                   ; $6437: $31 $18 $3a
	add  hl, hl                                      ; $643a: $29
	dec  l                                           ; $643b: $2d
	rst  $38                                         ; $643c: $ff
	ld   a, a                                        ; $643d: $7f
	jr   c, @+$2c                                    ; $643e: $38 $2a

	dec  l                                           ; $6440: $2d
	add  hl, de                                      ; $6441: $19
	ld   [hl+], a                                    ; $6442: $22
	jr   @+$01                                       ; $6443: $18 $ff

	ld   a, a                                        ; $6445: $7f
	ld   a, a                                        ; $6446: $7f
	ld   a, [hl-]                                    ; $6447: $3a
	sbc  $04                                         ; $6448: $de $04
	ld   [hl+], a                                    ; $644a: $22
	jr   @+$01                                       ; $644b: $18 $ff

	ld   a, a                                        ; $644d: $7f
	ld   a, a                                        ; $644e: $7f
	ld   a, [hl-]                                    ; $644f: $3a
	dec  bc                                          ; $6450: $0b
	add  hl, hl                                      ; $6451: $29
	ld   [hl+], a                                    ; $6452: $22
	jr   @+$01                                       ; $6453: $18 $ff

	ld   a, a                                        ; $6455: $7f
	or   l                                           ; $6456: $b5
	ld   d, [hl]                                     ; $6457: $56
	ld   l, e                                        ; $6458: $6b
	dec  l                                           ; $6459: $2d
	nop                                              ; $645a: $00
	nop                                              ; $645b: $00
	rst  $38                                         ; $645c: $ff
	ld   a, a                                        ; $645d: $7f
	ld   e, d                                        ; $645e: $5a
	ld   l, l                                        ; $645f: $6d
	ld   [hl-], a                                    ; $6460: $32
	ld   c, h                                        ; $6461: $4c
	dec  b                                           ; $6462: $05
	inc  d                                           ; $6463: $14
	rst  $38                                         ; $6464: $ff
	ld   a, a                                        ; $6465: $7f
	ld   e, l                                        ; $6466: $5d
	ld   b, $97                                      ; $6467: $06 $97
	ld   bc, $0066                                   ; $6469: $01 $66 $00
	rst  $38                                         ; $646c: $ff
	ld   a, a                                        ; $646d: $7f
	sbc  $03                                         ; $646e: $de $03
	ld   c, d                                        ; $6470: $4a
	ld   bc, $0000                                   ; $6471: $01 $00 $00
	rst  $38                                         ; $6474: $ff
	ld   a, a                                        ; $6475: $7f
	and  a                                           ; $6476: $a7
	ld   a, [hl]                                     ; $6477: $7e
	db   $e3                                         ; $6478: $e3
	ld   h, l                                        ; $6479: $65
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	nop                                              ; $648d: $00
	nop                                              ; $648e: $00
	nop                                              ; $648f: $00
	nop                                              ; $6490: $00
	nop                                              ; $6491: $00
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	nop                                              ; $6498: $00
	nop                                              ; $6499: $00
	nop                                              ; $649a: $00
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	rst  $38                                         ; $64a4: $ff
	ld   a, a                                        ; $64a5: $7f
	ld   h, e                                        ; $64a6: $63
	inc  d                                           ; $64a7: $14
	ldh  [c], a                                      ; $64a8: $e2
	ld   a, l                                        ; $64a9: $7d
	rra                                              ; $64aa: $1f
	ld   [hl-], a                                    ; $64ab: $32
	rra                                              ; $64ac: $1f
	add  hl, bc                                      ; $64ad: $09
	ld   h, e                                        ; $64ae: $63
	inc  d                                           ; $64af: $14
	rst  $38                                         ; $64b0: $ff
	inc  bc                                          ; $64b1: $03
	ldh  [c], a                                      ; $64b2: $e2
	ld   a, l                                        ; $64b3: $7d
	rst  $38                                         ; $64b4: $ff
	ld   a, a                                        ; $64b5: $7f
	ld   h, e                                        ; $64b6: $63
	inc  d                                           ; $64b7: $14
	rst  $38                                         ; $64b8: $ff
	inc  bc                                          ; $64b9: $03
	ld   sp, $0046                                   ; $64ba: $31 $46 $00
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	nop                                              ; $64c3: $00
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	nop                                              ; $64c7: $00
	nop                                              ; $64c8: $00
	nop                                              ; $64c9: $00
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	nop                                              ; $64ce: $00
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	nop                                              ; $64d7: $00
	nop                                              ; $64d8: $00
	nop                                              ; $64d9: $00
	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	nop                                              ; $64f2: $00
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	nop                                              ; $64fa: $00
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	nop                                              ; $650a: $00
	nop                                              ; $650b: $00
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	add  hl, hl                                      ; $6510: $29
	dec  h                                           ; $6511: $25
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	ld   a, [hl-]                                    ; $6514: $3a
	ld   c, e                                        ; $6515: $4b
	sub  b                                           ; $6516: $90
	ld   c, c                                        ; $6517: $49
	ld   l, b                                        ; $6518: $68
	ld   hl, $0016                                   ; $6519: $21 $16 $00
	sub  d                                           ; $651c: $92
	ld   a, e                                        ; $651d: $7b
	sub  b                                           ; $651e: $90
	ld   c, c                                        ; $651f: $49
	ld   l, b                                        ; $6520: $68
	ld   hl, $0016                                   ; $6521: $21 $16 $00
	rst  $38                                         ; $6524: $ff
	ld   a, a                                        ; $6525: $7f
	ret  nc                                          ; $6526: $d0

	ld   [hl], $68                                   ; $6527: $36 $68
	ld   hl, $0016                                   ; $6529: $21 $16 $00
	rst  $38                                         ; $652c: $ff
	ld   a, a                                        ; $652d: $7f
	ld   [de], a                                     ; $652e: $12
	ld   [de], a                                     ; $652f: $12
	ld   [de], a                                     ; $6530: $12
	dec  d                                           ; $6531: $15
	ld   h, e                                        ; $6532: $63
	inc  c                                           ; $6533: $0c
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	nop                                              ; $653a: $00
	nop                                              ; $653b: $00
	rst  $38                                         ; $653c: $ff
	ld   a, a                                        ; $653d: $7f
	rst  $38                                         ; $653e: $ff
	ld   c, d                                        ; $653f: $4a
	ld   a, [de]                                     ; $6540: $1a
	inc  e                                           ; $6541: $1c
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	rst  $38                                         ; $6544: $ff
	ld   a, a                                        ; $6545: $7f
	rst  $38                                         ; $6546: $ff
	ld   a, a                                        ; $6547: $7f
	ld   a, [de]                                     ; $6548: $1a
	inc  e                                           ; $6549: $1c
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	rst  $38                                         ; $654c: $ff
	ld   a, a                                        ; $654d: $7f
	rst  $38                                         ; $654e: $ff
	ld   c, d                                        ; $654f: $4a
	ld   h, c                                        ; $6550: $61
	inc  h                                           ; $6551: $24
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	rst  $38                                         ; $6554: $ff
	ld   a, a                                        ; $6555: $7f
	rst  $38                                         ; $6556: $ff
	ld   a, a                                        ; $6557: $7f
	ld   l, l                                        ; $6558: $6d
	ld   a, [hl]                                     ; $6559: $7e
	nop                                              ; $655a: $00
	ld   [hl], h                                     ; $655b: $74
	nop                                              ; $655c: $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	nop                                              ; $6571: $00
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	rst  $38                                         ; $657c: $ff
	ld   a, a                                        ; $657d: $7f
	rra                                              ; $657e: $1f
	ld   l, $d8                                      ; $657f: $2e $d8
	nop                                              ; $6581: $00
	ld   h, [hl]                                     ; $6582: $66
	inc  b                                           ; $6583: $04
	ld   e, a                                        ; $6584: $5f
	ld   d, a                                        ; $6585: $57
	reti                                             ; $6586: $d9


	dec  h                                           ; $6587: $25
	sub  e                                           ; $6588: $93
	nop                                              ; $6589: $00
	ld   h, [hl]                                     ; $658a: $66
	inc  b                                           ; $658b: $04
	rst  $38                                         ; $658c: $ff
	ld   a, a                                        ; $658d: $7f
	ld   sp, $e746                                   ; $658e: $31 $46 $e7
	inc  e                                           ; $6591: $1c
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	dec  de                                          ; $6594: $1b
	ld   [bc], a                                     ; $6595: $02
	ld   l, a                                        ; $6596: $6f
	nop                                              ; $6597: $00
	ld   l, d                                        ; $6598: $6a
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	rst  $38                                         ; $659c: $ff
	ld   a, a                                        ; $659d: $7f
	ld   a, h                                        ; $659e: $7c
	dec  b                                           ; $659f: $05
	rra                                              ; $65a0: $1f
	ld   b, $00                                      ; $65a1: $06 $00

Call_01e_65a3:
	nop                                              ; $65a3: $00
	rst  $38                                         ; $65a4: $ff
	ld   a, a                                        ; $65a5: $7f
	ld   a, h                                        ; $65a6: $7c
	dec  b                                           ; $65a7: $05
	ld   d, a                                        ; $65a8: $57
	nop                                              ; $65a9: $00
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	rst  $38                                         ; $65ac: $ff
	ld   a, a                                        ; $65ad: $7f
	ld   a, h                                        ; $65ae: $7c
	dec  b                                           ; $65af: $05
	xor  c                                           ; $65b0: $a9
	inc  h                                           ; $65b1: $24
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	ld   a, a                                        ; $65b4: $7f
	ld   c, d                                        ; $65b5: $4a
	ld   a, a                                        ; $65b6: $7f
	inc  c                                           ; $65b7: $0c
	ld   d, b                                        ; $65b8: $50
	ld   [$0466], sp                                 ; $65b9: $08 $66 $04
	rst  $38                                         ; $65bc: $ff
	ld   a, a                                        ; $65bd: $7f
	ld   a, e                                        ; $65be: $7b
	ld   a, b                                        ; $65bf: $78
	dec  bc                                          ; $65c0: $0b
	inc  l                                           ; $65c1: $2c
	rst  $38                                         ; $65c2: $ff
	ld   a, a                                        ; $65c3: $7f
	rst  $38                                         ; $65c4: $ff
	ld   a, a                                        ; $65c5: $7f
	add  h                                           ; $65c6: $84
	ld   a, a                                        ; $65c7: $7f
	pop  bc                                          ; $65c8: $c1
	ld   b, b                                        ; $65c9: $40
	rst  $38                                         ; $65ca: $ff
	ld   a, a                                        ; $65cb: $7f
	rst  $38                                         ; $65cc: $ff
	ld   a, a                                        ; $65cd: $7f
	ccf                                              ; $65ce: $3f
	ld   [hl+], a                                    ; $65cf: $22
	ld   e, l                                        ; $65d0: $5d
	ld   bc, $7fff                                   ; $65d1: $01 $ff $7f
	rst  $38                                         ; $65d4: $ff
	ld   a, a                                        ; $65d5: $7f
	ld   a, a                                        ; $65d6: $7f
	ld   c, $e0                                      ; $65d7: $0e $e0
	ld   [hl], b                                     ; $65d9: $70
	rst  $38                                         ; $65da: $ff
	ld   a, a                                        ; $65db: $7f
	rst  $38                                         ; $65dc: $ff
	ld   a, a                                        ; $65dd: $7f
	ccf                                              ; $65de: $3f
	ld   d, c                                        ; $65df: $51
	jr   jr_01e_6606                                 ; $65e0: $18 $24

	rst  $38                                         ; $65e2: $ff
	ld   a, a                                        ; $65e3: $7f
	rst  $38                                         ; $65e4: $ff
	ld   a, a                                        ; $65e5: $7f
	ld   b, l                                        ; $65e6: $45
	ld   a, [hl]                                     ; $65e7: $7e
	add  b                                           ; $65e8: $80
	ld   h, c                                        ; $65e9: $61
	rst  $38                                         ; $65ea: $ff
	ld   a, a                                        ; $65eb: $7f
	rst  $38                                         ; $65ec: $ff
	ld   a, a                                        ; $65ed: $7f
	ld   h, [hl]                                     ; $65ee: $66
	inc  bc                                          ; $65ef: $03
	ld   b, b                                        ; $65f0: $40
	ld   a, [bc]                                     ; $65f1: $0a
	rst  $38                                         ; $65f2: $ff
	ld   a, a                                        ; $65f3: $7f
	rst  $38                                         ; $65f4: $ff
	ld   a, a                                        ; $65f5: $7f
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	db   $10                                         ; $65f8: $10
	ld   b, d                                        ; $65f9: $42
	rst  $38                                         ; $65fa: $ff
	ld   a, a                                        ; $65fb: $7f
	rst  $38                                         ; $65fc: $ff
	ld   a, a                                        ; $65fd: $7f
	sbc  a                                           ; $65fe: $9f
	ld   d, c                                        ; $65ff: $51
	cp   a                                           ; $6600: $bf
	ld   [bc], a                                     ; $6601: $02
	add  $18                                         ; $6602: $c6 $18
	cp   a                                           ; $6604: $bf
	ld   c, l                                        ; $6605: $4d

jr_01e_6606:
	rra                                              ; $6606: $1f
	ld   d, [hl]                                     ; $6607: $56
	sbc  h                                           ; $6608: $9c
	ld   l, d                                        ; $6609: $6a
	and  l                                           ; $660a: $a5
	inc  d                                           ; $660b: $14
	ld   a, a                                        ; $660c: $7f
	ld   b, l                                        ; $660d: $45
	cp   a                                           ; $660e: $bf
	ld   c, l                                        ; $660f: $4d
	sbc  h                                           ; $6610: $9c
	ld   l, d                                        ; $6611: $6a
	and  l                                           ; $6612: $a5
	inc  d                                           ; $6613: $14
	ccf                                              ; $6614: $3f
	ld   b, l                                        ; $6615: $45
	ld   a, a                                        ; $6616: $7f
	ld   b, l                                        ; $6617: $45
	sbc  h                                           ; $6618: $9c
	ld   l, d                                        ; $6619: $6a
	and  l                                           ; $661a: $a5
	inc  d                                           ; $661b: $14
	sbc  h                                           ; $661c: $9c
	ld   l, d                                        ; $661d: $6a
	sbc  a                                           ; $661e: $9f
	ld   d, c                                        ; $661f: $51
	cp   a                                           ; $6620: $bf
	ld   [bc], a                                     ; $6621: $02
	add  $18                                         ; $6622: $c6 $18
	sbc  a                                           ; $6624: $9f
	ld   d, c                                        ; $6625: $51
	sbc  a                                           ; $6626: $9f
	ld   d, c                                        ; $6627: $51
	cp   a                                           ; $6628: $bf
	ld   [bc], a                                     ; $6629: $02
	add  $18                                         ; $662a: $c6 $18
	sbc  a                                           ; $662c: $9f
	ld   d, c                                        ; $662d: $51
	sbc  a                                           ; $662e: $9f
	ld   d, c                                        ; $662f: $51
	cp   a                                           ; $6630: $bf
	ld   [bc], a                                     ; $6631: $02
	add  $18                                         ; $6632: $c6 $18
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
	ld   a, a                                        ; $663e: $7f
	inc  bc                                          ; $663f: $03
	rst  $38                                         ; $6640: $ff
	dec  l                                           ; $6641: $2d
	ld   [bc], a                                     ; $6642: $02
	jr   nz, jr_01e_6645                             ; $6643: $20 $00

jr_01e_6645:
	nop                                              ; $6645: $00
	pop  hl                                          ; $6646: $e1
	inc  bc                                          ; $6647: $03
	ld   a, a                                        ; $6648: $7f
	inc  bc                                          ; $6649: $03
	ld   [bc], a                                     ; $664a: $02
	jr   nz, jr_01e_664d                             ; $664b: $20 $00

jr_01e_664d:
	nop                                              ; $664d: $00
	ld   a, [de]                                     ; $664e: $1a
	add  hl, sp                                      ; $664f: $39
	cp   a                                           ; $6650: $bf
	ld   [bc], a                                     ; $6651: $02
	ld   [bc], a                                     ; $6652: $02
	jr   nz, jr_01e_6655                             ; $6653: $20 $00

jr_01e_6655:
	nop                                              ; $6655: $00
	rst  $38                                         ; $6656: $ff
	ld   a, a                                        ; $6657: $7f
	cp   a                                           ; $6658: $bf
	ld   [bc], a                                     ; $6659: $02
	add  $18                                         ; $665a: $c6 $18
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
	rst  $38                                         ; $667c: $ff
	ld   a, a                                        ; $667d: $7f
	rst  $30                                         ; $667e: $f7
	dec  d                                           ; $667f: $15
	ld   [hl-], a                                    ; $6680: $32
	ld   bc, $0848                                   ; $6681: $01 $48 $08
	rst  $30                                         ; $6684: $f7
	dec  d                                           ; $6685: $15
	ld   [hl-], a                                    ; $6686: $32
	ld   bc, $00cd                                   ; $6687: $01 $cd $00
	ld   c, b                                        ; $668a: $48
	ld   [$0018], sp                                 ; $668b: $08 $18 $00
	rst  $30                                         ; $668e: $f7
	dec  d                                           ; $668f: $15
	ld   [hl-], a                                    ; $6690: $32
	ld   bc, $0848                                   ; $6691: $01 $48 $08
	inc  de                                          ; $6694: $13
	ld   b, d                                        ; $6695: $42
	dec  de                                          ; $6696: $1b
	scf                                              ; $6697: $37
	ld   [hl-], a                                    ; $6698: $32
	ld   bc, $0026                                   ; $6699: $01 $26 $00
	rst  $38                                         ; $669c: $ff
	ld   a, a                                        ; $669d: $7f
	dec  de                                          ; $669e: $1b
	scf                                              ; $669f: $37
	ld   [hl-], a                                    ; $66a0: $32
	ld   bc, $0026                                   ; $66a1: $01 $26 $00
	rst  $38                                         ; $66a4: $ff
	ld   a, a                                        ; $66a5: $7f
	ld   [hl], l                                     ; $66a6: $75
	ld   b, d                                        ; $66a7: $42
	ld   d, c                                        ; $66a8: $51
	ld   bc, $0848                                   ; $66a9: $01 $48 $08
	db   $fc                                         ; $66ac: $fc
	ld   [bc], a                                     ; $66ad: $02
	inc  [hl]                                        ; $66ae: $34
	ld   bc, $0868                                   ; $66af: $01 $68 $08
	inc  b                                           ; $66b2: $04
	nop                                              ; $66b3: $00
	rst  $38                                         ; $66b4: $ff
	ld   a, a                                        ; $66b5: $7f
	rst  $38                                         ; $66b6: $ff
	ld   a, a                                        ; $66b7: $7f
	ccf                                              ; $66b8: $3f
	ld   [bc], a                                     ; $66b9: $02
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	rra                                              ; $66bc: $1f
	ld   h, a                                        ; $66bd: $67
	rst  $38                                         ; $66be: $ff
	ld   a, a                                        ; $66bf: $7f
	rst  $30                                         ; $66c0: $f7
	dec  d                                           ; $66c1: $15
	ld   c, b                                        ; $66c2: $48
	ld   [$671f], sp                                 ; $66c3: $08 $1f $67
	rst  $38                                         ; $66c6: $ff
	ld   a, a                                        ; $66c7: $7f
	ldh  [$57], a                                    ; $66c8: $e0 $57
	ld   c, b                                        ; $66ca: $48
	ld   [$671f], sp                                 ; $66cb: $08 $1f $67
	ldh  [$7f], a                                    ; $66ce: $e0 $7f
	ld   [hl-], a                                    ; $66d0: $32
	ld   bc, $0848                                   ; $66d1: $01 $48 $08
	rra                                              ; $66d4: $1f
	ld   h, a                                        ; $66d5: $67
	rst  $38                                         ; $66d6: $ff
	ld   a, a                                        ; $66d7: $7f
	adc  l                                           ; $66d8: $8d
	ld   a, a                                        ; $66d9: $7f
	push hl                                          ; $66da: $e5
	inc  a                                           ; $66db: $3c
	rra                                              ; $66dc: $1f
	ld   h, a                                        ; $66dd: $67
	rst  $38                                         ; $66de: $ff
	ld   a, a                                        ; $66df: $7f
	rst  $38                                         ; $66e0: $ff
	ld   c, b                                        ; $66e1: $48
	and  [hl]                                        ; $66e2: $a6
	inc  d                                           ; $66e3: $14
	rra                                              ; $66e4: $1f
	ld   h, a                                        ; $66e5: $67
	jr   jr_01e_674b                                 ; $66e6: $18 $63

	ccf                                              ; $66e8: $3f
	ld   bc, $14a6                                   ; $66e9: $01 $a6 $14
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	rra                                              ; $66f4: $1f
	ld   h, a                                        ; $66f5: $67
	rst  $38                                         ; $66f6: $ff
	ld   a, a                                        ; $66f7: $7f
	ccf                                              ; $66f8: $3f
	ld   [bc], a                                     ; $66f9: $02
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	rst  $38                                         ; $66fc: $ff
	ld   a, a                                        ; $66fd: $7f
	rra                                              ; $66fe: $1f
	inc  bc                                          ; $66ff: $03
	ret  c                                           ; $6700: $d8

	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	rst  $38                                         ; $6704: $ff
	ld   a, a                                        ; $6705: $7f
	and  b                                           ; $6706: $a0
	ld   a, [hl]                                     ; $6707: $7e
	ld   a, a                                        ; $6708: $7f
	ld   h, b                                        ; $6709: $60
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

jr_01e_6734:
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	jr   nz, jr_01e_6773                             ; $673c: $20 $35

	rst  $38                                         ; $673e: $ff
	ld   a, a                                        ; $673f: $7f
	pop  af                                          ; $6740: $f1
	ld   b, a                                        ; $6741: $47
	ldh  [$03], a                                    ; $6742: $e0 $03
	jr   nz, jr_01e_677b                             ; $6744: $20 $35

	rst  $38                                         ; $6746: $ff
	ld   a, a                                        ; $6747: $7f
	rst  $38                                         ; $6748: $ff
	ld   e, [hl]                                     ; $6749: $5e
	rst  $38                                         ; $674a: $ff

jr_01e_674b:
	inc  e                                           ; $674b: $1c
	jr   nz, jr_01e_6783                             ; $674c: $20 $35

	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	jr   nz, jr_01e_678b                             ; $6754: $20 $35

	nop                                              ; $6756: $00
	nop                                              ; $6757: $00
	nop                                              ; $6758: $00
	nop                                              ; $6759: $00
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	jr   nz, jr_01e_6793                             ; $675c: $20 $35

	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	jr   nz, jr_01e_679b                             ; $6764: $20 $35

	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	jr   nz, @+$37                                   ; $676c: $20 $35

	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00

jr_01e_6773:
	nop                                              ; $6773: $00
	jr   nz, @+$37                                   ; $6774: $20 $35

	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	nop                                              ; $677a: $00

jr_01e_677b:
	nop                                              ; $677b: $00
	rst  $38                                         ; $677c: $ff
	ld   a, a                                        ; $677d: $7f
	halt                                             ; $677e: $76
	ld   a, d                                        ; $677f: $7a
	ld   sp, $c646                                   ; $6780: $31 $46 $c6

jr_01e_6783:
	jr   jr_01e_6734                                 ; $6783: $18 $af

	ld   [hl], c                                     ; $6785: $71
	ld   [de], a                                     ; $6786: $12
	ld   [hl], d                                     ; $6787: $72
	halt                                             ; $6788: $76
	ld   a, d                                        ; $6789: $7a
	and  l                                           ; $678a: $a5

jr_01e_678b:
	inc  d                                           ; $678b: $14
	inc  c                                           ; $678c: $0c
	ld   e, l                                        ; $678d: $5d
	xor  a                                           ; $678e: $af
	ld   [hl], c                                     ; $678f: $71
	halt                                             ; $6790: $76
	ld   a, d                                        ; $6791: $7a
	and  l                                           ; $6792: $a5

jr_01e_6793:
	inc  d                                           ; $6793: $14
	add  sp, $4c                                     ; $6794: $e8 $4c
	inc  c                                           ; $6796: $0c
	ld   e, l                                        ; $6797: $5d
	halt                                             ; $6798: $76
	ld   a, d                                        ; $6799: $7a
	and  l                                           ; $679a: $a5

jr_01e_679b:
	inc  d                                           ; $679b: $14
	rst  $38                                         ; $679c: $ff
	ld   a, a                                        ; $679d: $7f
	rst  $38                                         ; $679e: $ff
	ld   a, a                                        ; $679f: $7f
	halt                                             ; $67a0: $76
	ld   a, d                                        ; $67a1: $7a
	add  $18                                         ; $67a2: $c6 $18
	rst  $38                                         ; $67a4: $ff
	ld   a, a                                        ; $67a5: $7f
	rra                                              ; $67a6: $1f
	inc  bc                                          ; $67a7: $03
	halt                                             ; $67a8: $76
	ld   a, d                                        ; $67a9: $7a
	add  $18                                         ; $67aa: $c6 $18
	rst  $38                                         ; $67ac: $ff
	ld   a, a                                        ; $67ad: $7f
	rra                                              ; $67ae: $1f
	inc  bc                                          ; $67af: $03
	ld   [de], a                                     ; $67b0: $12
	ld   [hl], d                                     ; $67b1: $72
	add  $18                                         ; $67b2: $c6 $18
	rst  $38                                         ; $67b4: $ff
	ld   a, a                                        ; $67b5: $7f
	rra                                              ; $67b6: $1f
	inc  bc                                          ; $67b7: $03
	add  sp, $4c                                     ; $67b8: $e8 $4c
	add  $18                                         ; $67ba: $c6 $18
	rst  $38                                         ; $67bc: $ff
	ld   a, a                                        ; $67bd: $7f
	cp   a                                           ; $67be: $bf
	ld   [bc], a                                     ; $67bf: $02
	rst  $38                                         ; $67c0: $ff
	inc  bc                                          ; $67c1: $03
	add  $18                                         ; $67c2: $c6 $18
	rst  $38                                         ; $67c4: $ff
	ld   a, a                                        ; $67c5: $7f
	sub  e                                           ; $67c6: $93
	ld   c, $f5                                      ; $67c7: $0e $f5
	rla                                              ; $67c9: $17
	add  $18                                         ; $67ca: $c6 $18
	rst  $38                                         ; $67cc: $ff
	ld   a, a                                        ; $67cd: $7f
	ld   b, [hl]                                     ; $67ce: $46
	ld   a, [de]                                     ; $67cf: $1a
	jp   z, $c62b                                    ; $67d0: $ca $2b $c6

	jr   jr_01e_67d5                                 ; $67d3: $18 $00

jr_01e_67d5:
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
	add  h                                           ; $67fc: $84
	db   $10                                         ; $67fd: $10
	rst  $38                                         ; $67fe: $ff
	ld   a, a                                        ; $67ff: $7f
	rst  JumpTable                                         ; $6800: $df
	ld   d, $10                                      ; $6801: $16 $10
	ld   d, [hl]                                     ; $6803: $56
	rra                                              ; $6804: $1f
	nop                                              ; $6805: $00
	rst  $38                                         ; $6806: $ff
	ld   a, a                                        ; $6807: $7f
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	db   $10                                         ; $680a: $10
	ld   d, [hl]                                     ; $680b: $56
	rst  $38                                         ; $680c: $ff
	ld   a, a                                        ; $680d: $7f
	add  hl, hl                                      ; $680e: $29
	ld   hl, $3ab0                                   ; $680f: $21 $b0 $3a
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	rst  $38                                         ; $6824: $ff
	ld   a, a                                        ; $6825: $7f
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	nop                                              ; $6829: $00
	nop                                              ; $682a: $00
	nop                                              ; $682b: $00
	rst  $38                                         ; $682c: $ff
	ld   a, a                                        ; $682d: $7f
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	rst  $38                                         ; $6834: $ff
	ld   a, a                                        ; $6835: $7f
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	rst  $38                                         ; $683c: $ff
	ld   a, a                                        ; $683d: $7f
	ld   hl, $fe04                                   ; $683e: $21 $04 $fe
	ld   [bc], a                                     ; $6841: $02
	rst  $38                                         ; $6842: $ff
	ld   a, a                                        ; $6843: $7f
	rst  $38                                         ; $6844: $ff
	ld   a, a                                        ; $6845: $7f
	rra                                              ; $6846: $1f
	nop                                              ; $6847: $00
	ld   e, a                                        ; $6848: $5f
	ld   b, l                                        ; $6849: $45
	ld   hl, $ff04                                   ; $684a: $21 $04 $ff
	ld   a, a                                        ; $684d: $7f
	rst  $38                                         ; $684e: $ff
	ld   a, a                                        ; $684f: $7f
	rst  $38                                         ; $6850: $ff
	ld   a, a                                        ; $6851: $7f
	rst  $38                                         ; $6852: $ff
	ld   a, a                                        ; $6853: $7f
	rst  $38                                         ; $6854: $ff
	ld   a, a                                        ; $6855: $7f
	rst  $38                                         ; $6856: $ff
	ld   a, a                                        ; $6857: $7f
	rst  $38                                         ; $6858: $ff
	ld   a, a                                        ; $6859: $7f
	rst  $38                                         ; $685a: $ff
	ld   a, a                                        ; $685b: $7f
	rst  $38                                         ; $685c: $ff
	ld   a, a                                        ; $685d: $7f
	rst  $38                                         ; $685e: $ff
	ld   a, a                                        ; $685f: $7f
	rst  $38                                         ; $6860: $ff
	ld   a, a                                        ; $6861: $7f
	rst  $38                                         ; $6862: $ff
	ld   a, a                                        ; $6863: $7f
	rst  $38                                         ; $6864: $ff
	ld   a, a                                        ; $6865: $7f
	rst  $38                                         ; $6866: $ff
	ld   a, a                                        ; $6867: $7f
	rst  $38                                         ; $6868: $ff
	ld   a, a                                        ; $6869: $7f
	rst  $38                                         ; $686a: $ff
	ld   a, a                                        ; $686b: $7f
	rst  $38                                         ; $686c: $ff
	ld   a, a                                        ; $686d: $7f
	rst  $38                                         ; $686e: $ff
	ld   a, a                                        ; $686f: $7f
	rst  $38                                         ; $6870: $ff
	ld   a, a                                        ; $6871: $7f
	rst  $38                                         ; $6872: $ff
	ld   a, a                                        ; $6873: $7f
	rst  $38                                         ; $6874: $ff
	ld   a, a                                        ; $6875: $7f
	rst  $38                                         ; $6876: $ff
	ld   a, a                                        ; $6877: $7f
	rst  $38                                         ; $6878: $ff
	ld   a, a                                        ; $6879: $7f
	rst  $38                                         ; $687a: $ff
	ld   a, a                                        ; $687b: $7f
	rst  $38                                         ; $687c: $ff
	ld   a, a                                        ; $687d: $7f
	db   $fc                                         ; $687e: $fc
	ld   [bc], a                                     ; $687f: $02
	or   h                                           ; $6880: $b4
	inc  c                                           ; $6881: $0c
	and  l                                           ; $6882: $a5
	jr   jr_01e_68b6                                 ; $6883: $18 $31

	ld   b, [hl]                                     ; $6885: $46
	or   h                                           ; $6886: $b4
	inc  b                                           ; $6887: $04
	sbc  a                                           ; $6888: $9f
	ld   bc, $0000                                   ; $6889: $01 $00 $00
	rst  $38                                         ; $688c: $ff
	ld   a, a                                        ; $688d: $7f
	or   h                                           ; $688e: $b4
	inc  b                                           ; $688f: $04
	sbc  a                                           ; $6890: $9f
	ld   bc, $0000                                   ; $6891: $01 $00 $00
	rst  $38                                         ; $6894: $ff
	ld   a, a                                        ; $6895: $7f
	ld   e, a                                        ; $6896: $5f
	ld   e, [hl]                                     ; $6897: $5e
	ld   de, $a55a                                   ; $6898: $11 $5a $a5
	jr   @+$01                                       ; $689b: $18 $ff

	ld   a, a                                        ; $689d: $7f
	inc  bc                                          ; $689e: $03
	ld   a, h                                        ; $689f: $7c
	ld   a, a                                        ; $68a0: $7f
	inc  d                                           ; $68a1: $14
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	inc  c                                           ; $68a4: $0c
	ld   e, e                                        ; $68a5: $5b
	ld   h, [hl]                                     ; $68a6: $66
	ld   b, [hl]                                     ; $68a7: $46
	ldh  [c], a                                      ; $68a8: $e2
	ld   sp, $2980                                   ; $68a9: $31 $80 $29
	nop                                              ; $68ac: $00
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	nop                                              ; $68af: $00
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	rst  $38                                         ; $68b4: $ff
	ld   a, a                                        ; $68b5: $7f

jr_01e_68b6:
	or   h                                           ; $68b6: $b4
	inc  b                                           ; $68b7: $04
	sbc  a                                           ; $68b8: $9f
	ld   bc, $1043                                   ; $68b9: $01 $43 $10
	rst  $38                                         ; $68bc: $ff
	ld   e, a                                        ; $68bd: $5f
	rst  $38                                         ; $68be: $ff
	ld   a, a                                        ; $68bf: $7f
	sbc  a                                           ; $68c0: $9f
	ld   bc, $1043                                   ; $68c1: $01 $43 $10
	ld   e, a                                        ; $68c4: $5f
	ld   l, e                                        ; $68c5: $6b
	or   h                                           ; $68c6: $b4
	inc  b                                           ; $68c7: $04
	sbc  a                                           ; $68c8: $9f
	ld   bc, $1043                                   ; $68c9: $01 $43 $10
	rst  $30                                         ; $68cc: $f7
	ld   a, a                                        ; $68cd: $7f
	ld   sp, $9f46                                   ; $68ce: $31 $46 $9f
	ld   bc, $1043                                   ; $68d1: $01 $43 $10
	xor  l                                           ; $68d4: $ad
	ld   e, e                                        ; $68d5: $5b
	rst  $38                                         ; $68d6: $ff
	ld   a, a                                        ; $68d7: $7f
	ld   sp, $4346                                   ; $68d8: $31 $46 $43
	stop                                             ; $68db: $10 $00
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	ldh  [$03], a                                    ; $68e4: $e0 $03
	rst  $38                                         ; $68e6: $ff
	ld   a, a                                        ; $68e7: $7f
	add  $30                                         ; $68e8: $c6 $30
	jr   jr_01e_68ec                                 ; $68ea: $18 $00

jr_01e_68ec:
	ldh  [$03], a                                    ; $68ec: $e0 $03
	rst  $38                                         ; $68ee: $ff
	ld   a, a                                        ; $68ef: $7f
	rst  $38                                         ; $68f0: $ff
	ld   [bc], a                                     ; $68f1: $02
	jr   jr_01e_68f4                                 ; $68f2: $18 $00

jr_01e_68f4:
	ldh  [$03], a                                    ; $68f4: $e0 $03
	rst  $38                                         ; $68f6: $ff
	ld   a, a                                        ; $68f7: $7f
	db   $ec                                         ; $68f8: $ec
	ld   h, c                                        ; $68f9: $61
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00

jr_01e_68fc:
	rst  JumpTable                                         ; $68fc: $df
	add  hl, sp                                      ; $68fd: $39
	db   $fc                                         ; $68fe: $fc
	ld   [bc], a                                     ; $68ff: $02
	or   h                                           ; $6900: $b4
	inc  c                                           ; $6901: $0c
	and  l                                           ; $6902: $a5
	jr   jr_01e_6936                                 ; $6903: $18 $31

	ld   b, [hl]                                     ; $6905: $46
	or   h                                           ; $6906: $b4
	inc  b                                           ; $6907: $04
	sbc  a                                           ; $6908: $9f
	ld   bc, $0000                                   ; $6909: $01 $00 $00
	rst  JumpTable                                         ; $690c: $df
	add  hl, sp                                      ; $690d: $39
	or   h                                           ; $690e: $b4
	inc  b                                           ; $690f: $04
	sbc  a                                           ; $6910: $9f
	ld   bc, $0000                                   ; $6911: $01 $00 $00
	rst  JumpTable                                         ; $6914: $df
	add  hl, sp                                      ; $6915: $39
	ld   e, a                                        ; $6916: $5f
	ld   e, [hl]                                     ; $6917: $5e
	ld   de, $a55a                                   ; $6918: $11 $5a $a5
	jr   jr_01e_68fc                                 ; $691b: $18 $df

	add  hl, sp                                      ; $691d: $39
	inc  bc                                          ; $691e: $03
	ld   a, h                                        ; $691f: $7c
	ld   a, a                                        ; $6920: $7f
	inc  d                                           ; $6921: $14
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	db   $fc                                         ; $6924: $fc
	ld   b, c                                        ; $6925: $41
	ld   d, [hl]                                     ; $6926: $56
	dec  l                                           ; $6927: $2d
	jp   nc, Jump_01e_7018                           ; $6928: $d2 $18 $70

	stop                                             ; $692b: $10 $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	rst  $38                                         ; $6934: $ff
	ld   a, a                                        ; $6935: $7f

jr_01e_6936:
	or   h                                           ; $6936: $b4
	inc  b                                           ; $6937: $04
	sbc  a                                           ; $6938: $9f
	ld   bc, $1043                                   ; $6939: $01 $43 $10
	rst  $38                                         ; $693c: $ff
	ld   e, a                                        ; $693d: $5f
	rst  $38                                         ; $693e: $ff
	ld   a, a                                        ; $693f: $7f
	sbc  a                                           ; $6940: $9f
	ld   bc, $1043                                   ; $6941: $01 $43 $10
	ld   e, a                                        ; $6944: $5f
	ld   l, e                                        ; $6945: $6b
	or   h                                           ; $6946: $b4
	inc  b                                           ; $6947: $04
	sbc  a                                           ; $6948: $9f
	ld   bc, $1043                                   ; $6949: $01 $43 $10
	rst  $30                                         ; $694c: $f7
	ld   a, a                                        ; $694d: $7f
	ld   sp, $9f46                                   ; $694e: $31 $46 $9f
	ld   bc, $1043                                   ; $6951: $01 $43 $10
	xor  l                                           ; $6954: $ad
	ld   e, e                                        ; $6955: $5b
	rst  $38                                         ; $6956: $ff
	ld   a, a                                        ; $6957: $7f
	ld   sp, $4346                                   ; $6958: $31 $46 $43
	stop                                             ; $695b: $10 $00
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	ldh  [$03], a                                    ; $6964: $e0 $03
	rst  $38                                         ; $6966: $ff
	ld   a, a                                        ; $6967: $7f
	add  $30                                         ; $6968: $c6 $30
	jr   jr_01e_696c                                 ; $696a: $18 $00

jr_01e_696c:
	ldh  [$03], a                                    ; $696c: $e0 $03
	rst  $38                                         ; $696e: $ff
	ld   a, a                                        ; $696f: $7f
	rst  $38                                         ; $6970: $ff
	ld   [bc], a                                     ; $6971: $02
	jr   jr_01e_6974                                 ; $6972: $18 $00

jr_01e_6974:
	ldh  [$03], a                                    ; $6974: $e0 $03
	rst  $38                                         ; $6976: $ff
	ld   a, a                                        ; $6977: $7f
	db   $ec                                         ; $6978: $ec
	ld   h, c                                        ; $6979: $61
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	rst  $38                                         ; $697c: $ff
	ld   a, a                                        ; $697d: $7f
	db   $fc                                         ; $697e: $fc
	ld   [bc], a                                     ; $697f: $02
	or   h                                           ; $6980: $b4
	inc  c                                           ; $6981: $0c
	and  l                                           ; $6982: $a5
	jr   jr_01e_69b6                                 ; $6983: $18 $31

	ld   b, [hl]                                     ; $6985: $46
	cpl                                              ; $6986: $2f
	ld   bc, $2679                                   ; $6987: $01 $79 $26
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	rst  $38                                         ; $698c: $ff
	ld   a, a                                        ; $698d: $7f
	cpl                                              ; $698e: $2f
	ld   bc, $2679                                   ; $698f: $01 $79 $26
	nop                                              ; $6992: $00
	nop                                              ; $6993: $00
	rst  $38                                         ; $6994: $ff
	ld   a, a                                        ; $6995: $7f
	ld   e, a                                        ; $6996: $5f
	ld   e, [hl]                                     ; $6997: $5e
	ld   de, $a55a                                   ; $6998: $11 $5a $a5
	jr   @+$01                                       ; $699b: $18 $ff

	ld   a, a                                        ; $699d: $7f
	inc  bc                                          ; $699e: $03
	ld   a, h                                        ; $699f: $7c
	ld   a, a                                        ; $69a0: $7f
	inc  d                                           ; $69a1: $14
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	rst  $38                                         ; $69a4: $ff
	ld   a, a                                        ; $69a5: $7f
	ld   d, l                                        ; $69a6: $55
	ld   [hl], $d2                                   ; $69a7: $36 $d2
	ld   hl, $1d2b                                   ; $69a9: $21 $2b $1d
	rst  $38                                         ; $69ac: $ff
	ld   a, a                                        ; $69ad: $7f
	ld   d, l                                        ; $69ae: $55
	ld   [hl], $f1                                   ; $69af: $36 $f1
	ld   [hl], d                                     ; $69b1: $72
	dec  hl                                          ; $69b2: $2b
	dec  e                                           ; $69b3: $1d
	rst  $38                                         ; $69b4: $ff
	ld   a, a                                        ; $69b5: $7f

jr_01e_69b6:
	cpl                                              ; $69b6: $2f
	ld   bc, $2679                                   ; $69b7: $01 $79 $26
	ld   b, e                                        ; $69ba: $43
	db   $10                                         ; $69bb: $10
	rst  $38                                         ; $69bc: $ff
	ld   e, a                                        ; $69bd: $5f
	rst  $38                                         ; $69be: $ff
	ld   a, a                                        ; $69bf: $7f
	ld   a, c                                        ; $69c0: $79
	ld   h, $43                                      ; $69c1: $26 $43
	db   $10                                         ; $69c3: $10
	ld   e, a                                        ; $69c4: $5f
	ld   l, e                                        ; $69c5: $6b
	cpl                                              ; $69c6: $2f
	ld   bc, $2679                                   ; $69c7: $01 $79 $26
	ld   b, e                                        ; $69ca: $43
	db   $10                                         ; $69cb: $10
	rst  $30                                         ; $69cc: $f7
	ld   a, a                                        ; $69cd: $7f
	rst  $38                                         ; $69ce: $ff
	ld   a, a                                        ; $69cf: $7f
	ldh  [$67], a                                    ; $69d0: $e0 $67
	ld   b, e                                        ; $69d2: $43
	db   $10                                         ; $69d3: $10
	xor  l                                           ; $69d4: $ad
	ld   e, e                                        ; $69d5: $5b
	ld   sp, $1f46                                   ; $69d6: $31 $46 $1f
	nop                                              ; $69d9: $00
	ld   b, e                                        ; $69da: $43
	db   $10                                         ; $69db: $10
	cp   c                                           ; $69dc: $b9
	halt                                             ; $69dd: $76
	rst  $38                                         ; $69de: $ff
	ld   a, a                                        ; $69df: $7f
	cpl                                              ; $69e0: $2f
	ld   bc, $1043                                   ; $69e1: $01 $43 $10
	ldh  [$03], a                                    ; $69e4: $e0 $03
	rst  $38                                         ; $69e6: $ff
	ld   a, a                                        ; $69e7: $7f
	add  $30                                         ; $69e8: $c6 $30
	jr   jr_01e_69ec                                 ; $69ea: $18 $00

jr_01e_69ec:
	ldh  [$03], a                                    ; $69ec: $e0 $03
	rst  $38                                         ; $69ee: $ff
	ld   a, a                                        ; $69ef: $7f
	rst  $38                                         ; $69f0: $ff
	ld   [bc], a                                     ; $69f1: $02
	jr   jr_01e_69f4                                 ; $69f2: $18 $00

jr_01e_69f4:
	ldh  [$03], a                                    ; $69f4: $e0 $03
	rst  $38                                         ; $69f6: $ff
	ld   a, a                                        ; $69f7: $7f
	db   $ec                                         ; $69f8: $ec
	ld   h, c                                        ; $69f9: $61
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00

jr_01e_69fc:
	rst  JumpTable                                         ; $69fc: $df
	add  hl, sp                                      ; $69fd: $39
	db   $fc                                         ; $69fe: $fc
	ld   [bc], a                                     ; $69ff: $02
	or   h                                           ; $6a00: $b4
	inc  c                                           ; $6a01: $0c
	and  l                                           ; $6a02: $a5
	jr   jr_01e_6a36                                 ; $6a03: $18 $31

	ld   b, [hl]                                     ; $6a05: $46
	cpl                                              ; $6a06: $2f
	ld   bc, $2679                                   ; $6a07: $01 $79 $26
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	rst  JumpTable                                         ; $6a0c: $df
	add  hl, sp                                      ; $6a0d: $39
	cpl                                              ; $6a0e: $2f
	ld   bc, $2679                                   ; $6a0f: $01 $79 $26
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	rst  JumpTable                                         ; $6a14: $df
	add  hl, sp                                      ; $6a15: $39
	ld   e, a                                        ; $6a16: $5f
	ld   e, [hl]                                     ; $6a17: $5e
	ld   de, $a55a                                   ; $6a18: $11 $5a $a5
	jr   jr_01e_69fc                                 ; $6a1b: $18 $df

	add  hl, sp                                      ; $6a1d: $39
	inc  bc                                          ; $6a1e: $03
	ld   a, h                                        ; $6a1f: $7c
	ld   a, a                                        ; $6a20: $7f
	inc  d                                           ; $6a21: $14
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	rst  JumpTable                                         ; $6a24: $df
	add  hl, sp                                      ; $6a25: $39
	ld   e, e                                        ; $6a26: $5b
	ld   hl, $08d9                                   ; $6a27: $21 $d9 $08
	ld   [hl], b                                     ; $6a2a: $70
	ld   [$39df], sp                                 ; $6a2b: $08 $df $39
	ld   e, e                                        ; $6a2e: $5b

jr_01e_6a2f:
	ld   hl, $4534                                   ; $6a2f: $21 $34 $45
	ld   [hl], b                                     ; $6a32: $70
	ld   [$7fff], sp                                 ; $6a33: $08 $ff $7f

jr_01e_6a36:
	cpl                                              ; $6a36: $2f
	ld   bc, $2679                                   ; $6a37: $01 $79 $26
	ld   b, e                                        ; $6a3a: $43
	db   $10                                         ; $6a3b: $10
	rst  $38                                         ; $6a3c: $ff
	ld   e, a                                        ; $6a3d: $5f
	rst  $38                                         ; $6a3e: $ff
	ld   a, a                                        ; $6a3f: $7f
	ld   a, c                                        ; $6a40: $79
	ld   h, $43                                      ; $6a41: $26 $43
	db   $10                                         ; $6a43: $10
	ld   e, a                                        ; $6a44: $5f
	ld   l, e                                        ; $6a45: $6b
	cpl                                              ; $6a46: $2f
	ld   bc, $2679                                   ; $6a47: $01 $79 $26
	ld   b, e                                        ; $6a4a: $43
	db   $10                                         ; $6a4b: $10
	rst  $30                                         ; $6a4c: $f7
	ld   a, a                                        ; $6a4d: $7f
	rst  $38                                         ; $6a4e: $ff
	ld   a, a                                        ; $6a4f: $7f
	ldh  [$67], a                                    ; $6a50: $e0 $67
	ld   b, e                                        ; $6a52: $43
	db   $10                                         ; $6a53: $10
	xor  l                                           ; $6a54: $ad
	ld   e, e                                        ; $6a55: $5b
	ld   sp, $1f46                                   ; $6a56: $31 $46 $1f
	nop                                              ; $6a59: $00
	ld   b, e                                        ; $6a5a: $43
	db   $10                                         ; $6a5b: $10
	cp   c                                           ; $6a5c: $b9
	halt                                             ; $6a5d: $76
	rst  $38                                         ; $6a5e: $ff
	ld   a, a                                        ; $6a5f: $7f
	cpl                                              ; $6a60: $2f
	ld   bc, $1043                                   ; $6a61: $01 $43 $10
	ldh  [$03], a                                    ; $6a64: $e0 $03
	rst  $38                                         ; $6a66: $ff
	ld   a, a                                        ; $6a67: $7f
	add  $30                                         ; $6a68: $c6 $30
	jr   jr_01e_6a6c                                 ; $6a6a: $18 $00

jr_01e_6a6c:
	ldh  [$03], a                                    ; $6a6c: $e0 $03
	rst  $38                                         ; $6a6e: $ff
	ld   a, a                                        ; $6a6f: $7f
	rst  $38                                         ; $6a70: $ff
	ld   [bc], a                                     ; $6a71: $02
	jr   jr_01e_6a74                                 ; $6a72: $18 $00

jr_01e_6a74:
	ldh  [$03], a                                    ; $6a74: $e0 $03
	rst  $38                                         ; $6a76: $ff
	ld   a, a                                        ; $6a77: $7f
	db   $ec                                         ; $6a78: $ec
	ld   h, c                                        ; $6a79: $61
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	ld   [hl], e                                     ; $6a7c: $73
	ld   d, [hl]                                     ; $6a7d: $56
	ld   h, $3d                                      ; $6a7e: $26 $3d
	rra                                              ; $6a80: $1f
	nop                                              ; $6a81: $00
	ld   b, d                                        ; $6a82: $42
	inc  d                                           ; $6a83: $14
	add  l                                           ; $6a84: $85
	add  hl, de                                      ; $6a85: $19
	add  l                                           ; $6a86: $85
	add  hl, de                                      ; $6a87: $19
	add  l                                           ; $6a88: $85
	add  hl, de                                      ; $6a89: $19
	add  l                                           ; $6a8a: $85
	add  hl, de                                      ; $6a8b: $19
	di                                               ; $6a8c: $f3
	dec  sp                                          ; $6a8d: $3b
	di                                               ; $6a8e: $f3
	dec  sp                                          ; $6a8f: $3b
	di                                               ; $6a90: $f3
	dec  sp                                          ; $6a91: $3b
	di                                               ; $6a92: $f3
	dec  sp                                          ; $6a93: $3b
	ld   hl, $e210                                   ; $6a94: $21 $10 $e2
	add  hl, bc                                      ; $6a97: $09
	rst  $38                                         ; $6a98: $ff
	ld   a, a                                        ; $6a99: $7f
	ld   a, a                                        ; $6a9a: $7f
	ld   [bc], a                                     ; $6a9b: $02
	cp   b                                           ; $6a9c: $b8
	ld   b, b                                        ; $6a9d: $40
	ld   d, d                                        ; $6a9e: $52
	inc  l                                           ; $6a9f: $2c
	ld   c, e                                        ; $6aa0: $4b
	jr   nz, jr_01e_6ac9                             ; $6aa1: $20 $26

	jr   @+$12                                       ; $6aa3: $18 $10

	ld   c, d                                        ; $6aa5: $4a
	ld   l, e                                        ; $6aa6: $6b
	dec  [hl]                                        ; $6aa7: $35
	rst  $20                                         ; $6aa8: $e7
	jr   z, jr_01e_6a2f                              ; $6aa9: $28 $84

	inc  e                                           ; $6aab: $1c
	ld   [hl], e                                     ; $6aac: $73
	ld   d, [hl]                                     ; $6aad: $56
	or   h                                           ; $6aae: $b4
	ld   d, c                                        ; $6aaf: $51
	and  a                                           ; $6ab0: $a7
	inc  h                                           ; $6ab1: $24
	ld   b, d                                        ; $6ab2: $42
	ld   [$1021], sp                                 ; $6ab3: $08 $21 $10
	or   h                                           ; $6ab6: $b4
	ld   d, c                                        ; $6ab7: $51
	and  a                                           ; $6ab8: $a7
	inc  h                                           ; $6ab9: $24
	ld   b, d                                        ; $6aba: $42
	ld   [$7fff], sp                                 ; $6abb: $08 $ff $7f
	ld   a, a                                        ; $6abe: $7f
	nop                                              ; $6abf: $00
	ld   [hl], c                                     ; $6ac0: $71
	nop                                              ; $6ac1: $00
	add  l                                           ; $6ac2: $85
	inc  d                                           ; $6ac3: $14
	rst  $38                                         ; $6ac4: $ff
	ld   a, a                                        ; $6ac5: $7f
	ld   e, b                                        ; $6ac6: $58
	add  hl, hl                                      ; $6ac7: $29
	ld   a, d                                        ; $6ac8: $7a

jr_01e_6ac9:
	ld   [bc], a                                     ; $6ac9: $02
	sbc  a                                           ; $6aca: $9f
	ld   e, e                                        ; $6acb: $5b
	rst  $38                                         ; $6acc: $ff
	ld   a, a                                        ; $6acd: $7f
	sub  h                                           ; $6ace: $94
	ld   d, d                                        ; $6acf: $52
	adc  h                                           ; $6ad0: $8c
	add  hl, sp                                      ; $6ad1: $39
	add  l                                           ; $6ad2: $85
	inc  d                                           ; $6ad3: $14
	rst  $38                                         ; $6ad4: $ff
	ld   a, a                                        ; $6ad5: $7f
	rla                                              ; $6ad6: $17
	ld   e, [hl]                                     ; $6ad7: $5e
	and  a                                           ; $6ad8: $a7
	inc  h                                           ; $6ad9: $24
	add  l                                           ; $6ada: $85
	inc  d                                           ; $6adb: $14
	add  l                                           ; $6adc: $85
	add  hl, de                                      ; $6add: $19
	add  h                                           ; $6ade: $84
	jr   z, @+$01                                    ; $6adf: $28 $ff

	ld   a, a                                        ; $6ae1: $7f
	ld   a, a                                        ; $6ae2: $7f
	ld   [bc], a                                     ; $6ae3: $02
	add  l                                           ; $6ae4: $85
	add  hl, de                                      ; $6ae5: $19
	add  l                                           ; $6ae6: $85
	add  hl, de                                      ; $6ae7: $19
	add  l                                           ; $6ae8: $85
	add  hl, de                                      ; $6ae9: $19
	add  l                                           ; $6aea: $85
	add  hl, de                                      ; $6aeb: $19
	add  l                                           ; $6aec: $85
	add  hl, de                                      ; $6aed: $19
	add  l                                           ; $6aee: $85
	add  hl, de                                      ; $6aef: $19
	add  l                                           ; $6af0: $85
	add  hl, de                                      ; $6af1: $19
	add  l                                           ; $6af2: $85
	add  hl, de                                      ; $6af3: $19
	add  l                                           ; $6af4: $85
	add  hl, de                                      ; $6af5: $19
	add  l                                           ; $6af6: $85
	add  hl, de                                      ; $6af7: $19
	add  l                                           ; $6af8: $85
	add  hl, de                                      ; $6af9: $19
	add  l                                           ; $6afa: $85
	add  hl, de                                      ; $6afb: $19
	ld   de, $9f50                                   ; $6afc: $11 $50 $9f
	ld   b, a                                        ; $6aff: $47
	ld   a, $0a                                      ; $6b00: $3e $0a
	add  h                                           ; $6b02: $84
	inc  c                                           ; $6b03: $0c
	ld   de, $ff50                                   ; $6b04: $11 $50 $ff
	ld   a, a                                        ; $6b07: $7f
	nop                                              ; $6b08: $00
	dec  de                                          ; $6b09: $1b
	add  h                                           ; $6b0a: $84
	inc  c                                           ; $6b0b: $0c
	sbc  a                                           ; $6b0c: $9f
	ld   b, a                                        ; $6b0d: $47
	ld   a, $0a                                      ; $6b0e: $3e $0a
	nop                                              ; $6b10: $00
	dec  de                                          ; $6b11: $1b
	add  h                                           ; $6b12: $84
	inc  c                                           ; $6b13: $0c
	rst  $38                                         ; $6b14: $ff
	ld   a, a                                        ; $6b15: $7f
	nop                                              ; $6b16: $00
	dec  de                                          ; $6b17: $1b
	ld   [$8421], sp                                 ; $6b18: $08 $21 $84
	inc  c                                           ; $6b1b: $0c
	ld   de, $ff50                                   ; $6b1c: $11 $50 $ff
	ld   a, a                                        ; $6b1f: $7f
	rst  $28                                         ; $6b20: $ef
	dec  a                                           ; $6b21: $3d
	add  h                                           ; $6b22: $84
	inc  c                                           ; $6b23: $0c
	rst  $38                                         ; $6b24: $ff
	ld   a, a                                        ; $6b25: $7f
	rst  $28                                         ; $6b26: $ef
	dec  a                                           ; $6b27: $3d
	ld   [$8421], sp                                 ; $6b28: $08 $21 $84
	inc  c                                           ; $6b2b: $0c
	rst  $38                                         ; $6b2c: $ff
	ld   a, a                                        ; $6b2d: $7f
	rst  $28                                         ; $6b2e: $ef
	dec  a                                           ; $6b2f: $3d
	ld   [$e021], sp                                 ; $6b30: $08 $21 $e0
	ld   a, a                                        ; $6b33: $7f
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	rst  $38                                         ; $6b3c: $ff
	ld   a, a                                        ; $6b3d: $7f
	rst  $28                                         ; $6b3e: $ef
	dec  a                                           ; $6b3f: $3d
	ld   [$ff21], sp                                 ; $6b40: $08 $21 $ff
	ld   a, a                                        ; $6b43: $7f
	rst  $38                                         ; $6b44: $ff
	ld   a, a                                        ; $6b45: $7f
	dec  de                                          ; $6b46: $1b
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	dec  de                                          ; $6b49: $1b
	add  h                                           ; $6b4a: $84
	inc  c                                           ; $6b4b: $0c
	rst  $38                                         ; $6b4c: $ff
	ld   a, a                                        ; $6b4d: $7f
	rst  $38                                         ; $6b4e: $ff
	ld   a, a                                        ; $6b4f: $7f
	ld   l, a                                        ; $6b50: $6f
	ld   [$7f32], sp                                 ; $6b51: $08 $32 $7f
	rst  $38                                         ; $6b54: $ff
	ld   a, a                                        ; $6b55: $7f
	rst  $38                                         ; $6b56: $ff
	ld   a, a                                        ; $6b57: $7f
	nop                                              ; $6b58: $00
	dec  de                                          ; $6b59: $1b
	ld   [hl-], a                                    ; $6b5a: $32
	ld   a, a                                        ; $6b5b: $7f
	rst  $38                                         ; $6b5c: $ff
	ld   a, a                                        ; $6b5d: $7f
	rst  $38                                         ; $6b5e: $ff
	inc  bc                                          ; $6b5f: $03
	rst  $38                                         ; $6b60: $ff
	ld   a, a                                        ; $6b61: $7f
	add  h                                           ; $6b62: $84
	inc  c                                           ; $6b63: $0c
	rst  $38                                         ; $6b64: $ff
	ld   a, a                                        ; $6b65: $7f
	rst  $28                                         ; $6b66: $ef
	dec  a                                           ; $6b67: $3d
	ld   [$e021], sp                                 ; $6b68: $08 $21 $e0
	ld   a, a                                        ; $6b6b: $7f
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	nop                                              ; $6b77: $00
	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	nop                                              ; $6b7a: $00
	nop                                              ; $6b7b: $00
	pop  af                                          ; $6b7c: $f1
	rrca                                             ; $6b7d: $0f
	rst  $38                                         ; $6b7e: $ff
	ld   a, a                                        ; $6b7f: $7f
	ld   l, [hl]                                     ; $6b80: $6e
	ld   a, l                                        ; $6b81: $7d
	ld   b, d                                        ; $6b82: $42
	db   $10                                         ; $6b83: $10
	rst  $20                                         ; $6b84: $e7
	ld   d, e                                        ; $6b85: $53
	rst  $38                                         ; $6b86: $ff
	ld   a, a                                        ; $6b87: $7f
	ld   l, [hl]                                     ; $6b88: $6e
	ld   a, l                                        ; $6b89: $7d
	ld   b, d                                        ; $6b8a: $42
	db   $10                                         ; $6b8b: $10
	rst  $20                                         ; $6b8c: $e7
	ld   d, e                                        ; $6b8d: $53
	rst  $38                                         ; $6b8e: $ff
	ld   a, a                                        ; $6b8f: $7f
	nop                                              ; $6b90: $00
	ld   l, $42                                      ; $6b91: $2e $42
	db   $10                                         ; $6b93: $10
	rst  $20                                         ; $6b94: $e7
	ld   d, e                                        ; $6b95: $53
	pop  af                                          ; $6b96: $f1
	rrca                                             ; $6b97: $0f
	nop                                              ; $6b98: $00
	ld   l, $42                                      ; $6b99: $2e $42
	db   $10                                         ; $6b9b: $10
	pop  af                                          ; $6b9c: $f1
	rrca                                             ; $6b9d: $0f
	rst  JumpTable                                         ; $6b9e: $df
	inc  bc                                          ; $6b9f: $03
	inc  a                                           ; $6ba0: $3c
	dec  c                                           ; $6ba1: $0d
	ld   b, d                                        ; $6ba2: $42
	db   $10                                         ; $6ba3: $10
	pop  af                                          ; $6ba4: $f1
	rrca                                             ; $6ba5: $0f
	rra                                              ; $6ba6: $1f
	nop                                              ; $6ba7: $00
	rst  $38                                         ; $6ba8: $ff
	ld   [bc], a                                     ; $6ba9: $02
	ld   h, e                                        ; $6baa: $63
	ld   a, h                                        ; $6bab: $7c
	rst  $38                                         ; $6bac: $ff
	ld   a, a                                        ; $6bad: $7f
	pop  af                                          ; $6bae: $f1
	rrca                                             ; $6baf: $0f
	rra                                              ; $6bb0: $1f
	rla                                              ; $6bb1: $17
	ld   b, d                                        ; $6bb2: $42
	db   $10                                         ; $6bb3: $10
	pop  af                                          ; $6bb4: $f1
	rrca                                             ; $6bb5: $0f
	ld   e, a                                        ; $6bb6: $5f
	ld   b, e                                        ; $6bb7: $43
	sub  a                                           ; $6bb8: $97
	nop                                              ; $6bb9: $00
	ld   b, d                                        ; $6bba: $42
	stop                                             ; $6bbb: $10 $00
	nop                                              ; $6bbd: $00
	rst  $38                                         ; $6bbe: $ff
	ld   h, h                                        ; $6bbf: $64
	ld   d, e                                        ; $6bc0: $53
	inc  l                                           ; $6bc1: $2c
	ld   b, h                                        ; $6bc2: $44
	ld   [hl-], a                                    ; $6bc3: $32
	nop                                              ; $6bc4: $00
	nop                                              ; $6bc5: $00
	rst  $38                                         ; $6bc6: $ff
	ld   a, a                                        ; $6bc7: $7f
	ldh  [$7d], a                                    ; $6bc8: $e0 $7d
	db   $fd                                         ; $6bca: $fd
	dec  e                                           ; $6bcb: $1d
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	rst  JumpTable                                         ; $6bce: $df
	inc  bc                                          ; $6bcf: $03
	rra                                              ; $6bd0: $1f
	ccf                                              ; $6bd1: $3f
	db   $fd                                         ; $6bd2: $fd
	dec  e                                           ; $6bd3: $1d
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	rra                                              ; $6bd6: $1f
	ld   [$02ff], sp                                 ; $6bd7: $08 $ff $02
	nop                                              ; $6bda: $00
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	nop                                              ; $6be2: $00
	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	nop                                              ; $6be9: $00
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	nop                                              ; $6bf1: $00
	nop                                              ; $6bf2: $00
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	nop                                              ; $6bf6: $00
	nop                                              ; $6bf7: $00
	nop                                              ; $6bf8: $00
	nop                                              ; $6bf9: $00
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	rst  $38                                         ; $6bfc: $ff
	ld   a, a                                        ; $6bfd: $7f
	ld   a, a                                        ; $6bfe: $7f
	ld   [de], a                                     ; $6bff: $12
	dec  b                                           ; $6c00: $05
	add  hl, hl                                      ; $6c01: $29
	ld   b, e                                        ; $6c02: $43
	db   $10                                         ; $6c03: $10
	rst  $38                                         ; $6c04: $ff
	ld   a, a                                        ; $6c05: $7f
	ld   e, a                                        ; $6c06: $5f
	nop                                              ; $6c07: $00
	dec  b                                           ; $6c08: $05
	add  hl, hl                                      ; $6c09: $29
	ld   b, e                                        ; $6c0a: $43
	db   $10                                         ; $6c0b: $10
	rst  $38                                         ; $6c0c: $ff
	ld   a, a                                        ; $6c0d: $7f
	dec  de                                          ; $6c0e: $1b
	ld   b, c                                        ; $6c0f: $41
	rst  JumpTable                                         ; $6c10: $df
	ld   e, l                                        ; $6c11: $5d
	ld   b, e                                        ; $6c12: $43
	db   $10                                         ; $6c13: $10
	dec  de                                          ; $6c14: $1b
	ld   b, c                                        ; $6c15: $41
	sub  c                                           ; $6c16: $91
	ld   d, h                                        ; $6c17: $54
	rst  JumpTable                                         ; $6c18: $df
	ld   e, l                                        ; $6c19: $5d
	ld   b, e                                        ; $6c1a: $43
	db   $10                                         ; $6c1b: $10
	rst  $38                                         ; $6c1c: $ff
	ld   a, a                                        ; $6c1d: $7f
	adc  d                                           ; $6c1e: $8a
	jr   z, jr_01e_6c26                              ; $6c1f: $28 $05

	add  hl, hl                                      ; $6c21: $29
	ld   b, e                                        ; $6c22: $43
	db   $10                                         ; $6c23: $10
	rst  $38                                         ; $6c24: $ff
	ld   a, a                                        ; $6c25: $7f

jr_01e_6c26:
	ld   e, a                                        ; $6c26: $5f
	nop                                              ; $6c27: $00
	adc  d                                           ; $6c28: $8a
	jr   z, jr_01e_6c6e                              ; $6c29: $28 $43

	db   $10                                         ; $6c2b: $10
	rst  $38                                         ; $6c2c: $ff
	ld   a, a                                        ; $6c2d: $7f
	ld   l, a                                        ; $6c2e: $6f
	ld   a, a                                        ; $6c2f: $7f
	add  hl, hl                                      ; $6c30: $29
	ld   [hl], l                                     ; $6c31: $75
	ld   b, e                                        ; $6c32: $43
	db   $10                                         ; $6c33: $10
	rst  $38                                         ; $6c34: $ff
	ld   a, a                                        ; $6c35: $7f
	ld   l, a                                        ; $6c36: $6f
	ld   a, a                                        ; $6c37: $7f
	rst  $38                                         ; $6c38: $ff
	dec  l                                           ; $6c39: $2d
	ld   b, e                                        ; $6c3a: $43
	db   $10                                         ; $6c3b: $10
	rst  $38                                         ; $6c3c: $ff
	ld   e, a                                        ; $6c3d: $5f
	ld   a, a                                        ; $6c3e: $7f
	ld   [de], a                                     ; $6c3f: $12
	dec  b                                           ; $6c40: $05
	add  hl, hl                                      ; $6c41: $29
	ld   b, e                                        ; $6c42: $43
	db   $10                                         ; $6c43: $10
	ld   e, a                                        ; $6c44: $5f
	ld   l, e                                        ; $6c45: $6b
	ld   e, a                                        ; $6c46: $5f
	nop                                              ; $6c47: $00
	dec  b                                           ; $6c48: $05
	add  hl, hl                                      ; $6c49: $29
	ld   b, e                                        ; $6c4a: $43
	db   $10                                         ; $6c4b: $10
	cp   c                                           ; $6c4c: $b9
	halt                                             ; $6c4d: $76
	ld   e, a                                        ; $6c4e: $5f
	nop                                              ; $6c4f: $00
	rst  JumpTable                                         ; $6c50: $df
	ld   e, l                                        ; $6c51: $5d
	ld   b, e                                        ; $6c52: $43
	db   $10                                         ; $6c53: $10
	xor  l                                           ; $6c54: $ad
	ld   e, e                                        ; $6c55: $5b
	sub  c                                           ; $6c56: $91
	ld   d, h                                        ; $6c57: $54
	rst  JumpTable                                         ; $6c58: $df
	ld   e, l                                        ; $6c59: $5d
	ld   b, e                                        ; $6c5a: $43
	db   $10                                         ; $6c5b: $10
	jr   jr_01e_6cc1                                 ; $6c5c: $18 $63

	sub  c                                           ; $6c5e: $91
	ld   d, h                                        ; $6c5f: $54
	ld   e, a                                        ; $6c60: $5f
	nop                                              ; $6c61: $00
	ld   b, e                                        ; $6c62: $43
	db   $10                                         ; $6c63: $10
	ldh  [$03], a                                    ; $6c64: $e0 $03
	rst  JumpTable                                         ; $6c66: $df
	ld   e, l                                        ; $6c67: $5d
	dec  b                                           ; $6c68: $05
	add  hl, hl                                      ; $6c69: $29
	ld   b, e                                        ; $6c6a: $43
	db   $10                                         ; $6c6b: $10
	rst  $38                                         ; $6c6c: $ff
	ld   a, a                                        ; $6c6d: $7f

jr_01e_6c6e:
	inc  e                                           ; $6c6e: $1c
	inc  bc                                          ; $6c6f: $03
	jr   nz, jr_01e_6c80                             ; $6c70: $20 $0e

	ld   c, e                                        ; $6c72: $4b
	stop                                             ; $6c73: $10 $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	rst  $38                                         ; $6c7c: $ff
	ld   a, a                                        ; $6c7d: $7f
	ld   e, a                                        ; $6c7e: $5f
	ld   [de], a                                     ; $6c7f: $12

jr_01e_6c80:
	ld   [de], a                                     ; $6c80: $12
	nop                                              ; $6c81: $00
	ld   [bc], a                                     ; $6c82: $02
	nop                                              ; $6c83: $00
	rst  $38                                         ; $6c84: $ff
	ld   a, a                                        ; $6c85: $7f
	sbc  a                                           ; $6c86: $9f
	daa                                              ; $6c87: $27
	ret  z                                           ; $6c88: $c8

	nop                                              ; $6c89: $00
	inc  bc                                          ; $6c8a: $03
	nop                                              ; $6c8b: $00
	sbc  a                                           ; $6c8c: $9f
	daa                                              ; $6c8d: $27
	ld   e, a                                        ; $6c8e: $5f
	ld   [de], a                                     ; $6c8f: $12
	ret  z                                           ; $6c90: $c8

	nop                                              ; $6c91: $00
	inc  bc                                          ; $6c92: $03
	nop                                              ; $6c93: $00
	rst  $38                                         ; $6c94: $ff
	ld   a, a                                        ; $6c95: $7f
	ld   e, a                                        ; $6c96: $5f
	ld   [de], a                                     ; $6c97: $12
	di                                               ; $6c98: $f3
	nop                                              ; $6c99: $00
	inc  bc                                          ; $6c9a: $03
	nop                                              ; $6c9b: $00
	rst  $38                                         ; $6c9c: $ff
	ld   a, a                                        ; $6c9d: $7f
	di                                               ; $6c9e: $f3
	nop                                              ; $6c9f: $00
	ld   [de], a                                     ; $6ca0: $12
	nop                                              ; $6ca1: $00
	inc  bc                                          ; $6ca2: $03
	nop                                              ; $6ca3: $00
	rst  $38                                         ; $6ca4: $ff
	ld   a, a                                        ; $6ca5: $7f
	ld   b, e                                        ; $6ca6: $43
	ld   l, $7f                                      ; $6ca7: $2e $7f
	jr   c, jr_01e_6cae                              ; $6ca9: $38 $03

	nop                                              ; $6cab: $00
	sbc  a                                           ; $6cac: $9f
	daa                                              ; $6cad: $27

jr_01e_6cae:
	ld   e, a                                        ; $6cae: $5f
	ld   [de], a                                     ; $6caf: $12
	rra                                              ; $6cb0: $1f
	nop                                              ; $6cb1: $00
	inc  bc                                          ; $6cb2: $03
	nop                                              ; $6cb3: $00
	rst  $38                                         ; $6cb4: $ff
	ld   a, a                                        ; $6cb5: $7f
	ld   b, e                                        ; $6cb6: $43
	ld   l, $12                                      ; $6cb7: $2e $12
	nop                                              ; $6cb9: $00
	inc  bc                                          ; $6cba: $03
	nop                                              ; $6cbb: $00
	rst  $38                                         ; $6cbc: $ff
	ld   a, a                                        ; $6cbd: $7f
	ld   d, a                                        ; $6cbe: $57
	ld   a, l                                        ; $6cbf: $7d
	ld   c, a                                        ; $6cc0: $4f

jr_01e_6cc1:
	ld   e, h                                        ; $6cc1: $5c
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	rst  $38                                         ; $6cc4: $ff
	ld   a, a                                        ; $6cc5: $7f
	inc  d                                           ; $6cc6: $14
	ld   a, a                                        ; $6cc7: $7f
	dec  l                                           ; $6cc8: $2d
	halt                                             ; $6cc9: $76
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	rst  $38                                         ; $6ccc: $ff
	ld   a, a                                        ; $6ccd: $7f
	rst  $38                                         ; $6cce: $ff
	ld   a, a                                        ; $6ccf: $7f
	jp   c, $7016                                    ; $6cd0: $da $16 $70

	ld   bc, $7fff                                   ; $6cd3: $01 $ff $7f
	rst  $38                                         ; $6cd6: $ff
	ld   a, a                                        ; $6cd7: $7f
	dec  l                                           ; $6cd8: $2d
	halt                                             ; $6cd9: $76
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	rst  $38                                         ; $6cdc: $ff
	ld   a, a                                        ; $6cdd: $7f
	rst  $38                                         ; $6cde: $ff
	ld   a, a                                        ; $6cdf: $7f
	ld   e, a                                        ; $6ce0: $5f
	ld   [de], a                                     ; $6ce1: $12
	di                                               ; $6ce2: $f3
	nop                                              ; $6ce3: $00
	rst  $38                                         ; $6ce4: $ff
	ld   a, a                                        ; $6ce5: $7f
	sbc  a                                           ; $6ce6: $9f
	daa                                              ; $6ce7: $27
	ld   [hl], b                                     ; $6ce8: $70
	ld   bc, $0000                                   ; $6ce9: $01 $00 $00
	rst  $38                                         ; $6cec: $ff
	ld   a, a                                        ; $6ced: $7f
	cp   a                                           ; $6cee: $bf
	inc  bc                                          ; $6cef: $03
	rra                                              ; $6cf0: $1f
	nop                                              ; $6cf1: $00
	inc  bc                                          ; $6cf2: $03
	nop                                              ; $6cf3: $00
	rst  $38                                         ; $6cf4: $ff
	ld   a, a                                        ; $6cf5: $7f
	rst  $38                                         ; $6cf6: $ff
	ld   a, a                                        ; $6cf7: $7f
	rst  $38                                         ; $6cf8: $ff
	ld   a, a                                        ; $6cf9: $7f
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	rst  $38                                         ; $6cfc: $ff
	ld   a, a                                        ; $6cfd: $7f
	rst  $38                                         ; $6cfe: $ff
	inc  de                                          ; $6cff: $13
	add  hl, bc                                      ; $6d00: $09
	inc  h                                           ; $6d01: $24
	ld   hl, $ff04                                   ; $6d02: $21 $04 $ff
	ld   a, a                                        ; $6d05: $7f
	or   $6c                                         ; $6d06: $f6 $6c
	rst  $38                                         ; $6d08: $ff
	ld   bc, $0421                                   ; $6d09: $01 $21 $04
	rst  $38                                         ; $6d0c: $ff
	ld   a, a                                        ; $6d0d: $7f
	ld   c, $00                                      ; $6d0e: $0e $00
	inc  e                                           ; $6d10: $1c
	ld   bc, $0421                                   ; $6d11: $01 $21 $04
	rst  $38                                         ; $6d14: $ff
	ld   a, a                                        ; $6d15: $7f
	or   $6c                                         ; $6d16: $f6 $6c
	add  hl, bc                                      ; $6d18: $09
	inc  h                                           ; $6d19: $24
	ld   hl, $ff04                                   ; $6d1a: $21 $04 $ff
	inc  de                                          ; $6d1d: $13
	or   $6c                                         ; $6d1e: $f6 $6c
	add  hl, bc                                      ; $6d20: $09
	inc  h                                           ; $6d21: $24
	ld   hl, $ff04                                   ; $6d22: $21 $04 $ff
	ld   a, a                                        ; $6d25: $7f
	add  hl, bc                                      ; $6d26: $09
	inc  h                                           ; $6d27: $24
	jp   z, $2144                                    ; $6d28: $ca $44 $21

	inc  b                                           ; $6d2b: $04
	rst  $38                                         ; $6d2c: $ff
	ld   a, a                                        ; $6d2d: $7f
	or   $6c                                         ; $6d2e: $f6 $6c
	ldh  [$2f], a                                    ; $6d30: $e0 $2f
	ld   hl, $ff04                                   ; $6d32: $21 $04 $ff
	ld   a, a                                        ; $6d35: $7f
	or   $6c                                         ; $6d36: $f6 $6c
	ld   [hl-], a                                    ; $6d38: $32
	ld   [hl], $01                                   ; $6d39: $36 $01
	inc  b                                           ; $6d3b: $04
	add  hl, sp                                      ; $6d3c: $39
	ld   [bc], a                                     ; $6d3d: $02
	rra                                              ; $6d3e: $1f
	nop                                              ; $6d3f: $00
	ldh  [rSC], a                                    ; $6d40: $e0 $02
	ld   hl, $3904                                   ; $6d42: $21 $04 $39
	ld   [bc], a                                     ; $6d45: $02
	db   $fc                                         ; $6d46: $fc
	ld   a, l                                        ; $6d47: $7d
	push af                                          ; $6d48: $f5
	nop                                              ; $6d49: $00
	rst  $38                                         ; $6d4a: $ff
	ld   [hl+], a                                    ; $6d4b: $22
	add  hl, sp                                      ; $6d4c: $39
	ld   [bc], a                                     ; $6d4d: $02
	rra                                              ; $6d4e: $1f
	inc  d                                           ; $6d4f: $14
	cp   a                                           ; $6d50: $bf
	ld   a, l                                        ; $6d51: $7d
	ld   hl, $3904                                   ; $6d52: $21 $04 $39
	ld   [bc], a                                     ; $6d55: $02
	rst  $38                                         ; $6d56: $ff
	ld   a, a                                        ; $6d57: $7f
	rra                                              ; $6d58: $1f
	inc  bc                                          ; $6d59: $03
	inc  bc                                          ; $6d5a: $03
	inc  c                                           ; $6d5b: $0c
	add  hl, sp                                      ; $6d5c: $39
	ld   [bc], a                                     ; $6d5d: $02
	ldh  [$03], a                                    ; $6d5e: $e0 $03
	ldh  [$03], a                                    ; $6d60: $e0 $03
	ldh  [$03], a                                    ; $6d62: $e0 $03
	add  hl, sp                                      ; $6d64: $39
	ld   [bc], a                                     ; $6d65: $02
	ldh  [$03], a                                    ; $6d66: $e0 $03
	ldh  [$03], a                                    ; $6d68: $e0 $03
	ldh  [$03], a                                    ; $6d6a: $e0 $03
	add  hl, sp                                      ; $6d6c: $39
	ld   [bc], a                                     ; $6d6d: $02
	rst  $38                                         ; $6d6e: $ff
	ld   a, a                                        ; $6d6f: $7f
	ldh  [$2f], a                                    ; $6d70: $e0 $2f
	ld   hl, $3904                                   ; $6d72: $21 $04 $39
	ld   [bc], a                                     ; $6d75: $02
	ldh  [$03], a                                    ; $6d76: $e0 $03
	ldh  [$03], a                                    ; $6d78: $e0 $03
	ldh  [$03], a                                    ; $6d7a: $e0 $03
	cp   a                                           ; $6d7c: $bf
	ld   c, e                                        ; $6d7d: $4b
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	or   e                                           ; $6d80: $b3
	ld   bc, $235f                                   ; $6d81: $01 $5f $23
	rst  $38                                         ; $6d84: $ff
	ld   a, a                                        ; $6d85: $7f
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	or   e                                           ; $6d88: $b3
	ld   bc, $02df                                   ; $6d89: $01 $df $02
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	rst  $38                                         ; $6d8e: $ff
	ld   a, a                                        ; $6d8f: $7f
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	ld   sp, $bf5a                                   ; $6d92: $31 $5a $bf
	ld   c, e                                        ; $6d95: $4b
	ldh  [$03], a                                    ; $6d96: $e0 $03
	rra                                              ; $6d98: $1f
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	cp   a                                           ; $6d9c: $bf
	ld   c, e                                        ; $6d9d: $4b
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	ld   a, a                                        ; $6da6: $7f
	ld   d, a                                        ; $6da7: $57
	ld   e, a                                        ; $6da8: $5f
	ld   [bc], a                                     ; $6da9: $02
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	nop                                              ; $6dad: $00
	nop                                              ; $6dae: $00
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	nop                                              ; $6db2: $00
	nop                                              ; $6db3: $00
	nop                                              ; $6db4: $00
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	ldh  [$03], a                                    ; $6dbc: $e0 $03
	rra                                              ; $6dbe: $1f
	inc  bc                                          ; $6dbf: $03
	ld   e, a                                        ; $6dc0: $5f
	ld   c, d                                        ; $6dc1: $4a
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	ldh  [$03], a                                    ; $6dc4: $e0 $03
	dec  sp                                          ; $6dc6: $3b
	inc  h                                           ; $6dc7: $24
	xor  c                                           ; $6dc8: $a9
	ld   [hl-], a                                    ; $6dc9: $32
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	ldh  [$03], a                                    ; $6dcc: $e0 $03
	rst  $38                                         ; $6dce: $ff
	ld   a, a                                        ; $6dcf: $7f
	sbc  a                                           ; $6dd0: $9f
	ld   [hl], $62                                   ; $6dd1: $36 $62
	ld   h, c                                        ; $6dd3: $61
	ldh  [$03], a                                    ; $6dd4: $e0 $03
	rst  $38                                         ; $6dd6: $ff
	ld   a, a                                        ; $6dd7: $7f
	sbc  a                                           ; $6dd8: $9f
	ld   [hl], $a9                                   ; $6dd9: $36 $a9
	ld   [hl-], a                                    ; $6ddb: $32
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	ldh  [$03], a                                    ; $6dde: $e0 $03
	rst  $38                                         ; $6de0: $ff
	inc  bc                                          ; $6de1: $03
	rra                                              ; $6de2: $1f
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
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
	cpl                                              ; $6dfc: $2f
	nop                                              ; $6dfd: $00
	nop                                              ; $6dfe: $00
	inc  bc                                          ; $6dff: $03
	add  b                                           ; $6e00: $80
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	dec  c                                           ; $6e03: $0d
	adc  d                                           ; $6e04: $8a
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	inc  bc                                          ; $6e07: $03
	add  b                                           ; $6e08: $80
	nop                                              ; $6e09: $00
	ld   bc, $0409                                   ; $6e0a: $01 $09 $04
	adc  c                                           ; $6e0d: $89
	nop                                              ; $6e0e: $00
	ld   [bc], a                                     ; $6e0f: $02
	inc  bc                                          ; $6e10: $03
	nop                                              ; $6e11: $00
	ld   c, $80                                      ; $6e12: $0e $80
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	inc  bc                                          ; $6e16: $03
	add  c                                           ; $6e17: $81
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	inc  bc                                          ; $6e1a: $03
	add  a                                           ; $6e1b: $87
	nop                                              ; $6e1c: $00
	ld   bc, $0409                                   ; $6e1d: $01 $09 $04
	adc  c                                           ; $6e20: $89
	nop                                              ; $6e21: $00
	ld   [bc], a                                     ; $6e22: $02
	inc  bc                                          ; $6e23: $03
	nop                                              ; $6e24: $00
	ld   c, $86                                      ; $6e25: $0e $86
	nop                                              ; $6e27: $00
	add  b                                           ; $6e28: $80
	inc  bc                                          ; $6e29: $03
	add  h                                           ; $6e2a: $84
	nop                                              ; $6e2b: $00
	ld   bc, $0409                                   ; $6e2c: $01 $09 $04
	adc  c                                           ; $6e2f: $89
	nop                                              ; $6e30: $00
	ld   bc, $0e03                                   ; $6e31: $01 $03 $0e
	add  l                                           ; $6e34: $85
	nop                                              ; $6e35: $00
	ld   [bc], a                                     ; $6e36: $02
	ld   [$0800], sp                                 ; $6e37: $08 $00 $08
	add  l                                           ; $6e3a: $85
	nop                                              ; $6e3b: $00
	ld   bc, $0409                                   ; $6e3c: $01 $09 $04
	adc  c                                           ; $6e3f: $89
	nop                                              ; $6e40: $00
	ld   bc, $0e03                                   ; $6e41: $01 $03 $0e
	add  l                                           ; $6e44: $85
	nop                                              ; $6e45: $00
	ld   [bc], a                                     ; $6e46: $02
	ld   [$0800], sp                                 ; $6e47: $08 $00 $08
	add  l                                           ; $6e4a: $85
	nop                                              ; $6e4b: $00
	ld   bc, $0409                                   ; $6e4c: $01 $09 $04
	adc  c                                           ; $6e4f: $89
	nop                                              ; $6e50: $00
	ld   bc, $0e03                                   ; $6e51: $01 $03 $0e
	adc  a                                           ; $6e54: $8f
	nop                                              ; $6e55: $00
	ld   bc, $0409                                   ; $6e56: $01 $09 $04
	adc  c                                           ; $6e59: $89
	nop                                              ; $6e5a: $00
	ld   bc, $0e03                                   ; $6e5b: $01 $03 $0e
	adc  l                                           ; $6e5e: $8d
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	ld   c, $80                                      ; $6e61: $0e $80
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	inc  bc                                          ; $6e65: $03
	adc  c                                           ; $6e66: $89
	nop                                              ; $6e67: $00
	ld   bc, $0904                                   ; $6e68: $01 $04 $09
	adc  d                                           ; $6e6b: $8a
	nop                                              ; $6e6c: $00
	ld   bc, $000e                                   ; $6e6d: $01 $0e $00
	rst  $38                                         ; $6e70: $ff
	ld   a, a                                        ; $6e71: $7f
	db   $fc                                         ; $6e72: $fc
	ld   [bc], a                                     ; $6e73: $02
	or   h                                           ; $6e74: $b4
	inc  c                                           ; $6e75: $0c
	and  l                                           ; $6e76: $a5
	jr   @+$01                                       ; $6e77: $18 $ff

	ld   a, a                                        ; $6e79: $7f
	rst  JumpTable                                         ; $6e7a: $df
	ld   e, l                                        ; $6e7b: $5d
	dec  b                                           ; $6e7c: $05
	add  hl, hl                                      ; $6e7d: $29
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	rst  $38                                         ; $6e80: $ff
	ld   a, a                                        ; $6e81: $7f
	ld   e, a                                        ; $6e82: $5f
	ld   c, $05                                      ; $6e83: $0e $05
	add  hl, hl                                      ; $6e85: $29
	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	rst  $38                                         ; $6e88: $ff
	ld   a, a                                        ; $6e89: $7f
	ld   e, a                                        ; $6e8a: $5f
	ld   e, [hl]                                     ; $6e8b: $5e
	ld   de, $a55a                                   ; $6e8c: $11 $5a $a5
	jr   @+$01                                       ; $6e8f: $18 $ff

	ld   a, a                                        ; $6e91: $7f
	inc  bc                                          ; $6e92: $03
	ld   a, h                                        ; $6e93: $7c
	ld   a, a                                        ; $6e94: $7f
	inc  d                                           ; $6e95: $14
	nop                                              ; $6e96: $00
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	nop                                              ; $6e99: $00
	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	rst  $38                                         ; $6ea0: $ff
	ld   a, a                                        ; $6ea1: $7f
	ccf                                              ; $6ea2: $3f
	ld   h, [hl]                                     ; $6ea3: $66
	rst  $38                                         ; $6ea4: $ff
	ld   c, h                                        ; $6ea5: $4c
	add  [hl]                                        ; $6ea6: $86
	inc  h                                           ; $6ea7: $24
	rst  $38                                         ; $6ea8: $ff
	ld   a, a                                        ; $6ea9: $7f
	sbc  e                                           ; $6eaa: $9b
	ld   b, l                                        ; $6eab: $45
	add  hl, de                                      ; $6eac: $19
	jr   nc, jr_01e_6ef2                             ; $6ead: $30 $43

	db   $10                                         ; $6eaf: $10
	rst  $38                                         ; $6eb0: $ff
	ld   e, a                                        ; $6eb1: $5f
	sbc  e                                           ; $6eb2: $9b
	ld   b, l                                        ; $6eb3: $45
	rst  $38                                         ; $6eb4: $ff
	ld   a, a                                        ; $6eb5: $7f
	ld   b, e                                        ; $6eb6: $43
	db   $10                                         ; $6eb7: $10
	ld   e, a                                        ; $6eb8: $5f
	ld   l, e                                        ; $6eb9: $6b
	sbc  e                                           ; $6eba: $9b
	ld   b, l                                        ; $6ebb: $45
	add  hl, de                                      ; $6ebc: $19
	jr   nc, jr_01e_6f02                             ; $6ebd: $30 $43

	db   $10                                         ; $6ebf: $10
	rst  $30                                         ; $6ec0: $f7
	ld   a, a                                        ; $6ec1: $7f
	inc  e                                           ; $6ec2: $1c
	nop                                              ; $6ec3: $00
	jp   z, $002b                                    ; $6ec4: $ca $2b $00

	nop                                              ; $6ec7: $00
	xor  l                                           ; $6ec8: $ad
	ld   e, e                                        ; $6ec9: $5b
	sbc  e                                           ; $6eca: $9b
	ld   b, l                                        ; $6ecb: $45
	rra                                              ; $6ecc: $1f
	rlca                                             ; $6ecd: $07
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	ldh  [$03], a                                    ; $6ed8: $e0 $03
	rst  $38                                         ; $6eda: $ff
	ld   a, a                                        ; $6edb: $7f
	add  $30                                         ; $6edc: $c6 $30
	jr   jr_01e_6ee0                                 ; $6ede: $18 $00

jr_01e_6ee0:
	rst  $38                                         ; $6ee0: $ff
	ld   a, a                                        ; $6ee1: $7f
	db   $fc                                         ; $6ee2: $fc
	ld   [bc], a                                     ; $6ee3: $02
	or   h                                           ; $6ee4: $b4
	inc  c                                           ; $6ee5: $0c
	and  l                                           ; $6ee6: $a5
	jr   jr_01e_6f1a                                 ; $6ee7: $18 $31

	ld   b, [hl]                                     ; $6ee9: $46
	cpl                                              ; $6eea: $2f
	ld   bc, $2679                                   ; $6eeb: $01 $79 $26
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	rst  $38                                         ; $6ef0: $ff
	ld   a, a                                        ; $6ef1: $7f

jr_01e_6ef2:
	cpl                                              ; $6ef2: $2f
	ld   bc, $2679                                   ; $6ef3: $01 $79 $26
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	rst  $38                                         ; $6ef8: $ff
	ld   a, a                                        ; $6ef9: $7f
	ld   e, a                                        ; $6efa: $5f
	ld   e, [hl]                                     ; $6efb: $5e
	ld   de, $a55a                                   ; $6efc: $11 $5a $a5
	jr   @+$01                                       ; $6eff: $18 $ff

	ld   a, a                                        ; $6f01: $7f

jr_01e_6f02:
	inc  bc                                          ; $6f02: $03
	ld   a, h                                        ; $6f03: $7c
	ld   a, a                                        ; $6f04: $7f
	inc  d                                           ; $6f05: $14
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	ld   a, a                                        ; $6f08: $7f
	ld   d, [hl]                                     ; $6f09: $56
	rst  JumpTable                                         ; $6f0a: $df
	ld   c, c                                        ; $6f0b: $49
	add  hl, sp                                      ; $6f0c: $39
	ld   sp, $18d2                                   ; $6f0d: $31 $d2 $18
	ld   a, a                                        ; $6f10: $7f
	ld   d, [hl]                                     ; $6f11: $56
	rst  $38                                         ; $6f12: $ff
	ld   c, l                                        ; $6f13: $4d
	ld   a, [$d261]                                  ; $6f14: $fa $61 $d2
	jr   jr_01e_6f98                                 ; $6f17: $18 $7f

	ld   d, [hl]                                     ; $6f19: $56

jr_01e_6f1a:
	add  hl, de                                      ; $6f1a: $19
	inc  l                                           ; $6f1b: $2c
	ld   a, [hl]                                     ; $6f1c: $7e
	ld   c, l                                        ; $6f1d: $4d
	ld   [$ff00], sp                                 ; $6f1e: $08 $00 $ff
	ld   e, a                                        ; $6f21: $5f
	ld   a, a                                        ; $6f22: $7f
	ld   d, [hl]                                     ; $6f23: $56
	ld   a, [hl]                                     ; $6f24: $7e
	ld   c, l                                        ; $6f25: $4d
	ld   [$5f00], sp                                 ; $6f26: $08 $00 $5f
	ld   l, e                                        ; $6f29: $6b
	add  hl, de                                      ; $6f2a: $19
	inc  l                                           ; $6f2b: $2c
	ld   a, [hl]                                     ; $6f2c: $7e
	ld   c, l                                        ; $6f2d: $4d
	ld   [$f700], sp                                 ; $6f2e: $08 $00 $f7
	ld   a, a                                        ; $6f31: $7f
	ld   a, a                                        ; $6f32: $7f
	ld   d, [hl]                                     ; $6f33: $56
	cp   a                                           ; $6f34: $bf
	ld   h, b                                        ; $6f35: $60
	ld   [$ad00], sp                                 ; $6f36: $08 $00 $ad
	ld   e, e                                        ; $6f39: $5b
	ld   hl, sp+$49                                  ; $6f3a: $f8 $49
	rra                                              ; $6f3c: $1f
	jr   z, @+$0a                                    ; $6f3d: $28 $08

	nop                                              ; $6f3f: $00
	cp   c                                           ; $6f40: $b9
	halt                                             ; $6f41: $76
	ld   a, a                                        ; $6f42: $7f
	ld   d, [hl]                                     ; $6f43: $56
	add  hl, de                                      ; $6f44: $19
	inc  l                                           ; $6f45: $2c
	ld   [$e000], sp                                 ; $6f46: $08 $00 $e0
	inc  bc                                          ; $6f49: $03
	rst  $38                                         ; $6f4a: $ff
	ld   a, a                                        ; $6f4b: $7f
	add  $30                                         ; $6f4c: $c6 $30
	jr   jr_01e_6f50                                 ; $6f4e: $18 $00

jr_01e_6f50:
	rst  $38                                         ; $6f50: $ff
	ld   a, a                                        ; $6f51: $7f
	db   $fc                                         ; $6f52: $fc
	ld   [bc], a                                     ; $6f53: $02
	or   h                                           ; $6f54: $b4
	inc  c                                           ; $6f55: $0c
	and  l                                           ; $6f56: $a5
	jr   @+$01                                       ; $6f57: $18 $ff

	ld   a, a                                        ; $6f59: $7f
	ld   l, a                                        ; $6f5a: $6f
	halt                                             ; $6f5b: $76
	ld   d, l                                        ; $6f5c: $55
	nop                                              ; $6f5d: $00
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	rst  $38                                         ; $6f60: $ff
	ld   a, a                                        ; $6f61: $7f
	ld   e, a                                        ; $6f62: $5f
	ld   c, $79                                      ; $6f63: $0e $79
	inc  b                                           ; $6f65: $04
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	rst  $38                                         ; $6f68: $ff
	ld   a, a                                        ; $6f69: $7f
	ld   e, a                                        ; $6f6a: $5f
	ld   e, [hl]                                     ; $6f6b: $5e
	ld   de, $a55a                                   ; $6f6c: $11 $5a $a5
	jr   @+$01                                       ; $6f6f: $18 $ff

	ld   a, a                                        ; $6f71: $7f
	inc  bc                                          ; $6f72: $03
	ld   a, h                                        ; $6f73: $7c
	ld   a, a                                        ; $6f74: $7f
	inc  d                                           ; $6f75: $14
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
	rst  $38                                         ; $6f80: $ff
	cpl                                              ; $6f81: $2f
	rst  JumpTable                                         ; $6f82: $df
	ld   b, l                                        ; $6f83: $45
	rlca                                             ; $6f84: $07
	ld   sp, $3066                                   ; $6f85: $31 $66 $30
	rst  $38                                         ; $6f88: $ff
	ld   c, [hl]                                     ; $6f89: $4e
	inc  de                                          ; $6f8a: $13
	nop                                              ; $6f8b: $00
	ld   a, a                                        ; $6f8c: $7f
	nop                                              ; $6f8d: $00
	ld   b, e                                        ; $6f8e: $43
	db   $10                                         ; $6f8f: $10
	rst  $38                                         ; $6f90: $ff
	ld   e, a                                        ; $6f91: $5f
	rst  $38                                         ; $6f92: $ff
	ld   c, [hl]                                     ; $6f93: $4e
	ld   a, a                                        ; $6f94: $7f
	nop                                              ; $6f95: $00
	ld   b, e                                        ; $6f96: $43
	db   $10                                         ; $6f97: $10

jr_01e_6f98:
	ld   e, a                                        ; $6f98: $5f
	ld   l, e                                        ; $6f99: $6b
	inc  de                                          ; $6f9a: $13
	nop                                              ; $6f9b: $00
	ld   a, a                                        ; $6f9c: $7f
	nop                                              ; $6f9d: $00
	ld   b, e                                        ; $6f9e: $43
	db   $10                                         ; $6f9f: $10
	rst  $30                                         ; $6fa0: $f7
	ld   a, a                                        ; $6fa1: $7f
	inc  de                                          ; $6fa2: $13
	nop                                              ; $6fa3: $00
	rst  $38                                         ; $6fa4: $ff
	ld   c, [hl]                                     ; $6fa5: $4e
	ld   b, e                                        ; $6fa6: $43
	stop                                             ; $6fa7: $10 $00
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
	ldh  [$03], a                                    ; $6fb8: $e0 $03
	rst  $38                                         ; $6fba: $ff
	ld   a, a                                        ; $6fbb: $7f
	add  $30                                         ; $6fbc: $c6 $30
	jr   jr_01e_6fc0                                 ; $6fbe: $18 $00

jr_01e_6fc0:
	rst  $38                                         ; $6fc0: $ff
	ld   a, a                                        ; $6fc1: $7f
	db   $fc                                         ; $6fc2: $fc
	ld   [bc], a                                     ; $6fc3: $02
	or   h                                           ; $6fc4: $b4
	inc  c                                           ; $6fc5: $0c
	and  l                                           ; $6fc6: $a5
	jr   jr_01e_6ffa                                 ; $6fc7: $18 $31

	ld   b, [hl]                                     ; $6fc9: $46
	cpl                                              ; $6fca: $2f
	ld   bc, $2679                                   ; $6fcb: $01 $79 $26
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	rst  $38                                         ; $6fd0: $ff
	ld   a, a                                        ; $6fd1: $7f
	cpl                                              ; $6fd2: $2f
	ld   bc, $2679                                   ; $6fd3: $01 $79 $26
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	rst  $38                                         ; $6fd8: $ff
	ld   a, a                                        ; $6fd9: $7f
	ld   e, a                                        ; $6fda: $5f
	ld   e, [hl]                                     ; $6fdb: $5e
	ld   de, $a55a                                   ; $6fdc: $11 $5a $a5
	jr   @+$01                                       ; $6fdf: $18 $ff

	ld   a, a                                        ; $6fe1: $7f
	inc  bc                                          ; $6fe2: $03
	ld   a, h                                        ; $6fe3: $7c
	ld   a, a                                        ; $6fe4: $7f
	inc  d                                           ; $6fe5: $14
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	ld   e, a                                        ; $6fe8: $5f
	ld   b, [hl]                                     ; $6fe9: $46
	cp   [hl]                                        ; $6fea: $be
	dec  l                                           ; $6feb: $2d
	add  hl, de                                      ; $6fec: $19
	add  hl, de                                      ; $6fed: $19
	or   e                                           ; $6fee: $b3
	ld   [$465f], sp                                 ; $6fef: $08 $5f $46
	cp   [hl]                                        ; $6ff2: $be
	dec  l                                           ; $6ff3: $2d
	db   $fc                                         ; $6ff4: $fc
	ld   e, c                                        ; $6ff5: $59
	or   e                                           ; $6ff6: $b3
	ld   [$465f], sp                                 ; $6ff7: $08 $5f $46

jr_01e_6ffa:
	ld   d, l                                        ; $6ffa: $55
	nop                                              ; $6ffb: $00
	ld   e, a                                        ; $6ffc: $5f
	dec  l                                           ; $6ffd: $2d
	ld   b, $00                                      ; $6ffe: $06 $00
	rst  $38                                         ; $7000: $ff
	ld   e, a                                        ; $7001: $5f
	ld   e, a                                        ; $7002: $5f
	ld   b, [hl]                                     ; $7003: $46
	ld   e, a                                        ; $7004: $5f
	dec  l                                           ; $7005: $2d
	ld   b, $00                                      ; $7006: $06 $00
	ld   e, a                                        ; $7008: $5f
	ld   l, e                                        ; $7009: $6b
	ld   d, l                                        ; $700a: $55
	nop                                              ; $700b: $00
	ld   e, a                                        ; $700c: $5f
	dec  l                                           ; $700d: $2d
	ld   b, $00                                      ; $700e: $06 $00
	rst  $30                                         ; $7010: $f7
	ld   a, a                                        ; $7011: $7f
	ld   e, a                                        ; $7012: $5f
	ld   b, [hl]                                     ; $7013: $46
	rst  $38                                         ; $7014: $ff
	jr   z, jr_01e_701d                              ; $7015: $28 $06

	nop                                              ; $7017: $00

Jump_01e_7018:
	xor  l                                           ; $7018: $ad
	ld   e, e                                        ; $7019: $5b
	reti                                             ; $701a: $d9


	dec  a                                           ; $701b: $3d
	rra                                              ; $701c: $1f

jr_01e_701d:
	nop                                              ; $701d: $00
	ld   b, $00                                      ; $701e: $06 $00
	cp   c                                           ; $7020: $b9
	halt                                             ; $7021: $76
	ld   e, a                                        ; $7022: $5f
	ld   b, [hl]                                     ; $7023: $46
	ld   d, l                                        ; $7024: $55
	nop                                              ; $7025: $00
	ld   b, $00                                      ; $7026: $06 $00
	ldh  [$03], a                                    ; $7028: $e0 $03
	rst  $38                                         ; $702a: $ff
	ld   a, a                                        ; $702b: $7f
	add  $30                                         ; $702c: $c6 $30
	jr   jr_01e_7030                                 ; $702e: $18 $00

jr_01e_7030:
	rst  $38                                         ; $7030: $ff
	ld   a, a                                        ; $7031: $7f
	db   $fc                                         ; $7032: $fc

jr_01e_7033:
	ld   [bc], a                                     ; $7033: $02
	or   h                                           ; $7034: $b4
	inc  c                                           ; $7035: $0c
	and  l                                           ; $7036: $a5
	jr   @+$01                                       ; $7037: $18 $ff

	ld   a, a                                        ; $7039: $7f
	ld   l, a                                        ; $703a: $6f

jr_01e_703b:
	halt                                             ; $703b: $76
	dec  hl                                          ; $703c: $2b
	add  hl, hl                                      ; $703d: $29
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	rst  $38                                         ; $7040: $ff
	ld   a, a                                        ; $7041: $7f
	ld   e, a                                        ; $7042: $5f
	ld   c, $ff                                      ; $7043: $0e $ff
	inc  sp                                          ; $7045: $33
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	rst  $38                                         ; $7048: $ff
	ld   a, a                                        ; $7049: $7f
	ld   e, a                                        ; $704a: $5f

jr_01e_704b:
	ld   e, [hl]                                     ; $704b: $5e
	ld   de, $a55a                                   ; $704c: $11 $5a $a5
	jr   @+$01                                       ; $704f: $18 $ff

	ld   a, a                                        ; $7051: $7f
	inc  bc                                          ; $7052: $03
	ld   a, h                                        ; $7053: $7c
	ld   a, a                                        ; $7054: $7f
	inc  d                                           ; $7055: $14
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	or   h                                           ; $7058: $b4
	ld   a, a                                        ; $7059: $7f
	sub  b                                           ; $705a: $90
	ld   a, [hl]                                     ; $705b: $7e
	ld   l, $7d                                      ; $705c: $2e $7d
	ld   b, $24                                      ; $705e: $06 $24
	ld   b, e                                        ; $7060: $43
	db   $10                                         ; $7061: $10
	xor  b                                           ; $7062: $a8
	jr   nc, jr_01e_7033                             ; $7063: $30 $ce

	ld   h, c                                        ; $7065: $61
	ld   b, $24                                      ; $7066: $06 $24
	rst  $38                                         ; $7068: $ff
	ld   a, a                                        ; $7069: $7f
	xor  b                                           ; $706a: $a8
	jr   nc, jr_01e_703b                             ; $706b: $30 $ce

	ld   h, c                                        ; $706d: $61
	ld   b, e                                        ; $706e: $43
	db   $10                                         ; $706f: $10
	rst  $38                                         ; $7070: $ff
	ld   e, a                                        ; $7071: $5f
	rst  $38                                         ; $7072: $ff
	ld   a, a                                        ; $7073: $7f
	adc  $61                                         ; $7074: $ce $61
	ld   b, e                                        ; $7076: $43
	db   $10                                         ; $7077: $10
	ld   e, a                                        ; $7078: $5f
	ld   l, e                                        ; $7079: $6b
	xor  b                                           ; $707a: $a8
	jr   nc, jr_01e_704b                             ; $707b: $30 $ce

	ld   h, c                                        ; $707d: $61
	ld   b, e                                        ; $707e: $43
	db   $10                                         ; $707f: $10
	xor  l                                           ; $7080: $ad
	ld   e, e                                        ; $7081: $5b
	rst  $38                                         ; $7082: $ff
	ld   a, a                                        ; $7083: $7f
	sub  h                                           ; $7084: $94
	ld   a, [hl]                                     ; $7085: $7e
	ld   b, e                                        ; $7086: $43
	stop                                             ; $7087: $10 $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	ldh  [$03], a                                    ; $7098: $e0 $03
	rst  $38                                         ; $709a: $ff
	ld   a, a                                        ; $709b: $7f
	add  $30                                         ; $709c: $c6 $30
	jr   jr_01e_70a0                                 ; $709e: $18 $00

jr_01e_70a0:
	rst  $38                                         ; $70a0: $ff
	ld   a, a                                        ; $70a1: $7f
	db   $fc                                         ; $70a2: $fc
	ld   [bc], a                                     ; $70a3: $02
	or   h                                           ; $70a4: $b4
	inc  c                                           ; $70a5: $0c

jr_01e_70a6:
	and  l                                           ; $70a6: $a5
	jr   jr_01e_70da                                 ; $70a7: $18 $31

	ld   b, [hl]                                     ; $70a9: $46
	cpl                                              ; $70aa: $2f
	ld   bc, $2679                                   ; $70ab: $01 $79 $26
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	rst  $38                                         ; $70b0: $ff
	ld   a, a                                        ; $70b1: $7f
	cpl                                              ; $70b2: $2f
	ld   bc, $2679                                   ; $70b3: $01 $79 $26
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	rst  $38                                         ; $70b8: $ff
	ld   a, a                                        ; $70b9: $7f

jr_01e_70ba:
	ld   e, a                                        ; $70ba: $5f
	ld   e, [hl]                                     ; $70bb: $5e
	ld   de, $a55a                                   ; $70bc: $11 $5a $a5
	jr   @+$01                                       ; $70bf: $18 $ff

	ld   a, a                                        ; $70c1: $7f
	inc  bc                                          ; $70c2: $03
	ld   a, h                                        ; $70c3: $7c
	ld   a, a                                        ; $70c4: $7f
	inc  d                                           ; $70c5: $14
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	jr   jr_01e_713d                                 ; $70c8: $18 $73

	inc  sp                                          ; $70ca: $33
	ld   d, d                                        ; $70cb: $52
	adc  [hl]                                        ; $70cc: $8e
	ld   b, l                                        ; $70cd: $45
	ld   [$1828], a                                  ; $70ce: $ea $28 $18
	ld   [hl], e                                     ; $70d1: $73
	inc  sp                                          ; $70d2: $33
	ld   d, d                                        ; $70d3: $52
	db   $f4                                         ; $70d4: $f4
	ld   a, [hl]                                     ; $70d5: $7e
	ld   [$1828], a                                  ; $70d6: $ea $28 $18
	ld   [hl], e                                     ; $70d9: $73

jr_01e_70da:
	dec  bc                                          ; $70da: $0b
	ld   b, c                                        ; $70db: $41
	ld   [hl], l                                     ; $70dc: $75
	ld   l, d                                        ; $70dd: $6a
	ld   b, e                                        ; $70de: $43
	jr   z, @+$01                                    ; $70df: $28 $ff

	ld   e, a                                        ; $70e1: $5f
	jr   @+$75                                       ; $70e2: $18 $73

	ld   [hl], l                                     ; $70e4: $75
	ld   l, d                                        ; $70e5: $6a
	ld   b, e                                        ; $70e6: $43
	jr   z, @+$61                                    ; $70e7: $28 $5f

jr_01e_70e9:
	ld   l, e                                        ; $70e9: $6b
	dec  bc                                          ; $70ea: $0b
	ld   b, c                                        ; $70eb: $41
	ld   [hl], l                                     ; $70ec: $75
	ld   l, d                                        ; $70ed: $6a
	ld   b, e                                        ; $70ee: $43
	jr   z, @-$07                                    ; $70ef: $28 $f7

	ld   a, a                                        ; $70f1: $7f
	jr   jr_01e_7167                                 ; $70f2: $18 $73

	dec  c                                           ; $70f4: $0d
	ld   d, e                                        ; $70f5: $53
	ld   b, e                                        ; $70f6: $43
	jr   z, jr_01e_70a6                              ; $70f7: $28 $ad

	ld   e, e                                        ; $70f9: $5b
	rst  $28                                         ; $70fa: $ef
	ld   c, c                                        ; $70fb: $49
	dec  d                                           ; $70fc: $15
	dec  e                                           ; $70fd: $1d
	ld   b, e                                        ; $70fe: $43
	jr   z, jr_01e_70ba                              ; $70ff: $28 $b9

	halt                                             ; $7101: $76
	jr   jr_01e_7177                                 ; $7102: $18 $73

	dec  bc                                          ; $7104: $0b
	ld   b, c                                        ; $7105: $41
	ld   b, e                                        ; $7106: $43
	jr   z, jr_01e_70e9                              ; $7107: $28 $e0

	inc  bc                                          ; $7109: $03
	rst  $38                                         ; $710a: $ff
	ld   a, a                                        ; $710b: $7f
	add  $30                                         ; $710c: $c6 $30
	jr   jr_01e_7110                                 ; $710e: $18 $00

jr_01e_7110:
	rst  $38                                         ; $7110: $ff
	ld   a, a                                        ; $7111: $7f
	db   $fc                                         ; $7112: $fc
	ld   [bc], a                                     ; $7113: $02
	or   h                                           ; $7114: $b4
	inc  c                                           ; $7115: $0c
	and  l                                           ; $7116: $a5
	jr   @+$01                                       ; $7117: $18 $ff

	ld   a, a                                        ; $7119: $7f
	db   $eb                                         ; $711a: $eb
	inc  bc                                          ; $711b: $03
	or   $10                                         ; $711c: $f6 $10
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	rst  $38                                         ; $7120: $ff
	ld   a, a                                        ; $7121: $7f
	ld   e, a                                        ; $7122: $5f
	ld   c, $7f                                      ; $7123: $0e $7f
	rrca                                             ; $7125: $0f
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	rst  $38                                         ; $7128: $ff
	ld   a, a                                        ; $7129: $7f
	ld   e, a                                        ; $712a: $5f
	ld   e, [hl]                                     ; $712b: $5e
	ld   de, $a55a                                   ; $712c: $11 $5a $a5
	jr   @+$01                                       ; $712f: $18 $ff

	ld   a, a                                        ; $7131: $7f
	inc  bc                                          ; $7132: $03
	ld   a, h                                        ; $7133: $7c
	ld   a, a                                        ; $7134: $7f
	inc  d                                           ; $7135: $14
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	rst  $38                                         ; $7138: $ff
	ld   a, a                                        ; $7139: $7f
	ld   [hl], e                                     ; $713a: $73
	add  hl, de                                      ; $713b: $19
	sub  b                                           ; $713c: $90

jr_01e_713d:
	ld   [bc], a                                     ; $713d: $02
	add  l                                           ; $713e: $85
	jr   @+$01                                       ; $713f: $18 $ff

	ld   a, a                                        ; $7141: $7f
	rst  $38                                         ; $7142: $ff
	inc  bc                                          ; $7143: $03
	sub  b                                           ; $7144: $90
	ld   [bc], a                                     ; $7145: $02
	call z, $ff00                                    ; $7146: $cc $00 $ff
	ld   a, a                                        ; $7149: $7f
	rst  $38                                         ; $714a: $ff
	ld   [de], a                                     ; $714b: $12
	sub  $01                                         ; $714c: $d6 $01
	call z, $ff00                                    ; $714e: $cc $00 $ff
	ld   e, a                                        ; $7151: $5f
	rst  $38                                         ; $7152: $ff
	ld   [de], a                                     ; $7153: $12
	sub  $01                                         ; $7154: $d6 $01
	call z, Call_01e_5f00                            ; $7156: $cc $00 $5f
	ld   l, e                                        ; $7159: $6b
	xor  d                                           ; $715a: $aa
	ld   a, e                                        ; $715b: $7b
	dec  a                                           ; $715c: $3d
	dec  hl                                          ; $715d: $2b
	dec  sp                                          ; $715e: $3b
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00

jr_01e_7167:
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00

jr_01e_7177:
	nop                                              ; $7177: $00

jr_01e_7178:
	ldh  [$03], a                                    ; $7178: $e0 $03
	rst  $38                                         ; $717a: $ff
	ld   a, a                                        ; $717b: $7f
	add  $30                                         ; $717c: $c6 $30
	jr   jr_01e_7180                                 ; $717e: $18 $00

jr_01e_7180:
	rst  $38                                         ; $7180: $ff
	ld   a, a                                        ; $7181: $7f
	db   $fc                                         ; $7182: $fc
	ld   [bc], a                                     ; $7183: $02
	or   h                                           ; $7184: $b4
	inc  c                                           ; $7185: $0c
	and  l                                           ; $7186: $a5
	jr   @+$01                                       ; $7187: $18 $ff

	ld   a, a                                        ; $7189: $7f
	ld   l, a                                        ; $718a: $6f
	halt                                             ; $718b: $76
	ld   b, b                                        ; $718c: $40
	ld   de, $0000                                   ; $718d: $11 $00 $00
	rst  $38                                         ; $7190: $ff
	ld   a, a                                        ; $7191: $7f
	ld   e, a                                        ; $7192: $5f
	ld   c, $0b                                      ; $7193: $0e $0b
	dec  l                                           ; $7195: $2d
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	rst  $38                                         ; $7198: $ff
	ld   a, a                                        ; $7199: $7f
	ld   e, a                                        ; $719a: $5f
	ld   e, [hl]                                     ; $719b: $5e
	ld   de, $a55a                                   ; $719c: $11 $5a $a5
	jr   @+$01                                       ; $719f: $18 $ff

	ld   a, a                                        ; $71a1: $7f
	inc  bc                                          ; $71a2: $03
	ld   a, h                                        ; $71a3: $7c
	ld   a, a                                        ; $71a4: $7f
	inc  d                                           ; $71a5: $14
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	rra                                              ; $71a8: $1f
	ld   e, l                                        ; $71a9: $5d
	add  hl, de                                      ; $71aa: $19
	inc  c                                           ; $71ab: $0c
	inc  c                                           ; $71ac: $0c
	ld   [$1c45], sp                                 ; $71ad: $08 $45 $1c
	rra                                              ; $71b0: $1f
	rlca                                             ; $71b1: $07
	ld   h, b                                        ; $71b2: $60
	ld   c, e                                        ; $71b3: $4b
	nop                                              ; $71b4: $00
	ld   e, $45                                      ; $71b5: $1e $45
	inc  e                                           ; $71b7: $1c
	rst  $38                                         ; $71b8: $ff
	ld   a, a                                        ; $71b9: $7f
	ld   h, b                                        ; $71ba: $60
	ld   c, e                                        ; $71bb: $4b
	nop                                              ; $71bc: $00
	ld   e, $45                                      ; $71bd: $1e $45
	inc  e                                           ; $71bf: $1c
	rst  $38                                         ; $71c0: $ff
	ld   e, a                                        ; $71c1: $5f
	rst  $38                                         ; $71c2: $ff
	ld   a, a                                        ; $71c3: $7f
	ld   d, c                                        ; $71c4: $51
	ld   a, a                                        ; $71c5: $7f
	ld   b, e                                        ; $71c6: $43
	db   $10                                         ; $71c7: $10
	ld   e, a                                        ; $71c8: $5f

jr_01e_71c9:
	ld   l, e                                        ; $71c9: $6b
	inc  e                                           ; $71ca: $1c
	nop                                              ; $71cb: $00
	jp   z, Jump_01e_432b                            ; $71cc: $ca $2b $43

	db   $10                                         ; $71cf: $10
	rst  $30                                         ; $71d0: $f7
	ld   a, a                                        ; $71d1: $7f
	rst  $38                                         ; $71d2: $ff
	ld   a, a                                        ; $71d3: $7f
	rra                                              ; $71d4: $1f
	rlca                                             ; $71d5: $07
	ld   b, e                                        ; $71d6: $43
	db   $10                                         ; $71d7: $10
	ld   [hl], d                                     ; $71d8: $72
	ld   h, e                                        ; $71d9: $63
	ld   a, l                                        ; $71da: $7d
	ld   a, a                                        ; $71db: $7f
	ld   d, c                                        ; $71dc: $51
	ld   l, [hl]                                     ; $71dd: $6e
	add  l                                           ; $71de: $85
	jr   jr_01e_7178                                 ; $71df: $18 $97

	ld   a, [hl]                                     ; $71e1: $7e
	ld   a, [$707e]                                  ; $71e2: $fa $7e $70
	ld   e, l                                        ; $71e5: $5d
	add  l                                           ; $71e6: $85
	jr   jr_01e_71c9                                 ; $71e7: $18 $e0

	inc  bc                                          ; $71e9: $03
	rst  $38                                         ; $71ea: $ff
	ld   a, a                                        ; $71eb: $7f
	add  $30                                         ; $71ec: $c6 $30
	jr   jr_01e_71f0                                 ; $71ee: $18 $00

jr_01e_71f0:
	rst  $38                                         ; $71f0: $ff
	ld   a, a                                        ; $71f1: $7f
	db   $fc                                         ; $71f2: $fc
	ld   [bc], a                                     ; $71f3: $02
	or   h                                           ; $71f4: $b4
	inc  c                                           ; $71f5: $0c

jr_01e_71f6:
	and  l                                           ; $71f6: $a5
	jr   jr_01e_722a                                 ; $71f7: $18 $31

	ld   b, [hl]                                     ; $71f9: $46
	cpl                                              ; $71fa: $2f
	ld   bc, $2679                                   ; $71fb: $01 $79 $26
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	rst  $38                                         ; $7200: $ff
	ld   a, a                                        ; $7201: $7f
	cpl                                              ; $7202: $2f
	ld   bc, $2679                                   ; $7203: $01 $79 $26
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	rst  $38                                         ; $7208: $ff
	ld   a, a                                        ; $7209: $7f
	ld   e, a                                        ; $720a: $5f
	ld   e, [hl]                                     ; $720b: $5e
	ld   de, $a55a                                   ; $720c: $11 $5a $a5
	jr   @+$01                                       ; $720f: $18 $ff

	ld   a, a                                        ; $7211: $7f
	inc  bc                                          ; $7212: $03
	ld   a, h                                        ; $7213: $7c
	ld   a, a                                        ; $7214: $7f
	inc  d                                           ; $7215: $14
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	or   h                                           ; $7218: $b4
	ld   h, a                                        ; $7219: $67
	or   c                                           ; $721a: $b1
	ld   b, [hl]                                     ; $721b: $46
	inc  l                                           ; $721c: $2c
	ld   [hl-], a                                    ; $721d: $32
	ld   b, [hl]                                     ; $721e: $46
	add  hl, de                                      ; $721f: $19
	or   h                                           ; $7220: $b4
	ld   h, a                                        ; $7221: $67
	or   c                                           ; $7222: $b1
	ld   b, [hl]                                     ; $7223: $46
	ld   [hl], c                                     ; $7224: $71
	ld   l, e                                        ; $7225: $6b
	ld   b, [hl]                                     ; $7226: $46
	add  hl, de                                      ; $7227: $19
	or   h                                           ; $7228: $b4
	ld   h, a                                        ; $7229: $67

jr_01e_722a:
	and  h                                           ; $722a: $a4
	ld   hl, $4f4e                                   ; $722b: $21 $4e $4f
	db   $e3                                         ; $722e: $e3
	jr   @+$01                                       ; $722f: $18 $ff

	ld   e, a                                        ; $7231: $5f
	or   h                                           ; $7232: $b4
	ld   h, a                                        ; $7233: $67
	ld   c, [hl]                                     ; $7234: $4e
	ld   c, a                                        ; $7235: $4f
	db   $e3                                         ; $7236: $e3
	jr   jr_01e_7298                                 ; $7237: $18 $5f

	ld   l, e                                        ; $7239: $6b
	and  h                                           ; $723a: $a4
	ld   hl, $4f4e                                   ; $723b: $21 $4e $4f
	db   $e3                                         ; $723e: $e3
	jr   @-$07                                       ; $723f: $18 $f7

	ld   a, a                                        ; $7241: $7f
	or   h                                           ; $7242: $b4
	ld   h, a                                        ; $7243: $67
	xor  $77                                         ; $7244: $ee $77
	db   $e3                                         ; $7246: $e3
	jr   jr_01e_71f6                                 ; $7247: $18 $ad

	ld   e, e                                        ; $7249: $5b
	adc  [hl]                                        ; $724a: $8e
	ld   b, [hl]                                     ; $724b: $46
	ccf                                              ; $724c: $3f
	ld   bc, $18e3                                   ; $724d: $01 $e3 $18
	cp   c                                           ; $7250: $b9
	halt                                             ; $7251: $76
	or   h                                           ; $7252: $b4
	ld   h, a                                        ; $7253: $67
	and  h                                           ; $7254: $a4
	ld   hl, $18e3                                   ; $7255: $21 $e3 $18
	ldh  [$03], a                                    ; $7258: $e0 $03
	rst  $38                                         ; $725a: $ff
	ld   a, a                                        ; $725b: $7f
	add  $30                                         ; $725c: $c6 $30
	jr   jr_01e_7260                                 ; $725e: $18 $00

jr_01e_7260:
	rst  $38                                         ; $7260: $ff
	ld   a, a                                        ; $7261: $7f
	db   $fc                                         ; $7262: $fc
	ld   [bc], a                                     ; $7263: $02
	or   h                                           ; $7264: $b4
	inc  c                                           ; $7265: $0c
	and  l                                           ; $7266: $a5
	jr   @+$01                                       ; $7267: $18 $ff

	ld   a, a                                        ; $7269: $7f
	ld   l, a                                        ; $726a: $6f
	halt                                             ; $726b: $76
	dec  bc                                          ; $726c: $0b
	ld   c, h                                        ; $726d: $4c
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00
	rst  $38                                         ; $7270: $ff
	ld   a, a                                        ; $7271: $7f
	ld   e, a                                        ; $7272: $5f
	ld   c, $ed                                      ; $7273: $0e $ed
	stop                                             ; $7275: $10 $00
	nop                                              ; $7277: $00
	rst  $38                                         ; $7278: $ff
	ld   a, a                                        ; $7279: $7f
	ld   e, a                                        ; $727a: $5f
	ld   e, [hl]                                     ; $727b: $5e
	ld   de, $a55a                                   ; $727c: $11 $5a $a5
	jr   @+$01                                       ; $727f: $18 $ff

	ld   a, a                                        ; $7281: $7f
	inc  bc                                          ; $7282: $03
	ld   a, h                                        ; $7283: $7c
	ld   a, a                                        ; $7284: $7f
	inc  d                                           ; $7285: $14
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	rst  $38                                         ; $7288: $ff
	ld   b, a                                        ; $7289: $47
	rst  JumpTable                                         ; $728a: $df
	jr   nc, jr_01e_72db                             ; $728b: $30 $4e

	ld   c, b                                        ; $728d: $48
	dec  b                                           ; $728e: $05
	inc  h                                           ; $728f: $24
	rst  $38                                         ; $7290: $ff
	ld   a, d                                        ; $7291: $7a
	ld   d, [hl]                                     ; $7292: $56
	ld   l, c                                        ; $7293: $69
	ld   c, [hl]                                     ; $7294: $4e
	ld   c, b                                        ; $7295: $48
	dec  b                                           ; $7296: $05
	inc  h                                           ; $7297: $24

jr_01e_7298:
	rst  $38                                         ; $7298: $ff
	ld   a, a                                        ; $7299: $7f
	rst  JumpTable                                         ; $729a: $df
	jr   nc, jr_01e_72eb                             ; $729b: $30 $4e

	ld   c, b                                        ; $729d: $48
	dec  b                                           ; $729e: $05
	inc  h                                           ; $729f: $24
	ld   [hl], d                                     ; $72a0: $72
	ld   h, e                                        ; $72a1: $63
	rst  $38                                         ; $72a2: $ff
	ld   a, a                                        ; $72a3: $7f
	rra                                              ; $72a4: $1f
	rlca                                             ; $72a5: $07
	rst  JumpTable                                         ; $72a6: $df
	jr   nc, @+$61                                   ; $72a7: $30 $5f

	ld   l, e                                        ; $72a9: $6b
	rst  $38                                         ; $72aa: $ff
	ld   a, a                                        ; $72ab: $7f
	inc  e                                           ; $72ac: $1c
	nop                                              ; $72ad: $00
	jp   z, $002b                                    ; $72ae: $ca $2b $00

	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	ldh  [$03], a                                    ; $72c8: $e0 $03
	rst  $38                                         ; $72ca: $ff
	ld   a, a                                        ; $72cb: $7f
	add  $30                                         ; $72cc: $c6 $30
	jr   jr_01e_72d0                                 ; $72ce: $18 $00

jr_01e_72d0:
	rst  $38                                         ; $72d0: $ff
	ld   a, a                                        ; $72d1: $7f
	db   $fc                                         ; $72d2: $fc
	ld   [bc], a                                     ; $72d3: $02
	or   h                                           ; $72d4: $b4
	inc  c                                           ; $72d5: $0c
	and  l                                           ; $72d6: $a5
	jr   jr_01e_730a                                 ; $72d7: $18 $31

	ld   b, [hl]                                     ; $72d9: $46
	cpl                                              ; $72da: $2f

jr_01e_72db:
	ld   bc, $2679                                   ; $72db: $01 $79 $26
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	rst  $38                                         ; $72e0: $ff
	ld   a, a                                        ; $72e1: $7f
	cpl                                              ; $72e2: $2f
	ld   bc, $2679                                   ; $72e3: $01 $79 $26
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	rst  $38                                         ; $72e8: $ff
	ld   a, a                                        ; $72e9: $7f
	ld   e, a                                        ; $72ea: $5f

jr_01e_72eb:
	ld   e, [hl]                                     ; $72eb: $5e
	ld   de, $a55a                                   ; $72ec: $11 $5a $a5
	jr   @+$01                                       ; $72ef: $18 $ff

	ld   a, a                                        ; $72f1: $7f
	inc  bc                                          ; $72f2: $03
	ld   a, h                                        ; $72f3: $7c
	ld   a, a                                        ; $72f4: $7f
	inc  d                                           ; $72f5: $14
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	ld   a, h                                        ; $72f8: $7c
	halt                                             ; $72f9: $76
	add  hl, de                                      ; $72fa: $19
	ld   d, [hl]                                     ; $72fb: $56
	ld   d, e                                        ; $72fc: $53
	dec  a                                           ; $72fd: $3d
	xor  a                                           ; $72fe: $af
	jr   nc, @+$7e                                   ; $72ff: $30 $7c

	halt                                             ; $7301: $76
	add  hl, de                                      ; $7302: $19
	ld   d, [hl]                                     ; $7303: $56
	sub  a                                           ; $7304: $97
	ld   l, d                                        ; $7305: $6a
	xor  a                                           ; $7306: $af
	jr   nc, @+$7e                                   ; $7307: $30 $7c

	halt                                             ; $7309: $76

jr_01e_730a:
	ld   [de], a                                     ; $730a: $12
	ld   d, h                                        ; $730b: $54
	ld   e, e                                        ; $730c: $5b
	ld   a, c                                        ; $730d: $79
	ld   b, $1c                                      ; $730e: $06 $1c
	rst  $38                                         ; $7310: $ff
	ld   e, a                                        ; $7311: $5f
	ld   a, h                                        ; $7312: $7c
	halt                                             ; $7313: $76
	ld   e, e                                        ; $7314: $5b
	ld   a, c                                        ; $7315: $79
	ld   b, $1c                                      ; $7316: $06 $1c
	ld   e, a                                        ; $7318: $5f
	ld   l, e                                        ; $7319: $6b
	ld   [de], a                                     ; $731a: $12
	ld   d, h                                        ; $731b: $54
	ld   e, e                                        ; $731c: $5b
	ld   a, c                                        ; $731d: $79
	ld   b, $1c                                      ; $731e: $06 $1c
	rst  $30                                         ; $7320: $f7
	ld   a, a                                        ; $7321: $7f
	ld   a, h                                        ; $7322: $7c
	halt                                             ; $7323: $76
	db   $10                                         ; $7324: $10
	ld   [hl], e                                     ; $7325: $73
	ld   b, $1c                                      ; $7326: $06 $1c
	xor  l                                           ; $7328: $ad
	ld   e, e                                        ; $7329: $5b
	or   h                                           ; $732a: $b4
	ld   e, c                                        ; $732b: $59
	sbc  a                                           ; $732c: $9f
	inc  [hl]                                        ; $732d: $34
	ld   b, $1c                                      ; $732e: $06 $1c
	cp   c                                           ; $7330: $b9
	halt                                             ; $7331: $76
	ld   a, h                                        ; $7332: $7c
	halt                                             ; $7333: $76
	ld   [de], a                                     ; $7334: $12
	ld   d, h                                        ; $7335: $54
	ld   b, $1c                                      ; $7336: $06 $1c
	ldh  [$03], a                                    ; $7338: $e0 $03
	rst  $38                                         ; $733a: $ff
	ld   a, a                                        ; $733b: $7f
	add  $30                                         ; $733c: $c6 $30
	jr   jr_01e_7340                                 ; $733e: $18 $00

jr_01e_7340:
	dec  bc                                          ; $7340: $0b
	dec  bc                                          ; $7341: $0b
	dec  bc                                          ; $7342: $0b
	dec  bc                                          ; $7343: $0b
	dec  bc                                          ; $7344: $0b
	dec  bc                                          ; $7345: $0b
	dec  bc                                          ; $7346: $0b
	dec  hl                                          ; $7347: $2b
	dec  bc                                          ; $7348: $0b
	dec  bc                                          ; $7349: $0b
	dec  bc                                          ; $734a: $0b
	dec  bc                                          ; $734b: $0b
	dec  bc                                          ; $734c: $0b
	dec  bc                                          ; $734d: $0b
	dec  bc                                          ; $734e: $0b
	dec  hl                                          ; $734f: $2b
	dec  bc                                          ; $7350: $0b
	dec  bc                                          ; $7351: $0b
	dec  bc                                          ; $7352: $0b
	dec  bc                                          ; $7353: $0b
	dec  bc                                          ; $7354: $0b
	dec  bc                                          ; $7355: $0b
	dec  bc                                          ; $7356: $0b
	dec  hl                                          ; $7357: $2b
	dec  bc                                          ; $7358: $0b
	dec  bc                                          ; $7359: $0b
	dec  bc                                          ; $735a: $0b
	dec  bc                                          ; $735b: $0b
	dec  bc                                          ; $735c: $0b
	dec  bc                                          ; $735d: $0b
	dec  bc                                          ; $735e: $0b
	dec  hl                                          ; $735f: $2b
	dec  bc                                          ; $7360: $0b
	dec  bc                                          ; $7361: $0b
	dec  bc                                          ; $7362: $0b
	dec  bc                                          ; $7363: $0b
	dec  bc                                          ; $7364: $0b
	dec  bc                                          ; $7365: $0b
	dec  bc                                          ; $7366: $0b
	dec  hl                                          ; $7367: $2b
	ld   c, e                                        ; $7368: $4b
	ld   c, e                                        ; $7369: $4b
	dec  bc                                          ; $736a: $0b
	dec  bc                                          ; $736b: $0b
	ld   c, e                                        ; $736c: $4b
	dec  bc                                          ; $736d: $0b
	dec  bc                                          ; $736e: $0b
	ld   l, e                                        ; $736f: $6b
	cp   h                                           ; $7370: $bc
	cp   l                                           ; $7371: $bd
	or   b                                           ; $7372: $b0
	or   c                                           ; $7373: $b1
	cp   l                                           ; $7374: $bd
	or   d                                           ; $7375: $b2
	or   e                                           ; $7376: $b3
	cp   h                                           ; $7377: $bc
	call z, $c0cd                                    ; $7378: $cc $cd $c0
	pop  bc                                          ; $737b: $c1
	call $c3c2                                       ; $737c: $cd $c2 $c3
	call z, $cdcc                                    ; $737f: $cc $cc $cd
	or   h                                           ; $7382: $b4
	or   l                                           ; $7383: $b5
	call $b7b6                                       ; $7384: $cd $b6 $b7
	call z, $cdcc                                    ; $7387: $cc $cc $cd
	call nz, $cdc5                                   ; $738a: $c4 $c5 $cd
	add  $c7                                         ; $738d: $c6 $c7
	call z, $cdcc                                    ; $738f: $cc $cc $cd
	cp   b                                           ; $7392: $b8
	cp   c                                           ; $7393: $b9
	call $bbba                                       ; $7394: $cd $ba $bb
	call z, $bdbc                                    ; $7397: $cc $bc $bd
	ret  z                                           ; $739a: $c8

	ret                                              ; $739b: $c9


	cp   l                                           ; $739c: $bd
	jp   z, $bccb                                    ; $739d: $ca $cb $bc

	dec  bc                                          ; $73a0: $0b
	dec  bc                                          ; $73a1: $0b
	dec  bc                                          ; $73a2: $0b
	dec  bc                                          ; $73a3: $0b
	dec  bc                                          ; $73a4: $0b
	dec  bc                                          ; $73a5: $0b
	dec  bc                                          ; $73a6: $0b
	dec  bc                                          ; $73a7: $0b
	dec  bc                                          ; $73a8: $0b
	dec  bc                                          ; $73a9: $0b
	dec  bc                                          ; $73aa: $0b
	dec  bc                                          ; $73ab: $0b
	dec  bc                                          ; $73ac: $0b
	dec  bc                                          ; $73ad: $0b
	dec  bc                                          ; $73ae: $0b
	dec  bc                                          ; $73af: $0b
	dec  bc                                          ; $73b0: $0b
	dec  bc                                          ; $73b1: $0b
	dec  bc                                          ; $73b2: $0b
	dec  bc                                          ; $73b3: $0b
	dec  bc                                          ; $73b4: $0b
	dec  bc                                          ; $73b5: $0b
	dec  bc                                          ; $73b6: $0b
	dec  hl                                          ; $73b7: $2b
	dec  bc                                          ; $73b8: $0b
	dec  bc                                          ; $73b9: $0b
	dec  bc                                          ; $73ba: $0b
	dec  bc                                          ; $73bb: $0b
	dec  bc                                          ; $73bc: $0b
	dec  bc                                          ; $73bd: $0b
	dec  bc                                          ; $73be: $0b
	dec  hl                                          ; $73bf: $2b
	dec  bc                                          ; $73c0: $0b
	dec  bc                                          ; $73c1: $0b
	dec  bc                                          ; $73c2: $0b
	dec  bc                                          ; $73c3: $0b
	dec  bc                                          ; $73c4: $0b
	dec  bc                                          ; $73c5: $0b
	dec  bc                                          ; $73c6: $0b
	dec  hl                                          ; $73c7: $2b
	ld   c, e                                        ; $73c8: $4b
	ld   c, e                                        ; $73c9: $4b
	dec  bc                                          ; $73ca: $0b
	dec  bc                                          ; $73cb: $0b
	dec  bc                                          ; $73cc: $0b
	dec  bc                                          ; $73cd: $0b
	dec  bc                                          ; $73ce: $0b
	ld   l, e                                        ; $73cf: $6b
	ret  nc                                          ; $73d0: $d0

	pop  de                                          ; $73d1: $d1
	jp   nc, $d4d3                                   ; $73d2: $d2 $d3 $d4

	push de                                          ; $73d5: $d5
	sub  $d7                                         ; $73d6: $d6 $d7
	ldh  [$e1], a                                    ; $73d8: $e0 $e1
	ldh  [c], a                                      ; $73da: $e2
	db   $e3                                         ; $73db: $e3
	db   $e4                                         ; $73dc: $e4
	push hl                                          ; $73dd: $e5
	and  $e7                                         ; $73de: $e6 $e7
	call z, $d8cd                                    ; $73e0: $cc $cd $d8
	reti                                             ; $73e3: $d9


	call $dbda                                       ; $73e4: $cd $da $db
	call z, $cdcc                                    ; $73e7: $cc $cc $cd
	add  sp, -$17                                    ; $73ea: $e8 $e9
	call $ebea                                       ; $73ec: $cd $ea $eb
	call z, $cdcc                                    ; $73ef: $cc $cc $cd
	call c, $dedd                                    ; $73f2: $dc $dd $de
	rst  JumpTable                                         ; $73f5: $df
	cp   [hl]                                        ; $73f6: $be
	call z, $bdbc                                    ; $73f7: $cc $bc $bd
	db   $ec                                         ; $73fa: $ec
	db   $ed                                         ; $73fb: $ed
	xor  $ef                                         ; $73fc: $ee $ef
	adc  $bc                                         ; $73fe: $ce $bc
	dec  c                                           ; $7400: $0d
	dec  c                                           ; $7401: $0d
	dec  c                                           ; $7402: $0d
	dec  c                                           ; $7403: $0d
	dec  c                                           ; $7404: $0d
	dec  c                                           ; $7405: $0d
	dec  c                                           ; $7406: $0d
	dec  c                                           ; $7407: $0d
	dec  c                                           ; $7408: $0d
	dec  c                                           ; $7409: $0d
	dec  c                                           ; $740a: $0d
	dec  c                                           ; $740b: $0d
	dec  c                                           ; $740c: $0d
	dec  c                                           ; $740d: $0d
	dec  c                                           ; $740e: $0d
	dec  c                                           ; $740f: $0d
	dec  c                                           ; $7410: $0d
	dec  c                                           ; $7411: $0d
	dec  c                                           ; $7412: $0d
	dec  c                                           ; $7413: $0d
	dec  c                                           ; $7414: $0d
	dec  c                                           ; $7415: $0d
	dec  c                                           ; $7416: $0d
	dec  c                                           ; $7417: $0d
	dec  c                                           ; $7418: $0d
	dec  c                                           ; $7419: $0d
	dec  c                                           ; $741a: $0d
	dec  c                                           ; $741b: $0d
	dec  c                                           ; $741c: $0d
	dec  c                                           ; $741d: $0d
	dec  c                                           ; $741e: $0d
	dec  c                                           ; $741f: $0d
	dec  c                                           ; $7420: $0d
	dec  c                                           ; $7421: $0d
	dec  c                                           ; $7422: $0d
	dec  c                                           ; $7423: $0d
	dec  c                                           ; $7424: $0d
	dec  c                                           ; $7425: $0d
	dec  c                                           ; $7426: $0d
	dec  c                                           ; $7427: $0d
	dec  c                                           ; $7428: $0d
	dec  c                                           ; $7429: $0d
	dec  c                                           ; $742a: $0d
	dec  c                                           ; $742b: $0d
	dec  c                                           ; $742c: $0d
	dec  c                                           ; $742d: $0d
	dec  c                                           ; $742e: $0d
	dec  c                                           ; $742f: $0d
	ld   b, h                                        ; $7430: $44
	ld   b, [hl]                                     ; $7431: $46
	jr   nz, jr_01e_7455                             ; $7432: $20 $21

	ld   b, [hl]                                     ; $7434: $46
	ld   [hl+], a                                    ; $7435: $22
	inc  hl                                          ; $7436: $23
	ld   b, l                                        ; $7437: $45
	ld   b, a                                        ; $7438: $47
	add  hl, sp                                      ; $7439: $39
	jr   nc, jr_01e_746d                             ; $743a: $30 $31

	add  hl, sp                                      ; $743c: $39
	ld   [hl-], a                                    ; $743d: $32
	inc  sp                                          ; $743e: $33
	ld   d, a                                        ; $743f: $57
	ld   b, a                                        ; $7440: $47
	add  hl, sp                                      ; $7441: $39
	inc  h                                           ; $7442: $24
	dec  h                                           ; $7443: $25
	add  hl, sp                                      ; $7444: $39
	ld   h, $27                                      ; $7445: $26 $27
	ld   d, a                                        ; $7447: $57
	ld   b, a                                        ; $7448: $47
	add  hl, sp                                      ; $7449: $39
	inc  [hl]                                        ; $744a: $34
	dec  [hl]                                        ; $744b: $35
	add  hl, sp                                      ; $744c: $39
	ld   [hl], $37                                   ; $744d: $36 $37
	ld   d, a                                        ; $744f: $57
	ld   b, a                                        ; $7450: $47
	add  hl, sp                                      ; $7451: $39
	ld   b, b                                        ; $7452: $40
	ld   b, c                                        ; $7453: $41
	add  hl, sp                                      ; $7454: $39

jr_01e_7455:
	ld   b, d                                        ; $7455: $42
	ld   b, e                                        ; $7456: $43
	ld   d, a                                        ; $7457: $57
	ld   d, h                                        ; $7458: $54
	ld   d, [hl]                                     ; $7459: $56
	ld   d, b                                        ; $745a: $50
	ld   d, c                                        ; $745b: $51
	ld   d, [hl]                                     ; $745c: $56
	ld   d, d                                        ; $745d: $52
	ld   d, e                                        ; $745e: $53
	ld   d, l                                        ; $745f: $55
	dec  c                                           ; $7460: $0d
	dec  c                                           ; $7461: $0d
	dec  c                                           ; $7462: $0d
	dec  c                                           ; $7463: $0d
	dec  c                                           ; $7464: $0d
	dec  c                                           ; $7465: $0d
	dec  c                                           ; $7466: $0d
	dec  c                                           ; $7467: $0d
	dec  c                                           ; $7468: $0d
	dec  c                                           ; $7469: $0d
	dec  c                                           ; $746a: $0d
	dec  c                                           ; $746b: $0d
	dec  c                                           ; $746c: $0d

jr_01e_746d:
	dec  c                                           ; $746d: $0d
	dec  c                                           ; $746e: $0d
	dec  c                                           ; $746f: $0d
	dec  c                                           ; $7470: $0d
	dec  c                                           ; $7471: $0d
	dec  c                                           ; $7472: $0d
	dec  c                                           ; $7473: $0d
	dec  c                                           ; $7474: $0d
	dec  c                                           ; $7475: $0d
	dec  c                                           ; $7476: $0d
	dec  c                                           ; $7477: $0d
	dec  c                                           ; $7478: $0d
	dec  c                                           ; $7479: $0d
	dec  c                                           ; $747a: $0d
	dec  c                                           ; $747b: $0d
	dec  c                                           ; $747c: $0d
	dec  c                                           ; $747d: $0d
	dec  c                                           ; $747e: $0d
	dec  c                                           ; $747f: $0d
	dec  c                                           ; $7480: $0d
	dec  c                                           ; $7481: $0d
	dec  c                                           ; $7482: $0d
	dec  c                                           ; $7483: $0d
	dec  c                                           ; $7484: $0d
	dec  c                                           ; $7485: $0d
	dec  c                                           ; $7486: $0d
	dec  c                                           ; $7487: $0d
	dec  c                                           ; $7488: $0d
	dec  c                                           ; $7489: $0d
	dec  c                                           ; $748a: $0d
	dec  c                                           ; $748b: $0d
	dec  c                                           ; $748c: $0d
	dec  c                                           ; $748d: $0d
	dec  c                                           ; $748e: $0d
	dec  c                                           ; $748f: $0d
	jr   jr_01e_74ab                                 ; $7490: $18 $19

	ld   a, [de]                                     ; $7492: $1a
	dec  de                                          ; $7493: $1b
	inc  e                                           ; $7494: $1c
	dec  e                                           ; $7495: $1d
	ld   e, $1f                                      ; $7496: $1e $1f
	jr   z, @+$2b                                    ; $7498: $28 $29

	ld   a, [hl+]                                    ; $749a: $2a
	dec  hl                                          ; $749b: $2b
	inc  l                                           ; $749c: $2c
	dec  l                                           ; $749d: $2d
	ld   l, $2f                                      ; $749e: $2e $2f
	jr   c, @+$3b                                    ; $74a0: $38 $39

	ld   a, [hl-]                                    ; $74a2: $3a
	dec  sp                                          ; $74a3: $3b
	inc  a                                           ; $74a4: $3c
	dec  a                                           ; $74a5: $3d
	ld   a, $3f                                      ; $74a6: $3e $3f
	ld   c, b                                        ; $74a8: $48
	ld   c, c                                        ; $74a9: $49
	ld   c, d                                        ; $74aa: $4a

jr_01e_74ab:
	ld   c, e                                        ; $74ab: $4b
	ld   c, h                                        ; $74ac: $4c
	ld   c, l                                        ; $74ad: $4d
	ld   c, [hl]                                     ; $74ae: $4e
	ld   c, a                                        ; $74af: $4f
	ld   e, b                                        ; $74b0: $58
	ld   e, c                                        ; $74b1: $59
	ld   e, d                                        ; $74b2: $5a
	ld   e, e                                        ; $74b3: $5b
	ld   e, h                                        ; $74b4: $5c
	ld   e, l                                        ; $74b5: $5d
	ld   e, [hl]                                     ; $74b6: $5e
	ld   e, a                                        ; $74b7: $5f
	ld   l, b                                        ; $74b8: $68
	ld   l, c                                        ; $74b9: $69
	ld   l, d                                        ; $74ba: $6a
	ld   l, e                                        ; $74bb: $6b
	ld   l, h                                        ; $74bc: $6c
	ld   l, l                                        ; $74bd: $6d
	ld   l, [hl]                                     ; $74be: $6e
	ld   l, a                                        ; $74bf: $6f
	ld   c, $0e                                      ; $74c0: $0e $0e
	ld   c, $0e                                      ; $74c2: $0e $0e
	ld   c, $0e                                      ; $74c4: $0e $0e
	ld   c, $2e                                      ; $74c6: $0e $2e
	ld   c, $0e                                      ; $74c8: $0e $0e
	ld   c, $0e                                      ; $74ca: $0e $0e
	ld   c, $0e                                      ; $74cc: $0e $0e
	ld   c, $2e                                      ; $74ce: $0e $2e
	ld   c, $0e                                      ; $74d0: $0e $0e
	ld   c, $0e                                      ; $74d2: $0e $0e
	ld   c, $0e                                      ; $74d4: $0e $0e
	ld   c, $2e                                      ; $74d6: $0e $2e
	ld   c, $0e                                      ; $74d8: $0e $0e
	ld   c, $0e                                      ; $74da: $0e $0e
	ld   c, $0e                                      ; $74dc: $0e $0e
	ld   c, $2e                                      ; $74de: $0e $2e
	ld   c, $0e                                      ; $74e0: $0e $0e
	ld   c, $0e                                      ; $74e2: $0e $0e
	ld   c, $0e                                      ; $74e4: $0e $0e
	ld   c, $2e                                      ; $74e6: $0e $2e
	ld   c, [hl]                                     ; $74e8: $4e
	ld   c, [hl]                                     ; $74e9: $4e
	ld   c, $0e                                      ; $74ea: $0e $0e
	ld   c, $0e                                      ; $74ec: $0e $0e
	ld   c, $6e                                      ; $74ee: $0e $6e
	ld   l, l                                        ; $74f0: $6d
	ld   l, [hl]                                     ; $74f1: $6e
	ld   h, b                                        ; $74f2: $60
	ld   h, c                                        ; $74f3: $61
	ld   l, [hl]                                     ; $74f4: $6e
	ld   h, d                                        ; $74f5: $62
	ld   h, e                                        ; $74f6: $63
	ld   l, l                                        ; $74f7: $6d
	ld   a, l                                        ; $74f8: $7d
	ld   a, [hl]                                     ; $74f9: $7e
	ld   [hl], b                                     ; $74fa: $70
	ld   [hl], c                                     ; $74fb: $71
	ld   a, [hl]                                     ; $74fc: $7e
	ld   [hl], d                                     ; $74fd: $72
	ld   [hl], e                                     ; $74fe: $73
	ld   a, l                                        ; $74ff: $7d
	ld   a, l                                        ; $7500: $7d
	ld   a, [hl]                                     ; $7501: $7e
	ld   h, h                                        ; $7502: $64
	ld   h, l                                        ; $7503: $65
	ld   a, [hl]                                     ; $7504: $7e
	ld   h, [hl]                                     ; $7505: $66
	ld   h, a                                        ; $7506: $67
	ld   a, l                                        ; $7507: $7d
	ld   a, l                                        ; $7508: $7d
	ld   a, [hl]                                     ; $7509: $7e
	ld   [hl], h                                     ; $750a: $74
	ld   [hl], l                                     ; $750b: $75
	ld   a, [hl]                                     ; $750c: $7e
	halt                                             ; $750d: $76
	ld   [hl], a                                     ; $750e: $77
	ld   a, l                                        ; $750f: $7d
	ld   a, l                                        ; $7510: $7d
	ld   a, [hl]                                     ; $7511: $7e
	ld   l, b                                        ; $7512: $68
	ld   l, c                                        ; $7513: $69
	ld   l, d                                        ; $7514: $6a
	ld   l, e                                        ; $7515: $6b
	ld   l, h                                        ; $7516: $6c
	ld   a, l                                        ; $7517: $7d
	ld   l, l                                        ; $7518: $6d
	ld   l, [hl]                                     ; $7519: $6e
	ld   a, b                                        ; $751a: $78
	ld   a, c                                        ; $751b: $79
	ld   a, d                                        ; $751c: $7a
	ld   a, e                                        ; $751d: $7b
	ld   a, h                                        ; $751e: $7c
	ld   l, l                                        ; $751f: $6d
	ld   c, $0e                                      ; $7520: $0e $0e
	ld   c, $0e                                      ; $7522: $0e $0e
	ld   c, $0e                                      ; $7524: $0e $0e
	ld   c, $0e                                      ; $7526: $0e $0e
	ld   c, $0e                                      ; $7528: $0e $0e
	ld   c, $0e                                      ; $752a: $0e $0e
	ld   c, $0e                                      ; $752c: $0e $0e
	ld   c, $0e                                      ; $752e: $0e $0e
	ld   c, $0e                                      ; $7530: $0e $0e
	ld   c, $0e                                      ; $7532: $0e $0e
	ld   c, $0e                                      ; $7534: $0e $0e
	ld   c, $0e                                      ; $7536: $0e $0e
	ld   c, $0e                                      ; $7538: $0e $0e
	ld   c, $0e                                      ; $753a: $0e $0e
	ld   c, $0e                                      ; $753c: $0e $0e
	ld   c, $0e                                      ; $753e: $0e $0e
	ld   c, $0e                                      ; $7540: $0e $0e
	ld   c, $0e                                      ; $7542: $0e $0e
	ld   c, $0e                                      ; $7544: $0e $0e
	ld   c, $0e                                      ; $7546: $0e $0e
	ld   c, $0e                                      ; $7548: $0e $0e
	ld   c, $0e                                      ; $754a: $0e $0e
	ld   c, $0e                                      ; $754c: $0e $0e
	ld   c, $0e                                      ; $754e: $0e $0e
	nop                                              ; $7550: $00
	ld   bc, $0302                                   ; $7551: $01 $02 $03
	inc  b                                           ; $7554: $04
	dec  b                                           ; $7555: $05
	ld   b, $07                                      ; $7556: $06 $07
	db   $10                                         ; $7558: $10
	ld   de, $1312                                   ; $7559: $11 $12 $13
	inc  d                                           ; $755c: $14
	dec  d                                           ; $755d: $15
	ld   d, $17                                      ; $755e: $16 $17
	inc  hl                                          ; $7560: $23
	ld   [hl+], a                                    ; $7561: $22
	ld   [$2209], sp                                 ; $7562: $08 $09 $22
	ld   a, [bc]                                     ; $7565: $0a
	dec  bc                                          ; $7566: $0b
	inc  h                                           ; $7567: $24
	inc  hl                                          ; $7568: $23
	ld   [hl+], a                                    ; $7569: $22
	jr   jr_01e_7585                                 ; $756a: $18 $19

	ld   [hl+], a                                    ; $756c: $22
	ld   a, [de]                                     ; $756d: $1a
	dec  de                                          ; $756e: $1b
	inc  h                                           ; $756f: $24
	inc  hl                                          ; $7570: $23
	ld   [hl+], a                                    ; $7571: $22
	inc  c                                           ; $7572: $0c
	dec  c                                           ; $7573: $0d
	ld   c, $0f                                      ; $7574: $0e $0f
	jr   nz, jr_01e_759c                             ; $7576: $20 $24

	dec  h                                           ; $7578: $25
	daa                                              ; $7579: $27
	inc  e                                           ; $757a: $1c
	dec  e                                           ; $757b: $1d
	ld   e, $1f                                      ; $757c: $1e $1f
	ld   hl, $0726                                   ; $757e: $21 $26 $07
	rlca                                             ; $7581: $07
	rlca                                             ; $7582: $07
	rlca                                             ; $7583: $07
	rlca                                             ; $7584: $07

jr_01e_7585:
	rlca                                             ; $7585: $07
	rlca                                             ; $7586: $07
	daa                                              ; $7587: $27
	rlca                                             ; $7588: $07
	dec  b                                           ; $7589: $05
	rlca                                             ; $758a: $07
	rlca                                             ; $758b: $07
	dec  b                                           ; $758c: $05
	rlca                                             ; $758d: $07
	rlca                                             ; $758e: $07
	daa                                              ; $758f: $27
	rlca                                             ; $7590: $07
	dec  b                                           ; $7591: $05
	rlca                                             ; $7592: $07
	rlca                                             ; $7593: $07
	dec  b                                           ; $7594: $05
	rlca                                             ; $7595: $07
	rlca                                             ; $7596: $07
	daa                                              ; $7597: $27
	rlca                                             ; $7598: $07
	dec  b                                           ; $7599: $05
	rlca                                             ; $759a: $07
	rlca                                             ; $759b: $07

jr_01e_759c:
	dec  b                                           ; $759c: $05
	rlca                                             ; $759d: $07
	rlca                                             ; $759e: $07
	daa                                              ; $759f: $27
	rlca                                             ; $75a0: $07
	dec  b                                           ; $75a1: $05
	rlca                                             ; $75a2: $07
	rlca                                             ; $75a3: $07
	dec  b                                           ; $75a4: $05
	rlca                                             ; $75a5: $07
	rlca                                             ; $75a6: $07
	daa                                              ; $75a7: $27
	ld   b, a                                        ; $75a8: $47
	ld   b, a                                        ; $75a9: $47
	rlca                                             ; $75aa: $07
	rlca                                             ; $75ab: $07
	ld   b, a                                        ; $75ac: $47
	rlca                                             ; $75ad: $07
	rlca                                             ; $75ae: $07
	ld   h, a                                        ; $75af: $67
	ld   b, b                                        ; $75b0: $40
	ld   b, d                                        ; $75b1: $42
	ld   b, e                                        ; $75b2: $43
	ld   b, h                                        ; $75b3: $44
	ld   b, d                                        ; $75b4: $42
	ld   b, l                                        ; $75b5: $45
	ld   b, [hl]                                     ; $75b6: $46
	ld   b, b                                        ; $75b7: $40
	ld   d, b                                        ; $75b8: $50
	ld   d, d                                        ; $75b9: $52
	ld   d, e                                        ; $75ba: $53
	ld   d, h                                        ; $75bb: $54
	ld   d, d                                        ; $75bc: $52
	ld   d, l                                        ; $75bd: $55
	ld   d, [hl]                                     ; $75be: $56
	ld   d, b                                        ; $75bf: $50
	ld   d, b                                        ; $75c0: $50
	ld   d, d                                        ; $75c1: $52
	ld   b, a                                        ; $75c2: $47
	ld   c, b                                        ; $75c3: $48
	ld   d, d                                        ; $75c4: $52
	ld   c, c                                        ; $75c5: $49
	ld   c, d                                        ; $75c6: $4a
	ld   d, b                                        ; $75c7: $50
	ld   d, b                                        ; $75c8: $50
	ld   d, d                                        ; $75c9: $52
	ld   d, a                                        ; $75ca: $57
	ld   e, b                                        ; $75cb: $58
	ld   d, d                                        ; $75cc: $52
	ld   e, c                                        ; $75cd: $59
	ld   e, d                                        ; $75ce: $5a
	ld   d, b                                        ; $75cf: $50
	ld   d, b                                        ; $75d0: $50
	ld   d, d                                        ; $75d1: $52
	ld   c, e                                        ; $75d2: $4b
	ld   c, h                                        ; $75d3: $4c
	ld   d, d                                        ; $75d4: $52
	ld   c, l                                        ; $75d5: $4d
	ld   c, [hl]                                     ; $75d6: $4e
	ld   d, b                                        ; $75d7: $50
	ld   b, b                                        ; $75d8: $40
	ld   b, d                                        ; $75d9: $42
	ld   e, e                                        ; $75da: $5b
	ld   e, h                                        ; $75db: $5c
	ld   b, d                                        ; $75dc: $42
	ld   e, l                                        ; $75dd: $5d
	ld   e, [hl]                                     ; $75de: $5e
	ld   b, b                                        ; $75df: $40
	rlca                                             ; $75e0: $07
	rlca                                             ; $75e1: $07
	rlca                                             ; $75e2: $07
	rlca                                             ; $75e3: $07
	rlca                                             ; $75e4: $07
	rlca                                             ; $75e5: $07
	rlca                                             ; $75e6: $07
	rlca                                             ; $75e7: $07
	rlca                                             ; $75e8: $07
	ld   b, $06                                      ; $75e9: $06 $06
	rlca                                             ; $75eb: $07
	ld   b, $07                                      ; $75ec: $06 $07
	ld   b, $07                                      ; $75ee: $06 $07
	rlca                                             ; $75f0: $07
	dec  b                                           ; $75f1: $05
	ld   b, $07                                      ; $75f2: $06 $07
	dec  b                                           ; $75f4: $05
	rlca                                             ; $75f5: $07
	ld   b, $27                                      ; $75f6: $06 $27
	rlca                                             ; $75f8: $07
	dec  b                                           ; $75f9: $05
	ld   b, $07                                      ; $75fa: $06 $07
	dec  b                                           ; $75fc: $05
	ld   b, $06                                      ; $75fd: $06 $06
	daa                                              ; $75ff: $27
	rlca                                             ; $7600: $07
	dec  b                                           ; $7601: $05
	ld   b, $06                                      ; $7602: $06 $06
	rlca                                             ; $7604: $07
	rlca                                             ; $7605: $07
	rlca                                             ; $7606: $07
	daa                                              ; $7607: $27
	ld   b, a                                        ; $7608: $47
	ld   b, a                                        ; $7609: $47
	rlca                                             ; $760a: $07
	rlca                                             ; $760b: $07
	rlca                                             ; $760c: $07
	rlca                                             ; $760d: $07
	rlca                                             ; $760e: $07
	ld   h, a                                        ; $760f: $67
	ld   h, b                                        ; $7610: $60
	ld   h, c                                        ; $7611: $61
	ld   h, d                                        ; $7612: $62
	ld   h, e                                        ; $7613: $63
	ld   h, h                                        ; $7614: $64
	ld   h, l                                        ; $7615: $65
	ld   h, [hl]                                     ; $7616: $66
	ld   h, a                                        ; $7617: $67
	ld   [hl], b                                     ; $7618: $70
	ld   [hl], c                                     ; $7619: $71
	ld   [hl], d                                     ; $761a: $72
	ld   [hl], e                                     ; $761b: $73
	ld   [hl], h                                     ; $761c: $74
	ld   [hl], l                                     ; $761d: $75
	halt                                             ; $761e: $76
	ld   [hl], a                                     ; $761f: $77
	ld   d, b                                        ; $7620: $50
	ld   d, d                                        ; $7621: $52
	ld   l, b                                        ; $7622: $68
	ld   l, c                                        ; $7623: $69
	ld   d, d                                        ; $7624: $52
	ld   l, d                                        ; $7625: $6a
	ld   l, e                                        ; $7626: $6b
	ld   d, b                                        ; $7627: $50
	ld   d, b                                        ; $7628: $50
	ld   d, d                                        ; $7629: $52
	ld   a, b                                        ; $762a: $78
	ld   a, c                                        ; $762b: $79
	ld   d, d                                        ; $762c: $52
	ld   a, d                                        ; $762d: $7a
	ld   a, e                                        ; $762e: $7b
	ld   d, b                                        ; $762f: $50
	ld   d, b                                        ; $7630: $50
	ld   d, d                                        ; $7631: $52
	ld   l, h                                        ; $7632: $6c
	ld   l, l                                        ; $7633: $6d
	ld   l, [hl]                                     ; $7634: $6e
	ld   l, a                                        ; $7635: $6f
	ld   c, a                                        ; $7636: $4f
	ld   d, b                                        ; $7637: $50
	ld   b, b                                        ; $7638: $40
	ld   b, c                                        ; $7639: $41
	ld   a, h                                        ; $763a: $7c
	ld   a, l                                        ; $763b: $7d
	ld   a, [hl]                                     ; $763c: $7e
	ld   a, a                                        ; $763d: $7f
	ld   e, a                                        ; $763e: $5f
	ld   b, b                                        ; $763f: $40
	add  hl, bc                                      ; $7640: $09
	add  hl, bc                                      ; $7641: $09
	adc  c                                           ; $7642: $89
	adc  c                                           ; $7643: $89
	adc  c                                           ; $7644: $89
	adc  c                                           ; $7645: $89
	adc  c                                           ; $7646: $89
	xor  c                                           ; $7647: $a9
	add  hl, bc                                      ; $7648: $09
	add  hl, bc                                      ; $7649: $09
	adc  c                                           ; $764a: $89
	adc  c                                           ; $764b: $89
	adc  c                                           ; $764c: $89
	adc  c                                           ; $764d: $89
	adc  c                                           ; $764e: $89
	xor  c                                           ; $764f: $a9
	add  hl, bc                                      ; $7650: $09
	add  hl, bc                                      ; $7651: $09
	adc  c                                           ; $7652: $89
	adc  c                                           ; $7653: $89
	adc  c                                           ; $7654: $89
	adc  c                                           ; $7655: $89
	adc  c                                           ; $7656: $89
	xor  c                                           ; $7657: $a9
	add  hl, bc                                      ; $7658: $09
	add  hl, bc                                      ; $7659: $09
	adc  c                                           ; $765a: $89
	adc  c                                           ; $765b: $89
	adc  c                                           ; $765c: $89
	adc  c                                           ; $765d: $89
	adc  c                                           ; $765e: $89
	xor  c                                           ; $765f: $a9
	add  hl, bc                                      ; $7660: $09
	add  hl, bc                                      ; $7661: $09
	adc  c                                           ; $7662: $89
	adc  c                                           ; $7663: $89
	adc  c                                           ; $7664: $89
	adc  c                                           ; $7665: $89
	adc  c                                           ; $7666: $89
	xor  c                                           ; $7667: $a9
	ld   c, c                                        ; $7668: $49
	ld   c, c                                        ; $7669: $49
	adc  c                                           ; $766a: $89
	adc  c                                           ; $766b: $89
	ret                                              ; $766c: $c9


	adc  c                                           ; $766d: $89
	adc  c                                           ; $766e: $89
	jp   hl                                          ; $766f: $e9


	cp   b                                           ; $7670: $b8
	xor  b                                           ; $7671: $a8
	and  b                                           ; $7672: $a0
	and  c                                           ; $7673: $a1
	xor  b                                           ; $7674: $a8
	and  d                                           ; $7675: $a2
	and  e                                           ; $7676: $a3
	cp   b                                           ; $7677: $b8
	ret  z                                           ; $7678: $c8

	xor  c                                           ; $7679: $a9
	or   b                                           ; $767a: $b0
	or   c                                           ; $767b: $b1
	xor  c                                           ; $767c: $a9
	or   d                                           ; $767d: $b2
	or   e                                           ; $767e: $b3
	ret  z                                           ; $767f: $c8

	ret  z                                           ; $7680: $c8

	xor  c                                           ; $7681: $a9
	and  h                                           ; $7682: $a4
	and  l                                           ; $7683: $a5
	xor  c                                           ; $7684: $a9
	and  [hl]                                        ; $7685: $a6
	and  a                                           ; $7686: $a7
	ret  z                                           ; $7687: $c8

	ret  z                                           ; $7688: $c8

	xor  c                                           ; $7689: $a9
	or   h                                           ; $768a: $b4
	or   l                                           ; $768b: $b5
	xor  c                                           ; $768c: $a9
	or   [hl]                                        ; $768d: $b6
	or   a                                           ; $768e: $b7
	ret  z                                           ; $768f: $c8

	ret  z                                           ; $7690: $c8

	xor  c                                           ; $7691: $a9
	ret  nz                                          ; $7692: $c0

	pop  bc                                          ; $7693: $c1
	xor  c                                           ; $7694: $a9
	call nz, $c8c5                                   ; $7695: $c4 $c5 $c8
	cp   b                                           ; $7698: $b8
	xor  b                                           ; $7699: $a8
	jp   nz, $a8c3                                   ; $769a: $c2 $c3 $a8

	add  $c7                                         ; $769d: $c6 $c7
	cp   b                                           ; $769f: $b8
	adc  c                                           ; $76a0: $89
	adc  c                                           ; $76a1: $89
	adc  c                                           ; $76a2: $89
	adc  c                                           ; $76a3: $89
	adc  c                                           ; $76a4: $89
	adc  c                                           ; $76a5: $89
	adc  c                                           ; $76a6: $89
	adc  c                                           ; $76a7: $89
	adc  c                                           ; $76a8: $89
	adc  c                                           ; $76a9: $89
	adc  c                                           ; $76aa: $89
	adc  c                                           ; $76ab: $89
	adc  c                                           ; $76ac: $89
	adc  c                                           ; $76ad: $89
	adc  c                                           ; $76ae: $89
	adc  c                                           ; $76af: $89
	add  hl, bc                                      ; $76b0: $09
	add  hl, bc                                      ; $76b1: $09
	adc  c                                           ; $76b2: $89
	adc  c                                           ; $76b3: $89
	adc  c                                           ; $76b4: $89
	adc  c                                           ; $76b5: $89
	adc  c                                           ; $76b6: $89
	xor  c                                           ; $76b7: $a9
	add  hl, bc                                      ; $76b8: $09
	add  hl, bc                                      ; $76b9: $09
	adc  c                                           ; $76ba: $89
	adc  c                                           ; $76bb: $89
	adc  c                                           ; $76bc: $89
	adc  c                                           ; $76bd: $89
	adc  c                                           ; $76be: $89
	xor  c                                           ; $76bf: $a9
	add  hl, bc                                      ; $76c0: $09
	add  hl, bc                                      ; $76c1: $09
	adc  c                                           ; $76c2: $89
	adc  c                                           ; $76c3: $89
	adc  c                                           ; $76c4: $89
	adc  c                                           ; $76c5: $89
	adc  c                                           ; $76c6: $89
	xor  c                                           ; $76c7: $a9
	add  hl, bc                                      ; $76c8: $09
	add  hl, bc                                      ; $76c9: $09
	adc  c                                           ; $76ca: $89
	adc  c                                           ; $76cb: $89
	adc  c                                           ; $76cc: $89
	adc  c                                           ; $76cd: $89
	adc  c                                           ; $76ce: $89
	xor  c                                           ; $76cf: $a9
	ret  nc                                          ; $76d0: $d0

	pop  de                                          ; $76d1: $d1
	jp   nc, $d4d3                                   ; $76d2: $d2 $d3 $d4

	push de                                          ; $76d5: $d5
	sub  $d7                                         ; $76d6: $d6 $d7
	ldh  [$e1], a                                    ; $76d8: $e0 $e1
	ldh  [c], a                                      ; $76da: $e2
	db   $e3                                         ; $76db: $e3
	db   $e4                                         ; $76dc: $e4
	push hl                                          ; $76dd: $e5
	and  $e7                                         ; $76de: $e6 $e7
	di                                               ; $76e0: $f3
	ldh  a, [c]                                      ; $76e1: $f2
	ret  c                                           ; $76e2: $d8

	reti                                             ; $76e3: $d9


	ldh  a, [c]                                      ; $76e4: $f2
	jp   c, $f3db                                    ; $76e5: $da $db $f3

	di                                               ; $76e8: $f3
	ldh  a, [c]                                      ; $76e9: $f2
	add  sp, -$17                                    ; $76ea: $e8 $e9
	ldh  a, [c]                                      ; $76ec: $f2
	ld   [$f3eb], a                                  ; $76ed: $ea $eb $f3
	di                                               ; $76f0: $f3
	ldh  a, [c]                                      ; $76f1: $f2
	call c, $dedd                                    ; $76f2: $dc $dd $de
	rst  JumpTable                                         ; $76f5: $df
	ldh  a, [$f3]                                    ; $76f6: $f0 $f3
	db   $f4                                         ; $76f8: $f4
	push af                                          ; $76f9: $f5
	db   $ec                                         ; $76fa: $ec
	db   $ed                                         ; $76fb: $ed
	xor  $ef                                         ; $76fc: $ee $ef
	pop  af                                          ; $76fe: $f1
	db   $f4                                         ; $76ff: $f4
	rrca                                             ; $7700: $0f
	rrca                                             ; $7701: $0f
	rrca                                             ; $7702: $0f
	rrca                                             ; $7703: $0f
	rrca                                             ; $7704: $0f
	rrca                                             ; $7705: $0f
	rrca                                             ; $7706: $0f
	cpl                                              ; $7707: $2f
	rrca                                             ; $7708: $0f
	rrca                                             ; $7709: $0f
	rrca                                             ; $770a: $0f
	rrca                                             ; $770b: $0f
	rrca                                             ; $770c: $0f
	rrca                                             ; $770d: $0f
	rrca                                             ; $770e: $0f
	cpl                                              ; $770f: $2f
	rrca                                             ; $7710: $0f
	rrca                                             ; $7711: $0f
	rrca                                             ; $7712: $0f
	rrca                                             ; $7713: $0f
	rrca                                             ; $7714: $0f
	rrca                                             ; $7715: $0f
	rrca                                             ; $7716: $0f
	cpl                                              ; $7717: $2f
	rrca                                             ; $7718: $0f
	rrca                                             ; $7719: $0f
	rrca                                             ; $771a: $0f
	rrca                                             ; $771b: $0f
	rrca                                             ; $771c: $0f
	rrca                                             ; $771d: $0f
	rrca                                             ; $771e: $0f
	cpl                                              ; $771f: $2f
	rrca                                             ; $7720: $0f
	rrca                                             ; $7721: $0f
	rrca                                             ; $7722: $0f
	rrca                                             ; $7723: $0f
	rrca                                             ; $7724: $0f
	rrca                                             ; $7725: $0f
	rrca                                             ; $7726: $0f
	cpl                                              ; $7727: $2f
	ld   c, a                                        ; $7728: $4f
	ld   c, a                                        ; $7729: $4f
	rrca                                             ; $772a: $0f
	rrca                                             ; $772b: $0f
	ld   c, a                                        ; $772c: $4f
	rrca                                             ; $772d: $0f
	rrca                                             ; $772e: $0f
	ld   l, a                                        ; $772f: $6f
	ld   b, b                                        ; $7730: $40
	ld   b, c                                        ; $7731: $41
	ld   b, d                                        ; $7732: $42
	ld   b, e                                        ; $7733: $43
	ld   b, c                                        ; $7734: $41
	ld   b, h                                        ; $7735: $44
	ld   b, l                                        ; $7736: $45
	ld   b, b                                        ; $7737: $40
	ld   d, b                                        ; $7738: $50
	ld   d, c                                        ; $7739: $51
	ld   d, d                                        ; $773a: $52
	ld   d, e                                        ; $773b: $53
	ld   d, c                                        ; $773c: $51
	ld   d, h                                        ; $773d: $54
	ld   d, l                                        ; $773e: $55
	ld   d, b                                        ; $773f: $50
	ld   d, b                                        ; $7740: $50
	ld   d, c                                        ; $7741: $51
	ld   b, [hl]                                     ; $7742: $46
	ld   b, a                                        ; $7743: $47
	ld   d, c                                        ; $7744: $51
	ld   c, b                                        ; $7745: $48
	ld   c, c                                        ; $7746: $49
	ld   d, b                                        ; $7747: $50
	ld   d, b                                        ; $7748: $50
	ld   d, c                                        ; $7749: $51
	ld   d, [hl]                                     ; $774a: $56
	ld   d, a                                        ; $774b: $57
	ld   d, c                                        ; $774c: $51
	ld   e, b                                        ; $774d: $58
	ld   e, c                                        ; $774e: $59
	ld   d, b                                        ; $774f: $50
	ld   d, b                                        ; $7750: $50
	ld   d, c                                        ; $7751: $51
	ld   c, d                                        ; $7752: $4a
	ld   c, e                                        ; $7753: $4b
	ld   d, c                                        ; $7754: $51
	ld   c, h                                        ; $7755: $4c
	ld   c, l                                        ; $7756: $4d
	ld   d, b                                        ; $7757: $50
	ld   b, b                                        ; $7758: $40
	ld   b, c                                        ; $7759: $41
	ld   e, d                                        ; $775a: $5a
	ld   e, e                                        ; $775b: $5b
	ld   b, c                                        ; $775c: $41
	ld   e, h                                        ; $775d: $5c
	ld   e, l                                        ; $775e: $5d
	ld   b, b                                        ; $775f: $40
	rrca                                             ; $7760: $0f
	rrca                                             ; $7761: $0f
	rrca                                             ; $7762: $0f
	rrca                                             ; $7763: $0f
	rrca                                             ; $7764: $0f
	rrca                                             ; $7765: $0f
	rrca                                             ; $7766: $0f
	rrca                                             ; $7767: $0f
	rrca                                             ; $7768: $0f
	rrca                                             ; $7769: $0f
	rrca                                             ; $776a: $0f
	rrca                                             ; $776b: $0f
	rrca                                             ; $776c: $0f
	rrca                                             ; $776d: $0f
	rrca                                             ; $776e: $0f
	rrca                                             ; $776f: $0f
	rrca                                             ; $7770: $0f
	rrca                                             ; $7771: $0f
	rrca                                             ; $7772: $0f
	rrca                                             ; $7773: $0f
	rrca                                             ; $7774: $0f
	rrca                                             ; $7775: $0f
	rrca                                             ; $7776: $0f
	cpl                                              ; $7777: $2f
	rrca                                             ; $7778: $0f
	rrca                                             ; $7779: $0f
	rrca                                             ; $777a: $0f
	rrca                                             ; $777b: $0f
	rrca                                             ; $777c: $0f
	rrca                                             ; $777d: $0f
	rrca                                             ; $777e: $0f
	cpl                                              ; $777f: $2f
	rrca                                             ; $7780: $0f
	rrca                                             ; $7781: $0f
	rrca                                             ; $7782: $0f
	rrca                                             ; $7783: $0f
	rrca                                             ; $7784: $0f
	rrca                                             ; $7785: $0f
	rrca                                             ; $7786: $0f
	cpl                                              ; $7787: $2f
	ld   c, a                                        ; $7788: $4f
	ld   c, a                                        ; $7789: $4f
	rrca                                             ; $778a: $0f
	rrca                                             ; $778b: $0f
	rrca                                             ; $778c: $0f
	rrca                                             ; $778d: $0f
	rrca                                             ; $778e: $0f
	ld   l, a                                        ; $778f: $6f
	ld   h, b                                        ; $7790: $60
	ld   h, c                                        ; $7791: $61
	ld   h, d                                        ; $7792: $62
	ld   h, e                                        ; $7793: $63
	ld   h, h                                        ; $7794: $64
	ld   h, l                                        ; $7795: $65
	ld   h, [hl]                                     ; $7796: $66
	ld   h, a                                        ; $7797: $67
	ld   [hl], b                                     ; $7798: $70
	ld   [hl], c                                     ; $7799: $71
	ld   [hl], d                                     ; $779a: $72
	ld   [hl], e                                     ; $779b: $73
	ld   [hl], h                                     ; $779c: $74
	ld   [hl], l                                     ; $779d: $75
	halt                                             ; $779e: $76
	ld   [hl], a                                     ; $779f: $77
	ld   d, b                                        ; $77a0: $50
	ld   d, c                                        ; $77a1: $51
	ld   l, b                                        ; $77a2: $68
	ld   l, c                                        ; $77a3: $69
	ld   d, c                                        ; $77a4: $51
	ld   l, d                                        ; $77a5: $6a
	ld   l, e                                        ; $77a6: $6b
	ld   d, b                                        ; $77a7: $50
	ld   d, b                                        ; $77a8: $50
	ld   d, c                                        ; $77a9: $51
	ld   a, b                                        ; $77aa: $78
	ld   a, c                                        ; $77ab: $79
	ld   d, c                                        ; $77ac: $51
	ld   a, d                                        ; $77ad: $7a
	ld   a, e                                        ; $77ae: $7b
	ld   d, b                                        ; $77af: $50
	ld   d, b                                        ; $77b0: $50
	ld   d, c                                        ; $77b1: $51
	ld   l, h                                        ; $77b2: $6c
	ld   l, l                                        ; $77b3: $6d
	ld   l, [hl]                                     ; $77b4: $6e
	ld   l, a                                        ; $77b5: $6f
	ld   c, [hl]                                     ; $77b6: $4e
	ld   d, b                                        ; $77b7: $50
	ld   b, b                                        ; $77b8: $40
	ld   b, c                                        ; $77b9: $41
	ld   a, h                                        ; $77ba: $7c
	ld   a, l                                        ; $77bb: $7d
	ld   a, [hl]                                     ; $77bc: $7e
	ld   a, a                                        ; $77bd: $7f
	ld   e, [hl]                                     ; $77be: $5e
	ld   b, b                                        ; $77bf: $40
	inc  hl                                          ; $77c0: $23
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	inc  bc                                          ; $77c3: $03
	add  b                                           ; $77c4: $80
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	ld   b, $8d                                      ; $77c7: $06 $8d
	nop                                              ; $77c9: $00
	ld   bc, $0401                                   ; $77ca: $01 $01 $04
	adc  c                                           ; $77cd: $89
	nop                                              ; $77ce: $00
	ld   [bc], a                                     ; $77cf: $02
	inc  bc                                          ; $77d0: $03
	nop                                              ; $77d1: $00
	ld   b, $8e                                      ; $77d2: $06 $8e
	nop                                              ; $77d4: $00
	ld   bc, $0401                                   ; $77d5: $01 $01 $04
	adc  c                                           ; $77d8: $89
	nop                                              ; $77d9: $00
	ld   [bc], a                                     ; $77da: $02
	inc  bc                                          ; $77db: $03
	nop                                              ; $77dc: $00
	ld   b, $8e                                      ; $77dd: $06 $8e
	nop                                              ; $77df: $00
	ld   bc, $0401                                   ; $77e0: $01 $01 $04
	adc  c                                           ; $77e3: $89
	nop                                              ; $77e4: $00
	ld   bc, $0603                                   ; $77e5: $01 $03 $06
	adc  a                                           ; $77e8: $8f
	nop                                              ; $77e9: $00
	ld   bc, $0401                                   ; $77ea: $01 $01 $04
	adc  c                                           ; $77ed: $89
	nop                                              ; $77ee: $00
	ld   bc, $0603                                   ; $77ef: $01 $03 $06
	adc  a                                           ; $77f2: $8f
	nop                                              ; $77f3: $00
	ld   bc, $0401                                   ; $77f4: $01 $01 $04
	adc  c                                           ; $77f7: $89
	nop                                              ; $77f8: $00
	ld   bc, $0603                                   ; $77f9: $01 $03 $06
	adc  a                                           ; $77fc: $8f
	nop                                              ; $77fd: $00
	ld   bc, $0401                                   ; $77fe: $01 $01 $04
	adc  c                                           ; $7801: $89
	nop                                              ; $7802: $00
	ld   bc, $0603                                   ; $7803: $01 $03 $06
	adc  l                                           ; $7806: $8d
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	ld   b, $80                                      ; $7809: $06 $80
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	inc  bc                                          ; $780d: $03
	adc  c                                           ; $780e: $89
	nop                                              ; $780f: $00
	ld   bc, $0104                              ; $7810: $01 $04 $01
	adc  d                                           ; $7813: $8a
	nop                                              ; $7814: $00
	ld   bc, $0006                                   ; $7815: $01 $06 $00
	rra                                              ; $7818: $1f
	nop                                              ; $7819: $00
	inc  bc                                          ; $781a: $03
	db   $10                                         ; $781b: $10
	ld   bc, $5603                                   ; $781c: $01 $03 $56
	adc  l                                           ; $781f: $8d
	nop                                              ; $7820: $00
	ld   bc, $3543                                   ; $7821: $01 $43 $35
	adc  c                                           ; $7824: $89
	nop                                              ; $7825: $00
	ld   [bc], a                                     ; $7826: $02
	ld   hl, $5007                                   ; $7827: $21 $07 $50
	adc  [hl]                                        ; $782a: $8e
	nop                                              ; $782b: $00
	ld   bc, $3543                                   ; $782c: $01 $43 $35
	adc  c                                           ; $782f: $89
	nop                                              ; $7830: $00
	ld   [bc], a                                     ; $7831: $02
	ld   bc, $5325                                   ; $7832: $01 $25 $53
	adc  [hl]                                        ; $7835: $8e
	nop                                              ; $7836: $00
	ld   bc, $3542                                   ; $7837: $01 $42 $35
	adc  c                                           ; $783a: $89
	nop                                              ; $783b: $00
	ld   bc, $7206                                   ; $783c: $01 $06 $72
	adc  a                                           ; $783f: $8f
	nop                                              ; $7840: $00
	ld   bc, $3541                                   ; $7841: $01 $41 $35
	adc  c                                           ; $7844: $89
	nop                                              ; $7845: $00
	ld   bc, $6712                                   ; $7846: $01 $12 $67
	adc  a                                           ; $7849: $8f
	nop                                              ; $784a: $00
	ld   bc, $3540                                   ; $784b: $01 $40 $35
	adc  c                                           ; $784e: $89
	nop                                              ; $784f: $00
	ld   bc, $6812                                   ; $7850: $01 $12 $68
	adc  a                                           ; $7853: $8f
	nop                                              ; $7854: $00
	ld   bc, $354f                                   ; $7855: $01 $4f $35
	adc  c                                           ; $7858: $89
	nop                                              ; $7859: $00
	ld   bc, $6912                                   ; $785a: $01 $12 $69
	adc  l                                           ; $785d: $8d
	nop                                              ; $785e: $00
	inc  bc                                          ; $785f: $03
	ld   e, h                                        ; $7860: $5c
	ld   [hl], $07                                   ; $7861: $36 $07
	ld   d, $89                                      ; $7863: $16 $89
	nop                                              ; $7865: $00
	ld   bc, $6810                                   ; $7866: $01 $10 $68
	adc  d                                           ; $7869: $8a
	nop                                              ; $786a: $00
	ld   bc, $036f                                   ; $786b: $01 $6f $03
	rst  $38                                         ; $786e: $ff
	ld   [hl], e                                     ; $786f: $73
	sub  $19                                         ; $7870: $d6 $19
	di                                               ; $7872: $f3
	ld   [bc], a                                     ; $7873: $02
	add  sp, $18                                     ; $7874: $e8 $18
	rst  $38                                         ; $7876: $ff
	ld   [hl], e                                     ; $7877: $73
	rst  $38                                         ; $7878: $ff
	rrca                                             ; $7879: $0f
	di                                               ; $787a: $f3
	ld   [bc], a                                     ; $787b: $02
	cpl                                              ; $787c: $2f
	ld   bc, $73ff                                   ; $787d: $01 $ff $73
	ld   e, a                                        ; $7880: $5f
	inc  de                                          ; $7881: $13
	add  hl, sp                                      ; $7882: $39
	ld   [bc], a                                     ; $7883: $02
	cpl                                              ; $7884: $2f
	ld   bc, $5fff                                   ; $7885: $01 $ff $5f
	ld   e, a                                        ; $7888: $5f
	inc  de                                          ; $7889: $13
	add  hl, sp                                      ; $788a: $39
	ld   [bc], a                                     ; $788b: $02
	cpl                                              ; $788c: $2f
	ld   bc, $6b5f                                   ; $788d: $01 $5f $6b
	db   $ed                                         ; $7890: $ed
	ld   l, a                                        ; $7891: $6f
	sbc  a                                           ; $7892: $9f
	dec  hl                                          ; $7893: $2b
	sbc  $00                                         ; $7894: $de $00
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	nop                                              ; $78ad: $00
	ldh  [$03], a                                    ; $78ae: $e0 $03
	rst  $38                                         ; $78b0: $ff
	ld   a, a                                        ; $78b1: $7f
	add  $30                                         ; $78b2: $c6 $30
	jr   jr_01e_78b6                                 ; $78b4: $18 $00

jr_01e_78b6:
	rst  $38                                         ; $78b6: $ff
	ld   h, a                                        ; $78b7: $67
	add  hl, sp                                      ; $78b8: $39
	ld   a, [de]                                     ; $78b9: $1a
	ld   d, [hl]                                     ; $78ba: $56
	inc  bc                                          ; $78bb: $03
	ld   c, e                                        ; $78bc: $4b
	add  hl, de                                      ; $78bd: $19
	rst  $38                                         ; $78be: $ff
	ld   h, a                                        ; $78bf: $67
	rst  $38                                         ; $78c0: $ff
	dec  de                                          ; $78c1: $1b
	ld   d, [hl]                                     ; $78c2: $56
	inc  bc                                          ; $78c3: $03
	sub  d                                           ; $78c4: $92
	ld   bc, $67ff                                   ; $78c5: $01 $ff $67
	cp   a                                           ; $78c8: $bf
	inc  de                                          ; $78c9: $13
	sbc  h                                           ; $78ca: $9c
	ld   [bc], a                                     ; $78cb: $02
	sub  d                                           ; $78cc: $92
	ld   bc, $5fff                                   ; $78cd: $01 $ff $5f
	cp   a                                           ; $78d0: $bf
	inc  de                                          ; $78d1: $13
	sbc  h                                           ; $78d2: $9c
	ld   [bc], a                                     ; $78d3: $02
	sub  d                                           ; $78d4: $92
	ld   bc, $6b5f                                   ; $78d5: $01 $5f $6b
	ldh  a, [c]                                      ; $78d8: $f2
	ld   l, a                                        ; $78d9: $6f
	rst  $38                                         ; $78da: $ff
	scf                                              ; $78db: $37
	ld   e, a                                        ; $78dc: $5f
	ld   bc, $0000                                   ; $78dd: $01 $00 $00
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
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
	nop                                              ; $78ee: $00
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	ldh  [$03], a                                    ; $78f6: $e0 $03
	rst  $38                                         ; $78f8: $ff
	ld   a, a                                        ; $78f9: $7f
	add  $30                                         ; $78fa: $c6 $30
	jr   jr_01e_78fe                                 ; $78fc: $18 $00

jr_01e_78fe:
	rst  $38                                         ; $78fe: $ff
	ld   e, e                                        ; $78ff: $5b
	sbc  h                                           ; $7900: $9c
	ld   a, [de]                                     ; $7901: $1a
	cp   c                                           ; $7902: $b9
	inc  bc                                          ; $7903: $03
	xor  [hl]                                        ; $7904: $ae
	add  hl, de                                      ; $7905: $19
	rst  $38                                         ; $7906: $ff
	ld   e, e                                        ; $7907: $5b
	rst  $38                                         ; $7908: $ff
	daa                                              ; $7909: $27
	cp   c                                           ; $790a: $b9
	inc  bc                                          ; $790b: $03
	push af                                          ; $790c: $f5
	ld   bc, $5bff                                   ; $790d: $01 $ff $5b
	rst  $38                                         ; $7910: $ff
	rra                                              ; $7911: $1f
	rst  $38                                         ; $7912: $ff
	ld   [bc], a                                     ; $7913: $02
	push af                                          ; $7914: $f5
	ld   bc, $5fff                                   ; $7915: $01 $ff $5f
	rst  $38                                         ; $7918: $ff
	rra                                              ; $7919: $1f
	rst  $38                                         ; $791a: $ff
	ld   [bc], a                                     ; $791b: $02
	push af                                          ; $791c: $f5
	ld   bc, $6b5f                                   ; $791d: $01 $5f $6b
	rst  $30                                         ; $7920: $f7
	ld   l, a                                        ; $7921: $6f
	rst  $38                                         ; $7922: $ff
	ld   b, e                                        ; $7923: $43
	rst  JumpTable                                         ; $7924: $df
	ld   bc, $0000                                   ; $7925: $01 $00 $00
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	nop                                              ; $792d: $00
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	ldh  [$03], a                                    ; $793e: $e0 $03
	rst  $38                                         ; $7940: $ff
	ld   a, a                                        ; $7941: $7f
	add  $30                                         ; $7942: $c6 $30
	jr   jr_01e_7946                                 ; $7944: $18 $00

jr_01e_7946:
	rst  $38                                         ; $7946: $ff
	ld   c, a                                        ; $7947: $4f
	rst  $38                                         ; $7948: $ff
	ld   a, [de]                                     ; $7949: $1a
	db   $fc                                         ; $794a: $fc
	inc  bc                                          ; $794b: $03
	ld   de, $ff1a                                   ; $794c: $11 $1a $ff
	ld   c, a                                        ; $794f: $4f
	rst  $38                                         ; $7950: $ff
	inc  sp                                          ; $7951: $33
	db   $fc                                         ; $7952: $fc
	inc  bc                                          ; $7953: $03
	ld   e, b                                        ; $7954: $58
	ld   [bc], a                                     ; $7955: $02
	rst  $38                                         ; $7956: $ff
	ld   c, a                                        ; $7957: $4f
	rst  $38                                         ; $7958: $ff
	dec  hl                                          ; $7959: $2b
	ld   e, a                                        ; $795a: $5f
	inc  bc                                          ; $795b: $03
	ld   e, b                                        ; $795c: $58
	ld   [bc], a                                     ; $795d: $02
	rst  $38                                         ; $795e: $ff
	ld   e, a                                        ; $795f: $5f
	rst  $38                                         ; $7960: $ff
	scf                                              ; $7961: $37
	ld   e, a                                        ; $7962: $5f
	inc  bc                                          ; $7963: $03
	ld   e, b                                        ; $7964: $58
	ld   [bc], a                                     ; $7965: $02
	ld   e, a                                        ; $7966: $5f
	ld   l, e                                        ; $7967: $6b
	ei                                               ; $7968: $fb
	ld   l, a                                        ; $7969: $6f
	rst  $38                                         ; $796a: $ff
	ld   c, a                                        ; $796b: $4f
	ld   e, a                                        ; $796c: $5f
	ld   [bc], a                                     ; $796d: $02
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	nop                                              ; $7972: $00
	nop                                              ; $7973: $00
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
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	ldh  [$03], a                                    ; $7986: $e0 $03
	rst  $38                                         ; $7988: $ff
	ld   a, a                                        ; $7989: $7f
	add  $30                                         ; $798a: $c6 $30
	jr   jr_01e_798e                                 ; $798c: $18 $00

jr_01e_798e:
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	nop                                              ; $7998: $00
	nop                                              ; $7999: $00
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	nop                                              ; $79ac: $00
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	nop                                              ; $79b1: $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	rst  $38                                         ; $79b6: $ff
	ld   a, a                                        ; $79b7: $7f
	ld   h, e                                        ; $79b8: $63
	inc  d                                           ; $79b9: $14
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	ld   e, a                                        ; $79bc: $5f
	ld   h, [hl]                                     ; $79bd: $66
	rst  $38                                         ; $79be: $ff
	ld   h, c                                        ; $79bf: $61
	ld   h, e                                        ; $79c0: $63
	inc  d                                           ; $79c1: $14
	rst  $38                                         ; $79c2: $ff
	inc  bc                                          ; $79c3: $03
	nop                                              ; $79c4: $00
	nop                                              ; $79c5: $00
	rst  $38                                         ; $79c6: $ff
	ld   a, a                                        ; $79c7: $7f
	ld   h, e                                        ; $79c8: $63
	inc  d                                           ; $79c9: $14
	rst  $38                                         ; $79ca: $ff
	inc  bc                                          ; $79cb: $03
	ld   sp, $0046                                   ; $79cc: $31 $46 $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	nop                                              ; $79f2: $00
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	rst  $38                                         ; $79f6: $ff
	ld   a, a                                        ; $79f7: $7f
	ld   h, e                                        ; $79f8: $63
	inc  d                                           ; $79f9: $14
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	jr   z, jr_01e_7a37                              ; $79fc: $28 $39

	and  $30                                         ; $79fe: $e6 $30
	ld   h, e                                        ; $7a00: $63
	inc  d                                           ; $7a01: $14
	rst  $38                                         ; $7a02: $ff
	inc  bc                                          ; $7a03: $03
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	rst  $38                                         ; $7a06: $ff
	ld   a, a                                        ; $7a07: $7f
	ld   h, e                                        ; $7a08: $63
	inc  d                                           ; $7a09: $14
	rst  $38                                         ; $7a0a: $ff
	inc  bc                                          ; $7a0b: $03
	ld   sp, $0046                                   ; $7a0c: $31 $46 $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00

jr_01e_7a18:
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	nop                                              ; $7a27: $00
	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	rst  $38                                         ; $7a2e: $ff
	ld   a, a                                        ; $7a2f: $7f
	cp   a                                           ; $7a30: $bf
	ld   d, l                                        ; $7a31: $55
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	inc  e                                           ; $7a34: $1c
	inc  d                                           ; $7a35: $14
	rst  $38                                         ; $7a36: $ff

jr_01e_7a37:
	ld   a, a                                        ; $7a37: $7f
	xor  $53                                         ; $7a38: $ee $53
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	ccf                                              ; $7a3c: $3f
	ld   [bc], a                                     ; $7a3d: $02
	rst  $38                                         ; $7a3e: $ff
	ld   a, a                                        ; $7a3f: $7f
	xor  $53                                         ; $7a40: $ee $53
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	inc  e                                           ; $7a44: $1c
	inc  d                                           ; $7a45: $14
	xor  $53                                         ; $7a46: $ee $53
	cp   a                                           ; $7a48: $bf
	ld   d, l                                        ; $7a49: $55
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	inc  e                                           ; $7a4c: $1c
	inc  d                                           ; $7a4d: $14


Palettes_ResetData::
	db $ff, $7f, $3f, $03, $ce, $39, $00, $00
	db $ff, $7f, $1f, $00, $ce, $39, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	
	db $f7, $7f, $ff, $7f, $fd, $28, $83, $14
	db $ff, $5f, $ff, $7f, $9f, $36, $83, $14
	db $5f, $6b, $ff, $7f, $dd, $1e, $62, $1c
	db $7d, $7e, $ff, $7f, $ff, $7f, $62, $61
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00



	dec  bc                                          ; $7ace: $0b
	dec  bc                                          ; $7acf: $0b
	dec  bc                                          ; $7ad0: $0b
	dec  bc                                          ; $7ad1: $0b
	dec  bc                                          ; $7ad2: $0b
	dec  bc                                          ; $7ad3: $0b
	dec  bc                                          ; $7ad4: $0b
	dec  hl                                          ; $7ad5: $2b
	dec  bc                                          ; $7ad6: $0b
	dec  bc                                          ; $7ad7: $0b
	dec  bc                                          ; $7ad8: $0b
	dec  bc                                          ; $7ad9: $0b
	dec  bc                                          ; $7ada: $0b
	dec  bc                                          ; $7adb: $0b
	dec  bc                                          ; $7adc: $0b
	dec  hl                                          ; $7add: $2b
	dec  bc                                          ; $7ade: $0b
	dec  bc                                          ; $7adf: $0b
	dec  bc                                          ; $7ae0: $0b
	dec  bc                                          ; $7ae1: $0b
	dec  bc                                          ; $7ae2: $0b
	dec  bc                                          ; $7ae3: $0b
	dec  bc                                          ; $7ae4: $0b
	dec  hl                                          ; $7ae5: $2b
	ld   c, e                                        ; $7ae6: $4b
	ld   c, e                                        ; $7ae7: $4b
	dec  bc                                          ; $7ae8: $0b
	dec  bc                                          ; $7ae9: $0b
	ld   c, e                                        ; $7aea: $4b
	dec  bc                                          ; $7aeb: $0b
	dec  bc                                          ; $7aec: $0b
	ld   l, e                                        ; $7aed: $6b
	cp   h                                           ; $7aee: $bc
	cp   l                                           ; $7aef: $bd
	or   b                                           ; $7af0: $b0
	or   c                                           ; $7af1: $b1
	cp   l                                           ; $7af2: $bd
	or   d                                           ; $7af3: $b2
	or   e                                           ; $7af4: $b3
	cp   h                                           ; $7af5: $bc
	call z, $c0cd                                    ; $7af6: $cc $cd $c0
	pop  bc                                          ; $7af9: $c1
	call $c3c2                                       ; $7afa: $cd $c2 $c3
	call z, $cdcc                                    ; $7afd: $cc $cc $cd
	cp   b                                           ; $7b00: $b8
	cp   c                                           ; $7b01: $b9
	call $bbba                                       ; $7b02: $cd $ba $bb
	call z, $bdbc                                    ; $7b05: $cc $bc $bd
	ret  z                                           ; $7b08: $c8

	ret                                              ; $7b09: $c9


	cp   l                                           ; $7b0a: $bd
	jp   z, $bccb                                    ; $7b0b: $ca $cb $bc

	dec  c                                           ; $7b0e: $0d
	dec  c                                           ; $7b0f: $0d
	dec  c                                           ; $7b10: $0d
	dec  c                                           ; $7b11: $0d
	dec  c                                           ; $7b12: $0d
	dec  c                                           ; $7b13: $0d
	dec  c                                           ; $7b14: $0d
	dec  c                                           ; $7b15: $0d
	dec  c                                           ; $7b16: $0d
	dec  c                                           ; $7b17: $0d
	dec  c                                           ; $7b18: $0d
	dec  c                                           ; $7b19: $0d
	dec  c                                           ; $7b1a: $0d
	dec  c                                           ; $7b1b: $0d
	dec  c                                           ; $7b1c: $0d
	dec  c                                           ; $7b1d: $0d
	dec  c                                           ; $7b1e: $0d
	dec  c                                           ; $7b1f: $0d
	dec  c                                           ; $7b20: $0d
	dec  c                                           ; $7b21: $0d
	dec  c                                           ; $7b22: $0d
	dec  c                                           ; $7b23: $0d
	dec  c                                           ; $7b24: $0d
	dec  c                                           ; $7b25: $0d
	dec  c                                           ; $7b26: $0d
	dec  c                                           ; $7b27: $0d
	dec  c                                           ; $7b28: $0d
	dec  c                                           ; $7b29: $0d
	dec  c                                           ; $7b2a: $0d
	dec  c                                           ; $7b2b: $0d
	dec  c                                           ; $7b2c: $0d
	dec  c                                           ; $7b2d: $0d
	ld   b, h                                        ; $7b2e: $44
	ld   b, [hl]                                     ; $7b2f: $46
	jr   nz, @+$23                                   ; $7b30: $20 $21

	ld   b, [hl]                                     ; $7b32: $46
	ld   [hl+], a                                    ; $7b33: $22
	inc  hl                                          ; $7b34: $23
	ld   b, l                                        ; $7b35: $45
	ld   b, a                                        ; $7b36: $47
	add  hl, sp                                      ; $7b37: $39
	jr   nc, @+$33                                   ; $7b38: $30 $31

	add  hl, sp                                      ; $7b3a: $39
	ld   [hl-], a                                    ; $7b3b: $32
	inc  sp                                          ; $7b3c: $33
	ld   d, a                                        ; $7b3d: $57
	ld   b, a                                        ; $7b3e: $47
	add  hl, sp                                      ; $7b3f: $39
	ld   b, b                                        ; $7b40: $40
	ld   b, c                                        ; $7b41: $41
	add  hl, sp                                      ; $7b42: $39
	ld   b, d                                        ; $7b43: $42
	ld   b, e                                        ; $7b44: $43
	ld   d, a                                        ; $7b45: $57
	ld   d, h                                        ; $7b46: $54
	ld   d, [hl]                                     ; $7b47: $56
	ld   d, b                                        ; $7b48: $50
	ld   d, c                                        ; $7b49: $51
	ld   d, [hl]                                     ; $7b4a: $56
	ld   d, d                                        ; $7b4b: $52
	ld   d, e                                        ; $7b4c: $53
	ld   d, l                                        ; $7b4d: $55
	ld   c, $0e                                      ; $7b4e: $0e $0e
	ld   c, $0e                                      ; $7b50: $0e $0e
	ld   c, $0e                                      ; $7b52: $0e $0e
	ld   c, $2e                                      ; $7b54: $0e $2e
	ld   c, $0e                                      ; $7b56: $0e $0e
	ld   c, $0e                                      ; $7b58: $0e $0e
	ld   c, $0e                                      ; $7b5a: $0e $0e
	ld   c, $2e                                      ; $7b5c: $0e $2e
	ld   c, $0e                                      ; $7b5e: $0e $0e
	ld   c, $0e                                      ; $7b60: $0e $0e
	ld   c, $0e                                      ; $7b62: $0e $0e
	ld   c, $2e                                      ; $7b64: $0e $2e
	ld   c, [hl]                                     ; $7b66: $4e
	ld   c, [hl]                                     ; $7b67: $4e
	ld   c, $0e                                      ; $7b68: $0e $0e
	ld   c, $0e                                      ; $7b6a: $0e $0e
	ld   c, $6e                                      ; $7b6c: $0e $6e
	ld   l, l                                        ; $7b6e: $6d
	ld   l, [hl]                                     ; $7b6f: $6e
	ld   h, b                                        ; $7b70: $60
	ld   h, c                                        ; $7b71: $61
	ld   l, [hl]                                     ; $7b72: $6e
	ld   h, d                                        ; $7b73: $62
	ld   h, e                                        ; $7b74: $63
	ld   l, l                                        ; $7b75: $6d
	ld   a, l                                        ; $7b76: $7d
	ld   a, [hl]                                     ; $7b77: $7e
	ld   [hl], b                                     ; $7b78: $70
	ld   [hl], c                                     ; $7b79: $71
	ld   a, [hl]                                     ; $7b7a: $7e
	ld   [hl], d                                     ; $7b7b: $72
	ld   [hl], e                                     ; $7b7c: $73
	ld   a, l                                        ; $7b7d: $7d
	ld   a, l                                        ; $7b7e: $7d
	ld   a, [hl]                                     ; $7b7f: $7e
	ld   l, b                                        ; $7b80: $68
	ld   l, c                                        ; $7b81: $69
	ld   l, d                                        ; $7b82: $6a
	ld   l, e                                        ; $7b83: $6b
	ld   l, h                                        ; $7b84: $6c
	ld   a, l                                        ; $7b85: $7d
	ld   l, l                                        ; $7b86: $6d
	ld   l, [hl]                                     ; $7b87: $6e
	ld   a, b                                        ; $7b88: $78
	ld   a, c                                        ; $7b89: $79
	ld   a, d                                        ; $7b8a: $7a
	ld   a, e                                        ; $7b8b: $7b
	ld   a, h                                        ; $7b8c: $7c
	ld   l, l                                        ; $7b8d: $6d
	rlca                                             ; $7b8e: $07
	rlca                                             ; $7b8f: $07
	rlca                                             ; $7b90: $07
	rlca                                             ; $7b91: $07
	rlca                                             ; $7b92: $07
	rlca                                             ; $7b93: $07
	rlca                                             ; $7b94: $07
	daa                                              ; $7b95: $27
	rlca                                             ; $7b96: $07
	dec  b                                           ; $7b97: $05
	rlca                                             ; $7b98: $07
	rlca                                             ; $7b99: $07
	dec  b                                           ; $7b9a: $05
	rlca                                             ; $7b9b: $07
	rlca                                             ; $7b9c: $07
	daa                                              ; $7b9d: $27
	rlca                                             ; $7b9e: $07
	dec  b                                           ; $7b9f: $05
	rlca                                             ; $7ba0: $07
	rlca                                             ; $7ba1: $07
	dec  b                                           ; $7ba2: $05
	rlca                                             ; $7ba3: $07
	rlca                                             ; $7ba4: $07
	daa                                              ; $7ba5: $27
	ld   b, a                                        ; $7ba6: $47
	ld   b, a                                        ; $7ba7: $47
	rlca                                             ; $7ba8: $07
	rlca                                             ; $7ba9: $07
	ld   b, a                                        ; $7baa: $47
	rlca                                             ; $7bab: $07
	rlca                                             ; $7bac: $07
	ld   h, a                                        ; $7bad: $67
	ld   b, b                                        ; $7bae: $40
	ld   b, d                                        ; $7baf: $42
	ld   b, e                                        ; $7bb0: $43
	ld   b, h                                        ; $7bb1: $44
	ld   b, d                                        ; $7bb2: $42
	ld   b, l                                        ; $7bb3: $45
	ld   b, [hl]                                     ; $7bb4: $46
	ld   b, b                                        ; $7bb5: $40
	ld   d, b                                        ; $7bb6: $50
	ld   d, d                                        ; $7bb7: $52
	ld   d, e                                        ; $7bb8: $53
	ld   d, h                                        ; $7bb9: $54
	ld   d, d                                        ; $7bba: $52
	ld   d, l                                        ; $7bbb: $55
	ld   d, [hl]                                     ; $7bbc: $56
	ld   d, b                                        ; $7bbd: $50
	ld   d, b                                        ; $7bbe: $50
	ld   d, d                                        ; $7bbf: $52
	ld   c, e                                        ; $7bc0: $4b
	ld   c, h                                        ; $7bc1: $4c
	ld   d, d                                        ; $7bc2: $52
	ld   c, l                                        ; $7bc3: $4d
	ld   c, [hl]                                     ; $7bc4: $4e
	ld   d, b                                        ; $7bc5: $50
	ld   b, b                                        ; $7bc6: $40
	ld   b, d                                        ; $7bc7: $42
	ld   e, e                                        ; $7bc8: $5b
	ld   e, h                                        ; $7bc9: $5c
	ld   b, d                                        ; $7bca: $42
	ld   e, l                                        ; $7bcb: $5d
	ld   e, [hl]                                     ; $7bcc: $5e
	ld   b, b                                        ; $7bcd: $40
	add  hl, bc                                      ; $7bce: $09
	add  hl, bc                                      ; $7bcf: $09
	adc  c                                           ; $7bd0: $89
	adc  c                                           ; $7bd1: $89
	adc  c                                           ; $7bd2: $89
	adc  c                                           ; $7bd3: $89
	adc  c                                           ; $7bd4: $89
	xor  c                                           ; $7bd5: $a9
	add  hl, bc                                      ; $7bd6: $09
	add  hl, bc                                      ; $7bd7: $09
	adc  c                                           ; $7bd8: $89
	adc  c                                           ; $7bd9: $89
	adc  c                                           ; $7bda: $89
	adc  c                                           ; $7bdb: $89
	adc  c                                           ; $7bdc: $89
	xor  c                                           ; $7bdd: $a9
	add  hl, bc                                      ; $7bde: $09
	add  hl, bc                                      ; $7bdf: $09
	adc  c                                           ; $7be0: $89
	adc  c                                           ; $7be1: $89
	adc  c                                           ; $7be2: $89
	adc  c                                           ; $7be3: $89
	adc  c                                           ; $7be4: $89
	xor  c                                           ; $7be5: $a9
	ld   c, c                                        ; $7be6: $49
	ld   c, c                                        ; $7be7: $49
	adc  c                                           ; $7be8: $89
	adc  c                                           ; $7be9: $89
	ret                                              ; $7bea: $c9


	adc  c                                           ; $7beb: $89
	adc  c                                           ; $7bec: $89
	jp   hl                                          ; $7bed: $e9


	cp   b                                           ; $7bee: $b8
	xor  b                                           ; $7bef: $a8
	and  b                                           ; $7bf0: $a0
	and  c                                           ; $7bf1: $a1
	xor  b                                           ; $7bf2: $a8
	and  d                                           ; $7bf3: $a2
	and  e                                           ; $7bf4: $a3
	cp   b                                           ; $7bf5: $b8
	ret  z                                           ; $7bf6: $c8

	xor  c                                           ; $7bf7: $a9
	or   b                                           ; $7bf8: $b0
	or   c                                           ; $7bf9: $b1
	xor  c                                           ; $7bfa: $a9
	or   d                                           ; $7bfb: $b2
	or   e                                           ; $7bfc: $b3
	ret  z                                           ; $7bfd: $c8

	ret  z                                           ; $7bfe: $c8

	xor  c                                           ; $7bff: $a9
	ret  nz                                          ; $7c00: $c0

	pop  bc                                          ; $7c01: $c1
	xor  c                                           ; $7c02: $a9
	call nz, $c8c5                                   ; $7c03: $c4 $c5 $c8
	cp   b                                           ; $7c06: $b8
	xor  b                                           ; $7c07: $a8
	jp   nz, $a8c3                                   ; $7c08: $c2 $c3 $a8

	add  $c7                                         ; $7c0b: $c6 $c7
	cp   b                                           ; $7c0d: $b8
	rrca                                             ; $7c0e: $0f
	rrca                                             ; $7c0f: $0f
	rrca                                             ; $7c10: $0f
	rrca                                             ; $7c11: $0f
	rrca                                             ; $7c12: $0f
	rrca                                             ; $7c13: $0f
	rrca                                             ; $7c14: $0f
	cpl                                              ; $7c15: $2f
	rrca                                             ; $7c16: $0f
	rrca                                             ; $7c17: $0f
	rrca                                             ; $7c18: $0f
	rrca                                             ; $7c19: $0f
	rrca                                             ; $7c1a: $0f
	rrca                                             ; $7c1b: $0f
	rrca                                             ; $7c1c: $0f
	cpl                                              ; $7c1d: $2f
	rrca                                             ; $7c1e: $0f
	rrca                                             ; $7c1f: $0f
	rrca                                             ; $7c20: $0f
	rrca                                             ; $7c21: $0f
	rrca                                             ; $7c22: $0f
	rrca                                             ; $7c23: $0f
	rrca                                             ; $7c24: $0f
	cpl                                              ; $7c25: $2f
	ld   c, a                                        ; $7c26: $4f
	ld   c, a                                        ; $7c27: $4f
	rrca                                             ; $7c28: $0f
	rrca                                             ; $7c29: $0f
	ld   c, a                                        ; $7c2a: $4f
	rrca                                             ; $7c2b: $0f
	rrca                                             ; $7c2c: $0f
	ld   l, a                                        ; $7c2d: $6f
	ld   b, b                                        ; $7c2e: $40
	ld   b, c                                        ; $7c2f: $41
	ld   b, d                                        ; $7c30: $42
	ld   b, e                                        ; $7c31: $43
	ld   b, c                                        ; $7c32: $41
	ld   b, h                                        ; $7c33: $44
	ld   b, l                                        ; $7c34: $45
	ld   b, b                                        ; $7c35: $40
	ld   d, b                                        ; $7c36: $50
	ld   d, c                                        ; $7c37: $51
	ld   d, d                                        ; $7c38: $52
	ld   d, e                                        ; $7c39: $53
	ld   d, c                                        ; $7c3a: $51
	ld   d, h                                        ; $7c3b: $54
	ld   d, l                                        ; $7c3c: $55
	ld   d, b                                        ; $7c3d: $50
	ld   d, b                                        ; $7c3e: $50
	ld   d, c                                        ; $7c3f: $51
	ld   c, d                                        ; $7c40: $4a
	ld   c, e                                        ; $7c41: $4b
	ld   d, c                                        ; $7c42: $51
	ld   c, h                                        ; $7c43: $4c
	ld   c, l                                        ; $7c44: $4d
	ld   d, b                                        ; $7c45: $50
	ld   b, b                                        ; $7c46: $40
	ld   b, c                                        ; $7c47: $41
	ld   e, d                                        ; $7c48: $5a
	ld   e, e                                        ; $7c49: $5b
	ld   b, c                                        ; $7c4a: $41
	ld   e, h                                        ; $7c4b: $5c
	ld   e, l                                        ; $7c4c: $5d
	ld   b, b                                        ; $7c4d: $40
	cp   a                                           ; $7c4e: $bf
	ld   [bc], a                                     ; $7c4f: $02
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	ld   d, d                                        ; $7c52: $52
	ld   bc, $437f                                   ; $7c53: $01 $7f $43
	dec  a                                           ; $7c56: $3d
	dec  hl                                          ; $7c57: $2b
	ld   a, a                                        ; $7c58: $7f
	ld   b, e                                        ; $7c59: $43
	ld   d, d                                        ; $7c5a: $52
	ld   bc, $02bf                                   ; $7c5b: $01 $bf $02
	nop                                              ; $7c5e: $00
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
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	rst  $38                                         ; $7c8e: $ff
	ld   a, a                                        ; $7c8f: $7f
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	rst  $38                                         ; $7c92: $ff
	inc  bc                                          ; $7c93: $03
	rst  $38                                         ; $7c94: $ff
	ld   [bc], a                                     ; $7c95: $02
	rst  $38                                         ; $7c96: $ff
	ld   a, a                                        ; $7c97: $7f
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	ldh  [$03], a                                    ; $7c9a: $e0 $03
	ld   [hl], e                                     ; $7c9c: $73
	ld   c, [hl]                                     ; $7c9d: $4e
	rst  $38                                         ; $7c9e: $ff
	ld   a, a                                        ; $7c9f: $7f
	ld   a, a                                        ; $7ca0: $7f
	cpl                                              ; $7ca1: $2f
	or   $00                                         ; $7ca2: $f6 $00
	ld   [hl+], a                                    ; $7ca4: $22
	stop                                             ; $7ca5: $10 $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	ld   de, $0800                                   ; $7cce: $11 $00 $08
	dec  e                                           ; $7cd1: $1d
	db   $ec                                         ; $7cd2: $ec
	adc  [hl]                                        ; $7cd3: $8e
	db   $dd                                         ; $7cd4: $dd
	ld   e, l                                        ; $7cd5: $5d
	cp   l                                           ; $7cd6: $bd
	sbc  l                                           ; $7cd7: $9d
	cp   e                                           ; $7cd8: $bb
	db   $e3                                         ; $7cd9: $e3
	add  c                                           ; $7cda: $81
	ld   a, d                                        ; $7cdb: $7a
	add  b                                           ; $7cdc: $80
	ld   a, [hl-]                                    ; $7cdd: $3a
	add  b                                           ; $7cde: $80
	ld   a, [de]                                     ; $7cdf: $1a
	inc  b                                           ; $7ce0: $04
	ld   a, d                                        ; $7ce1: $7a
	nop                                              ; $7ce2: $00
	ld   a, h                                        ; $7ce3: $7c
	ret  nz                                          ; $7ce4: $c0

	call nz, $ba80                                   ; $7ce5: $c4 $80 $ba
	add  hl, bc                                      ; $7ce8: $09
	ld   a, h                                        ; $7ce9: $7c
	ld   a, l                                        ; $7cea: $7d
	ldh  [c], a                                      ; $7ceb: $e2
	db   $eb                                         ; $7cec: $eb
	set  2, a                                        ; $7ced: $cb $d7
	push bc                                          ; $7cef: $c5
	pop  bc                                          ; $7cf0: $c1
	ret                                              ; $7cf1: $c9


	reti                                             ; $7cf2: $d9


	add  a                                           ; $7cf3: $87
	nop                                              ; $7cf4: $00
	ld   b, $80                                      ; $7cf5: $06 $80
	nop                                              ; $7cf7: $00
	jr   nz, jr_01e_7cfa                             ; $7cf8: $20 $00

jr_01e_7cfa:
	or   b                                           ; $7cfa: $b0
	and  b                                           ; $7cfb: $a0
	ld   c, a                                        ; $7cfc: $4f
	rst  $38                                         ; $7cfd: $ff
	nop                                              ; $7cfe: $00
	rst  $38                                         ; $7cff: $ff
	nop                                              ; $7d00: $00
	rst  $38                                         ; $7d01: $ff
	nop                                              ; $7d02: $00
	rst  $38                                         ; $7d03: $ff
	nop                                              ; $7d04: $00
	rst  $38                                         ; $7d05: $ff
	nop                                              ; $7d06: $00
	rst  $38                                         ; $7d07: $ff
	nop                                              ; $7d08: $00
	rst  $38                                         ; $7d09: $ff
	nop                                              ; $7d0a: $00
	add  $00                                         ; $7d0b: $c6 $00
	inc  de                                          ; $7d0d: $13
	nop                                              ; $7d0e: $00
	add  h                                           ; $7d0f: $84
	nop                                              ; $7d10: $00
	ld   a, [bc]                                     ; $7d11: $0a
	ld   b, $00                                      ; $7d12: $06 $00
	ld   [$1404], sp                                 ; $7d14: $08 $04 $14
	inc  c                                           ; $7d17: $0c
	inc  h                                           ; $7d18: $24
	inc  e                                           ; $7d19: $1c
	ld   c, h                                        ; $7d1a: $4c
	inc  a                                           ; $7d1b: $3c
	ld   e, d                                        ; $7d1c: $5a
	rst  $38                                         ; $7d1d: $ff
	nop                                              ; $7d1e: $00
	db   $ec                                         ; $7d1f: $ec
	nop                                              ; $7d20: $00
	ld   a, [bc]                                     ; $7d21: $0a
	ld   h, [hl]                                     ; $7d22: $66
	inc  a                                           ; $7d23: $3c
	ld   l, h                                        ; $7d24: $6c
	inc  e                                           ; $7d25: $1c
	inc  [hl]                                        ; $7d26: $34
	inc  c                                           ; $7d27: $0c
	inc  e                                           ; $7d28: $1c
	inc  b                                           ; $7d29: $04
	inc  c                                           ; $7d2a: $0c
	nop                                              ; $7d2b: $00
	ld   b, $ff                                      ; $7d2c: $06 $ff
	nop                                              ; $7d2e: $00
	rst  $38                                         ; $7d2f: $ff
	nop                                              ; $7d30: $00
	rst  $38                                         ; $7d31: $ff
	nop                                              ; $7d32: $00
	rst  $38                                         ; $7d33: $ff
	nop                                              ; $7d34: $00
	rst  $38                                         ; $7d35: $ff
	nop                                              ; $7d36: $00
	rst  $38                                         ; $7d37: $ff
	nop                                              ; $7d38: $00
	rst  $38                                         ; $7d39: $ff
	nop                                              ; $7d3a: $00
	rst  $38                                         ; $7d3b: $ff
	nop                                              ; $7d3c: $00
	rst  $38                                         ; $7d3d: $ff
	nop                                              ; $7d3e: $00
	rst  $38                                         ; $7d3f: $ff
	nop                                              ; $7d40: $00
	rst  $38                                         ; $7d41: $ff
	nop                                              ; $7d42: $00
	rst  $38                                         ; $7d43: $ff
	nop                                              ; $7d44: $00
	rst  $38                                         ; $7d45: $ff
	nop                                              ; $7d46: $00
	and  $00                                         ; $7d47: $e6 $00
	dec  c                                           ; $7d49: $0d
	dec  c                                           ; $7d4a: $0d
	dec  c                                           ; $7d4b: $0d
	dec  c                                           ; $7d4c: $0d
	dec  c                                           ; $7d4d: $0d
	dec  b                                           ; $7d4e: $05
	dec  b                                           ; $7d4f: $05
	dec  b                                           ; $7d50: $05
	dec  b                                           ; $7d51: $05
	dec  b                                           ; $7d52: $05
	dec  b                                           ; $7d53: $05
	dec  b                                           ; $7d54: $05
	dec  c                                           ; $7d55: $0d
	dec  c                                           ; $7d56: $0d
	dec  c                                           ; $7d57: $0d
	dec  c                                           ; $7d58: $0d
	dec  c                                           ; $7d59: $0d
	dec  c                                           ; $7d5a: $0d
	dec  b                                           ; $7d5b: $05
	dec  b                                           ; $7d5c: $05
	dec  b                                           ; $7d5d: $05
	dec  b                                           ; $7d5e: $05
	dec  b                                           ; $7d5f: $05
	dec  b                                           ; $7d60: $05
	dec  b                                           ; $7d61: $05
	dec  b                                           ; $7d62: $05
	dec  c                                           ; $7d63: $0d
	dec  c                                           ; $7d64: $0d
	cp   c                                           ; $7d65: $b9
	cp   c                                           ; $7d66: $b9
	cp   c                                           ; $7d67: $b9
	cp   c                                           ; $7d68: $b9
	cp   c                                           ; $7d69: $b9
	ld   sp, $3332                                   ; $7d6a: $31 $32 $33
	inc  [hl]                                        ; $7d6d: $34
	dec  [hl]                                        ; $7d6e: $35
	ld   [hl], $37                                   ; $7d6f: $36 $37
	cp   c                                           ; $7d71: $b9
	cp   c                                           ; $7d72: $b9
	cp   c                                           ; $7d73: $b9
	cp   c                                           ; $7d74: $b9
	cp   c                                           ; $7d75: $b9
	cp   c                                           ; $7d76: $b9
	jr   c, jr_01e_7db2                              ; $7d77: $38 $39

	ld   a, [hl-]                                    ; $7d79: $3a
	dec  sp                                          ; $7d7a: $3b
	inc  a                                           ; $7d7b: $3c
	dec  a                                           ; $7d7c: $3d
	ld   a, $3f                                      ; $7d7d: $3e $3f
	cp   c                                           ; $7d7f: $b9
	cp   c                                           ; $7d80: $b9
	rlca                                             ; $7d81: $07
	rlca                                             ; $7d82: $07
	rlca                                             ; $7d83: $07
	rlca                                             ; $7d84: $07
	rlca                                             ; $7d85: $07
	rlca                                             ; $7d86: $07
	rlca                                             ; $7d87: $07
	rlca                                             ; $7d88: $07
	rlca                                             ; $7d89: $07
	rlca                                             ; $7d8a: $07
	rlca                                             ; $7d8b: $07
	rlca                                             ; $7d8c: $07
	rlca                                             ; $7d8d: $07
	rlca                                             ; $7d8e: $07
	rlca                                             ; $7d8f: $07
	rlca                                             ; $7d90: $07
	rlca                                             ; $7d91: $07
	rlca                                             ; $7d92: $07
	rlca                                             ; $7d93: $07
	rlca                                             ; $7d94: $07
	rlca                                             ; $7d95: $07
	rlca                                             ; $7d96: $07
	rlca                                             ; $7d97: $07
	rlca                                             ; $7d98: $07
	xor  c                                           ; $7d99: $a9
	xor  c                                           ; $7d9a: $a9
	xor  c                                           ; $7d9b: $a9
	xor  c                                           ; $7d9c: $a9
	xor  c                                           ; $7d9d: $a9
	xor  c                                           ; $7d9e: $a9
	xor  c                                           ; $7d9f: $a9
	xor  c                                           ; $7da0: $a9
	xor  c                                           ; $7da1: $a9
	xor  c                                           ; $7da2: $a9
	xor  c                                           ; $7da3: $a9
	xor  c                                           ; $7da4: $a9
	xor  c                                           ; $7da5: $a9
	xor  c                                           ; $7da6: $a9
	xor  c                                           ; $7da7: $a9
	xor  c                                           ; $7da8: $a9
	xor  c                                           ; $7da9: $a9
	xor  c                                           ; $7daa: $a9
	xor  c                                           ; $7dab: $a9
	xor  c                                           ; $7dac: $a9
	xor  c                                           ; $7dad: $a9
	xor  c                                           ; $7dae: $a9
	xor  c                                           ; $7daf: $a9
	xor  c                                           ; $7db0: $a9
	dec  b                                           ; $7db1: $05

jr_01e_7db2:
	dec  c                                           ; $7db2: $0d
	dec  c                                           ; $7db3: $0d
	dec  c                                           ; $7db4: $0d
	dec  c                                           ; $7db5: $0d
	dec  c                                           ; $7db6: $0d
	dec  b                                           ; $7db7: $05
	dec  c                                           ; $7db8: $0d
	dec  c                                           ; $7db9: $0d
	dec  c                                           ; $7dba: $0d
	dec  c                                           ; $7dbb: $0d
	dec  c                                           ; $7dbc: $0d
	dec  b                                           ; $7dbd: $05
	dec  c                                           ; $7dbe: $0d
	dec  c                                           ; $7dbf: $0d
	dec  c                                           ; $7dc0: $0d
	dec  c                                           ; $7dc1: $0d
	dec  c                                           ; $7dc2: $0d
	dec  c                                           ; $7dc3: $0d
	dec  c                                           ; $7dc4: $0d
	dec  c                                           ; $7dc5: $0d
	dec  c                                           ; $7dc6: $0d
	dec  c                                           ; $7dc7: $0d
	dec  c                                           ; $7dc8: $0d
	sbc  [hl]                                        ; $7dc9: $9e
	ld   h, h                                        ; $7dca: $64
	ld   h, h                                        ; $7dcb: $64
	ld   h, h                                        ; $7dcc: $64
	ld   h, h                                        ; $7dcd: $64
	sub  e                                           ; $7dce: $93
	xor  [hl]                                        ; $7dcf: $ae
	call nz, $c4c4                                   ; $7dd0: $c4 $c4 $c4
	call nz, $aea3                                   ; $7dd3: $c4 $a3 $ae
	call nz, $c4c4                                   ; $7dd6: $c4 $c4 $c4
	call nz, Call_01e_65a3                           ; $7dd9: $c4 $a3 $65
	ld   h, [hl]                                     ; $7ddc: $66
	ld   h, [hl]                                     ; $7ddd: $66
	ld   h, [hl]                                     ; $7dde: $66
	ld   h, [hl]                                     ; $7ddf: $66
	ld   h, a                                        ; $7de0: $67
	nop                                              ; $7de1: $00
	ld   bc, $0101                                   ; $7de2: $01 $01 $01
	ld   bc, $0302                                   ; $7de5: $01 $02 $03
	inc  bc                                          ; $7de8: $03
	nop                                              ; $7de9: $00
	ld   bc, $0101                                   ; $7dea: $01 $01 $01
	ld   bc, $0302                                   ; $7ded: $01 $02 $03
	ld   b, $00                                      ; $7df0: $06 $00
	ld   bc, $0201                                   ; $7df2: $01 $01 $02
	inc  bc                                          ; $7df5: $03
	inc  bc                                          ; $7df6: $03
	ld   [bc], a                                     ; $7df7: $02
	ld   b, $24                                      ; $7df8: $06 $24
	dec  h                                           ; $7dfa: $25
	ld   h, $27                                      ; $7dfb: $26 $27
	jr   z, jr_01e_7e28                              ; $7dfd: $28 $29

	ld   a, [hl+]                                    ; $7dff: $2a
	dec  hl                                          ; $7e00: $2b
	inc  [hl]                                        ; $7e01: $34
	dec  [hl]                                        ; $7e02: $35
	ld   [hl], $37                                   ; $7e03: $36 $37
	jr   c, jr_01e_7e40                              ; $7e05: $38 $39

	ld   a, [hl-]                                    ; $7e07: $3a
	dec  sp                                          ; $7e08: $3b
	ld   b, d                                        ; $7e09: $42
	ld   b, e                                        ; $7e0a: $43
	ld   b, h                                        ; $7e0b: $44
	ld   b, l                                        ; $7e0c: $45
	ld   b, [hl]                                     ; $7e0d: $46
	ld   b, a                                        ; $7e0e: $47
	ld   c, b                                        ; $7e0f: $48
	ld   c, c                                        ; $7e10: $49
	inc  bc                                          ; $7e11: $03
	inc  bc                                          ; $7e12: $03
	inc  bc                                          ; $7e13: $03
	ld   b, e                                        ; $7e14: $43
	ld   h, e                                        ; $7e15: $63
	inc  bc                                          ; $7e16: $03
	inc  bc                                          ; $7e17: $03
	inc  bc                                          ; $7e18: $03
	inc  bc                                          ; $7e19: $03
	inc  bc                                          ; $7e1a: $03
	inc  bc                                          ; $7e1b: $03
	inc  bc                                          ; $7e1c: $03
	inc  bc                                          ; $7e1d: $03
	inc  bc                                          ; $7e1e: $03
	inc  bc                                          ; $7e1f: $03
	ld   h, e                                        ; $7e20: $63
	ld   b, e                                        ; $7e21: $43
	inc  bc                                          ; $7e22: $03
	inc  bc                                          ; $7e23: $03
	inc  bc                                          ; $7e24: $03
	inc  bc                                          ; $7e25: $03
	inc  bc                                          ; $7e26: $03
	inc  bc                                          ; $7e27: $03

jr_01e_7e28:
	inc  bc                                          ; $7e28: $03
	inc  sp                                          ; $7e29: $33
	inc  [hl]                                        ; $7e2a: $34
	dec  [hl]                                        ; $7e2b: $35
	adc  d                                           ; $7e2c: $8a
	sbc  l                                           ; $7e2d: $9d
	ld   [hl], $37                                   ; $7e2e: $36 $37
	jr   c, jr_01e_7e6b                              ; $7e30: $38 $39

	ld   a, [hl-]                                    ; $7e32: $3a
	dec  sp                                          ; $7e33: $3b
	inc  a                                           ; $7e34: $3c
	ld   b, e                                        ; $7e35: $43
	ld   b, h                                        ; $7e36: $44
	ld   b, l                                        ; $7e37: $45
	adc  e                                           ; $7e38: $8b
	adc  d                                           ; $7e39: $8a
	ld   b, [hl]                                     ; $7e3a: $46
	ld   b, a                                        ; $7e3b: $47
	ld   c, b                                        ; $7e3c: $48
	ld   c, c                                        ; $7e3d: $49
	ld   c, d                                        ; $7e3e: $4a
	ld   c, e                                        ; $7e3f: $4b

jr_01e_7e40:
	ld   c, h                                        ; $7e40: $4c
	rst  $30                                         ; $7e41: $f7
	ld   a, a                                        ; $7e42: $7f
	rra                                              ; $7e43: $1f
	inc  bc                                          ; $7e44: $03
	ld   e, a                                        ; $7e45: $5f
	ld   c, d                                        ; $7e46: $4a
	ld   b, [hl]                                     ; $7e47: $46
	nop                                              ; $7e48: $00
	rst  $38                                         ; $7e49: $ff
	ld   e, a                                        ; $7e4a: $5f
	rst  $38                                         ; $7e4b: $ff
	ld   a, a                                        ; $7e4c: $7f
	xor  c                                           ; $7e4d: $a9
	ld   [hl-], a                                    ; $7e4e: $32
	ld   h, a                                        ; $7e4f: $67
	nop                                              ; $7e50: $00
	ld   e, a                                        ; $7e51: $5f
	ld   l, e                                        ; $7e52: $6b
	rst  $38                                         ; $7e53: $ff
	ld   a, a                                        ; $7e54: $7f
	sbc  a                                           ; $7e55: $9f
	ld   [hl], $62                                   ; $7e56: $36 $62
	ld   h, c                                        ; $7e58: $61
	ld   a, l                                        ; $7e59: $7d
	ld   a, [hl]                                     ; $7e5a: $7e
	rst  $38                                         ; $7e5b: $ff
	ld   a, a                                        ; $7e5c: $7f
	db   $dd                                         ; $7e5d: $dd
	ld   e, $62                                      ; $7e5e: $1e $62
	inc  e                                           ; $7e60: $1c
	rst  $30                                         ; $7e61: $f7
	ld   d, a                                        ; $7e62: $57
	rst  $38                                         ; $7e63: $ff
	ld   a, a                                        ; $7e64: $7f
	sbc  a                                           ; $7e65: $9f
	ld   [hl], $83                                   ; $7e66: $36 $83
	inc  d                                           ; $7e68: $14
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00

jr_01e_7e6b:
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
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
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
	inc  bc                                          ; $7e8d: $03
	inc  b                                           ; $7e8e: $04
	inc  b                                           ; $7e8f: $04
	inc  b                                           ; $7e90: $04
	inc  bc                                          ; $7e91: $03
	inc  bc                                          ; $7e92: $03
	inc  bc                                          ; $7e93: $03
	inc  bc                                          ; $7e94: $03
	inc  bc                                          ; $7e95: $03
	inc  bc                                          ; $7e96: $03
	inc  bc                                          ; $7e97: $03
	inc  bc                                          ; $7e98: $03
	dec  bc                                          ; $7e99: $0b
	dec  bc                                          ; $7e9a: $0b
	dec  bc                                          ; $7e9b: $0b
	dec  bc                                          ; $7e9c: $0b
	sub  c                                           ; $7e9d: $91
	ld   h, d                                        ; $7e9e: $62
	ld   h, e                                        ; $7e9f: $63
	ld   h, h                                        ; $7ea0: $64
	and  c                                           ; $7ea1: $a1
	ld   l, h                                        ; $7ea2: $6c
	ld   l, l                                        ; $7ea3: $6d
	ld   l, [hl]                                     ; $7ea4: $6e
	or   c                                           ; $7ea5: $b1
	ld   a, e                                        ; $7ea6: $7b
	ld   a, h                                        ; $7ea7: $7c
	ld   a, l                                        ; $7ea8: $7d
	ld   a, [bc]                                     ; $7ea9: $0a
	dec  bc                                          ; $7eaa: $0b
	inc  c                                           ; $7eab: $0c
	dec  c                                           ; $7eac: $0d
	inc  b                                           ; $7ead: $04
	inc  b                                           ; $7eae: $04
	inc  b                                           ; $7eaf: $04
	inc  b                                           ; $7eb0: $04
	inc  bc                                          ; $7eb1: $03
	inc  bc                                          ; $7eb2: $03
	inc  bc                                          ; $7eb3: $03
	inc  bc                                          ; $7eb4: $03
	inc  bc                                          ; $7eb5: $03
	inc  bc                                          ; $7eb6: $03
	dec  bc                                          ; $7eb7: $0b
	dec  bc                                          ; $7eb8: $0b
	dec  bc                                          ; $7eb9: $0b
	dec  bc                                          ; $7eba: $0b
	dec  bc                                          ; $7ebb: $0b
	dec  bc                                          ; $7ebc: $0b
	sub  l                                           ; $7ebd: $95
	ld   h, l                                        ; $7ebe: $65
	ld   h, [hl]                                     ; $7ebf: $66
	sbc  b                                           ; $7ec0: $98
	ld   l, a                                        ; $7ec1: $6f
	ld   [hl], b                                     ; $7ec2: $70
	ld   [hl], c                                     ; $7ec3: $71
	ld   [hl], d                                     ; $7ec4: $72
	ld   a, [hl]                                     ; $7ec5: $7e
	ld   a, a                                        ; $7ec6: $7f
	nop                                              ; $7ec7: $00
	ld   bc, $0f0e                                   ; $7ec8: $01 $0e $0f
	db   $10                                         ; $7ecb: $10
	ld   de, $0404                                   ; $7ecc: $11 $04 $04
	inc  b                                           ; $7ecf: $04
	inc  b                                           ; $7ed0: $04
	inc  bc                                          ; $7ed1: $03
	inc  bc                                          ; $7ed2: $03
	inc  b                                           ; $7ed3: $04
	inc  b                                           ; $7ed4: $04
	dec  bc                                          ; $7ed5: $0b
	dec  bc                                          ; $7ed6: $0b
	dec  bc                                          ; $7ed7: $0b
	inc  c                                           ; $7ed8: $0c
	dec  bc                                          ; $7ed9: $0b
	dec  bc                                          ; $7eda: $0b
	dec  bc                                          ; $7edb: $0b
	inc  bc                                          ; $7edc: $03
	ld   h, a                                        ; $7edd: $67
	ld   l, b                                        ; $7ede: $68
	ld   l, c                                        ; $7edf: $69
	ld   l, d                                        ; $7ee0: $6a
	ld   [hl], e                                     ; $7ee1: $73
	ld   [hl], h                                     ; $7ee2: $74
	ld   [hl], l                                     ; $7ee3: $75
	halt                                             ; $7ee4: $76
	ld   [bc], a                                     ; $7ee5: $02
	inc  bc                                          ; $7ee6: $03
	inc  b                                           ; $7ee7: $04
	dec  b                                           ; $7ee8: $05
	ld   [de], a                                     ; $7ee9: $12
	inc  de                                          ; $7eea: $13
	inc  d                                           ; $7eeb: $14
	call z, $0404                                    ; $7eec: $cc $04 $04
	inc  b                                           ; $7eef: $04
	inc  b                                           ; $7ef0: $04
	inc  b                                           ; $7ef1: $04
	inc  b                                           ; $7ef2: $04
	inc  b                                           ; $7ef3: $04
	inc  b                                           ; $7ef4: $04
	inc  c                                           ; $7ef5: $0c
	inc  c                                           ; $7ef6: $0c
	inc  c                                           ; $7ef7: $0c
	inc  c                                           ; $7ef8: $0c
	dec  bc                                          ; $7ef9: $0b
	dec  bc                                          ; $7efa: $0b
	dec  bc                                          ; $7efb: $0b
	dec  bc                                          ; $7efc: $0b
	ld   l, e                                        ; $7efd: $6b
	sbc  [hl]                                        ; $7efe: $9e
	sbc  a                                           ; $7eff: $9f
	inc  b                                           ; $7f00: $04

Call_01e_7f01:
	ld   [hl], a                                     ; $7f01: $77
	ld   a, b                                        ; $7f02: $78
	ld   a, c                                        ; $7f03: $79
	ld   a, d                                        ; $7f04: $7a

jr_01e_7f05:
	ld   b, $07                                      ; $7f05: $06 $07
	ld   [$1509], sp                                 ; $7f07: $08 $09 $15
	ld   d, $17                                      ; $7f0a: $16 $17
	jr   jr_01e_7f05                                 ; $7f0c: $18 $f7

	ld   e, a                                        ; $7f0e: $5f
	ld   b, b                                        ; $7f0f: $40
	ld   [bc], a                                     ; $7f10: $02
	add  b                                           ; $7f11: $80
	ld   bc, $0466                                   ; $7f12: $01 $66 $04
	db   $dd                                         ; $7f15: $dd
	ld   b, d                                        ; $7f16: $42
	inc  sp                                          ; $7f17: $33
	ld   bc, $00af                                   ; $7f18: $01 $af $00
	ld   h, [hl]                                     ; $7f1b: $66
	inc  b                                           ; $7f1c: $04
	rst  $30                                         ; $7f1d: $f7
	ld   a, [hl]                                     ; $7f1e: $7e
	ld   a, [bc]                                     ; $7f1f: $0a
	ld   a, l                                        ; $7f20: $7d
	add  l                                           ; $7f21: $85
	ld   h, b                                        ; $7f22: $60
	ld   h, [hl]                                     ; $7f23: $66
	inc  b                                           ; $7f24: $04
	ld   a, a                                        ; $7f25: $7f
	ld   c, d                                        ; $7f26: $4a
	ld   a, a                                        ; $7f27: $7f
	inc  c                                           ; $7f28: $0c
	ld   d, b                                        ; $7f29: $50
	ld   [$0466], sp                                 ; $7f2a: $08 $66 $04
	ld   b, $00                                      ; $7f2d: $06 $00
	inc  b                                           ; $7f2f: $04
	daa                                              ; $7f30: $27
	rrca                                             ; $7f31: $0f
	ld   bc, $1803                                   ; $7f32: $01 $03 $18
	adc  c                                           ; $7f35: $89
	nop                                              ; $7f36: $00
	ld   bc, $3613                                   ; $7f37: $01 $13 $36
	adc  d                                           ; $7f3a: $8a
	nop                                              ; $7f3b: $00
	ld   b, $3c                                      ; $7f3c: $06 $3c
	rlca                                             ; $7f3e: $07
	ld   bc, $0103                                   ; $7f3f: $01 $03 $01
	rra                                              ; $7f42: $1f
	ld   [bc], a                                     ; $7f43: $02
	adc  c                                           ; $7f44: $89
	nop                                              ; $7f45: $00
	ld   a, [bc]                                     ; $7f46: $0a
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	inc  bc                                          ; $7f49: $03
	add  c                                           ; $7f4a: $81
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	inc  bc                                          ; $7f4d: $03
	adc  c                                           ; $7f4e: $89
	nop                                              ; $7f4f: $00
	ld   bc, $0703                                   ; $7f50: $01 $03 $07
	adc  d                                           ; $7f53: $8a
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	rlca                                             ; $7f56: $07
	add  e                                           ; $7f57: $83
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	inc  bc                                          ; $7f5a: $03
	adc  c                                           ; $7f5b: $89
