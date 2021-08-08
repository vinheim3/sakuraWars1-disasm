; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08c", ROMX[$4000], BANK[$8c]

	rst  $38                                         ; $4000: $ff
	rst  $38                                         ; $4001: $ff
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	nop                                              ; $400f: $00
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	nop                                              ; $4012: $00
	nop                                              ; $4013: $00
	nop                                              ; $4014: $00
	nop                                              ; $4015: $00
	nop                                              ; $4016: $00
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	nop                                              ; $4019: $00
	nop                                              ; $401a: $00
	nop                                              ; $401b: $00
	nop                                              ; $401c: $00
	nop                                              ; $401d: $00
	nop                                              ; $401e: $00
	nop                                              ; $401f: $00
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	nop                                              ; $4026: $00
	nop                                              ; $4027: $00
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	nop                                              ; $402c: $00
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	rst  $38                                         ; $4030: $ff
	rst  $38                                         ; $4031: $ff
	nop                                              ; $4032: $00
	nop                                              ; $4033: $00
	nop                                              ; $4034: $00
	nop                                              ; $4035: $00
	nop                                              ; $4036: $00
	nop                                              ; $4037: $00
	nop                                              ; $4038: $00
	nop                                              ; $4039: $00
	nop                                              ; $403a: $00
	nop                                              ; $403b: $00
	nop                                              ; $403c: $00
	nop                                              ; $403d: $00
	nop                                              ; $403e: $00
	nop                                              ; $403f: $00
	rst  $38                                         ; $4040: $ff
	rst  $38                                         ; $4041: $ff
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	nop                                              ; $404c: $00
	nop                                              ; $404d: $00
	nop                                              ; $404e: $00
	nop                                              ; $404f: $00
	rst  $38                                         ; $4050: $ff
	rst  $38                                         ; $4051: $ff
	nop                                              ; $4052: $00
	nop                                              ; $4053: $00
	nop                                              ; $4054: $00
	nop                                              ; $4055: $00
	nop                                              ; $4056: $00
	nop                                              ; $4057: $00
	nop                                              ; $4058: $00
	nop                                              ; $4059: $00
	nop                                              ; $405a: $00
	nop                                              ; $405b: $00
	nop                                              ; $405c: $00
	nop                                              ; $405d: $00
	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	rst  $38                                         ; $4060: $ff
	rst  $38                                         ; $4061: $ff
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	nop                                              ; $4064: $00
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	nop                                              ; $4068: $00
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	nop                                              ; $406c: $00
	nop                                              ; $406d: $00
	nop                                              ; $406e: $00
	nop                                              ; $406f: $00
	rst  $38                                         ; $4070: $ff
	rst  $38                                         ; $4071: $ff
	ld   bc, $0101                                   ; $4072: $01 $01 $01
	ld   bc, $0101                                   ; $4075: $01 $01 $01
	ld   bc, $0101                                   ; $4078: $01 $01 $01
	ld   bc, $0101                                   ; $407b: $01 $01 $01
	ld   bc, $0001                                   ; $407e: $01 $01 $00
	nop                                              ; $4081: $00
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00
	nop                                              ; $4086: $00
	nop                                              ; $4087: $00
	nop                                              ; $4088: $00
	nop                                              ; $4089: $00
	nop                                              ; $408a: $00
	nop                                              ; $408b: $00
	nop                                              ; $408c: $00
	nop                                              ; $408d: $00
	rst  $38                                         ; $408e: $ff
	rst  $38                                         ; $408f: $ff
	nop                                              ; $4090: $00
	nop                                              ; $4091: $00
	nop                                              ; $4092: $00
	nop                                              ; $4093: $00
	nop                                              ; $4094: $00
	nop                                              ; $4095: $00
	nop                                              ; $4096: $00
	nop                                              ; $4097: $00
	nop                                              ; $4098: $00
	nop                                              ; $4099: $00
	nop                                              ; $409a: $00
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	nop                                              ; $409d: $00
	rst  $38                                         ; $409e: $ff
	rst  $38                                         ; $409f: $ff
	nop                                              ; $40a0: $00
	nop                                              ; $40a1: $00
	nop                                              ; $40a2: $00
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	nop                                              ; $40a5: $00
	nop                                              ; $40a6: $00
	nop                                              ; $40a7: $00
	nop                                              ; $40a8: $00
	nop                                              ; $40a9: $00
	nop                                              ; $40aa: $00
	nop                                              ; $40ab: $00
	nop                                              ; $40ac: $00
	nop                                              ; $40ad: $00
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	nop                                              ; $40b0: $00
	nop                                              ; $40b1: $00
	nop                                              ; $40b2: $00
	nop                                              ; $40b3: $00
	nop                                              ; $40b4: $00
	nop                                              ; $40b5: $00
	nop                                              ; $40b6: $00
	nop                                              ; $40b7: $00
	nop                                              ; $40b8: $00
	nop                                              ; $40b9: $00
	nop                                              ; $40ba: $00
	nop                                              ; $40bb: $00
	nop                                              ; $40bc: $00
	nop                                              ; $40bd: $00
	rst  $38                                         ; $40be: $ff
	rst  $38                                         ; $40bf: $ff
	nop                                              ; $40c0: $00
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	nop                                              ; $40c3: $00
	nop                                              ; $40c4: $00
	nop                                              ; $40c5: $00
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00
	nop                                              ; $40c9: $00
	nop                                              ; $40ca: $00
	nop                                              ; $40cb: $00
	nop                                              ; $40cc: $00
	nop                                              ; $40cd: $00
	rst  $38                                         ; $40ce: $ff
	rst  $38                                         ; $40cf: $ff
	nop                                              ; $40d0: $00
	nop                                              ; $40d1: $00
	nop                                              ; $40d2: $00
	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	nop                                              ; $40d9: $00
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	rst  $38                                         ; $40de: $ff
	rst  $38                                         ; $40df: $ff
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
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
	nop                                              ; $40ed: $00
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	ld   bc, $0101                                   ; $40f0: $01 $01 $01
	ld   bc, $0101                                   ; $40f3: $01 $01 $01
	ld   bc, $0101                                   ; $40f6: $01 $01 $01
	ld   bc, $0101                                   ; $40f9: $01 $01 $01
	ld   bc, $ff01                                   ; $40fc: $01 $01 $ff
	rst  $38                                         ; $40ff: $ff
	rst  $38                                         ; $4100: $ff
	rst  $38                                         ; $4101: $ff
	nop                                              ; $4102: $00
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
	nop                                              ; $410d: $00
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	rst  $38                                         ; $4110: $ff
	rst  $38                                         ; $4111: $ff
	nop                                              ; $4112: $00
	nop                                              ; $4113: $00
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	nop                                              ; $4116: $00
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	nop                                              ; $4119: $00
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	rst  $38                                         ; $4120: $ff
	rst  $38                                         ; $4121: $ff
	nop                                              ; $4122: $00
	nop                                              ; $4123: $00
	nop                                              ; $4124: $00
	nop                                              ; $4125: $00
	ld   [bc], a                                     ; $4126: $02
	ld   [bc], a                                     ; $4127: $02
	ccf                                              ; $4128: $3f
	ccf                                              ; $4129: $3f
	jr   nz, jr_08c_414c                             ; $412a: $20 $20

	rla                                              ; $412c: $17
	rla                                              ; $412d: $17
	ld   de, rAUD1LEN                                   ; $412e: $11 $11 $ff
	rst  $38                                         ; $4131: $ff
	nop                                              ; $4132: $00
	nop                                              ; $4133: $00
	nop                                              ; $4134: $00
	nop                                              ; $4135: $00
	nop                                              ; $4136: $00
	nop                                              ; $4137: $00
	rst  $28                                         ; $4138: $ef
	rst  $28                                         ; $4139: $ef
	jr   nz, jr_08c_415c                             ; $413a: $20 $20

	jp   $02c3                                       ; $413c: $c3 $c3 $02


	ld   [bc], a                                     ; $413f: $02
	rst  $38                                         ; $4140: $ff
	rst  $38                                         ; $4141: $ff
	nop                                              ; $4142: $00
	nop                                              ; $4143: $00
	nop                                              ; $4144: $00
	nop                                              ; $4145: $00
	add  b                                           ; $4146: $80
	add  b                                           ; $4147: $80
	rst  $30                                         ; $4148: $f7
	rst  $30                                         ; $4149: $f7
	add  h                                           ; $414a: $84
	add  h                                           ; $414b: $84

jr_08c_414c:
	pop  hl                                          ; $414c: $e1
	pop  hl                                          ; $414d: $e1
	jr   nz, jr_08c_4170                             ; $414e: $20 $20

	rst  $38                                         ; $4150: $ff
	rst  $38                                         ; $4151: $ff
	nop                                              ; $4152: $00
	nop                                              ; $4153: $00
	nop                                              ; $4154: $00
	nop                                              ; $4155: $00
	ld   b, b                                        ; $4156: $40
	ld   b, b                                        ; $4157: $40
	db   $fc                                         ; $4158: $fc
	db   $fc                                         ; $4159: $fc
	inc  b                                           ; $415a: $04
	inc  b                                           ; $415b: $04

jr_08c_415c:
	ldh  a, [$f0]                                    ; $415c: $f0 $f0
	adc  b                                           ; $415e: $88
	adc  b                                           ; $415f: $88
	rst  $38                                         ; $4160: $ff
	rst  $38                                         ; $4161: $ff
	nop                                              ; $4162: $00
	nop                                              ; $4163: $00
	nop                                              ; $4164: $00
	nop                                              ; $4165: $00
	nop                                              ; $4166: $00
	nop                                              ; $4167: $00
	nop                                              ; $4168: $00
	nop                                              ; $4169: $00
	nop                                              ; $416a: $00
	nop                                              ; $416b: $00
	nop                                              ; $416c: $00
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00

jr_08c_4170:
	rst  $38                                         ; $4170: $ff
	rst  $38                                         ; $4171: $ff
	ld   bc, $0101                                   ; $4172: $01 $01 $01
	ld   bc, $0101                                   ; $4175: $01 $01 $01
	ld   bc, $0101                                   ; $4178: $01 $01 $01
	ld   bc, $0101                                   ; $417b: $01 $01 $01
	ld   bc, $0001                                   ; $417e: $01 $01 $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	rst  $38                                         ; $418e: $ff
	rst  $38                                         ; $418f: $ff
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	nop                                              ; $4194: $00
	nop                                              ; $4195: $00
	nop                                              ; $4196: $00
	nop                                              ; $4197: $00
	nop                                              ; $4198: $00
	nop                                              ; $4199: $00
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	nop                                              ; $419c: $00
	nop                                              ; $419d: $00
	rst  $38                                         ; $419e: $ff
	rst  $38                                         ; $419f: $ff
	scf                                              ; $41a0: $37
	scf                                              ; $41a1: $37
	inc  d                                           ; $41a2: $14
	inc  d                                           ; $41a3: $14
	rla                                              ; $41a4: $17
	rla                                              ; $41a5: $17
	inc  d                                           ; $41a6: $14
	inc  d                                           ; $41a7: $14
	inc  d                                           ; $41a8: $14
	inc  d                                           ; $41a9: $14
	rla                                              ; $41aa: $17
	rla                                              ; $41ab: $17
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	rst  $38                                         ; $41ae: $ff
	rst  $38                                         ; $41af: $ff
	jp   Jump_08c_4ac3                               ; $41b0: $c3 $c3 $4a


	ld   c, d                                        ; $41b3: $4a
	set  1, e                                        ; $41b4: $cb $cb
	ld   c, d                                        ; $41b6: $4a
	ld   c, d                                        ; $41b7: $4a
	ld   c, d                                        ; $41b8: $4a
	ld   c, d                                        ; $41b9: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41ba: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41bb: $cf
	nop                                              ; $41bc: $00
	nop                                              ; $41bd: $00
	rst  $38                                         ; $41be: $ff
	rst  $38                                         ; $41bf: $ff
	pop  hl                                          ; $41c0: $e1
	pop  hl                                          ; $41c1: $e1
	jr   nz, jr_08c_41e4                             ; $41c2: $20 $20

	pop  hl                                          ; $41c4: $e1
	pop  hl                                          ; $41c5: $e1
	jr   nz, jr_08c_41e8                             ; $41c6: $20 $20

	jr   nz, jr_08c_41ea                             ; $41c8: $20 $20

	di                                               ; $41ca: $f3
	di                                               ; $41cb: $f3
	nop                                              ; $41cc: $00
	nop                                              ; $41cd: $00
	rst  $38                                         ; $41ce: $ff
	rst  $38                                         ; $41cf: $ff
	ld   hl, sp-$08                                  ; $41d0: $f8 $f8
	ld   c, b                                        ; $41d2: $48
	ld   c, b                                        ; $41d3: $48
	ldh  a, [$f0]                                    ; $41d4: $f0 $f0
	ld   b, b                                        ; $41d6: $40
	ld   b, b                                        ; $41d7: $40
	ld   b, b                                        ; $41d8: $40
	ld   b, b                                        ; $41d9: $40
	db   $fc                                         ; $41da: $fc
	db   $fc                                         ; $41db: $fc
	nop                                              ; $41dc: $00
	nop                                              ; $41dd: $00
	rst  $38                                         ; $41de: $ff
	rst  $38                                         ; $41df: $ff
	nop                                              ; $41e0: $00
	nop                                              ; $41e1: $00
	nop                                              ; $41e2: $00
	nop                                              ; $41e3: $00

jr_08c_41e4:
	nop                                              ; $41e4: $00
	nop                                              ; $41e5: $00
	nop                                              ; $41e6: $00
	nop                                              ; $41e7: $00

jr_08c_41e8:
	nop                                              ; $41e8: $00
	nop                                              ; $41e9: $00

jr_08c_41ea:
	nop                                              ; $41ea: $00
	nop                                              ; $41eb: $00
	nop                                              ; $41ec: $00
	nop                                              ; $41ed: $00
	rst  $38                                         ; $41ee: $ff
	rst  $38                                         ; $41ef: $ff
	ld   bc, $0101                                   ; $41f0: $01 $01 $01
	ld   bc, $0101                                   ; $41f3: $01 $01 $01
	ld   bc, $0101                                   ; $41f6: $01 $01 $01
	ld   bc, $0101                                   ; $41f9: $01 $01 $01
	ld   bc, $ff01                                   ; $41fc: $01 $01 $ff
	rst  $38                                         ; $41ff: $ff
	rst  $38                                         ; $4200: $ff
	rst  $38                                         ; $4201: $ff
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	nop                                              ; $4204: $00
	nop                                              ; $4205: $00
	nop                                              ; $4206: $00
	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	nop                                              ; $420f: $00
	rst  $38                                         ; $4210: $ff
	rst  $38                                         ; $4211: $ff
	nop                                              ; $4212: $00
	nop                                              ; $4213: $00
	nop                                              ; $4214: $00
	nop                                              ; $4215: $00
	nop                                              ; $4216: $00
	nop                                              ; $4217: $00
	nop                                              ; $4218: $00
	nop                                              ; $4219: $00
	nop                                              ; $421a: $00
	nop                                              ; $421b: $00
	nop                                              ; $421c: $00
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	nop                                              ; $421f: $00
	rst  $38                                         ; $4220: $ff
	rst  $38                                         ; $4221: $ff
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	nop                                              ; $4225: $00
	ld   c, $0e                                      ; $4226: $0e $0e
	ld   a, [bc]                                     ; $4228: $0a
	ld   a, [bc]                                     ; $4229: $0a
	ld   a, [bc]                                     ; $422a: $0a
	ld   a, [bc]                                     ; $422b: $0a
	ld   a, [bc]                                     ; $422c: $0a
	ld   a, [bc]                                     ; $422d: $0a
	ld   a, [bc]                                     ; $422e: $0a
	ld   a, [bc]                                     ; $422f: $0a
	rst  $38                                         ; $4230: $ff
	rst  $38                                         ; $4231: $ff
	nop                                              ; $4232: $00
	nop                                              ; $4233: $00
	nop                                              ; $4234: $00
	nop                                              ; $4235: $00
	ld   bc, $0901                                   ; $4236: $01 $01 $09
	add  hl, bc                                      ; $4239: $09
	add  hl, bc                                      ; $423a: $09
	add  hl, bc                                      ; $423b: $09
	dec  bc                                          ; $423c: $0b
	dec  bc                                          ; $423d: $0b
	dec  a                                           ; $423e: $3d
	dec  a                                           ; $423f: $3d
	rst  $38                                         ; $4240: $ff
	rst  $38                                         ; $4241: $ff
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	ld   b, b                                        ; $4246: $40
	ld   b, b                                        ; $4247: $40
	ld   b, a                                        ; $4248: $47
	ld   b, a                                        ; $4249: $47
	ld   b, b                                        ; $424a: $40
	ld   b, b                                        ; $424b: $40
	ldh  a, [$f0]                                    ; $424c: $f0 $f0
	ld   d, b                                        ; $424e: $50
	ld   d, b                                        ; $424f: $50
	rst  $38                                         ; $4250: $ff
	rst  $38                                         ; $4251: $ff
	nop                                              ; $4252: $00
	nop                                              ; $4253: $00
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	db   $fc                                         ; $4258: $fc
	db   $fc                                         ; $4259: $fc
	ld   b, b                                        ; $425a: $40
	ld   b, b                                        ; $425b: $40
	ld   h, b                                        ; $425c: $60
	ld   h, b                                        ; $425d: $60
	ld   d, b                                        ; $425e: $50
	ld   d, b                                        ; $425f: $50
	rst  $38                                         ; $4260: $ff
	rst  $38                                         ; $4261: $ff
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	nop                                              ; $4266: $00
	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	nop                                              ; $4269: $00
	nop                                              ; $426a: $00
	nop                                              ; $426b: $00
	nop                                              ; $426c: $00
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	rst  $38                                         ; $4270: $ff
	rst  $38                                         ; $4271: $ff
	ld   bc, $0101                                   ; $4272: $01 $01 $01
	ld   bc, $0101                                   ; $4275: $01 $01 $01
	ld   bc, $0101                                   ; $4278: $01 $01 $01
	ld   bc, $0101                                   ; $427b: $01 $01 $01
	ld   bc, $0001                                   ; $427e: $01 $01 $00
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
	rst  $38                                         ; $428e: $ff
	rst  $38                                         ; $428f: $ff
	nop                                              ; $4290: $00
	nop                                              ; $4291: $00
	nop                                              ; $4292: $00
	nop                                              ; $4293: $00
	nop                                              ; $4294: $00
	nop                                              ; $4295: $00
	nop                                              ; $4296: $00
	nop                                              ; $4297: $00
	nop                                              ; $4298: $00
	nop                                              ; $4299: $00
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	rst  $38                                         ; $429e: $ff
	rst  $38                                         ; $429f: $ff
	ld   a, [bc]                                     ; $42a0: $0a
	ld   a, [bc]                                     ; $42a1: $0a
	ld   a, [bc]                                     ; $42a2: $0a
	ld   a, [bc]                                     ; $42a3: $0a
	dec  de                                          ; $42a4: $1b
	dec  de                                          ; $42a5: $1b
	ld   de, $0a11                                   ; $42a6: $11 $11 $0a
	ld   a, [bc]                                     ; $42a9: $0a
	inc  b                                           ; $42aa: $04
	inc  b                                           ; $42ab: $04
	nop                                              ; $42ac: $00
	nop                                              ; $42ad: $00
	rst  $38                                         ; $42ae: $ff
	rst  $38                                         ; $42af: $ff
	add  hl, bc                                      ; $42b0: $09
	add  hl, bc                                      ; $42b1: $09
	add  hl, bc                                      ; $42b2: $09
	add  hl, bc                                      ; $42b3: $09
	add  hl, bc                                      ; $42b4: $09
	add  hl, bc                                      ; $42b5: $09
	add  hl, bc                                      ; $42b6: $09
	add  hl, bc                                      ; $42b7: $09
	dec  c                                           ; $42b8: $0d
	dec  c                                           ; $42b9: $0d
	jr   nc, jr_08c_42ec                             ; $42ba: $30 $30

	nop                                              ; $42bc: $00
	nop                                              ; $42bd: $00
	rst  $38                                         ; $42be: $ff
	rst  $38                                         ; $42bf: $ff
	ld   d, b                                        ; $42c0: $50
	ld   d, b                                        ; $42c1: $50

Jump_08c_42c2:
	jr   nc, @+$32                                   ; $42c2: $30 $30

	nop                                              ; $42c4: $00
	nop                                              ; $42c5: $00
	db   $10                                         ; $42c6: $10
	db   $10                                         ; $42c7: $10
	db   $10                                         ; $42c8: $10
	db   $10                                         ; $42c9: $10
	ldh  a, [$f0]                                    ; $42ca: $f0 $f0
	nop                                              ; $42cc: $00
	nop                                              ; $42cd: $00
	rst  $38                                         ; $42ce: $ff
	rst  $38                                         ; $42cf: $ff
	ld   d, b                                        ; $42d0: $50
	ld   d, b                                        ; $42d1: $50
	ld   b, b                                        ; $42d2: $40
	ld   b, b                                        ; $42d3: $40
	ld   b, b                                        ; $42d4: $40
	ld   b, b                                        ; $42d5: $40
	ld   b, b                                        ; $42d6: $40
	ld   b, b                                        ; $42d7: $40
	ld   b, b                                        ; $42d8: $40
	ld   b, b                                        ; $42d9: $40
	ld   b, b                                        ; $42da: $40
	ld   b, b                                        ; $42db: $40
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	rst  $38                                         ; $42de: $ff
	rst  $38                                         ; $42df: $ff
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	nop                                              ; $42e4: $00
	nop                                              ; $42e5: $00
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	nop                                              ; $42e9: $00
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00

jr_08c_42ec:
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	rst  $38                                         ; $42ee: $ff
	rst  $38                                         ; $42ef: $ff
	ld   bc, $0101                                   ; $42f0: $01 $01 $01
	ld   bc, $0101                                   ; $42f3: $01 $01 $01
	ld   bc, $0101                                   ; $42f6: $01 $01 $01
	ld   bc, $0101                                   ; $42f9: $01 $01 $01
	ld   bc, $ff01                                   ; $42fc: $01 $01 $ff
	rst  $38                                         ; $42ff: $ff
	rst  $38                                         ; $4300: $ff
	rst  $38                                         ; $4301: $ff
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
	rst  $38                                         ; $4310: $ff
	rst  $38                                         ; $4311: $ff
	nop                                              ; $4312: $00
	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	nop                                              ; $4315: $00
	nop                                              ; $4316: $00
	nop                                              ; $4317: $00
	nop                                              ; $4318: $00
	nop                                              ; $4319: $00
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	nop                                              ; $431c: $00
	nop                                              ; $431d: $00
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	ld   [bc], a                                     ; $4326: $02
	ld   [bc], a                                     ; $4327: $02
	dec  b                                           ; $4328: $05
	dec  b                                           ; $4329: $05
	ld   [$0d08], sp                                 ; $432a: $08 $08 $0d
	dec  c                                           ; $432d: $0d
	dec  b                                           ; $432e: $05
	dec  b                                           ; $432f: $05
	rst  $38                                         ; $4330: $ff
	rst  $38                                         ; $4331: $ff
	nop                                              ; $4332: $00
	nop                                              ; $4333: $00
	nop                                              ; $4334: $00
	nop                                              ; $4335: $00
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	rrca                                             ; $4338: $0f
	rrca                                             ; $4339: $0f
	add  b                                           ; $433a: $80
	add  b                                           ; $433b: $80
	add  b                                           ; $433c: $80
	add  b                                           ; $433d: $80
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
	rst  $38                                         ; $4340: $ff
	rst  $38                                         ; $4341: $ff
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	nop                                              ; $4344: $00
	nop                                              ; $4345: $00
	dec  c                                           ; $4346: $0d
	dec  c                                           ; $4347: $0d
	set  1, e                                        ; $4348: $cb $cb
	dec  bc                                          ; $434a: $0b
	dec  bc                                          ; $434b: $0b
	dec  c                                           ; $434c: $0d
	dec  c                                           ; $434d: $0d
	dec  bc                                          ; $434e: $0b
	dec  bc                                          ; $434f: $0b
	rst  $38                                         ; $4350: $ff
	rst  $38                                         ; $4351: $ff
	nop                                              ; $4352: $00
	nop                                              ; $4353: $00
	nop                                              ; $4354: $00
	nop                                              ; $4355: $00
	jr   nz, jr_08c_4378                             ; $4356: $20 $20

	ld   hl, sp-$08                                  ; $4358: $f8 $f8
	jr   nz, @+$22                                   ; $435a: $20 $20

	ld   h, b                                        ; $435c: $60
	ld   h, b                                        ; $435d: $60
	cp   b                                           ; $435e: $b8
	cp   b                                           ; $435f: $b8
	rst  $38                                         ; $4360: $ff
	rst  $38                                         ; $4361: $ff
	nop                                              ; $4362: $00
	nop                                              ; $4363: $00
	nop                                              ; $4364: $00
	nop                                              ; $4365: $00
	nop                                              ; $4366: $00
	nop                                              ; $4367: $00
	nop                                              ; $4368: $00
	nop                                              ; $4369: $00
	nop                                              ; $436a: $00
	nop                                              ; $436b: $00
	nop                                              ; $436c: $00
	nop                                              ; $436d: $00
	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	rst  $38                                         ; $4370: $ff
	rst  $38                                         ; $4371: $ff
	ld   bc, $0101                                   ; $4372: $01 $01 $01
	ld   bc, $0101                                   ; $4375: $01 $01 $01

jr_08c_4378:
	ld   bc, $0101                                   ; $4378: $01 $01 $01
	ld   bc, $0101                                   ; $437b: $01 $01 $01
	ld   bc, $0001                                   ; $437e: $01 $01 $00
	nop                                              ; $4381: $00
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	nop                                              ; $4384: $00
	nop                                              ; $4385: $00
	nop                                              ; $4386: $00
	nop                                              ; $4387: $00
	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	nop                                              ; $438a: $00
	nop                                              ; $438b: $00
	nop                                              ; $438c: $00
	nop                                              ; $438d: $00
	rst  $38                                         ; $438e: $ff
	rst  $38                                         ; $438f: $ff
	nop                                              ; $4390: $00
	nop                                              ; $4391: $00
	nop                                              ; $4392: $00
	nop                                              ; $4393: $00
	nop                                              ; $4394: $00
	nop                                              ; $4395: $00
	nop                                              ; $4396: $00
	nop                                              ; $4397: $00
	nop                                              ; $4398: $00
	nop                                              ; $4399: $00
	nop                                              ; $439a: $00
	nop                                              ; $439b: $00
	nop                                              ; $439c: $00
	nop                                              ; $439d: $00
	rst  $38                                         ; $439e: $ff
	rst  $38                                         ; $439f: $ff
	dec  b                                           ; $43a0: $05
	dec  b                                           ; $43a1: $05
	dec  b                                           ; $43a2: $05
	dec  b                                           ; $43a3: $05
	dec  b                                           ; $43a4: $05
	dec  b                                           ; $43a5: $05
	dec  b                                           ; $43a6: $05
	dec  b                                           ; $43a7: $05
	dec  b                                           ; $43a8: $05
	dec  b                                           ; $43a9: $05
	rlca                                             ; $43aa: $07
	rlca                                             ; $43ab: $07
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	rst  $38                                         ; $43ae: $ff
	rst  $38                                         ; $43af: $ff
	nop                                              ; $43b0: $00
	nop                                              ; $43b1: $00
	nop                                              ; $43b2: $00
	nop                                              ; $43b3: $00
	nop                                              ; $43b4: $00
	nop                                              ; $43b5: $00
	nop                                              ; $43b6: $00
	nop                                              ; $43b7: $00
	nop                                              ; $43b8: $00
	nop                                              ; $43b9: $00
	rra                                              ; $43ba: $1f
	rra                                              ; $43bb: $1f
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	rst  $38                                         ; $43be: $ff
	rst  $38                                         ; $43bf: $ff
	ld   a, [bc]                                     ; $43c0: $0a
	ld   a, [bc]                                     ; $43c1: $0a
	dec  c                                           ; $43c2: $0d
	dec  c                                           ; $43c3: $0d
	add  hl, bc                                      ; $43c4: $09
	add  hl, bc                                      ; $43c5: $09
	add  hl, bc                                      ; $43c6: $09
	add  hl, bc                                      ; $43c7: $09
	add  hl, bc                                      ; $43c8: $09
	add  hl, bc                                      ; $43c9: $09
	jp   hl                                          ; $43ca: $e9


	jp   hl                                          ; $43cb: $e9


	nop                                              ; $43cc: $00
	nop                                              ; $43cd: $00
	rst  $38                                         ; $43ce: $ff
	rst  $38                                         ; $43cf: $ff
	nop                                              ; $43d0: $00
	nop                                              ; $43d1: $00
	ldh  a, [$f0]                                    ; $43d2: $f0 $f0
	db   $10                                         ; $43d4: $10
	db   $10                                         ; $43d5: $10
	ldh  a, [$f0]                                    ; $43d6: $f0 $f0
	db   $10                                         ; $43d8: $10
	db   $10                                         ; $43d9: $10
	ldh  a, [$f0]                                    ; $43da: $f0 $f0
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	rst  $38                                         ; $43de: $ff
	rst  $38                                         ; $43df: $ff
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
	rst  $38                                         ; $43ee: $ff
	rst  $38                                         ; $43ef: $ff
	ld   bc, $0101                                   ; $43f0: $01 $01 $01
	ld   bc, $0101                                   ; $43f3: $01 $01 $01
	ld   bc, $0101                                   ; $43f6: $01 $01 $01
	ld   bc, $0101                                   ; $43f9: $01 $01 $01
	ld   bc, $ff01                                   ; $43fc: $01 $01 $ff
	rst  $38                                         ; $43ff: $ff
	rst  $38                                         ; $4400: $ff
	rst  $38                                         ; $4401: $ff
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
	rst  $38                                         ; $4410: $ff
	rst  $38                                         ; $4411: $ff
	nop                                              ; $4412: $00
	nop                                              ; $4413: $00
	nop                                              ; $4414: $00
	nop                                              ; $4415: $00
	nop                                              ; $4416: $00
	nop                                              ; $4417: $00
	rlca                                             ; $4418: $07
	rlca                                             ; $4419: $07
	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	inc  bc                                          ; $441e: $03
	inc  bc                                          ; $441f: $03
	rst  $38                                         ; $4420: $ff
	rst  $38                                         ; $4421: $ff
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	nop                                              ; $4424: $00
	nop                                              ; $4425: $00
	add  c                                           ; $4426: $81
	add  c                                           ; $4427: $81
	ld   hl, sp-$08                                  ; $4428: $f8 $f8
	add  b                                           ; $442a: $80
	add  b                                           ; $442b: $80
	add  c                                           ; $442c: $81
	add  c                                           ; $442d: $81
	pop  af                                          ; $442e: $f1
	pop  af                                          ; $442f: $f1
	rst  $38                                         ; $4430: $ff
	rst  $38                                         ; $4431: $ff
	nop                                              ; $4432: $00
	nop                                              ; $4433: $00
	nop                                              ; $4434: $00
	nop                                              ; $4435: $00
	rst  $30                                         ; $4436: $f7
	rst  $30                                         ; $4437: $f7
	and  c                                           ; $4438: $a1
	and  c                                           ; $4439: $a1
	and  c                                           ; $443a: $a1
	and  c                                           ; $443b: $a1
	rst  $30                                         ; $443c: $f7
	rst  $30                                         ; $443d: $f7
	or   h                                           ; $443e: $b4
	or   h                                           ; $443f: $b4
	rst  $38                                         ; $4440: $ff
	rst  $38                                         ; $4441: $ff
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	nop                                              ; $4445: $00
	ld   [$0808], sp                                 ; $4446: $08 $08 $08
	ld   [$0808], sp                                 ; $4449: $08 $08 $08
	ld   [$0808], sp                                 ; $444c: $08 $08 $08
	ld   [$ffff], sp                                 ; $444f: $08 $ff $ff
	nop                                              ; $4452: $00
	nop                                              ; $4453: $00
	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	inc  b                                           ; $4456: $04
	inc  b                                           ; $4457: $04
	ld   a, a                                        ; $4458: $7f
	ld   a, a                                        ; $4459: $7f
	ld   b, b                                        ; $445a: $40
	ld   b, b                                        ; $445b: $40
	rra                                              ; $445c: $1f
	rra                                              ; $445d: $1f
	ld   [$ff08], sp                                 ; $445e: $08 $08 $ff
	rst  $38                                         ; $4461: $ff
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	nop                                              ; $4467: $00
	ret  nz                                          ; $4468: $c0

	ret  nz                                          ; $4469: $c0

	ld   b, b                                        ; $446a: $40
	ld   b, b                                        ; $446b: $40
	nop                                              ; $446c: $00
	nop                                              ; $446d: $00
	add  b                                           ; $446e: $80
	add  b                                           ; $446f: $80
	rst  $38                                         ; $4470: $ff
	rst  $38                                         ; $4471: $ff
	ld   bc, $0101                                   ; $4472: $01 $01 $01
	ld   bc, $0101                                   ; $4475: $01 $01 $01
	ld   bc, $0101                                   ; $4478: $01 $01 $01
	ld   bc, $0101                                   ; $447b: $01 $01 $01
	ld   bc, $0001                                   ; $447e: $01 $01 $00
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
	nop                                              ; $448b: $00
	nop                                              ; $448c: $00
	nop                                              ; $448d: $00
	rst  $38                                         ; $448e: $ff
	rst  $38                                         ; $448f: $ff
	nop                                              ; $4490: $00
	nop                                              ; $4491: $00
	ld   bc, $0001                                   ; $4492: $01 $01 $00
	nop                                              ; $4495: $00
	nop                                              ; $4496: $00
	nop                                              ; $4497: $00
	nop                                              ; $4498: $00
	nop                                              ; $4499: $00
	rlca                                             ; $449a: $07
	rlca                                             ; $449b: $07
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	ld   de, $2111                                   ; $44a0: $11 $11 $21
	ld   hl, $a1a1                                   ; $44a3: $21 $a1 $a1
	ld   b, c                                        ; $44a6: $41
	ld   b, c                                        ; $44a7: $41
	pop  bc                                          ; $44a8: $c1
	pop  bc                                          ; $44a9: $c1
	add  hl, sp                                      ; $44aa: $39
	add  hl, sp                                      ; $44ab: $39
	nop                                              ; $44ac: $00
	nop                                              ; $44ad: $00
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	or   h                                           ; $44b0: $b4
	or   h                                           ; $44b1: $b4
	inc  d                                           ; $44b2: $14
	inc  d                                           ; $44b3: $14
	inc  d                                           ; $44b4: $14
	inc  d                                           ; $44b5: $14
	db   $f4                                         ; $44b6: $f4
	db   $f4                                         ; $44b7: $f4
	dec  d                                           ; $44b8: $15
	dec  d                                           ; $44b9: $15
	rst  $30                                         ; $44ba: $f7
	rst  $30                                         ; $44bb: $f7
	nop                                              ; $44bc: $00
	nop                                              ; $44bd: $00
	rst  $38                                         ; $44be: $ff
	rst  $38                                         ; $44bf: $ff
	ld   [$1408], sp                                 ; $44c0: $08 $08 $14
	inc  d                                           ; $44c3: $14
	inc  d                                           ; $44c4: $14
	inc  d                                           ; $44c5: $14
	ld   [de], a                                     ; $44c6: $12
	ld   [de], a                                     ; $44c7: $12
	ld   [hl+], a                                    ; $44c8: $22
	ld   [hl+], a                                    ; $44c9: $22
	ld   b, c                                        ; $44ca: $41
	ld   b, c                                        ; $44cb: $41
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	rst  $38                                         ; $44ce: $ff
	rst  $38                                         ; $44cf: $ff
	rra                                              ; $44d0: $1f
	rra                                              ; $44d1: $1f
	inc  b                                           ; $44d2: $04
	inc  b                                           ; $44d3: $04
	rra                                              ; $44d4: $1f
	rra                                              ; $44d5: $1f
	inc  b                                           ; $44d6: $04
	inc  b                                           ; $44d7: $04
	inc  b                                           ; $44d8: $04
	inc  b                                           ; $44d9: $04
	cp   a                                           ; $44da: $bf
	cp   a                                           ; $44db: $bf
	nop                                              ; $44dc: $00
	nop                                              ; $44dd: $00
	rst  $38                                         ; $44de: $ff
	rst  $38                                         ; $44df: $ff
	add  b                                           ; $44e0: $80
	add  b                                           ; $44e1: $80
	add  b                                           ; $44e2: $80
	add  b                                           ; $44e3: $80
	nop                                              ; $44e4: $00
	nop                                              ; $44e5: $00
	nop                                              ; $44e6: $00
	nop                                              ; $44e7: $00
	nop                                              ; $44e8: $00
	nop                                              ; $44e9: $00
	ret  nz                                          ; $44ea: $c0

	ret  nz                                          ; $44eb: $c0

	nop                                              ; $44ec: $00
	nop                                              ; $44ed: $00
	rst  $38                                         ; $44ee: $ff
	rst  $38                                         ; $44ef: $ff
	ld   bc, $0101                                   ; $44f0: $01 $01 $01
	ld   bc, $0101                                   ; $44f3: $01 $01 $01
	ld   bc, $0101                                   ; $44f6: $01 $01 $01
	ld   bc, $0101                                   ; $44f9: $01 $01 $01

Call_08c_44fc:
	ld   bc, $ff01                                   ; $44fc: $01 $01 $ff
	rst  $38                                         ; $44ff: $ff
	rst  $38                                         ; $4500: $ff
	rst  $38                                         ; $4501: $ff
	nop                                              ; $4502: $00
	nop                                              ; $4503: $00
	nop                                              ; $4504: $00
	nop                                              ; $4505: $00
	nop                                              ; $4506: $00
	nop                                              ; $4507: $00
	nop                                              ; $4508: $00
	nop                                              ; $4509: $00
	nop                                              ; $450a: $00
	nop                                              ; $450b: $00
	nop                                              ; $450c: $00
	nop                                              ; $450d: $00
	nop                                              ; $450e: $00
	nop                                              ; $450f: $00
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	nop                                              ; $4512: $00
	nop                                              ; $4513: $00
	nop                                              ; $4514: $00
	nop                                              ; $4515: $00
	nop                                              ; $4516: $00
	nop                                              ; $4517: $00
	nop                                              ; $4518: $00
	nop                                              ; $4519: $00
	nop                                              ; $451a: $00
	nop                                              ; $451b: $00
	nop                                              ; $451c: $00
	nop                                              ; $451d: $00
	nop                                              ; $451e: $00
	nop                                              ; $451f: $00
	rst  $38                                         ; $4520: $ff
	rst  $38                                         ; $4521: $ff
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	nop                                              ; $4524: $00
	nop                                              ; $4525: $00
	inc  b                                           ; $4526: $04
	inc  b                                           ; $4527: $04
	ld   a, a                                        ; $4528: $7f
	ld   a, a                                        ; $4529: $7f
	inc  b                                           ; $452a: $04
	inc  b                                           ; $452b: $04
	ccf                                              ; $452c: $3f
	ccf                                              ; $452d: $3f
	inc  h                                           ; $452e: $24
	inc  h                                           ; $452f: $24
	rst  $38                                         ; $4530: $ff
	rst  $38                                         ; $4531: $ff
	nop                                              ; $4532: $00
	nop                                              ; $4533: $00
	nop                                              ; $4534: $00
	nop                                              ; $4535: $00
	rrca                                             ; $4536: $0f
	rrca                                             ; $4537: $0f
	pop  bc                                          ; $4538: $c1
	pop  bc                                          ; $4539: $c1
	rrca                                             ; $453a: $0f
	rrca                                             ; $453b: $0f
	add  d                                           ; $453c: $82
	add  d                                           ; $453d: $82
	add  e                                           ; $453e: $83
	add  e                                           ; $453f: $83
	rst  $38                                         ; $4540: $ff
	rst  $38                                         ; $4541: $ff
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	nop                                              ; $4544: $00
	nop                                              ; $4545: $00
	ld   b, b                                        ; $4546: $40
	ld   b, b                                        ; $4547: $40
	ld   a, h                                        ; $4548: $7c
	ld   a, h                                        ; $4549: $7c
	ret  nz                                          ; $454a: $c0

	ret  nz                                          ; $454b: $c0

	xor  b                                           ; $454c: $a8
	xor  b                                           ; $454d: $a8
	db   $10                                         ; $454e: $10
	db   $10                                         ; $454f: $10
	rst  $38                                         ; $4550: $ff
	rst  $38                                         ; $4551: $ff
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	nop                                              ; $4555: $00
	cp   $fe                                         ; $4556: $fe $fe
	add  d                                           ; $4558: $82
	add  d                                           ; $4559: $82
	cp   $fe                                         ; $455a: $fe $fe
	add  b                                           ; $455c: $80
	add  b                                           ; $455d: $80
	cp   $fe                                         ; $455e: $fe $fe
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
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
	nop                                              ; $456d: $00
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	rst  $38                                         ; $4570: $ff
	rst  $38                                         ; $4571: $ff
	ld   bc, $0101                                   ; $4572: $01 $01 $01
	ld   bc, $0101                                   ; $4575: $01 $01 $01
	ld   bc, $0101                                   ; $4578: $01 $01 $01
	ld   bc, $0101                                   ; $457b: $01 $01 $01
	ld   bc, $0001                                   ; $457e: $01 $01 $00
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
	rst  $38                                         ; $458e: $ff
	rst  $38                                         ; $458f: $ff
	nop                                              ; $4590: $00
	nop                                              ; $4591: $00
	nop                                              ; $4592: $00
	nop                                              ; $4593: $00
	nop                                              ; $4594: $00
	nop                                              ; $4595: $00
	nop                                              ; $4596: $00
	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	nop                                              ; $4599: $00
	nop                                              ; $459a: $00
	nop                                              ; $459b: $00
	nop                                              ; $459c: $00
	nop                                              ; $459d: $00
	rst  $38                                         ; $459e: $ff
	rst  $38                                         ; $459f: $ff
	ld   a, a                                        ; $45a0: $7f
	ld   a, a                                        ; $45a1: $7f
	inc  b                                           ; $45a2: $04
	inc  b                                           ; $45a3: $04
	rst  $38                                         ; $45a4: $ff
	rst  $38                                         ; $45a5: $ff
	inc  b                                           ; $45a6: $04
	inc  b                                           ; $45a7: $04
	ccf                                              ; $45a8: $3f
	ccf                                              ; $45a9: $3f
	inc  b                                           ; $45aa: $04
	inc  b                                           ; $45ab: $04
	nop                                              ; $45ac: $00
	nop                                              ; $45ad: $00
	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	jp   nz, Jump_08c_46c2                           ; $45b0: $c2 $c2 $46

	ld   b, [hl]                                     ; $45b3: $46
	ld   [$42ea], a                                  ; $45b4: $ea $ea $42
	ld   b, d                                        ; $45b7: $42
	add  [hl]                                        ; $45b8: $86
	add  [hl]                                        ; $45b9: $86
	ld   [bc], a                                     ; $45ba: $02
	ld   [bc], a                                     ; $45bb: $02
	nop                                              ; $45bc: $00
	nop                                              ; $45bd: $00
	rst  $38                                         ; $45be: $ff
	rst  $38                                         ; $45bf: $ff
	db   $ec                                         ; $45c0: $ec
	db   $ec                                         ; $45c1: $ec
	jr   nz, jr_08c_45e4                             ; $45c2: $20 $20

	db   $fc                                         ; $45c4: $fc
	db   $fc                                         ; $45c5: $fc
	inc  h                                           ; $45c6: $24
	inc  h                                           ; $45c7: $24
	inc  h                                           ; $45c8: $24
	inc  h                                           ; $45c9: $24
	ret                                              ; $45ca: $c9


	ret                                              ; $45cb: $c9


	nop                                              ; $45cc: $00
	nop                                              ; $45cd: $00
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	add  d                                           ; $45d0: $82
	add  d                                           ; $45d1: $82
	cp   d                                           ; $45d2: $ba
	cp   d                                           ; $45d3: $ba
	xor  d                                           ; $45d4: $aa
	xor  d                                           ; $45d5: $aa
	cp   d                                           ; $45d6: $ba
	cp   d                                           ; $45d7: $ba
	add  d                                           ; $45d8: $82
	add  d                                           ; $45d9: $82
	ld   b, $06                                      ; $45da: $06 $06
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	rst  $38                                         ; $45de: $ff
	rst  $38                                         ; $45df: $ff
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	nop                                              ; $45e3: $00

jr_08c_45e4:
	nop                                              ; $45e4: $00
	nop                                              ; $45e5: $00
	nop                                              ; $45e6: $00
	nop                                              ; $45e7: $00
	nop                                              ; $45e8: $00
	nop                                              ; $45e9: $00
	nop                                              ; $45ea: $00
	nop                                              ; $45eb: $00
	nop                                              ; $45ec: $00
	nop                                              ; $45ed: $00
	rst  $38                                         ; $45ee: $ff
	rst  $38                                         ; $45ef: $ff
	ld   bc, $0101                                   ; $45f0: $01 $01 $01
	ld   bc, $0101                                   ; $45f3: $01 $01 $01
	ld   bc, $0101                                   ; $45f6: $01 $01 $01
	ld   bc, $0101                                   ; $45f9: $01 $01 $01
	ld   bc, $ff01                                   ; $45fc: $01 $01 $ff
	rst  $38                                         ; $45ff: $ff
	rst  $38                                         ; $4600: $ff
	rst  $38                                         ; $4601: $ff
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
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	rst  $38                                         ; $4610: $ff
	rst  $38                                         ; $4611: $ff
	nop                                              ; $4612: $00
	nop                                              ; $4613: $00
	nop                                              ; $4614: $00
	nop                                              ; $4615: $00
	nop                                              ; $4616: $00
	nop                                              ; $4617: $00
	nop                                              ; $4618: $00
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	inc  bc                                          ; $4626: $03
	inc  bc                                          ; $4627: $03
	ld   [bc], a                                     ; $4628: $02
	ld   [bc], a                                     ; $4629: $02
	ld   [bc], a                                     ; $462a: $02
	ld   [bc], a                                     ; $462b: $02
	ld   [bc], a                                     ; $462c: $02
	ld   [bc], a                                     ; $462d: $02
	ld   [bc], a                                     ; $462e: $02
	ld   [bc], a                                     ; $462f: $02
	rst  $38                                         ; $4630: $ff
	rst  $38                                         ; $4631: $ff
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	nop                                              ; $4634: $00
	nop                                              ; $4635: $00
	cp   $fe                                         ; $4636: $fe $fe
	nop                                              ; $4638: $00
	nop                                              ; $4639: $00
	ldh  [c], a                                      ; $463a: $e2
	ldh  [c], a                                      ; $463b: $e2
	ld   [bc], a                                     ; $463c: $02
	ld   [bc], a                                     ; $463d: $02
	rst  $38                                         ; $463e: $ff
	rst  $38                                         ; $463f: $ff
	rst  $38                                         ; $4640: $ff
	rst  $38                                         ; $4641: $ff
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	ccf                                              ; $4646: $3f
	ccf                                              ; $4647: $3f
	nop                                              ; $4648: $00
	nop                                              ; $4649: $00
	ccf                                              ; $464a: $3f
	ccf                                              ; $464b: $3f
	jr   nz, jr_08c_466e                             ; $464c: $20 $20

	ccf                                              ; $464e: $3f
	ccf                                              ; $464f: $3f
	rst  $38                                         ; $4650: $ff
	rst  $38                                         ; $4651: $ff
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	ret  nz                                          ; $4656: $c0

	ret  nz                                          ; $4657: $c0

	nop                                              ; $4658: $00
	nop                                              ; $4659: $00
	ret  nz                                          ; $465a: $c0

	ret  nz                                          ; $465b: $c0

	ld   b, b                                        ; $465c: $40
	ld   b, b                                        ; $465d: $40
	ret  nz                                          ; $465e: $c0

	ret  nz                                          ; $465f: $c0

	rst  $38                                         ; $4660: $ff
	rst  $38                                         ; $4661: $ff
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	nop                                              ; $4664: $00
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	nop                                              ; $4669: $00
	nop                                              ; $466a: $00
	nop                                              ; $466b: $00
	nop                                              ; $466c: $00
	nop                                              ; $466d: $00

jr_08c_466e:
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	rst  $38                                         ; $4670: $ff
	rst  $38                                         ; $4671: $ff
	ld   bc, $0101                                   ; $4672: $01 $01 $01
	ld   bc, $0101                                   ; $4675: $01 $01 $01
	ld   bc, $0101                                   ; $4678: $01 $01 $01
	ld   bc, $0101                                   ; $467b: $01 $01 $01
	ld   bc, $0001                                   ; $467e: $01 $01 $00
	nop                                              ; $4681: $00
	nop                                              ; $4682: $00
	nop                                              ; $4683: $00
	nop                                              ; $4684: $00
	nop                                              ; $4685: $00
	nop                                              ; $4686: $00
	nop                                              ; $4687: $00
	nop                                              ; $4688: $00
	nop                                              ; $4689: $00
	nop                                              ; $468a: $00
	nop                                              ; $468b: $00
	nop                                              ; $468c: $00
	nop                                              ; $468d: $00
	rst  $38                                         ; $468e: $ff
	rst  $38                                         ; $468f: $ff
	nop                                              ; $4690: $00
	nop                                              ; $4691: $00
	nop                                              ; $4692: $00
	nop                                              ; $4693: $00
	nop                                              ; $4694: $00
	nop                                              ; $4695: $00
	nop                                              ; $4696: $00
	nop                                              ; $4697: $00
	nop                                              ; $4698: $00
	nop                                              ; $4699: $00
	nop                                              ; $469a: $00
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	nop                                              ; $469d: $00
	rst  $38                                         ; $469e: $ff
	rst  $38                                         ; $469f: $ff
	ld   [bc], a                                     ; $46a0: $02
	ld   [bc], a                                     ; $46a1: $02
	ld   [bc], a                                     ; $46a2: $02
	ld   [bc], a                                     ; $46a3: $02
	inc  b                                           ; $46a4: $04
	inc  b                                           ; $46a5: $04
	inc  b                                           ; $46a6: $04
	inc  b                                           ; $46a7: $04
	add  hl, bc                                      ; $46a8: $09
	add  hl, bc                                      ; $46a9: $09
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	nop                                              ; $46ac: $00
	nop                                              ; $46ad: $00
	rst  $38                                         ; $46ae: $ff
	rst  $38                                         ; $46af: $ff
	and  d                                           ; $46b0: $a2
	and  d                                           ; $46b1: $a2
	ld   [$aaea], a                                  ; $46b2: $ea $ea $aa
	xor  d                                           ; $46b5: $aa
	and  d                                           ; $46b6: $a2
	and  d                                           ; $46b7: $a2
	jp   nz, $06c2                                   ; $46b8: $c2 $c2 $06

	ld   b, $00                                      ; $46bb: $06 $00
	nop                                              ; $46bd: $00
	rst  $38                                         ; $46be: $ff
	rst  $38                                         ; $46bf: $ff
	ld   [hl+], a                                    ; $46c0: $22
	ld   [hl+], a                                    ; $46c1: $22

Jump_08c_46c2:
	ccf                                              ; $46c2: $3f
	ccf                                              ; $46c3: $3f
	ld   c, b                                        ; $46c4: $48
	ld   c, b                                        ; $46c5: $48
	ld   c, a                                        ; $46c6: $4f
	ld   c, a                                        ; $46c7: $4f
	sub  b                                           ; $46c8: $90
	sub  b                                           ; $46c9: $90
	ld   bc, $0001                                   ; $46ca: $01 $01 $00
	nop                                              ; $46cd: $00
	rst  $38                                         ; $46ce: $ff
	rst  $38                                         ; $46cf: $ff
	nop                                              ; $46d0: $00
	nop                                              ; $46d1: $00
	ret  nz                                          ; $46d2: $c0

	ret  nz                                          ; $46d3: $c0

	nop                                              ; $46d4: $00
	nop                                              ; $46d5: $00
	ret  nz                                          ; $46d6: $c0

	ret  nz                                          ; $46d7: $c0

	ld   b, b                                        ; $46d8: $40
	ld   b, b                                        ; $46d9: $40
	ret  nz                                          ; $46da: $c0

	ret  nz                                          ; $46db: $c0

	nop                                              ; $46dc: $00
	nop                                              ; $46dd: $00
	rst  $38                                         ; $46de: $ff
	rst  $38                                         ; $46df: $ff
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
	nop                                              ; $46eb: $00
	nop                                              ; $46ec: $00
	nop                                              ; $46ed: $00
	rst  $38                                         ; $46ee: $ff
	rst  $38                                         ; $46ef: $ff
	ld   bc, $0101                                   ; $46f0: $01 $01 $01
	ld   bc, $0101                                   ; $46f3: $01 $01 $01
	ld   bc, $0101                                   ; $46f6: $01 $01 $01
	ld   bc, $0101                                   ; $46f9: $01 $01 $01
	ld   bc, $ff01                                   ; $46fc: $01 $01 $ff
	rst  $38                                         ; $46ff: $ff
	rst  $38                                         ; $4700: $ff
	rst  $38                                         ; $4701: $ff
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
	nop                                              ; $470d: $00
	nop                                              ; $470e: $00
	nop                                              ; $470f: $00
	rst  $38                                         ; $4710: $ff
	rst  $38                                         ; $4711: $ff
	nop                                              ; $4712: $00
	nop                                              ; $4713: $00
	nop                                              ; $4714: $00
	nop                                              ; $4715: $00
	nop                                              ; $4716: $00
	nop                                              ; $4717: $00
	nop                                              ; $4718: $00
	nop                                              ; $4719: $00
	nop                                              ; $471a: $00
	nop                                              ; $471b: $00
	nop                                              ; $471c: $00
	nop                                              ; $471d: $00
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	rst  $38                                         ; $4720: $ff
	rst  $38                                         ; $4721: $ff
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	nop                                              ; $4726: $00
	nop                                              ; $4727: $00
	nop                                              ; $4728: $00
	nop                                              ; $4729: $00
	ld   bc, $0701                                   ; $472a: $01 $01 $07
	rlca                                             ; $472d: $07
	ld   bc, $ff01                                   ; $472e: $01 $01 $ff
	rst  $38                                         ; $4731: $ff
	nop                                              ; $4732: $00
	nop                                              ; $4733: $00
	nop                                              ; $4734: $00
	nop                                              ; $4735: $00
	ld   h, b                                        ; $4736: $60
	ld   h, b                                        ; $4737: $60
	sub  b                                           ; $4738: $90
	sub  b                                           ; $4739: $90
	ld   c, b                                        ; $473a: $48
	ld   c, b                                        ; $473b: $48
	cp   $fe                                         ; $473c: $fe $fe
	ld   [$ff08], sp                                 ; $473e: $08 $08 $ff
	rst  $38                                         ; $4741: $ff
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	inc  b                                           ; $4746: $04
	inc  b                                           ; $4747: $04
	dec  d                                           ; $4748: $15
	dec  d                                           ; $4749: $15
	ld   a, a                                        ; $474a: $7f
	ld   a, a                                        ; $474b: $7f
	ld   b, b                                        ; $474c: $40
	ld   b, b                                        ; $474d: $40
	rra                                              ; $474e: $1f
	rra                                              ; $474f: $1f
	rst  $38                                         ; $4750: $ff
	rst  $38                                         ; $4751: $ff
	nop                                              ; $4752: $00
	nop                                              ; $4753: $00
	nop                                              ; $4754: $00
	nop                                              ; $4755: $00
	nop                                              ; $4756: $00
	nop                                              ; $4757: $00
	nop                                              ; $4758: $00
	nop                                              ; $4759: $00
	ret  nz                                          ; $475a: $c0

	ret  nz                                          ; $475b: $c0

	ld   b, b                                        ; $475c: $40
	ld   b, b                                        ; $475d: $40
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	rst  $38                                         ; $4760: $ff
	rst  $38                                         ; $4761: $ff
	nop                                              ; $4762: $00
	nop                                              ; $4763: $00
	nop                                              ; $4764: $00
	nop                                              ; $4765: $00
	nop                                              ; $4766: $00
	nop                                              ; $4767: $00
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	rst  $38                                         ; $4770: $ff
	rst  $38                                         ; $4771: $ff
	ld   bc, $0101                                   ; $4772: $01 $01 $01
	ld   bc, $0101                                   ; $4775: $01 $01 $01
	ld   bc, $0101                                   ; $4778: $01 $01 $01
	ld   bc, $0101                                   ; $477b: $01 $01 $01
	ld   bc, $0001                                   ; $477e: $01 $01 $00
	nop                                              ; $4781: $00
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00
	nop                                              ; $4786: $00
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	nop                                              ; $4789: $00
	nop                                              ; $478a: $00
	nop                                              ; $478b: $00
	nop                                              ; $478c: $00
	nop                                              ; $478d: $00
	rst  $38                                         ; $478e: $ff
	rst  $38                                         ; $478f: $ff
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	nop                                              ; $4792: $00
	nop                                              ; $4793: $00
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	nop                                              ; $4796: $00
	nop                                              ; $4797: $00
	nop                                              ; $4798: $00
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	nop                                              ; $479c: $00
	nop                                              ; $479d: $00
	rst  $38                                         ; $479e: $ff
	rst  $38                                         ; $479f: $ff
	ld   bc, $0101                                   ; $47a0: $01 $01 $01
	ld   bc, $0101                                   ; $47a3: $01 $01 $01
	ld   bc, $0101                                   ; $47a6: $01 $01 $01
	ld   bc, $0101                                   ; $47a9: $01 $01 $01
	nop                                              ; $47ac: $00
	nop                                              ; $47ad: $00
	rst  $38                                         ; $47ae: $ff
	rst  $38                                         ; $47af: $ff
	ld   hl, sp-$08                                  ; $47b0: $f8 $f8
	ld   [$f808], sp                                 ; $47b2: $08 $08 $f8
	ld   hl, sp+$24                                  ; $47b5: $f8 $24
	inc  h                                           ; $47b7: $24
	ld   e, b                                        ; $47b8: $58
	ld   e, b                                        ; $47b9: $58
	adc  [hl]                                        ; $47ba: $8e
	adc  [hl]                                        ; $47bb: $8e
	nop                                              ; $47bc: $00
	nop                                              ; $47bd: $00
	rst  $38                                         ; $47be: $ff
	rst  $38                                         ; $47bf: $ff
	ld   de, $1f11                                   ; $47c0: $11 $11 $1f
	rra                                              ; $47c3: $1f
	inc  b                                           ; $47c4: $04
	inc  b                                           ; $47c5: $04
	rra                                              ; $47c6: $1f
	rra                                              ; $47c7: $1f
	inc  b                                           ; $47c8: $04
	inc  b                                           ; $47c9: $04
	ld   a, a                                        ; $47ca: $7f
	ld   a, a                                        ; $47cb: $7f
	nop                                              ; $47cc: $00
	nop                                              ; $47cd: $00
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	nop                                              ; $47d0: $00
	nop                                              ; $47d1: $00
	nop                                              ; $47d2: $00
	nop                                              ; $47d3: $00
	nop                                              ; $47d4: $00
	nop                                              ; $47d5: $00
	nop                                              ; $47d6: $00
	nop                                              ; $47d7: $00
	nop                                              ; $47d8: $00
	nop                                              ; $47d9: $00
	ret  nz                                          ; $47da: $c0

	ret  nz                                          ; $47db: $c0

	nop                                              ; $47dc: $00
	nop                                              ; $47dd: $00
	rst  $38                                         ; $47de: $ff
	rst  $38                                         ; $47df: $ff
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	nop                                              ; $47e4: $00
	nop                                              ; $47e5: $00
	nop                                              ; $47e6: $00
	nop                                              ; $47e7: $00
	nop                                              ; $47e8: $00
	nop                                              ; $47e9: $00
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	nop                                              ; $47ec: $00
	nop                                              ; $47ed: $00
	rst  $38                                         ; $47ee: $ff
	rst  $38                                         ; $47ef: $ff
	ld   bc, $0101                                   ; $47f0: $01 $01 $01
	ld   bc, $0101                                   ; $47f3: $01 $01 $01
	ld   bc, $0101                                   ; $47f6: $01 $01 $01
	ld   bc, $0101                                   ; $47f9: $01 $01 $01
	ld   bc, $ff01                                   ; $47fc: $01 $01 $ff
	rst  $38                                         ; $47ff: $ff
	rst  $38                                         ; $4800: $ff
	rst  $38                                         ; $4801: $ff
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	nop                                              ; $4806: $00
	nop                                              ; $4807: $00
	nop                                              ; $4808: $00
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	nop                                              ; $480b: $00
	nop                                              ; $480c: $00
	nop                                              ; $480d: $00
	nop                                              ; $480e: $00
	nop                                              ; $480f: $00
	rst  $38                                         ; $4810: $ff
	rst  $38                                         ; $4811: $ff
	nop                                              ; $4812: $00
	nop                                              ; $4813: $00
	nop                                              ; $4814: $00
	nop                                              ; $4815: $00
	nop                                              ; $4816: $00
	nop                                              ; $4817: $00
	nop                                              ; $4818: $00
	nop                                              ; $4819: $00
	nop                                              ; $481a: $00
	nop                                              ; $481b: $00
	nop                                              ; $481c: $00
	nop                                              ; $481d: $00
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	rst  $38                                         ; $4820: $ff
	rst  $38                                         ; $4821: $ff
	nop                                              ; $4822: $00
	nop                                              ; $4823: $00
	nop                                              ; $4824: $00
	nop                                              ; $4825: $00
	nop                                              ; $4826: $00
	nop                                              ; $4827: $00
	inc  bc                                          ; $4828: $03
	inc  bc                                          ; $4829: $03
	nop                                              ; $482a: $00
	nop                                              ; $482b: $00
	ld   bc, $0001                                   ; $482c: $01 $01 $00
	nop                                              ; $482f: $00
	rst  $38                                         ; $4830: $ff
	rst  $38                                         ; $4831: $ff
	nop                                              ; $4832: $00
	nop                                              ; $4833: $00
	nop                                              ; $4834: $00
	nop                                              ; $4835: $00
	jr   nz, jr_08c_4858                             ; $4836: $20 $20

	cp   $fe                                         ; $4838: $fe $fe
	jr   nz, jr_08c_485c                             ; $483a: $20 $20

	db   $fc                                         ; $483c: $fc
	db   $fc                                         ; $483d: $fc
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	rst  $38                                         ; $4840: $ff
	rst  $38                                         ; $4841: $ff
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	ld   [bc], a                                     ; $4846: $02
	ld   [bc], a                                     ; $4847: $02
	ccf                                              ; $4848: $3f
	ccf                                              ; $4849: $3f
	ld   [hl+], a                                    ; $484a: $22
	ld   [hl+], a                                    ; $484b: $22
	ld   [hl+], a                                    ; $484c: $22
	ld   [hl+], a                                    ; $484d: $22
	inc  hl                                          ; $484e: $23
	inc  hl                                          ; $484f: $23
	rst  $38                                         ; $4850: $ff
	rst  $38                                         ; $4851: $ff
	nop                                              ; $4852: $00
	nop                                              ; $4853: $00
	nop                                              ; $4854: $00
	nop                                              ; $4855: $00
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00

jr_08c_4858:
	ret  nz                                          ; $4858: $c0

	ret  nz                                          ; $4859: $c0

	nop                                              ; $485a: $00
	nop                                              ; $485b: $00

jr_08c_485c:
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	ret  nz                                          ; $485e: $c0

	ret  nz                                          ; $485f: $c0

	rst  $38                                         ; $4860: $ff
	rst  $38                                         ; $4861: $ff
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
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	rst  $38                                         ; $4870: $ff
	rst  $38                                         ; $4871: $ff
	ld   bc, $0101                                   ; $4872: $01 $01 $01
	ld   bc, $0101                                   ; $4875: $01 $01 $01
	ld   bc, $0101                                   ; $4878: $01 $01 $01
	ld   bc, $0101                                   ; $487b: $01 $01 $01
	ld   bc, $0001                                   ; $487e: $01 $01 $00
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
	nop                                              ; $488d: $00
	rst  $38                                         ; $488e: $ff
	rst  $38                                         ; $488f: $ff
	nop                                              ; $4890: $00
	nop                                              ; $4891: $00
	nop                                              ; $4892: $00
	nop                                              ; $4893: $00
	nop                                              ; $4894: $00
	nop                                              ; $4895: $00
	nop                                              ; $4896: $00
	nop                                              ; $4897: $00
	nop                                              ; $4898: $00
	nop                                              ; $4899: $00
	nop                                              ; $489a: $00
	nop                                              ; $489b: $00
	nop                                              ; $489c: $00
	nop                                              ; $489d: $00
	rst  $38                                         ; $489e: $ff
	rst  $38                                         ; $489f: $ff
	inc  bc                                          ; $48a0: $03
	inc  bc                                          ; $48a1: $03
	ld   [bc], a                                     ; $48a2: $02
	ld   [bc], a                                     ; $48a3: $02
	nop                                              ; $48a4: $00
	nop                                              ; $48a5: $00
	nop                                              ; $48a6: $00
	nop                                              ; $48a7: $00
	nop                                              ; $48a8: $00
	nop                                              ; $48a9: $00
	inc  bc                                          ; $48aa: $03
	inc  bc                                          ; $48ab: $03
	nop                                              ; $48ac: $00
	nop                                              ; $48ad: $00
	rst  $38                                         ; $48ae: $ff
	rst  $38                                         ; $48af: $ff
	cp   $fe                                         ; $48b0: $fe $fe
	ld   [bc], a                                     ; $48b2: $02
	ld   [bc], a                                     ; $48b3: $02
	sub  b                                           ; $48b4: $90
	sub  b                                           ; $48b5: $90
	sub  d                                           ; $48b6: $92
	sub  d                                           ; $48b7: $92
	sub  d                                           ; $48b8: $92
	sub  d                                           ; $48b9: $92
	ld   e, $1e                                      ; $48ba: $1e $1e
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	rst  $38                                         ; $48be: $ff
	rst  $38                                         ; $48bf: $ff
	ld   [hl+], a                                    ; $48c0: $22
	ld   [hl+], a                                    ; $48c1: $22
	ld   [hl+], a                                    ; $48c2: $22
	ld   [hl+], a                                    ; $48c3: $22
	cpl                                              ; $48c4: $2f
	cpl                                              ; $48c5: $2f
	jr   z, jr_08c_48f0                              ; $48c6: $28 $28

	jr   z, @+$2a                                    ; $48c8: $28 $28

	ld   c, a                                        ; $48ca: $4f
	ld   c, a                                        ; $48cb: $4f
	nop                                              ; $48cc: $00
	nop                                              ; $48cd: $00
	rst  $38                                         ; $48ce: $ff
	rst  $38                                         ; $48cf: $ff
	nop                                              ; $48d0: $00
	nop                                              ; $48d1: $00
	nop                                              ; $48d2: $00
	nop                                              ; $48d3: $00
	ret  nz                                          ; $48d4: $c0

	ret  nz                                          ; $48d5: $c0

	ld   b, b                                        ; $48d6: $40
	ld   b, b                                        ; $48d7: $40
	ld   b, b                                        ; $48d8: $40
	ld   b, b                                        ; $48d9: $40
	ret  nz                                          ; $48da: $c0

	ret  nz                                          ; $48db: $c0

	nop                                              ; $48dc: $00
	nop                                              ; $48dd: $00
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	nop                                              ; $48e0: $00
	nop                                              ; $48e1: $00
	nop                                              ; $48e2: $00
	nop                                              ; $48e3: $00
	nop                                              ; $48e4: $00
	nop                                              ; $48e5: $00
	nop                                              ; $48e6: $00
	nop                                              ; $48e7: $00
	nop                                              ; $48e8: $00
	nop                                              ; $48e9: $00
	nop                                              ; $48ea: $00
	nop                                              ; $48eb: $00
	nop                                              ; $48ec: $00
	nop                                              ; $48ed: $00
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff

jr_08c_48f0:
	ld   bc, $0101                                   ; $48f0: $01 $01 $01
	ld   bc, $0101                                   ; $48f3: $01 $01 $01
	ld   bc, $0101                                   ; $48f6: $01 $01 $01
	ld   bc, $0101                                   ; $48f9: $01 $01 $01
	ld   bc, $ff01                                   ; $48fc: $01 $01 $ff
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	rst  $38                                         ; $4901: $ff
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
	rst  $38                                         ; $4910: $ff
	rst  $38                                         ; $4911: $ff
	nop                                              ; $4912: $00
	nop                                              ; $4913: $00
	nop                                              ; $4914: $00
	nop                                              ; $4915: $00
	nop                                              ; $4916: $00
	nop                                              ; $4917: $00
	nop                                              ; $4918: $00
	nop                                              ; $4919: $00
	nop                                              ; $491a: $00
	nop                                              ; $491b: $00
	nop                                              ; $491c: $00
	nop                                              ; $491d: $00
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	rst  $38                                         ; $4920: $ff
	rst  $38                                         ; $4921: $ff
	nop                                              ; $4922: $00
	nop                                              ; $4923: $00
	nop                                              ; $4924: $00
	nop                                              ; $4925: $00
	nop                                              ; $4926: $00
	nop                                              ; $4927: $00
	rra                                              ; $4928: $1f
	rra                                              ; $4929: $1f
	db   $10                                         ; $492a: $10
	db   $10                                         ; $492b: $10
	db   $10                                         ; $492c: $10
	db   $10                                         ; $492d: $10
	db   $10                                         ; $492e: $10
	db   $10                                         ; $492f: $10
	rst  $38                                         ; $4930: $ff
	rst  $38                                         ; $4931: $ff
	nop                                              ; $4932: $00
	nop                                              ; $4933: $00
	nop                                              ; $4934: $00
	nop                                              ; $4935: $00
	nop                                              ; $4936: $00
	nop                                              ; $4937: $00
	jp   nz, Jump_08c_42c2                           ; $4938: $c2 $c2 $42

	ld   b, d                                        ; $493b: $42
	ld   b, d                                        ; $493c: $42
	ld   b, d                                        ; $493d: $42
	ld   b, e                                        ; $493e: $43
	ld   b, e                                        ; $493f: $43
	rst  $38                                         ; $4940: $ff
	rst  $38                                         ; $4941: $ff
	nop                                              ; $4942: $00
	nop                                              ; $4943: $00
	nop                                              ; $4944: $00
	nop                                              ; $4945: $00
	nop                                              ; $4946: $00
	nop                                              ; $4947: $00
	jr   z, jr_08c_4972                              ; $4948: $28 $28

	jr   z, @+$2a                                    ; $494a: $28 $28

	nop                                              ; $494c: $00
	nop                                              ; $494d: $00
	ldh  a, [$f0]                                    ; $494e: $f0 $f0
	rst  $38                                         ; $4950: $ff
	rst  $38                                         ; $4951: $ff
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	nop                                              ; $4954: $00
	nop                                              ; $4955: $00
	nop                                              ; $4956: $00
	nop                                              ; $4957: $00
	nop                                              ; $4958: $00
	nop                                              ; $4959: $00
	nop                                              ; $495a: $00
	nop                                              ; $495b: $00
	nop                                              ; $495c: $00
	nop                                              ; $495d: $00
	nop                                              ; $495e: $00
	nop                                              ; $495f: $00
	rst  $38                                         ; $4960: $ff
	rst  $38                                         ; $4961: $ff
	nop                                              ; $4962: $00
	nop                                              ; $4963: $00
	nop                                              ; $4964: $00
	nop                                              ; $4965: $00
	nop                                              ; $4966: $00
	nop                                              ; $4967: $00
	nop                                              ; $4968: $00
	nop                                              ; $4969: $00
	nop                                              ; $496a: $00
	nop                                              ; $496b: $00
	nop                                              ; $496c: $00
	nop                                              ; $496d: $00
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	rst  $38                                         ; $4970: $ff
	rst  $38                                         ; $4971: $ff

jr_08c_4972:
	ld   bc, $0101                                   ; $4972: $01 $01 $01
	ld   bc, $0101                                   ; $4975: $01 $01 $01
	ld   bc, $0101                                   ; $4978: $01 $01 $01
	ld   bc, $0101                                   ; $497b: $01 $01 $01
	ld   bc, $0001                                   ; $497e: $01 $01 $00
	nop                                              ; $4981: $00
	nop                                              ; $4982: $00
	nop                                              ; $4983: $00
	nop                                              ; $4984: $00
	nop                                              ; $4985: $00
	nop                                              ; $4986: $00
	nop                                              ; $4987: $00
	nop                                              ; $4988: $00
	nop                                              ; $4989: $00
	nop                                              ; $498a: $00
	nop                                              ; $498b: $00
	nop                                              ; $498c: $00
	nop                                              ; $498d: $00
	rst  $38                                         ; $498e: $ff
	rst  $38                                         ; $498f: $ff
	nop                                              ; $4990: $00
	nop                                              ; $4991: $00
	nop                                              ; $4992: $00
	nop                                              ; $4993: $00
	nop                                              ; $4994: $00
	nop                                              ; $4995: $00
	nop                                              ; $4996: $00
	nop                                              ; $4997: $00
	nop                                              ; $4998: $00
	nop                                              ; $4999: $00
	nop                                              ; $499a: $00
	nop                                              ; $499b: $00
	nop                                              ; $499c: $00
	nop                                              ; $499d: $00
	rst  $38                                         ; $499e: $ff
	rst  $38                                         ; $499f: $ff
	db   $10                                         ; $49a0: $10
	db   $10                                         ; $49a1: $10
	db   $10                                         ; $49a2: $10
	db   $10                                         ; $49a3: $10
	db   $10                                         ; $49a4: $10
	db   $10                                         ; $49a5: $10
	db   $10                                         ; $49a6: $10
	db   $10                                         ; $49a7: $10
	db   $10                                         ; $49a8: $10
	db   $10                                         ; $49a9: $10
	rra                                              ; $49aa: $1f
	rra                                              ; $49ab: $1f
	nop                                              ; $49ac: $00
	nop                                              ; $49ad: $00
	rst  $38                                         ; $49ae: $ff
	rst  $38                                         ; $49af: $ff
	ld   b, d                                        ; $49b0: $42
	ld   b, d                                        ; $49b1: $42
	ld   b, d                                        ; $49b2: $42
	ld   b, d                                        ; $49b3: $42
	ld   b, d                                        ; $49b4: $42
	ld   b, d                                        ; $49b5: $42
	ld   b, d                                        ; $49b6: $42
	ld   b, d                                        ; $49b7: $42
	ld   b, d                                        ; $49b8: $42
	ld   b, d                                        ; $49b9: $42
	pop  bc                                          ; $49ba: $c1
	pop  bc                                          ; $49bb: $c1
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	rst  $38                                         ; $49be: $ff
	rst  $38                                         ; $49bf: $ff
	ld   bc, $0001                                   ; $49c0: $01 $01 $00
	nop                                              ; $49c3: $00
	nop                                              ; $49c4: $00
	nop                                              ; $49c5: $00
	nop                                              ; $49c6: $00
	nop                                              ; $49c7: $00
	nop                                              ; $49c8: $00
	nop                                              ; $49c9: $00
	ldh  a, [$f0]                                    ; $49ca: $f0 $f0
	nop                                              ; $49cc: $00
	nop                                              ; $49cd: $00
	rst  $38                                         ; $49ce: $ff
	rst  $38                                         ; $49cf: $ff
	ld   hl, sp-$08                                  ; $49d0: $f8 $f8
	nop                                              ; $49d2: $00
	nop                                              ; $49d3: $00
	nop                                              ; $49d4: $00
	nop                                              ; $49d5: $00
	nop                                              ; $49d6: $00
	nop                                              ; $49d7: $00
	nop                                              ; $49d8: $00
	nop                                              ; $49d9: $00
	nop                                              ; $49da: $00
	nop                                              ; $49db: $00
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	rst  $38                                         ; $49de: $ff
	rst  $38                                         ; $49df: $ff
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
	nop                                              ; $49eb: $00
	nop                                              ; $49ec: $00
	nop                                              ; $49ed: $00
	rst  $38                                         ; $49ee: $ff
	rst  $38                                         ; $49ef: $ff
	ld   bc, $0101                                   ; $49f0: $01 $01 $01
	ld   bc, $0101                                   ; $49f3: $01 $01 $01
	ld   bc, $0101                                   ; $49f6: $01 $01 $01
	ld   bc, $0101                                   ; $49f9: $01 $01 $01
	ld   bc, $ff01                                   ; $49fc: $01 $01 $ff
	rst  $38                                         ; $49ff: $ff
	rst  $38                                         ; $4a00: $ff
	rst  $38                                         ; $4a01: $ff
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
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	nop                                              ; $4a12: $00
	nop                                              ; $4a13: $00
	nop                                              ; $4a14: $00
	nop                                              ; $4a15: $00
	nop                                              ; $4a16: $00
	nop                                              ; $4a17: $00
	nop                                              ; $4a18: $00
	nop                                              ; $4a19: $00
	nop                                              ; $4a1a: $00
	nop                                              ; $4a1b: $00
	nop                                              ; $4a1c: $00
	nop                                              ; $4a1d: $00
	nop                                              ; $4a1e: $00
	nop                                              ; $4a1f: $00
	rst  $38                                         ; $4a20: $ff
	rst  $38                                         ; $4a21: $ff
	nop                                              ; $4a22: $00
	nop                                              ; $4a23: $00
	nop                                              ; $4a24: $00
	nop                                              ; $4a25: $00
	nop                                              ; $4a26: $00
	nop                                              ; $4a27: $00
	inc  bc                                          ; $4a28: $03
	inc  bc                                          ; $4a29: $03
	nop                                              ; $4a2a: $00
	nop                                              ; $4a2b: $00
	nop                                              ; $4a2c: $00
	nop                                              ; $4a2d: $00
	ld   bc, $ff01                                   ; $4a2e: $01 $01 $ff
	rst  $38                                         ; $4a31: $ff
	nop                                              ; $4a32: $00
	nop                                              ; $4a33: $00
	nop                                              ; $4a34: $00
	nop                                              ; $4a35: $00
	ld   b, b                                        ; $4a36: $40
	ld   b, b                                        ; $4a37: $40
	db   $fc                                         ; $4a38: $fc
	db   $fc                                         ; $4a39: $fc
	ld   b, b                                        ; $4a3a: $40
	ld   b, b                                        ; $4a3b: $40
	add  b                                           ; $4a3c: $80
	add  b                                           ; $4a3d: $80
	db   $10                                         ; $4a3e: $10
	db   $10                                         ; $4a3f: $10
	rst  $38                                         ; $4a40: $ff
	rst  $38                                         ; $4a41: $ff
	nop                                              ; $4a42: $00
	nop                                              ; $4a43: $00
	nop                                              ; $4a44: $00
	nop                                              ; $4a45: $00
	ld   a, e                                        ; $4a46: $7b
	ld   a, e                                        ; $4a47: $7b
	ld   c, d                                        ; $4a48: $4a
	ld   c, d                                        ; $4a49: $4a
	ld   a, e                                        ; $4a4a: $7b
	ld   a, e                                        ; $4a4b: $7b
	ld   c, d                                        ; $4a4c: $4a
	ld   c, d                                        ; $4a4d: $4a
	ld   a, e                                        ; $4a4e: $7b
	ld   a, e                                        ; $4a4f: $7b
	rst  $38                                         ; $4a50: $ff
	rst  $38                                         ; $4a51: $ff
	nop                                              ; $4a52: $00
	nop                                              ; $4a53: $00
	nop                                              ; $4a54: $00
	nop                                              ; $4a55: $00
	ret  nz                                          ; $4a56: $c0

	ret  nz                                          ; $4a57: $c0

	ld   b, b                                        ; $4a58: $40
	ld   b, b                                        ; $4a59: $40
	ret  nz                                          ; $4a5a: $c0

	ret  nz                                          ; $4a5b: $c0

	ld   b, b                                        ; $4a5c: $40
	ld   b, b                                        ; $4a5d: $40
	ret  nz                                          ; $4a5e: $c0

	ret  nz                                          ; $4a5f: $c0

	rst  $38                                         ; $4a60: $ff
	rst  $38                                         ; $4a61: $ff
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	nop                                              ; $4a65: $00
	nop                                              ; $4a66: $00
	nop                                              ; $4a67: $00
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	nop                                              ; $4a6a: $00
	nop                                              ; $4a6b: $00
	nop                                              ; $4a6c: $00
	nop                                              ; $4a6d: $00
	nop                                              ; $4a6e: $00
	nop                                              ; $4a6f: $00
	rst  $38                                         ; $4a70: $ff
	rst  $38                                         ; $4a71: $ff
	ld   bc, $0101                                   ; $4a72: $01 $01 $01
	ld   bc, $0101                                   ; $4a75: $01 $01 $01
	ld   bc, $0101                                   ; $4a78: $01 $01 $01
	ld   bc, $0101                                   ; $4a7b: $01 $01 $01
	ld   bc, $0001                                   ; $4a7e: $01 $01 $00
	nop                                              ; $4a81: $00
	nop                                              ; $4a82: $00
	nop                                              ; $4a83: $00
	nop                                              ; $4a84: $00
	nop                                              ; $4a85: $00
	nop                                              ; $4a86: $00
	nop                                              ; $4a87: $00
	nop                                              ; $4a88: $00
	nop                                              ; $4a89: $00
	nop                                              ; $4a8a: $00
	nop                                              ; $4a8b: $00
	nop                                              ; $4a8c: $00
	nop                                              ; $4a8d: $00
	rst  $38                                         ; $4a8e: $ff
	rst  $38                                         ; $4a8f: $ff
	nop                                              ; $4a90: $00
	nop                                              ; $4a91: $00
	nop                                              ; $4a92: $00
	nop                                              ; $4a93: $00
	nop                                              ; $4a94: $00
	nop                                              ; $4a95: $00
	nop                                              ; $4a96: $00
	nop                                              ; $4a97: $00
	nop                                              ; $4a98: $00
	nop                                              ; $4a99: $00
	nop                                              ; $4a9a: $00
	nop                                              ; $4a9b: $00
	nop                                              ; $4a9c: $00
	nop                                              ; $4a9d: $00
	rst  $38                                         ; $4a9e: $ff
	rst  $38                                         ; $4a9f: $ff
	nop                                              ; $4aa0: $00
	nop                                              ; $4aa1: $00
	nop                                              ; $4aa2: $00
	nop                                              ; $4aa3: $00
	nop                                              ; $4aa4: $00
	nop                                              ; $4aa5: $00
	ld   bc, $0301                                   ; $4aa6: $01 $01 $03
	inc  bc                                          ; $4aa9: $03
	nop                                              ; $4aaa: $00
	nop                                              ; $4aab: $00
	nop                                              ; $4aac: $00
	nop                                              ; $4aad: $00
	rst  $38                                         ; $4aae: $ff
	rst  $38                                         ; $4aaf: $ff
	and  b                                           ; $4ab0: $a0
	and  b                                           ; $4ab1: $a0
	ld   b, b                                        ; $4ab2: $40
	ld   b, b                                        ; $4ab3: $40
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	inc  b                                           ; $4ab6: $04
	inc  b                                           ; $4ab7: $04
	db   $fc                                         ; $4ab8: $fc
	db   $fc                                         ; $4ab9: $fc
	inc  b                                           ; $4aba: $04
	inc  b                                           ; $4abb: $04
	nop                                              ; $4abc: $00
	nop                                              ; $4abd: $00
	rst  $38                                         ; $4abe: $ff
	rst  $38                                         ; $4abf: $ff
	ld   c, d                                        ; $4ac0: $4a
	ld   c, d                                        ; $4ac1: $4a
	ld   e, a                                        ; $4ac2: $5f

Jump_08c_4ac3:
	ld   e, a                                        ; $4ac3: $5f
	ld   b, h                                        ; $4ac4: $44
	ld   b, h                                        ; $4ac5: $44
	ld   e, a                                        ; $4ac6: $5f
	ld   e, a                                        ; $4ac7: $5f
	ld   c, d                                        ; $4ac8: $4a
	ld   c, d                                        ; $4ac9: $4a
	ld   d, c                                        ; $4aca: $51
	ld   d, c                                        ; $4acb: $51
	nop                                              ; $4acc: $00
	nop                                              ; $4acd: $00
	rst  $38                                         ; $4ace: $ff
	rst  $38                                         ; $4acf: $ff
	ld   b, b                                        ; $4ad0: $40
	ld   b, b                                        ; $4ad1: $40
	ld   b, b                                        ; $4ad2: $40
	ld   b, b                                        ; $4ad3: $40
	ld   b, b                                        ; $4ad4: $40
	ld   b, b                                        ; $4ad5: $40
	ld   b, b                                        ; $4ad6: $40
	ld   b, b                                        ; $4ad7: $40
	ld   b, b                                        ; $4ad8: $40
	ld   b, b                                        ; $4ad9: $40
	ld   b, b                                        ; $4ada: $40
	ld   b, b                                        ; $4adb: $40
	nop                                              ; $4adc: $00
	nop                                              ; $4add: $00
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	nop                                              ; $4ae4: $00
	nop                                              ; $4ae5: $00
	nop                                              ; $4ae6: $00
	nop                                              ; $4ae7: $00
	nop                                              ; $4ae8: $00
	nop                                              ; $4ae9: $00
	nop                                              ; $4aea: $00
	nop                                              ; $4aeb: $00
	nop                                              ; $4aec: $00
	nop                                              ; $4aed: $00
	rst  $38                                         ; $4aee: $ff
	rst  $38                                         ; $4aef: $ff
	ld   bc, $0101                                   ; $4af0: $01 $01 $01
	ld   bc, $0101                                   ; $4af3: $01 $01 $01
	ld   bc, $0101                                   ; $4af6: $01 $01 $01
	ld   bc, $0101                                   ; $4af9: $01 $01 $01
	ld   bc, $ff01                                   ; $4afc: $01 $01 $ff
	rst  $38                                         ; $4aff: $ff
	rst  $38                                         ; $4b00: $ff
	rst  $38                                         ; $4b01: $ff
	nop                                              ; $4b02: $00
	nop                                              ; $4b03: $00
	nop                                              ; $4b04: $00
	nop                                              ; $4b05: $00
	nop                                              ; $4b06: $00
	nop                                              ; $4b07: $00
	nop                                              ; $4b08: $00
	nop                                              ; $4b09: $00
	nop                                              ; $4b0a: $00
	nop                                              ; $4b0b: $00
	nop                                              ; $4b0c: $00
	nop                                              ; $4b0d: $00
	nop                                              ; $4b0e: $00
	nop                                              ; $4b0f: $00
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	nop                                              ; $4b12: $00
	nop                                              ; $4b13: $00
	nop                                              ; $4b14: $00
	nop                                              ; $4b15: $00
	nop                                              ; $4b16: $00
	nop                                              ; $4b17: $00
	nop                                              ; $4b18: $00
	nop                                              ; $4b19: $00
	nop                                              ; $4b1a: $00
	nop                                              ; $4b1b: $00
	nop                                              ; $4b1c: $00
	nop                                              ; $4b1d: $00
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	rst  $38                                         ; $4b20: $ff
	rst  $38                                         ; $4b21: $ff
	nop                                              ; $4b22: $00
	nop                                              ; $4b23: $00
	nop                                              ; $4b24: $00
	nop                                              ; $4b25: $00
	inc  bc                                          ; $4b26: $03
	inc  bc                                          ; $4b27: $03
	ld   [bc], a                                     ; $4b28: $02
	ld   [bc], a                                     ; $4b29: $02
	ld   [bc], a                                     ; $4b2a: $02
	ld   [bc], a                                     ; $4b2b: $02
	inc  bc                                          ; $4b2c: $03
	inc  bc                                          ; $4b2d: $03
	ld   [bc], a                                     ; $4b2e: $02
	ld   [bc], a                                     ; $4b2f: $02
	rst  $38                                         ; $4b30: $ff
	rst  $38                                         ; $4b31: $ff
	nop                                              ; $4b32: $00
	nop                                              ; $4b33: $00
	nop                                              ; $4b34: $00
	nop                                              ; $4b35: $00
	ld   c, b                                        ; $4b36: $48
	ld   c, b                                        ; $4b37: $48
	cp   $fe                                         ; $4b38: $fe $fe
	ret  z                                           ; $4b3a: $c8

	ret  z                                           ; $4b3b: $c8

	ld   e, b                                        ; $4b3c: $58
	ld   e, b                                        ; $4b3d: $58
	xor  $ee                                         ; $4b3e: $ee $ee
	rst  $38                                         ; $4b40: $ff
	rst  $38                                         ; $4b41: $ff
	nop                                              ; $4b42: $00
	nop                                              ; $4b43: $00
	nop                                              ; $4b44: $00
	nop                                              ; $4b45: $00
	ld   [$ff08], sp                                 ; $4b46: $08 $08 $ff
	rst  $38                                         ; $4b49: $ff
	add  b                                           ; $4b4a: $80
	add  b                                           ; $4b4b: $80
	ld   e, $1e                                      ; $4b4c: $1e $1e
	ld   h, d                                        ; $4b4e: $62
	ld   h, d                                        ; $4b4f: $62
	rst  $38                                         ; $4b50: $ff
	rst  $38                                         ; $4b51: $ff
	nop                                              ; $4b52: $00
	nop                                              ; $4b53: $00
	nop                                              ; $4b54: $00
	nop                                              ; $4b55: $00
	ld   [bc], a                                     ; $4b56: $02
	ld   [bc], a                                     ; $4b57: $02
	cp   a                                           ; $4b58: $bf
	cp   a                                           ; $4b59: $bf
	and  h                                           ; $4b5a: $a4
	and  h                                           ; $4b5b: $a4
	ccf                                              ; $4b5c: $3f
	ccf                                              ; $4b5d: $3f
	inc  h                                           ; $4b5e: $24
	inc  h                                           ; $4b5f: $24
	rst  $38                                         ; $4b60: $ff
	rst  $38                                         ; $4b61: $ff
	nop                                              ; $4b62: $00
	nop                                              ; $4b63: $00
	nop                                              ; $4b64: $00
	nop                                              ; $4b65: $00
	nop                                              ; $4b66: $00
	nop                                              ; $4b67: $00
	ldh  [$e0], a                                    ; $4b68: $e0 $e0
	add  b                                           ; $4b6a: $80
	add  b                                           ; $4b6b: $80
	ldh  [$e0], a                                    ; $4b6c: $e0 $e0
	add  b                                           ; $4b6e: $80
	add  b                                           ; $4b6f: $80
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	ld   bc, $0101                                   ; $4b72: $01 $01 $01
	ld   bc, $0101                                   ; $4b75: $01 $01 $01
	ld   bc, $0101                                   ; $4b78: $01 $01 $01
	ld   bc, $0101                                   ; $4b7b: $01 $01 $01
	ld   bc, $0001                                   ; $4b7e: $01 $01 $00
	nop                                              ; $4b81: $00
	nop                                              ; $4b82: $00
	nop                                              ; $4b83: $00
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	nop                                              ; $4b86: $00
	nop                                              ; $4b87: $00
	nop                                              ; $4b88: $00
	nop                                              ; $4b89: $00
	nop                                              ; $4b8a: $00
	nop                                              ; $4b8b: $00
	nop                                              ; $4b8c: $00
	nop                                              ; $4b8d: $00
	rst  $38                                         ; $4b8e: $ff
	rst  $38                                         ; $4b8f: $ff
	rlca                                             ; $4b90: $07
	rlca                                             ; $4b91: $07
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
	rst  $38                                         ; $4b9e: $ff
	rst  $38                                         ; $4b9f: $ff
	ld   a, [$03fa]                                  ; $4ba0: $fa $fa $03
	inc  bc                                          ; $4ba3: $03
	ld   [bc], a                                     ; $4ba4: $02
	ld   [bc], a                                     ; $4ba5: $02
	ld   [bc], a                                     ; $4ba6: $02
	ld   [bc], a                                     ; $4ba7: $02
	ld   [bc], a                                     ; $4ba8: $02
	ld   [bc], a                                     ; $4ba9: $02
	ld   [bc], a                                     ; $4baa: $02
	ld   [bc], a                                     ; $4bab: $02
	nop                                              ; $4bac: $00
	nop                                              ; $4bad: $00
	rst  $38                                         ; $4bae: $ff
	rst  $38                                         ; $4baf: $ff
	add  b                                           ; $4bb0: $80
	add  b                                           ; $4bb1: $80
	ld   a, h                                        ; $4bb2: $7c
	ld   a, h                                        ; $4bb3: $7c
	ld   b, h                                        ; $4bb4: $44
	ld   b, h                                        ; $4bb5: $44
	ld   a, h                                        ; $4bb6: $7c
	ld   a, h                                        ; $4bb7: $7c
	ld   b, h                                        ; $4bb8: $44
	ld   b, h                                        ; $4bb9: $44
	ld   a, h                                        ; $4bba: $7c
	ld   a, h                                        ; $4bbb: $7c
	nop                                              ; $4bbc: $00
	nop                                              ; $4bbd: $00
	rst  $38                                         ; $4bbe: $ff
	rst  $38                                         ; $4bbf: $ff
	inc  d                                           ; $4bc0: $14
	inc  d                                           ; $4bc1: $14
	inc  e                                           ; $4bc2: $1c
	inc  e                                           ; $4bc3: $1c
	db   $e3                                         ; $4bc4: $e3
	db   $e3                                         ; $4bc5: $e3
	ld   a, $3e                                      ; $4bc6: $3e $3e
	ld   [hl+], a                                    ; $4bc8: $22
	ld   [hl+], a                                    ; $4bc9: $22
	ld   a, $3e                                      ; $4bca: $3e $3e
	nop                                              ; $4bcc: $00
	nop                                              ; $4bcd: $00
	rst  $38                                         ; $4bce: $ff
	rst  $38                                         ; $4bcf: $ff
	daa                                              ; $4bd0: $27
	daa                                              ; $4bd1: $27
	ld   hl, $af21                                   ; $4bd2: $21 $21 $af
	xor  a                                           ; $4bd5: $af
	add  hl, hl                                      ; $4bd6: $29
	add  hl, hl                                      ; $4bd7: $29
	add  hl, hl                                      ; $4bd8: $29
	add  hl, hl                                      ; $4bd9: $29
	ld   b, c                                        ; $4bda: $41
	ld   b, c                                        ; $4bdb: $41
	nop                                              ; $4bdc: $00
	nop                                              ; $4bdd: $00
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	add  b                                           ; $4be0: $80
	add  b                                           ; $4be1: $80
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	ret  nz                                          ; $4be4: $c0

	ret  nz                                          ; $4be5: $c0

	ld   b, b                                        ; $4be6: $40
	ld   b, b                                        ; $4be7: $40
	ld   b, b                                        ; $4be8: $40
	ld   b, b                                        ; $4be9: $40
	nop                                              ; $4bea: $00
	nop                                              ; $4beb: $00
	nop                                              ; $4bec: $00
	nop                                              ; $4bed: $00
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	ld   bc, $0101                                   ; $4bf0: $01 $01 $01
	ld   bc, $0101                                   ; $4bf3: $01 $01 $01
	ld   bc, $0101                                   ; $4bf6: $01 $01 $01
	ld   bc, $0101                                   ; $4bf9: $01 $01 $01
	ld   bc, $ff01                                   ; $4bfc: $01 $01 $ff
	rst  $38                                         ; $4bff: $ff
	rst  $38                                         ; $4c00: $ff
	rst  $38                                         ; $4c01: $ff
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	nop                                              ; $4c07: $00
	nop                                              ; $4c08: $00
	nop                                              ; $4c09: $00
	nop                                              ; $4c0a: $00
	nop                                              ; $4c0b: $00
	nop                                              ; $4c0c: $00
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	nop                                              ; $4c12: $00
	nop                                              ; $4c13: $00
	nop                                              ; $4c14: $00
	nop                                              ; $4c15: $00
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
	rst  $38                                         ; $4c20: $ff
	rst  $38                                         ; $4c21: $ff
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	nop                                              ; $4c28: $00
	nop                                              ; $4c29: $00
	ld   bc, $0001                                   ; $4c2a: $01 $01 $00
	nop                                              ; $4c2d: $00
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	nop                                              ; $4c34: $00
	nop                                              ; $4c35: $00
	add  b                                           ; $4c36: $80
	add  b                                           ; $4c37: $80
	rst  $38                                         ; $4c38: $ff
	rst  $38                                         ; $4c39: $ff
	ld   d, h                                        ; $4c3a: $54
	ld   d, h                                        ; $4c3b: $54
	cp   $fe                                         ; $4c3c: $fe $fe
	ld   d, h                                        ; $4c3e: $54
	ld   d, h                                        ; $4c3f: $54
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	nop                                              ; $4c45: $00
	ld   [$0808], sp                                 ; $4c46: $08 $08 $08
	ld   [$1010], sp                                 ; $4c49: $08 $10 $10
	jr   nz, jr_08c_4c6e                             ; $4c4c: $20 $20

	ld   a, a                                        ; $4c4e: $7f
	ld   a, a                                        ; $4c4f: $7f
	rst  $38                                         ; $4c50: $ff
	rst  $38                                         ; $4c51: $ff
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	nop                                              ; $4c54: $00
	nop                                              ; $4c55: $00
	nop                                              ; $4c56: $00
	nop                                              ; $4c57: $00
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	add  b                                           ; $4c5c: $80
	add  b                                           ; $4c5d: $80
	add  b                                           ; $4c5e: $80
	add  b                                           ; $4c5f: $80
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	nop                                              ; $4c62: $00
	nop                                              ; $4c63: $00
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	nop                                              ; $4c67: $00
	nop                                              ; $4c68: $00
	nop                                              ; $4c69: $00
	nop                                              ; $4c6a: $00
	nop                                              ; $4c6b: $00
	nop                                              ; $4c6c: $00
	nop                                              ; $4c6d: $00

jr_08c_4c6e:
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	rst  $38                                         ; $4c70: $ff
	rst  $38                                         ; $4c71: $ff
	ld   bc, $0101                                   ; $4c72: $01 $01 $01
	ld   bc, $0101                                   ; $4c75: $01 $01 $01
	ld   bc, $0101                                   ; $4c78: $01 $01 $01
	ld   bc, $0101                                   ; $4c7b: $01 $01 $01
	ld   bc, $0001                                   ; $4c7e: $01 $01 $00
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	nop                                              ; $4c84: $00
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	nop                                              ; $4c88: $00
	nop                                              ; $4c89: $00
	nop                                              ; $4c8a: $00
	nop                                              ; $4c8b: $00
	nop                                              ; $4c8c: $00
	nop                                              ; $4c8d: $00
	rst  $38                                         ; $4c8e: $ff
	rst  $38                                         ; $4c8f: $ff
	nop                                              ; $4c90: $00
	nop                                              ; $4c91: $00
	nop                                              ; $4c92: $00
	nop                                              ; $4c93: $00
	nop                                              ; $4c94: $00
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	rst  $38                                         ; $4c9e: $ff
	rst  $38                                         ; $4c9f: $ff
	ld   bc, $0001                                   ; $4ca0: $01 $01 $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	nop                                              ; $4ca5: $00
	ld   bc, $0001                                   ; $4ca6: $01 $01 $00
	nop                                              ; $4ca9: $00
	nop                                              ; $4caa: $00
	nop                                              ; $4cab: $00
	nop                                              ; $4cac: $00
	nop                                              ; $4cad: $00
	rst  $38                                         ; $4cae: $ff
	rst  $38                                         ; $4caf: $ff
	rst  $38                                         ; $4cb0: $ff
	rst  $38                                         ; $4cb1: $ff
	and  d                                           ; $4cb2: $a2
	and  d                                           ; $4cb3: $a2
	rst  $28                                         ; $4cb4: $ef
	rst  $28                                         ; $4cb5: $ef
	ld   a, [hl+]                                    ; $4cb6: $2a
	ld   a, [hl+]                                    ; $4cb7: $2a
	ccf                                              ; $4cb8: $3f
	ccf                                              ; $4cb9: $3f
	jp   nz, $00c2                                   ; $4cba: $c2 $c2 $00

	nop                                              ; $4cbd: $00
	rst  $38                                         ; $4cbe: $ff
	rst  $38                                         ; $4cbf: $ff
	nop                                              ; $4cc0: $00
	nop                                              ; $4cc1: $00
	ccf                                              ; $4cc2: $3f
	ccf                                              ; $4cc3: $3f
	ld   hl, $2121                                   ; $4cc4: $21 $21 $21
	ld   hl, $2121                                   ; $4cc7: $21 $21 $21
	ccf                                              ; $4cca: $3f
	ccf                                              ; $4ccb: $3f
	nop                                              ; $4ccc: $00
	nop                                              ; $4ccd: $00
	rst  $38                                         ; $4cce: $ff
	rst  $38                                         ; $4ccf: $ff
	add  b                                           ; $4cd0: $80
	add  b                                           ; $4cd1: $80
	nop                                              ; $4cd2: $00
	nop                                              ; $4cd3: $00
	nop                                              ; $4cd4: $00
	nop                                              ; $4cd5: $00
	nop                                              ; $4cd6: $00
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	nop                                              ; $4cd9: $00
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	nop                                              ; $4cdd: $00
	rst  $38                                         ; $4cde: $ff
	rst  $38                                         ; $4cdf: $ff
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	nop                                              ; $4ce9: $00
	nop                                              ; $4cea: $00
	nop                                              ; $4ceb: $00
	nop                                              ; $4cec: $00
	nop                                              ; $4ced: $00
	rst  $38                                         ; $4cee: $ff
	rst  $38                                         ; $4cef: $ff
	ld   bc, $0101                                   ; $4cf0: $01 $01 $01
	ld   bc, $0101                                   ; $4cf3: $01 $01 $01
	ld   bc, $0101                                   ; $4cf6: $01 $01 $01
	ld   bc, $0101                                   ; $4cf9: $01 $01 $01
	ld   bc, $ff01                                   ; $4cfc: $01 $01 $ff
	rst  $38                                         ; $4cff: $ff
	rst  $38                                         ; $4d00: $ff
	rst  $38                                         ; $4d01: $ff
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	nop                                              ; $4d05: $00
	nop                                              ; $4d06: $00
	nop                                              ; $4d07: $00
	nop                                              ; $4d08: $00
	nop                                              ; $4d09: $00
	nop                                              ; $4d0a: $00
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	nop                                              ; $4d0d: $00
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	rst  $38                                         ; $4d10: $ff
	rst  $38                                         ; $4d11: $ff
	nop                                              ; $4d12: $00
	nop                                              ; $4d13: $00
	nop                                              ; $4d14: $00
	nop                                              ; $4d15: $00
	db   $10                                         ; $4d16: $10
	db   $10                                         ; $4d17: $10
	db   $10                                         ; $4d18: $10
	db   $10                                         ; $4d19: $10
	rst  $38                                         ; $4d1a: $ff
	rst  $38                                         ; $4d1b: $ff
	db   $10                                         ; $4d1c: $10
	db   $10                                         ; $4d1d: $10
	db   $10                                         ; $4d1e: $10
	db   $10                                         ; $4d1f: $10
	rst  $38                                         ; $4d20: $ff
	rst  $38                                         ; $4d21: $ff
	nop                                              ; $4d22: $00
	nop                                              ; $4d23: $00
	nop                                              ; $4d24: $00
	nop                                              ; $4d25: $00
	inc  h                                           ; $4d26: $24
	inc  h                                           ; $4d27: $24
	inc  h                                           ; $4d28: $24
	inc  h                                           ; $4d29: $24
	rrca                                             ; $4d2a: $0f
	rrca                                             ; $4d2b: $0f
	ld   [hl], d                                     ; $4d2c: $72
	ld   [hl], d                                     ; $4d2d: $72
	rla                                              ; $4d2e: $17
	rla                                              ; $4d2f: $17
	rst  $38                                         ; $4d30: $ff
	rst  $38                                         ; $4d31: $ff
	nop                                              ; $4d32: $00
	nop                                              ; $4d33: $00
	nop                                              ; $4d34: $00
	nop                                              ; $4d35: $00
	adc  a                                           ; $4d36: $8f
	adc  a                                           ; $4d37: $8f
	adc  b                                           ; $4d38: $88
	adc  b                                           ; $4d39: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d3a: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d3b: $cf
	ld   [$8f08], sp                                 ; $4d3c: $08 $08 $8f
	adc  a                                           ; $4d3f: $8f
	rst  $38                                         ; $4d40: $ff
	rst  $38                                         ; $4d41: $ff
	nop                                              ; $4d42: $00
	nop                                              ; $4d43: $00
	nop                                              ; $4d44: $00
	nop                                              ; $4d45: $00
	jp   nz, Jump_08c_4fc2                           ; $4d46: $c2 $c2 $4f

	ld   c, a                                        ; $4d49: $4f
	push bc                                          ; $4d4a: $c5
	push bc                                          ; $4d4b: $c5
	ld   b, l                                        ; $4d4c: $45
	ld   b, l                                        ; $4d4d: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d4e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d4f: $cf
	rst  $38                                         ; $4d50: $ff
	rst  $38                                         ; $4d51: $ff
	nop                                              ; $4d52: $00
	nop                                              ; $4d53: $00
	nop                                              ; $4d54: $00
	nop                                              ; $4d55: $00
	ld   a, c                                        ; $4d56: $79
	ld   a, c                                        ; $4d57: $79
	ret                                              ; $4d58: $c9


	ret                                              ; $4d59: $c9


	ld   c, c                                        ; $4d5a: $49
	ld   c, c                                        ; $4d5b: $49
	ld   d, c                                        ; $4d5c: $51
	ld   d, c                                        ; $4d5d: $51
	pop  de                                          ; $4d5e: $d1
	pop  de                                          ; $4d5f: $d1
	rst  $38                                         ; $4d60: $ff
	rst  $38                                         ; $4d61: $ff
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	nop                                              ; $4d65: $00
	cp   $fe                                         ; $4d66: $fe $fe
	ld   [bc], a                                     ; $4d68: $02
	ld   [bc], a                                     ; $4d69: $02
	cp   $fe                                         ; $4d6a: $fe $fe
	nop                                              ; $4d6c: $00
	nop                                              ; $4d6d: $00
	ld   a, h                                        ; $4d6e: $7c
	ld   a, h                                        ; $4d6f: $7c
	rst  $38                                         ; $4d70: $ff
	rst  $38                                         ; $4d71: $ff
	ld   bc, $0101                                   ; $4d72: $01 $01 $01
	ld   bc, $0101                                   ; $4d75: $01 $01 $01
	ld   bc, $0101                                   ; $4d78: $01 $01 $01
	ld   bc, $0101                                   ; $4d7b: $01 $01 $01
	ld   bc, $0001                                   ; $4d7e: $01 $01 $00
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
	rst  $38                                         ; $4d8e: $ff
	rst  $38                                         ; $4d8f: $ff
	db   $10                                         ; $4d90: $10
	db   $10                                         ; $4d91: $10
	jr   z, jr_08c_4dbc                              ; $4d92: $28 $28

	jr   z, jr_08c_4dbe                              ; $4d94: $28 $28

	ld   b, h                                        ; $4d96: $44
	ld   b, h                                        ; $4d97: $44
	ld   b, h                                        ; $4d98: $44
	ld   b, h                                        ; $4d99: $44
	add  e                                           ; $4d9a: $83
	add  e                                           ; $4d9b: $83
	nop                                              ; $4d9c: $00
	nop                                              ; $4d9d: $00
	rst  $38                                         ; $4d9e: $ff
	rst  $38                                         ; $4d9f: $ff
	inc  h                                           ; $4da0: $24
	inc  h                                           ; $4da1: $24
	ld   [hl], a                                     ; $4da2: $77
	ld   [hl], a                                     ; $4da3: $77
	inc  d                                           ; $4da4: $14
	inc  d                                           ; $4da5: $14
	rla                                              ; $4da6: $17
	rla                                              ; $4da7: $17
	inc  [hl]                                        ; $4da8: $34
	inc  [hl]                                        ; $4da9: $34
	ld   c, a                                        ; $4daa: $4f
	ld   c, a                                        ; $4dab: $4f
	nop                                              ; $4dac: $00
	nop                                              ; $4dad: $00
	rst  $38                                         ; $4dae: $ff
	rst  $38                                         ; $4daf: $ff
	adc  b                                           ; $4db0: $88
	adc  b                                           ; $4db1: $88
	adc  a                                           ; $4db2: $8f
	adc  a                                           ; $4db3: $8f
	add  b                                           ; $4db4: $80
	add  b                                           ; $4db5: $80
	sbc  a                                           ; $4db6: $9f
	sbc  a                                           ; $4db7: $9f
	add  h                                           ; $4db8: $84
	add  h                                           ; $4db9: $84
	ret  z                                           ; $4dba: $c8

	ret  z                                           ; $4dbb: $c8

jr_08c_4dbc:
	nop                                              ; $4dbc: $00
	nop                                              ; $4dbd: $00

jr_08c_4dbe:
	rst  $38                                         ; $4dbe: $ff
	rst  $38                                         ; $4dbf: $ff
	ld   b, b                                        ; $4dc0: $40
	ld   b, b                                        ; $4dc1: $40
	rst  ToBoot                                         ; $4dc2: $c7
	rst  ToBoot                                         ; $4dc3: $c7
	dec  b                                           ; $4dc4: $05
	dec  b                                           ; $4dc5: $05
	push hl                                          ; $4dc6: $e5
	push hl                                          ; $4dc7: $e5
	add  l                                           ; $4dc8: $85
	add  l                                           ; $4dc9: $85
	ld   b, a                                        ; $4dca: $47
	ld   b, a                                        ; $4dcb: $47
	nop                                              ; $4dcc: $00
	nop                                              ; $4dcd: $00
	rst  $38                                         ; $4dce: $ff
	rst  $38                                         ; $4dcf: $ff
	ld   c, c                                        ; $4dd0: $49
	ld   c, c                                        ; $4dd1: $49
	ld   c, c                                        ; $4dd2: $49
	ld   c, c                                        ; $4dd3: $49
	ld   c, c                                        ; $4dd4: $49
	ld   c, c                                        ; $4dd5: $49
	ld   e, c                                        ; $4dd6: $59
	ld   e, c                                        ; $4dd7: $59
	ld   b, c                                        ; $4dd8: $41
	ld   b, c                                        ; $4dd9: $41
	ld   b, d                                        ; $4dda: $42
	ld   b, d                                        ; $4ddb: $42
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	ld   [hl+], a                                    ; $4de0: $22
	ld   [hl+], a                                    ; $4de1: $22
	ld   a, [hl]                                     ; $4de2: $7e
	ld   a, [hl]                                     ; $4de3: $7e
	ld   [de], a                                     ; $4de4: $12
	ld   [de], a                                     ; $4de5: $12
	ld   a, h                                        ; $4de6: $7c
	ld   a, h                                        ; $4de7: $7c
	db   $10                                         ; $4de8: $10
	db   $10                                         ; $4de9: $10
	cp   $fe                                         ; $4dea: $fe $fe
	nop                                              ; $4dec: $00
	nop                                              ; $4ded: $00
	rst  $38                                         ; $4dee: $ff
	rst  $38                                         ; $4def: $ff
	ld   bc, $0101                                   ; $4df0: $01 $01 $01
	ld   bc, $0101                                   ; $4df3: $01 $01 $01
	ld   bc, $0101                                   ; $4df6: $01 $01 $01
	ld   bc, $0101                                   ; $4df9: $01 $01 $01
	ld   bc, $ff01                                   ; $4dfc: $01 $01 $ff
	rst  $38                                         ; $4dff: $ff
	rst  $38                                         ; $4e00: $ff
	rst  $38                                         ; $4e01: $ff
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
	rst  $38                                         ; $4e10: $ff
	rst  $38                                         ; $4e11: $ff
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	ld   [bc], a                                     ; $4e16: $02
	ld   [bc], a                                     ; $4e17: $02
	ld   [bc], a                                     ; $4e18: $02
	ld   [bc], a                                     ; $4e19: $02
	nop                                              ; $4e1a: $00
	nop                                              ; $4e1b: $00
	rlca                                             ; $4e1c: $07
	rlca                                             ; $4e1d: $07
	ld   bc, $ff01                                   ; $4e1e: $01 $01 $ff
	rst  $38                                         ; $4e21: $ff
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	nop                                              ; $4e25: $00
	ld   c, b                                        ; $4e26: $48
	ld   c, b                                        ; $4e27: $48
	ld   c, b                                        ; $4e28: $48
	ld   c, b                                        ; $4e29: $48
	db   $fc                                         ; $4e2a: $fc
	db   $fc                                         ; $4e2b: $fc
	jr   nz, jr_08c_4e4e                             ; $4e2c: $20 $20

	ld   a, b                                        ; $4e2e: $78
	ld   a, b                                        ; $4e2f: $78
	rst  $38                                         ; $4e30: $ff
	rst  $38                                         ; $4e31: $ff
	nop                                              ; $4e32: $00
	nop                                              ; $4e33: $00
	nop                                              ; $4e34: $00
	nop                                              ; $4e35: $00
	db   $fc                                         ; $4e36: $fc
	db   $fc                                         ; $4e37: $fc
	add  h                                           ; $4e38: $84
	add  h                                           ; $4e39: $84
	db   $fc                                         ; $4e3a: $fc
	db   $fc                                         ; $4e3b: $fc
	add  h                                           ; $4e3c: $84
	add  h                                           ; $4e3d: $84
	db   $fc                                         ; $4e3e: $fc
	db   $fc                                         ; $4e3f: $fc
	rst  $38                                         ; $4e40: $ff
	rst  $38                                         ; $4e41: $ff
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	nop                                              ; $4e45: $00
	daa                                              ; $4e46: $27
	daa                                              ; $4e47: $27
	db   $fc                                         ; $4e48: $fc
	db   $fc                                         ; $4e49: $fc
	ld   d, h                                        ; $4e4a: $54
	ld   d, h                                        ; $4e4b: $54
	ld   d, l                                        ; $4e4c: $55
	ld   d, l                                        ; $4e4d: $55

jr_08c_4e4e:
	db   $fd                                         ; $4e4e: $fd
	db   $fd                                         ; $4e4f: $fd
	rst  $38                                         ; $4e50: $ff
	rst  $38                                         ; $4e51: $ff
	nop                                              ; $4e52: $00
	nop                                              ; $4e53: $00
	nop                                              ; $4e54: $00
	nop                                              ; $4e55: $00
	sbc  a                                           ; $4e56: $9f
	sbc  a                                           ; $4e57: $9f
	sub  b                                           ; $4e58: $90
	sub  b                                           ; $4e59: $90
	sbc  a                                           ; $4e5a: $9f
	sbc  a                                           ; $4e5b: $9f
	db   $10                                         ; $4e5c: $10
	db   $10                                         ; $4e5d: $10
	rla                                              ; $4e5e: $17
	rla                                              ; $4e5f: $17
	rst  $38                                         ; $4e60: $ff
	rst  $38                                         ; $4e61: $ff
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	nop                                              ; $4e65: $00
	ldh  [$e0], a                                    ; $4e66: $e0 $e0
	jr   nz, jr_08c_4e8a                             ; $4e68: $20 $20

	ldh  [$e0], a                                    ; $4e6a: $e0 $e0
	nop                                              ; $4e6c: $00
	nop                                              ; $4e6d: $00
	ret  nz                                          ; $4e6e: $c0

	ret  nz                                          ; $4e6f: $c0

	rst  $38                                         ; $4e70: $ff
	rst  $38                                         ; $4e71: $ff
	ld   bc, $0101                                   ; $4e72: $01 $01 $01
	ld   bc, $0101                                   ; $4e75: $01 $01 $01
	ld   bc, $0101                                   ; $4e78: $01 $01 $01
	ld   bc, $0101                                   ; $4e7b: $01 $01 $01
	ld   bc, $0001                                   ; $4e7e: $01 $01 $00
	nop                                              ; $4e81: $00
	nop                                              ; $4e82: $00
	nop                                              ; $4e83: $00
	nop                                              ; $4e84: $00
	nop                                              ; $4e85: $00
	nop                                              ; $4e86: $00
	nop                                              ; $4e87: $00
	nop                                              ; $4e88: $00
	nop                                              ; $4e89: $00

jr_08c_4e8a:
	nop                                              ; $4e8a: $00
	nop                                              ; $4e8b: $00
	nop                                              ; $4e8c: $00
	nop                                              ; $4e8d: $00
	rst  $38                                         ; $4e8e: $ff
	rst  $38                                         ; $4e8f: $ff
	ld   [bc], a                                     ; $4e90: $02
	ld   [bc], a                                     ; $4e91: $02
	rlca                                             ; $4e92: $07
	rlca                                             ; $4e93: $07
	ld   bc, $0101                                   ; $4e94: $01 $01 $01
	ld   bc, $0303                                   ; $4e97: $01 $03 $03
	inc  b                                           ; $4e9a: $04
	inc  b                                           ; $4e9b: $04
	nop                                              ; $4e9c: $00
	nop                                              ; $4e9d: $00
	rst  $38                                         ; $4e9e: $ff
	rst  $38                                         ; $4e9f: $ff
	ld   c, b                                        ; $4ea0: $48
	ld   c, b                                        ; $4ea1: $48
	ld   a, b                                        ; $4ea2: $78
	ld   a, b                                        ; $4ea3: $78
	ld   c, b                                        ; $4ea4: $48
	ld   c, b                                        ; $4ea5: $48
	ld   a, c                                        ; $4ea6: $79
	ld   a, c                                        ; $4ea7: $79
	ld   c, b                                        ; $4ea8: $48
	ld   c, b                                        ; $4ea9: $48
	db   $fc                                         ; $4eaa: $fc
	db   $fc                                         ; $4eab: $fc
	nop                                              ; $4eac: $00
	nop                                              ; $4ead: $00
	rst  $38                                         ; $4eae: $ff
	rst  $38                                         ; $4eaf: $ff
	add  h                                           ; $4eb0: $84
	add  h                                           ; $4eb1: $84
	db   $fc                                         ; $4eb2: $fc
	db   $fc                                         ; $4eb3: $fc
	nop                                              ; $4eb4: $00
	nop                                              ; $4eb5: $00
	cp   $fe                                         ; $4eb6: $fe $fe
	ld   c, b                                        ; $4eb8: $48
	ld   c, b                                        ; $4eb9: $48
	add  h                                           ; $4eba: $84
	add  h                                           ; $4ebb: $84
	nop                                              ; $4ebc: $00
	nop                                              ; $4ebd: $00
	rst  $38                                         ; $4ebe: $ff
	rst  $38                                         ; $4ebf: $ff
	inc  b                                           ; $4ec0: $04
	inc  b                                           ; $4ec1: $04
	ld   [hl], h                                     ; $4ec2: $74
	ld   [hl], h                                     ; $4ec3: $74
	ld   d, h                                        ; $4ec4: $54
	ld   d, h                                        ; $4ec5: $54
	ld   d, l                                        ; $4ec6: $55
	ld   d, l                                        ; $4ec7: $55
	ld   d, h                                        ; $4ec8: $54
	ld   d, h                                        ; $4ec9: $54
	ld   [hl], h                                     ; $4eca: $74
	ld   [hl], h                                     ; $4ecb: $74
	nop                                              ; $4ecc: $00
	nop                                              ; $4ecd: $00
	rst  $38                                         ; $4ece: $ff
	rst  $38                                         ; $4ecf: $ff
	sub  d                                           ; $4ed0: $92
	sub  d                                           ; $4ed1: $92
	sub  a                                           ; $4ed2: $97
	sub  a                                           ; $4ed3: $97
	sub  c                                           ; $4ed4: $91
	sub  c                                           ; $4ed5: $91
	sub  a                                           ; $4ed6: $97
	sub  a                                           ; $4ed7: $97
	ld   de, $2f11                                   ; $4ed8: $11 $11 $2f
	cpl                                              ; $4edb: $2f
	nop                                              ; $4edc: $00
	nop                                              ; $4edd: $00
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	jr   nz, jr_08c_4f02                             ; $4ee0: $20 $20

	ldh  [$e0], a                                    ; $4ee2: $e0 $e0
	jr   nz, jr_08c_4f06                             ; $4ee4: $20 $20

	ret  nz                                          ; $4ee6: $c0

	ret  nz                                          ; $4ee7: $c0

	nop                                              ; $4ee8: $00
	nop                                              ; $4ee9: $00
	ldh  [$e0], a                                    ; $4eea: $e0 $e0
	nop                                              ; $4eec: $00
	nop                                              ; $4eed: $00
	rst  $38                                         ; $4eee: $ff
	rst  $38                                         ; $4eef: $ff
	ld   bc, $0101                                   ; $4ef0: $01 $01 $01
	ld   bc, $0101                                   ; $4ef3: $01 $01 $01
	ld   bc, $0101                                   ; $4ef6: $01 $01 $01
	ld   bc, $0101                                   ; $4ef9: $01 $01 $01
	ld   bc, $ff01                                   ; $4efc: $01 $01 $ff
	rst  $38                                         ; $4eff: $ff
	rst  $38                                         ; $4f00: $ff
	rst  $38                                         ; $4f01: $ff

jr_08c_4f02:
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	nop                                              ; $4f04: $00
	nop                                              ; $4f05: $00

jr_08c_4f06:
	nop                                              ; $4f06: $00
	nop                                              ; $4f07: $00
	nop                                              ; $4f08: $00
	nop                                              ; $4f09: $00
	nop                                              ; $4f0a: $00
	nop                                              ; $4f0b: $00
	nop                                              ; $4f0c: $00
	nop                                              ; $4f0d: $00
	nop                                              ; $4f0e: $00
	nop                                              ; $4f0f: $00
	rst  $38                                         ; $4f10: $ff
	rst  $38                                         ; $4f11: $ff
	nop                                              ; $4f12: $00
	nop                                              ; $4f13: $00
	nop                                              ; $4f14: $00
	nop                                              ; $4f15: $00
	nop                                              ; $4f16: $00
	nop                                              ; $4f17: $00
	nop                                              ; $4f18: $00
	nop                                              ; $4f19: $00
	nop                                              ; $4f1a: $00
	nop                                              ; $4f1b: $00
	nop                                              ; $4f1c: $00
	nop                                              ; $4f1d: $00
	nop                                              ; $4f1e: $00
	nop                                              ; $4f1f: $00
	rst  $38                                         ; $4f20: $ff
	rst  $38                                         ; $4f21: $ff
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	nop                                              ; $4f24: $00
	nop                                              ; $4f25: $00
	nop                                              ; $4f26: $00
	nop                                              ; $4f27: $00
	ld   [bc], a                                     ; $4f28: $02
	ld   [bc], a                                     ; $4f29: $02
	inc  bc                                          ; $4f2a: $03
	inc  bc                                          ; $4f2b: $03
	nop                                              ; $4f2c: $00
	nop                                              ; $4f2d: $00
	inc  bc                                          ; $4f2e: $03
	inc  bc                                          ; $4f2f: $03
	rst  $38                                         ; $4f30: $ff
	rst  $38                                         ; $4f31: $ff
	nop                                              ; $4f32: $00
	nop                                              ; $4f33: $00
	nop                                              ; $4f34: $00
	nop                                              ; $4f35: $00
	jr   nz, jr_08c_4f58                             ; $4f36: $20 $20

	ld   a, [$8efa]                                  ; $4f38: $fa $fa $8e
	adc  [hl]                                        ; $4f3b: $8e
	ld   hl, sp-$08                                  ; $4f3c: $f8 $f8
	adc  [hl]                                        ; $4f3e: $8e
	adc  [hl]                                        ; $4f3f: $8e
	rst  $38                                         ; $4f40: $ff
	rst  $38                                         ; $4f41: $ff
	nop                                              ; $4f42: $00
	nop                                              ; $4f43: $00
	nop                                              ; $4f44: $00
	nop                                              ; $4f45: $00
	ccf                                              ; $4f46: $3f
	ccf                                              ; $4f47: $3f
	jr   nz, jr_08c_4f6a                             ; $4f48: $20 $20

	ccf                                              ; $4f4a: $3f
	ccf                                              ; $4f4b: $3f
	jr   nz, jr_08c_4f6e                             ; $4f4c: $20 $20

	cpl                                              ; $4f4e: $2f
	cpl                                              ; $4f4f: $2f
	rst  $38                                         ; $4f50: $ff
	rst  $38                                         ; $4f51: $ff
	nop                                              ; $4f52: $00
	nop                                              ; $4f53: $00
	nop                                              ; $4f54: $00
	nop                                              ; $4f55: $00
	ret  nz                                          ; $4f56: $c0

	ret  nz                                          ; $4f57: $c0

jr_08c_4f58:
	ld   b, b                                        ; $4f58: $40
	ld   b, b                                        ; $4f59: $40
	ret  nz                                          ; $4f5a: $c0

	ret  nz                                          ; $4f5b: $c0

	nop                                              ; $4f5c: $00
	nop                                              ; $4f5d: $00
	add  b                                           ; $4f5e: $80
	add  b                                           ; $4f5f: $80
	rst  $38                                         ; $4f60: $ff
	rst  $38                                         ; $4f61: $ff
	nop                                              ; $4f62: $00
	nop                                              ; $4f63: $00
	nop                                              ; $4f64: $00
	nop                                              ; $4f65: $00
	nop                                              ; $4f66: $00
	nop                                              ; $4f67: $00
	nop                                              ; $4f68: $00
	nop                                              ; $4f69: $00

jr_08c_4f6a:
	nop                                              ; $4f6a: $00
	nop                                              ; $4f6b: $00
	nop                                              ; $4f6c: $00
	nop                                              ; $4f6d: $00

jr_08c_4f6e:
	nop                                              ; $4f6e: $00
	nop                                              ; $4f6f: $00
	rst  $38                                         ; $4f70: $ff
	rst  $38                                         ; $4f71: $ff
	ld   bc, $0101                                   ; $4f72: $01 $01 $01
	ld   bc, $0101                                   ; $4f75: $01 $01 $01
	ld   bc, $0101                                   ; $4f78: $01 $01 $01
	ld   bc, $0101                                   ; $4f7b: $01 $01 $01
	ld   bc, $0001                                   ; $4f7e: $01 $01 $00
	nop                                              ; $4f81: $00
	nop                                              ; $4f82: $00
	nop                                              ; $4f83: $00
	nop                                              ; $4f84: $00
	nop                                              ; $4f85: $00
	nop                                              ; $4f86: $00
	nop                                              ; $4f87: $00
	nop                                              ; $4f88: $00
	nop                                              ; $4f89: $00
	nop                                              ; $4f8a: $00
	nop                                              ; $4f8b: $00
	nop                                              ; $4f8c: $00
	nop                                              ; $4f8d: $00
	rst  $38                                         ; $4f8e: $ff
	rst  $38                                         ; $4f8f: $ff
	nop                                              ; $4f90: $00
	nop                                              ; $4f91: $00
	nop                                              ; $4f92: $00
	nop                                              ; $4f93: $00
	nop                                              ; $4f94: $00
	nop                                              ; $4f95: $00
	nop                                              ; $4f96: $00
	nop                                              ; $4f97: $00
	nop                                              ; $4f98: $00
	nop                                              ; $4f99: $00
	nop                                              ; $4f9a: $00
	nop                                              ; $4f9b: $00
	nop                                              ; $4f9c: $00
	nop                                              ; $4f9d: $00
	rst  $38                                         ; $4f9e: $ff
	rst  $38                                         ; $4f9f: $ff
	nop                                              ; $4fa0: $00
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	inc  bc                                          ; $4fa4: $03
	inc  bc                                          ; $4fa5: $03
	nop                                              ; $4fa6: $00
	nop                                              ; $4fa7: $00
	nop                                              ; $4fa8: $00
	nop                                              ; $4fa9: $00
	inc  bc                                          ; $4faa: $03
	inc  bc                                          ; $4fab: $03
	nop                                              ; $4fac: $00
	nop                                              ; $4fad: $00
	rst  $38                                         ; $4fae: $ff
	rst  $38                                         ; $4faf: $ff
	ld   hl, sp-$08                                  ; $4fb0: $f8 $f8
	jr   nz, jr_08c_4fd4                             ; $4fb2: $20 $20

	cp   $fe                                         ; $4fb4: $fe $fe
	ld   [hl], b                                     ; $4fb6: $70
	ld   [hl], b                                     ; $4fb7: $70
	xor  b                                           ; $4fb8: $a8
	xor  b                                           ; $4fb9: $a8
	ld   h, $26                                      ; $4fba: $26 $26
	nop                                              ; $4fbc: $00
	nop                                              ; $4fbd: $00
	rst  $38                                         ; $4fbe: $ff
	rst  $38                                         ; $4fbf: $ff
	inc  h                                           ; $4fc0: $24
	inc  h                                           ; $4fc1: $24

Jump_08c_4fc2:
	cpl                                              ; $4fc2: $2f
	cpl                                              ; $4fc3: $2f
	ld   [hl+], a                                    ; $4fc4: $22
	ld   [hl+], a                                    ; $4fc5: $22
	cpl                                              ; $4fc6: $2f
	cpl                                              ; $4fc7: $2f
	ld   [hl+], a                                    ; $4fc8: $22
	ld   [hl+], a                                    ; $4fc9: $22
	ld   e, a                                        ; $4fca: $5f
	ld   e, a                                        ; $4fcb: $5f
	nop                                              ; $4fcc: $00
	nop                                              ; $4fcd: $00
	rst  $38                                         ; $4fce: $ff
	rst  $38                                         ; $4fcf: $ff
	ld   b, b                                        ; $4fd0: $40
	ld   b, b                                        ; $4fd1: $40
	ret  nz                                          ; $4fd2: $c0

	ret  nz                                          ; $4fd3: $c0

jr_08c_4fd4:
	ld   b, b                                        ; $4fd4: $40
	ld   b, b                                        ; $4fd5: $40
	add  b                                           ; $4fd6: $80
	add  b                                           ; $4fd7: $80
	nop                                              ; $4fd8: $00
	nop                                              ; $4fd9: $00
	ret  nz                                          ; $4fda: $c0

	ret  nz                                          ; $4fdb: $c0

	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	rst  $38                                         ; $4fde: $ff
	rst  $38                                         ; $4fdf: $ff
	nop                                              ; $4fe0: $00
	nop                                              ; $4fe1: $00
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	nop                                              ; $4fe9: $00
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	rst  $38                                         ; $4fee: $ff
	rst  $38                                         ; $4fef: $ff
	ld   bc, $0101                                   ; $4ff0: $01 $01 $01
	ld   bc, $0101                                   ; $4ff3: $01 $01 $01
	ld   bc, $0101                                   ; $4ff6: $01 $01 $01
	ld   bc, $0101                                   ; $4ff9: $01 $01 $01
	ld   bc, $ff01                                   ; $4ffc: $01 $01 $ff
	rst  $38                                         ; $4fff: $ff
	rst  $38                                         ; $5000: $ff
	rst  $38                                         ; $5001: $ff
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	nop                                              ; $5004: $00
	nop                                              ; $5005: $00
	nop                                              ; $5006: $00
	nop                                              ; $5007: $00
	nop                                              ; $5008: $00
	nop                                              ; $5009: $00
	nop                                              ; $500a: $00
	nop                                              ; $500b: $00
	nop                                              ; $500c: $00
	nop                                              ; $500d: $00
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	rst  $38                                         ; $5010: $ff
	rst  $38                                         ; $5011: $ff
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	nop                                              ; $5016: $00
	nop                                              ; $5017: $00
	nop                                              ; $5018: $00
	nop                                              ; $5019: $00
	rlca                                             ; $501a: $07
	rlca                                             ; $501b: $07
	nop                                              ; $501c: $00
	nop                                              ; $501d: $00
	ld   bc, $ff01                                   ; $501e: $01 $01 $ff
	rst  $38                                         ; $5021: $ff
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	ld   b, b                                        ; $5026: $40
	ld   b, b                                        ; $5027: $40
	ld   b, c                                        ; $5028: $41
	ld   b, c                                        ; $5029: $41
	db   $fc                                         ; $502a: $fc
	db   $fc                                         ; $502b: $fc
	add  c                                           ; $502c: $81
	add  c                                           ; $502d: $81
	ld   b, b                                        ; $502e: $40
	ld   b, b                                        ; $502f: $40
	rst  $38                                         ; $5030: $ff
	rst  $38                                         ; $5031: $ff
	nop                                              ; $5032: $00
	nop                                              ; $5033: $00
	nop                                              ; $5034: $00
	nop                                              ; $5035: $00
	ld   b, h                                        ; $5036: $44
	ld   b, h                                        ; $5037: $44
	rst  JumpTable                                         ; $5038: $df
	rst  JumpTable                                         ; $5039: $df
	ld   b, h                                        ; $503a: $44
	ld   b, h                                        ; $503b: $44
	call nz, Call_08c_5fc4                           ; $503c: $c4 $c4 $5f
	ld   e, a                                        ; $503f: $5f
	rst  $38                                         ; $5040: $ff
	rst  $38                                         ; $5041: $ff
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	nop                                              ; $5044: $00
	nop                                              ; $5045: $00
	inc  de                                          ; $5046: $13
	inc  de                                          ; $5047: $13
	ld   a, [hl]                                     ; $5048: $7e
	ld   a, [hl]                                     ; $5049: $7e
	ld   a, [hl+]                                    ; $504a: $2a
	ld   a, [hl+]                                    ; $504b: $2a
	ld   a, [hl+]                                    ; $504c: $2a
	ld   a, [hl+]                                    ; $504d: $2a
	ld   a, [hl]                                     ; $504e: $7e
	ld   a, [hl]                                     ; $504f: $7e
	rst  $38                                         ; $5050: $ff
	rst  $38                                         ; $5051: $ff
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	nop                                              ; $5054: $00
	nop                                              ; $5055: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5056: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5057: $cf
	ld   c, b                                        ; $5058: $48
	ld   c, b                                        ; $5059: $48
	ld   c, a                                        ; $505a: $4f
	ld   c, a                                        ; $505b: $4f
	adc  b                                           ; $505c: $88
	adc  b                                           ; $505d: $88
	adc  e                                           ; $505e: $8b
	adc  e                                           ; $505f: $8b
	rst  $38                                         ; $5060: $ff
	rst  $38                                         ; $5061: $ff
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	nop                                              ; $5065: $00
	ldh  a, [$f0]                                    ; $5066: $f0 $f0
	db   $10                                         ; $5068: $10
	db   $10                                         ; $5069: $10
	ldh  a, [$f0]                                    ; $506a: $f0 $f0
	nop                                              ; $506c: $00
	nop                                              ; $506d: $00
	ldh  [$e0], a                                    ; $506e: $e0 $e0
	rst  $38                                         ; $5070: $ff
	rst  $38                                         ; $5071: $ff
	ld   bc, $0101                                   ; $5072: $01 $01 $01
	ld   bc, $0101                                   ; $5075: $01 $01 $01
	ld   bc, $0101                                   ; $5078: $01 $01 $01
	ld   bc, $0101                                   ; $507b: $01 $01 $01
	ld   bc, $0001                                   ; $507e: $01 $01 $00
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00
	nop                                              ; $5084: $00
	nop                                              ; $5085: $00
	nop                                              ; $5086: $00
	nop                                              ; $5087: $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	rst  $38                                         ; $508e: $ff
	rst  $38                                         ; $508f: $ff
	ld   [bc], a                                     ; $5090: $02
	ld   [bc], a                                     ; $5091: $02
	ld   b, $06                                      ; $5092: $06 $06
	ld   [bc], a                                     ; $5094: $02
	ld   [bc], a                                     ; $5095: $02
	ld   [bc], a                                     ; $5096: $02
	ld   [bc], a                                     ; $5097: $02
	ld   [bc], a                                     ; $5098: $02
	ld   [bc], a                                     ; $5099: $02
	inc  bc                                          ; $509a: $03
	inc  bc                                          ; $509b: $03
	nop                                              ; $509c: $00
	nop                                              ; $509d: $00
	rst  $38                                         ; $509e: $ff
	rst  $38                                         ; $509f: $ff
	ld   c, b                                        ; $50a0: $48
	ld   c, b                                        ; $50a1: $48
	ld   c, c                                        ; $50a2: $49
	ld   c, c                                        ; $50a3: $49
	jr   nc, jr_08c_50d6                             ; $50a4: $30 $30

	jr   nz, jr_08c_50c8                             ; $50a6: $20 $20

	sub  c                                           ; $50a8: $91
	sub  c                                           ; $50a9: $91
	inc  c                                           ; $50aa: $0c
	inc  c                                           ; $50ab: $0c
	nop                                              ; $50ac: $00
	nop                                              ; $50ad: $00
	rst  $38                                         ; $50ae: $ff
	rst  $38                                         ; $50af: $ff
	db   $10                                         ; $50b0: $10
	db   $10                                         ; $50b1: $10
	rst  $38                                         ; $50b2: $ff
	rst  $38                                         ; $50b3: $ff
	ld   c, c                                        ; $50b4: $49
	ld   c, c                                        ; $50b5: $49
	set  1, e                                        ; $50b6: $cb $cb
	ld   b, h                                        ; $50b8: $44
	ld   b, h                                        ; $50b9: $44
	ld   h, e                                        ; $50ba: $63
	ld   h, e                                        ; $50bb: $63
	nop                                              ; $50bc: $00
	nop                                              ; $50bd: $00
	rst  $38                                         ; $50be: $ff
	rst  $38                                         ; $50bf: $ff
	ld   [bc], a                                     ; $50c0: $02
	ld   [bc], a                                     ; $50c1: $02
	ld   a, [hl-]                                    ; $50c2: $3a
	ld   a, [hl-]                                    ; $50c3: $3a
	ld   a, [hl+]                                    ; $50c4: $2a
	ld   a, [hl+]                                    ; $50c5: $2a
	ld   a, [hl+]                                    ; $50c6: $2a
	ld   a, [hl+]                                    ; $50c7: $2a

jr_08c_50c8:
	ld   a, [hl+]                                    ; $50c8: $2a
	ld   a, [hl+]                                    ; $50c9: $2a
	ld   a, [hl-]                                    ; $50ca: $3a
	ld   a, [hl-]                                    ; $50cb: $3a
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	ld   c, c                                        ; $50d0: $49
	ld   c, c                                        ; $50d1: $49
	ld   c, e                                        ; $50d2: $4b
	ld   c, e                                        ; $50d3: $4b
	ld   c, b                                        ; $50d4: $48
	ld   c, b                                        ; $50d5: $48

jr_08c_50d6:
	set  1, e                                        ; $50d6: $cb $cb
	ld   [$1708], sp                                 ; $50d8: $08 $08 $17
	rla                                              ; $50db: $17
	nop                                              ; $50dc: $00
	nop                                              ; $50dd: $00
	rst  $38                                         ; $50de: $ff
	rst  $38                                         ; $50df: $ff
	db   $10                                         ; $50e0: $10
	db   $10                                         ; $50e1: $10
	ldh  a, [$f0]                                    ; $50e2: $f0 $f0
	sub  b                                           ; $50e4: $90
	sub  b                                           ; $50e5: $90
	ldh  [$e0], a                                    ; $50e6: $e0 $e0
	add  b                                           ; $50e8: $80
	add  b                                           ; $50e9: $80
	ldh  a, [$f0]                                    ; $50ea: $f0 $f0
	nop                                              ; $50ec: $00
	nop                                              ; $50ed: $00
	rst  $38                                         ; $50ee: $ff
	rst  $38                                         ; $50ef: $ff
	ld   bc, $0101                                   ; $50f0: $01 $01 $01
	ld   bc, $0101                                   ; $50f3: $01 $01 $01
	ld   bc, $0101                                   ; $50f6: $01 $01 $01
	ld   bc, $0101                                   ; $50f9: $01 $01 $01
	ld   bc, $ff01                                   ; $50fc: $01 $01 $ff
	rst  $38                                         ; $50ff: $ff
	rst  $38                                         ; $5100: $ff
	rst  $38                                         ; $5101: $ff
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	nop                                              ; $5104: $00
	nop                                              ; $5105: $00
	nop                                              ; $5106: $00
	nop                                              ; $5107: $00
	nop                                              ; $5108: $00
	nop                                              ; $5109: $00
	nop                                              ; $510a: $00
	nop                                              ; $510b: $00
	nop                                              ; $510c: $00
	nop                                              ; $510d: $00
	nop                                              ; $510e: $00
	nop                                              ; $510f: $00
	rst  $38                                         ; $5110: $ff
	rst  $38                                         ; $5111: $ff
	nop                                              ; $5112: $00
	nop                                              ; $5113: $00
	nop                                              ; $5114: $00
	nop                                              ; $5115: $00
	nop                                              ; $5116: $00
	nop                                              ; $5117: $00
	nop                                              ; $5118: $00
	nop                                              ; $5119: $00
	nop                                              ; $511a: $00
	nop                                              ; $511b: $00
	nop                                              ; $511c: $00
	nop                                              ; $511d: $00
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	rst  $38                                         ; $5120: $ff
	rst  $38                                         ; $5121: $ff
	nop                                              ; $5122: $00
	nop                                              ; $5123: $00
	nop                                              ; $5124: $00
	nop                                              ; $5125: $00
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	ld   bc, $0001                                   ; $5128: $01 $01 $00
	nop                                              ; $512b: $00
	rlca                                             ; $512c: $07
	rlca                                             ; $512d: $07
	nop                                              ; $512e: $00
	nop                                              ; $512f: $00
	rst  $38                                         ; $5130: $ff
	rst  $38                                         ; $5131: $ff
	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	nop                                              ; $5135: $00
	ld   b, b                                        ; $5136: $40
	ld   b, b                                        ; $5137: $40
	ld   hl, sp-$08                                  ; $5138: $f8 $f8
	ld   c, b                                        ; $513a: $48
	ld   c, b                                        ; $513b: $48
	cp   $fe                                         ; $513c: $fe $fe
	ld   c, b                                        ; $513e: $48
	ld   c, b                                        ; $513f: $48
	rst  $38                                         ; $5140: $ff
	rst  $38                                         ; $5141: $ff
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	nop                                              ; $5145: $00
	ld   [bc], a                                     ; $5146: $02
	ld   [bc], a                                     ; $5147: $02
	ccf                                              ; $5148: $3f
	ccf                                              ; $5149: $3f
	ld   [hl+], a                                    ; $514a: $22
	ld   [hl+], a                                    ; $514b: $22
	ccf                                              ; $514c: $3f
	ccf                                              ; $514d: $3f
	ld   [hl+], a                                    ; $514e: $22
	ld   [hl+], a                                    ; $514f: $22
	rst  $38                                         ; $5150: $ff
	rst  $38                                         ; $5151: $ff
	nop                                              ; $5152: $00
	nop                                              ; $5153: $00
	nop                                              ; $5154: $00
	nop                                              ; $5155: $00
	nop                                              ; $5156: $00
	nop                                              ; $5157: $00
	ret  nz                                          ; $5158: $c0

	ret  nz                                          ; $5159: $c0

	nop                                              ; $515a: $00
	nop                                              ; $515b: $00
	ret  nz                                          ; $515c: $c0

	ret  nz                                          ; $515d: $c0

	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	rst  $38                                         ; $5160: $ff
	rst  $38                                         ; $5161: $ff
	nop                                              ; $5162: $00
	nop                                              ; $5163: $00
	nop                                              ; $5164: $00
	nop                                              ; $5165: $00
	nop                                              ; $5166: $00
	nop                                              ; $5167: $00
	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	nop                                              ; $516a: $00
	nop                                              ; $516b: $00
	nop                                              ; $516c: $00
	nop                                              ; $516d: $00
	nop                                              ; $516e: $00
	nop                                              ; $516f: $00
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	ld   bc, $0101                                   ; $5172: $01 $01 $01
	ld   bc, $0101                                   ; $5175: $01 $01 $01
	ld   bc, $0101                                   ; $5178: $01 $01 $01
	ld   bc, $0101                                   ; $517b: $01 $01 $01
	ld   bc, $0001                                   ; $517e: $01 $01 $00
	nop                                              ; $5181: $00
	nop                                              ; $5182: $00
	nop                                              ; $5183: $00
	nop                                              ; $5184: $00
	nop                                              ; $5185: $00
	nop                                              ; $5186: $00
	nop                                              ; $5187: $00
	nop                                              ; $5188: $00
	nop                                              ; $5189: $00
	nop                                              ; $518a: $00
	nop                                              ; $518b: $00
	nop                                              ; $518c: $00
	nop                                              ; $518d: $00
	rst  $38                                         ; $518e: $ff
	rst  $38                                         ; $518f: $ff
	nop                                              ; $5190: $00
	nop                                              ; $5191: $00
	nop                                              ; $5192: $00
	nop                                              ; $5193: $00
	nop                                              ; $5194: $00
	nop                                              ; $5195: $00
	nop                                              ; $5196: $00
	nop                                              ; $5197: $00
	nop                                              ; $5198: $00
	nop                                              ; $5199: $00
	nop                                              ; $519a: $00
	nop                                              ; $519b: $00
	nop                                              ; $519c: $00
	nop                                              ; $519d: $00
	rst  $38                                         ; $519e: $ff
	rst  $38                                         ; $519f: $ff
	ld   bc, $0001                                   ; $51a0: $01 $01 $00
	nop                                              ; $51a3: $00
	rlca                                             ; $51a4: $07
	rlca                                             ; $51a5: $07
	ld   bc, $0101                                   ; $51a6: $01 $01 $01
	ld   bc, $0101                                   ; $51a9: $01 $01 $01
	nop                                              ; $51ac: $00
	nop                                              ; $51ad: $00
	rst  $38                                         ; $51ae: $ff
	rst  $38                                         ; $51af: $ff
	ld   hl, sp-$08                                  ; $51b0: $f8 $f8
	ld   b, b                                        ; $51b2: $40
	ld   b, b                                        ; $51b3: $40
	cp   $fe                                         ; $51b4: $fe $fe
	ld   [$f808], sp                                 ; $51b6: $08 $08 $f8
	ld   hl, sp-$08                                  ; $51b9: $f8 $f8
	ld   hl, sp+$00                                  ; $51bb: $f8 $00
	nop                                              ; $51bd: $00
	rst  $38                                         ; $51be: $ff
	rst  $38                                         ; $51bf: $ff
	cpl                                              ; $51c0: $2f
	cpl                                              ; $51c1: $2f
	ld   a, [hl+]                                    ; $51c2: $2a
	ld   a, [hl+]                                    ; $51c3: $2a
	cpl                                              ; $51c4: $2f
	cpl                                              ; $51c5: $2f
	ld   [hl+], a                                    ; $51c6: $22
	ld   [hl+], a                                    ; $51c7: $22
	ccf                                              ; $51c8: $3f
	ccf                                              ; $51c9: $3f
	ld   b, d                                        ; $51ca: $42
	ld   b, d                                        ; $51cb: $42
	nop                                              ; $51cc: $00
	nop                                              ; $51cd: $00
	rst  $38                                         ; $51ce: $ff
	rst  $38                                         ; $51cf: $ff
	add  b                                           ; $51d0: $80
	add  b                                           ; $51d1: $80
	add  b                                           ; $51d2: $80
	add  b                                           ; $51d3: $80
	add  b                                           ; $51d4: $80
	add  b                                           ; $51d5: $80
	nop                                              ; $51d6: $00
	nop                                              ; $51d7: $00
	ret  nz                                          ; $51d8: $c0

	ret  nz                                          ; $51d9: $c0

	nop                                              ; $51da: $00
	nop                                              ; $51db: $00
	nop                                              ; $51dc: $00
	nop                                              ; $51dd: $00
	rst  $38                                         ; $51de: $ff
	rst  $38                                         ; $51df: $ff
	nop                                              ; $51e0: $00
	nop                                              ; $51e1: $00
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	nop                                              ; $51e4: $00
	nop                                              ; $51e5: $00
	nop                                              ; $51e6: $00
	nop                                              ; $51e7: $00
	nop                                              ; $51e8: $00
	nop                                              ; $51e9: $00
	nop                                              ; $51ea: $00
	nop                                              ; $51eb: $00
	nop                                              ; $51ec: $00
	nop                                              ; $51ed: $00
	rst  $38                                         ; $51ee: $ff
	rst  $38                                         ; $51ef: $ff
	ld   bc, $0101                                   ; $51f0: $01 $01 $01
	ld   bc, $0101                                   ; $51f3: $01 $01 $01
	ld   bc, $0101                                   ; $51f6: $01 $01 $01
	ld   bc, $0101                                   ; $51f9: $01 $01 $01
	ld   bc, $ff01                                   ; $51fc: $01 $01 $ff
	rst  $38                                         ; $51ff: $ff
	rst  $38                                         ; $5200: $ff
	rst  $38                                         ; $5201: $ff
	nop                                              ; $5202: $00
	nop                                              ; $5203: $00
	nop                                              ; $5204: $00
	nop                                              ; $5205: $00
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	nop                                              ; $5209: $00
	nop                                              ; $520a: $00
	nop                                              ; $520b: $00
	nop                                              ; $520c: $00
	nop                                              ; $520d: $00
	nop                                              ; $520e: $00
	nop                                              ; $520f: $00
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	nop                                              ; $5212: $00
	nop                                              ; $5213: $00
	nop                                              ; $5214: $00
	nop                                              ; $5215: $00
	nop                                              ; $5216: $00
	nop                                              ; $5217: $00
	nop                                              ; $5218: $00
	nop                                              ; $5219: $00
	nop                                              ; $521a: $00
	nop                                              ; $521b: $00
	nop                                              ; $521c: $00
	nop                                              ; $521d: $00
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	rst  $38                                         ; $5220: $ff
	rst  $38                                         ; $5221: $ff
	nop                                              ; $5222: $00
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	nop                                              ; $5225: $00
	nop                                              ; $5226: $00
	nop                                              ; $5227: $00
	inc  bc                                          ; $5228: $03
	inc  bc                                          ; $5229: $03
	ld   [bc], a                                     ; $522a: $02
	ld   [bc], a                                     ; $522b: $02
	nop                                              ; $522c: $00
	nop                                              ; $522d: $00
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	rst  $38                                         ; $5230: $ff
	rst  $38                                         ; $5231: $ff
	nop                                              ; $5232: $00
	nop                                              ; $5233: $00
	nop                                              ; $5234: $00
	nop                                              ; $5235: $00
	jr   nz, jr_08c_5258                             ; $5236: $20 $20

	cp   $fe                                         ; $5238: $fe $fe
	ld   [bc], a                                     ; $523a: $02
	ld   [bc], a                                     ; $523b: $02
	sub  b                                           ; $523c: $90
	sub  b                                           ; $523d: $90
	sub  b                                           ; $523e: $90
	sub  b                                           ; $523f: $90
	rst  $38                                         ; $5240: $ff
	rst  $38                                         ; $5241: $ff
	nop                                              ; $5242: $00
	nop                                              ; $5243: $00
	nop                                              ; $5244: $00
	nop                                              ; $5245: $00
	inc  b                                           ; $5246: $04
	inc  b                                           ; $5247: $04
	ld   a, a                                        ; $5248: $7f
	ld   a, a                                        ; $5249: $7f
	ld   b, b                                        ; $524a: $40
	ld   b, b                                        ; $524b: $40
	rra                                              ; $524c: $1f
	rra                                              ; $524d: $1f
	ld   [$ff08], sp                                 ; $524e: $08 $08 $ff
	rst  $38                                         ; $5251: $ff
	nop                                              ; $5252: $00
	nop                                              ; $5253: $00
	nop                                              ; $5254: $00
	nop                                              ; $5255: $00
	nop                                              ; $5256: $00
	nop                                              ; $5257: $00

jr_08c_5258:
	ret  nz                                          ; $5258: $c0

	ret  nz                                          ; $5259: $c0

	ld   b, b                                        ; $525a: $40
	ld   b, b                                        ; $525b: $40
	nop                                              ; $525c: $00
	nop                                              ; $525d: $00
	add  b                                           ; $525e: $80
	add  b                                           ; $525f: $80
	rst  $38                                         ; $5260: $ff
	rst  $38                                         ; $5261: $ff
	nop                                              ; $5262: $00
	nop                                              ; $5263: $00
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	nop                                              ; $5266: $00
	nop                                              ; $5267: $00
	nop                                              ; $5268: $00
	nop                                              ; $5269: $00
	nop                                              ; $526a: $00
	nop                                              ; $526b: $00
	nop                                              ; $526c: $00
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	rst  $38                                         ; $5270: $ff
	rst  $38                                         ; $5271: $ff
	ld   bc, $0101                                   ; $5272: $01 $01 $01
	ld   bc, $0101                                   ; $5275: $01 $01 $01
	ld   bc, $0101                                   ; $5278: $01 $01 $01
	ld   bc, $0101                                   ; $527b: $01 $01 $01
	ld   bc, $0001                                   ; $527e: $01 $01 $00
	nop                                              ; $5281: $00
	nop                                              ; $5282: $00
	nop                                              ; $5283: $00
	nop                                              ; $5284: $00
	nop                                              ; $5285: $00
	nop                                              ; $5286: $00
	nop                                              ; $5287: $00
	nop                                              ; $5288: $00
	nop                                              ; $5289: $00
	nop                                              ; $528a: $00
	nop                                              ; $528b: $00
	nop                                              ; $528c: $00
	nop                                              ; $528d: $00
	rst  $38                                         ; $528e: $ff
	rst  $38                                         ; $528f: $ff
	nop                                              ; $5290: $00
	nop                                              ; $5291: $00
	nop                                              ; $5292: $00
	nop                                              ; $5293: $00
	nop                                              ; $5294: $00
	nop                                              ; $5295: $00
	nop                                              ; $5296: $00
	nop                                              ; $5297: $00
	nop                                              ; $5298: $00
	nop                                              ; $5299: $00
	nop                                              ; $529a: $00
	nop                                              ; $529b: $00
	nop                                              ; $529c: $00
	nop                                              ; $529d: $00
	rst  $38                                         ; $529e: $ff
	rst  $38                                         ; $529f: $ff
	inc  bc                                          ; $52a0: $03
	inc  bc                                          ; $52a1: $03
	nop                                              ; $52a2: $00
	nop                                              ; $52a3: $00
	ld   bc, $0001                                   ; $52a4: $01 $01 $00
	nop                                              ; $52a7: $00
	nop                                              ; $52a8: $00
	nop                                              ; $52a9: $00
	inc  bc                                          ; $52aa: $03
	inc  bc                                          ; $52ab: $03
	nop                                              ; $52ac: $00
	nop                                              ; $52ad: $00
	rst  $38                                         ; $52ae: $ff
	rst  $38                                         ; $52af: $ff
	ld   e, $1e                                      ; $52b0: $1e $1e
	nop                                              ; $52b2: $00
	nop                                              ; $52b3: $00
	db   $fc                                         ; $52b4: $fc
	db   $fc                                         ; $52b5: $fc
	jr   nz, jr_08c_52d8                             ; $52b6: $20 $20

	jr   nz, jr_08c_52da                             ; $52b8: $20 $20

	cp   $fe                                         ; $52ba: $fe $fe
	nop                                              ; $52bc: $00
	nop                                              ; $52bd: $00
	rst  $38                                         ; $52be: $ff
	rst  $38                                         ; $52bf: $ff
	rra                                              ; $52c0: $1f
	rra                                              ; $52c1: $1f
	inc  b                                           ; $52c2: $04
	inc  b                                           ; $52c3: $04
	rra                                              ; $52c4: $1f
	rra                                              ; $52c5: $1f
	inc  b                                           ; $52c6: $04
	inc  b                                           ; $52c7: $04
	inc  b                                           ; $52c8: $04
	inc  b                                           ; $52c9: $04

Jump_08c_52ca:
	ccf                                              ; $52ca: $3f
	ccf                                              ; $52cb: $3f
	nop                                              ; $52cc: $00
	nop                                              ; $52cd: $00
	rst  $38                                         ; $52ce: $ff
	rst  $38                                         ; $52cf: $ff
	add  b                                           ; $52d0: $80
	add  b                                           ; $52d1: $80

Jump_08c_52d2:
	add  b                                           ; $52d2: $80
	add  b                                           ; $52d3: $80
	nop                                              ; $52d4: $00
	nop                                              ; $52d5: $00
	nop                                              ; $52d6: $00
	nop                                              ; $52d7: $00

jr_08c_52d8:
	nop                                              ; $52d8: $00
	nop                                              ; $52d9: $00

jr_08c_52da:
	ret  nz                                          ; $52da: $c0

	ret  nz                                          ; $52db: $c0

	nop                                              ; $52dc: $00
	nop                                              ; $52dd: $00
	rst  $38                                         ; $52de: $ff
	rst  $38                                         ; $52df: $ff
	nop                                              ; $52e0: $00
	nop                                              ; $52e1: $00
	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	nop                                              ; $52e4: $00
	nop                                              ; $52e5: $00
	nop                                              ; $52e6: $00
	nop                                              ; $52e7: $00
	nop                                              ; $52e8: $00
	nop                                              ; $52e9: $00
	nop                                              ; $52ea: $00
	nop                                              ; $52eb: $00
	nop                                              ; $52ec: $00
	nop                                              ; $52ed: $00
	rst  $38                                         ; $52ee: $ff
	rst  $38                                         ; $52ef: $ff
	ld   bc, $0101                                   ; $52f0: $01 $01 $01
	ld   bc, $0101                                   ; $52f3: $01 $01 $01
	ld   bc, $0101                                   ; $52f6: $01 $01 $01
	ld   bc, $0101                                   ; $52f9: $01 $01 $01
	ld   bc, $ff01                                   ; $52fc: $01 $01 $ff
	rst  $38                                         ; $52ff: $ff
	rst  $38                                         ; $5300: $ff
	rst  $38                                         ; $5301: $ff
	nop                                              ; $5302: $00
	nop                                              ; $5303: $00
	nop                                              ; $5304: $00
	nop                                              ; $5305: $00
	nop                                              ; $5306: $00
	nop                                              ; $5307: $00
	nop                                              ; $5308: $00
	nop                                              ; $5309: $00
	nop                                              ; $530a: $00
	nop                                              ; $530b: $00
	nop                                              ; $530c: $00
	nop                                              ; $530d: $00
	nop                                              ; $530e: $00
	nop                                              ; $530f: $00
	rst  $38                                         ; $5310: $ff
	rst  $38                                         ; $5311: $ff
	nop                                              ; $5312: $00
	nop                                              ; $5313: $00
	nop                                              ; $5314: $00
	nop                                              ; $5315: $00
	nop                                              ; $5316: $00
	nop                                              ; $5317: $00
	nop                                              ; $5318: $00
	nop                                              ; $5319: $00
	nop                                              ; $531a: $00
	nop                                              ; $531b: $00
	nop                                              ; $531c: $00
	nop                                              ; $531d: $00
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	rst  $38                                         ; $5320: $ff
	rst  $38                                         ; $5321: $ff
	nop                                              ; $5322: $00
	nop                                              ; $5323: $00
	nop                                              ; $5324: $00
	nop                                              ; $5325: $00
	ld   a, [hl-]                                    ; $5326: $3a
	ld   a, [hl-]                                    ; $5327: $3a
	ld   a, [hl+]                                    ; $5328: $2a
	ld   a, [hl+]                                    ; $5329: $2a
	cpl                                              ; $532a: $2f
	cpl                                              ; $532b: $2f
	ld   sp, $2a31                                   ; $532c: $31 $31 $2a
	ld   a, [hl+]                                    ; $532f: $2a
	rst  $38                                         ; $5330: $ff
	rst  $38                                         ; $5331: $ff
	nop                                              ; $5332: $00
	nop                                              ; $5333: $00
	nop                                              ; $5334: $00
	nop                                              ; $5335: $00
	add  a                                           ; $5336: $87
	add  a                                           ; $5337: $87
	add  h                                           ; $5338: $84
	add  h                                           ; $5339: $84
	rst  $20                                         ; $533a: $e7
	rst  $20                                         ; $533b: $e7
	inc  b                                           ; $533c: $04
	inc  b                                           ; $533d: $04
	and  a                                           ; $533e: $a7
	and  a                                           ; $533f: $a7
	rst  $38                                         ; $5340: $ff
	rst  $38                                         ; $5341: $ff
	nop                                              ; $5342: $00
	nop                                              ; $5343: $00
	nop                                              ; $5344: $00
	nop                                              ; $5345: $00
	ldh  a, [$f0]                                    ; $5346: $f0 $f0
	rlca                                             ; $5348: $07
	rlca                                             ; $5349: $07
	db   $e4                                         ; $534a: $e4
	db   $e4                                         ; $534b: $e4
	ld   bc, $e001                                   ; $534c: $01 $01 $e0
	ldh  [rIE], a                                    ; $534f: $e0 $ff
	rst  $38                                         ; $5351: $ff
	nop                                              ; $5352: $00
	nop                                              ; $5353: $00
	nop                                              ; $5354: $00
	nop                                              ; $5355: $00
	ld   b, b                                        ; $5356: $40
	ld   b, b                                        ; $5357: $40
	db   $fc                                         ; $5358: $fc
	db   $fc                                         ; $5359: $fc
	inc  b                                           ; $535a: $04
	inc  b                                           ; $535b: $04
	ldh  a, [$f0]                                    ; $535c: $f0 $f0
	adc  b                                           ; $535e: $88
	adc  b                                           ; $535f: $88
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	nop                                              ; $5362: $00
	nop                                              ; $5363: $00
	nop                                              ; $5364: $00
	nop                                              ; $5365: $00
	nop                                              ; $5366: $00
	nop                                              ; $5367: $00
	nop                                              ; $5368: $00
	nop                                              ; $5369: $00
	nop                                              ; $536a: $00
	nop                                              ; $536b: $00
	nop                                              ; $536c: $00
	nop                                              ; $536d: $00
	nop                                              ; $536e: $00
	nop                                              ; $536f: $00
	rst  $38                                         ; $5370: $ff
	rst  $38                                         ; $5371: $ff
	ld   bc, $0101                                   ; $5372: $01 $01 $01
	ld   bc, $0101                                   ; $5375: $01 $01 $01
	ld   bc, $0101                                   ; $5378: $01 $01 $01
	ld   bc, $0101                                   ; $537b: $01 $01 $01
	ld   bc, $0001                                   ; $537e: $01 $01 $00
	nop                                              ; $5381: $00
	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	nop                                              ; $5384: $00
	nop                                              ; $5385: $00
	nop                                              ; $5386: $00
	nop                                              ; $5387: $00
	nop                                              ; $5388: $00
	nop                                              ; $5389: $00
	nop                                              ; $538a: $00
	nop                                              ; $538b: $00
	nop                                              ; $538c: $00
	nop                                              ; $538d: $00
	rst  $38                                         ; $538e: $ff
	rst  $38                                         ; $538f: $ff
	nop                                              ; $5390: $00
	nop                                              ; $5391: $00
	nop                                              ; $5392: $00
	nop                                              ; $5393: $00
	nop                                              ; $5394: $00
	nop                                              ; $5395: $00
	nop                                              ; $5396: $00
	nop                                              ; $5397: $00
	nop                                              ; $5398: $00
	nop                                              ; $5399: $00
	nop                                              ; $539a: $00
	nop                                              ; $539b: $00
	nop                                              ; $539c: $00
	nop                                              ; $539d: $00
	rst  $38                                         ; $539e: $ff
	rst  $38                                         ; $539f: $ff
	dec  l                                           ; $53a0: $2d
	dec  l                                           ; $53a1: $2d
	ld   a, [hl+]                                    ; $53a2: $2a
	ld   a, [hl+]                                    ; $53a3: $2a
	ld   sp, $2631                                   ; $53a4: $31 $31 $26
	ld   h, $20                                      ; $53a7: $26 $20
	jr   nz, jr_08c_53cc                             ; $53a9: $20 $21

	ld   hl, $0000                                   ; $53ab: $21 $00 $00
	rst  $38                                         ; $53ae: $ff
	rst  $38                                         ; $53af: $ff
	call nz, $afc4                                   ; $53b0: $c4 $c4 $af
	xor  a                                           ; $53b3: $af
	and  h                                           ; $53b4: $a4
	and  h                                           ; $53b5: $a4
	and  h                                           ; $53b6: $a4
	and  h                                           ; $53b7: $a4
	and  l                                           ; $53b8: $a5
	and  l                                           ; $53b9: $a5
	add  [hl]                                        ; $53ba: $86
	add  [hl]                                        ; $53bb: $86
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	ld   bc, $f801                                   ; $53c0: $01 $01 $f8
	ld   hl, sp-$6f                                  ; $53c3: $f8 $91
	sub  c                                           ; $53c5: $91
	ld   h, b                                        ; $53c6: $60
	ld   h, b                                        ; $53c7: $60
	jr   nz, jr_08c_53ea                             ; $53c8: $20 $20

	dec  de                                          ; $53ca: $1b
	dec  de                                          ; $53cb: $1b

jr_08c_53cc:
	nop                                              ; $53cc: $00
	nop                                              ; $53cd: $00
	rst  $38                                         ; $53ce: $ff
	rst  $38                                         ; $53cf: $ff
	ld   hl, sp-$08                                  ; $53d0: $f8 $f8
	ld   c, b                                        ; $53d2: $48
	ld   c, b                                        ; $53d3: $48
	ldh  a, [$f0]                                    ; $53d4: $f0 $f0
	ld   b, b                                        ; $53d6: $40
	ld   b, b                                        ; $53d7: $40
	ld   b, b                                        ; $53d8: $40
	ld   b, b                                        ; $53d9: $40
	db   $fc                                         ; $53da: $fc
	db   $fc                                         ; $53db: $fc
	nop                                              ; $53dc: $00
	nop                                              ; $53dd: $00
	rst  $38                                         ; $53de: $ff
	rst  $38                                         ; $53df: $ff
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	nop                                              ; $53e2: $00
	nop                                              ; $53e3: $00
	nop                                              ; $53e4: $00
	nop                                              ; $53e5: $00
	nop                                              ; $53e6: $00
	nop                                              ; $53e7: $00
	nop                                              ; $53e8: $00
	nop                                              ; $53e9: $00

jr_08c_53ea:
	nop                                              ; $53ea: $00
	nop                                              ; $53eb: $00
	nop                                              ; $53ec: $00
	nop                                              ; $53ed: $00
	rst  $38                                         ; $53ee: $ff
	rst  $38                                         ; $53ef: $ff
	ld   bc, $0101                                   ; $53f0: $01 $01 $01
	ld   bc, $0101                                   ; $53f3: $01 $01 $01
	ld   bc, $0101                                   ; $53f6: $01 $01 $01
	ld   bc, $0101                                   ; $53f9: $01 $01 $01
	ld   bc, $ff01                                   ; $53fc: $01 $01 $ff
	rst  $38                                         ; $53ff: $ff
	rst  $38                                         ; $5400: $ff
	rst  $38                                         ; $5401: $ff
	nop                                              ; $5402: $00
	nop                                              ; $5403: $00
	nop                                              ; $5404: $00
	nop                                              ; $5405: $00
	nop                                              ; $5406: $00
	nop                                              ; $5407: $00
	nop                                              ; $5408: $00
	nop                                              ; $5409: $00
	nop                                              ; $540a: $00
	nop                                              ; $540b: $00
	nop                                              ; $540c: $00
	nop                                              ; $540d: $00
	nop                                              ; $540e: $00
	nop                                              ; $540f: $00
	rst  $38                                         ; $5410: $ff
	rst  $38                                         ; $5411: $ff
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	nop                                              ; $5414: $00
	nop                                              ; $5415: $00
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	nop                                              ; $5418: $00
	nop                                              ; $5419: $00
	nop                                              ; $541a: $00
	nop                                              ; $541b: $00
	nop                                              ; $541c: $00
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	rst  $38                                         ; $5420: $ff
	rst  $38                                         ; $5421: $ff
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	ld   [$0808], sp                                 ; $5428: $08 $08 $08
	ld   [$3f3f], sp                                 ; $542b: $08 $3f $3f
	ld   [$ff08], sp                                 ; $542e: $08 $08 $ff
	rst  $38                                         ; $5431: $ff
	nop                                              ; $5432: $00
	nop                                              ; $5433: $00
	nop                                              ; $5434: $00
	nop                                              ; $5435: $00
	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	add  a                                           ; $5438: $87
	add  a                                           ; $5439: $87
	add  h                                           ; $543a: $84
	add  h                                           ; $543b: $84
	db   $e4                                         ; $543c: $e4
	db   $e4                                         ; $543d: $e4
	add  h                                           ; $543e: $84
	add  h                                           ; $543f: $84
	rst  $38                                         ; $5440: $ff
	rst  $38                                         ; $5441: $ff
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	nop                                              ; $5446: $00
	nop                                              ; $5447: $00
	ldh  a, [$f0]                                    ; $5448: $f0 $f0
	inc  de                                          ; $544a: $13
	inc  de                                          ; $544b: $13
	db   $10                                         ; $544c: $10
	db   $10                                         ; $544d: $10
	db   $10                                         ; $544e: $10
	db   $10                                         ; $544f: $10
	rst  $38                                         ; $5450: $ff
	rst  $38                                         ; $5451: $ff
	nop                                              ; $5452: $00
	nop                                              ; $5453: $00
	nop                                              ; $5454: $00
	nop                                              ; $5455: $00
	nop                                              ; $5456: $00
	nop                                              ; $5457: $00
	ld   [$c808], sp                                 ; $5458: $08 $08 $c8
	ret  z                                           ; $545b: $c8

	ld   [$0808], sp                                 ; $545c: $08 $08 $08
	ld   [$ffff], sp                                 ; $545f: $08 $ff $ff
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	nop                                              ; $5468: $00
	nop                                              ; $5469: $00
	nop                                              ; $546a: $00
	nop                                              ; $546b: $00
	nop                                              ; $546c: $00
	nop                                              ; $546d: $00
	nop                                              ; $546e: $00
	nop                                              ; $546f: $00
	rst  $38                                         ; $5470: $ff
	rst  $38                                         ; $5471: $ff
	ld   bc, $0101                                   ; $5472: $01 $01 $01
	ld   bc, $0101                                   ; $5475: $01 $01 $01
	ld   bc, $0101                                   ; $5478: $01 $01 $01
	ld   bc, $0101                                   ; $547b: $01 $01 $01
	ld   bc, $0001                                   ; $547e: $01 $01 $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	nop                                              ; $5487: $00
	nop                                              ; $5488: $00
	nop                                              ; $5489: $00
	nop                                              ; $548a: $00
	nop                                              ; $548b: $00
	nop                                              ; $548c: $00
	nop                                              ; $548d: $00
	rst  $38                                         ; $548e: $ff
	rst  $38                                         ; $548f: $ff
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	nop                                              ; $5495: $00
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	nop                                              ; $549d: $00
	rst  $38                                         ; $549e: $ff
	rst  $38                                         ; $549f: $ff
	ld   [$0808], sp                                 ; $54a0: $08 $08 $08
	ld   [rRAMG], sp                                 ; $54a3: $08 $00 $00
	nop                                              ; $54a6: $00
	nop                                              ; $54a7: $00
	ld   bc, $0601                                   ; $54a8: $01 $01 $06
	ld   b, $00                                      ; $54ab: $06 $00
	nop                                              ; $54ad: $00
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	add  h                                           ; $54b0: $84
	add  h                                           ; $54b1: $84
	add  h                                           ; $54b2: $84
	add  h                                           ; $54b3: $84
	add  h                                           ; $54b4: $84
	add  h                                           ; $54b5: $84
	add  h                                           ; $54b6: $84
	add  h                                           ; $54b7: $84
	inc  b                                           ; $54b8: $04
	inc  b                                           ; $54b9: $04
	rlca                                             ; $54ba: $07
	rlca                                             ; $54bb: $07
	nop                                              ; $54bc: $00
	nop                                              ; $54bd: $00
	rst  $38                                         ; $54be: $ff
	rst  $38                                         ; $54bf: $ff
	db   $10                                         ; $54c0: $10
	db   $10                                         ; $54c1: $10
	db   $10                                         ; $54c2: $10
	db   $10                                         ; $54c3: $10
	db   $10                                         ; $54c4: $10
	db   $10                                         ; $54c5: $10
	db   $10                                         ; $54c6: $10
	db   $10                                         ; $54c7: $10
	db   $10                                         ; $54c8: $10
	db   $10                                         ; $54c9: $10
	pop  af                                          ; $54ca: $f1
	pop  af                                          ; $54cb: $f1
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	rst  $38                                         ; $54ce: $ff
	rst  $38                                         ; $54cf: $ff
	ld   [$0808], sp                                 ; $54d0: $08 $08 $08
	ld   [$1010], sp                                 ; $54d3: $08 $10 $10
	db   $10                                         ; $54d6: $10
	db   $10                                         ; $54d7: $10
	jr   nz, @+$22                                   ; $54d8: $20 $20

	ret  nz                                          ; $54da: $c0

	ret  nz                                          ; $54db: $c0

	nop                                              ; $54dc: $00
	nop                                              ; $54dd: $00
	rst  $38                                         ; $54de: $ff
	rst  $38                                         ; $54df: $ff
	nop                                              ; $54e0: $00
	nop                                              ; $54e1: $00
	nop                                              ; $54e2: $00
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	nop                                              ; $54e8: $00
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	nop                                              ; $54eb: $00
	nop                                              ; $54ec: $00
	nop                                              ; $54ed: $00
	rst  $38                                         ; $54ee: $ff
	rst  $38                                         ; $54ef: $ff
	ld   bc, $0101                                   ; $54f0: $01 $01 $01
	ld   bc, $0101                                   ; $54f3: $01 $01 $01
	ld   bc, $0101                                   ; $54f6: $01 $01 $01
	ld   bc, $0101                                   ; $54f9: $01 $01 $01
	ld   bc, $ff01                                   ; $54fc: $01 $01 $ff
	rst  $38                                         ; $54ff: $ff
	rst  $38                                         ; $5500: $ff
	rst  $38                                         ; $5501: $ff
	nop                                              ; $5502: $00
	nop                                              ; $5503: $00
	nop                                              ; $5504: $00
	nop                                              ; $5505: $00
	nop                                              ; $5506: $00
	nop                                              ; $5507: $00
	nop                                              ; $5508: $00
	nop                                              ; $5509: $00
	nop                                              ; $550a: $00
	nop                                              ; $550b: $00
	nop                                              ; $550c: $00
	nop                                              ; $550d: $00
	nop                                              ; $550e: $00
	nop                                              ; $550f: $00
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff
	nop                                              ; $5512: $00
	nop                                              ; $5513: $00
	nop                                              ; $5514: $00
	nop                                              ; $5515: $00
	nop                                              ; $5516: $00
	nop                                              ; $5517: $00
	inc  bc                                          ; $5518: $03
	inc  bc                                          ; $5519: $03
	nop                                              ; $551a: $00
	nop                                              ; $551b: $00
	nop                                              ; $551c: $00
	nop                                              ; $551d: $00
	nop                                              ; $551e: $00
	nop                                              ; $551f: $00
	rst  $38                                         ; $5520: $ff
	rst  $38                                         ; $5521: $ff
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	nop                                              ; $5524: $00
	nop                                              ; $5525: $00
	inc  bc                                          ; $5526: $03
	inc  bc                                          ; $5527: $03
	ldh  a, [c]                                      ; $5528: $f2
	ldh  a, [c]                                      ; $5529: $f2
	ld   [bc], a                                     ; $552a: $02
	ld   [bc], a                                     ; $552b: $02
	inc  bc                                          ; $552c: $03
	inc  bc                                          ; $552d: $03
	ld   [bc], a                                     ; $552e: $02
	ld   [bc], a                                     ; $552f: $02
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	nop                                              ; $5532: $00
	nop                                              ; $5533: $00
	nop                                              ; $5534: $00
	nop                                              ; $5535: $00
	ld   c, b                                        ; $5536: $48
	ld   c, b                                        ; $5537: $48
	cp   $fe                                         ; $5538: $fe $fe
	ret  z                                           ; $553a: $c8

	ret  z                                           ; $553b: $c8

	ld   e, b                                        ; $553c: $58
	ld   e, b                                        ; $553d: $58
	xor  $ee                                         ; $553e: $ee $ee
	rst  $38                                         ; $5540: $ff
	rst  $38                                         ; $5541: $ff
	nop                                              ; $5542: $00
	nop                                              ; $5543: $00
	nop                                              ; $5544: $00
	nop                                              ; $5545: $00
	ld   [$ff08], sp                                 ; $5546: $08 $08 $ff
	rst  $38                                         ; $5549: $ff
	add  b                                           ; $554a: $80
	add  b                                           ; $554b: $80
	ld   e, $1e                                      ; $554c: $1e $1e
	ld   h, d                                        ; $554e: $62
	ld   h, d                                        ; $554f: $62
	rst  $38                                         ; $5550: $ff
	rst  $38                                         ; $5551: $ff
	nop                                              ; $5552: $00
	nop                                              ; $5553: $00
	nop                                              ; $5554: $00
	nop                                              ; $5555: $00
	ld   [bc], a                                     ; $5556: $02
	ld   [bc], a                                     ; $5557: $02
	cp   a                                           ; $5558: $bf
	cp   a                                           ; $5559: $bf
	and  h                                           ; $555a: $a4
	and  h                                           ; $555b: $a4
	ccf                                              ; $555c: $3f
	ccf                                              ; $555d: $3f
	inc  h                                           ; $555e: $24
	inc  h                                           ; $555f: $24
	rst  $38                                         ; $5560: $ff
	rst  $38                                         ; $5561: $ff
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	nop                                              ; $5565: $00
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	ldh  [$e0], a                                    ; $5568: $e0 $e0
	add  b                                           ; $556a: $80
	add  b                                           ; $556b: $80
	ldh  [$e0], a                                    ; $556c: $e0 $e0
	add  b                                           ; $556e: $80
	add  b                                           ; $556f: $80
	rst  $38                                         ; $5570: $ff
	rst  $38                                         ; $5571: $ff
	ld   bc, $0101                                   ; $5572: $01 $01 $01
	ld   bc, $0101                                   ; $5575: $01 $01 $01
	ld   bc, $0101                                   ; $5578: $01 $01 $01
	ld   bc, $0101                                   ; $557b: $01 $01 $01
	ld   bc, $0001                                   ; $557e: $01 $01 $00
	nop                                              ; $5581: $00
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	nop                                              ; $5586: $00
	nop                                              ; $5587: $00
	nop                                              ; $5588: $00
	nop                                              ; $5589: $00
	nop                                              ; $558a: $00
	nop                                              ; $558b: $00
	nop                                              ; $558c: $00
	nop                                              ; $558d: $00
	rst  $38                                         ; $558e: $ff
	rst  $38                                         ; $558f: $ff
	nop                                              ; $5590: $00
	nop                                              ; $5591: $00
	nop                                              ; $5592: $00
	nop                                              ; $5593: $00
	nop                                              ; $5594: $00
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	nop                                              ; $5598: $00
	nop                                              ; $5599: $00
	rlca                                             ; $559a: $07
	rlca                                             ; $559b: $07
	nop                                              ; $559c: $00
	nop                                              ; $559d: $00
	rst  $38                                         ; $559e: $ff
	rst  $38                                         ; $559f: $ff
	ld   [bc], a                                     ; $55a0: $02
	ld   [bc], a                                     ; $55a1: $02
	inc  bc                                          ; $55a2: $03
	inc  bc                                          ; $55a3: $03
	ld   [bc], a                                     ; $55a4: $02
	ld   [bc], a                                     ; $55a5: $02
	ld   [bc], a                                     ; $55a6: $02
	ld   [bc], a                                     ; $55a7: $02
	ld   [bc], a                                     ; $55a8: $02
	ld   [bc], a                                     ; $55a9: $02
	ld   a, [$00fa]                                  ; $55aa: $fa $fa $00
	nop                                              ; $55ad: $00
	rst  $38                                         ; $55ae: $ff
	rst  $38                                         ; $55af: $ff
	add  b                                           ; $55b0: $80
	add  b                                           ; $55b1: $80
	ld   a, h                                        ; $55b2: $7c
	ld   a, h                                        ; $55b3: $7c
	ld   b, h                                        ; $55b4: $44
	ld   b, h                                        ; $55b5: $44
	ld   a, h                                        ; $55b6: $7c
	ld   a, h                                        ; $55b7: $7c
	ld   b, h                                        ; $55b8: $44
	ld   b, h                                        ; $55b9: $44
	ld   a, h                                        ; $55ba: $7c
	ld   a, h                                        ; $55bb: $7c
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00
	rst  $38                                         ; $55be: $ff
	rst  $38                                         ; $55bf: $ff
	inc  d                                           ; $55c0: $14
	inc  d                                           ; $55c1: $14
	inc  e                                           ; $55c2: $1c
	inc  e                                           ; $55c3: $1c
	db   $e3                                         ; $55c4: $e3
	db   $e3                                         ; $55c5: $e3
	ld   a, $3e                                      ; $55c6: $3e $3e
	ld   [hl+], a                                    ; $55c8: $22
	ld   [hl+], a                                    ; $55c9: $22
	ld   a, $3e                                      ; $55ca: $3e $3e
	nop                                              ; $55cc: $00
	nop                                              ; $55cd: $00
	rst  $38                                         ; $55ce: $ff
	rst  $38                                         ; $55cf: $ff
	daa                                              ; $55d0: $27
	daa                                              ; $55d1: $27
	ld   hl, $af21                                   ; $55d2: $21 $21 $af
	xor  a                                           ; $55d5: $af
	add  hl, hl                                      ; $55d6: $29
	add  hl, hl                                      ; $55d7: $29
	add  hl, hl                                      ; $55d8: $29
	add  hl, hl                                      ; $55d9: $29
	ld   b, c                                        ; $55da: $41
	ld   b, c                                        ; $55db: $41
	nop                                              ; $55dc: $00
	nop                                              ; $55dd: $00
	rst  $38                                         ; $55de: $ff
	rst  $38                                         ; $55df: $ff
	add  b                                           ; $55e0: $80
	add  b                                           ; $55e1: $80
	nop                                              ; $55e2: $00
	nop                                              ; $55e3: $00
	ret  nz                                          ; $55e4: $c0

	ret  nz                                          ; $55e5: $c0

	ld   b, b                                        ; $55e6: $40
	ld   b, b                                        ; $55e7: $40
	ld   b, b                                        ; $55e8: $40
	ld   b, b                                        ; $55e9: $40
	nop                                              ; $55ea: $00
	nop                                              ; $55eb: $00
	nop                                              ; $55ec: $00
	nop                                              ; $55ed: $00
	rst  $38                                         ; $55ee: $ff
	rst  $38                                         ; $55ef: $ff
	ld   bc, $0101                                   ; $55f0: $01 $01 $01
	ld   bc, $0101                                   ; $55f3: $01 $01 $01
	ld   bc, $0101                                   ; $55f6: $01 $01 $01
	ld   bc, $0101                                   ; $55f9: $01 $01 $01
	ld   bc, $ff01                                   ; $55fc: $01 $01 $ff
	rst  $38                                         ; $55ff: $ff
	rst  $38                                         ; $5600: $ff
	rst  $38                                         ; $5601: $ff
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	nop                                              ; $5605: $00
	nop                                              ; $5606: $00
	nop                                              ; $5607: $00
	nop                                              ; $5608: $00
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	nop                                              ; $560b: $00
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	nop                                              ; $560e: $00
	nop                                              ; $560f: $00
	rst  $38                                         ; $5610: $ff
	rst  $38                                         ; $5611: $ff
	nop                                              ; $5612: $00
	nop                                              ; $5613: $00
	nop                                              ; $5614: $00
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00
	nop                                              ; $5617: $00
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	nop                                              ; $561c: $00
	nop                                              ; $561d: $00
	nop                                              ; $561e: $00
	nop                                              ; $561f: $00
	rst  $38                                         ; $5620: $ff
	rst  $38                                         ; $5621: $ff
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	nop                                              ; $5625: $00
	ld   bc, $0101                                   ; $5626: $01 $01 $01
	ld   bc, $1f1f                                   ; $5629: $01 $1f $1f
	ld   bc, $0101                                   ; $562c: $01 $01 $01
	ld   bc, $ffff                                   ; $562f: $01 $ff $ff
	nop                                              ; $5632: $00
	nop                                              ; $5633: $00
	nop                                              ; $5634: $00
	nop                                              ; $5635: $00
	nop                                              ; $5636: $00
	nop                                              ; $5637: $00
	nop                                              ; $5638: $00
	nop                                              ; $5639: $00
	ldh  a, [$f0]                                    ; $563a: $f0 $f0
	nop                                              ; $563c: $00
	nop                                              ; $563d: $00
	nop                                              ; $563e: $00
	nop                                              ; $563f: $00
	rst  $38                                         ; $5640: $ff
	rst  $38                                         ; $5641: $ff
	nop                                              ; $5642: $00
	nop                                              ; $5643: $00
	nop                                              ; $5644: $00
	nop                                              ; $5645: $00
	nop                                              ; $5646: $00
	nop                                              ; $5647: $00
	ld   [bc], a                                     ; $5648: $02
	ld   [bc], a                                     ; $5649: $02
	ld   [bc], a                                     ; $564a: $02
	ld   [bc], a                                     ; $564b: $02
	ld   [bc], a                                     ; $564c: $02
	ld   [bc], a                                     ; $564d: $02
	ld   [bc], a                                     ; $564e: $02
	ld   [bc], a                                     ; $564f: $02
	rst  $38                                         ; $5650: $ff
	rst  $38                                         ; $5651: $ff
	nop                                              ; $5652: $00
	nop                                              ; $5653: $00
	nop                                              ; $5654: $00
	nop                                              ; $5655: $00
	nop                                              ; $5656: $00
	nop                                              ; $5657: $00
	jr   nz, @+$22                                   ; $5658: $20 $20

	jr   nz, @+$22                                   ; $565a: $20 $20

	jr   nz, jr_08c_567e                             ; $565c: $20 $20

	jr   nz, @+$22                                   ; $565e: $20 $20

	rst  $38                                         ; $5660: $ff
	rst  $38                                         ; $5661: $ff
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00
	nop                                              ; $5664: $00
	nop                                              ; $5665: $00
	nop                                              ; $5666: $00
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	nop                                              ; $5669: $00
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	rst  $38                                         ; $5670: $ff
	rst  $38                                         ; $5671: $ff
	ld   bc, $0101                                   ; $5672: $01 $01 $01
	ld   bc, $0101                                   ; $5675: $01 $01 $01
	ld   bc, $0101                                   ; $5678: $01 $01 $01
	ld   bc, $0101                                   ; $567b: $01 $01 $01

jr_08c_567e:
	ld   bc, $0001                                   ; $567e: $01 $01 $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	nop                                              ; $5684: $00
	nop                                              ; $5685: $00
	nop                                              ; $5686: $00
	nop                                              ; $5687: $00
	nop                                              ; $5688: $00
	nop                                              ; $5689: $00
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	nop                                              ; $568d: $00
	rst  $38                                         ; $568e: $ff
	rst  $38                                         ; $568f: $ff
	nop                                              ; $5690: $00
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	nop                                              ; $5697: $00
	nop                                              ; $5698: $00
	nop                                              ; $5699: $00
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	nop                                              ; $569c: $00
	nop                                              ; $569d: $00
	rst  $38                                         ; $569e: $ff
	rst  $38                                         ; $569f: $ff
	add  hl, bc                                      ; $56a0: $09
	add  hl, bc                                      ; $56a1: $09
	add  hl, bc                                      ; $56a2: $09
	add  hl, bc                                      ; $56a3: $09
	add  hl, bc                                      ; $56a4: $09
	add  hl, bc                                      ; $56a5: $09
	ld   de, $0111                                   ; $56a6: $11 $11 $01
	ld   bc, $0303                                   ; $56a9: $01 $03 $03
	nop                                              ; $56ac: $00
	nop                                              ; $56ad: $00
	rst  $38                                         ; $56ae: $ff
	rst  $38                                         ; $56af: $ff
	inc  hl                                          ; $56b0: $23
	inc  hl                                          ; $56b1: $23
	db   $10                                         ; $56b2: $10
	db   $10                                         ; $56b3: $10
	db   $10                                         ; $56b4: $10
	db   $10                                         ; $56b5: $10
	db   $10                                         ; $56b6: $10
	stop                                             ; $56b7: $10 $00
	nop                                              ; $56b9: $00
	nop                                              ; $56ba: $00
	nop                                              ; $56bb: $00
	nop                                              ; $56bc: $00
	nop                                              ; $56bd: $00
	rst  $38                                         ; $56be: $ff
	rst  $38                                         ; $56bf: $ff
	ldh  a, [c]                                      ; $56c0: $f2
	ldh  a, [c]                                      ; $56c1: $f2
	ld   [bc], a                                     ; $56c2: $02
	ld   [bc], a                                     ; $56c3: $02
	ld   [bc], a                                     ; $56c4: $02
	ld   [bc], a                                     ; $56c5: $02
	ld   [bc], a                                     ; $56c6: $02
	ld   [bc], a                                     ; $56c7: $02
	ld   [bc], a                                     ; $56c8: $02
	ld   [bc], a                                     ; $56c9: $02
	inc  b                                           ; $56ca: $04
	inc  b                                           ; $56cb: $04
	nop                                              ; $56cc: $00
	nop                                              ; $56cd: $00
	rst  $38                                         ; $56ce: $ff
	rst  $38                                         ; $56cf: $ff
	jr   nz, @+$22                                   ; $56d0: $20 $20

	jr   nz, @+$22                                   ; $56d2: $20 $20

	jr   nz, jr_08c_56f6                             ; $56d4: $20 $20

	inc  h                                           ; $56d6: $24
	inc  h                                           ; $56d7: $24
	inc  h                                           ; $56d8: $24
	inc  h                                           ; $56d9: $24
	jr   c, jr_08c_5714                              ; $56da: $38 $38

	nop                                              ; $56dc: $00
	nop                                              ; $56dd: $00
	rst  $38                                         ; $56de: $ff
	rst  $38                                         ; $56df: $ff
	nop                                              ; $56e0: $00
	nop                                              ; $56e1: $00
	nop                                              ; $56e2: $00
	nop                                              ; $56e3: $00
	nop                                              ; $56e4: $00
	nop                                              ; $56e5: $00
	nop                                              ; $56e6: $00
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	nop                                              ; $56e9: $00
	nop                                              ; $56ea: $00
	nop                                              ; $56eb: $00
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00
	rst  $38                                         ; $56ee: $ff
	rst  $38                                         ; $56ef: $ff
	ld   bc, $0101                                   ; $56f0: $01 $01 $01
	ld   bc, $0101                                   ; $56f3: $01 $01 $01

jr_08c_56f6:
	ld   bc, $0101                                   ; $56f6: $01 $01 $01
	ld   bc, $0101                                   ; $56f9: $01 $01 $01
	ld   bc, $ff01                                   ; $56fc: $01 $01 $ff
	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	rst  $38                                         ; $5701: $ff
	nop                                              ; $5702: $00
	nop                                              ; $5703: $00
	nop                                              ; $5704: $00
	nop                                              ; $5705: $00
	nop                                              ; $5706: $00
	nop                                              ; $5707: $00
	nop                                              ; $5708: $00
	nop                                              ; $5709: $00
	nop                                              ; $570a: $00
	nop                                              ; $570b: $00
	nop                                              ; $570c: $00
	nop                                              ; $570d: $00
	nop                                              ; $570e: $00
	nop                                              ; $570f: $00
	rst  $38                                         ; $5710: $ff
	rst  $38                                         ; $5711: $ff
	nop                                              ; $5712: $00
	nop                                              ; $5713: $00

jr_08c_5714:
	nop                                              ; $5714: $00
	nop                                              ; $5715: $00
	nop                                              ; $5716: $00
	nop                                              ; $5717: $00
	nop                                              ; $5718: $00
	nop                                              ; $5719: $00
	nop                                              ; $571a: $00
	nop                                              ; $571b: $00
	nop                                              ; $571c: $00
	nop                                              ; $571d: $00
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	rst  $38                                         ; $5720: $ff
	rst  $38                                         ; $5721: $ff
	nop                                              ; $5722: $00
	nop                                              ; $5723: $00
	nop                                              ; $5724: $00
	nop                                              ; $5725: $00
	nop                                              ; $5726: $00
	nop                                              ; $5727: $00
	rra                                              ; $5728: $1f
	rra                                              ; $5729: $1f
	nop                                              ; $572a: $00
	nop                                              ; $572b: $00
	nop                                              ; $572c: $00
	nop                                              ; $572d: $00
	ccf                                              ; $572e: $3f
	ccf                                              ; $572f: $3f
	rst  $38                                         ; $5730: $ff
	rst  $38                                         ; $5731: $ff
	nop                                              ; $5732: $00
	nop                                              ; $5733: $00
	nop                                              ; $5734: $00
	nop                                              ; $5735: $00
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	add  a                                           ; $5738: $87
	add  a                                           ; $5739: $87
	nop                                              ; $573a: $00
	nop                                              ; $573b: $00
	nop                                              ; $573c: $00
	nop                                              ; $573d: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $573e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $573f: $cf
	rst  $38                                         ; $5740: $ff
	rst  $38                                         ; $5741: $ff
	nop                                              ; $5742: $00
	nop                                              ; $5743: $00
	nop                                              ; $5744: $00
	nop                                              ; $5745: $00
	nop                                              ; $5746: $00
	nop                                              ; $5747: $00
	db   $e3                                         ; $5748: $e3
	db   $e3                                         ; $5749: $e3
	nop                                              ; $574a: $00
	nop                                              ; $574b: $00
	nop                                              ; $574c: $00
	nop                                              ; $574d: $00
	ldh  a, [$f0]                                    ; $574e: $f0 $f0
	rst  $38                                         ; $5750: $ff
	rst  $38                                         ; $5751: $ff
	nop                                              ; $5752: $00
	nop                                              ; $5753: $00
	nop                                              ; $5754: $00
	nop                                              ; $5755: $00
	nop                                              ; $5756: $00
	nop                                              ; $5757: $00
	ld   hl, sp-$08                                  ; $5758: $f8 $f8
	ld   [$0808], sp                                 ; $575a: $08 $08 $08
	ld   [$1010], sp                                 ; $575d: $08 $10 $10
	rst  $38                                         ; $5760: $ff
	rst  $38                                         ; $5761: $ff
	nop                                              ; $5762: $00
	nop                                              ; $5763: $00
	nop                                              ; $5764: $00
	nop                                              ; $5765: $00
	nop                                              ; $5766: $00
	nop                                              ; $5767: $00
	nop                                              ; $5768: $00
	nop                                              ; $5769: $00
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	nop                                              ; $576c: $00
	nop                                              ; $576d: $00
	nop                                              ; $576e: $00
	nop                                              ; $576f: $00
	rst  $38                                         ; $5770: $ff
	rst  $38                                         ; $5771: $ff
	ld   bc, $0101                                   ; $5772: $01 $01 $01
	ld   bc, $0101                                   ; $5775: $01 $01 $01
	ld   bc, $0101                                   ; $5778: $01 $01 $01
	ld   bc, $0101                                   ; $577b: $01 $01 $01
	ld   bc, $0001                                   ; $577e: $01 $01 $00
	nop                                              ; $5781: $00
	nop                                              ; $5782: $00
	nop                                              ; $5783: $00
	nop                                              ; $5784: $00
	nop                                              ; $5785: $00
	nop                                              ; $5786: $00
	nop                                              ; $5787: $00
	nop                                              ; $5788: $00
	nop                                              ; $5789: $00
	nop                                              ; $578a: $00
	nop                                              ; $578b: $00
	nop                                              ; $578c: $00
	nop                                              ; $578d: $00
	rst  $38                                         ; $578e: $ff
	rst  $38                                         ; $578f: $ff
	nop                                              ; $5790: $00
	nop                                              ; $5791: $00
	nop                                              ; $5792: $00
	nop                                              ; $5793: $00
	nop                                              ; $5794: $00
	nop                                              ; $5795: $00
	nop                                              ; $5796: $00
	nop                                              ; $5797: $00
	nop                                              ; $5798: $00
	nop                                              ; $5799: $00
	nop                                              ; $579a: $00
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	nop                                              ; $579d: $00
	rst  $38                                         ; $579e: $ff
	rst  $38                                         ; $579f: $ff
	ld   [bc], a                                     ; $57a0: $02
	ld   [bc], a                                     ; $57a1: $02
	ld   [bc], a                                     ; $57a2: $02
	ld   [bc], a                                     ; $57a3: $02
	ld   [bc], a                                     ; $57a4: $02
	ld   [bc], a                                     ; $57a5: $02
	ld   [bc], a                                     ; $57a6: $02
	ld   [bc], a                                     ; $57a7: $02
	inc  b                                           ; $57a8: $04
	inc  b                                           ; $57a9: $04
	jr   jr_08c_57c4                                 ; $57aa: $18 $18

	nop                                              ; $57ac: $00
	nop                                              ; $57ad: $00
	rst  $38                                         ; $57ae: $ff
	rst  $38                                         ; $57af: $ff
	nop                                              ; $57b0: $00
	nop                                              ; $57b1: $00
	nop                                              ; $57b2: $00
	nop                                              ; $57b3: $00
	nop                                              ; $57b4: $00
	nop                                              ; $57b5: $00
	nop                                              ; $57b6: $00
	nop                                              ; $57b7: $00
	nop                                              ; $57b8: $00
	nop                                              ; $57b9: $00
	inc  bc                                          ; $57ba: $03
	inc  bc                                          ; $57bb: $03
	nop                                              ; $57bc: $00
	nop                                              ; $57bd: $00
	rst  $38                                         ; $57be: $ff
	rst  $38                                         ; $57bf: $ff
	db   $10                                         ; $57c0: $10
	db   $10                                         ; $57c1: $10
	db   $10                                         ; $57c2: $10
	db   $10                                         ; $57c3: $10

jr_08c_57c4:
	jr   nz, jr_08c_57e6                             ; $57c4: $20 $20

	jr   nz, jr_08c_57e8                             ; $57c6: $20 $20

	ld   b, b                                        ; $57c8: $40
	ld   b, b                                        ; $57c9: $40
	add  e                                           ; $57ca: $83
	add  e                                           ; $57cb: $83
	nop                                              ; $57cc: $00
	nop                                              ; $57cd: $00
	rst  $38                                         ; $57ce: $ff
	rst  $38                                         ; $57cf: $ff
	db   $10                                         ; $57d0: $10
	db   $10                                         ; $57d1: $10
	jr   nz, @+$22                                   ; $57d2: $20 $20

	jr   nz, jr_08c_57f6                             ; $57d4: $20 $20

	ld   d, b                                        ; $57d6: $50
	ld   d, b                                        ; $57d7: $50
	adc  b                                           ; $57d8: $88
	adc  b                                           ; $57d9: $88
	inc  b                                           ; $57da: $04
	inc  b                                           ; $57db: $04
	nop                                              ; $57dc: $00
	nop                                              ; $57dd: $00
	rst  $38                                         ; $57de: $ff
	rst  $38                                         ; $57df: $ff
	nop                                              ; $57e0: $00
	nop                                              ; $57e1: $00
	nop                                              ; $57e2: $00
	nop                                              ; $57e3: $00
	nop                                              ; $57e4: $00
	nop                                              ; $57e5: $00

jr_08c_57e6:
	nop                                              ; $57e6: $00
	nop                                              ; $57e7: $00

jr_08c_57e8:
	nop                                              ; $57e8: $00
	nop                                              ; $57e9: $00
	nop                                              ; $57ea: $00
	nop                                              ; $57eb: $00
	nop                                              ; $57ec: $00
	nop                                              ; $57ed: $00
	rst  $38                                         ; $57ee: $ff
	rst  $38                                         ; $57ef: $ff
	ld   bc, $0101                                   ; $57f0: $01 $01 $01
	ld   bc, $0101                                   ; $57f3: $01 $01 $01

jr_08c_57f6:
	ld   bc, $0101                                   ; $57f6: $01 $01 $01
	ld   bc, $0101                                   ; $57f9: $01 $01 $01
	ld   bc, $ff01                                   ; $57fc: $01 $01 $ff
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	rst  $38                                         ; $5801: $ff
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00
	nop                                              ; $5805: $00
	nop                                              ; $5806: $00
	nop                                              ; $5807: $00
	nop                                              ; $5808: $00
	nop                                              ; $5809: $00
	inc  bc                                          ; $580a: $03
	inc  bc                                          ; $580b: $03
	nop                                              ; $580c: $00
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	nop                                              ; $580f: $00
	rst  $38                                         ; $5810: $ff
	rst  $38                                         ; $5811: $ff
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	nop                                              ; $5815: $00
	jr   nz, jr_08c_5838                             ; $5816: $20 $20

	jr   nz, jr_08c_583a                             ; $5818: $20 $20

	db   $fc                                         ; $581a: $fc
	db   $fc                                         ; $581b: $fc
	jr   nz, jr_08c_583e                             ; $581c: $20 $20

	jr   nz, jr_08c_5840                             ; $581e: $20 $20

	rst  $38                                         ; $5820: $ff
	rst  $38                                         ; $5821: $ff
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	nop                                              ; $5824: $00
	nop                                              ; $5825: $00
	jr   nz, jr_08c_5848                             ; $5826: $20 $20

	ld   [hl+], a                                    ; $5828: $22
	ld   [hl+], a                                    ; $5829: $22
	ld   b, d                                        ; $582a: $42
	ld   b, d                                        ; $582b: $42
	ld   b, d                                        ; $582c: $42
	ld   b, d                                        ; $582d: $42
	add  d                                           ; $582e: $82
	add  d                                           ; $582f: $82
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	nop                                              ; $5834: $00
	nop                                              ; $5835: $00
	ld   b, b                                        ; $5836: $40
	ld   b, b                                        ; $5837: $40

jr_08c_5838:
	ld   b, c                                        ; $5838: $41
	ld   b, c                                        ; $5839: $41

jr_08c_583a:
	ld   [hl+], a                                    ; $583a: $22
	ld   [hl+], a                                    ; $583b: $22
	ld   [hl+], a                                    ; $583c: $22
	ld   [hl+], a                                    ; $583d: $22

jr_08c_583e:
	ld   [bc], a                                     ; $583e: $02
	ld   [bc], a                                     ; $583f: $02

jr_08c_5840:
	rst  $38                                         ; $5840: $ff
	rst  $38                                         ; $5841: $ff
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	nop                                              ; $5845: $00
	ldh  [$e0], a                                    ; $5846: $e0 $e0

jr_08c_5848:
	ld   d, c                                        ; $5848: $51
	ld   d, c                                        ; $5849: $51
	ld   c, b                                        ; $584a: $48
	ld   c, b                                        ; $584b: $48
	ld   c, b                                        ; $584c: $48
	ld   c, b                                        ; $584d: $48
	ld   c, c                                        ; $584e: $49
	ld   c, c                                        ; $584f: $49
	rst  $38                                         ; $5850: $ff
	rst  $38                                         ; $5851: $ff
	nop                                              ; $5852: $00
	nop                                              ; $5853: $00
	nop                                              ; $5854: $00
	nop                                              ; $5855: $00
	ld   c, a                                        ; $5856: $4f
	ld   c, a                                        ; $5857: $4f
	ld   sp, hl                                      ; $5858: $f9
	ld   sp, hl                                      ; $5859: $f9
	xor  c                                           ; $585a: $a9
	xor  c                                           ; $585b: $a9
	xor  d                                           ; $585c: $aa
	xor  d                                           ; $585d: $aa
	ld   a, [$fffa]                                  ; $585e: $fa $fa $ff
	rst  $38                                         ; $5861: $ff
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	nop                                              ; $5864: $00
	nop                                              ; $5865: $00
	ccf                                              ; $5866: $3f
	ccf                                              ; $5867: $3f
	jr   nz, jr_08c_588a                             ; $5868: $20 $20

	ccf                                              ; $586a: $3f
	ccf                                              ; $586b: $3f
	jr   nz, jr_08c_588e                             ; $586c: $20 $20

	cpl                                              ; $586e: $2f
	cpl                                              ; $586f: $2f
	rst  $38                                         ; $5870: $ff
	rst  $38                                         ; $5871: $ff
	ld   bc, $0101                                   ; $5872: $01 $01 $01
	ld   bc, $c1c1                                   ; $5875: $01 $c1 $c1
	ld   b, c                                        ; $5878: $41
	ld   b, c                                        ; $5879: $41
	pop  bc                                          ; $587a: $c1
	pop  bc                                          ; $587b: $c1
	ld   bc, $8101                                   ; $587c: $01 $01 $81
	add  c                                           ; $587f: $81
	nop                                              ; $5880: $00
	nop                                              ; $5881: $00
	nop                                              ; $5882: $00
	nop                                              ; $5883: $00
	ld   bc, $0101                                   ; $5884: $01 $01 $01
	ld   bc, $0000                                   ; $5887: $01 $00 $00

jr_08c_588a:
	nop                                              ; $588a: $00
	nop                                              ; $588b: $00
	nop                                              ; $588c: $00
	nop                                              ; $588d: $00

jr_08c_588e:
	rst  $38                                         ; $588e: $ff
	rst  $38                                         ; $588f: $ff
	ld   de, $0911                                   ; $5890: $11 $11 $09
	add  hl, bc                                      ; $5893: $09
	jr   jr_08c_58ae                                 ; $5894: $18 $18

	nop                                              ; $5896: $00
	nop                                              ; $5897: $00
	add  b                                           ; $5898: $80
	add  b                                           ; $5899: $80
	ld   h, b                                        ; $589a: $60
	ld   h, b                                        ; $589b: $60
	nop                                              ; $589c: $00
	nop                                              ; $589d: $00
	rst  $38                                         ; $589e: $ff
	rst  $38                                         ; $589f: $ff
	ld   [bc], a                                     ; $58a0: $02
	ld   [bc], a                                     ; $58a1: $02
	inc  bc                                          ; $58a2: $03
	inc  bc                                          ; $58a3: $03
	add  h                                           ; $58a4: $84
	add  h                                           ; $58a5: $84
	ld   b, b                                        ; $58a6: $40
	ld   b, b                                        ; $58a7: $40
	jr   nz, jr_08c_58ca                             ; $58a8: $20 $20

	inc  hl                                          ; $58aa: $23
	inc  hl                                          ; $58ab: $23
	nop                                              ; $58ac: $00
	nop                                              ; $58ad: $00

jr_08c_58ae:
	rst  $38                                         ; $58ae: $ff
	rst  $38                                         ; $58af: $ff
	ld   [bc], a                                     ; $58b0: $02
	ld   [bc], a                                     ; $58b1: $02
	jp   nz, $22c2                                   ; $58b2: $c2 $c2 $22

	ld   [hl+], a                                    ; $58b5: $22
	ld   [hl+], a                                    ; $58b6: $22
	ld   [hl+], a                                    ; $58b7: $22
	ld   hl, $c021                                   ; $58b8: $21 $21 $c0
	ret  nz                                          ; $58bb: $c0

	nop                                              ; $58bc: $00
	nop                                              ; $58bd: $00
	rst  $38                                         ; $58be: $ff
	rst  $38                                         ; $58bf: $ff
	ld   c, b                                        ; $58c0: $48
	ld   c, b                                        ; $58c1: $48
	ld   c, b                                        ; $58c2: $48
	ld   c, b                                        ; $58c3: $48
	ld   c, b                                        ; $58c4: $48
	ld   c, b                                        ; $58c5: $48
	ld   c, b                                        ; $58c6: $48
	ld   c, b                                        ; $58c7: $48
	sub  b                                           ; $58c8: $90
	sub  b                                           ; $58c9: $90

jr_08c_58ca:
	jr   nz, jr_08c_58ec                             ; $58ca: $20 $20

	nop                                              ; $58cc: $00
	nop                                              ; $58cd: $00
	rst  $38                                         ; $58ce: $ff
	rst  $38                                         ; $58cf: $ff
	add  hl, bc                                      ; $58d0: $09
	add  hl, bc                                      ; $58d1: $09
	jp   hl                                          ; $58d2: $e9


	jp   hl                                          ; $58d3: $e9


	xor  c                                           ; $58d4: $a9
	xor  c                                           ; $58d5: $a9
	xor  e                                           ; $58d6: $ab
	xor  e                                           ; $58d7: $ab
	xor  b                                           ; $58d8: $a8
	xor  b                                           ; $58d9: $a8
	add  sp, -$18                                    ; $58da: $e8 $e8
	nop                                              ; $58dc: $00
	nop                                              ; $58dd: $00
	rst  $38                                         ; $58de: $ff
	rst  $38                                         ; $58df: $ff
	inc  h                                           ; $58e0: $24
	inc  h                                           ; $58e1: $24
	cpl                                              ; $58e2: $2f
	cpl                                              ; $58e3: $2f
	ld   [hl+], a                                    ; $58e4: $22
	ld   [hl+], a                                    ; $58e5: $22
	cpl                                              ; $58e6: $2f
	cpl                                              ; $58e7: $2f
	ld   [hl+], a                                    ; $58e8: $22
	ld   [hl+], a                                    ; $58e9: $22
	ld   e, a                                        ; $58ea: $5f
	ld   e, a                                        ; $58eb: $5f

jr_08c_58ec:
	nop                                              ; $58ec: $00
	nop                                              ; $58ed: $00
	rst  $38                                         ; $58ee: $ff
	rst  $38                                         ; $58ef: $ff
	ld   b, c                                        ; $58f0: $41
	ld   b, c                                        ; $58f1: $41
	pop  bc                                          ; $58f2: $c1
	pop  bc                                          ; $58f3: $c1
	ld   b, c                                        ; $58f4: $41
	ld   b, c                                        ; $58f5: $41
	add  c                                           ; $58f6: $81
	add  c                                           ; $58f7: $81
	ld   bc, $c101                                   ; $58f8: $01 $01 $c1
	pop  bc                                          ; $58fb: $c1
	ld   bc, $ff01                                   ; $58fc: $01 $01 $ff
	rst  $38                                         ; $58ff: $ff
	rst  $38                                         ; $5900: $ff
	rst  $38                                         ; $5901: $ff
	nop                                              ; $5902: $00
	nop                                              ; $5903: $00
	nop                                              ; $5904: $00
	nop                                              ; $5905: $00
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	nop                                              ; $5908: $00
	nop                                              ; $5909: $00
	rrca                                             ; $590a: $0f
	rrca                                             ; $590b: $0f
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	ld   bc, $ff01                                   ; $590e: $01 $01 $ff
	rst  $38                                         ; $5911: $ff
	nop                                              ; $5912: $00
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	nop                                              ; $5915: $00
	ld   b, b                                        ; $5916: $40
	ld   b, b                                        ; $5917: $40
	ld   b, e                                        ; $5918: $43
	ld   b, e                                        ; $5919: $43
	ldh  a, [$f0]                                    ; $591a: $f0 $f0
	ld   b, b                                        ; $591c: $40
	ld   b, b                                        ; $591d: $40
	ret  nz                                          ; $591e: $c0

	ret  nz                                          ; $591f: $c0

	rst  $38                                         ; $5920: $ff
	rst  $38                                         ; $5921: $ff
	nop                                              ; $5922: $00
	nop                                              ; $5923: $00
	nop                                              ; $5924: $00
	nop                                              ; $5925: $00
	ld   bc, $8101                                   ; $5926: $01 $01 $81
	add  c                                           ; $5929: $81
	add  e                                           ; $592a: $83
	add  e                                           ; $592b: $83
	add  c                                           ; $592c: $81
	add  c                                           ; $592d: $81
	sub  c                                           ; $592e: $91
	sub  c                                           ; $592f: $91
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	nop                                              ; $5932: $00
	nop                                              ; $5933: $00
	nop                                              ; $5934: $00
	nop                                              ; $5935: $00
	nop                                              ; $5936: $00
	nop                                              ; $5937: $00
	nop                                              ; $5938: $00
	nop                                              ; $5939: $00
	ret  c                                           ; $593a: $d8

	ret  c                                           ; $593b: $d8

	xor  c                                           ; $593c: $a9
	xor  c                                           ; $593d: $a9
	ld   c, c                                        ; $593e: $49
	ld   c, c                                        ; $593f: $49
	rst  $38                                         ; $5940: $ff
	rst  $38                                         ; $5941: $ff
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	nop                                              ; $5945: $00
	nop                                              ; $5946: $00
	nop                                              ; $5947: $00
	ld   [hl], b                                     ; $5948: $70
	ld   [hl], b                                     ; $5949: $70
	xor  b                                           ; $594a: $a8
	xor  b                                           ; $594b: $a8
	inc  h                                           ; $594c: $24
	inc  h                                           ; $594d: $24
	inc  h                                           ; $594e: $24
	inc  h                                           ; $594f: $24
	rst  $38                                         ; $5950: $ff
	rst  $38                                         ; $5951: $ff
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	nop                                              ; $5954: $00
	nop                                              ; $5955: $00
	daa                                              ; $5956: $27
	daa                                              ; $5957: $27
	db   $fc                                         ; $5958: $fc
	db   $fc                                         ; $5959: $fc
	ld   d, h                                        ; $595a: $54
	ld   d, h                                        ; $595b: $54
	ld   d, l                                        ; $595c: $55
	ld   d, l                                        ; $595d: $55
	db   $fd                                         ; $595e: $fd
	db   $fd                                         ; $595f: $fd
	rst  $38                                         ; $5960: $ff
	rst  $38                                         ; $5961: $ff
	nop                                              ; $5962: $00
	nop                                              ; $5963: $00
	nop                                              ; $5964: $00
	nop                                              ; $5965: $00
	sbc  a                                           ; $5966: $9f
	sbc  a                                           ; $5967: $9f
	sub  b                                           ; $5968: $90
	sub  b                                           ; $5969: $90
	sbc  a                                           ; $596a: $9f
	sbc  a                                           ; $596b: $9f
	db   $10                                         ; $596c: $10
	db   $10                                         ; $596d: $10
	rla                                              ; $596e: $17
	rla                                              ; $596f: $17
	rst  $38                                         ; $5970: $ff
	rst  $38                                         ; $5971: $ff
	ld   bc, $0101                                   ; $5972: $01 $01 $01
	ld   bc, $e1e1                                   ; $5975: $01 $e1 $e1
	ld   hl, $e121                                   ; $5978: $21 $21 $e1
	pop  hl                                          ; $597b: $e1
	ld   bc, $c101                                   ; $597c: $01 $01 $c1
	pop  bc                                          ; $597f: $c1
	ld   bc, $0101                                   ; $5980: $01 $01 $01
	ld   bc, $0101                                   ; $5983: $01 $01 $01
	nop                                              ; $5986: $00
	nop                                              ; $5987: $00
	nop                                              ; $5988: $00
	nop                                              ; $5989: $00
	ld   bc, $0001                                   ; $598a: $01 $01 $00
	nop                                              ; $598d: $00
	rst  $38                                         ; $598e: $ff
	rst  $38                                         ; $598f: $ff
	ld   b, b                                        ; $5990: $40
	ld   b, b                                        ; $5991: $40
	ld   b, e                                        ; $5992: $43
	ld   b, e                                        ; $5993: $43
	ld   b, l                                        ; $5994: $45
	ld   b, l                                        ; $5995: $45
	push bc                                          ; $5996: $c5
	push bc                                          ; $5997: $c5
	ld   b, l                                        ; $5998: $45
	ld   b, l                                        ; $5999: $45
	add  d                                           ; $599a: $82
	add  d                                           ; $599b: $82
	nop                                              ; $599c: $00
	nop                                              ; $599d: $00
	rst  $38                                         ; $599e: $ff
	rst  $38                                         ; $599f: $ff
	sub  c                                           ; $59a0: $91
	sub  c                                           ; $59a1: $91
	ld   sp, hl                                      ; $59a2: $f9
	ld   sp, hl                                      ; $59a3: $f9
	sub  c                                           ; $59a4: $91
	sub  c                                           ; $59a5: $91
	inc  de                                          ; $59a6: $13
	inc  de                                          ; $59a7: $13
	ld   de, $2111                                   ; $59a8: $11 $11 $21
	ld   hl, $0000                                   ; $59ab: $21 $00 $00
	rst  $38                                         ; $59ae: $ff
	rst  $38                                         ; $59af: $ff
	ld   c, c                                        ; $59b0: $49
	ld   c, c                                        ; $59b1: $49
	adc  c                                           ; $59b2: $89
	adc  c                                           ; $59b3: $89
	adc  c                                           ; $59b4: $89
	adc  c                                           ; $59b5: $89
	add  hl, bc                                      ; $59b6: $09
	add  hl, bc                                      ; $59b7: $09
	ld   [$0408], sp                                 ; $59b8: $08 $08 $04
	inc  b                                           ; $59bb: $04
	nop                                              ; $59bc: $00
	nop                                              ; $59bd: $00
	rst  $38                                         ; $59be: $ff
	rst  $38                                         ; $59bf: $ff
	inc  h                                           ; $59c0: $24
	inc  h                                           ; $59c1: $24
	inc  h                                           ; $59c2: $24
	inc  h                                           ; $59c3: $24
	inc  h                                           ; $59c4: $24
	inc  h                                           ; $59c5: $24
	inc  h                                           ; $59c6: $24
	inc  h                                           ; $59c7: $24
	ret  z                                           ; $59c8: $c8

	ret  z                                           ; $59c9: $c8

	db   $10                                         ; $59ca: $10
	stop                                             ; $59cb: $10 $00
	nop                                              ; $59cd: $00
	rst  $38                                         ; $59ce: $ff
	rst  $38                                         ; $59cf: $ff
	inc  b                                           ; $59d0: $04
	inc  b                                           ; $59d1: $04
	ld   [hl], h                                     ; $59d2: $74
	ld   [hl], h                                     ; $59d3: $74
	ld   d, h                                        ; $59d4: $54
	ld   d, h                                        ; $59d5: $54
	ld   d, l                                        ; $59d6: $55
	ld   d, l                                        ; $59d7: $55
	ld   d, h                                        ; $59d8: $54
	ld   d, h                                        ; $59d9: $54
	ld   [hl], h                                     ; $59da: $74
	ld   [hl], h                                     ; $59db: $74
	nop                                              ; $59dc: $00
	nop                                              ; $59dd: $00
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	sub  d                                           ; $59e0: $92
	sub  d                                           ; $59e1: $92
	sub  a                                           ; $59e2: $97
	sub  a                                           ; $59e3: $97
	sub  c                                           ; $59e4: $91
	sub  c                                           ; $59e5: $91
	sub  a                                           ; $59e6: $97
	sub  a                                           ; $59e7: $97
	ld   de, $2f11                                   ; $59e8: $11 $11 $2f
	cpl                                              ; $59eb: $2f
	nop                                              ; $59ec: $00
	nop                                              ; $59ed: $00
	rst  $38                                         ; $59ee: $ff
	rst  $38                                         ; $59ef: $ff
	ld   hl, $e121                                   ; $59f0: $21 $21 $e1
	pop  hl                                          ; $59f3: $e1
	ld   hl, $c121                                   ; $59f4: $21 $21 $c1
	pop  bc                                          ; $59f7: $c1
	ld   bc, $e101                                   ; $59f8: $01 $01 $e1
	pop  hl                                          ; $59fb: $e1
	ld   bc, $ff01                                   ; $59fc: $01 $01 $ff
	rst  $38                                         ; $59ff: $ff
	rst  $38                                         ; $5a00: $ff
	rst  $38                                         ; $5a01: $ff
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	rlca                                             ; $5a08: $07
	rlca                                             ; $5a09: $07
	nop                                              ; $5a0a: $00
	nop                                              ; $5a0b: $00
	nop                                              ; $5a0c: $00
	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	nop                                              ; $5a0f: $00
	rst  $38                                         ; $5a10: $ff
	rst  $38                                         ; $5a11: $ff
	nop                                              ; $5a12: $00
	nop                                              ; $5a13: $00
	nop                                              ; $5a14: $00
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	nop                                              ; $5a17: $00
	ld   sp, hl                                      ; $5a18: $f9
	ld   sp, hl                                      ; $5a19: $f9
	add  hl, bc                                      ; $5a1a: $09
	add  hl, bc                                      ; $5a1b: $09
	add  hl, bc                                      ; $5a1c: $09
	add  hl, bc                                      ; $5a1d: $09
	add  hl, bc                                      ; $5a1e: $09
	add  hl, bc                                      ; $5a1f: $09
	rst  $38                                         ; $5a20: $ff
	rst  $38                                         ; $5a21: $ff
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	nop                                              ; $5a26: $00
	nop                                              ; $5a27: $00
	inc  de                                          ; $5a28: $13
	inc  de                                          ; $5a29: $13
	db   $10                                         ; $5a2a: $10
	db   $10                                         ; $5a2b: $10
	db   $10                                         ; $5a2c: $10
	db   $10                                         ; $5a2d: $10
	db   $10                                         ; $5a2e: $10
	db   $10                                         ; $5a2f: $10
	rst  $38                                         ; $5a30: $ff
	rst  $38                                         ; $5a31: $ff
	nop                                              ; $5a32: $00
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	nop                                              ; $5a35: $00
	nop                                              ; $5a36: $00
	nop                                              ; $5a37: $00
	db   $fc                                         ; $5a38: $fc
	db   $fc                                         ; $5a39: $fc
	ld   b, h                                        ; $5a3a: $44
	ld   b, h                                        ; $5a3b: $44
	ld   c, c                                        ; $5a3c: $49
	ld   c, c                                        ; $5a3d: $49
	ld   d, c                                        ; $5a3e: $51
	ld   d, c                                        ; $5a3f: $51
	rst  $38                                         ; $5a40: $ff
	rst  $38                                         ; $5a41: $ff
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	nop                                              ; $5a44: $00
	nop                                              ; $5a45: $00
	nop                                              ; $5a46: $00
	nop                                              ; $5a47: $00
	ld   [hl], b                                     ; $5a48: $70
	ld   [hl], b                                     ; $5a49: $70
	xor  b                                           ; $5a4a: $a8
	xor  b                                           ; $5a4b: $a8
	inc  h                                           ; $5a4c: $24
	inc  h                                           ; $5a4d: $24
	inc  h                                           ; $5a4e: $24
	inc  h                                           ; $5a4f: $24
	rst  $38                                         ; $5a50: $ff
	rst  $38                                         ; $5a51: $ff
	nop                                              ; $5a52: $00
	nop                                              ; $5a53: $00
	nop                                              ; $5a54: $00
	nop                                              ; $5a55: $00
	daa                                              ; $5a56: $27
	daa                                              ; $5a57: $27
	db   $fc                                         ; $5a58: $fc
	db   $fc                                         ; $5a59: $fc
	ld   d, h                                        ; $5a5a: $54
	ld   d, h                                        ; $5a5b: $54
	ld   d, l                                        ; $5a5c: $55
	ld   d, l                                        ; $5a5d: $55
	db   $fd                                         ; $5a5e: $fd
	db   $fd                                         ; $5a5f: $fd
	rst  $38                                         ; $5a60: $ff
	rst  $38                                         ; $5a61: $ff
	nop                                              ; $5a62: $00
	nop                                              ; $5a63: $00
	nop                                              ; $5a64: $00
	nop                                              ; $5a65: $00
	sbc  a                                           ; $5a66: $9f
	sbc  a                                           ; $5a67: $9f
	sub  b                                           ; $5a68: $90
	sub  b                                           ; $5a69: $90
	sbc  a                                           ; $5a6a: $9f
	sbc  a                                           ; $5a6b: $9f
	db   $10                                         ; $5a6c: $10
	db   $10                                         ; $5a6d: $10
	rla                                              ; $5a6e: $17
	rla                                              ; $5a6f: $17
	rst  $38                                         ; $5a70: $ff
	rst  $38                                         ; $5a71: $ff
	ld   bc, $0101                                   ; $5a72: $01 $01 $01
	ld   bc, $e1e1                                   ; $5a75: $01 $e1 $e1
	ld   hl, $e121                                   ; $5a78: $21 $21 $e1
	pop  hl                                          ; $5a7b: $e1
	ld   bc, $c101                                   ; $5a7c: $01 $01 $c1
	pop  bc                                          ; $5a7f: $c1
	nop                                              ; $5a80: $00
	nop                                              ; $5a81: $00
	nop                                              ; $5a82: $00
	nop                                              ; $5a83: $00
	nop                                              ; $5a84: $00
	nop                                              ; $5a85: $00
	nop                                              ; $5a86: $00
	nop                                              ; $5a87: $00
	nop                                              ; $5a88: $00
	nop                                              ; $5a89: $00
	nop                                              ; $5a8a: $00
	nop                                              ; $5a8b: $00
	nop                                              ; $5a8c: $00
	nop                                              ; $5a8d: $00
	rst  $38                                         ; $5a8e: $ff
	rst  $38                                         ; $5a8f: $ff
	ld   de, $9011                                   ; $5a90: $11 $11 $90
	sub  b                                           ; $5a93: $90
	ld   h, b                                        ; $5a94: $60
	ld   h, b                                        ; $5a95: $60
	jr   nz, jr_08c_5ab8                             ; $5a96: $20 $20

	db   $10                                         ; $5a98: $10
	db   $10                                         ; $5a99: $10
	db   $10                                         ; $5a9a: $10
	stop                                             ; $5a9b: $10 $00
	nop                                              ; $5a9d: $00
	rst  $38                                         ; $5a9e: $ff
	rst  $38                                         ; $5a9f: $ff
	db   $10                                         ; $5aa0: $10
	db   $10                                         ; $5aa1: $10
	db   $10                                         ; $5aa2: $10
	db   $10                                         ; $5aa3: $10
	db   $10                                         ; $5aa4: $10
	db   $10                                         ; $5aa5: $10
	jr   nz, jr_08c_5ac8                             ; $5aa6: $20 $20

	jr   nz, jr_08c_5aca                             ; $5aa8: $20 $20

	ld   b, c                                        ; $5aaa: $41
	ld   b, c                                        ; $5aab: $41
	nop                                              ; $5aac: $00
	nop                                              ; $5aad: $00
	rst  $38                                         ; $5aae: $ff
	rst  $38                                         ; $5aaf: $ff
	ld   b, c                                        ; $5ab0: $41
	ld   b, c                                        ; $5ab1: $41
	ld   b, c                                        ; $5ab2: $41
	ld   b, c                                        ; $5ab3: $41
	ld   b, c                                        ; $5ab4: $41
	ld   b, c                                        ; $5ab5: $41
	add  c                                           ; $5ab6: $81
	add  c                                           ; $5ab7: $81

jr_08c_5ab8:
	add  b                                           ; $5ab8: $80
	add  b                                           ; $5ab9: $80
	nop                                              ; $5aba: $00
	nop                                              ; $5abb: $00
	nop                                              ; $5abc: $00
	nop                                              ; $5abd: $00
	rst  $38                                         ; $5abe: $ff
	rst  $38                                         ; $5abf: $ff
	inc  h                                           ; $5ac0: $24
	inc  h                                           ; $5ac1: $24
	inc  h                                           ; $5ac2: $24
	inc  h                                           ; $5ac3: $24
	inc  h                                           ; $5ac4: $24
	inc  h                                           ; $5ac5: $24
	inc  h                                           ; $5ac6: $24
	inc  h                                           ; $5ac7: $24

jr_08c_5ac8:
	ret  z                                           ; $5ac8: $c8

	ret  z                                           ; $5ac9: $c8

jr_08c_5aca:
	db   $10                                         ; $5aca: $10
	stop                                             ; $5acb: $10 $00
	nop                                              ; $5acd: $00
	rst  $38                                         ; $5ace: $ff
	rst  $38                                         ; $5acf: $ff
	inc  b                                           ; $5ad0: $04
	inc  b                                           ; $5ad1: $04
	ld   [hl], h                                     ; $5ad2: $74
	ld   [hl], h                                     ; $5ad3: $74
	ld   d, h                                        ; $5ad4: $54
	ld   d, h                                        ; $5ad5: $54
	ld   d, l                                        ; $5ad6: $55
	ld   d, l                                        ; $5ad7: $55
	ld   d, h                                        ; $5ad8: $54
	ld   d, h                                        ; $5ad9: $54
	ld   [hl], h                                     ; $5ada: $74
	ld   [hl], h                                     ; $5adb: $74
	nop                                              ; $5adc: $00
	nop                                              ; $5add: $00
	rst  $38                                         ; $5ade: $ff
	rst  $38                                         ; $5adf: $ff
	sub  d                                           ; $5ae0: $92
	sub  d                                           ; $5ae1: $92
	sub  a                                           ; $5ae2: $97
	sub  a                                           ; $5ae3: $97
	sub  c                                           ; $5ae4: $91
	sub  c                                           ; $5ae5: $91
	sub  a                                           ; $5ae6: $97
	sub  a                                           ; $5ae7: $97
	ld   de, $2f11                                   ; $5ae8: $11 $11 $2f
	cpl                                              ; $5aeb: $2f
	nop                                              ; $5aec: $00
	nop                                              ; $5aed: $00
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	ld   hl, $e121                                   ; $5af0: $21 $21 $e1
	pop  hl                                          ; $5af3: $e1
	ld   hl, $c121                                   ; $5af4: $21 $21 $c1
	pop  bc                                          ; $5af7: $c1
	ld   bc, $e101                                   ; $5af8: $01 $01 $e1
	pop  hl                                          ; $5afb: $e1
	ld   bc, $ff01                                   ; $5afc: $01 $01 $ff
	rst  $38                                         ; $5aff: $ff
	rst  $38                                         ; $5b00: $ff
	rst  $38                                         ; $5b01: $ff
	nop                                              ; $5b02: $00
	nop                                              ; $5b03: $00
	nop                                              ; $5b04: $00
	nop                                              ; $5b05: $00
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	nop                                              ; $5b08: $00
	nop                                              ; $5b09: $00
	rlca                                             ; $5b0a: $07
	rlca                                             ; $5b0b: $07
	nop                                              ; $5b0c: $00
	nop                                              ; $5b0d: $00
	nop                                              ; $5b0e: $00
	nop                                              ; $5b0f: $00
	rst  $38                                         ; $5b10: $ff
	rst  $38                                         ; $5b11: $ff
	nop                                              ; $5b12: $00
	nop                                              ; $5b13: $00
	nop                                              ; $5b14: $00
	nop                                              ; $5b15: $00
	add  b                                           ; $5b16: $80
	add  b                                           ; $5b17: $80
	add  b                                           ; $5b18: $80
	add  b                                           ; $5b19: $80
	ei                                               ; $5b1a: $fb
	ei                                               ; $5b1b: $fb
	adc  b                                           ; $5b1c: $88
	adc  b                                           ; $5b1d: $88
	adc  b                                           ; $5b1e: $88
	adc  b                                           ; $5b1f: $88
	rst  $38                                         ; $5b20: $ff
	rst  $38                                         ; $5b21: $ff
	nop                                              ; $5b22: $00
	nop                                              ; $5b23: $00
	nop                                              ; $5b24: $00
	nop                                              ; $5b25: $00
	nop                                              ; $5b26: $00
	nop                                              ; $5b27: $00
	ld   [$cb08], sp                                 ; $5b28: $08 $08 $cb
	rrc  b                                           ; $5b2b: $cb $08
	ld   [$0808], sp                                 ; $5b2d: $08 $08 $08
	rst  $38                                         ; $5b30: $ff
	rst  $38                                         ; $5b31: $ff
	nop                                              ; $5b32: $00
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	nop                                              ; $5b35: $00
	jr   nz, jr_08c_5b58                             ; $5b36: $20 $20

	jr   nz, jr_08c_5b5a                             ; $5b38: $20 $20

	db   $fc                                         ; $5b3a: $fc
	db   $fc                                         ; $5b3b: $fc
	ld   hl, $2121                                   ; $5b3c: $21 $21 $21
	ld   hl, $ffff                                   ; $5b3f: $21 $ff $ff
	nop                                              ; $5b42: $00
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	nop                                              ; $5b45: $00
	nop                                              ; $5b46: $00
	nop                                              ; $5b47: $00
	ld   [hl], b                                     ; $5b48: $70
	ld   [hl], b                                     ; $5b49: $70
	xor  b                                           ; $5b4a: $a8
	xor  b                                           ; $5b4b: $a8
	inc  h                                           ; $5b4c: $24
	inc  h                                           ; $5b4d: $24
	inc  h                                           ; $5b4e: $24
	inc  h                                           ; $5b4f: $24
	rst  $38                                         ; $5b50: $ff
	rst  $38                                         ; $5b51: $ff
	nop                                              ; $5b52: $00
	nop                                              ; $5b53: $00
	nop                                              ; $5b54: $00
	nop                                              ; $5b55: $00
	daa                                              ; $5b56: $27
	daa                                              ; $5b57: $27

jr_08c_5b58:
	db   $fc                                         ; $5b58: $fc
	db   $fc                                         ; $5b59: $fc

jr_08c_5b5a:
	ld   d, h                                        ; $5b5a: $54
	ld   d, h                                        ; $5b5b: $54
	ld   d, l                                        ; $5b5c: $55
	ld   d, l                                        ; $5b5d: $55
	db   $fd                                         ; $5b5e: $fd
	db   $fd                                         ; $5b5f: $fd
	rst  $38                                         ; $5b60: $ff
	rst  $38                                         ; $5b61: $ff
	nop                                              ; $5b62: $00
	nop                                              ; $5b63: $00
	nop                                              ; $5b64: $00
	nop                                              ; $5b65: $00
	sbc  a                                           ; $5b66: $9f
	sbc  a                                           ; $5b67: $9f
	sub  b                                           ; $5b68: $90
	sub  b                                           ; $5b69: $90
	sbc  a                                           ; $5b6a: $9f
	sbc  a                                           ; $5b6b: $9f
	db   $10                                         ; $5b6c: $10
	db   $10                                         ; $5b6d: $10
	rla                                              ; $5b6e: $17
	rla                                              ; $5b6f: $17
	rst  $38                                         ; $5b70: $ff
	rst  $38                                         ; $5b71: $ff
	ld   bc, $0101                                   ; $5b72: $01 $01 $01
	ld   bc, $e1e1                                   ; $5b75: $01 $e1 $e1
	ld   hl, $e121                                   ; $5b78: $21 $21 $e1
	pop  hl                                          ; $5b7b: $e1
	ld   bc, $c101                                   ; $5b7c: $01 $01 $c1
	pop  bc                                          ; $5b7f: $c1
	nop                                              ; $5b80: $00
	nop                                              ; $5b81: $00
	nop                                              ; $5b82: $00
	nop                                              ; $5b83: $00
	ld   bc, $0101                                   ; $5b84: $01 $01 $01
	ld   bc, $0202                                   ; $5b87: $01 $02 $02
	nop                                              ; $5b8a: $00
	nop                                              ; $5b8b: $00
	nop                                              ; $5b8c: $00
	nop                                              ; $5b8d: $00
	rst  $38                                         ; $5b8e: $ff
	rst  $38                                         ; $5b8f: $ff
	adc  b                                           ; $5b90: $88
	adc  b                                           ; $5b91: $88
	adc  b                                           ; $5b92: $88
	adc  b                                           ; $5b93: $88
	ld   [$1008], sp                                 ; $5b94: $08 $08 $10
	db   $10                                         ; $5b97: $10
	db   $10                                         ; $5b98: $10
	db   $10                                         ; $5b99: $10
	ld   hl, $0021                                   ; $5b9a: $21 $21 $00
	nop                                              ; $5b9d: $00
	rst  $38                                         ; $5b9e: $ff
	rst  $38                                         ; $5b9f: $ff
	ld   [$0808], sp                                 ; $5ba0: $08 $08 $08
	ld   [$1010], sp                                 ; $5ba3: $08 $10 $10
	db   $10                                         ; $5ba6: $10
	db   $10                                         ; $5ba7: $10
	jr   nz, jr_08c_5bca                             ; $5ba8: $20 $20

	ret  nz                                          ; $5baa: $c0

	ret  nz                                          ; $5bab: $c0

	nop                                              ; $5bac: $00
	nop                                              ; $5bad: $00
	rst  $38                                         ; $5bae: $ff
	rst  $38                                         ; $5baf: $ff
	ld   hl, $2121                                   ; $5bb0: $21 $21 $21
	ld   hl, $2121                                   ; $5bb3: $21 $21 $21
	ld   b, c                                        ; $5bb6: $41
	ld   b, c                                        ; $5bb7: $41
	ld   b, b                                        ; $5bb8: $40
	ld   b, b                                        ; $5bb9: $40
	add  b                                           ; $5bba: $80
	add  b                                           ; $5bbb: $80
	nop                                              ; $5bbc: $00
	nop                                              ; $5bbd: $00
	rst  $38                                         ; $5bbe: $ff
	rst  $38                                         ; $5bbf: $ff
	inc  h                                           ; $5bc0: $24
	inc  h                                           ; $5bc1: $24
	inc  h                                           ; $5bc2: $24
	inc  h                                           ; $5bc3: $24
	inc  h                                           ; $5bc4: $24
	inc  h                                           ; $5bc5: $24
	inc  h                                           ; $5bc6: $24
	inc  h                                           ; $5bc7: $24
	ret  z                                           ; $5bc8: $c8

	ret  z                                           ; $5bc9: $c8

jr_08c_5bca:
	db   $10                                         ; $5bca: $10
	stop                                             ; $5bcb: $10 $00
	nop                                              ; $5bcd: $00
	rst  $38                                         ; $5bce: $ff
	rst  $38                                         ; $5bcf: $ff
	inc  b                                           ; $5bd0: $04
	inc  b                                           ; $5bd1: $04
	ld   [hl], h                                     ; $5bd2: $74
	ld   [hl], h                                     ; $5bd3: $74
	ld   d, h                                        ; $5bd4: $54
	ld   d, h                                        ; $5bd5: $54
	ld   d, l                                        ; $5bd6: $55
	ld   d, l                                        ; $5bd7: $55
	ld   d, h                                        ; $5bd8: $54
	ld   d, h                                        ; $5bd9: $54
	ld   [hl], h                                     ; $5bda: $74
	ld   [hl], h                                     ; $5bdb: $74
	nop                                              ; $5bdc: $00
	nop                                              ; $5bdd: $00
	rst  $38                                         ; $5bde: $ff
	rst  $38                                         ; $5bdf: $ff
	sub  d                                           ; $5be0: $92
	sub  d                                           ; $5be1: $92
	sub  a                                           ; $5be2: $97
	sub  a                                           ; $5be3: $97
	sub  c                                           ; $5be4: $91
	sub  c                                           ; $5be5: $91
	sub  a                                           ; $5be6: $97
	sub  a                                           ; $5be7: $97
	ld   de, $2f11                                   ; $5be8: $11 $11 $2f
	cpl                                              ; $5beb: $2f
	nop                                              ; $5bec: $00
	nop                                              ; $5bed: $00
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	ld   hl, $e121                                   ; $5bf0: $21 $21 $e1
	pop  hl                                          ; $5bf3: $e1
	ld   hl, $c121                                   ; $5bf4: $21 $21 $c1
	pop  bc                                          ; $5bf7: $c1
	ld   bc, $e101                                   ; $5bf8: $01 $01 $e1
	pop  hl                                          ; $5bfb: $e1
	ld   bc, $ff01                                   ; $5bfc: $01 $01 $ff
	rst  $38                                         ; $5bff: $ff
	rst  $38                                         ; $5c00: $ff
	rst  $38                                         ; $5c01: $ff
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	rra                                              ; $5c08: $1f
	rra                                              ; $5c09: $1f
	ld   [bc], a                                     ; $5c0a: $02
	ld   [bc], a                                     ; $5c0b: $02
	ld   [bc], a                                     ; $5c0c: $02
	ld   [bc], a                                     ; $5c0d: $02
	ld   [bc], a                                     ; $5c0e: $02
	ld   [bc], a                                     ; $5c0f: $02
	rst  $38                                         ; $5c10: $ff
	rst  $38                                         ; $5c11: $ff
	nop                                              ; $5c12: $00
	nop                                              ; $5c13: $00
	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00
	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00
	pop  hl                                          ; $5c18: $e1
	pop  hl                                          ; $5c19: $e1
	ld   hl, $4221                                   ; $5c1a: $21 $21 $42
	ld   b, d                                        ; $5c1d: $42
	add  d                                           ; $5c1e: $82
	add  d                                           ; $5c1f: $82
	rst  $38                                         ; $5c20: $ff
	rst  $38                                         ; $5c21: $ff
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	ld   [hl+], a                                    ; $5c28: $22
	ld   [hl+], a                                    ; $5c29: $22
	ld   [hl+], a                                    ; $5c2a: $22
	ld   [hl+], a                                    ; $5c2b: $22
	ld   [hl+], a                                    ; $5c2c: $22
	ld   [hl+], a                                    ; $5c2d: $22
	ld   [hl+], a                                    ; $5c2e: $22
	ld   [hl+], a                                    ; $5c2f: $22
	rst  $38                                         ; $5c30: $ff
	rst  $38                                         ; $5c31: $ff
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	nop                                              ; $5c34: $00
	nop                                              ; $5c35: $00
	nop                                              ; $5c36: $00
	nop                                              ; $5c37: $00
	ld   a, [hl]                                     ; $5c38: $7e
	ld   a, [hl]                                     ; $5c39: $7e
	ld   [bc], a                                     ; $5c3a: $02
	ld   [bc], a                                     ; $5c3b: $02
	ld   [bc], a                                     ; $5c3c: $02
	ld   [bc], a                                     ; $5c3d: $02
	inc  b                                           ; $5c3e: $04
	inc  b                                           ; $5c3f: $04
	rst  $38                                         ; $5c40: $ff
	rst  $38                                         ; $5c41: $ff
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	inc  e                                           ; $5c48: $1c
	inc  e                                           ; $5c49: $1c
	ld   a, [hl+]                                    ; $5c4a: $2a
	ld   a, [hl+]                                    ; $5c4b: $2a
	ld   c, c                                        ; $5c4c: $49
	ld   c, c                                        ; $5c4d: $49
	ld   c, c                                        ; $5c4e: $49
	ld   c, c                                        ; $5c4f: $49
	rst  $38                                         ; $5c50: $ff
	rst  $38                                         ; $5c51: $ff
	nop                                              ; $5c52: $00
	nop                                              ; $5c53: $00
	nop                                              ; $5c54: $00
	nop                                              ; $5c55: $00
	add  hl, bc                                      ; $5c56: $09
	add  hl, bc                                      ; $5c57: $09
	ccf                                              ; $5c58: $3f
	ccf                                              ; $5c59: $3f
	dec  d                                           ; $5c5a: $15
	dec  d                                           ; $5c5b: $15
	dec  d                                           ; $5c5c: $15
	dec  d                                           ; $5c5d: $15
	ccf                                              ; $5c5e: $3f
	ccf                                              ; $5c5f: $3f
	rst  $38                                         ; $5c60: $ff
	rst  $38                                         ; $5c61: $ff
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	rst  $20                                         ; $5c66: $e7
	rst  $20                                         ; $5c67: $e7
	inc  h                                           ; $5c68: $24
	inc  h                                           ; $5c69: $24
	daa                                              ; $5c6a: $27
	daa                                              ; $5c6b: $27
	ld   b, h                                        ; $5c6c: $44
	ld   b, h                                        ; $5c6d: $44
	ld   b, l                                        ; $5c6e: $45
	ld   b, l                                        ; $5c6f: $45
	rst  $38                                         ; $5c70: $ff
	rst  $38                                         ; $5c71: $ff
	ld   bc, $0101                                   ; $5c72: $01 $01 $01
	ld   bc, $f9f9                                   ; $5c75: $01 $f9 $f9
	add  hl, bc                                      ; $5c78: $09
	add  hl, bc                                      ; $5c79: $09
	ld   sp, hl                                      ; $5c7a: $f9
	ld   sp, hl                                      ; $5c7b: $f9
	ld   bc, $f101                                   ; $5c7c: $01 $01 $f1
	pop  af                                          ; $5c7f: $f1
	ld   [bc], a                                     ; $5c80: $02
	ld   [bc], a                                     ; $5c81: $02
	ld   [bc], a                                     ; $5c82: $02
	ld   [bc], a                                     ; $5c83: $02
	ld   [bc], a                                     ; $5c84: $02
	ld   [bc], a                                     ; $5c85: $02
	inc  b                                           ; $5c86: $04
	inc  b                                           ; $5c87: $04
	inc  b                                           ; $5c88: $04
	inc  b                                           ; $5c89: $04
	ld   [$0008], sp                                 ; $5c8a: $08 $08 $00
	nop                                              ; $5c8d: $00
	rst  $38                                         ; $5c8e: $ff
	rst  $38                                         ; $5c8f: $ff
	ld   b, $06                                      ; $5c90: $06 $06
	ld   a, [de]                                     ; $5c92: $1a
	ld   a, [de]                                     ; $5c93: $1a
	ld   [bc], a                                     ; $5c94: $02
	ld   [bc], a                                     ; $5c95: $02
	ld   [bc], a                                     ; $5c96: $02
	ld   [bc], a                                     ; $5c97: $02
	ld   [bc], a                                     ; $5c98: $02
	ld   [bc], a                                     ; $5c99: $02
	ld   [bc], a                                     ; $5c9a: $02
	ld   [bc], a                                     ; $5c9b: $02
	nop                                              ; $5c9c: $00
	nop                                              ; $5c9d: $00
	rst  $38                                         ; $5c9e: $ff
	rst  $38                                         ; $5c9f: $ff
	ld   [hl+], a                                    ; $5ca0: $22
	ld   [hl+], a                                    ; $5ca1: $22
	ld   [bc], a                                     ; $5ca2: $02
	ld   [bc], a                                     ; $5ca3: $02
	ld   [bc], a                                     ; $5ca4: $02
	ld   [bc], a                                     ; $5ca5: $02
	inc  b                                           ; $5ca6: $04
	inc  b                                           ; $5ca7: $04
	inc  b                                           ; $5ca8: $04
	inc  b                                           ; $5ca9: $04
	ld   [$0008], sp                                 ; $5caa: $08 $08 $00
	nop                                              ; $5cad: $00
	rst  $38                                         ; $5cae: $ff
	rst  $38                                         ; $5caf: $ff
	inc  b                                           ; $5cb0: $04
	inc  b                                           ; $5cb1: $04
	ld   [$0808], sp                                 ; $5cb2: $08 $08 $08
	ld   [$1414], sp                                 ; $5cb5: $08 $14 $14
	ld   [hl+], a                                    ; $5cb8: $22
	ld   [hl+], a                                    ; $5cb9: $22
	ld   b, c                                        ; $5cba: $41
	ld   b, c                                        ; $5cbb: $41
	nop                                              ; $5cbc: $00
	nop                                              ; $5cbd: $00
	rst  $38                                         ; $5cbe: $ff
	rst  $38                                         ; $5cbf: $ff
	ld   c, c                                        ; $5cc0: $49
	ld   c, c                                        ; $5cc1: $49
	ld   c, c                                        ; $5cc2: $49
	ld   c, c                                        ; $5cc3: $49
	ld   c, c                                        ; $5cc4: $49
	ld   c, c                                        ; $5cc5: $49
	ld   c, c                                        ; $5cc6: $49
	ld   c, c                                        ; $5cc7: $49
	ld   [hl-], a                                    ; $5cc8: $32
	ld   [hl-], a                                    ; $5cc9: $32
	inc  b                                           ; $5cca: $04
	inc  b                                           ; $5ccb: $04
	nop                                              ; $5ccc: $00
	nop                                              ; $5ccd: $00
	rst  $38                                         ; $5cce: $ff
	rst  $38                                         ; $5ccf: $ff
	ld   bc, $1d01                                   ; $5cd0: $01 $01 $1d
	dec  e                                           ; $5cd3: $1d
	dec  d                                           ; $5cd4: $15
	dec  d                                           ; $5cd5: $15
	dec  d                                           ; $5cd6: $15
	dec  d                                           ; $5cd7: $15
	dec  d                                           ; $5cd8: $15
	dec  d                                           ; $5cd9: $15
	dec  e                                           ; $5cda: $1d
	dec  e                                           ; $5cdb: $1d
	nop                                              ; $5cdc: $00
	nop                                              ; $5cdd: $00
	rst  $38                                         ; $5cde: $ff
	rst  $38                                         ; $5cdf: $ff
	inc  h                                           ; $5ce0: $24
	inc  h                                           ; $5ce1: $24
	dec  h                                           ; $5ce2: $25
	dec  h                                           ; $5ce3: $25
	inc  h                                           ; $5ce4: $24
	inc  h                                           ; $5ce5: $24
	ld   h, l                                        ; $5ce6: $65
	ld   h, l                                        ; $5ce7: $65
	inc  b                                           ; $5ce8: $04
	inc  b                                           ; $5ce9: $04
	dec  bc                                          ; $5cea: $0b
	dec  bc                                          ; $5ceb: $0b
	nop                                              ; $5cec: $00
	nop                                              ; $5ced: $00
	rst  $38                                         ; $5cee: $ff
	rst  $38                                         ; $5cef: $ff
	adc  c                                           ; $5cf0: $89
	adc  c                                           ; $5cf1: $89
	ld   sp, hl                                      ; $5cf2: $f9
	ld   sp, hl                                      ; $5cf3: $f9
	ld   c, c                                        ; $5cf4: $49
	ld   c, c                                        ; $5cf5: $49
	pop  af                                          ; $5cf6: $f1
	pop  af                                          ; $5cf7: $f1
	ld   b, c                                        ; $5cf8: $41
	ld   b, c                                        ; $5cf9: $41
	ld   sp, hl                                      ; $5cfa: $f9
	ld   sp, hl                                      ; $5cfb: $f9
	ld   bc, $ff01                                   ; $5cfc: $01 $01 $ff
	rst  $38                                         ; $5cff: $ff
	rst  $38                                         ; $5d00: $ff
	rst  $38                                         ; $5d01: $ff
	nop                                              ; $5d02: $00
	nop                                              ; $5d03: $00
	nop                                              ; $5d04: $00
	nop                                              ; $5d05: $00
	nop                                              ; $5d06: $00
	nop                                              ; $5d07: $00
	nop                                              ; $5d08: $00
	nop                                              ; $5d09: $00
	ld   bc, $0001                                   ; $5d0a: $01 $01 $00
	nop                                              ; $5d0d: $00
	nop                                              ; $5d0e: $00
	nop                                              ; $5d0f: $00
	rst  $38                                         ; $5d10: $ff
	rst  $38                                         ; $5d11: $ff
	nop                                              ; $5d12: $00
	nop                                              ; $5d13: $00
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	ld   b, b                                        ; $5d16: $40
	ld   b, b                                        ; $5d17: $40
	adc  a                                           ; $5d18: $8f
	adc  a                                           ; $5d19: $8f
	ld   [hl+], a                                    ; $5d1a: $22
	ld   [hl+], a                                    ; $5d1b: $22
	jp   nz, $92c2                                   ; $5d1c: $c2 $c2 $92

	sub  d                                           ; $5d1f: $92
	rst  $38                                         ; $5d20: $ff
	rst  $38                                         ; $5d21: $ff
	nop                                              ; $5d22: $00
	nop                                              ; $5d23: $00
	nop                                              ; $5d24: $00
	nop                                              ; $5d25: $00
	ld   [$bf08], sp                                 ; $5d26: $08 $08 $bf
	cp   a                                           ; $5d29: $bf
	ld   [$3d08], sp                                 ; $5d2a: $08 $08 $3d
	dec  a                                           ; $5d2d: $3d
	dec  h                                           ; $5d2e: $25
	dec  h                                           ; $5d2f: $25
	rst  $38                                         ; $5d30: $ff
	rst  $38                                         ; $5d31: $ff
	nop                                              ; $5d32: $00
	nop                                              ; $5d33: $00
	nop                                              ; $5d34: $00
	nop                                              ; $5d35: $00
	add  b                                           ; $5d36: $80
	add  b                                           ; $5d37: $80
	pop  hl                                          ; $5d38: $e1
	pop  hl                                          ; $5d39: $e1
	add  d                                           ; $5d3a: $82
	add  d                                           ; $5d3b: $82
	db   $e4                                         ; $5d3c: $e4
	db   $e4                                         ; $5d3d: $e4
	inc  h                                           ; $5d3e: $24
	inc  h                                           ; $5d3f: $24
	rst  $38                                         ; $5d40: $ff
	rst  $38                                         ; $5d41: $ff
	nop                                              ; $5d42: $00
	nop                                              ; $5d43: $00
	nop                                              ; $5d44: $00
	nop                                              ; $5d45: $00
	nop                                              ; $5d46: $00
	nop                                              ; $5d47: $00
	jp   $a1c3                                       ; $5d48: $c3 $c3 $a1


	and  c                                           ; $5d4b: $a1
	sub  c                                           ; $5d4c: $91
	sub  c                                           ; $5d4d: $91
	sub  e                                           ; $5d4e: $93
	sub  e                                           ; $5d4f: $93
	rst  $38                                         ; $5d50: $ff
	rst  $38                                         ; $5d51: $ff
	nop                                              ; $5d52: $00
	nop                                              ; $5d53: $00
	nop                                              ; $5d54: $00
	nop                                              ; $5d55: $00
	sbc  [hl]                                        ; $5d56: $9e
	sbc  [hl]                                        ; $5d57: $9e
	ldh  a, [c]                                      ; $5d58: $f2
	ldh  a, [c]                                      ; $5d59: $f2
	ld   d, d                                        ; $5d5a: $52
	ld   d, d                                        ; $5d5b: $52
	ld   d, h                                        ; $5d5c: $54
	ld   d, h                                        ; $5d5d: $54
	db   $f4                                         ; $5d5e: $f4
	db   $f4                                         ; $5d5f: $f4
	rst  $38                                         ; $5d60: $ff
	rst  $38                                         ; $5d61: $ff
	nop                                              ; $5d62: $00
	nop                                              ; $5d63: $00
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	ld   a, a                                        ; $5d66: $7f
	ld   a, a                                        ; $5d67: $7f
	ld   b, b                                        ; $5d68: $40
	ld   b, b                                        ; $5d69: $40
	ld   a, a                                        ; $5d6a: $7f
	ld   a, a                                        ; $5d6b: $7f
	ld   b, b                                        ; $5d6c: $40
	ld   b, b                                        ; $5d6d: $40
	ld   e, a                                        ; $5d6e: $5f
	ld   e, a                                        ; $5d6f: $5f
	rst  $38                                         ; $5d70: $ff
	rst  $38                                         ; $5d71: $ff
	ld   bc, $0101                                   ; $5d72: $01 $01 $01
	ld   bc, $8181                                   ; $5d75: $01 $81 $81
	add  c                                           ; $5d78: $81
	add  c                                           ; $5d79: $81
	add  c                                           ; $5d7a: $81
	add  c                                           ; $5d7b: $81
	ld   bc, $0101                                   ; $5d7c: $01 $01 $01
	ld   bc, $0101                                   ; $5d7f: $01 $01 $01
	nop                                              ; $5d82: $00
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	nop                                              ; $5d85: $00
	ld   bc, $0101                                   ; $5d86: $01 $01 $01
	ld   bc, $0101                                   ; $5d89: $01 $01 $01
	nop                                              ; $5d8c: $00
	nop                                              ; $5d8d: $00
	rst  $38                                         ; $5d8e: $ff
	rst  $38                                         ; $5d8f: $ff
	ldh  a, [c]                                      ; $5d90: $f2
	ldh  a, [c]                                      ; $5d91: $f2
	ld   d, d                                        ; $5d92: $52
	ld   d, d                                        ; $5d93: $52
	ld   b, d                                        ; $5d94: $42
	ld   b, d                                        ; $5d95: $42
	ld   d, d                                        ; $5d96: $52
	ld   d, d                                        ; $5d97: $52
	ld   d, d                                        ; $5d98: $52
	ld   d, d                                        ; $5d99: $52
	ld   e, a                                        ; $5d9a: $5f
	ld   e, a                                        ; $5d9b: $5f
	nop                                              ; $5d9c: $00
	nop                                              ; $5d9d: $00
	rst  $38                                         ; $5d9e: $ff
	rst  $38                                         ; $5d9f: $ff
	ccf                                              ; $5da0: $3f
	ccf                                              ; $5da1: $3f
	ld   a, [hl+]                                    ; $5da2: $2a
	ld   a, [hl+]                                    ; $5da3: $2a
	ld   a, [hl+]                                    ; $5da4: $2a
	ld   a, [hl+]                                    ; $5da5: $2a
	daa                                              ; $5da6: $27
	daa                                              ; $5da7: $27
	ld   a, [hl+]                                    ; $5da8: $2a
	ld   a, [hl+]                                    ; $5da9: $2a
	and  d                                           ; $5daa: $a2
	and  d                                           ; $5dab: $a2
	nop                                              ; $5dac: $00
	nop                                              ; $5dad: $00
	rst  $38                                         ; $5dae: $ff
	rst  $38                                         ; $5daf: $ff
	db   $e4                                         ; $5db0: $e4
	db   $e4                                         ; $5db1: $e4
	and  h                                           ; $5db2: $a4
	and  h                                           ; $5db3: $a4
	and  h                                           ; $5db4: $a4
	and  h                                           ; $5db5: $a4
	inc  h                                           ; $5db6: $24
	inc  h                                           ; $5db7: $24
	and  e                                           ; $5db8: $a3
	and  e                                           ; $5db9: $a3
	ld   h, b                                        ; $5dba: $60
	ld   h, b                                        ; $5dbb: $60
	nop                                              ; $5dbc: $00
	nop                                              ; $5dbd: $00
	rst  $38                                         ; $5dbe: $ff
	rst  $38                                         ; $5dbf: $ff
	sub  b                                           ; $5dc0: $90
	sub  b                                           ; $5dc1: $90
	sub  c                                           ; $5dc2: $91
	sub  c                                           ; $5dc3: $91
	sub  c                                           ; $5dc4: $91
	sub  c                                           ; $5dc5: $91
	sub  c                                           ; $5dc6: $91
	sub  c                                           ; $5dc7: $91
	ld   hl, $4121                                   ; $5dc8: $21 $21 $41
	ld   b, c                                        ; $5dcb: $41
	nop                                              ; $5dcc: $00
	nop                                              ; $5dcd: $00
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	ld   [de], a                                     ; $5dd0: $12
	ld   [de], a                                     ; $5dd1: $12
	jp   nc, Jump_08c_52d2                           ; $5dd2: $d2 $d2 $52

	ld   d, d                                        ; $5dd5: $52
	ld   d, [hl]                                     ; $5dd6: $56
	ld   d, [hl]                                     ; $5dd7: $56
	ld   d, b                                        ; $5dd8: $50
	ld   d, b                                        ; $5dd9: $50
	ret  nc                                          ; $5dda: $d0

	ret  nc                                          ; $5ddb: $d0

	nop                                              ; $5ddc: $00
	nop                                              ; $5ddd: $00
	rst  $38                                         ; $5dde: $ff
	rst  $38                                         ; $5ddf: $ff
	ld   c, b                                        ; $5de0: $48
	ld   c, b                                        ; $5de1: $48
	ld   e, a                                        ; $5de2: $5f
	ld   e, a                                        ; $5de3: $5f
	ld   b, h                                        ; $5de4: $44
	ld   b, h                                        ; $5de5: $44
	ld   e, a                                        ; $5de6: $5f
	ld   e, a                                        ; $5de7: $5f
	ld   b, h                                        ; $5de8: $44
	ld   b, h                                        ; $5de9: $44
	cp   a                                           ; $5dea: $bf
	cp   a                                           ; $5deb: $bf
	nop                                              ; $5dec: $00
	nop                                              ; $5ded: $00
	rst  $38                                         ; $5dee: $ff
	rst  $38                                         ; $5def: $ff
	add  c                                           ; $5df0: $81
	add  c                                           ; $5df1: $81
	add  c                                           ; $5df2: $81
	add  c                                           ; $5df3: $81
	add  c                                           ; $5df4: $81
	add  c                                           ; $5df5: $81
	ld   bc, $0101                                   ; $5df6: $01 $01 $01
	ld   bc, $8181                                   ; $5df9: $01 $81 $81
	ld   bc, $ff01                                   ; $5dfc: $01 $01 $ff
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	ld   [bc], a                                     ; $5e06: $02
	ld   [bc], a                                     ; $5e07: $02
	rrca                                             ; $5e08: $0f
	rrca                                             ; $5e09: $0f
	ld   [bc], a                                     ; $5e0a: $02
	ld   [bc], a                                     ; $5e0b: $02
	inc  bc                                          ; $5e0c: $03
	inc  bc                                          ; $5e0d: $03
	ld   b, $06                                      ; $5e0e: $06 $06
	rst  $38                                         ; $5e10: $ff
	rst  $38                                         ; $5e11: $ff
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	nop                                              ; $5e17: $00
	ldh  [c], a                                      ; $5e18: $e2
	ldh  [c], a                                      ; $5e19: $e2
	add  d                                           ; $5e1a: $82
	add  d                                           ; $5e1b: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e1c: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e1d: $cf
	and  d                                           ; $5e1e: $a2
	and  d                                           ; $5e1f: $a2
	rst  $38                                         ; $5e20: $ff
	rst  $38                                         ; $5e21: $ff
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	nop                                              ; $5e25: $00
	ld   b, b                                        ; $5e26: $40
	ld   b, b                                        ; $5e27: $40
	ld   b, c                                        ; $5e28: $41
	ld   b, c                                        ; $5e29: $41
	ld   b, c                                        ; $5e2a: $41
	ld   b, c                                        ; $5e2b: $41
	pop  af                                          ; $5e2c: $f1
	pop  af                                          ; $5e2d: $f1
	ld   c, e                                        ; $5e2e: $4b
	ld   c, e                                        ; $5e2f: $4b
	rst  $38                                         ; $5e30: $ff
	rst  $38                                         ; $5e31: $ff
	nop                                              ; $5e32: $00
	nop                                              ; $5e33: $00
	nop                                              ; $5e34: $00
	nop                                              ; $5e35: $00
	jr   nz, jr_08c_5e58                             ; $5e36: $20 $20

	jr   nz, jr_08c_5e5a                             ; $5e38: $20 $20

	ldh  a, [$f0]                                    ; $5e3a: $f0 $f0
	jr   z, jr_08c_5e66                              ; $5e3c: $28 $28

	jr   z, jr_08c_5e68                              ; $5e3e: $28 $28

	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
	jr   c, jr_08c_5e82                              ; $5e48: $38 $38

	ld   d, h                                        ; $5e4a: $54
	ld   d, h                                        ; $5e4b: $54
	sub  d                                           ; $5e4c: $92
	sub  d                                           ; $5e4d: $92
	sub  d                                           ; $5e4e: $92
	sub  d                                           ; $5e4f: $92
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	nop                                              ; $5e54: $00
	nop                                              ; $5e55: $00
	inc  de                                          ; $5e56: $13
	inc  de                                          ; $5e57: $13

jr_08c_5e58:
	ld   a, [hl]                                     ; $5e58: $7e
	ld   a, [hl]                                     ; $5e59: $7e

jr_08c_5e5a:
	ld   a, [hl+]                                    ; $5e5a: $2a
	ld   a, [hl+]                                    ; $5e5b: $2a
	ld   a, [hl+]                                    ; $5e5c: $2a
	ld   a, [hl+]                                    ; $5e5d: $2a
	ld   a, [hl]                                     ; $5e5e: $7e
	ld   a, [hl]                                     ; $5e5f: $7e
	rst  $38                                         ; $5e60: $ff
	rst  $38                                         ; $5e61: $ff
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00

jr_08c_5e66:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e66: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e67: $cf

jr_08c_5e68:
	ld   c, b                                        ; $5e68: $48
	ld   c, b                                        ; $5e69: $48
	ld   c, a                                        ; $5e6a: $4f
	ld   c, a                                        ; $5e6b: $4f
	adc  b                                           ; $5e6c: $88
	adc  b                                           ; $5e6d: $88
	adc  e                                           ; $5e6e: $8b
	adc  e                                           ; $5e6f: $8b
	rst  $38                                         ; $5e70: $ff
	rst  $38                                         ; $5e71: $ff
	ld   bc, $0101                                   ; $5e72: $01 $01 $01
	ld   bc, $f1f1                                   ; $5e75: $01 $f1 $f1
	ld   de, $f111                                   ; $5e78: $11 $11 $f1
	pop  af                                          ; $5e7b: $f1
	ld   bc, $e101                                   ; $5e7c: $01 $01 $e1
	pop  hl                                          ; $5e7f: $e1
	ld   b, $06                                      ; $5e80: $06 $06

jr_08c_5e82:
	ld   a, [bc]                                     ; $5e82: $0a
	ld   a, [bc]                                     ; $5e83: $0a
	ld   a, [bc]                                     ; $5e84: $0a
	ld   a, [bc]                                     ; $5e85: $0a
	ld   a, [bc]                                     ; $5e86: $0a
	ld   a, [bc]                                     ; $5e87: $0a
	add  hl, bc                                      ; $5e88: $09
	add  hl, bc                                      ; $5e89: $09
	ld   b, $06                                      ; $5e8a: $06 $06
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	rst  $38                                         ; $5e8e: $ff
	rst  $38                                         ; $5e8f: $ff
	sub  d                                           ; $5e90: $92
	sub  d                                           ; $5e91: $92
	sub  d                                           ; $5e92: $92
	sub  d                                           ; $5e93: $92
	sub  d                                           ; $5e94: $92
	sub  d                                           ; $5e95: $92
	sub  d                                           ; $5e96: $92
	sub  d                                           ; $5e97: $92
	ld   [de], a                                     ; $5e98: $12
	ld   [de], a                                     ; $5e99: $12
	and  c                                           ; $5e9a: $a1
	and  c                                           ; $5e9b: $a1
	nop                                              ; $5e9c: $00
	nop                                              ; $5e9d: $00
	rst  $38                                         ; $5e9e: $ff
	rst  $38                                         ; $5e9f: $ff
	ld   c, d                                        ; $5ea0: $4a
	ld   c, d                                        ; $5ea1: $4a
	ld   a, [bc]                                     ; $5ea2: $0a
	ld   a, [bc]                                     ; $5ea3: $0a
	ld   [hl-], a                                    ; $5ea4: $32
	ld   [hl-], a                                    ; $5ea5: $32
	ld   [bc], a                                     ; $5ea6: $02
	ld   [bc], a                                     ; $5ea7: $02
	ld   [bc], a                                     ; $5ea8: $02
	ld   [bc], a                                     ; $5ea9: $02
	ld   bc, $0001                                   ; $5eaa: $01 $01 $00
	nop                                              ; $5ead: $00
	rst  $38                                         ; $5eae: $ff
	rst  $38                                         ; $5eaf: $ff
	and  h                                           ; $5eb0: $a4
	and  h                                           ; $5eb1: $a4
	and  h                                           ; $5eb2: $a4
	and  h                                           ; $5eb3: $a4
	and  h                                           ; $5eb4: $a4
	and  h                                           ; $5eb5: $a4
	ld   b, h                                        ; $5eb6: $44
	ld   b, h                                        ; $5eb7: $44
	ld   b, h                                        ; $5eb8: $44
	ld   b, h                                        ; $5eb9: $44
	xor  b                                           ; $5eba: $a8
	xor  b                                           ; $5ebb: $a8
	nop                                              ; $5ebc: $00
	nop                                              ; $5ebd: $00
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	sub  d                                           ; $5ec0: $92
	sub  d                                           ; $5ec1: $92
	sub  d                                           ; $5ec2: $92
	sub  d                                           ; $5ec3: $92
	sub  d                                           ; $5ec4: $92
	sub  d                                           ; $5ec5: $92
	sub  d                                           ; $5ec6: $92
	sub  d                                           ; $5ec7: $92
	ld   h, h                                        ; $5ec8: $64
	ld   h, h                                        ; $5ec9: $64
	ld   [$0008], sp                                 ; $5eca: $08 $08 $00
	nop                                              ; $5ecd: $00
	rst  $38                                         ; $5ece: $ff
	rst  $38                                         ; $5ecf: $ff
	ld   [bc], a                                     ; $5ed0: $02
	ld   [bc], a                                     ; $5ed1: $02
	ld   a, [hl-]                                    ; $5ed2: $3a
	ld   a, [hl-]                                    ; $5ed3: $3a
	ld   a, [hl+]                                    ; $5ed4: $2a
	ld   a, [hl+]                                    ; $5ed5: $2a
	ld   a, [hl+]                                    ; $5ed6: $2a
	ld   a, [hl+]                                    ; $5ed7: $2a
	ld   a, [hl+]                                    ; $5ed8: $2a
	ld   a, [hl+]                                    ; $5ed9: $2a
	ld   a, [hl-]                                    ; $5eda: $3a
	ld   a, [hl-]                                    ; $5edb: $3a
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	rst  $38                                         ; $5ede: $ff
	rst  $38                                         ; $5edf: $ff
	ld   c, c                                        ; $5ee0: $49
	ld   c, c                                        ; $5ee1: $49
	ld   c, e                                        ; $5ee2: $4b
	ld   c, e                                        ; $5ee3: $4b
	ld   c, b                                        ; $5ee4: $48
	ld   c, b                                        ; $5ee5: $48
	set  1, e                                        ; $5ee6: $cb $cb
	ld   [$1708], sp                                 ; $5ee8: $08 $08 $17
	rla                                              ; $5eeb: $17
	nop                                              ; $5eec: $00
	nop                                              ; $5eed: $00
	rst  $38                                         ; $5eee: $ff
	rst  $38                                         ; $5eef: $ff
	ld   de, $f111                                   ; $5ef0: $11 $11 $f1
	pop  af                                          ; $5ef3: $f1
	sub  c                                           ; $5ef4: $91
	sub  c                                           ; $5ef5: $91
	pop  hl                                          ; $5ef6: $e1
	pop  hl                                          ; $5ef7: $e1
	add  c                                           ; $5ef8: $81
	add  c                                           ; $5ef9: $81
	pop  af                                          ; $5efa: $f1
	pop  af                                          ; $5efb: $f1
	ld   bc, $ff01                                   ; $5efc: $01 $01 $ff
	rst  $38                                         ; $5eff: $ff
	rst  $38                                         ; $5f00: $ff
	rst  $38                                         ; $5f01: $ff
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
	rst  $38                                         ; $5f10: $ff
	rst  $38                                         ; $5f11: $ff
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
	rst  $38                                         ; $5f20: $ff
	rst  $38                                         ; $5f21: $ff
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	nop                                              ; $5f25: $00
	ld   c, $0e                                      ; $5f26: $0e $0e
	ld   a, [bc]                                     ; $5f28: $0a
	ld   a, [bc]                                     ; $5f29: $0a
	ld   a, [bc]                                     ; $5f2a: $0a
	ld   a, [bc]                                     ; $5f2b: $0a
	ld   a, [bc]                                     ; $5f2c: $0a
	ld   a, [bc]                                     ; $5f2d: $0a
	ld   a, [bc]                                     ; $5f2e: $0a
	ld   a, [bc]                                     ; $5f2f: $0a
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
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
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	nop                                              ; $5f42: $00
	nop                                              ; $5f43: $00
	nop                                              ; $5f44: $00
	nop                                              ; $5f45: $00
	dec  c                                           ; $5f46: $0d
	dec  c                                           ; $5f47: $0d
	dec  bc                                          ; $5f48: $0b
	dec  bc                                          ; $5f49: $0b
	dec  bc                                          ; $5f4a: $0b
	dec  bc                                          ; $5f4b: $0b
	dec  c                                           ; $5f4c: $0d
	dec  c                                           ; $5f4d: $0d
	dec  bc                                          ; $5f4e: $0b
	dec  bc                                          ; $5f4f: $0b
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	nop                                              ; $5f52: $00
	nop                                              ; $5f53: $00
	nop                                              ; $5f54: $00
	nop                                              ; $5f55: $00
	jr   nz, jr_08c_5f78                             ; $5f56: $20 $20

	ld   hl, sp-$08                                  ; $5f58: $f8 $f8
	jr   nz, @+$22                                   ; $5f5a: $20 $20

	ld   h, b                                        ; $5f5c: $60
	ld   h, b                                        ; $5f5d: $60
	cp   b                                           ; $5f5e: $b8
	cp   b                                           ; $5f5f: $b8
	rst  $38                                         ; $5f60: $ff
	rst  $38                                         ; $5f61: $ff
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	nop                                              ; $5f64: $00
	nop                                              ; $5f65: $00
	nop                                              ; $5f66: $00
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	nop                                              ; $5f69: $00
	nop                                              ; $5f6a: $00
	nop                                              ; $5f6b: $00
	nop                                              ; $5f6c: $00
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00
	nop                                              ; $5f6f: $00
	rst  $38                                         ; $5f70: $ff
	rst  $38                                         ; $5f71: $ff
	ld   bc, $0101                                   ; $5f72: $01 $01 $01
	ld   bc, $0101                                   ; $5f75: $01 $01 $01

jr_08c_5f78:
	ld   bc, $0101                                   ; $5f78: $01 $01 $01
	ld   bc, $0101                                   ; $5f7b: $01 $01 $01
	ld   bc, $0001                                   ; $5f7e: $01 $01 $00
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
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	nop                                              ; $5f96: $00
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	nop                                              ; $5f99: $00
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	nop                                              ; $5f9c: $00
	nop                                              ; $5f9d: $00
	rst  $38                                         ; $5f9e: $ff
	rst  $38                                         ; $5f9f: $ff
	ld   a, [bc]                                     ; $5fa0: $0a
	ld   a, [bc]                                     ; $5fa1: $0a
	ld   a, [bc]                                     ; $5fa2: $0a
	ld   a, [bc]                                     ; $5fa3: $0a
	dec  de                                          ; $5fa4: $1b
	dec  de                                          ; $5fa5: $1b
	ld   de, $0a11                                   ; $5fa6: $11 $11 $0a
	ld   a, [bc]                                     ; $5fa9: $0a
	inc  b                                           ; $5faa: $04
	inc  b                                           ; $5fab: $04
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	rst  $38                                         ; $5fae: $ff
	rst  $38                                         ; $5faf: $ff
	ccf                                              ; $5fb0: $3f
	ccf                                              ; $5fb1: $3f
	nop                                              ; $5fb2: $00
	nop                                              ; $5fb3: $00
	nop                                              ; $5fb4: $00
	nop                                              ; $5fb5: $00
	nop                                              ; $5fb6: $00
	nop                                              ; $5fb7: $00
	nop                                              ; $5fb8: $00
	nop                                              ; $5fb9: $00
	nop                                              ; $5fba: $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	nop                                              ; $5fbd: $00
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	jp   z, $0dca                                    ; $5fc0: $ca $ca $0d

	dec  c                                           ; $5fc3: $0d

Call_08c_5fc4:
	add  hl, bc                                      ; $5fc4: $09
	add  hl, bc                                      ; $5fc5: $09
	add  hl, bc                                      ; $5fc6: $09
	add  hl, bc                                      ; $5fc7: $09
	add  hl, bc                                      ; $5fc8: $09
	add  hl, bc                                      ; $5fc9: $09
	add  hl, bc                                      ; $5fca: $09
	add  hl, bc                                      ; $5fcb: $09
	nop                                              ; $5fcc: $00
	nop                                              ; $5fcd: $00
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	ldh  a, [$f0]                                    ; $5fd2: $f0 $f0
	db   $10                                         ; $5fd4: $10
	db   $10                                         ; $5fd5: $10
	ldh  a, [$f0]                                    ; $5fd6: $f0 $f0
	db   $10                                         ; $5fd8: $10
	db   $10                                         ; $5fd9: $10
	ldh  a, [$f0]                                    ; $5fda: $f0 $f0
	nop                                              ; $5fdc: $00
	nop                                              ; $5fdd: $00
	rst  $38                                         ; $5fde: $ff
	rst  $38                                         ; $5fdf: $ff
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
	rst  $38                                         ; $5fee: $ff
	rst  $38                                         ; $5fef: $ff
	ld   bc, $0101                                   ; $5ff0: $01 $01 $01
	ld   bc, $0101                                   ; $5ff3: $01 $01 $01
	ld   bc, $0101                                   ; $5ff6: $01 $01 $01
	ld   bc, $0101                                   ; $5ff9: $01 $01 $01
	ld   bc, $ff01                                   ; $5ffc: $01 $01 $ff
	rst  $38                                         ; $5fff: $ff
	rst  $38                                         ; $6000: $ff
	rst  $38                                         ; $6001: $ff
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
	rst  $38                                         ; $6010: $ff
	rst  $38                                         ; $6011: $ff
	nop                                              ; $6012: $00
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	nop                                              ; $6016: $00
	nop                                              ; $6017: $00
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	nop                                              ; $601a: $00
	nop                                              ; $601b: $00
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	nop                                              ; $601e: $00
	nop                                              ; $601f: $00
	rst  $38                                         ; $6020: $ff
	rst  $38                                         ; $6021: $ff
	nop                                              ; $6022: $00
	nop                                              ; $6023: $00
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	inc  b                                           ; $6026: $04
	inc  b                                           ; $6027: $04
	ld   a, [bc]                                     ; $6028: $0a
	ld   a, [bc]                                     ; $6029: $0a
	ld   de, $1b11                                   ; $602a: $11 $11 $1b
	dec  de                                          ; $602d: $1b
	ld   a, [bc]                                     ; $602e: $0a
	ld   a, [bc]                                     ; $602f: $0a
	rst  $38                                         ; $6030: $ff
	rst  $38                                         ; $6031: $ff
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00
	nop                                              ; $6034: $00
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	nop                                              ; $603f: $00
	rst  $38                                         ; $6040: $ff
	rst  $38                                         ; $6041: $ff
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	nop                                              ; $6045: $00
	dec  c                                           ; $6046: $0d
	dec  c                                           ; $6047: $0d
	dec  bc                                          ; $6048: $0b
	dec  bc                                          ; $6049: $0b
	dec  bc                                          ; $604a: $0b
	dec  bc                                          ; $604b: $0b
	dec  c                                           ; $604c: $0d
	dec  c                                           ; $604d: $0d
	dec  bc                                          ; $604e: $0b
	dec  bc                                          ; $604f: $0b
	rst  $38                                         ; $6050: $ff
	rst  $38                                         ; $6051: $ff
	nop                                              ; $6052: $00
	nop                                              ; $6053: $00
	nop                                              ; $6054: $00
	nop                                              ; $6055: $00
	jr   nz, jr_08c_6078                             ; $6056: $20 $20

	ld   hl, sp-$08                                  ; $6058: $f8 $f8
	jr   nz, @+$22                                   ; $605a: $20 $20

	ld   h, b                                        ; $605c: $60
	ld   h, b                                        ; $605d: $60
	cp   b                                           ; $605e: $b8
	cp   b                                           ; $605f: $b8
	rst  $38                                         ; $6060: $ff
	rst  $38                                         ; $6061: $ff
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	nop                                              ; $606a: $00
	nop                                              ; $606b: $00
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	rst  $38                                         ; $6070: $ff
	rst  $38                                         ; $6071: $ff
	ld   bc, $0101                                   ; $6072: $01 $01 $01
	ld   bc, $0101                                   ; $6075: $01 $01 $01

jr_08c_6078:
	ld   bc, $0101                                   ; $6078: $01 $01 $01
	ld   bc, $0101                                   ; $607b: $01 $01 $01
	ld   bc, $0001                                   ; $607e: $01 $01 $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00
	nop                                              ; $6083: $00
	nop                                              ; $6084: $00
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	nop                                              ; $6087: $00
	nop                                              ; $6088: $00
	nop                                              ; $6089: $00
	nop                                              ; $608a: $00
	nop                                              ; $608b: $00
	nop                                              ; $608c: $00
	nop                                              ; $608d: $00
	rst  $38                                         ; $608e: $ff
	rst  $38                                         ; $608f: $ff
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	nop                                              ; $6094: $00
	nop                                              ; $6095: $00
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	nop                                              ; $609d: $00
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	ld   a, [bc]                                     ; $60a0: $0a
	ld   a, [bc]                                     ; $60a1: $0a
	ld   a, [bc]                                     ; $60a2: $0a
	ld   a, [bc]                                     ; $60a3: $0a
	ld   a, [bc]                                     ; $60a4: $0a
	ld   a, [bc]                                     ; $60a5: $0a
	ld   a, [bc]                                     ; $60a6: $0a
	ld   a, [bc]                                     ; $60a7: $0a
	ld   a, [bc]                                     ; $60a8: $0a
	ld   a, [bc]                                     ; $60a9: $0a
	ld   c, $0e                                      ; $60aa: $0e $0e
	nop                                              ; $60ac: $00
	nop                                              ; $60ad: $00
	rst  $38                                         ; $60ae: $ff
	rst  $38                                         ; $60af: $ff
	ccf                                              ; $60b0: $3f
	ccf                                              ; $60b1: $3f
	nop                                              ; $60b2: $00
	nop                                              ; $60b3: $00
	nop                                              ; $60b4: $00
	nop                                              ; $60b5: $00
	nop                                              ; $60b6: $00
	nop                                              ; $60b7: $00
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	nop                                              ; $60ba: $00
	nop                                              ; $60bb: $00
	nop                                              ; $60bc: $00
	nop                                              ; $60bd: $00
	rst  $38                                         ; $60be: $ff
	rst  $38                                         ; $60bf: $ff
	jp   z, $0dca                                    ; $60c0: $ca $ca $0d

	dec  c                                           ; $60c3: $0d
	add  hl, bc                                      ; $60c4: $09
	add  hl, bc                                      ; $60c5: $09
	add  hl, bc                                      ; $60c6: $09
	add  hl, bc                                      ; $60c7: $09
	add  hl, bc                                      ; $60c8: $09
	add  hl, bc                                      ; $60c9: $09
	add  hl, bc                                      ; $60ca: $09
	add  hl, bc                                      ; $60cb: $09
	nop                                              ; $60cc: $00
	nop                                              ; $60cd: $00
	rst  $38                                         ; $60ce: $ff
	rst  $38                                         ; $60cf: $ff
	nop                                              ; $60d0: $00
	nop                                              ; $60d1: $00
	ldh  a, [$f0]                                    ; $60d2: $f0 $f0
	db   $10                                         ; $60d4: $10
	db   $10                                         ; $60d5: $10
	ldh  a, [$f0]                                    ; $60d6: $f0 $f0
	db   $10                                         ; $60d8: $10
	db   $10                                         ; $60d9: $10
	ldh  a, [$f0]                                    ; $60da: $f0 $f0
	nop                                              ; $60dc: $00
	nop                                              ; $60dd: $00
	rst  $38                                         ; $60de: $ff
	rst  $38                                         ; $60df: $ff
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	nop                                              ; $60e6: $00
	nop                                              ; $60e7: $00
	nop                                              ; $60e8: $00
	nop                                              ; $60e9: $00
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	nop                                              ; $60ed: $00
	rst  $38                                         ; $60ee: $ff
	rst  $38                                         ; $60ef: $ff
	ld   bc, $0101                                   ; $60f0: $01 $01 $01
	ld   bc, $0101                                   ; $60f3: $01 $01 $01
	ld   bc, $0101                                   ; $60f6: $01 $01 $01
	ld   bc, $0101                                   ; $60f9: $01 $01 $01
	ld   bc, $ff01                                   ; $60fc: $01 $01 $ff
	rst  $38                                         ; $60ff: $ff
	rst  $38                                         ; $6100: $ff
	rst  $38                                         ; $6101: $ff
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	nop                                              ; $6105: $00
	ld   [bc], a                                     ; $6106: $02
	ld   [bc], a                                     ; $6107: $02
	rrca                                             ; $6108: $0f
	rrca                                             ; $6109: $0f
	ld   [bc], a                                     ; $610a: $02
	ld   [bc], a                                     ; $610b: $02
	inc  bc                                          ; $610c: $03
	inc  bc                                          ; $610d: $03
	nop                                              ; $610e: $00
	nop                                              ; $610f: $00
	rst  $38                                         ; $6110: $ff
	rst  $38                                         ; $6111: $ff
	nop                                              ; $6112: $00
	nop                                              ; $6113: $00
	nop                                              ; $6114: $00
	nop                                              ; $6115: $00
	ld   b, d                                        ; $6116: $42
	ld   b, d                                        ; $6117: $42
	di                                               ; $6118: $f3
	di                                               ; $6119: $f3
	ld   b, d                                        ; $611a: $42
	ld   b, d                                        ; $611b: $42
	push hl                                          ; $611c: $e5
	push hl                                          ; $611d: $e5
	add  b                                           ; $611e: $80
	add  b                                           ; $611f: $80
	rst  $38                                         ; $6120: $ff
	rst  $38                                         ; $6121: $ff
	nop                                              ; $6122: $00
	nop                                              ; $6123: $00
	nop                                              ; $6124: $00
	nop                                              ; $6125: $00
	nop                                              ; $6126: $00
	nop                                              ; $6127: $00
	ldh  a, [c]                                      ; $6128: $f2
	ldh  a, [c]                                      ; $6129: $f2
	ld   bc, $e001                                   ; $612a: $01 $01 $e0
	ldh  [rSC], a                                    ; $612d: $e0 $02
	ld   [bc], a                                     ; $612f: $02
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	nop                                              ; $6132: $00
	nop                                              ; $6133: $00
	nop                                              ; $6134: $00
	nop                                              ; $6135: $00
	db   $10                                         ; $6136: $10
	db   $10                                         ; $6137: $10
	cp   $fe                                         ; $6138: $fe $fe
	add  d                                           ; $613a: $82
	add  d                                           ; $613b: $82
	ld   a, h                                        ; $613c: $7c
	ld   a, h                                        ; $613d: $7c
	db   $10                                         ; $613e: $10
	db   $10                                         ; $613f: $10
	rst  $38                                         ; $6140: $ff
	rst  $38                                         ; $6141: $ff
	nop                                              ; $6142: $00
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	nop                                              ; $6145: $00
	ld   b, h                                        ; $6146: $44
	ld   b, h                                        ; $6147: $44
	ld   [hl], a                                     ; $6148: $77
	ld   [hl], a                                     ; $6149: $77
	xor  d                                           ; $614a: $aa
	xor  d                                           ; $614b: $aa
	ld   a, a                                        ; $614c: $7f
	ld   a, a                                        ; $614d: $7f
	ld   b, c                                        ; $614e: $41
	ld   b, c                                        ; $614f: $41
	rst  $38                                         ; $6150: $ff
	rst  $38                                         ; $6151: $ff
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	nop                                              ; $6155: $00
	ld   [de], a                                     ; $6156: $12
	ld   [de], a                                     ; $6157: $12
	inc  d                                           ; $6158: $14
	inc  d                                           ; $6159: $14
	ld   a, d                                        ; $615a: $7a
	ld   a, d                                        ; $615b: $7a
	inc  d                                           ; $615c: $14
	inc  d                                           ; $615d: $14
	ld   [hl], $36                                   ; $615e: $36 $36
	rst  $38                                         ; $6160: $ff
	rst  $38                                         ; $6161: $ff
	nop                                              ; $6162: $00
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	nop                                              ; $6165: $00
	ld   b, c                                        ; $6166: $41
	ld   b, c                                        ; $6167: $41
	sbc  a                                           ; $6168: $9f
	sbc  a                                           ; $6169: $9f
	ld   d, b                                        ; $616a: $50
	ld   d, b                                        ; $616b: $50
	add  a                                           ; $616c: $87
	add  a                                           ; $616d: $87
	ldh  [c], a                                      ; $616e: $e2
	ldh  [c], a                                      ; $616f: $e2
	rst  $38                                         ; $6170: $ff
	rst  $38                                         ; $6171: $ff
	ld   bc, $0101                                   ; $6172: $01 $01 $01
	ld   bc, $0101                                   ; $6175: $01 $01 $01
	pop  af                                          ; $6178: $f1
	pop  af                                          ; $6179: $f1
	ld   de, $c111                                   ; $617a: $11 $11 $c1
	pop  bc                                          ; $617d: $c1
	ld   hl, $0f21                                   ; $617e: $21 $21 $0f
	rrca                                             ; $6181: $0f
	ld   [bc], a                                     ; $6182: $02
	ld   [bc], a                                     ; $6183: $02
	dec  c                                           ; $6184: $0d
	dec  c                                           ; $6185: $0d
	nop                                              ; $6186: $00
	nop                                              ; $6187: $00
	ld   a, [bc]                                     ; $6188: $0a
	ld   a, [bc]                                     ; $6189: $0a
	ld   a, [bc]                                     ; $618a: $0a
	ld   a, [bc]                                     ; $618b: $0a
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	rst  $38                                         ; $618e: $ff
	rst  $38                                         ; $618f: $ff
	rst  $30                                         ; $6190: $f7
	rst  $30                                         ; $6191: $f7
	ld   h, b                                        ; $6192: $60
	ld   h, b                                        ; $6193: $60
	jp   nc, $02d2                                   ; $6194: $d2 $d2 $02

	ld   [bc], a                                     ; $6197: $02
	ld   d, c                                        ; $6198: $51
	ld   d, c                                        ; $6199: $51
	ld   d, [hl]                                     ; $619a: $56
	ld   d, [hl]                                     ; $619b: $56
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	rst  $38                                         ; $619e: $ff
	rst  $38                                         ; $619f: $ff
	ld   sp, hl                                      ; $61a0: $f9
	ld   sp, hl                                      ; $61a1: $f9
	ld   d, b                                        ; $61a2: $50
	ld   d, b                                        ; $61a3: $50
	ld   d, c                                        ; $61a4: $51
	ld   d, c                                        ; $61a5: $51
	sub  c                                           ; $61a6: $91
	sub  c                                           ; $61a7: $91
	sub  c                                           ; $61a8: $91
	sub  c                                           ; $61a9: $91
	ld   e, d                                        ; $61aa: $5a
	ld   e, d                                        ; $61ab: $5a
	nop                                              ; $61ac: $00
	nop                                              ; $61ad: $00
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	ld   a, h                                        ; $61b0: $7c
	ld   a, h                                        ; $61b1: $7c
	ld   d, h                                        ; $61b2: $54
	ld   d, h                                        ; $61b3: $54
	ld   a, h                                        ; $61b4: $7c
	ld   a, h                                        ; $61b5: $7c
	ld   d, h                                        ; $61b6: $54
	ld   d, h                                        ; $61b7: $54
	jr   c, jr_08c_61f2                              ; $61b8: $38 $38

	add  $c6                                         ; $61ba: $c6 $c6
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	rst  $38                                         ; $61be: $ff
	rst  $38                                         ; $61bf: $ff
	ld   a, a                                        ; $61c0: $7f
	ld   a, a                                        ; $61c1: $7f
	ld   b, c                                        ; $61c2: $41
	ld   b, c                                        ; $61c3: $41
	ld   a, a                                        ; $61c4: $7f
	ld   a, a                                        ; $61c5: $7f
	ld   [hl+], a                                    ; $61c6: $22
	ld   [hl+], a                                    ; $61c7: $22
	rst  $38                                         ; $61c8: $ff
	rst  $38                                         ; $61c9: $ff
	ld   b, d                                        ; $61ca: $42
	ld   b, d                                        ; $61cb: $42
	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00
	rst  $38                                         ; $61ce: $ff
	rst  $38                                         ; $61cf: $ff
	ld   sp, $5f31                                   ; $61d0: $31 $31 $5f
	ld   e, a                                        ; $61d3: $5f
	ld   d, l                                        ; $61d4: $55
	ld   d, l                                        ; $61d5: $55
	inc  d                                           ; $61d6: $14
	inc  d                                           ; $61d7: $14
	ld   d, $16                                      ; $61d8: $16 $16
	dec  de                                          ; $61da: $1b
	dec  de                                          ; $61db: $1b
	nop                                              ; $61dc: $00
	nop                                              ; $61dd: $00
	rst  $38                                         ; $61de: $ff
	rst  $38                                         ; $61df: $ff
	ld   c, a                                        ; $61e0: $4f
	ld   c, a                                        ; $61e1: $4f
	pop  hl                                          ; $61e2: $e1
	pop  hl                                          ; $61e3: $e1
	ld   b, a                                        ; $61e4: $47
	ld   b, a                                        ; $61e5: $47
	add  c                                           ; $61e6: $81
	add  c                                           ; $61e7: $81
	and  c                                           ; $61e8: $a1
	and  c                                           ; $61e9: $a1
	ld   l, a                                        ; $61ea: $6f
	ld   l, a                                        ; $61eb: $6f
	nop                                              ; $61ec: $00
	nop                                              ; $61ed: $00
	rst  $38                                         ; $61ee: $ff
	rst  $38                                         ; $61ef: $ff
	pop  hl                                          ; $61f0: $e1
	pop  hl                                          ; $61f1: $e1

jr_08c_61f2:
	ld   hl, $c121                                   ; $61f2: $21 $21 $c1
	pop  bc                                          ; $61f5: $c1
	ld   bc, $0101                                   ; $61f6: $01 $01 $01
	ld   bc, $f1f1                                   ; $61f9: $01 $f1 $f1
	ld   bc, $ff01                                   ; $61fc: $01 $01 $ff
	rst  $38                                         ; $61ff: $ff
	rst  $38                                         ; $6200: $ff
	rst  $38                                         ; $6201: $ff
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	rst  $38                                         ; $6210: $ff
	rst  $38                                         ; $6211: $ff
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	nop                                              ; $6215: $00
	nop                                              ; $6216: $00
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	nop                                              ; $621a: $00
	nop                                              ; $621b: $00
	nop                                              ; $621c: $00
	nop                                              ; $621d: $00
	nop                                              ; $621e: $00
	nop                                              ; $621f: $00
	rst  $38                                         ; $6220: $ff
	rst  $38                                         ; $6221: $ff
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	ld   [de], a                                     ; $6226: $12
	ld   [de], a                                     ; $6227: $12
	ld   d, $16                                      ; $6228: $16 $16
	ld   l, d                                        ; $622a: $6a
	ld   l, d                                        ; $622b: $6a
	rlca                                             ; $622c: $07
	rlca                                             ; $622d: $07
	ld   a, [hl-]                                    ; $622e: $3a
	ld   a, [hl-]                                    ; $622f: $3a
	rst  $38                                         ; $6230: $ff
	rst  $38                                         ; $6231: $ff
	nop                                              ; $6232: $00
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	nop                                              ; $6235: $00
	ldh  [c], a                                      ; $6236: $e2
	ldh  [c], a                                      ; $6237: $e2
	and  h                                           ; $6238: $a4
	and  h                                           ; $6239: $a4
	xor  l                                           ; $623a: $ad
	xor  l                                           ; $623b: $ad
	and  d                                           ; $623c: $a2
	and  d                                           ; $623d: $a2
	dec  b                                           ; $623e: $05
	dec  b                                           ; $623f: $05
	rst  $38                                         ; $6240: $ff
	rst  $38                                         ; $6241: $ff
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00
	nop                                              ; $6244: $00
	nop                                              ; $6245: $00
	db   $10                                         ; $6246: $10
	db   $10                                         ; $6247: $10
	ld   a, l                                        ; $6248: $7d
	ld   a, l                                        ; $6249: $7d
	ld   de, $7c11                                   ; $624a: $11 $11 $7c
	ld   a, h                                        ; $624d: $7c
	ld   d, h                                        ; $624e: $54
	ld   d, h                                        ; $624f: $54
	rst  $38                                         ; $6250: $ff
	rst  $38                                         ; $6251: $ff
	nop                                              ; $6252: $00
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	nop                                              ; $6255: $00
	db   $10                                         ; $6256: $10
	db   $10                                         ; $6257: $10
	rst  $38                                         ; $6258: $ff
	rst  $38                                         ; $6259: $ff
	ld   bc, $7c01                                   ; $625a: $01 $01 $7c
	ld   a, h                                        ; $625d: $7c
	ld   [hl+], a                                    ; $625e: $22
	ld   [hl+], a                                    ; $625f: $22
	rst  $38                                         ; $6260: $ff
	rst  $38                                         ; $6261: $ff
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	nop                                              ; $626b: $00
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	rst  $38                                         ; $6270: $ff
	rst  $38                                         ; $6271: $ff
	ld   bc, $0101                                   ; $6272: $01 $01 $01
	ld   bc, $0101                                   ; $6275: $01 $01 $01
	ld   bc, $0101                                   ; $6278: $01 $01 $01
	ld   bc, $0101                                   ; $627b: $01 $01 $01
	ld   bc, $0001                                   ; $627e: $01 $01 $00
	nop                                              ; $6281: $00
	nop                                              ; $6282: $00
	nop                                              ; $6283: $00
	nop                                              ; $6284: $00
	nop                                              ; $6285: $00
	nop                                              ; $6286: $00
	nop                                              ; $6287: $00
	nop                                              ; $6288: $00
	nop                                              ; $6289: $00
	nop                                              ; $628a: $00
	nop                                              ; $628b: $00
	nop                                              ; $628c: $00
	nop                                              ; $628d: $00
	rst  $38                                         ; $628e: $ff
	rst  $38                                         ; $628f: $ff
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
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
	rst  $38                                         ; $629e: $ff
	rst  $38                                         ; $629f: $ff
	ld   [de], a                                     ; $62a0: $12
	ld   [de], a                                     ; $62a1: $12
	ccf                                              ; $62a2: $3f
	ccf                                              ; $62a3: $3f
	ld   [de], a                                     ; $62a4: $12
	ld   [de], a                                     ; $62a5: $12
	rla                                              ; $62a6: $17
	rla                                              ; $62a7: $17
	ld   a, [de]                                     ; $62a8: $1a
	ld   a, [de]                                     ; $62a9: $1a
	ld   h, e                                        ; $62aa: $63
	ld   h, e                                        ; $62ab: $63
	nop                                              ; $62ac: $00
	nop                                              ; $62ad: $00
	rst  $38                                         ; $62ae: $ff
	rst  $38                                         ; $62af: $ff
	rst  $28                                         ; $62b0: $ef
	rst  $28                                         ; $62b1: $ef
	ld   [hl+], a                                    ; $62b2: $22
	ld   [hl+], a                                    ; $62b3: $22
	xor  e                                           ; $62b4: $ab
	xor  e                                           ; $62b5: $ab
	ld   c, e                                        ; $62b6: $4b
	ld   c, e                                        ; $62b7: $4b
	ld   c, d                                        ; $62b8: $4a
	ld   c, d                                        ; $62b9: $4a
	and  d                                           ; $62ba: $a2
	and  d                                           ; $62bb: $a2
	nop                                              ; $62bc: $00
	nop                                              ; $62bd: $00
	rst  $38                                         ; $62be: $ff
	rst  $38                                         ; $62bf: $ff
	ld   a, h                                        ; $62c0: $7c
	ld   a, h                                        ; $62c1: $7c
	ld   d, h                                        ; $62c2: $54
	ld   d, h                                        ; $62c3: $54
	jr   c, @+$3a                                    ; $62c4: $38 $38

	ld   d, h                                        ; $62c6: $54
	ld   d, h                                        ; $62c7: $54
	ld   d, h                                        ; $62c8: $54
	ld   d, h                                        ; $62c9: $54
	db   $10                                         ; $62ca: $10
	stop                                             ; $62cb: $10 $00
	nop                                              ; $62cd: $00
	rst  $38                                         ; $62ce: $ff
	rst  $38                                         ; $62cf: $ff
	cp   $fe                                         ; $62d0: $fe $fe
	ld   [de], a                                     ; $62d2: $12
	ld   [de], a                                     ; $62d3: $12
	ld   a, h                                        ; $62d4: $7c
	ld   a, h                                        ; $62d5: $7c
	db   $10                                         ; $62d6: $10
	db   $10                                         ; $62d7: $10
	db   $10                                         ; $62d8: $10
	db   $10                                         ; $62d9: $10
	rst  $38                                         ; $62da: $ff
	rst  $38                                         ; $62db: $ff
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	rst  $38                                         ; $62de: $ff
	rst  $38                                         ; $62df: $ff
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	nop                                              ; $62e2: $00
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	nop                                              ; $62e5: $00
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	nop                                              ; $62e8: $00
	nop                                              ; $62e9: $00
	nop                                              ; $62ea: $00
	nop                                              ; $62eb: $00
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	ld   bc, $0101                                   ; $62f0: $01 $01 $01
	ld   bc, $0101                                   ; $62f3: $01 $01 $01
	ld   bc, $0101                                   ; $62f6: $01 $01 $01
	ld   bc, $0101                                   ; $62f9: $01 $01 $01
	ld   bc, $ff01                                   ; $62fc: $01 $01 $ff
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	rst  $38                                         ; $6301: $ff
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
	nop                                              ; $6307: $00
	nop                                              ; $6308: $00
	nop                                              ; $6309: $00
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	nop                                              ; $630e: $00
	nop                                              ; $630f: $00
	rst  $38                                         ; $6310: $ff
	rst  $38                                         ; $6311: $ff
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	nop                                              ; $631a: $00
	nop                                              ; $631b: $00
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	nop                                              ; $6322: $00
	nop                                              ; $6323: $00
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	nop                                              ; $6327: $00
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	ld   bc, $0601                                   ; $632a: $01 $01 $06
	ld   b, $00                                      ; $632d: $06 $00
	nop                                              ; $632f: $00
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	nop                                              ; $6332: $00
	nop                                              ; $6333: $00
	nop                                              ; $6334: $00
	nop                                              ; $6335: $00
	jr   nz, jr_08c_6358                             ; $6336: $20 $20

	ld   d, b                                        ; $6338: $50
	ld   d, b                                        ; $6339: $50
	db   $fc                                         ; $633a: $fc
	db   $fc                                         ; $633b: $fc
	adc  e                                           ; $633c: $8b
	adc  e                                           ; $633d: $8b
	ld   hl, sp-$08                                  ; $633e: $f8 $f8
	rst  $38                                         ; $6340: $ff
	rst  $38                                         ; $6341: $ff
	nop                                              ; $6342: $00
	nop                                              ; $6343: $00
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	ld   [bc], a                                     ; $6346: $02
	ld   [bc], a                                     ; $6347: $02
	ccf                                              ; $6348: $3f
	ccf                                              ; $6349: $3f
	ld   [hl+], a                                    ; $634a: $22
	ld   [hl+], a                                    ; $634b: $22
	ccf                                              ; $634c: $3f
	ccf                                              ; $634d: $3f
	ld   [hl+], a                                    ; $634e: $22
	ld   [hl+], a                                    ; $634f: $22
	rst  $38                                         ; $6350: $ff
	rst  $38                                         ; $6351: $ff
	nop                                              ; $6352: $00
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	nop                                              ; $6357: $00

jr_08c_6358:
	ret  nz                                          ; $6358: $c0

	ret  nz                                          ; $6359: $c0

	nop                                              ; $635a: $00
	nop                                              ; $635b: $00
	ret  nz                                          ; $635c: $c0

	ret  nz                                          ; $635d: $c0

	nop                                              ; $635e: $00
	nop                                              ; $635f: $00
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	nop                                              ; $6362: $00
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	nop                                              ; $6365: $00
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	rst  $38                                         ; $6370: $ff
	rst  $38                                         ; $6371: $ff
	ld   bc, $0101                                   ; $6372: $01 $01 $01
	ld   bc, $0101                                   ; $6375: $01 $01 $01
	ld   bc, $0101                                   ; $6378: $01 $01 $01
	ld   bc, $0101                                   ; $637b: $01 $01 $01
	ld   bc, $0001                                   ; $637e: $01 $01 $00
	nop                                              ; $6381: $00
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	nop                                              ; $6384: $00
	nop                                              ; $6385: $00
	nop                                              ; $6386: $00
	nop                                              ; $6387: $00
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	nop                                              ; $638a: $00
	nop                                              ; $638b: $00
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	rst  $38                                         ; $638e: $ff
	rst  $38                                         ; $638f: $ff
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
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
	rst  $38                                         ; $639e: $ff
	rst  $38                                         ; $639f: $ff
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	nop                                              ; $63a2: $00
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	nop                                              ; $63a5: $00
	ld   bc, $0601                                   ; $63a6: $01 $01 $06
	ld   b, $00                                      ; $63a9: $06 $00
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	rst  $38                                         ; $63ae: $ff
	rst  $38                                         ; $63af: $ff
	adc  b                                           ; $63b0: $88
	adc  b                                           ; $63b1: $88
	ld   hl, sp-$08                                  ; $63b2: $f8 $f8
	add  b                                           ; $63b4: $80
	add  b                                           ; $63b5: $80
	db   $fc                                         ; $63b6: $fc
	db   $fc                                         ; $63b7: $fc
	add  h                                           ; $63b8: $84
	add  h                                           ; $63b9: $84
	db   $fc                                         ; $63ba: $fc
	db   $fc                                         ; $63bb: $fc
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	rst  $38                                         ; $63be: $ff
	rst  $38                                         ; $63bf: $ff
	cpl                                              ; $63c0: $2f
	cpl                                              ; $63c1: $2f
	ld   a, [hl+]                                    ; $63c2: $2a
	ld   a, [hl+]                                    ; $63c3: $2a
	cpl                                              ; $63c4: $2f
	cpl                                              ; $63c5: $2f
	ld   [hl+], a                                    ; $63c6: $22
	ld   [hl+], a                                    ; $63c7: $22
	ccf                                              ; $63c8: $3f
	ccf                                              ; $63c9: $3f
	ld   b, d                                        ; $63ca: $42
	ld   b, d                                        ; $63cb: $42
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	rst  $38                                         ; $63ce: $ff
	rst  $38                                         ; $63cf: $ff
	add  b                                           ; $63d0: $80
	add  b                                           ; $63d1: $80
	add  b                                           ; $63d2: $80
	add  b                                           ; $63d3: $80
	add  b                                           ; $63d4: $80
	add  b                                           ; $63d5: $80
	nop                                              ; $63d6: $00
	nop                                              ; $63d7: $00
	ret  nz                                          ; $63d8: $c0

	ret  nz                                          ; $63d9: $c0

	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	rst  $38                                         ; $63de: $ff
	rst  $38                                         ; $63df: $ff
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	nop                                              ; $63e6: $00
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	nop                                              ; $63ed: $00
	rst  $38                                         ; $63ee: $ff
	rst  $38                                         ; $63ef: $ff
	ld   bc, $0101                                   ; $63f0: $01 $01 $01
	ld   bc, $0101                                   ; $63f3: $01 $01 $01
	ld   bc, $0101                                   ; $63f6: $01 $01 $01
	ld   bc, $0101                                   ; $63f9: $01 $01 $01
	ld   bc, $ff01                                   ; $63fc: $01 $01 $ff
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	rst  $38                                         ; $6401: $ff
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	nop                                              ; $6407: $00
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00
	ld   bc, $ff01                                   ; $640e: $01 $01 $ff
	rst  $38                                         ; $6411: $ff
	nop                                              ; $6412: $00
	nop                                              ; $6413: $00
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	ld   b, h                                        ; $6416: $44
	ld   b, h                                        ; $6417: $44
	ld   b, h                                        ; $6418: $44
	ld   b, h                                        ; $6419: $44
	ld   b, a                                        ; $641a: $47
	ld   b, a                                        ; $641b: $47
	jp   z, Jump_08c_52ca                            ; $641c: $ca $ca $52

	ld   d, d                                        ; $641f: $52
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	ld   a, [hl+]                                    ; $6426: $2a
	ld   a, [hl+]                                    ; $6427: $2a
	inc  d                                           ; $6428: $14
	inc  d                                           ; $6429: $14
	cp   [hl]                                        ; $642a: $be
	cp   [hl]                                        ; $642b: $be
	dec  hl                                          ; $642c: $2b
	dec  hl                                          ; $642d: $2b
	ld   a, $3e                                      ; $642e: $3e $3e
	rst  $38                                         ; $6430: $ff
	rst  $38                                         ; $6431: $ff
	nop                                              ; $6432: $00
	nop                                              ; $6433: $00
	nop                                              ; $6434: $00
	nop                                              ; $6435: $00
	and  d                                           ; $6436: $a2
	and  d                                           ; $6437: $a2
	and  d                                           ; $6438: $a2
	and  d                                           ; $6439: $a2
	adc  a                                           ; $643a: $8f
	adc  a                                           ; $643b: $8f
	ldh  [c], a                                      ; $643c: $e2
	ldh  [c], a                                      ; $643d: $e2
	add  d                                           ; $643e: $82
	add  d                                           ; $643f: $82
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	nop                                              ; $6445: $00
	ld   b, b                                        ; $6446: $40
	ld   b, b                                        ; $6447: $40
	ld   a, b                                        ; $6448: $78
	ld   a, b                                        ; $6449: $78
	ld   b, b                                        ; $644a: $40
	ld   b, b                                        ; $644b: $40
	ld   b, b                                        ; $644c: $40
	ld   b, b                                        ; $644d: $40
	dec  sp                                          ; $644e: $3b
	dec  sp                                          ; $644f: $3b
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	nop                                              ; $6452: $00
	nop                                              ; $6453: $00
	nop                                              ; $6454: $00
	nop                                              ; $6455: $00
	jr   nz, jr_08c_6478                             ; $6456: $20 $20

	jr   nz, jr_08c_647a                             ; $6458: $20 $20

	ld   d, b                                        ; $645a: $50
	ld   d, b                                        ; $645b: $50
	xor  h                                           ; $645c: $ac
	xor  h                                           ; $645d: $ac
	inc  hl                                          ; $645e: $23
	inc  hl                                          ; $645f: $23
	rst  $38                                         ; $6460: $ff
	rst  $38                                         ; $6461: $ff
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	ld   [$ff08], sp                                 ; $6466: $08 $08 $ff
	rst  $38                                         ; $6469: $ff
	add  b                                           ; $646a: $80
	add  b                                           ; $646b: $80
	ld   a, $3e                                      ; $646c: $3e $3e
	ld   de, rAUD1LEN                                   ; $646e: $11 $11 $ff
	rst  $38                                         ; $6471: $ff
	ld   bc, $0101                                   ; $6472: $01 $01 $01
	ld   bc, $0101                                   ; $6475: $01 $01 $01

jr_08c_6478:
	add  c                                           ; $6478: $81
	add  c                                           ; $6479: $81

jr_08c_647a:
	add  c                                           ; $647a: $81
	add  c                                           ; $647b: $81
	ld   bc, $0101                                   ; $647c: $01 $01 $01
	ld   bc, $0000                                   ; $647f: $01 $00 $00
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
	rst  $38                                         ; $648e: $ff
	rst  $38                                         ; $648f: $ff
	ld   b, e                                        ; $6490: $43
	ld   b, e                                        ; $6491: $43
	ld   b, d                                        ; $6492: $42
	ld   b, d                                        ; $6493: $42
	ld   b, e                                        ; $6494: $43
	ld   b, e                                        ; $6495: $43
	ld   b, d                                        ; $6496: $42
	ld   b, d                                        ; $6497: $42
	ld   b, d                                        ; $6498: $42
	ld   b, d                                        ; $6499: $42
	ld   b, d                                        ; $649a: $42
	ld   b, d                                        ; $649b: $42
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	rst  $38                                         ; $649e: $ff
	rst  $38                                         ; $649f: $ff
	xor  d                                           ; $64a0: $aa
	xor  d                                           ; $64a1: $aa
	ld   a, $3e                                      ; $64a2: $3e $3e
	adc  b                                           ; $64a4: $88
	adc  b                                           ; $64a5: $88
	ld   a, $3e                                      ; $64a6: $3e $3e
	ld   [$0908], sp                                 ; $64a8: $08 $08 $09
	add  hl, bc                                      ; $64ab: $09
	nop                                              ; $64ac: $00
	nop                                              ; $64ad: $00
	rst  $38                                         ; $64ae: $ff
	rst  $38                                         ; $64af: $ff
	and  d                                           ; $64b0: $a2
	and  d                                           ; $64b1: $a2
	and  e                                           ; $64b2: $a3
	and  e                                           ; $64b3: $a3
	xor  [hl]                                        ; $64b4: $ae
	xor  [hl]                                        ; $64b5: $ae
	ld   b, d                                        ; $64b6: $42
	ld   b, d                                        ; $64b7: $42
	ld   b, d                                        ; $64b8: $42
	ld   b, d                                        ; $64b9: $42
	and  [hl]                                        ; $64ba: $a6
	and  [hl]                                        ; $64bb: $a6
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	rst  $38                                         ; $64be: $ff
	rst  $38                                         ; $64bf: $ff
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	ld   a, b                                        ; $64c2: $78
	ld   a, b                                        ; $64c3: $78
	ld   c, b                                        ; $64c4: $48
	ld   c, b                                        ; $64c5: $48
	ld   a, b                                        ; $64c6: $78
	ld   a, b                                        ; $64c7: $78
	ld   c, b                                        ; $64c8: $48
	ld   c, b                                        ; $64c9: $48
	ld   a, b                                        ; $64ca: $78
	ld   a, b                                        ; $64cb: $78
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	rst  $38                                         ; $64ce: $ff
	rst  $38                                         ; $64cf: $ff
	db   $fc                                         ; $64d0: $fc
	db   $fc                                         ; $64d1: $fc
	inc  b                                           ; $64d2: $04
	inc  b                                           ; $64d3: $04
	ld   [$7008], sp                                 ; $64d4: $08 $08 $70
	ld   [hl], b                                     ; $64d7: $70
	db   $10                                         ; $64d8: $10
	db   $10                                         ; $64d9: $10
	ld   [$0008], sp                                 ; $64da: $08 $08 $00
	nop                                              ; $64dd: $00
	rst  $38                                         ; $64de: $ff
	rst  $38                                         ; $64df: $ff
	ld   a, a                                        ; $64e0: $7f
	ld   a, a                                        ; $64e1: $7f
	add  hl, bc                                      ; $64e2: $09
	add  hl, bc                                      ; $64e3: $09
	ld   a, $3e                                      ; $64e4: $3e $3e
	ld   [$0808], sp                                 ; $64e6: $08 $08 $08
	ld   [$7f7f], sp                                 ; $64e9: $08 $7f $7f
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	rst  $38                                         ; $64ee: $ff
	rst  $38                                         ; $64ef: $ff
	ld   bc, $0101                                   ; $64f0: $01 $01 $01
	ld   bc, $0101                                   ; $64f3: $01 $01 $01
	ld   bc, $0101                                   ; $64f6: $01 $01 $01
	ld   bc, $8181                                   ; $64f9: $01 $81 $81

Call_08c_64fc:
	ld   bc, $ff01                                   ; $64fc: $01 $01 $ff
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	rst  $38                                         ; $6501: $ff
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
	ld   bc, $ff01                                   ; $650e: $01 $01 $ff
	rst  $38                                         ; $6511: $ff
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	ld   b, h                                        ; $6516: $44
	ld   b, h                                        ; $6517: $44
	ld   b, h                                        ; $6518: $44
	ld   b, h                                        ; $6519: $44
	ld   b, a                                        ; $651a: $47
	ld   b, a                                        ; $651b: $47
	jp   z, Jump_08c_52ca                            ; $651c: $ca $ca $52

	ld   d, d                                        ; $651f: $52
	rst  $38                                         ; $6520: $ff
	rst  $38                                         ; $6521: $ff
	nop                                              ; $6522: $00
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	nop                                              ; $6525: $00
	ld   a, [hl+]                                    ; $6526: $2a
	ld   a, [hl+]                                    ; $6527: $2a
	inc  d                                           ; $6528: $14
	inc  d                                           ; $6529: $14
	cp   [hl]                                        ; $652a: $be
	cp   [hl]                                        ; $652b: $be
	dec  hl                                          ; $652c: $2b
	dec  hl                                          ; $652d: $2b
	ld   a, $3e                                      ; $652e: $3e $3e
	rst  $38                                         ; $6530: $ff
	rst  $38                                         ; $6531: $ff
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	and  d                                           ; $6536: $a2
	and  d                                           ; $6537: $a2
	and  d                                           ; $6538: $a2
	and  d                                           ; $6539: $a2
	adc  a                                           ; $653a: $8f
	adc  a                                           ; $653b: $8f
	ldh  [c], a                                      ; $653c: $e2
	ldh  [c], a                                      ; $653d: $e2
	add  d                                           ; $653e: $82
	add  d                                           ; $653f: $82
	rst  $38                                         ; $6540: $ff
	rst  $38                                         ; $6541: $ff
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	ld   b, b                                        ; $6546: $40
	ld   b, b                                        ; $6547: $40
	ld   a, b                                        ; $6548: $78
	ld   a, b                                        ; $6549: $78
	ld   b, b                                        ; $654a: $40
	ld   b, b                                        ; $654b: $40
	ld   b, b                                        ; $654c: $40
	ld   b, b                                        ; $654d: $40
	dec  sp                                          ; $654e: $3b
	dec  sp                                          ; $654f: $3b
	rst  $38                                         ; $6550: $ff
	rst  $38                                         ; $6551: $ff
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	jr   nz, jr_08c_6578                             ; $6556: $20 $20

	jr   nz, jr_08c_657a                             ; $6558: $20 $20

	ld   d, b                                        ; $655a: $50
	ld   d, b                                        ; $655b: $50
	xor  h                                           ; $655c: $ac
	xor  h                                           ; $655d: $ac
	inc  hl                                          ; $655e: $23
	inc  hl                                          ; $655f: $23
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	ld   [$ff08], sp                                 ; $6566: $08 $08 $ff
	rst  $38                                         ; $6569: $ff
	add  b                                           ; $656a: $80
	add  b                                           ; $656b: $80
	ld   a, $3e                                      ; $656c: $3e $3e
	ld   de, rAUD1LEN                                   ; $656e: $11 $11 $ff
	rst  $38                                         ; $6571: $ff
	ld   bc, $0101                                   ; $6572: $01 $01 $01
	ld   bc, $0101                                   ; $6575: $01 $01 $01

jr_08c_6578:
	add  c                                           ; $6578: $81
	add  c                                           ; $6579: $81

jr_08c_657a:
	add  c                                           ; $657a: $81
	add  c                                           ; $657b: $81
	ld   bc, $0101                                   ; $657c: $01 $01 $01
	ld   bc, $0000                                   ; $657f: $01 $00 $00
	nop                                              ; $6582: $00
	nop                                              ; $6583: $00
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	nop                                              ; $658c: $00
	nop                                              ; $658d: $00
	rst  $38                                         ; $658e: $ff
	rst  $38                                         ; $658f: $ff
	ld   b, e                                        ; $6590: $43
	ld   b, e                                        ; $6591: $43
	ld   b, d                                        ; $6592: $42
	ld   b, d                                        ; $6593: $42
	ld   b, e                                        ; $6594: $43
	ld   b, e                                        ; $6595: $43
	ld   b, d                                        ; $6596: $42
	ld   b, d                                        ; $6597: $42
	ld   b, d                                        ; $6598: $42
	ld   b, d                                        ; $6599: $42
	ld   b, d                                        ; $659a: $42
	ld   b, d                                        ; $659b: $42
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	xor  d                                           ; $65a0: $aa
	xor  d                                           ; $65a1: $aa
	ld   a, $3e                                      ; $65a2: $3e $3e
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	ld   a, $3e                                      ; $65a6: $3e $3e
	ld   [$0908], sp                                 ; $65a8: $08 $08 $09
	add  hl, bc                                      ; $65ab: $09
	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	and  d                                           ; $65b0: $a2
	and  d                                           ; $65b1: $a2
	and  e                                           ; $65b2: $a3
	and  e                                           ; $65b3: $a3
	xor  [hl]                                        ; $65b4: $ae
	xor  [hl]                                        ; $65b5: $ae
	ld   b, d                                        ; $65b6: $42
	ld   b, d                                        ; $65b7: $42
	ld   b, d                                        ; $65b8: $42
	ld   b, d                                        ; $65b9: $42
	and  [hl]                                        ; $65ba: $a6
	and  [hl]                                        ; $65bb: $a6
	nop                                              ; $65bc: $00
	nop                                              ; $65bd: $00
	rst  $38                                         ; $65be: $ff
	rst  $38                                         ; $65bf: $ff
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	ld   a, b                                        ; $65c2: $78
	ld   a, b                                        ; $65c3: $78
	ld   c, b                                        ; $65c4: $48
	ld   c, b                                        ; $65c5: $48
	ld   a, b                                        ; $65c6: $78
	ld   a, b                                        ; $65c7: $78
	ld   c, b                                        ; $65c8: $48
	ld   c, b                                        ; $65c9: $48
	ld   a, b                                        ; $65ca: $78
	ld   a, b                                        ; $65cb: $78
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	rst  $38                                         ; $65ce: $ff
	rst  $38                                         ; $65cf: $ff
	db   $fc                                         ; $65d0: $fc
	db   $fc                                         ; $65d1: $fc
	inc  b                                           ; $65d2: $04
	inc  b                                           ; $65d3: $04
	ld   [$7008], sp                                 ; $65d4: $08 $08 $70
	ld   [hl], b                                     ; $65d7: $70
	db   $10                                         ; $65d8: $10
	db   $10                                         ; $65d9: $10
	ld   [$0008], sp                                 ; $65da: $08 $08 $00
	nop                                              ; $65dd: $00
	rst  $38                                         ; $65de: $ff
	rst  $38                                         ; $65df: $ff
	ld   a, a                                        ; $65e0: $7f
	ld   a, a                                        ; $65e1: $7f
	add  hl, bc                                      ; $65e2: $09
	add  hl, bc                                      ; $65e3: $09
	ld   a, $3e                                      ; $65e4: $3e $3e
	ld   [$0808], sp                                 ; $65e6: $08 $08 $08
	ld   [$7f7f], sp                                 ; $65e9: $08 $7f $7f
	nop                                              ; $65ec: $00
	nop                                              ; $65ed: $00
	rst  $38                                         ; $65ee: $ff
	rst  $38                                         ; $65ef: $ff
	ld   bc, $0101                                   ; $65f0: $01 $01 $01
	ld   bc, $0101                                   ; $65f3: $01 $01 $01
	ld   bc, $0101                                   ; $65f6: $01 $01 $01
	ld   bc, $8181                                   ; $65f9: $01 $81 $81
	ld   bc, $ff01                                   ; $65fc: $01 $01 $ff
	rst  $38                                         ; $65ff: $ff
	rst  $38                                         ; $6600: $ff
	rst  $38                                         ; $6601: $ff
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
	rst  $38                                         ; $6610: $ff
	rst  $38                                         ; $6611: $ff
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
	rst  $38                                         ; $6620: $ff
	rst  $38                                         ; $6621: $ff
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	inc  b                                           ; $6626: $04
	inc  b                                           ; $6627: $04
	inc  b                                           ; $6628: $04
	inc  b                                           ; $6629: $04
	inc  b                                           ; $662a: $04
	inc  b                                           ; $662b: $04
	ld   a, a                                        ; $662c: $7f
	ld   a, a                                        ; $662d: $7f
	ld   c, $0e                                      ; $662e: $0e $0e
	rst  $38                                         ; $6630: $ff
	rst  $38                                         ; $6631: $ff
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	db   $10                                         ; $6638: $10
	db   $10                                         ; $6639: $10
	ret  z                                           ; $663a: $c8

	ret  z                                           ; $663b: $c8

	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	inc  de                                          ; $663e: $13
	inc  de                                          ; $663f: $13
	rst  $38                                         ; $6640: $ff
	rst  $38                                         ; $6641: $ff
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	ret  nz                                          ; $6646: $c0

	ret  nz                                          ; $6647: $c0

	ld   [bc], a                                     ; $6648: $02
	ld   [bc], a                                     ; $6649: $02
	jp   nz, $47c2                                   ; $664a: $c2 $c2 $47

	ld   b, a                                        ; $664d: $47
	ld   [hl], d                                     ; $664e: $72
	ld   [hl], d                                     ; $664f: $72
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	nop                                              ; $6652: $00
	nop                                              ; $6653: $00
	nop                                              ; $6654: $00
	nop                                              ; $6655: $00
	ld   a, b                                        ; $6656: $78
	ld   a, b                                        ; $6657: $78
	ld   c, b                                        ; $6658: $48
	ld   c, b                                        ; $6659: $48
	ld   a, b                                        ; $665a: $78
	ld   a, b                                        ; $665b: $78
	ld   c, b                                        ; $665c: $48
	ld   c, b                                        ; $665d: $48
	db   $fc                                         ; $665e: $fc
	db   $fc                                         ; $665f: $fc
	rst  $38                                         ; $6660: $ff
	rst  $38                                         ; $6661: $ff
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
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	ld   bc, $0101                                   ; $6672: $01 $01 $01
	ld   bc, $0101                                   ; $6675: $01 $01 $01
	ld   bc, $0101                                   ; $6678: $01 $01 $01
	ld   bc, $0101                                   ; $667b: $01 $01 $01
	ld   bc, $0001                                   ; $667e: $01 $01 $00
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
	rst  $38                                         ; $668e: $ff
	rst  $38                                         ; $668f: $ff
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	rst  $38                                         ; $669e: $ff
	rst  $38                                         ; $669f: $ff
	dec  c                                           ; $66a0: $0d
	dec  c                                           ; $66a1: $0d
	dec  d                                           ; $66a2: $15
	dec  d                                           ; $66a3: $15
	inc  d                                           ; $66a4: $14
	inc  d                                           ; $66a5: $14
	ld   h, h                                        ; $66a6: $64
	ld   h, h                                        ; $66a7: $64
	inc  b                                           ; $66a8: $04
	inc  b                                           ; $66a9: $04
	inc  c                                           ; $66aa: $0c
	inc  c                                           ; $66ab: $0c
	nop                                              ; $66ac: $00
	nop                                              ; $66ad: $00
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	add  hl, bc                                      ; $66b0: $09
	add  hl, bc                                      ; $66b1: $09
	ld   bc, $8a01                                   ; $66b2: $01 $01 $8a
	adc  d                                           ; $66b5: $8a
	adc  b                                           ; $66b6: $88
	adc  b                                           ; $66b7: $88
	ld   c, c                                        ; $66b8: $49
	ld   c, c                                        ; $66b9: $49
	db   $10                                         ; $66ba: $10
	stop                                             ; $66bb: $10 $00
	nop                                              ; $66bd: $00
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	ld   h, d                                        ; $66c0: $62
	ld   h, d                                        ; $66c1: $62
	ld   h, d                                        ; $66c2: $62
	ld   h, d                                        ; $66c3: $62
	ld   d, e                                        ; $66c4: $53
	ld   d, e                                        ; $66c5: $53
	ld   d, h                                        ; $66c6: $54
	ld   d, h                                        ; $66c7: $54
	ld   b, b                                        ; $66c8: $40
	ld   b, b                                        ; $66c9: $40
	ret  nz                                          ; $66ca: $c0

	ret  nz                                          ; $66cb: $c0

	nop                                              ; $66cc: $00
	nop                                              ; $66cd: $00
	rst  $38                                         ; $66ce: $ff
	rst  $38                                         ; $66cf: $ff
	ld   b, b                                        ; $66d0: $40
	ld   b, b                                        ; $66d1: $40
	db   $fc                                         ; $66d2: $fc
	db   $fc                                         ; $66d3: $fc
	ld   d, h                                        ; $66d4: $54
	ld   d, h                                        ; $66d5: $54
	ld   d, h                                        ; $66d6: $54
	ld   d, h                                        ; $66d7: $54
	sub  h                                           ; $66d8: $94
	sub  h                                           ; $66d9: $94
	jr   z, jr_08c_6704                              ; $66da: $28 $28

	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
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
	rst  $38                                         ; $66ee: $ff
	rst  $38                                         ; $66ef: $ff
	ld   bc, $0101                                   ; $66f0: $01 $01 $01
	ld   bc, $0101                                   ; $66f3: $01 $01 $01
	ld   bc, $0101                                   ; $66f6: $01 $01 $01
	ld   bc, $0101                                   ; $66f9: $01 $01 $01
	ld   bc, $ff01                                   ; $66fc: $01 $01 $ff
	rst  $38                                         ; $66ff: $ff
	rst  $38                                         ; $6700: $ff
	rst  $38                                         ; $6701: $ff
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00

jr_08c_6704:
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
	rst  $38                                         ; $6710: $ff
	rst  $38                                         ; $6711: $ff
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
	rst  $38                                         ; $6720: $ff
	rst  $38                                         ; $6721: $ff
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	ld   a, a                                        ; $6726: $7f
	ld   a, a                                        ; $6727: $7f
	inc  b                                           ; $6728: $04
	inc  b                                           ; $6729: $04
	ccf                                              ; $672a: $3f
	ccf                                              ; $672b: $3f
	inc  h                                           ; $672c: $24
	inc  h                                           ; $672d: $24
	ccf                                              ; $672e: $3f
	ccf                                              ; $672f: $3f
	rst  $38                                         ; $6730: $ff
	rst  $38                                         ; $6731: $ff
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	pop  bc                                          ; $6736: $c1
	pop  bc                                          ; $6737: $c1
	ld   bc, $9f01                                   ; $6738: $01 $01 $9f
	sbc  a                                           ; $673b: $9f
	add  d                                           ; $673c: $82
	add  d                                           ; $673d: $82
	add  l                                           ; $673e: $85
	add  l                                           ; $673f: $85
	rst  $38                                         ; $6740: $ff
	rst  $38                                         ; $6741: $ff
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	rlca                                             ; $6748: $07
	rlca                                             ; $6749: $07
	db   $f4                                         ; $674a: $f4
	db   $f4                                         ; $674b: $f4
	ld   bc, $0001                                   ; $674c: $01 $01 $00
	nop                                              ; $674f: $00
	rst  $38                                         ; $6750: $ff
	rst  $38                                         ; $6751: $ff
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	ld   b, b                                        ; $6756: $40
	ld   b, b                                        ; $6757: $40
	db   $fc                                         ; $6758: $fc
	db   $fc                                         ; $6759: $fc
	inc  b                                           ; $675a: $04
	inc  b                                           ; $675b: $04
	ldh  a, [$f0]                                    ; $675c: $f0 $f0
	adc  b                                           ; $675e: $88
	adc  b                                           ; $675f: $88
	rst  $38                                         ; $6760: $ff
	rst  $38                                         ; $6761: $ff
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
	rst  $38                                         ; $6770: $ff
	rst  $38                                         ; $6771: $ff
	ld   bc, $0101                                   ; $6772: $01 $01 $01
	ld   bc, $0101                                   ; $6775: $01 $01 $01
	ld   bc, $0101                                   ; $6778: $01 $01 $01
	ld   bc, $0101                                   ; $677b: $01 $01 $01
	ld   bc, $0001                                   ; $677e: $01 $01 $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00

jr_08c_6786:
	nop                                              ; $6786: $00
	nop                                              ; $6787: $00
	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	nop                                              ; $678d: $00
	rst  $38                                         ; $678e: $ff
	rst  $38                                         ; $678f: $ff
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
	rst  $38                                         ; $679e: $ff
	rst  $38                                         ; $679f: $ff
	inc  h                                           ; $67a0: $24
	inc  h                                           ; $67a1: $24
	ccf                                              ; $67a2: $3f
	ccf                                              ; $67a3: $3f
	ld   [$2808], sp                                 ; $67a4: $08 $08 $28
	jr   z, jr_08c_67c5                              ; $67a7: $28 $1c

	inc  e                                           ; $67a9: $1c
	ld   h, e                                        ; $67aa: $63
	ld   h, e                                        ; $67ab: $63
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	rst  $38                                         ; $67ae: $ff
	rst  $38                                         ; $67af: $ff
	adc  c                                           ; $67b0: $89
	adc  c                                           ; $67b1: $89
	sbc  c                                           ; $67b2: $99
	sbc  c                                           ; $67b3: $99
	ld   [$0808], sp                                 ; $67b4: $08 $08 $08
	ld   [$0a0a], sp                                 ; $67b7: $08 $0a $0a
	call z, $00cc                                    ; $67ba: $cc $cc $00
	nop                                              ; $67bd: $00
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	ld   hl, $2021                                   ; $67c0: $21 $21 $20
	jr   nz, jr_08c_6786                             ; $67c3: $20 $c1

jr_08c_67c5:
	pop  bc                                          ; $67c5: $c1
	add  b                                           ; $67c6: $80
	add  b                                           ; $67c7: $80
	ld   b, b                                        ; $67c8: $40
	ld   b, b                                        ; $67c9: $40
	inc  sp                                          ; $67ca: $33
	inc  sp                                          ; $67cb: $33
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	rst  $38                                         ; $67ce: $ff
	rst  $38                                         ; $67cf: $ff
	ld   hl, sp-$08                                  ; $67d0: $f8 $f8
	ld   c, b                                        ; $67d2: $48
	ld   c, b                                        ; $67d3: $48
	ldh  a, [$f0]                                    ; $67d4: $f0 $f0
	ld   b, b                                        ; $67d6: $40
	ld   b, b                                        ; $67d7: $40
	ld   b, b                                        ; $67d8: $40
	ld   b, b                                        ; $67d9: $40
	db   $fc                                         ; $67da: $fc
	db   $fc                                         ; $67db: $fc
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
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
	rst  $38                                         ; $67ee: $ff
	rst  $38                                         ; $67ef: $ff
	ld   bc, $0101                                   ; $67f0: $01 $01 $01
	ld   bc, $0101                                   ; $67f3: $01 $01 $01
	ld   bc, $0101                                   ; $67f6: $01 $01 $01
	ld   bc, $0101                                   ; $67f9: $01 $01 $01
	ld   bc, $ff01                                   ; $67fc: $01 $01 $ff
	rst  $38                                         ; $67ff: $ff
	rst  $38                                         ; $6800: $ff
	rst  $38                                         ; $6801: $ff
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	rst  $38                                         ; $6810: $ff
	rst  $38                                         ; $6811: $ff
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	inc  bc                                          ; $6818: $03
	inc  bc                                          ; $6819: $03
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	inc  bc                                          ; $681e: $03
	inc  bc                                          ; $681f: $03
	rst  $38                                         ; $6820: $ff
	rst  $38                                         ; $6821: $ff
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	ret  z                                           ; $6828: $c8

	ret  z                                           ; $6829: $c8

	ld   [$0808], sp                                 ; $682a: $08 $08 $08
	ld   [$c8c8], sp                                 ; $682d: $08 $c8 $c8
	rst  $38                                         ; $6830: $ff
	rst  $38                                         ; $6831: $ff
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	rra                                              ; $6838: $1f
	rra                                              ; $6839: $1f
	db   $10                                         ; $683a: $10
	db   $10                                         ; $683b: $10
	db   $10                                         ; $683c: $10
	stop                                             ; $683d: $10 $00
	nop                                              ; $683f: $00
	rst  $38                                         ; $6840: $ff
	rst  $38                                         ; $6841: $ff
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	nop                                              ; $6847: $00
	ret  nz                                          ; $6848: $c0

	ret  nz                                          ; $6849: $c0

	ld   b, b                                        ; $684a: $40
	ld   b, b                                        ; $684b: $40
	ld   b, b                                        ; $684c: $40
	ld   b, b                                        ; $684d: $40
	ld   b, b                                        ; $684e: $40
	ld   b, b                                        ; $684f: $40
	rst  $38                                         ; $6850: $ff
	rst  $38                                         ; $6851: $ff
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	nop                                              ; $6854: $00
	nop                                              ; $6855: $00
	inc  b                                           ; $6856: $04
	inc  b                                           ; $6857: $04
	ld   a, a                                        ; $6858: $7f
	ld   a, a                                        ; $6859: $7f
	ld   b, b                                        ; $685a: $40
	ld   b, b                                        ; $685b: $40
	rra                                              ; $685c: $1f
	rra                                              ; $685d: $1f
	ld   [$ff08], sp                                 ; $685e: $08 $08 $ff
	rst  $38                                         ; $6861: $ff
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	ret  nz                                          ; $6868: $c0

	ret  nz                                          ; $6869: $c0

	ld   b, b                                        ; $686a: $40
	ld   b, b                                        ; $686b: $40
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	add  b                                           ; $686e: $80
	add  b                                           ; $686f: $80
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	ld   bc, $0101                                   ; $6872: $01 $01 $01
	ld   bc, $0101                                   ; $6875: $01 $01 $01
	ld   bc, $0101                                   ; $6878: $01 $01 $01
	ld   bc, $0101                                   ; $687b: $01 $01 $01
	ld   bc, $0001                                   ; $687e: $01 $01 $00
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	nop                                              ; $6886: $00
	nop                                              ; $6887: $00
	nop                                              ; $6888: $00
	nop                                              ; $6889: $00
	nop                                              ; $688a: $00
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	rst  $38                                         ; $688e: $ff
	rst  $38                                         ; $688f: $ff
	nop                                              ; $6890: $00
	nop                                              ; $6891: $00
	nop                                              ; $6892: $00
	nop                                              ; $6893: $00
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	nop                                              ; $6896: $00
	nop                                              ; $6897: $00
	nop                                              ; $6898: $00
	nop                                              ; $6899: $00
	ld   bc, $0001                                   ; $689a: $01 $01 $00
	nop                                              ; $689d: $00
	rst  $38                                         ; $689e: $ff
	rst  $38                                         ; $689f: $ff
	add  hl, bc                                      ; $68a0: $09
	add  hl, bc                                      ; $68a1: $09
	dec  bc                                          ; $68a2: $0b
	dec  bc                                          ; $68a3: $0b
	ld   de, $1111                                   ; $68a4: $11 $11 $11
	ld   de, $2121                                   ; $68a7: $11 $21 $21
	pop  bc                                          ; $68aa: $c1
	pop  bc                                          ; $68ab: $c1
	nop                                              ; $68ac: $00
	nop                                              ; $68ad: $00
	rst  $38                                         ; $68ae: $ff
	rst  $38                                         ; $68af: $ff
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	ret  nz                                          ; $68b2: $c0

	ret  nz                                          ; $68b3: $c0

	ld   b, b                                        ; $68b4: $40
	ld   b, b                                        ; $68b5: $40
	add  b                                           ; $68b6: $80
	add  b                                           ; $68b7: $80
	ld   bc, $0601                                   ; $68b8: $01 $01 $06
	ld   b, $00                                      ; $68bb: $06 $00
	nop                                              ; $68bd: $00
	rst  $38                                         ; $68be: $ff
	rst  $38                                         ; $68bf: $ff
	ld   e, a                                        ; $68c0: $5f
	ld   e, a                                        ; $68c1: $5f
	ld   b, b                                        ; $68c2: $40
	ld   b, b                                        ; $68c3: $40
	add  b                                           ; $68c4: $80
	add  b                                           ; $68c5: $80
	add  b                                           ; $68c6: $80
	add  b                                           ; $68c7: $80
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	sbc  a                                           ; $68d0: $9f
	sbc  a                                           ; $68d1: $9f
	inc  b                                           ; $68d2: $04
	inc  b                                           ; $68d3: $04
	rra                                              ; $68d4: $1f
	rra                                              ; $68d5: $1f
	inc  b                                           ; $68d6: $04
	inc  b                                           ; $68d7: $04
	inc  b                                           ; $68d8: $04
	inc  b                                           ; $68d9: $04
	ccf                                              ; $68da: $3f
	ccf                                              ; $68db: $3f
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	rst  $38                                         ; $68de: $ff
	rst  $38                                         ; $68df: $ff
	add  b                                           ; $68e0: $80
	add  b                                           ; $68e1: $80
	add  b                                           ; $68e2: $80
	add  b                                           ; $68e3: $80
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	ret  nz                                          ; $68ea: $c0

	ret  nz                                          ; $68eb: $c0

	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	ld   bc, $0101                                   ; $68f0: $01 $01 $01
	ld   bc, $0101                                   ; $68f3: $01 $01 $01
	ld   bc, $0101                                   ; $68f6: $01 $01 $01
	ld   bc, $0101                                   ; $68f9: $01 $01 $01
	ld   bc, $ff01                                   ; $68fc: $01 $01 $ff
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	rst  $38                                         ; $6901: $ff
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	rst  $38                                         ; $6910: $ff
	rst  $38                                         ; $6911: $ff
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	rst  $38                                         ; $6920: $ff
	rst  $38                                         ; $6921: $ff
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	ld   a, a                                        ; $6926: $7f
	ld   a, a                                        ; $6927: $7f
	ld   d, b                                        ; $6928: $50
	ld   d, b                                        ; $6929: $50
	ld   e, a                                        ; $692a: $5f
	ld   e, a                                        ; $692b: $5f
	ld   h, h                                        ; $692c: $64
	ld   h, h                                        ; $692d: $64
	ld   b, h                                        ; $692e: $44
	ld   b, h                                        ; $692f: $44
	rst  $38                                         ; $6930: $ff
	rst  $38                                         ; $6931: $ff
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	db   $dd                                         ; $6936: $dd
	db   $dd                                         ; $6937: $dd
	dec  b                                           ; $6938: $05
	dec  b                                           ; $6939: $05
	sbc  a                                           ; $693a: $9f
	sbc  a                                           ; $693b: $9f
	ld   a, [bc]                                     ; $693c: $0a
	ld   a, [bc]                                     ; $693d: $0a
	inc  c                                           ; $693e: $0c
	inc  c                                           ; $693f: $0c
	rst  $38                                         ; $6940: $ff
	rst  $38                                         ; $6941: $ff
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	rst  $30                                         ; $6948: $f7
	rst  $30                                         ; $6949: $f7
	inc  b                                           ; $694a: $04
	inc  b                                           ; $694b: $04
	and  c                                           ; $694c: $a1
	and  c                                           ; $694d: $a1
	ld   b, b                                        ; $694e: $40
	ld   b, b                                        ; $694f: $40
	rst  $38                                         ; $6950: $ff
	rst  $38                                         ; $6951: $ff
	nop                                              ; $6952: $00
	nop                                              ; $6953: $00
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	ld   b, b                                        ; $6956: $40
	ld   b, b                                        ; $6957: $40
	db   $fc                                         ; $6958: $fc
	db   $fc                                         ; $6959: $fc
	inc  b                                           ; $695a: $04
	inc  b                                           ; $695b: $04
	ldh  a, [$f0]                                    ; $695c: $f0 $f0
	adc  b                                           ; $695e: $88
	adc  b                                           ; $695f: $88
	rst  $38                                         ; $6960: $ff
	rst  $38                                         ; $6961: $ff
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	nop                                              ; $6967: $00
	nop                                              ; $6968: $00
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	rst  $38                                         ; $6970: $ff
	rst  $38                                         ; $6971: $ff
	ld   bc, $0101                                   ; $6972: $01 $01 $01
	ld   bc, $0101                                   ; $6975: $01 $01 $01
	ld   bc, $0101                                   ; $6978: $01 $01 $01
	ld   bc, $0101                                   ; $697b: $01 $01 $01
	ld   bc, $0001                                   ; $697e: $01 $01 $00
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	nop                                              ; $6985: $00

jr_08c_6986:
	nop                                              ; $6986: $00
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	nop                                              ; $698c: $00
	nop                                              ; $698d: $00
	rst  $38                                         ; $698e: $ff
	rst  $38                                         ; $698f: $ff
	nop                                              ; $6990: $00
	nop                                              ; $6991: $00
	nop                                              ; $6992: $00
	nop                                              ; $6993: $00
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00
	rst  $38                                         ; $699e: $ff
	rst  $38                                         ; $699f: $ff
	ld   a, a                                        ; $69a0: $7f
	ld   a, a                                        ; $69a1: $7f
	ld   b, h                                        ; $69a2: $44
	ld   b, h                                        ; $69a3: $44
	ld   c, d                                        ; $69a4: $4a
	ld   c, d                                        ; $69a5: $4a
	ld   c, d                                        ; $69a6: $4a
	ld   c, d                                        ; $69a7: $4a
	ld   d, c                                        ; $69a8: $51
	ld   d, c                                        ; $69a9: $51
	ld   a, a                                        ; $69aa: $7f
	ld   a, a                                        ; $69ab: $7f
	nop                                              ; $69ac: $00
	nop                                              ; $69ad: $00
	rst  $38                                         ; $69ae: $ff
	rst  $38                                         ; $69af: $ff
	adc  e                                           ; $69b0: $8b
	adc  e                                           ; $69b1: $8b
	jr   jr_08c_69cc                                 ; $69b2: $18 $18

	dec  bc                                          ; $69b4: $0b
	dec  bc                                          ; $69b5: $0b
	ld   [$1808], sp                                 ; $69b6: $08 $08 $18
	jr   jr_08c_6986                                 ; $69b9: $18 $cb

	rlc  b                                           ; $69bb: $cb $00
	nop                                              ; $69bd: $00
	rst  $38                                         ; $69be: $ff
	rst  $38                                         ; $69bf: $ff
	or   c                                           ; $69c0: $b1
	or   c                                           ; $69c1: $b1
	add  b                                           ; $69c2: $80
	add  b                                           ; $69c3: $80
	pop  af                                          ; $69c4: $f1
	pop  af                                          ; $69c5: $f1
	sub  b                                           ; $69c6: $90
	sub  b                                           ; $69c7: $90
	sub  b                                           ; $69c8: $90
	sub  b                                           ; $69c9: $90
	inc  hl                                          ; $69ca: $23
	inc  hl                                          ; $69cb: $23

jr_08c_69cc:
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	rst  $38                                         ; $69ce: $ff
	rst  $38                                         ; $69cf: $ff
	ld   hl, sp-$08                                  ; $69d0: $f8 $f8
	ld   c, b                                        ; $69d2: $48
	ld   c, b                                        ; $69d3: $48
	ldh  a, [$f0]                                    ; $69d4: $f0 $f0
	ld   b, b                                        ; $69d6: $40
	ld   b, b                                        ; $69d7: $40
	ld   b, b                                        ; $69d8: $40
	ld   b, b                                        ; $69d9: $40
	db   $fc                                         ; $69da: $fc
	db   $fc                                         ; $69db: $fc
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	rst  $38                                         ; $69de: $ff
	rst  $38                                         ; $69df: $ff
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	nop                                              ; $69e2: $00
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	nop                                              ; $69eb: $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	rst  $38                                         ; $69ee: $ff
	rst  $38                                         ; $69ef: $ff
	ld   bc, $0101                                   ; $69f0: $01 $01 $01
	ld   bc, $0101                                   ; $69f3: $01 $01 $01
	ld   bc, $0101                                   ; $69f6: $01 $01 $01
	ld   bc, $0101                                   ; $69f9: $01 $01 $01
	ld   bc, $ff01                                   ; $69fc: $01 $01 $ff
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	rst  $38                                         ; $6a01: $ff
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	nop                                              ; $6a0c: $00
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	nop                                              ; $6a1c: $00
	nop                                              ; $6a1d: $00
	nop                                              ; $6a1e: $00
	nop                                              ; $6a1f: $00
	rst  $38                                         ; $6a20: $ff
	rst  $38                                         ; $6a21: $ff
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	jr   nz, jr_08c_6a48                             ; $6a26: $20 $20

	ccf                                              ; $6a28: $3f
	ccf                                              ; $6a29: $3f
	ld   d, l                                        ; $6a2a: $55
	ld   d, l                                        ; $6a2b: $55
	ccf                                              ; $6a2c: $3f
	ccf                                              ; $6a2d: $3f
	dec  d                                           ; $6a2e: $15
	dec  d                                           ; $6a2f: $15
	rst  $38                                         ; $6a30: $ff
	rst  $38                                         ; $6a31: $ff
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	ld   [bc], a                                     ; $6a36: $02
	ld   [bc], a                                     ; $6a37: $02
	jp   nz, $04c2                                   ; $6a38: $c2 $c2 $04

	inc  b                                           ; $6a3b: $04
	adc  b                                           ; $6a3c: $88
	adc  b                                           ; $6a3d: $88
	rra                                              ; $6a3e: $1f
	rra                                              ; $6a3f: $1f
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	inc  b                                           ; $6a46: $04
	inc  b                                           ; $6a47: $04

jr_08c_6a48:
	inc  b                                           ; $6a48: $04
	inc  b                                           ; $6a49: $04
	rrca                                             ; $6a4a: $0f
	rrca                                             ; $6a4b: $0f
	ld   hl, $e221                                   ; $6a4c: $21 $21 $e2
	ldh  [c], a                                      ; $6a4f: $e2
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	nop                                              ; $6a55: $00
	db   $10                                         ; $6a56: $10
	db   $10                                         ; $6a57: $10
	db   $10                                         ; $6a58: $10
	db   $10                                         ; $6a59: $10
	db   $10                                         ; $6a5a: $10
	db   $10                                         ; $6a5b: $10
	ld   a, h                                        ; $6a5c: $7c
	ld   a, h                                        ; $6a5d: $7c
	ld   d, h                                        ; $6a5e: $54
	ld   d, h                                        ; $6a5f: $54
	rst  $38                                         ; $6a60: $ff
	rst  $38                                         ; $6a61: $ff
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	nop                                              ; $6a64: $00
	nop                                              ; $6a65: $00
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	ld   bc, $0101                                   ; $6a72: $01 $01 $01
	ld   bc, $0101                                   ; $6a75: $01 $01 $01
	ld   bc, $0101                                   ; $6a78: $01 $01 $01
	ld   bc, $0101                                   ; $6a7b: $01 $01 $01
	ld   bc, $0001                                   ; $6a7e: $01 $01 $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	rst  $38                                         ; $6a9e: $ff
	rst  $38                                         ; $6a9f: $ff
	ld   a, a                                        ; $6aa0: $7f
	ld   a, a                                        ; $6aa1: $7f
	jr   z, @+$2a                                    ; $6aa2: $28 $28

	dec  sp                                          ; $6aa4: $3b
	dec  sp                                          ; $6aa5: $3b
	ld   c, d                                        ; $6aa6: $4a
	ld   c, d                                        ; $6aa7: $4a
	rrca                                             ; $6aa8: $0f
	rrca                                             ; $6aa9: $0f
	jr   nc, jr_08c_6adc                             ; $6aaa: $30 $30

	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	rst  $38                                         ; $6aae: $ff
	rst  $38                                         ; $6aaf: $ff
	ret  nz                                          ; $6ab0: $c0

	ret  nz                                          ; $6ab1: $c0

	adc  a                                           ; $6ab2: $8f
	adc  a                                           ; $6ab3: $8f
	ret  z                                           ; $6ab4: $c8

	ret  z                                           ; $6ab5: $c8

	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
	ret  z                                           ; $6ab8: $c8

	ret  z                                           ; $6ab9: $c8

	adc  a                                           ; $6aba: $8f
	adc  a                                           ; $6abb: $8f
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	rst  $38                                         ; $6abe: $ff
	rst  $38                                         ; $6abf: $ff
	dec  h                                           ; $6ac0: $25
	dec  h                                           ; $6ac1: $25
	adc  $ce                                         ; $6ac2: $ce $ce
	ld   b, l                                        ; $6ac4: $45
	ld   b, l                                        ; $6ac5: $45
	ld   b, l                                        ; $6ac6: $45
	ld   b, l                                        ; $6ac7: $45
	ld   b, l                                        ; $6ac8: $45
	ld   b, l                                        ; $6ac9: $45
	call nz, $00c4                                   ; $6aca: $c4 $c4 $00
	nop                                              ; $6acd: $00
	rst  $38                                         ; $6ace: $ff
	rst  $38                                         ; $6acf: $ff
	ld   d, h                                        ; $6ad0: $54
	ld   d, h                                        ; $6ad1: $54
	ld   a, h                                        ; $6ad2: $7c
	ld   a, h                                        ; $6ad3: $7c
	ld   d, h                                        ; $6ad4: $54
	ld   d, h                                        ; $6ad5: $54
	ld   d, h                                        ; $6ad6: $54
	ld   d, h                                        ; $6ad7: $54
	ld   d, h                                        ; $6ad8: $54
	ld   d, h                                        ; $6ad9: $54
	ld   a, h                                        ; $6ada: $7c
	ld   a, h                                        ; $6adb: $7c

jr_08c_6adc:
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	rst  $38                                         ; $6ade: $ff
	rst  $38                                         ; $6adf: $ff
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	nop                                              ; $6aea: $00
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	rst  $38                                         ; $6aee: $ff
	rst  $38                                         ; $6aef: $ff
	ld   bc, $0101                                   ; $6af0: $01 $01 $01
	ld   bc, $0101                                   ; $6af3: $01 $01 $01
	ld   bc, $0101                                   ; $6af6: $01 $01 $01
	ld   bc, $0101                                   ; $6af9: $01 $01 $01
	ld   bc, $ff01                                   ; $6afc: $01 $01 $ff
	rst  $38                                         ; $6aff: $ff
	rst  $38                                         ; $6b00: $ff
	rst  $38                                         ; $6b01: $ff
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	rst  $38                                         ; $6b10: $ff
	rst  $38                                         ; $6b11: $ff
	nop                                              ; $6b12: $00
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	rst  $38                                         ; $6b20: $ff
	rst  $38                                         ; $6b21: $ff
	nop                                              ; $6b22: $00
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	nop                                              ; $6b27: $00
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	inc  bc                                          ; $6b2a: $03
	inc  bc                                          ; $6b2b: $03
	ld   [bc], a                                     ; $6b2c: $02
	ld   [bc], a                                     ; $6b2d: $02
	ld   [bc], a                                     ; $6b2e: $02
	ld   [bc], a                                     ; $6b2f: $02
	rst  $38                                         ; $6b30: $ff
	rst  $38                                         ; $6b31: $ff
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	jr   nz, jr_08c_6b58                             ; $6b36: $20 $20

	jr   nz, jr_08c_6b5a                             ; $6b38: $20 $20

	cp   $fe                                         ; $6b3a: $fe $fe
	ld   [hl+], a                                    ; $6b3c: $22
	ld   [hl+], a                                    ; $6b3d: $22
	ld   [hl+], a                                    ; $6b3e: $22
	ld   [hl+], a                                    ; $6b3f: $22
	rst  $38                                         ; $6b40: $ff
	rst  $38                                         ; $6b41: $ff
	nop                                              ; $6b42: $00
	nop                                              ; $6b43: $00
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	inc  b                                           ; $6b46: $04
	inc  b                                           ; $6b47: $04
	ld   a, a                                        ; $6b48: $7f
	ld   a, a                                        ; $6b49: $7f
	ld   b, b                                        ; $6b4a: $40
	ld   b, b                                        ; $6b4b: $40
	ld   a, h                                        ; $6b4c: $7c
	ld   a, h                                        ; $6b4d: $7c
	ld   c, e                                        ; $6b4e: $4b
	ld   c, e                                        ; $6b4f: $4b
	rst  $38                                         ; $6b50: $ff
	rst  $38                                         ; $6b51: $ff
	nop                                              ; $6b52: $00
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00

jr_08c_6b58:
	ret  nz                                          ; $6b58: $c0

	ret  nz                                          ; $6b59: $c0

jr_08c_6b5a:
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	add  b                                           ; $6b5c: $80
	add  b                                           ; $6b5d: $80
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	rst  $38                                         ; $6b60: $ff
	rst  $38                                         ; $6b61: $ff
	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	nop                                              ; $6b64: $00
	nop                                              ; $6b65: $00
	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	rst  $38                                         ; $6b70: $ff
	rst  $38                                         ; $6b71: $ff
	ld   bc, $0101                                   ; $6b72: $01 $01 $01
	ld   bc, $0101                                   ; $6b75: $01 $01 $01
	ld   bc, $0101                                   ; $6b78: $01 $01 $01
	ld   bc, $0101                                   ; $6b7b: $01 $01 $01
	ld   bc, $0001                                   ; $6b7e: $01 $01 $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	nop                                              ; $6b84: $00
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	nop                                              ; $6b89: $00
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	nop                                              ; $6b90: $00
	nop                                              ; $6b91: $00
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	nop                                              ; $6b94: $00
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	rst  $38                                         ; $6b9e: $ff
	rst  $38                                         ; $6b9f: $ff
	ld   [bc], a                                     ; $6ba0: $02
	ld   [bc], a                                     ; $6ba1: $02
	inc  bc                                          ; $6ba2: $03
	inc  bc                                          ; $6ba3: $03
	nop                                              ; $6ba4: $00
	nop                                              ; $6ba5: $00
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	rst  $38                                         ; $6bae: $ff
	rst  $38                                         ; $6baf: $ff
	ld   [hl+], a                                    ; $6bb0: $22
	ld   [hl+], a                                    ; $6bb1: $22
	cp   $fe                                         ; $6bb2: $fe $fe
	jr   nz, jr_08c_6bd6                             ; $6bb4: $20 $20

	jr   nz, jr_08c_6bd8                             ; $6bb6: $20 $20

	jr   nz, jr_08c_6bda                             ; $6bb8: $20 $20

	jr   nz, jr_08c_6bdc                             ; $6bba: $20 $20

	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	rst  $38                                         ; $6bbe: $ff
	rst  $38                                         ; $6bbf: $ff
	ld   d, c                                        ; $6bc0: $51
	ld   d, c                                        ; $6bc1: $51
	ld   c, a                                        ; $6bc2: $4f
	ld   c, a                                        ; $6bc3: $4f
	ld   l, c                                        ; $6bc4: $69
	ld   l, c                                        ; $6bc5: $69
	ld   e, e                                        ; $6bc6: $5b
	ld   e, e                                        ; $6bc7: $5b
	ld   c, h                                        ; $6bc8: $4c
	ld   c, h                                        ; $6bc9: $4c
	cp   e                                           ; $6bca: $bb
	cp   e                                           ; $6bcb: $bb
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	rst  $38                                         ; $6bce: $ff
	rst  $38                                         ; $6bcf: $ff
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	ret  nz                                          ; $6bd2: $c0

	ret  nz                                          ; $6bd3: $c0

	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00

jr_08c_6bd6:
	ret  nz                                          ; $6bd6: $c0

	ret  nz                                          ; $6bd7: $c0

jr_08c_6bd8:
	nop                                              ; $6bd8: $00
	nop                                              ; $6bd9: $00

jr_08c_6bda:
	ret  nz                                          ; $6bda: $c0

	ret  nz                                          ; $6bdb: $c0

jr_08c_6bdc:
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	rst  $38                                         ; $6bde: $ff
	rst  $38                                         ; $6bdf: $ff
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
	rst  $38                                         ; $6bee: $ff
	rst  $38                                         ; $6bef: $ff
	ld   bc, $0101                                   ; $6bf0: $01 $01 $01
	ld   bc, $0101                                   ; $6bf3: $01 $01 $01
	ld   bc, $0101                                   ; $6bf6: $01 $01 $01
	ld   bc, $0101                                   ; $6bf9: $01 $01 $01
	ld   bc, $ff01                                   ; $6bfc: $01 $01 $ff
	rst  $38                                         ; $6bff: $ff
	rst  $38                                         ; $6c00: $ff
	rst  $38                                         ; $6c01: $ff
	nop                                              ; $6c02: $00
	nop                                              ; $6c03: $00
	nop                                              ; $6c04: $00
	nop                                              ; $6c05: $00
	nop                                              ; $6c06: $00
	nop                                              ; $6c07: $00
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	nop                                              ; $6c0b: $00
	nop                                              ; $6c0c: $00
	nop                                              ; $6c0d: $00
	inc  bc                                          ; $6c0e: $03
	inc  bc                                          ; $6c0f: $03
	rst  $38                                         ; $6c10: $ff
	rst  $38                                         ; $6c11: $ff
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	nop                                              ; $6c14: $00
	nop                                              ; $6c15: $00
	inc  d                                           ; $6c16: $14
	inc  d                                           ; $6c17: $14
	sub  h                                           ; $6c18: $94
	sub  h                                           ; $6c19: $94
	sub  h                                           ; $6c1a: $94
	sub  h                                           ; $6c1b: $94
	cp   a                                           ; $6c1c: $bf
	cp   a                                           ; $6c1d: $bf
	push de                                          ; $6c1e: $d5
	push de                                          ; $6c1f: $d5
	rst  $38                                         ; $6c20: $ff
	rst  $38                                         ; $6c21: $ff
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	nop                                              ; $6c24: $00
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	nop                                              ; $6c27: $00
	rst  $38                                         ; $6c28: $ff
	rst  $38                                         ; $6c29: $ff
	ld   [$0c08], sp                                 ; $6c2a: $08 $08 $0c
	inc  c                                           ; $6c2d: $0c
	ld   a, [bc]                                     ; $6c2e: $0a
	ld   a, [bc]                                     ; $6c2f: $0a
	rst  $38                                         ; $6c30: $ff
	rst  $38                                         ; $6c31: $ff
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00
	add  hl, bc                                      ; $6c36: $09
	add  hl, bc                                      ; $6c37: $09
	adc  c                                           ; $6c38: $89
	adc  c                                           ; $6c39: $89
	dec  a                                           ; $6c3a: $3d
	dec  a                                           ; $6c3b: $3d
	ld   a, [bc]                                     ; $6c3c: $0a
	ld   a, [bc]                                     ; $6c3d: $0a
	inc  e                                           ; $6c3e: $1c
	inc  e                                           ; $6c3f: $1c
	rst  $38                                         ; $6c40: $ff
	rst  $38                                         ; $6c41: $ff
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	pop  hl                                          ; $6c46: $e1
	pop  hl                                          ; $6c47: $e1
	ld   [hl+], a                                    ; $6c48: $22
	ld   [hl+], a                                    ; $6c49: $22
	ld   h, $26                                      ; $6c4a: $26 $26
	pop  bc                                          ; $6c4c: $c1
	pop  bc                                          ; $6c4d: $c1
	ld   b, d                                        ; $6c4e: $42
	ld   b, d                                        ; $6c4f: $42
	rst  $38                                         ; $6c50: $ff
	rst  $38                                         ; $6c51: $ff
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	ld   [$0808], sp                                 ; $6c56: $08 $08 $08
	ld   [$8888], sp                                 ; $6c59: $08 $88 $88
	ld   a, $3e                                      ; $6c5c: $3e $3e
	xor  d                                           ; $6c5e: $aa
	xor  d                                           ; $6c5f: $aa
	rst  $38                                         ; $6c60: $ff
	rst  $38                                         ; $6c61: $ff
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	nop                                              ; $6c65: $00
	inc  b                                           ; $6c66: $04
	inc  b                                           ; $6c67: $04
	ld   a, a                                        ; $6c68: $7f
	ld   a, a                                        ; $6c69: $7f
	ld   b, h                                        ; $6c6a: $44
	ld   b, h                                        ; $6c6b: $44
	ld   a, a                                        ; $6c6c: $7f
	ld   a, a                                        ; $6c6d: $7f
	ld   b, h                                        ; $6c6e: $44
	ld   b, h                                        ; $6c6f: $44
	rst  $38                                         ; $6c70: $ff
	rst  $38                                         ; $6c71: $ff
	ld   bc, $0101                                   ; $6c72: $01 $01 $01
	ld   bc, $0101                                   ; $6c75: $01 $01 $01
	pop  bc                                          ; $6c78: $c1
	pop  bc                                          ; $6c79: $c1
	ld   bc, $8101                                   ; $6c7a: $01 $01 $81
	add  c                                           ; $6c7d: $81
	ld   bc, $0001                                   ; $6c7e: $01 $01 $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	inc  bc                                          ; $6c8a: $03
	inc  bc                                          ; $6c8b: $03
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	rst  $38                                         ; $6c8e: $ff
	rst  $38                                         ; $6c8f: $ff
	sub  l                                           ; $6c90: $95
	sub  l                                           ; $6c91: $95
	sub  e                                           ; $6c92: $93
	sub  e                                           ; $6c93: $93
	sub  b                                           ; $6c94: $90
	sub  b                                           ; $6c95: $90
	sub  c                                           ; $6c96: $91
	sub  c                                           ; $6c97: $91
	pop  de                                          ; $6c98: $d1
	pop  de                                          ; $6c99: $d1
	rrca                                             ; $6c9a: $0f
	rrca                                             ; $6c9b: $0f
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	rst  $38                                         ; $6c9e: $ff
	rst  $38                                         ; $6c9f: $ff
	ld   a, [bc]                                     ; $6ca0: $0a
	ld   a, [bc]                                     ; $6ca1: $0a
	ld   [$0808], sp                                 ; $6ca2: $08 $08 $08
	ld   [$0808], sp                                 ; $6ca5: $08 $08 $08
	ld   [$0808], sp                                 ; $6ca8: $08 $08 $08
	ld   [rRAMG], sp                                 ; $6cab: $08 $00 $00
	rst  $38                                         ; $6cae: $ff
	rst  $38                                         ; $6caf: $ff
	dec  de                                          ; $6cb0: $1b
	dec  de                                          ; $6cb1: $1b
	jr   z, jr_08c_6cdc                              ; $6cb2: $28 $28

	add  hl, bc                                      ; $6cb4: $09
	add  hl, bc                                      ; $6cb5: $09
	add  hl, bc                                      ; $6cb6: $09
	add  hl, bc                                      ; $6cb7: $09
	add  hl, bc                                      ; $6cb8: $09
	add  hl, bc                                      ; $6cb9: $09
	add  hl, bc                                      ; $6cba: $09
	add  hl, bc                                      ; $6cbb: $09
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	rst  $38                                         ; $6cbe: $ff
	rst  $38                                         ; $6cbf: $ff
	or   a                                           ; $6cc0: $b7
	or   a                                           ; $6cc1: $b7
	ld   bc, $f501                                   ; $6cc2: $01 $01 $f5
	push af                                          ; $6cc5: $f5
	dec  d                                           ; $6cc6: $15
	dec  d                                           ; $6cc7: $15
	dec  d                                           ; $6cc8: $15
	dec  d                                           ; $6cc9: $15
	pop  af                                          ; $6cca: $f1
	pop  af                                          ; $6ccb: $f1
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	rst  $38                                         ; $6cce: $ff
	rst  $38                                         ; $6ccf: $ff
	xor  d                                           ; $6cd0: $aa
	xor  d                                           ; $6cd1: $aa
	ld   [hl], $36                                   ; $6cd2: $36 $36
	and  d                                           ; $6cd4: $a2
	and  d                                           ; $6cd5: $a2
	and  d                                           ; $6cd6: $a2
	and  d                                           ; $6cd7: $a2
	ld   h, $26                                      ; $6cd8: $26 $26
	ld   [hl+], a                                    ; $6cda: $22
	ld   [hl+], a                                    ; $6cdb: $22

jr_08c_6cdc:
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	rst  $38                                         ; $6cde: $ff
	rst  $38                                         ; $6cdf: $ff
	ld   e, a                                        ; $6ce0: $5f
	ld   e, a                                        ; $6ce1: $5f
	ld   d, l                                        ; $6ce2: $55
	ld   d, l                                        ; $6ce3: $55
	ld   e, a                                        ; $6ce4: $5f
	ld   e, a                                        ; $6ce5: $5f
	ld   b, h                                        ; $6ce6: $44
	ld   b, h                                        ; $6ce7: $44
	ld   a, a                                        ; $6ce8: $7f
	ld   a, a                                        ; $6ce9: $7f
	add  h                                           ; $6cea: $84
	add  h                                           ; $6ceb: $84
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	rst  $38                                         ; $6cee: $ff
	rst  $38                                         ; $6cef: $ff
	ld   bc, $0101                                   ; $6cf0: $01 $01 $01
	ld   bc, $0101                                   ; $6cf3: $01 $01 $01
	ld   bc, $c101                                   ; $6cf6: $01 $01 $c1
	pop  bc                                          ; $6cf9: $c1
	ld   bc, $0101                                   ; $6cfa: $01 $01 $01
	ld   bc, $ffff                                   ; $6cfd: $01 $ff $ff
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00
	nop                                              ; $6d05: $00
	nop                                              ; $6d06: $00
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
	nop                                              ; $6d13: $00
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	nop                                              ; $6d38: $00
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	nop                                              ; $6d47: $00
	nop                                              ; $6d48: $00
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	nop                                              ; $6d51: $00
	nop                                              ; $6d52: $00
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
	nop                                              ; $6d55: $00
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	nop                                              ; $6d5d: $00
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	nop                                              ; $6d66: $00
	nop                                              ; $6d67: $00
	nop                                              ; $6d68: $00
	nop                                              ; $6d69: $00
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	nop                                              ; $6d6c: $00
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	nop                                              ; $6d70: $00
	nop                                              ; $6d71: $00
	nop                                              ; $6d72: $00
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	nop                                              ; $6d7b: $00
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	nop                                              ; $6d93: $00
	nop                                              ; $6d94: $00
	nop                                              ; $6d95: $00
	nop                                              ; $6d96: $00
	nop                                              ; $6d97: $00
	nop                                              ; $6d98: $00
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	nop                                              ; $6da6: $00
	nop                                              ; $6da7: $00
	nop                                              ; $6da8: $00
	nop                                              ; $6da9: $00
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
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	nop                                              ; $6dc4: $00
	nop                                              ; $6dc5: $00
	nop                                              ; $6dc6: $00
	nop                                              ; $6dc7: $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	nop                                              ; $6dcc: $00
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	nop                                              ; $6dcf: $00
	nop                                              ; $6dd0: $00
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00
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
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	nop                                              ; $6dfe: $00
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	nop                                              ; $6e0d: $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	nop                                              ; $6e11: $00
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	nop                                              ; $6e27: $00
	nop                                              ; $6e28: $00
	nop                                              ; $6e29: $00
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	nop                                              ; $6e32: $00
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	nop                                              ; $6e35: $00
	nop                                              ; $6e36: $00
	nop                                              ; $6e37: $00
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	nop                                              ; $6e41: $00
	nop                                              ; $6e42: $00
	nop                                              ; $6e43: $00
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	nop                                              ; $6e48: $00
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	nop                                              ; $6e4d: $00
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	nop                                              ; $6e51: $00
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	nop                                              ; $6e55: $00
	nop                                              ; $6e56: $00
	nop                                              ; $6e57: $00
	nop                                              ; $6e58: $00
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	nop                                              ; $6e5d: $00
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	nop                                              ; $6e67: $00
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	nop                                              ; $6e6c: $00
	nop                                              ; $6e6d: $00
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	nop                                              ; $6e7a: $00
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	nop                                              ; $6e8b: $00
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
	nop                                              ; $6e90: $00
	nop                                              ; $6e91: $00
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
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
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	nop                                              ; $6ea7: $00
	nop                                              ; $6ea8: $00
	nop                                              ; $6ea9: $00
	nop                                              ; $6eaa: $00
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	nop                                              ; $6eca: $00
	nop                                              ; $6ecb: $00
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
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
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	nop                                              ; $6f08: $00
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	nop                                              ; $6f13: $00
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
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
	inc  bc                                          ; $7002: $03
	inc  bc                                          ; $7003: $03
	inc  c                                           ; $7004: $0c
	rrca                                             ; $7005: $0f
	db   $10                                         ; $7006: $10
	rra                                              ; $7007: $1f
	ld   hl, $233e                                   ; $7008: $21 $3e $23
	inc  a                                           ; $700b: $3c
	ld   b, e                                        ; $700c: $43
	ld   a, h                                        ; $700d: $7c
	ld   b, e                                        ; $700e: $43
	ld   a, h                                        ; $700f: $7c
	ld   b, c                                        ; $7010: $41
	ld   a, [hl]                                     ; $7011: $7e
	ld   b, c                                        ; $7012: $41
	ld   a, [hl]                                     ; $7013: $7e
	jr   nz, @+$41                                   ; $7014: $20 $3f

jr_08c_7016:
	ld   hl, $113e                                   ; $7016: $21 $3e $11
	ld   e, $0c                                      ; $7019: $1e $0c
	rrca                                             ; $701b: $0f
	inc  bc                                          ; $701c: $03
	inc  bc                                          ; $701d: $03
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	ret  nz                                          ; $7022: $c0

	ret  nz                                          ; $7023: $c0

	jr   nc, jr_08c_7016                             ; $7024: $30 $f0

	ld   [$84f8], sp                                 ; $7026: $08 $f8 $84
	ld   a, h                                        ; $7029: $7c
	call nz, $c27c                                   ; $702a: $c4 $7c $c2
	ld   a, [hl]                                     ; $702d: $7e
	jp   nz, $827e                                   ; $702e: $c2 $7e $82

	cp   $82                                         ; $7031: $fe $82
	cp   $04                                         ; $7033: $fe $04
	db   $fc                                         ; $7035: $fc
	add  h                                           ; $7036: $84
	db   $fc                                         ; $7037: $fc
	adc  b                                           ; $7038: $88
	ld   hl, sp+$30                                  ; $7039: $f8 $30
	ldh  a, [$c0]                                    ; $703b: $f0 $c0
	ret  nz                                          ; $703d: $c0

	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	inc  bc                                          ; $7042: $03
	inc  bc                                          ; $7043: $03
	inc  c                                           ; $7044: $0c
	rrca                                             ; $7045: $0f
	db   $10                                         ; $7046: $10
	rra                                              ; $7047: $1f
	jr   nz, jr_08c_7089                             ; $7048: $20 $3f

	ld   hl, $433e                                   ; $704a: $21 $3e $43
	ld   a, h                                        ; $704d: $7c
	ld   b, e                                        ; $704e: $43
	ld   a, h                                        ; $704f: $7c
	ld   b, e                                        ; $7050: $43
	ld   a, h                                        ; $7051: $7c
	ld   b, c                                        ; $7052: $41
	ld   a, [hl]                                     ; $7053: $7e
	ld   hl, $203e                                   ; $7054: $21 $3e $20
	ccf                                              ; $7057: $3f
	ld   de, $0d1e                                   ; $7058: $11 $1e $0d
	ld   c, $03                                      ; $705b: $0e $03
	inc  bc                                          ; $705d: $03
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	ret  nz                                          ; $7062: $c0

	ret  nz                                          ; $7063: $c0

	jr   nc, @-$0e                                   ; $7064: $30 $f0

	ld   [$04f8], sp                                 ; $7066: $08 $f8 $04
	db   $fc                                         ; $7069: $fc
	add  h                                           ; $706a: $84
	ld   a, h                                        ; $706b: $7c
	jp   nz, $c27e                                   ; $706c: $c2 $7e $c2

	ld   a, [hl]                                     ; $706f: $7e
	jp   nz, $827e                                   ; $7070: $c2 $7e $82

	cp   $84                                         ; $7073: $fe $84
	db   $fc                                         ; $7075: $fc
	inc  b                                           ; $7076: $04
	db   $fc                                         ; $7077: $fc
	adc  b                                           ; $7078: $88
	ld   hl, sp-$50                                  ; $7079: $f8 $b0
	ldh  a, [$c0]                                    ; $707b: $f0 $c0
	ret  nz                                          ; $707d: $c0

	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	inc  bc                                          ; $7082: $03
	inc  bc                                          ; $7083: $03
	dec  c                                           ; $7084: $0d
	ld   c, $13                                      ; $7085: $0e $13
	inc  e                                           ; $7087: $1c
	inc  hl                                          ; $7088: $23

jr_08c_7089:
	inc  a                                           ; $7089: $3c
	inc  hl                                          ; $708a: $23
	inc  a                                           ; $708b: $3c
	ld   b, c                                        ; $708c: $41
	ld   a, [hl]                                     ; $708d: $7e
	ld   b, c                                        ; $708e: $41
	ld   a, [hl]                                     ; $708f: $7e
	ld   b, c                                        ; $7090: $41
	ld   a, [hl]                                     ; $7091: $7e
	ld   b, b                                        ; $7092: $40
	ld   a, a                                        ; $7093: $7f
	ld   hl, $213e                                   ; $7094: $21 $3e $21
	ld   a, $10                                      ; $7097: $3e $10
	rra                                              ; $7099: $1f
	inc  c                                           ; $709a: $0c
	rrca                                             ; $709b: $0f
	inc  bc                                          ; $709c: $03
	inc  bc                                          ; $709d: $03
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	ret  nz                                          ; $70a2: $c0

	ret  nz                                          ; $70a3: $c0

	or   b                                           ; $70a4: $b0
	ld   [hl], b                                     ; $70a5: $70
	ret  z                                           ; $70a6: $c8

	ld   a, b                                        ; $70a7: $78
	call nz, $c47c                                   ; $70a8: $c4 $7c $c4
	ld   a, h                                        ; $70ab: $7c
	add  d                                           ; $70ac: $82
	cp   $82                                         ; $70ad: $fe $82
	cp   $82                                         ; $70af: $fe $82
	cp   $02                                         ; $70b1: $fe $02
	cp   $84                                         ; $70b3: $fe $84
	db   $fc                                         ; $70b5: $fc
	add  h                                           ; $70b6: $84
	db   $fc                                         ; $70b7: $fc
	ld   [$30f8], sp                                 ; $70b8: $08 $f8 $30
	ldh  a, [$c0]                                    ; $70bb: $f0 $c0
	ret  nz                                          ; $70bd: $c0

	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	ld   e, $1e                                      ; $7100: $1e $1e
	rra                                              ; $7102: $1f
	ld   de, $1e1f                                   ; $7103: $11 $1f $1e
	rra                                              ; $7106: $1f
	rra                                              ; $7107: $1f
	ccf                                              ; $7108: $3f
	ccf                                              ; $7109: $3f
	ccf                                              ; $710a: $3f
	ccf                                              ; $710b: $3f
	ld   a, l                                        ; $710c: $7d
	ld   a, a                                        ; $710d: $7f
	ld   a, c                                        ; $710e: $79
	ld   a, a                                        ; $710f: $7f
	ld   a, [hl]                                     ; $7110: $7e
	ld   a, a                                        ; $7111: $7f
	ld   [hl], d                                     ; $7112: $72
	ld   a, a                                        ; $7113: $7f
	ld   [hl], $3f                                   ; $7114: $36 $3f
	jr   nc, @+$41                                   ; $7116: $30 $3f

	jr   z, jr_08c_7149                              ; $7118: $28 $2f

	daa                                              ; $711a: $27
	daa                                              ; $711b: $27
	jr   nz, jr_08c_713e                             ; $711c: $20 $20

	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	ld   a, b                                        ; $7120: $78
	ld   a, b                                        ; $7121: $78
	ld   hl, sp-$78                                  ; $7122: $f8 $88
	ld   hl, sp+$78                                  ; $7124: $f8 $78
	ld   hl, sp-$08                                  ; $7126: $f8 $f8
	db   $fc                                         ; $7128: $fc
	db   $fc                                         ; $7129: $fc
	ld   a, h                                        ; $712a: $7c
	db   $fc                                         ; $712b: $fc
	ld   e, [hl]                                     ; $712c: $5e
	cp   $5e                                         ; $712d: $fe $5e
	cp   $7e                                         ; $712f: $fe $7e
	cp   $2e                                         ; $7131: $fe $2e
	cp   $6c                                         ; $7133: $fe $6c
	db   $fc                                         ; $7135: $fc
	inc  c                                           ; $7136: $0c
	db   $fc                                         ; $7137: $fc
	inc  d                                           ; $7138: $14
	db   $f4                                         ; $7139: $f4
	db   $e4                                         ; $713a: $e4
	db   $e4                                         ; $713b: $e4
	inc  b                                           ; $713c: $04
	inc  b                                           ; $713d: $04

jr_08c_713e:
	nop                                              ; $713e: $00
	nop                                              ; $713f: $00
	ld   e, $1e                                      ; $7140: $1e $1e
	rra                                              ; $7142: $1f
	ld   de, $1e1f                                   ; $7143: $11 $1f $1e
	rra                                              ; $7146: $1f
	rra                                              ; $7147: $1f
	ccf                                              ; $7148: $3f

jr_08c_7149:
	ccf                                              ; $7149: $3f
	ccf                                              ; $714a: $3f
	ccf                                              ; $714b: $3f
	ld   a, l                                        ; $714c: $7d
	ld   a, a                                        ; $714d: $7f
	ld   a, c                                        ; $714e: $79
	ld   a, a                                        ; $714f: $7f
	ld   a, [hl]                                     ; $7150: $7e
	ld   a, a                                        ; $7151: $7f
	ld   [hl], d                                     ; $7152: $72
	ld   a, a                                        ; $7153: $7f
	ld   [hl], $3f                                   ; $7154: $36 $3f
	jr   nc, @+$41                                   ; $7156: $30 $3f

	add  hl, hl                                      ; $7158: $29
	cpl                                              ; $7159: $2f
	daa                                              ; $715a: $27
	daa                                              ; $715b: $27
	jr   nz, jr_08c_717e                             ; $715c: $20 $20

	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	ld   a, b                                        ; $7160: $78
	ld   a, b                                        ; $7161: $78
	ld   hl, sp-$78                                  ; $7162: $f8 $88
	ld   hl, sp+$78                                  ; $7164: $f8 $78
	ld   hl, sp-$08                                  ; $7166: $f8 $f8
	db   $fc                                         ; $7168: $fc
	db   $fc                                         ; $7169: $fc
	ld   a, h                                        ; $716a: $7c
	db   $fc                                         ; $716b: $fc
	ld   e, [hl]                                     ; $716c: $5e
	cp   $5e                                         ; $716d: $fe $5e
	cp   $7e                                         ; $716f: $fe $7e
	cp   $2e                                         ; $7171: $fe $2e
	cp   $6c                                         ; $7173: $fe $6c
	db   $fc                                         ; $7175: $fc
	inc  c                                           ; $7176: $0c
	db   $fc                                         ; $7177: $fc
	sub  h                                           ; $7178: $94
	db   $f4                                         ; $7179: $f4
	db   $e4                                         ; $717a: $e4
	db   $e4                                         ; $717b: $e4
	inc  b                                           ; $717c: $04
	inc  b                                           ; $717d: $04

jr_08c_717e:
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	ld   e, $1e                                      ; $7182: $1e $1e
	rra                                              ; $7184: $1f
	inc  de                                          ; $7185: $13
	ccf                                              ; $7186: $3f
	ld   [hl], $3f                                   ; $7187: $36 $3f
	ccf                                              ; $7189: $3f
	ld   a, a                                        ; $718a: $7f
	ld   a, a                                        ; $718b: $7f
	ld   a, a                                        ; $718c: $7f
	ld   a, a                                        ; $718d: $7f
	ld   a, l                                        ; $718e: $7d
	ld   a, a                                        ; $718f: $7f
	ld   a, c                                        ; $7190: $79
	ld   a, a                                        ; $7191: $7f
	ld   a, $3f                                      ; $7192: $3e $3f
	ld   [hl-], a                                    ; $7194: $32
	ccf                                              ; $7195: $3f
	ld   [hl], $3f                                   ; $7196: $36 $3f
	jr   z, jr_08c_71c9                              ; $7198: $28 $2f

	daa                                              ; $719a: $27
	daa                                              ; $719b: $27
	jr   nz, jr_08c_71be                             ; $719c: $20 $20

	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	ld   a, b                                        ; $71a2: $78
	ld   a, b                                        ; $71a3: $78
	ld   hl, sp-$38                                  ; $71a4: $f8 $c8
	db   $fc                                         ; $71a6: $fc
	ld   l, h                                        ; $71a7: $6c
	db   $fc                                         ; $71a8: $fc
	db   $fc                                         ; $71a9: $fc
	cp   $fe                                         ; $71aa: $fe $fe
	ld   a, [hl]                                     ; $71ac: $7e
	cp   $5e                                         ; $71ad: $fe $5e
	cp   $5e                                         ; $71af: $fe $5e
	cp   $7c                                         ; $71b1: $fe $7c
	db   $fc                                         ; $71b3: $fc
	inc  l                                           ; $71b4: $2c
	db   $fc                                         ; $71b5: $fc
	ld   l, h                                        ; $71b6: $6c
	db   $fc                                         ; $71b7: $fc
	inc  d                                           ; $71b8: $14
	db   $f4                                         ; $71b9: $f4
	db   $e4                                         ; $71ba: $e4
	db   $e4                                         ; $71bb: $e4
	inc  b                                           ; $71bc: $04
	inc  b                                           ; $71bd: $04

jr_08c_71be:
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	ld   e, $1e                                      ; $71c2: $1e $1e
	rra                                              ; $71c4: $1f
	inc  de                                          ; $71c5: $13
	ccf                                              ; $71c6: $3f
	ld   [hl], $3f                                   ; $71c7: $36 $3f

jr_08c_71c9:
	ccf                                              ; $71c9: $3f
	ld   a, a                                        ; $71ca: $7f
	ld   a, a                                        ; $71cb: $7f
	ld   a, a                                        ; $71cc: $7f
	ld   a, a                                        ; $71cd: $7f
	ld   a, l                                        ; $71ce: $7d
	ld   a, a                                        ; $71cf: $7f
	ld   a, c                                        ; $71d0: $79
	ld   a, a                                        ; $71d1: $7f
	jr   c, jr_08c_7213                              ; $71d2: $38 $3f

	jr   nc, jr_08c_7215                             ; $71d4: $30 $3f

	ld   [hl], $3f                                   ; $71d6: $36 $3f
	jr   z, jr_08c_7209                              ; $71d8: $28 $2f

	daa                                              ; $71da: $27
	daa                                              ; $71db: $27
	jr   nz, jr_08c_71fe                             ; $71dc: $20 $20

	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	ld   a, b                                        ; $71e2: $78
	ld   a, b                                        ; $71e3: $78
	ld   hl, sp-$38                                  ; $71e4: $f8 $c8
	db   $fc                                         ; $71e6: $fc
	ld   l, h                                        ; $71e7: $6c
	db   $fc                                         ; $71e8: $fc
	db   $fc                                         ; $71e9: $fc
	cp   $fe                                         ; $71ea: $fe $fe
	ld   a, [hl]                                     ; $71ec: $7e
	cp   $5e                                         ; $71ed: $fe $5e
	cp   $5e                                         ; $71ef: $fe $5e
	cp   $1c                                         ; $71f1: $fe $1c
	db   $fc                                         ; $71f3: $fc
	inc  c                                           ; $71f4: $0c
	db   $fc                                         ; $71f5: $fc
	ld   l, h                                        ; $71f6: $6c
	db   $fc                                         ; $71f7: $fc
	inc  d                                           ; $71f8: $14
	db   $f4                                         ; $71f9: $f4
	db   $e4                                         ; $71fa: $e4
	db   $e4                                         ; $71fb: $e4
	inc  b                                           ; $71fc: $04
	inc  b                                           ; $71fd: $04

jr_08c_71fe:
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	rlca                                             ; $7202: $07
	rlca                                             ; $7203: $07
	rra                                              ; $7204: $1f
	jr   jr_08c_723f                                 ; $7205: $18 $38

	daa                                              ; $7207: $27
	scf                                              ; $7208: $37

jr_08c_7209:
	jr   z, jr_08c_728a                              ; $7209: $28 $7f

	ld   d, b                                        ; $720b: $50
	ld   a, a                                        ; $720c: $7f
	ld   d, b                                        ; $720d: $50
	ld   a, d                                        ; $720e: $7a
	ld   d, l                                        ; $720f: $55
	ld   a, d                                        ; $7210: $7a
	ld   d, l                                        ; $7211: $55
	ld   a, [hl]                                     ; $7212: $7e

jr_08c_7213:
	ld   e, a                                        ; $7213: $5f
	halt                                             ; $7214: $76

jr_08c_7215:
	ld   e, a                                        ; $7215: $5f
	ld   [hl], b                                     ; $7216: $70
	ld   e, a                                        ; $7217: $5f
	ld   a, b                                        ; $7218: $78
	ld   e, a                                        ; $7219: $5f
	scf                                              ; $721a: $37
	scf                                              ; $721b: $37
	db   $10                                         ; $721c: $10
	stop                                             ; $721d: $10 $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	ldh  [$e0], a                                    ; $7222: $e0 $e0
	ld   hl, sp+$18                                  ; $7224: $f8 $18
	inc  e                                           ; $7226: $1c
	db   $e4                                         ; $7227: $e4
	db   $ec                                         ; $7228: $ec
	inc  d                                           ; $7229: $14
	cp   $0a                                         ; $722a: $fe $0a
	cp   $0a                                         ; $722c: $fe $0a
	ld   e, [hl]                                     ; $722e: $5e
	xor  d                                           ; $722f: $aa
	ld   e, [hl]                                     ; $7230: $5e
	xor  d                                           ; $7231: $aa
	ld   a, [hl]                                     ; $7232: $7e
	ld   a, [$fa6e]                                  ; $7233: $fa $6e $fa
	ld   c, $fa                                      ; $7236: $0e $fa
	ld   e, $fa                                      ; $7238: $1e $fa
	db   $ec                                         ; $723a: $ec
	db   $ec                                         ; $723b: $ec
	ld   [$0008], sp                                 ; $723c: $08 $08 $00

jr_08c_723f:
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	rlca                                             ; $7242: $07
	rlca                                             ; $7243: $07
	rra                                              ; $7244: $1f
	jr   jr_08c_727f                                 ; $7245: $18 $38

	daa                                              ; $7247: $27
	scf                                              ; $7248: $37
	jr   z, jr_08c_72ca                              ; $7249: $28 $7f

	ld   d, b                                        ; $724b: $50
	ld   a, a                                        ; $724c: $7f
	ld   d, b                                        ; $724d: $50
	ld   a, d                                        ; $724e: $7a
	ld   d, l                                        ; $724f: $55
	ld   a, d                                        ; $7250: $7a
	ld   d, l                                        ; $7251: $55
	ld   a, [hl]                                     ; $7252: $7e
	ld   e, a                                        ; $7253: $5f
	halt                                             ; $7254: $76
	ld   e, a                                        ; $7255: $5f
	ld   [hl], b                                     ; $7256: $70
	ld   e, a                                        ; $7257: $5f
	ld   a, c                                        ; $7258: $79
	ld   e, a                                        ; $7259: $5f
	scf                                              ; $725a: $37
	scf                                              ; $725b: $37
	db   $10                                         ; $725c: $10
	stop                                             ; $725d: $10 $00
	nop                                              ; $725f: $00
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	ldh  [$e0], a                                    ; $7262: $e0 $e0
	ld   hl, sp+$18                                  ; $7264: $f8 $18
	inc  e                                           ; $7266: $1c
	db   $e4                                         ; $7267: $e4
	db   $ec                                         ; $7268: $ec
	inc  d                                           ; $7269: $14
	cp   $0a                                         ; $726a: $fe $0a
	cp   $0a                                         ; $726c: $fe $0a
	ld   e, [hl]                                     ; $726e: $5e
	xor  d                                           ; $726f: $aa
	ld   e, [hl]                                     ; $7270: $5e
	xor  d                                           ; $7271: $aa
	ld   a, [hl]                                     ; $7272: $7e
	ld   a, [$fa6e]                                  ; $7273: $fa $6e $fa
	ld   c, $fa                                      ; $7276: $0e $fa
	sbc  [hl]                                        ; $7278: $9e
	ld   a, [$ecec]                                  ; $7279: $fa $ec $ec
	ld   [$0008], sp                                 ; $727c: $08 $08 $00

jr_08c_727f:
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	rlca                                             ; $7282: $07
	rlca                                             ; $7283: $07
	rra                                              ; $7284: $1f
	jr   @+$41                                       ; $7285: $18 $3f

	jr   nz, jr_08c_72c1                             ; $7287: $20 $38

	daa                                              ; $7289: $27

jr_08c_728a:
	ld   [hl], a                                     ; $728a: $77
	ld   c, b                                        ; $728b: $48
	ld   a, a                                        ; $728c: $7f
	ld   d, b                                        ; $728d: $50
	ld   a, a                                        ; $728e: $7f
	ld   d, b                                        ; $728f: $50
	ld   a, d                                        ; $7290: $7a
	ld   d, l                                        ; $7291: $55
	ld   a, d                                        ; $7292: $7a
	ld   d, l                                        ; $7293: $55
	ld   a, [hl]                                     ; $7294: $7e
	ld   e, a                                        ; $7295: $5f
	halt                                             ; $7296: $76
	ld   e, a                                        ; $7297: $5f
	jr   c, @+$41                                    ; $7298: $38 $3f

	scf                                              ; $729a: $37
	scf                                              ; $729b: $37
	db   $10                                         ; $729c: $10
	stop                                             ; $729d: $10 $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	ldh  [$e0], a                                    ; $72a2: $e0 $e0
	ld   hl, sp+$18                                  ; $72a4: $f8 $18
	db   $fc                                         ; $72a6: $fc
	inc  b                                           ; $72a7: $04
	inc  e                                           ; $72a8: $1c
	db   $e4                                         ; $72a9: $e4
	xor  $12                                         ; $72aa: $ee $12
	cp   $0a                                         ; $72ac: $fe $0a
	cp   $0a                                         ; $72ae: $fe $0a
	ld   e, [hl]                                     ; $72b0: $5e
	xor  d                                           ; $72b1: $aa
	ld   e, [hl]                                     ; $72b2: $5e
	xor  d                                           ; $72b3: $aa
	ld   a, [hl]                                     ; $72b4: $7e
	ld   a, [$fa6e]                                  ; $72b5: $fa $6e $fa
	inc  e                                           ; $72b8: $1c
	db   $fc                                         ; $72b9: $fc
	db   $ec                                         ; $72ba: $ec
	db   $ec                                         ; $72bb: $ec
	ld   [$0008], sp                                 ; $72bc: $08 $08 $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00

jr_08c_72c1:
	nop                                              ; $72c1: $00
	rlca                                             ; $72c2: $07
	rlca                                             ; $72c3: $07
	rra                                              ; $72c4: $1f
	jr   @+$41                                       ; $72c5: $18 $3f

	jr   nz, jr_08c_7301                             ; $72c7: $20 $38

	daa                                              ; $72c9: $27

jr_08c_72ca:
	ld   [hl], a                                     ; $72ca: $77
	ld   c, b                                        ; $72cb: $48
	ld   a, a                                        ; $72cc: $7f
	ld   d, b                                        ; $72cd: $50
	ld   a, a                                        ; $72ce: $7f
	ld   d, b                                        ; $72cf: $50
	ld   a, d                                        ; $72d0: $7a
	ld   d, l                                        ; $72d1: $55
	ld   a, d                                        ; $72d2: $7a
	ld   d, l                                        ; $72d3: $55
	ld   [hl], b                                     ; $72d4: $70
	ld   e, a                                        ; $72d5: $5f
	halt                                             ; $72d6: $76
	ld   e, a                                        ; $72d7: $5f
	jr   c, @+$41                                    ; $72d8: $38 $3f

	scf                                              ; $72da: $37
	scf                                              ; $72db: $37
	db   $10                                         ; $72dc: $10
	stop                                             ; $72dd: $10 $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	ldh  [$e0], a                                    ; $72e2: $e0 $e0
	ld   hl, sp+$18                                  ; $72e4: $f8 $18
	db   $fc                                         ; $72e6: $fc
	inc  b                                           ; $72e7: $04
	inc  e                                           ; $72e8: $1c
	db   $e4                                         ; $72e9: $e4
	xor  $12                                         ; $72ea: $ee $12
	cp   $0a                                         ; $72ec: $fe $0a
	cp   $0a                                         ; $72ee: $fe $0a
	ld   e, [hl]                                     ; $72f0: $5e
	xor  d                                           ; $72f1: $aa
	ld   e, [hl]                                     ; $72f2: $5e
	xor  d                                           ; $72f3: $aa
	ld   c, $fa                                      ; $72f4: $0e $fa
	ld   l, [hl]                                     ; $72f6: $6e
	ld   a, [$fc1c]                                  ; $72f7: $fa $1c $fc
	db   $ec                                         ; $72fa: $ec
	db   $ec                                         ; $72fb: $ec
	ld   [$0008], sp                                 ; $72fc: $08 $08 $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00

jr_08c_7301:
	nop                                              ; $7301: $00
	rlca                                             ; $7302: $07
	rlca                                             ; $7303: $07
	rra                                              ; $7304: $1f
	jr   @+$41                                       ; $7305: $18 $3f

	jr   nz, @+$41                                   ; $7307: $20 $3f

	ld   [hl+], a                                    ; $7309: $22
	ld   a, a                                        ; $730a: $7f
	ld   b, [hl]                                     ; $730b: $46
	ld   a, c                                        ; $730c: $79
	ld   c, a                                        ; $730d: $4f
	ld   [hl], c                                     ; $730e: $71
	ld   e, a                                        ; $730f: $5f
	ld   [hl], b                                     ; $7310: $70
	ld   e, a                                        ; $7311: $5f
	ld   a, [hl]                                     ; $7312: $7e
	ld   e, a                                        ; $7313: $5f
	ld   [hl], $3f                                   ; $7314: $36 $3f
	db   $10                                         ; $7316: $10
	rra                                              ; $7317: $1f
	ld   [$070f], sp                                 ; $7318: $08 $0f $07
	rlca                                             ; $731b: $07
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	ldh  [$e0], a                                    ; $7322: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $7324: $f0 $10
	ld   hl, sp+$08                                  ; $7326: $f8 $08
	db   $fc                                         ; $7328: $fc
	inc  b                                           ; $7329: $04
	db   $fc                                         ; $732a: $fc
	inc  b                                           ; $732b: $04
	cp   $22                                         ; $732c: $fe $22
	cp   $12                                         ; $732e: $fe $12
	cp   $92                                         ; $7330: $fe $92
	cp   $92                                         ; $7332: $fe $92
	db   $fc                                         ; $7334: $fc
	db   $fc                                         ; $7335: $fc
	ld   [$10f8], sp                                 ; $7336: $08 $f8 $10
	ldh  a, [$e0]                                    ; $7339: $f0 $e0
	ldh  [rP1], a                                    ; $733b: $e0 $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	rlca                                             ; $7342: $07
	rlca                                             ; $7343: $07
	rra                                              ; $7344: $1f
	jr   jr_08c_7386                                 ; $7345: $18 $3f

	jr   nz, @+$41                                   ; $7347: $20 $3f

	ld   [hl+], a                                    ; $7349: $22
	ld   a, a                                        ; $734a: $7f
	ld   b, [hl]                                     ; $734b: $46
	ld   a, c                                        ; $734c: $79
	ld   c, a                                        ; $734d: $4f
	ld   [hl], c                                     ; $734e: $71
	ld   e, a                                        ; $734f: $5f
	ld   [hl], b                                     ; $7350: $70
	ld   e, a                                        ; $7351: $5f
	ld   a, [hl]                                     ; $7352: $7e
	ld   e, a                                        ; $7353: $5f
	ld   [hl], $3f                                   ; $7354: $36 $3f
	db   $10                                         ; $7356: $10
	rra                                              ; $7357: $1f
	add  hl, bc                                      ; $7358: $09
	rrca                                             ; $7359: $0f
	rlca                                             ; $735a: $07
	rlca                                             ; $735b: $07
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	ldh  [$e0], a                                    ; $7362: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $7364: $f0 $10
	ld   hl, sp+$08                                  ; $7366: $f8 $08
	db   $fc                                         ; $7368: $fc
	inc  b                                           ; $7369: $04
	db   $fc                                         ; $736a: $fc
	inc  b                                           ; $736b: $04
	cp   $22                                         ; $736c: $fe $22
	cp   $12                                         ; $736e: $fe $12
	cp   $92                                         ; $7370: $fe $92
	cp   $92                                         ; $7372: $fe $92
	db   $fc                                         ; $7374: $fc
	db   $fc                                         ; $7375: $fc
	ld   [$90f8], sp                                 ; $7376: $08 $f8 $90
	ldh  a, [$e0]                                    ; $7379: $f0 $e0
	ldh  [rP1], a                                    ; $737b: $e0 $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	rrca                                             ; $7382: $0f
	rrca                                             ; $7383: $0f
	rra                                              ; $7384: $1f
	db   $10                                         ; $7385: $10

jr_08c_7386:
	ccf                                              ; $7386: $3f
	jr   nz, @+$41                                   ; $7387: $20 $3f

	jr   nz, @+$81                                   ; $7389: $20 $7f

	ld   b, d                                        ; $738b: $42
	ld   a, a                                        ; $738c: $7f
	ld   b, [hl]                                     ; $738d: $46
	ld   a, c                                        ; $738e: $79
	ld   c, a                                        ; $738f: $4f
	ld   [hl], c                                     ; $7390: $71
	ld   e, a                                        ; $7391: $5f
	jr   nc, @+$41                                   ; $7392: $30 $3f

	ld   a, $3f                                      ; $7394: $3e $3f
	ld   d, $1f                                      ; $7396: $16 $1f
	ld   [$070f], sp                                 ; $7398: $08 $0f $07
	rlca                                             ; $739b: $07
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	ldh  [$e0], a                                    ; $73a2: $e0 $e0
	ld   hl, sp+$18                                  ; $73a4: $f8 $18
	db   $fc                                         ; $73a6: $fc
	inc  b                                           ; $73a7: $04
	db   $fc                                         ; $73a8: $fc
	inc  b                                           ; $73a9: $04
	cp   $02                                         ; $73aa: $fe $02
	cp   $02                                         ; $73ac: $fe $02
	cp   $22                                         ; $73ae: $fe $22
	cp   $12                                         ; $73b0: $fe $12
	cp   $92                                         ; $73b2: $fe $92
	db   $fc                                         ; $73b4: $fc
	sbc  h                                           ; $73b5: $9c
	ld   hl, sp-$08                                  ; $73b6: $f8 $f8
	db   $10                                         ; $73b8: $10
	ldh  a, [$e0]                                    ; $73b9: $f0 $e0
	ldh  [rP1], a                                    ; $73bb: $e0 $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	rrca                                             ; $73c2: $0f
	rrca                                             ; $73c3: $0f
	rra                                              ; $73c4: $1f
	db   $10                                         ; $73c5: $10
	ccf                                              ; $73c6: $3f
	jr   nz, jr_08c_7408                             ; $73c7: $20 $3f

	jr   nz, @+$81                                   ; $73c9: $20 $7f

	ld   b, d                                        ; $73cb: $42
	ld   a, a                                        ; $73cc: $7f
	ld   b, [hl]                                     ; $73cd: $46
	ld   a, c                                        ; $73ce: $79
	ld   c, a                                        ; $73cf: $4f
	ld   [hl], c                                     ; $73d0: $71
	ld   e, a                                        ; $73d1: $5f
	jr   nc, jr_08c_7413                             ; $73d2: $30 $3f

	jr   nc, jr_08c_7415                             ; $73d4: $30 $3f

	ld   d, $1f                                      ; $73d6: $16 $1f
	ld   [$070f], sp                                 ; $73d8: $08 $0f $07
	rlca                                             ; $73db: $07
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	ldh  [$e0], a                                    ; $73e2: $e0 $e0
	ld   hl, sp+$18                                  ; $73e4: $f8 $18
	db   $fc                                         ; $73e6: $fc
	inc  b                                           ; $73e7: $04
	db   $fc                                         ; $73e8: $fc
	inc  b                                           ; $73e9: $04
	cp   $02                                         ; $73ea: $fe $02
	cp   $02                                         ; $73ec: $fe $02
	cp   $22                                         ; $73ee: $fe $22
	cp   $12                                         ; $73f0: $fe $12
	cp   $92                                         ; $73f2: $fe $92
	db   $fc                                         ; $73f4: $fc
	sbc  h                                           ; $73f5: $9c
	ld   hl, sp-$08                                  ; $73f6: $f8 $f8
	db   $10                                         ; $73f8: $10
	ldh  a, [$e0]                                    ; $73f9: $f0 $e0
	ldh  [rP1], a                                    ; $73fb: $e0 $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	ld   a, $3e                                      ; $7400: $3e $3e
	inc  hl                                          ; $7402: $23
	ccf                                              ; $7403: $3f
	ld   [hl+], a                                    ; $7404: $22
	ccf                                              ; $7405: $3f
	ccf                                              ; $7406: $3f
	add  hl, sp                                      ; $7407: $39

jr_08c_7408:
	ccf                                              ; $7408: $3f
	jr   nz, jr_08c_748a                             ; $7409: $20 $7f

	ld   [hl], e                                     ; $740b: $73
	ld   a, [hl]                                     ; $740c: $7e
	ld   b, e                                        ; $740d: $43
	ld   a, [hl]                                     ; $740e: $7e
	ld   b, a                                        ; $740f: $47
	ld   a, d                                        ; $7410: $7a
	ld   c, a                                        ; $7411: $4f
	ld   a, [hl]                                     ; $7412: $7e

jr_08c_7413:
	ld   e, a                                        ; $7413: $5f
	ld   [hl], d                                     ; $7414: $72

jr_08c_7415:
	ld   e, a                                        ; $7415: $5f
	halt                                             ; $7416: $76
	ld   e, a                                        ; $7417: $5f
	jr   c, jr_08c_7459                              ; $7418: $38 $3f

	rla                                              ; $741a: $17
	rla                                              ; $741b: $17
	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	ld   a, h                                        ; $7420: $7c
	ld   a, h                                        ; $7421: $7c
	call nz, Call_08c_44fc                           ; $7422: $c4 $fc $44
	db   $fc                                         ; $7425: $fc
	db   $fc                                         ; $7426: $fc
	sbc  h                                           ; $7427: $9c
	db   $fc                                         ; $7428: $fc
	inc  b                                           ; $7429: $04
	cp   $ce                                         ; $742a: $fe $ce
	ld   a, [hl]                                     ; $742c: $7e
	jp   nz, $e27e                                   ; $742d: $c2 $7e $e2

	ld   e, [hl]                                     ; $7430: $5e
	ldh  a, [c]                                      ; $7431: $f2
	ld   a, [hl]                                     ; $7432: $7e
	ld   a, [$fa2e]                                  ; $7433: $fa $2e $fa
	ld   l, [hl]                                     ; $7436: $6e
	ld   a, [$fc1c]                                  ; $7437: $fa $1c $fc
	add  sp, -$18                                    ; $743a: $e8 $e8
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	ld   a, $3e                                      ; $7440: $3e $3e
	inc  hl                                          ; $7442: $23
	ccf                                              ; $7443: $3f
	ld   [hl+], a                                    ; $7444: $22
	ccf                                              ; $7445: $3f
	ccf                                              ; $7446: $3f
	add  hl, sp                                      ; $7447: $39
	ccf                                              ; $7448: $3f
	jr   nz, jr_08c_74ca                             ; $7449: $20 $7f

	ld   [hl], e                                     ; $744b: $73
	ld   a, [hl]                                     ; $744c: $7e
	ld   b, e                                        ; $744d: $43
	ld   a, [hl]                                     ; $744e: $7e
	ld   b, a                                        ; $744f: $47
	ld   a, d                                        ; $7450: $7a
	ld   c, a                                        ; $7451: $4f
	ld   a, [hl]                                     ; $7452: $7e
	ld   e, a                                        ; $7453: $5f
	ld   [hl], d                                     ; $7454: $72
	ld   e, a                                        ; $7455: $5f
	halt                                             ; $7456: $76
	ld   e, a                                        ; $7457: $5f
	add  hl, sp                                      ; $7458: $39

jr_08c_7459:
	ccf                                              ; $7459: $3f
	rla                                              ; $745a: $17
	rla                                              ; $745b: $17
	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	ld   a, h                                        ; $7460: $7c
	ld   a, h                                        ; $7461: $7c
	call nz, Call_08c_44fc                           ; $7462: $c4 $fc $44
	db   $fc                                         ; $7465: $fc
	db   $fc                                         ; $7466: $fc
	sbc  h                                           ; $7467: $9c
	db   $fc                                         ; $7468: $fc
	inc  b                                           ; $7469: $04
	cp   $ce                                         ; $746a: $fe $ce
	ld   a, [hl]                                     ; $746c: $7e
	jp   nz, $e27e                                   ; $746d: $c2 $7e $e2

	ld   e, [hl]                                     ; $7470: $5e
	ldh  a, [c]                                      ; $7471: $f2
	ld   a, [hl]                                     ; $7472: $7e
	ld   a, [$fa2e]                                  ; $7473: $fa $2e $fa
	ld   l, [hl]                                     ; $7476: $6e
	ld   a, [$fc9c]                                  ; $7477: $fa $9c $fc
	add  sp, -$18                                    ; $747a: $e8 $e8
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	inc  a                                           ; $7482: $3c
	inc  a                                           ; $7483: $3c
	inc  hl                                          ; $7484: $23
	ccf                                              ; $7485: $3f
	ld   h, $3f                                      ; $7486: $26 $3f
	ld   a, a                                        ; $7488: $7f
	ld   e, c                                        ; $7489: $59

jr_08c_748a:
	ld   a, a                                        ; $748a: $7f
	ld   d, b                                        ; $748b: $50
	ld   a, a                                        ; $748c: $7f
	ld   h, e                                        ; $748d: $63
	ld   a, [hl]                                     ; $748e: $7e
	ld   b, e                                        ; $748f: $43
	ld   a, [hl]                                     ; $7490: $7e
	ld   b, a                                        ; $7491: $47
	ld   a, d                                        ; $7492: $7a
	ld   c, a                                        ; $7493: $4f
	ld   a, [hl]                                     ; $7494: $7e
	ld   e, a                                        ; $7495: $5f
	ld   [hl], $3f                                   ; $7496: $36 $3f
	jr   c, @+$41                                    ; $7498: $38 $3f

	rla                                              ; $749a: $17
	rla                                              ; $749b: $17
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	inc  a                                           ; $74a2: $3c
	inc  a                                           ; $74a3: $3c
	call nz, Call_08c_64fc                           ; $74a4: $c4 $fc $64
	db   $fc                                         ; $74a7: $fc
	cp   $9a                                         ; $74a8: $fe $9a
	cp   $0a                                         ; $74aa: $fe $0a
	cp   $c6                                         ; $74ac: $fe $c6
	ld   a, [hl]                                     ; $74ae: $7e
	jp   nz, $e27e                                   ; $74af: $c2 $7e $e2

	ld   e, [hl]                                     ; $74b2: $5e
	ldh  a, [c]                                      ; $74b3: $f2
	ld   a, [hl]                                     ; $74b4: $7e
	ld   a, [$fc6c]                                  ; $74b5: $fa $6c $fc
	inc  e                                           ; $74b8: $1c
	db   $fc                                         ; $74b9: $fc
	add  sp, -$18                                    ; $74ba: $e8 $e8
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	inc  a                                           ; $74c2: $3c
	inc  a                                           ; $74c3: $3c
	inc  hl                                          ; $74c4: $23
	ccf                                              ; $74c5: $3f
	ld   h, $3f                                      ; $74c6: $26 $3f
	ld   a, a                                        ; $74c8: $7f
	ld   e, c                                        ; $74c9: $59

jr_08c_74ca:
	ld   a, a                                        ; $74ca: $7f
	ld   d, b                                        ; $74cb: $50
	ld   a, a                                        ; $74cc: $7f
	ld   h, e                                        ; $74cd: $63
	ld   a, [hl]                                     ; $74ce: $7e
	ld   b, e                                        ; $74cf: $43
	ld   a, [hl]                                     ; $74d0: $7e
	ld   b, a                                        ; $74d1: $47
	ld   a, d                                        ; $74d2: $7a
	ld   c, a                                        ; $74d3: $4f
	ld   [hl], b                                     ; $74d4: $70
	ld   e, a                                        ; $74d5: $5f
	ld   [hl], $3f                                   ; $74d6: $36 $3f
	jr   c, @+$41                                    ; $74d8: $38 $3f

	rla                                              ; $74da: $17
	rla                                              ; $74db: $17
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	inc  a                                           ; $74e2: $3c
	inc  a                                           ; $74e3: $3c
	call nz, Call_08c_64fc                           ; $74e4: $c4 $fc $64
	db   $fc                                         ; $74e7: $fc
	cp   $9a                                         ; $74e8: $fe $9a
	cp   $0a                                         ; $74ea: $fe $0a
	cp   $c6                                         ; $74ec: $fe $c6
	ld   a, [hl]                                     ; $74ee: $7e
	jp   nz, $e27e                                   ; $74ef: $c2 $7e $e2

	ld   e, [hl]                                     ; $74f2: $5e
	ldh  a, [c]                                      ; $74f3: $f2
	ld   c, $fa                                      ; $74f4: $0e $fa
	ld   l, h                                        ; $74f6: $6c
	db   $fc                                         ; $74f7: $fc
	inc  e                                           ; $74f8: $1c
	db   $fc                                         ; $74f9: $fc
	add  sp, -$18                                    ; $74fa: $e8 $e8
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	rrca                                             ; $7502: $0f
	rrca                                             ; $7503: $0f
	ld   a, a                                        ; $7504: $7f
	ld   [hl], b                                     ; $7505: $70
	ccf                                              ; $7506: $3f
	jr   c, @+$41                                    ; $7507: $38 $3f

	ld   hl, $427f                                   ; $7509: $21 $7f $42
	ld   a, a                                        ; $750c: $7f
	ld   c, d                                        ; $750d: $4a
	ld   a, a                                        ; $750e: $7f
	ld   c, [hl]                                     ; $750f: $4e
	ld   a, e                                        ; $7510: $7b
	ld   d, [hl]                                     ; $7511: $56
	ld   [hl], c                                     ; $7512: $71
	ld   e, a                                        ; $7513: $5f
	dec  sp                                          ; $7514: $3b
	dec  [hl]                                        ; $7515: $35
	cp   $df                                         ; $7516: $fe $df
	ld   hl, sp-$61                                  ; $7518: $f8 $9f
	rst  $20                                         ; $751a: $e7
	rst  $20                                         ; $751b: $e7
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	ld   [hl], b                                     ; $7522: $70
	ld   [hl], b                                     ; $7523: $70
	ld   hl, sp-$78                                  ; $7524: $f8 $88
	db   $fc                                         ; $7526: $fc
	inc  b                                           ; $7527: $04
	cp   $0a                                         ; $7528: $fe $0a
	cp   $46                                         ; $752a: $fe $46
	cp   $56                                         ; $752c: $fe $56
	cp   $f2                                         ; $752e: $fe $f2
	sbc  $aa                                         ; $7530: $de $aa
	adc  [hl]                                        ; $7532: $8e
	ld   a, [$acdc]                                  ; $7533: $fa $dc $ac
	ld   a, a                                        ; $7536: $7f
	ei                                               ; $7537: $fb
	rra                                              ; $7538: $1f
	ld   sp, hl                                      ; $7539: $f9
	rst  $20                                         ; $753a: $e7
	rst  $20                                         ; $753b: $e7
	nop                                              ; $753c: $00
	nop                                              ; $753d: $00
	nop                                              ; $753e: $00
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	rrca                                             ; $7542: $0f
	rrca                                             ; $7543: $0f
	ld   a, a                                        ; $7544: $7f
	ld   [hl], b                                     ; $7545: $70
	ccf                                              ; $7546: $3f
	jr   c, jr_08c_7588                              ; $7547: $38 $3f

	ld   hl, $427f                                   ; $7549: $21 $7f $42
	ld   a, a                                        ; $754c: $7f
	ld   c, d                                        ; $754d: $4a
	ld   a, a                                        ; $754e: $7f
	ld   c, [hl]                                     ; $754f: $4e
	ld   a, e                                        ; $7550: $7b
	ld   d, [hl]                                     ; $7551: $56
	ld   [hl], c                                     ; $7552: $71
	ld   e, a                                        ; $7553: $5f
	dec  sp                                          ; $7554: $3b
	dec  [hl]                                        ; $7555: $35
	cp   $df                                         ; $7556: $fe $df
	ld   sp, hl                                      ; $7558: $f9
	sbc  a                                           ; $7559: $9f
	rst  $20                                         ; $755a: $e7
	rst  $20                                         ; $755b: $e7
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	ld   [hl], b                                     ; $7562: $70
	ld   [hl], b                                     ; $7563: $70
	ld   hl, sp-$78                                  ; $7564: $f8 $88
	db   $fc                                         ; $7566: $fc
	inc  b                                           ; $7567: $04
	cp   $0a                                         ; $7568: $fe $0a
	cp   $46                                         ; $756a: $fe $46
	cp   $56                                         ; $756c: $fe $56
	cp   $72                                         ; $756e: $fe $72
	sbc  $aa                                         ; $7570: $de $aa
	adc  [hl]                                        ; $7572: $8e
	ld   a, [$acdc]                                  ; $7573: $fa $dc $ac
	ld   a, a                                        ; $7576: $7f
	ei                                               ; $7577: $fb
	sbc  a                                           ; $7578: $9f
	ld   sp, hl                                      ; $7579: $f9
	rst  $20                                         ; $757a: $e7
	rst  $20                                         ; $757b: $e7
	nop                                              ; $757c: $00
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	rlca                                             ; $7582: $07
	rlca                                             ; $7583: $07
	rra                                              ; $7584: $1f
	jr   @+$81                                       ; $7585: $18 $7f

	ld   a, b                                        ; $7587: $78

jr_08c_7588:
	ccf                                              ; $7588: $3f
	jr   nz, jr_08c_760a                             ; $7589: $20 $7f

	ld   b, c                                        ; $758b: $41
	ld   a, a                                        ; $758c: $7f
	ld   b, d                                        ; $758d: $42
	ld   a, a                                        ; $758e: $7f
	ld   c, d                                        ; $758f: $4a
	ld   a, a                                        ; $7590: $7f
	ld   c, [hl]                                     ; $7591: $4e
	ld   a, e                                        ; $7592: $7b
	halt                                             ; $7593: $76
	pop  af                                          ; $7594: $f1
	rst  $38                                         ; $7595: $ff
	ei                                               ; $7596: $fb
	sub  l                                           ; $7597: $95
	cp   $ff                                         ; $7598: $fe $ff
	rlca                                             ; $759a: $07
	rlca                                             ; $759b: $07
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	ld   h, b                                        ; $75a2: $60
	ld   h, b                                        ; $75a3: $60
	ld   hl, sp-$68                                  ; $75a4: $f8 $98
	db   $fc                                         ; $75a6: $fc
	add  h                                           ; $75a7: $84
	cp   $02                                         ; $75a8: $fe $02
	cp   $0a                                         ; $75aa: $fe $0a
	cp   $46                                         ; $75ac: $fe $46
	cp   $56                                         ; $75ae: $fe $56
	cp   $72                                         ; $75b0: $fe $72
	sbc  $ae                                         ; $75b2: $de $ae
	adc  a                                           ; $75b4: $8f
	rst  $38                                         ; $75b5: $ff
	rst  JumpTable                                         ; $75b6: $df
	xor  c                                           ; $75b7: $a9
	ld   a, a                                        ; $75b8: $7f
	rst  $38                                         ; $75b9: $ff
	ldh  [$e0], a                                    ; $75ba: $e0 $e0
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	rlca                                             ; $75c2: $07
	rlca                                             ; $75c3: $07
	rra                                              ; $75c4: $1f
	jr   @+$81                                       ; $75c5: $18 $7f

	ld   a, b                                        ; $75c7: $78
	ccf                                              ; $75c8: $3f
	jr   nz, jr_08c_764a                             ; $75c9: $20 $7f

	ld   b, c                                        ; $75cb: $41
	ld   a, a                                        ; $75cc: $7f
	ld   b, d                                        ; $75cd: $42
	ld   a, a                                        ; $75ce: $7f
	ld   c, d                                        ; $75cf: $4a
	ld   a, a                                        ; $75d0: $7f
	ld   c, [hl]                                     ; $75d1: $4e
	ld   a, e                                        ; $75d2: $7b
	halt                                             ; $75d3: $76
	pop  af                                          ; $75d4: $f1
	rst  $38                                         ; $75d5: $ff
	ei                                               ; $75d6: $fb
	sub  l                                           ; $75d7: $95
	cp   $ff                                         ; $75d8: $fe $ff
	rlca                                             ; $75da: $07
	rlca                                             ; $75db: $07
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	nop                                              ; $75e1: $00
	ld   h, b                                        ; $75e2: $60
	ld   h, b                                        ; $75e3: $60
	ld   hl, sp-$68                                  ; $75e4: $f8 $98
	db   $fc                                         ; $75e6: $fc
	add  h                                           ; $75e7: $84
	cp   $02                                         ; $75e8: $fe $02
	cp   $0a                                         ; $75ea: $fe $0a
	cp   $46                                         ; $75ec: $fe $46
	cp   $56                                         ; $75ee: $fe $56
	cp   $72                                         ; $75f0: $fe $72
	sbc  $ae                                         ; $75f2: $de $ae
	adc  a                                           ; $75f4: $8f
	rst  $38                                         ; $75f5: $ff
	rst  JumpTable                                         ; $75f6: $df
	xor  c                                           ; $75f7: $a9
	ld   a, a                                        ; $75f8: $7f
	rst  $38                                         ; $75f9: $ff
	ldh  [$e0], a                                    ; $75fa: $e0 $e0
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	rra                                              ; $7602: $1f
	rra                                              ; $7603: $1f
	rrca                                             ; $7604: $0f
	ld   [$303f], sp                                 ; $7605: $08 $3f $30
	ld   a, a                                        ; $7608: $7f
	ld   b, b                                        ; $7609: $40

jr_08c_760a:
	rst  $38                                         ; $760a: $ff
	ldh  [c], a                                      ; $760b: $e2
	ld   a, a                                        ; $760c: $7f
	ld   b, [hl]                                     ; $760d: $46
	ld   a, c                                        ; $760e: $79
	ld   c, a                                        ; $760f: $4f
	ld   [hl], c                                     ; $7610: $71
	ld   e, a                                        ; $7611: $5f
	ld   a, [hl]                                     ; $7612: $7e
	ld   e, a                                        ; $7613: $5f
	halt                                             ; $7614: $76
	ld   e, a                                        ; $7615: $5f
	ld   [hl], b                                     ; $7616: $70
	ld   e, a                                        ; $7617: $5f
	jr   z, jr_08c_7649                              ; $7618: $28 $2f

	daa                                              ; $761a: $27
	daa                                              ; $761b: $27
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	or   b                                           ; $7622: $b0
	or   b                                           ; $7623: $b0
	ld   hl, sp+$48                                  ; $7624: $f8 $48
	db   $fc                                         ; $7626: $fc
	inc  b                                           ; $7627: $04
	cp   $42                                         ; $7628: $fe $42
	rst  $38                                         ; $762a: $ff
	rst  $20                                         ; $762b: $e7
	cp   $e2                                         ; $762c: $fe $e2
	cp   $f2                                         ; $762e: $fe $f2
	ld   c, $fa                                      ; $7630: $0e $fa
	ld   a, [hl]                                     ; $7632: $7e
	cp   $6f                                         ; $7633: $fe $6f
	ei                                               ; $7635: $fb
	ld   c, $fa                                      ; $7636: $0e $fa
	inc  d                                           ; $7638: $14
	db   $f4                                         ; $7639: $f4
	db   $e4                                         ; $763a: $e4
	db   $e4                                         ; $763b: $e4
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	rra                                              ; $7642: $1f
	rra                                              ; $7643: $1f
	rrca                                             ; $7644: $0f
	ld   [$303f], sp                                 ; $7645: $08 $3f $30
	ld   a, a                                        ; $7648: $7f

jr_08c_7649:
	ld   b, b                                        ; $7649: $40

jr_08c_764a:
	rst  $38                                         ; $764a: $ff
	ldh  [c], a                                      ; $764b: $e2
	ld   a, a                                        ; $764c: $7f
	ld   b, [hl]                                     ; $764d: $46
	ld   a, c                                        ; $764e: $79
	ld   c, a                                        ; $764f: $4f
	ld   [hl], c                                     ; $7650: $71
	ld   e, a                                        ; $7651: $5f
	ld   a, [hl]                                     ; $7652: $7e
	ld   e, a                                        ; $7653: $5f
	halt                                             ; $7654: $76
	ld   e, a                                        ; $7655: $5f
	ld   [hl], b                                     ; $7656: $70
	ld   e, a                                        ; $7657: $5f
	add  hl, hl                                      ; $7658: $29
	cpl                                              ; $7659: $2f
	daa                                              ; $765a: $27
	daa                                              ; $765b: $27
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	or   b                                           ; $7662: $b0
	or   b                                           ; $7663: $b0
	ld   hl, sp+$48                                  ; $7664: $f8 $48
	db   $fc                                         ; $7666: $fc
	inc  b                                           ; $7667: $04
	cp   $42                                         ; $7668: $fe $42
	rst  $38                                         ; $766a: $ff
	rst  $20                                         ; $766b: $e7
	cp   $e2                                         ; $766c: $fe $e2
	cp   $f2                                         ; $766e: $fe $f2
	ld   c, $fa                                      ; $7670: $0e $fa
	ld   a, [hl]                                     ; $7672: $7e
	cp   $6f                                         ; $7673: $fe $6f
	ei                                               ; $7675: $fb
	ld   c, $fa                                      ; $7676: $0e $fa
	sub  h                                           ; $7678: $94
	db   $f4                                         ; $7679: $f4
	db   $e4                                         ; $767a: $e4
	db   $e4                                         ; $767b: $e4
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	nop                                              ; $7680: $00
	nop                                              ; $7681: $00
	rrca                                             ; $7682: $0f
	rrca                                             ; $7683: $0f
	rra                                              ; $7684: $1f
	db   $10                                         ; $7685: $10
	ccf                                              ; $7686: $3f
	jr   c, jr_08c_7708                              ; $7687: $38 $7f

	ld   b, b                                        ; $7689: $40
	ld   a, a                                        ; $768a: $7f
	ld   b, b                                        ; $768b: $40
	rst  $38                                         ; $768c: $ff
	ldh  [c], a                                      ; $768d: $e2
	ld   a, a                                        ; $768e: $7f
	ld   b, [hl]                                     ; $768f: $46
	ld   a, c                                        ; $7690: $79
	ld   c, a                                        ; $7691: $4f
	ld   [hl], c                                     ; $7692: $71
	ld   e, a                                        ; $7693: $5f
	ld   a, [hl]                                     ; $7694: $7e
	ld   e, a                                        ; $7695: $5f
	ld   [hl], $3f                                   ; $7696: $36 $3f
	jr   z, jr_08c_76c9                              ; $7698: $28 $2f

	daa                                              ; $769a: $27
	daa                                              ; $769b: $27
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	or   b                                           ; $76a2: $b0
	or   b                                           ; $76a3: $b0
	ld   hl, sp+$48                                  ; $76a4: $f8 $48
	db   $fc                                         ; $76a6: $fc
	ld   b, h                                        ; $76a7: $44
	db   $fc                                         ; $76a8: $fc
	inc  b                                           ; $76a9: $04
	cp   $42                                         ; $76aa: $fe $42
	rst  $38                                         ; $76ac: $ff
	rst  $20                                         ; $76ad: $e7
	cp   $e2                                         ; $76ae: $fe $e2
	cp   $f2                                         ; $76b0: $fe $f2
	rrca                                             ; $76b2: $0f
	ei                                               ; $76b3: $fb
	ld   a, [hl]                                     ; $76b4: $7e
	cp   $6c                                         ; $76b5: $fe $6c
	db   $fc                                         ; $76b7: $fc
	inc  d                                           ; $76b8: $14
	db   $f4                                         ; $76b9: $f4
	db   $e4                                         ; $76ba: $e4
	db   $e4                                         ; $76bb: $e4
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	rrca                                             ; $76c2: $0f
	rrca                                             ; $76c3: $0f
	rra                                              ; $76c4: $1f
	db   $10                                         ; $76c5: $10
	ccf                                              ; $76c6: $3f
	jr   c, jr_08c_7748                              ; $76c7: $38 $7f

jr_08c_76c9:
	ld   b, b                                        ; $76c9: $40
	ld   a, a                                        ; $76ca: $7f
	ld   b, b                                        ; $76cb: $40
	rst  $38                                         ; $76cc: $ff
	ldh  [c], a                                      ; $76cd: $e2
	ld   a, a                                        ; $76ce: $7f
	ld   b, [hl]                                     ; $76cf: $46
	ld   a, c                                        ; $76d0: $79
	ld   c, a                                        ; $76d1: $4f
	ld   [hl], c                                     ; $76d2: $71
	ld   e, a                                        ; $76d3: $5f
	ld   [hl], b                                     ; $76d4: $70
	ld   e, a                                        ; $76d5: $5f
	ld   [hl], $3f                                   ; $76d6: $36 $3f
	jr   z, jr_08c_7709                              ; $76d8: $28 $2f

	daa                                              ; $76da: $27
	daa                                              ; $76db: $27
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	or   b                                           ; $76e2: $b0
	or   b                                           ; $76e3: $b0
	ld   hl, sp+$48                                  ; $76e4: $f8 $48
	db   $fc                                         ; $76e6: $fc
	ld   b, h                                        ; $76e7: $44
	db   $fc                                         ; $76e8: $fc
	inc  b                                           ; $76e9: $04
	cp   $42                                         ; $76ea: $fe $42
	rst  $38                                         ; $76ec: $ff
	rst  $20                                         ; $76ed: $e7
	cp   $e2                                         ; $76ee: $fe $e2
	cp   $f2                                         ; $76f0: $fe $f2
	rrca                                             ; $76f2: $0f
	ei                                               ; $76f3: $fb
	ld   c, $fe                                      ; $76f4: $0e $fe
	ld   l, h                                        ; $76f6: $6c
	db   $fc                                         ; $76f7: $fc
	inc  d                                           ; $76f8: $14
	db   $f4                                         ; $76f9: $f4
	db   $e4                                         ; $76fa: $e4
	db   $e4                                         ; $76fb: $e4
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	nop                                              ; $7705: $00
	nop                                              ; $7706: $00
	nop                                              ; $7707: $00

jr_08c_7708:
	nop                                              ; $7708: $00

jr_08c_7709:
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
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
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00
	nop                                              ; $772f: $00
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
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

jr_08c_7748:
	nop                                              ; $7748: $00
	nop                                              ; $7749: $00
	nop                                              ; $774a: $00
	nop                                              ; $774b: $00
	nop                                              ; $774c: $00
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
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
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	nop                                              ; $782b: $00
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	nop                                              ; $782e: $00
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	nop                                              ; $7833: $00
	nop                                              ; $7834: $00
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
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
	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	nop                                              ; $7852: $00
	nop                                              ; $7853: $00
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
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	nop                                              ; $7867: $00
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	nop                                              ; $788c: $00
	nop                                              ; $788d: $00
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	nop                                              ; $7890: $00
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
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
	nop                                              ; $78ae: $00
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	nop                                              ; $78ba: $00
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00
	nop                                              ; $78ce: $00
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	nop                                              ; $78d7: $00
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
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
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00

Call_08c_78fc:
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	ld   bc, $0b01                                   ; $7900: $01 $01 $0b
	dec  bc                                          ; $7903: $0b
	rra                                              ; $7904: $1f
	rra                                              ; $7905: $1f
	rra                                              ; $7906: $1f
	rra                                              ; $7907: $1f
	ccf                                              ; $7908: $3f
	ccf                                              ; $7909: $3f
	ccf                                              ; $790a: $3f
	ccf                                              ; $790b: $3f
	ld   sp, $303f                                   ; $790c: $31 $3f $30
	ccf                                              ; $790f: $3f
	ld   l, $3f                                      ; $7910: $2e $3f
	ld   h, $3f                                      ; $7912: $26 $3f
	inc  d                                           ; $7914: $14
	rra                                              ; $7915: $1f
	db   $10                                         ; $7916: $10
	rra                                              ; $7917: $1f
	ld   [$070f], sp                                 ; $7918: $08 $0f $07
	rlca                                             ; $791b: $07
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	jr   nz, @+$22                                   ; $7920: $20 $20

	add  sp, -$18                                    ; $7922: $e8 $e8
	ld   hl, sp-$08                                  ; $7924: $f8 $f8
	db   $fc                                         ; $7926: $fc
	db   $fc                                         ; $7927: $fc
	db   $fc                                         ; $7928: $fc
	db   $fc                                         ; $7929: $fc
	db   $fc                                         ; $792a: $fc
	db   $fc                                         ; $792b: $fc
	adc  h                                           ; $792c: $8c
	db   $fc                                         ; $792d: $fc

jr_08c_792e:
	inc  c                                           ; $792e: $0c
	db   $fc                                         ; $792f: $fc
	ld   [hl], h                                     ; $7930: $74
	db   $fc                                         ; $7931: $fc
	ld   h, h                                        ; $7932: $64
	db   $fc                                         ; $7933: $fc
	jr   z, jr_08c_792e                              ; $7934: $28 $f8

	ld   [$10f8], sp                                 ; $7936: $08 $f8 $10
	ldh  a, [$e0]                                    ; $7939: $f0 $e0
	ldh  [rP1], a                                    ; $793b: $e0 $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	ld   bc, $0b01                                   ; $7940: $01 $01 $0b
	dec  bc                                          ; $7943: $0b
	rra                                              ; $7944: $1f
	rra                                              ; $7945: $1f
	rra                                              ; $7946: $1f
	rra                                              ; $7947: $1f
	ccf                                              ; $7948: $3f
	ccf                                              ; $7949: $3f
	ccf                                              ; $794a: $3f
	ccf                                              ; $794b: $3f
	ld   sp, $303f                                   ; $794c: $31 $3f $30
	ccf                                              ; $794f: $3f
	ld   l, $3f                                      ; $7950: $2e $3f
	ld   h, $3f                                      ; $7952: $26 $3f
	inc  d                                           ; $7954: $14
	rra                                              ; $7955: $1f
	db   $10                                         ; $7956: $10
	rra                                              ; $7957: $1f
	add  hl, bc                                      ; $7958: $09
	rrca                                             ; $7959: $0f
	rlca                                             ; $795a: $07
	rlca                                             ; $795b: $07
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	jr   nz, jr_08c_7982                             ; $7960: $20 $20

	add  sp, -$18                                    ; $7962: $e8 $e8
	ld   hl, sp-$08                                  ; $7964: $f8 $f8
	db   $fc                                         ; $7966: $fc
	db   $fc                                         ; $7967: $fc
	db   $fc                                         ; $7968: $fc
	db   $fc                                         ; $7969: $fc
	db   $fc                                         ; $796a: $fc
	db   $fc                                         ; $796b: $fc
	adc  h                                           ; $796c: $8c
	db   $fc                                         ; $796d: $fc

jr_08c_796e:
	inc  c                                           ; $796e: $0c
	db   $fc                                         ; $796f: $fc
	ld   [hl], h                                     ; $7970: $74
	db   $fc                                         ; $7971: $fc
	ld   h, h                                        ; $7972: $64
	db   $fc                                         ; $7973: $fc
	jr   z, jr_08c_796e                              ; $7974: $28 $f8

	ld   [$90f8], sp                                 ; $7976: $08 $f8 $90
	ldh  a, [$e0]                                    ; $7979: $f0 $e0
	ldh  [rP1], a                                    ; $797b: $e0 $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00

jr_08c_7982:
	dec  bc                                          ; $7982: $0b
	dec  bc                                          ; $7983: $0b
	rra                                              ; $7984: $1f
	rra                                              ; $7985: $1f
	rra                                              ; $7986: $1f
	rra                                              ; $7987: $1f
	ccf                                              ; $7988: $3f
	ccf                                              ; $7989: $3f
	ccf                                              ; $798a: $3f
	ccf                                              ; $798b: $3f
	ccf                                              ; $798c: $3f
	ccf                                              ; $798d: $3f
	ld   sp, $303f                                   ; $798e: $31 $3f $30
	ccf                                              ; $7991: $3f
	ld   l, $3f                                      ; $7992: $2e $3f
	ld   d, $1f                                      ; $7994: $16 $1f
	inc  d                                           ; $7996: $14
	rra                                              ; $7997: $1f
	ld   [$070f], sp                                 ; $7998: $08 $0f $07
	rlca                                             ; $799b: $07
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	add  sp, -$18                                    ; $79a2: $e8 $e8
	ld   hl, sp-$08                                  ; $79a4: $f8 $f8
	db   $fc                                         ; $79a6: $fc
	db   $fc                                         ; $79a7: $fc
	db   $fc                                         ; $79a8: $fc
	db   $fc                                         ; $79a9: $fc
	db   $fc                                         ; $79aa: $fc
	db   $fc                                         ; $79ab: $fc
	db   $fc                                         ; $79ac: $fc
	db   $fc                                         ; $79ad: $fc
	adc  h                                           ; $79ae: $8c
	db   $fc                                         ; $79af: $fc
	inc  c                                           ; $79b0: $0c
	db   $fc                                         ; $79b1: $fc
	ld   [hl], h                                     ; $79b2: $74
	db   $fc                                         ; $79b3: $fc
	ld   l, b                                        ; $79b4: $68
	ld   hl, sp+$28                                  ; $79b5: $f8 $28
	ld   hl, sp+$10                                  ; $79b7: $f8 $10
	ldh  a, [$e0]                                    ; $79b9: $f0 $e0
	ldh  [rP1], a                                    ; $79bb: $e0 $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	dec  bc                                          ; $79c2: $0b
	dec  bc                                          ; $79c3: $0b
	rra                                              ; $79c4: $1f
	rra                                              ; $79c5: $1f
	rra                                              ; $79c6: $1f
	rra                                              ; $79c7: $1f
	ccf                                              ; $79c8: $3f
	ccf                                              ; $79c9: $3f
	ccf                                              ; $79ca: $3f
	ccf                                              ; $79cb: $3f
	ccf                                              ; $79cc: $3f
	ccf                                              ; $79cd: $3f
	ld   sp, $303f                                   ; $79ce: $31 $3f $30
	ccf                                              ; $79d1: $3f
	jr   nz, jr_08c_7a13                             ; $79d2: $20 $3f

	db   $10                                         ; $79d4: $10
	rra                                              ; $79d5: $1f
	ld   d, $1f                                      ; $79d6: $16 $1f
	ld   [$070f], sp                                 ; $79d8: $08 $0f $07
	rlca                                             ; $79db: $07
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	add  sp, -$18                                    ; $79e2: $e8 $e8
	ld   hl, sp-$08                                  ; $79e4: $f8 $f8
	db   $fc                                         ; $79e6: $fc
	db   $fc                                         ; $79e7: $fc
	db   $fc                                         ; $79e8: $fc
	db   $fc                                         ; $79e9: $fc
	db   $fc                                         ; $79ea: $fc
	db   $fc                                         ; $79eb: $fc
	db   $fc                                         ; $79ec: $fc
	db   $fc                                         ; $79ed: $fc
	adc  h                                           ; $79ee: $8c
	db   $fc                                         ; $79ef: $fc
	inc  c                                           ; $79f0: $0c
	db   $fc                                         ; $79f1: $fc
	inc  b                                           ; $79f2: $04
	db   $fc                                         ; $79f3: $fc
	ld   [$68f8], sp                                 ; $79f4: $08 $f8 $68
	ld   hl, sp+$10                                  ; $79f7: $f8 $10
	ldh  a, [$e0]                                    ; $79f9: $f0 $e0
	ldh  [rP1], a                                    ; $79fb: $e0 $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	rlca                                             ; $7a02: $07
	rlca                                             ; $7a03: $07
	ccf                                              ; $7a04: $3f
	jr   c, jr_08c_7a26                              ; $7a05: $38 $1f

	inc  d                                           ; $7a07: $14
	ccf                                              ; $7a08: $3f
	ld   l, $71                                      ; $7a09: $2e $71
	ld   e, a                                        ; $7a0b: $5f
	jr   nc, @+$41                                   ; $7a0c: $30 $3f

	ld   [hl], $3f                                   ; $7a0e: $36 $3f
	ld   l, $3f                                      ; $7a10: $2e $3f
	add  hl, hl                                      ; $7a12: $29

jr_08c_7a13:
	ccf                                              ; $7a13: $3f
	ld   d, $1f                                      ; $7a14: $16 $1f
	ld   [$080f], sp                                 ; $7a16: $08 $0f $08
	rrca                                             ; $7a19: $0f
	rlca                                             ; $7a1a: $07
	rlca                                             ; $7a1b: $07
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	ldh  [$e0], a                                    ; $7a22: $e0 $e0
	ld   hl, sp-$68                                  ; $7a24: $f8 $98

jr_08c_7a26:
	db   $fc                                         ; $7a26: $fc
	and  h                                           ; $7a27: $a4
	db   $fc                                         ; $7a28: $fc
	ld   [hl], h                                     ; $7a29: $74
	adc  [hl]                                        ; $7a2a: $8e
	cp   $0c                                         ; $7a2b: $fe $0c
	db   $fc                                         ; $7a2d: $fc
	ld   l, h                                        ; $7a2e: $6c
	db   $fc                                         ; $7a2f: $fc
	ld   [hl], h                                     ; $7a30: $74
	db   $fc                                         ; $7a31: $fc
	sub  h                                           ; $7a32: $94
	db   $fc                                         ; $7a33: $fc
	ld   l, b                                        ; $7a34: $68
	ld   hl, sp+$10                                  ; $7a35: $f8 $10
	ldh  a, [rAUD1SWEEP]                             ; $7a37: $f0 $10
	ldh  a, [$e0]                                    ; $7a39: $f0 $e0
	ldh  [rP1], a                                    ; $7a3b: $e0 $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	rlca                                             ; $7a42: $07
	rlca                                             ; $7a43: $07
	ccf                                              ; $7a44: $3f
	jr   c, jr_08c_7a66                              ; $7a45: $38 $1f

	inc  d                                           ; $7a47: $14
	ccf                                              ; $7a48: $3f
	ld   l, $71                                      ; $7a49: $2e $71
	ld   e, a                                        ; $7a4b: $5f
	jr   nc, jr_08c_7a8d                             ; $7a4c: $30 $3f

	ld   [hl], $3f                                   ; $7a4e: $36 $3f
	ld   l, $3f                                      ; $7a50: $2e $3f
	add  hl, hl                                      ; $7a52: $29
	ccf                                              ; $7a53: $3f
	ld   d, $1f                                      ; $7a54: $16 $1f
	ld   [$0b0f], sp                                 ; $7a56: $08 $0f $0b
	rrca                                             ; $7a59: $0f
	rlca                                             ; $7a5a: $07
	rlca                                             ; $7a5b: $07
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	ldh  [$e0], a                                    ; $7a62: $e0 $e0
	ld   hl, sp-$68                                  ; $7a64: $f8 $98

jr_08c_7a66:
	db   $fc                                         ; $7a66: $fc
	and  h                                           ; $7a67: $a4
	db   $fc                                         ; $7a68: $fc
	ld   [hl], h                                     ; $7a69: $74
	adc  [hl]                                        ; $7a6a: $8e
	cp   $0c                                         ; $7a6b: $fe $0c
	db   $fc                                         ; $7a6d: $fc
	ld   l, h                                        ; $7a6e: $6c
	db   $fc                                         ; $7a6f: $fc
	ld   [hl], h                                     ; $7a70: $74
	db   $fc                                         ; $7a71: $fc
	sub  h                                           ; $7a72: $94
	db   $fc                                         ; $7a73: $fc
	ld   l, b                                        ; $7a74: $68
	ld   hl, sp+$10                                  ; $7a75: $f8 $10
	ldh  a, [$d0]                                    ; $7a77: $f0 $d0
	ldh  a, [$e0]                                    ; $7a79: $f0 $e0
	ldh  [rP1], a                                    ; $7a7b: $e0 $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	rlca                                             ; $7a82: $07
	rlca                                             ; $7a83: $07
	rra                                              ; $7a84: $1f
	inc  e                                           ; $7a85: $1c
	ld   a, a                                        ; $7a86: $7f
	ld   a, b                                        ; $7a87: $78
	ccf                                              ; $7a88: $3f
	inc  h                                           ; $7a89: $24
	ccf                                              ; $7a8a: $3f
	ld   l, $71                                      ; $7a8b: $2e $71

jr_08c_7a8d:
	ld   e, a                                        ; $7a8d: $5f
	jr   nc, @+$41                                   ; $7a8e: $30 $3f

	ld   [hl], $3f                                   ; $7a90: $36 $3f
	ld   l, $3f                                      ; $7a92: $2e $3f
	add  hl, de                                      ; $7a94: $19
	rra                                              ; $7a95: $1f
	ld   c, $0f                                      ; $7a96: $0e $0f
	ld   [$070f], sp                                 ; $7a98: $08 $0f $07
	rlca                                             ; $7a9b: $07
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	ldh  [$e0], a                                    ; $7aa2: $e0 $e0
	ld   hl, sp-$68                                  ; $7aa4: $f8 $98
	db   $fc                                         ; $7aa6: $fc
	sub  h                                           ; $7aa7: $94
	db   $fc                                         ; $7aa8: $fc
	and  h                                           ; $7aa9: $a4
	db   $fc                                         ; $7aaa: $fc
	ld   [hl], h                                     ; $7aab: $74
	adc  [hl]                                        ; $7aac: $8e
	ld   a, [$fc0c]                                  ; $7aad: $fa $0c $fc
	ld   l, h                                        ; $7ab0: $6c
	db   $fc                                         ; $7ab1: $fc
	ld   [hl], h                                     ; $7ab2: $74
	db   $fc                                         ; $7ab3: $fc
	sbc  b                                           ; $7ab4: $98
	ld   hl, sp+$70                                  ; $7ab5: $f8 $70
	ldh  a, [rAUD1SWEEP]                             ; $7ab7: $f0 $10
	ldh  a, [$e0]                                    ; $7ab9: $f0 $e0
	ldh  [rP1], a                                    ; $7abb: $e0 $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	rlca                                             ; $7ac2: $07
	rlca                                             ; $7ac3: $07
	rra                                              ; $7ac4: $1f
	inc  e                                           ; $7ac5: $1c
	ld   a, a                                        ; $7ac6: $7f
	ld   a, b                                        ; $7ac7: $78
	ccf                                              ; $7ac8: $3f
	inc  h                                           ; $7ac9: $24
	ccf                                              ; $7aca: $3f
	ld   l, $71                                      ; $7acb: $2e $71
	ld   e, a                                        ; $7acd: $5f
	jr   nc, jr_08c_7b0f                             ; $7ace: $30 $3f

	jr   nc, @+$41                                   ; $7ad0: $30 $3f

	ld   l, $3f                                      ; $7ad2: $2e $3f
	add  hl, de                                      ; $7ad4: $19
	rra                                              ; $7ad5: $1f
	ld   c, $0f                                      ; $7ad6: $0e $0f
	ld   [$070f], sp                                 ; $7ad8: $08 $0f $07
	rlca                                             ; $7adb: $07
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	ldh  [$e0], a                                    ; $7ae2: $e0 $e0
	ld   hl, sp-$68                                  ; $7ae4: $f8 $98
	db   $fc                                         ; $7ae6: $fc
	sub  h                                           ; $7ae7: $94
	db   $fc                                         ; $7ae8: $fc
	and  h                                           ; $7ae9: $a4
	db   $fc                                         ; $7aea: $fc
	ld   [hl], h                                     ; $7aeb: $74
	adc  [hl]                                        ; $7aec: $8e
	ld   a, [$fc0c]                                  ; $7aed: $fa $0c $fc
	inc  c                                           ; $7af0: $0c
	db   $fc                                         ; $7af1: $fc
	ld   [hl], h                                     ; $7af2: $74
	db   $fc                                         ; $7af3: $fc
	sbc  b                                           ; $7af4: $98
	ld   hl, sp+$70                                  ; $7af5: $f8 $70
	ldh  a, [rAUD1SWEEP]                             ; $7af7: $f0 $10
	ldh  a, [$e0]                                    ; $7af9: $f0 $e0
	ldh  [rP1], a                                    ; $7afb: $e0 $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	dec  c                                           ; $7b02: $0d
	dec  c                                           ; $7b03: $0d
	rra                                              ; $7b04: $1f
	inc  de                                          ; $7b05: $13
	ccf                                              ; $7b06: $3f
	jr   nz, @+$41                                   ; $7b07: $20 $3f

	jr   z, jr_08c_7b8a                              ; $7b09: $28 $7f

	ld   l, h                                        ; $7b0b: $6c
	ld   a, e                                        ; $7b0c: $7b
	ld   e, [hl]                                     ; $7b0d: $5e
	ld   a, e                                        ; $7b0e: $7b

jr_08c_7b0f:
	ld   c, [hl]                                     ; $7b0f: $4e
	ld   sp, $3e3f                                   ; $7b10: $31 $3f $3e
	ccf                                              ; $7b13: $3f
	ld   d, $1f                                      ; $7b14: $16 $1f
	db   $10                                         ; $7b16: $10
	rra                                              ; $7b17: $1f
	ld   [$070f], sp                                 ; $7b18: $08 $0f $07
	rlca                                             ; $7b1b: $07
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	ldh  [$e0], a                                    ; $7b22: $e0 $e0
	ld   hl, sp+$18                                  ; $7b24: $f8 $18
	db   $fc                                         ; $7b26: $fc
	db   $e4                                         ; $7b27: $e4
	db   $fc                                         ; $7b28: $fc
	inc  d                                           ; $7b29: $14
	cp   $06                                         ; $7b2a: $fe $06
	cp   $0a                                         ; $7b2c: $fe $0a
	cp   $32                                         ; $7b2e: $fe $32
	call z, Call_08c_7cfc                            ; $7b30: $cc $fc $7c
	db   $fc                                         ; $7b33: $fc
	ld   l, b                                        ; $7b34: $68
	ld   hl, sp+$08                                  ; $7b35: $f8 $08
	ld   hl, sp+$10                                  ; $7b37: $f8 $10
	ldh  a, [$e0]                                    ; $7b39: $f0 $e0
	ldh  [rP1], a                                    ; $7b3b: $e0 $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	dec  c                                           ; $7b42: $0d
	dec  c                                           ; $7b43: $0d
	rra                                              ; $7b44: $1f
	inc  de                                          ; $7b45: $13
	ccf                                              ; $7b46: $3f
	jr   nz, jr_08c_7b88                             ; $7b47: $20 $3f

	jr   z, jr_08c_7bca                              ; $7b49: $28 $7f

	ld   l, h                                        ; $7b4b: $6c
	ld   a, e                                        ; $7b4c: $7b
	ld   e, [hl]                                     ; $7b4d: $5e
	ld   a, e                                        ; $7b4e: $7b
	ld   c, [hl]                                     ; $7b4f: $4e
	ld   sp, $3e3f                                   ; $7b50: $31 $3f $3e
	ccf                                              ; $7b53: $3f
	ld   d, $1f                                      ; $7b54: $16 $1f
	db   $10                                         ; $7b56: $10
	rra                                              ; $7b57: $1f
	add  hl, bc                                      ; $7b58: $09
	rrca                                             ; $7b59: $0f
	rlca                                             ; $7b5a: $07
	rlca                                             ; $7b5b: $07
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	ldh  [$e0], a                                    ; $7b62: $e0 $e0
	ld   hl, sp+$18                                  ; $7b64: $f8 $18
	db   $fc                                         ; $7b66: $fc
	db   $e4                                         ; $7b67: $e4
	db   $fc                                         ; $7b68: $fc
	inc  d                                           ; $7b69: $14
	cp   $06                                         ; $7b6a: $fe $06
	cp   $0a                                         ; $7b6c: $fe $0a
	cp   $32                                         ; $7b6e: $fe $32
	call z, Call_08c_7cfc                            ; $7b70: $cc $fc $7c
	db   $fc                                         ; $7b73: $fc
	ld   l, b                                        ; $7b74: $68
	ld   hl, sp+$08                                  ; $7b75: $f8 $08
	ld   hl, sp-$70                                  ; $7b77: $f8 $90
	ldh  a, [$e0]                                    ; $7b79: $f0 $e0
	ldh  [rP1], a                                    ; $7b7b: $e0 $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	dec  c                                           ; $7b82: $0d
	dec  c                                           ; $7b83: $0d
	rra                                              ; $7b84: $1f
	inc  de                                          ; $7b85: $13
	ccf                                              ; $7b86: $3f
	ld   [hl+], a                                    ; $7b87: $22

jr_08c_7b88:
	ld   a, a                                        ; $7b88: $7f
	ld   h, b                                        ; $7b89: $60

jr_08c_7b8a:
	ld   a, a                                        ; $7b8a: $7f
	ld   c, b                                        ; $7b8b: $48
	ld   a, a                                        ; $7b8c: $7f
	ld   c, h                                        ; $7b8d: $4c
	ld   a, e                                        ; $7b8e: $7b
	ld   e, [hl]                                     ; $7b8f: $5e
	dec  sp                                          ; $7b90: $3b
	ld   l, $31                                      ; $7b91: $2e $31
	ccf                                              ; $7b93: $3f
	ld   e, $1f                                      ; $7b94: $1e $1f
	ld   d, $1f                                      ; $7b96: $16 $1f
	ld   [$070f], sp                                 ; $7b98: $08 $0f $07
	rlca                                             ; $7b9b: $07
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	ldh  [$e0], a                                    ; $7ba2: $e0 $e0
	ld   hl, sp+$18                                  ; $7ba4: $f8 $18
	db   $fc                                         ; $7ba6: $fc
	inc  b                                           ; $7ba7: $04
	cp   $e2                                         ; $7ba8: $fe $e2
	cp   $12                                         ; $7baa: $fe $12
	cp   $02                                         ; $7bac: $fe $02
	cp   $0a                                         ; $7bae: $fe $0a
	db   $fc                                         ; $7bb0: $fc
	inc  [hl]                                        ; $7bb1: $34
	call z, Call_08c_78fc                            ; $7bb2: $cc $fc $78
	ld   hl, sp+$68                                  ; $7bb5: $f8 $68
	ld   hl, sp+$10                                  ; $7bb7: $f8 $10
	ldh  a, [$e0]                                    ; $7bb9: $f0 $e0
	ldh  [rP1], a                                    ; $7bbb: $e0 $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	dec  c                                           ; $7bc2: $0d
	dec  c                                           ; $7bc3: $0d
	rra                                              ; $7bc4: $1f
	inc  de                                          ; $7bc5: $13
	ccf                                              ; $7bc6: $3f
	ld   [hl+], a                                    ; $7bc7: $22
	ld   a, a                                        ; $7bc8: $7f
	ld   h, b                                        ; $7bc9: $60

jr_08c_7bca:
	ld   a, a                                        ; $7bca: $7f
	ld   c, b                                        ; $7bcb: $48
	ld   a, a                                        ; $7bcc: $7f
	ld   c, h                                        ; $7bcd: $4c
	ld   a, e                                        ; $7bce: $7b
	ld   e, [hl]                                     ; $7bcf: $5e
	dec  sp                                          ; $7bd0: $3b
	ld   l, $31                                      ; $7bd1: $2e $31
	ccf                                              ; $7bd3: $3f
	db   $10                                         ; $7bd4: $10
	rra                                              ; $7bd5: $1f
	ld   d, $1f                                      ; $7bd6: $16 $1f
	ld   [$070f], sp                                 ; $7bd8: $08 $0f $07
	rlca                                             ; $7bdb: $07
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	ldh  [$e0], a                                    ; $7be2: $e0 $e0
	ld   hl, sp+$18                                  ; $7be4: $f8 $18
	db   $fc                                         ; $7be6: $fc
	inc  b                                           ; $7be7: $04
	cp   $e2                                         ; $7be8: $fe $e2
	cp   $12                                         ; $7bea: $fe $12
	cp   $02                                         ; $7bec: $fe $02
	cp   $0a                                         ; $7bee: $fe $0a
	db   $fc                                         ; $7bf0: $fc
	inc  [hl]                                        ; $7bf1: $34
	call z, $08fc                                    ; $7bf2: $cc $fc $08
	ld   hl, sp+$68                                  ; $7bf5: $f8 $68
	ld   hl, sp+$10                                  ; $7bf7: $f8 $10
	ldh  a, [$e0]                                    ; $7bf9: $f0 $e0
	ldh  [rP1], a                                    ; $7bfb: $e0 $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	dec  c                                           ; $7c02: $0d
	dec  c                                           ; $7c03: $0d
	rra                                              ; $7c04: $1f
	ld   [de], a                                     ; $7c05: $12
	ccf                                              ; $7c06: $3f
	jr   nz, @+$41                                   ; $7c07: $20 $3f

	dec  h                                           ; $7c09: $25
	ld   a, d                                        ; $7c0a: $7a
	ld   c, a                                        ; $7c0b: $4f
	ld   a, b                                        ; $7c0c: $78
	ld   c, a                                        ; $7c0d: $4f
	ld   [hl], b                                     ; $7c0e: $70
	ld   e, a                                        ; $7c0f: $5f
	ld   a, [hl]                                     ; $7c10: $7e
	ld   e, a                                        ; $7c11: $5f
	ld   [hl], d                                     ; $7c12: $72
	ld   e, a                                        ; $7c13: $5f
	halt                                             ; $7c14: $76
	ld   e, a                                        ; $7c15: $5f
	ld   [hl], b                                     ; $7c16: $70
	ld   e, a                                        ; $7c17: $5f
	jr   c, jr_08c_7c49                              ; $7c18: $38 $2f

	rra                                              ; $7c1a: $1f
	rra                                              ; $7c1b: $1f
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	ldh  [$e0], a                                    ; $7c22: $e0 $e0
	ld   hl, sp+$18                                  ; $7c24: $f8 $18
	db   $fc                                         ; $7c26: $fc
	inc  b                                           ; $7c27: $04
	db   $fc                                         ; $7c28: $fc
	add  h                                           ; $7c29: $84
	ld   a, [hl]                                     ; $7c2a: $7e
	jp   nz, $e23e                                   ; $7c2b: $c2 $3e $e2

	ld   a, $e2                                      ; $7c2e: $3e $e2
	ld   a, [hl]                                     ; $7c30: $7e
	ldh  a, [c]                                      ; $7c31: $f2
	ld   l, $fa                                      ; $7c32: $2e $fa
	ld   l, [hl]                                     ; $7c34: $6e
	ld   a, [$fc0c]                                  ; $7c35: $fa $0c $fc
	inc  e                                           ; $7c38: $1c
	db   $f4                                         ; $7c39: $f4
	db   $fc                                         ; $7c3a: $fc
	db   $e4                                         ; $7c3b: $e4
	inc  a                                           ; $7c3c: $3c
	inc  a                                           ; $7c3d: $3c
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	dec  c                                           ; $7c42: $0d
	dec  c                                           ; $7c43: $0d
	rra                                              ; $7c44: $1f
	ld   [de], a                                     ; $7c45: $12
	ccf                                              ; $7c46: $3f
	jr   nz, jr_08c_7c88                             ; $7c47: $20 $3f

jr_08c_7c49:
	dec  h                                           ; $7c49: $25
	ld   a, d                                        ; $7c4a: $7a
	ld   c, a                                        ; $7c4b: $4f
	ld   a, b                                        ; $7c4c: $78
	ld   c, a                                        ; $7c4d: $4f
	ld   [hl], b                                     ; $7c4e: $70
	ld   e, a                                        ; $7c4f: $5f
	ld   a, [hl]                                     ; $7c50: $7e
	ld   e, a                                        ; $7c51: $5f
	ld   [hl], d                                     ; $7c52: $72
	ld   e, a                                        ; $7c53: $5f
	halt                                             ; $7c54: $76
	ld   e, a                                        ; $7c55: $5f
	ld   [hl], b                                     ; $7c56: $70
	ld   e, a                                        ; $7c57: $5f
	add  hl, sp                                      ; $7c58: $39
	cpl                                              ; $7c59: $2f
	rra                                              ; $7c5a: $1f
	rra                                              ; $7c5b: $1f
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	ldh  [$e0], a                                    ; $7c62: $e0 $e0
	ld   hl, sp+$18                                  ; $7c64: $f8 $18
	db   $fc                                         ; $7c66: $fc
	inc  b                                           ; $7c67: $04
	db   $fc                                         ; $7c68: $fc
	add  h                                           ; $7c69: $84
	ld   a, [hl]                                     ; $7c6a: $7e
	jp   nz, $e23e                                   ; $7c6b: $c2 $3e $e2

	ld   a, $e2                                      ; $7c6e: $3e $e2
	ld   a, [hl]                                     ; $7c70: $7e
	ldh  a, [c]                                      ; $7c71: $f2
	ld   l, $fa                                      ; $7c72: $2e $fa
	ld   l, [hl]                                     ; $7c74: $6e
	ld   a, [$fa0e]                                  ; $7c75: $fa $0e $fa
	sbc  h                                           ; $7c78: $9c
	db   $f4                                         ; $7c79: $f4
	db   $fc                                         ; $7c7a: $fc
	db   $e4                                         ; $7c7b: $e4
	inc  a                                           ; $7c7c: $3c
	inc  a                                           ; $7c7d: $3c
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	dec  c                                           ; $7c82: $0d
	dec  c                                           ; $7c83: $0d
	rra                                              ; $7c84: $1f
	ld   [de], a                                     ; $7c85: $12
	ccf                                              ; $7c86: $3f
	ld   [hl+], a                                    ; $7c87: $22

jr_08c_7c88:
	ld   a, a                                        ; $7c88: $7f
	ld   b, b                                        ; $7c89: $40
	ld   a, a                                        ; $7c8a: $7f
	ld   b, l                                        ; $7c8b: $45
	ld   a, d                                        ; $7c8c: $7a
	ld   c, a                                        ; $7c8d: $4f
	ld   a, b                                        ; $7c8e: $78
	ld   c, a                                        ; $7c8f: $4f
	ld   [hl], b                                     ; $7c90: $70
	ld   e, a                                        ; $7c91: $5f
	ld   a, [hl]                                     ; $7c92: $7e
	ld   e, a                                        ; $7c93: $5f
	ld   [hl], d                                     ; $7c94: $72
	ld   e, a                                        ; $7c95: $5f
	ld   [hl], $3f                                   ; $7c96: $36 $3f
	jr   c, @+$41                                    ; $7c98: $38 $3f

	rra                                              ; $7c9a: $1f
	rra                                              ; $7c9b: $1f
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	ldh  [$e0], a                                    ; $7ca2: $e0 $e0
	ld   hl, sp+$18                                  ; $7ca4: $f8 $18
	db   $fc                                         ; $7ca6: $fc
	inc  b                                           ; $7ca7: $04
	cp   $02                                         ; $7ca8: $fe $02
	cp   $82                                         ; $7caa: $fe $82
	ld   a, [hl]                                     ; $7cac: $7e
	jp   nz, $e23e                                   ; $7cad: $c2 $3e $e2

	ld   a, $e2                                      ; $7cb0: $3e $e2
	ld   a, [hl]                                     ; $7cb2: $7e
	ldh  a, [c]                                      ; $7cb3: $f2
	ld   l, $fa                                      ; $7cb4: $2e $fa
	ld   l, h                                        ; $7cb6: $6c
	db   $fc                                         ; $7cb7: $fc
	inc  e                                           ; $7cb8: $1c
	db   $f4                                         ; $7cb9: $f4
	db   $fc                                         ; $7cba: $fc
	db   $e4                                         ; $7cbb: $e4
	inc  a                                           ; $7cbc: $3c
	inc  a                                           ; $7cbd: $3c
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	dec  c                                           ; $7cc2: $0d
	dec  c                                           ; $7cc3: $0d
	rra                                              ; $7cc4: $1f
	ld   [de], a                                     ; $7cc5: $12
	ccf                                              ; $7cc6: $3f
	ld   [hl+], a                                    ; $7cc7: $22
	ld   a, a                                        ; $7cc8: $7f
	ld   b, b                                        ; $7cc9: $40
	ld   a, a                                        ; $7cca: $7f
	ld   b, l                                        ; $7ccb: $45
	ld   a, d                                        ; $7ccc: $7a
	ld   c, a                                        ; $7ccd: $4f
	ld   a, b                                        ; $7cce: $78
	ld   c, a                                        ; $7ccf: $4f
	ld   [hl], b                                     ; $7cd0: $70
	ld   e, a                                        ; $7cd1: $5f
	ld   [hl], b                                     ; $7cd2: $70
	ld   e, a                                        ; $7cd3: $5f
	ld   [hl], b                                     ; $7cd4: $70
	ld   e, a                                        ; $7cd5: $5f
	ld   [hl], $3f                                   ; $7cd6: $36 $3f
	jr   c, @+$41                                    ; $7cd8: $38 $3f

	rra                                              ; $7cda: $1f
	rra                                              ; $7cdb: $1f
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	ldh  [$e0], a                                    ; $7ce2: $e0 $e0
	ld   hl, sp+$18                                  ; $7ce4: $f8 $18
	db   $fc                                         ; $7ce6: $fc
	inc  b                                           ; $7ce7: $04
	cp   $02                                         ; $7ce8: $fe $02
	cp   $82                                         ; $7cea: $fe $82
	ld   a, [hl]                                     ; $7cec: $7e
	jp   nz, $e23e                                   ; $7ced: $c2 $3e $e2

	ld   a, $e2                                      ; $7cf0: $3e $e2
	ld   e, $f2                                      ; $7cf2: $1e $f2
	ld   c, $fa                                      ; $7cf4: $0e $fa
	ld   l, h                                        ; $7cf6: $6c
	db   $fc                                         ; $7cf7: $fc
	inc  e                                           ; $7cf8: $1c
	db   $f4                                         ; $7cf9: $f4
	db   $fc                                         ; $7cfa: $fc
	db   $e4                                         ; $7cfb: $e4

Call_08c_7cfc:
	inc  a                                           ; $7cfc: $3c
	inc  a                                           ; $7cfd: $3c
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	inc  bc                                          ; $7d00: $03
	inc  bc                                          ; $7d01: $03
	inc  c                                           ; $7d02: $0c
	rrca                                             ; $7d03: $0f
	ld   d, $1f                                      ; $7d04: $16 $1f
	cpl                                              ; $7d06: $2f
	add  hl, sp                                      ; $7d07: $39
	ccf                                              ; $7d08: $3f
	ld   sp, $213e                                   ; $7d09: $31 $3e $21
	ld   a, [hl]                                     ; $7d0c: $7e
	ld   d, l                                        ; $7d0d: $55
	ld   a, [hl]                                     ; $7d0e: $7e
	ld   d, l                                        ; $7d0f: $55
	ld   a, $3f                                      ; $7d10: $3e $3f
	ld   [hl], d                                     ; $7d12: $72
	ld   e, a                                        ; $7d13: $5f

jr_08c_7d14:
	halt                                             ; $7d14: $76
	ld   e, a                                        ; $7d15: $5f
	jr   nc, @+$41                                   ; $7d16: $30 $3f

	jr   @+$21                                       ; $7d18: $18 $1f

	rlca                                             ; $7d1a: $07
	rlca                                             ; $7d1b: $07
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	ret  nz                                          ; $7d20: $c0

	ret  nz                                          ; $7d21: $c0

	jr   nc, jr_08c_7d14                             ; $7d22: $30 $f0

	ld   l, b                                        ; $7d24: $68
	ld   hl, sp-$0c                                  ; $7d25: $f8 $f4
	sbc  h                                           ; $7d27: $9c
	db   $fc                                         ; $7d28: $fc
	inc  c                                           ; $7d29: $0c
	db   $fc                                         ; $7d2a: $fc
	ld   b, h                                        ; $7d2b: $44
	cp   [hl]                                        ; $7d2c: $be
	ld   l, d                                        ; $7d2d: $6a
	cp   [hl]                                        ; $7d2e: $be
	ld   l, d                                        ; $7d2f: $6a
	ld   a, h                                        ; $7d30: $7c
	db   $f4                                         ; $7d31: $f4

jr_08c_7d32:
	ld   l, $fa                                      ; $7d32: $2e $fa
	ld   l, [hl]                                     ; $7d34: $6e
	ld   a, [$fc0c]                                  ; $7d35: $fa $0c $fc
	jr   jr_08c_7d32                                 ; $7d38: $18 $f8

	ldh  [$e0], a                                    ; $7d3a: $e0 $e0
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	inc  bc                                          ; $7d40: $03
	inc  bc                                          ; $7d41: $03
	inc  c                                           ; $7d42: $0c
	rrca                                             ; $7d43: $0f
	ld   d, $1f                                      ; $7d44: $16 $1f
	cpl                                              ; $7d46: $2f
	add  hl, sp                                      ; $7d47: $39
	ccf                                              ; $7d48: $3f
	ld   sp, $213e                                   ; $7d49: $31 $3e $21
	ld   a, [hl]                                     ; $7d4c: $7e
	ld   d, l                                        ; $7d4d: $55
	ld   a, [hl]                                     ; $7d4e: $7e
	ld   d, l                                        ; $7d4f: $55
	ld   a, $3f                                      ; $7d50: $3e $3f
	ld   [hl], d                                     ; $7d52: $72
	ld   e, a                                        ; $7d53: $5f

jr_08c_7d54:
	halt                                             ; $7d54: $76
	ld   e, a                                        ; $7d55: $5f
	jr   nc, @+$41                                   ; $7d56: $30 $3f

	add  hl, de                                      ; $7d58: $19
	rra                                              ; $7d59: $1f
	rlca                                             ; $7d5a: $07
	rlca                                             ; $7d5b: $07
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	ret  nz                                          ; $7d60: $c0

	ret  nz                                          ; $7d61: $c0

	jr   nc, jr_08c_7d54                             ; $7d62: $30 $f0

	ld   l, b                                        ; $7d64: $68
	ld   hl, sp-$0c                                  ; $7d65: $f8 $f4
	sbc  h                                           ; $7d67: $9c
	db   $fc                                         ; $7d68: $fc
	inc  c                                           ; $7d69: $0c
	db   $fc                                         ; $7d6a: $fc
	ld   b, h                                        ; $7d6b: $44
	cp   [hl]                                        ; $7d6c: $be
	ld   l, d                                        ; $7d6d: $6a
	cp   [hl]                                        ; $7d6e: $be
	ld   l, d                                        ; $7d6f: $6a
	ld   a, h                                        ; $7d70: $7c
	db   $f4                                         ; $7d71: $f4
	ld   l, $fa                                      ; $7d72: $2e $fa
	ld   l, [hl]                                     ; $7d74: $6e
	ld   a, [$fc0c]                                  ; $7d75: $fa $0c $fc
	sbc  b                                           ; $7d78: $98
	ld   hl, sp-$20                                  ; $7d79: $f8 $e0
	ldh  [rP1], a                                    ; $7d7b: $e0 $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	inc  bc                                          ; $7d80: $03
	inc  bc                                          ; $7d81: $03
	inc  c                                           ; $7d82: $0c
	rrca                                             ; $7d83: $0f
	db   $10                                         ; $7d84: $10
	rra                                              ; $7d85: $1f
	ld   h, $3f                                      ; $7d86: $26 $3f
	cpl                                              ; $7d88: $2f
	add  hl, sp                                      ; $7d89: $39
	ccf                                              ; $7d8a: $3f
	ld   sp, $417e                                   ; $7d8b: $31 $7e $41
	ld   a, [hl]                                     ; $7d8e: $7e
	ld   d, l                                        ; $7d8f: $55
	ld   a, [hl]                                     ; $7d90: $7e
	ld   [hl], l                                     ; $7d91: $75
	ld   a, [hl]                                     ; $7d92: $7e
	ld   e, a                                        ; $7d93: $5f

jr_08c_7d94:
	ld   [hl-], a                                    ; $7d94: $32
	ccf                                              ; $7d95: $3f
	ld   d, $1f                                      ; $7d96: $16 $1f
	ld   [$070f], sp                                 ; $7d98: $08 $0f $07
	rlca                                             ; $7d9b: $07
	nop                                              ; $7d9c: $00
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	ret  nz                                          ; $7da0: $c0

	ret  nz                                          ; $7da1: $c0

	jr   nc, jr_08c_7d94                             ; $7da2: $30 $f0

	ld   [$64f8], sp                                 ; $7da4: $08 $f8 $64
	db   $fc                                         ; $7da7: $fc
	db   $f4                                         ; $7da8: $f4
	sbc  h                                           ; $7da9: $9c
	db   $fc                                         ; $7daa: $fc
	inc  c                                           ; $7dab: $0c
	cp   $42                                         ; $7dac: $fe $42
	cp   [hl]                                        ; $7dae: $be
	ld   l, d                                        ; $7daf: $6a
	cp   [hl]                                        ; $7db0: $be
	ld   l, [hl]                                     ; $7db1: $6e
	ld   a, [hl]                                     ; $7db2: $7e
	ldh  a, [c]                                      ; $7db3: $f2
	inc  l                                           ; $7db4: $2c
	db   $fc                                         ; $7db5: $fc
	ld   l, b                                        ; $7db6: $68
	ld   hl, sp+$10                                  ; $7db7: $f8 $10
	ldh  a, [$e0]                                    ; $7db9: $f0 $e0
	ldh  [rP1], a                                    ; $7dbb: $e0 $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	inc  bc                                          ; $7dc0: $03
	inc  bc                                          ; $7dc1: $03
	inc  c                                           ; $7dc2: $0c
	rrca                                             ; $7dc3: $0f
	db   $10                                         ; $7dc4: $10
	rra                                              ; $7dc5: $1f
	ld   h, $3f                                      ; $7dc6: $26 $3f
	cpl                                              ; $7dc8: $2f
	add  hl, sp                                      ; $7dc9: $39
	ccf                                              ; $7dca: $3f
	ld   sp, $417e                                   ; $7dcb: $31 $7e $41
	ld   a, [hl]                                     ; $7dce: $7e
	ld   d, l                                        ; $7dcf: $55
	ld   a, [hl]                                     ; $7dd0: $7e
	ld   [hl], l                                     ; $7dd1: $75
	ld   a, h                                        ; $7dd2: $7c
	ld   e, a                                        ; $7dd3: $5f

jr_08c_7dd4:
	jr   nc, jr_08c_7e15                             ; $7dd4: $30 $3f

	ld   d, $1f                                      ; $7dd6: $16 $1f
	ld   [$070f], sp                                 ; $7dd8: $08 $0f $07
	rlca                                             ; $7ddb: $07
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	ret  nz                                          ; $7de0: $c0

	ret  nz                                          ; $7de1: $c0

	jr   nc, jr_08c_7dd4                             ; $7de2: $30 $f0

	ld   [$64f8], sp                                 ; $7de4: $08 $f8 $64
	db   $fc                                         ; $7de7: $fc
	db   $f4                                         ; $7de8: $f4
	sbc  h                                           ; $7de9: $9c
	db   $fc                                         ; $7dea: $fc
	inc  c                                           ; $7deb: $0c
	cp   $42                                         ; $7dec: $fe $42
	cp   [hl]                                        ; $7dee: $be
	ld   l, d                                        ; $7def: $6a
	cp   [hl]                                        ; $7df0: $be
	ld   l, [hl]                                     ; $7df1: $6e
	ld   a, $f2                                      ; $7df2: $3e $f2
	inc  c                                           ; $7df4: $0c
	db   $fc                                         ; $7df5: $fc
	ld   l, b                                        ; $7df6: $68
	ld   hl, sp+$10                                  ; $7df7: $f8 $10
	ldh  a, [$e0]                                    ; $7df9: $f0 $e0
	ldh  [rP1], a                                    ; $7dfb: $e0 $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	ld   c, $0e                                      ; $7e02: $0e $0e
	rra                                              ; $7e04: $1f
	ld   de, $203f                                   ; $7e05: $11 $3f $20
	ccf                                              ; $7e08: $3f
	ld   hl, $437e                                   ; $7e09: $21 $7e $43
	ld   a, [hl]                                     ; $7e0c: $7e
	ld   b, e                                        ; $7e0d: $43
	ld   a, [hl]                                     ; $7e0e: $7e
	ld   c, e                                        ; $7e0f: $4b
	ld   a, [hl]                                     ; $7e10: $7e
	ld   a, a                                        ; $7e11: $7f
	ld   [hl], d                                     ; $7e12: $72
	ld   e, a                                        ; $7e13: $5f
	halt                                             ; $7e14: $76

jr_08c_7e15:
	ld   e, a                                        ; $7e15: $5f
	ld   [hl], b                                     ; $7e16: $70
	ld   e, a                                        ; $7e17: $5f
	ld   a, b                                        ; $7e18: $78
	ld   a, a                                        ; $7e19: $7f
	rlca                                             ; $7e1a: $07
	rlca                                             ; $7e1b: $07
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	ldh  a, [$f0]                                    ; $7e22: $f0 $f0
	ld   hl, sp+$08                                  ; $7e24: $f8 $08
	db   $fc                                         ; $7e26: $fc
	inc  b                                           ; $7e27: $04
	db   $fc                                         ; $7e28: $fc
	add  h                                           ; $7e29: $84
	ld   a, [hl]                                     ; $7e2a: $7e
	jp   nz, $c27e                                   ; $7e2b: $c2 $7e $c2

	ld   a, [hl]                                     ; $7e2e: $7e
	jp   nc, $fe7e                                   ; $7e2f: $d2 $7e $fe

	ld   l, $fa                                      ; $7e32: $2e $fa
	ld   l, [hl]                                     ; $7e34: $6e
	ld   a, [$fa0e]                                  ; $7e35: $fa $0e $fa
	ld   e, $fe                                      ; $7e38: $1e $fe
	ldh  [$e0], a                                    ; $7e3a: $e0 $e0
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	ld   c, $0e                                      ; $7e42: $0e $0e
	rra                                              ; $7e44: $1f
	ld   de, $203f                                   ; $7e45: $11 $3f $20
	ccf                                              ; $7e48: $3f
	ld   hl, $437e                                   ; $7e49: $21 $7e $43
	ld   a, [hl]                                     ; $7e4c: $7e
	ld   b, e                                        ; $7e4d: $43
	ld   a, [hl]                                     ; $7e4e: $7e
	ld   c, e                                        ; $7e4f: $4b
	ld   a, [hl]                                     ; $7e50: $7e
	ld   a, a                                        ; $7e51: $7f
	ld   [hl], d                                     ; $7e52: $72
	ld   e, a                                        ; $7e53: $5f
	halt                                             ; $7e54: $76
	ld   e, a                                        ; $7e55: $5f
	ld   [hl], b                                     ; $7e56: $70
	ld   e, a                                        ; $7e57: $5f
	ld   a, c                                        ; $7e58: $79
	ld   a, a                                        ; $7e59: $7f
	rlca                                             ; $7e5a: $07
	rlca                                             ; $7e5b: $07
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	ldh  a, [$f0]                                    ; $7e62: $f0 $f0
	ld   hl, sp+$08                                  ; $7e64: $f8 $08
	db   $fc                                         ; $7e66: $fc
	inc  b                                           ; $7e67: $04
	db   $fc                                         ; $7e68: $fc
	add  h                                           ; $7e69: $84
	ld   a, [hl]                                     ; $7e6a: $7e
	jp   nz, $c27e                                   ; $7e6b: $c2 $7e $c2

	ld   a, [hl]                                     ; $7e6e: $7e
	jp   nc, $fe7e                                   ; $7e6f: $d2 $7e $fe

	ld   l, $fa                                      ; $7e72: $2e $fa
	ld   l, [hl]                                     ; $7e74: $6e
	ld   a, [$fa0e]                                  ; $7e75: $fa $0e $fa
	sbc  [hl]                                        ; $7e78: $9e
	cp   $e0                                         ; $7e79: $fe $e0
	ldh  [rP1], a                                    ; $7e7b: $e0 $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	ld   c, $0e                                      ; $7e82: $0e $0e
	rra                                              ; $7e84: $1f
	ld   de, $213f                                   ; $7e85: $11 $3f $21
	ccf                                              ; $7e88: $3f
	jr   nz, @+$81                                   ; $7e89: $20 $7f

	ld   b, c                                        ; $7e8b: $41
	ld   a, [hl]                                     ; $7e8c: $7e
	ld   b, e                                        ; $7e8d: $43
	ld   a, [hl]                                     ; $7e8e: $7e
	ld   b, e                                        ; $7e8f: $43
	ld   a, [hl]                                     ; $7e90: $7e
	ld   c, e                                        ; $7e91: $4b
	ld   a, [hl]                                     ; $7e92: $7e
	ld   a, a                                        ; $7e93: $7f
	ld   [hl], d                                     ; $7e94: $72
	ld   e, a                                        ; $7e95: $5f
	halt                                             ; $7e96: $76
	ld   a, a                                        ; $7e97: $7f
	ld   [$070f], sp                                 ; $7e98: $08 $0f $07
	rlca                                             ; $7e9b: $07
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	ldh  a, [$f0]                                    ; $7ea2: $f0 $f0
	ld   hl, sp+$08                                  ; $7ea4: $f8 $08
	db   $fc                                         ; $7ea6: $fc
	inc  b                                           ; $7ea7: $04
	db   $fc                                         ; $7ea8: $fc
	inc  b                                           ; $7ea9: $04
	cp   $82                                         ; $7eaa: $fe $82
	ld   a, [hl]                                     ; $7eac: $7e
	jp   nz, $c27e                                   ; $7ead: $c2 $7e $c2

	ld   a, [hl]                                     ; $7eb0: $7e
	jp   nc, $fe7e                                   ; $7eb1: $d2 $7e $fe

	ld   l, $fa                                      ; $7eb4: $2e $fa
	ld   l, [hl]                                     ; $7eb6: $6e
	cp   $10                                         ; $7eb7: $fe $10
	ldh  a, [$e0]                                    ; $7eb9: $f0 $e0
	ldh  [rP1], a                                    ; $7ebb: $e0 $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	ld   c, $0e                                      ; $7ec2: $0e $0e
	rra                                              ; $7ec4: $1f
	ld   de, $213f                                   ; $7ec5: $11 $3f $21
	ccf                                              ; $7ec8: $3f
	jr   nz, @+$81                                   ; $7ec9: $20 $7f

	ld   b, c                                        ; $7ecb: $41
	ld   a, [hl]                                     ; $7ecc: $7e
	ld   b, e                                        ; $7ecd: $43
	ld   a, [hl]                                     ; $7ece: $7e
	ld   b, e                                        ; $7ecf: $43
	ld   a, [hl]                                     ; $7ed0: $7e
	ld   c, e                                        ; $7ed1: $4b
	ld   a, [hl]                                     ; $7ed2: $7e
	ld   a, a                                        ; $7ed3: $7f
	ld   [hl], b                                     ; $7ed4: $70
	ld   e, a                                        ; $7ed5: $5f
	halt                                             ; $7ed6: $76
	ld   a, a                                        ; $7ed7: $7f
	ld   [$070f], sp                                 ; $7ed8: $08 $0f $07
	rlca                                             ; $7edb: $07
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	ldh  a, [$f0]                                    ; $7ee2: $f0 $f0
	ld   hl, sp+$08                                  ; $7ee4: $f8 $08
	db   $fc                                         ; $7ee6: $fc
	inc  b                                           ; $7ee7: $04
	db   $fc                                         ; $7ee8: $fc
	inc  b                                           ; $7ee9: $04
	cp   $82                                         ; $7eea: $fe $82
	ld   a, [hl]                                     ; $7eec: $7e
	jp   nz, $c27e                                   ; $7eed: $c2 $7e $c2

	ld   a, [hl]                                     ; $7ef0: $7e
	jp   nc, $fe7e                                   ; $7ef1: $d2 $7e $fe

	ld   c, $fa                                      ; $7ef4: $0e $fa
	ld   l, [hl]                                     ; $7ef6: $6e
	cp   $10                                         ; $7ef7: $fe $10
	ldh  a, [$e0]                                    ; $7ef9: $f0 $e0
	ldh  [rP1], a                                    ; $7efb: $e0 $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	ld   [bc], a                                     ; $7f00: $02
	ld   [bc], a                                     ; $7f01: $02
	rrca                                             ; $7f02: $0f
	dec  c                                           ; $7f03: $0d
	rra                                              ; $7f04: $1f
	ld   de, $2a3f                                   ; $7f05: $11 $3f $2a
	ccf                                              ; $7f08: $3f
	ld   l, $73                                      ; $7f09: $2e $73
	ld   a, a                                        ; $7f0b: $7f
	jr   nc, @+$41                                   ; $7f0c: $30 $3f

	jr   nc, @+$41                                   ; $7f0e: $30 $3f

	ld   l, $3f                                      ; $7f10: $2e $3f
	ld   h, $3f                                      ; $7f12: $26 $3f
	inc  d                                           ; $7f14: $14
	rra                                              ; $7f15: $1f
	db   $10                                         ; $7f16: $10
	rra                                              ; $7f17: $1f
	ld   [$070f], sp                                 ; $7f18: $08 $0f $07
	rlca                                             ; $7f1b: $07
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	jr   nz, jr_08c_7f42                             ; $7f20: $20 $20

	ldh  [$e0], a                                    ; $7f22: $e0 $e0
	ld   hl, sp+$18                                  ; $7f24: $f8 $18
	db   $fc                                         ; $7f26: $fc
	and  h                                           ; $7f27: $a4
	db   $fc                                         ; $7f28: $fc
	or   h                                           ; $7f29: $b4
	call z, $0cfc                                    ; $7f2a: $cc $fc $0c
	db   $fc                                         ; $7f2d: $fc

jr_08c_7f2e:
	inc  c                                           ; $7f2e: $0c
	db   $fc                                         ; $7f2f: $fc
	ld   [hl], h                                     ; $7f30: $74
	db   $fc                                         ; $7f31: $fc
	ld   h, h                                        ; $7f32: $64
	db   $fc                                         ; $7f33: $fc
	jr   z, jr_08c_7f2e                              ; $7f34: $28 $f8

	ld   [$10f8], sp                                 ; $7f36: $08 $f8 $10
	ldh  a, [$e0]                                    ; $7f39: $f0 $e0
	ldh  [rP1], a                                    ; $7f3b: $e0 $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	ld   [bc], a                                     ; $7f40: $02
	ld   [bc], a                                     ; $7f41: $02

jr_08c_7f42:
	rrca                                             ; $7f42: $0f
	dec  c                                           ; $7f43: $0d
	rra                                              ; $7f44: $1f
	ld   de, $2a3f                                   ; $7f45: $11 $3f $2a
	ccf                                              ; $7f48: $3f
	ld   l, $73                                      ; $7f49: $2e $73
	ld   a, a                                        ; $7f4b: $7f
	jr   nc, jr_08c_7f8d                             ; $7f4c: $30 $3f

	jr   nc, @+$41                                   ; $7f4e: $30 $3f

	ld   l, $3f                                      ; $7f50: $2e $3f
	ld   h, $3f                                      ; $7f52: $26 $3f
	inc  d                                           ; $7f54: $14
	rra                                              ; $7f55: $1f
	db   $10                                         ; $7f56: $10
	rra                                              ; $7f57: $1f
	add  hl, bc                                      ; $7f58: $09
	rrca                                             ; $7f59: $0f
	rlca                                             ; $7f5a: $07
	rlca                                             ; $7f5b: $07
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	jr   nz, jr_08c_7f82                             ; $7f60: $20 $20

	ldh  [$e0], a                                    ; $7f62: $e0 $e0
	ld   hl, sp+$18                                  ; $7f64: $f8 $18
	db   $fc                                         ; $7f66: $fc
	and  h                                           ; $7f67: $a4
	db   $fc                                         ; $7f68: $fc
	or   h                                           ; $7f69: $b4
	call z, $0cfc                                    ; $7f6a: $cc $fc $0c
	db   $fc                                         ; $7f6d: $fc

jr_08c_7f6e:
	inc  c                                           ; $7f6e: $0c
	db   $fc                                         ; $7f6f: $fc
	ld   [hl], h                                     ; $7f70: $74
	db   $fc                                         ; $7f71: $fc
	ld   h, h                                        ; $7f72: $64
	db   $fc                                         ; $7f73: $fc
	jr   z, jr_08c_7f6e                              ; $7f74: $28 $f8

	ld   [$d0f8], sp                                 ; $7f76: $08 $f8 $d0
	ldh  a, [$e0]                                    ; $7f79: $f0 $e0
	ldh  [rP1], a                                    ; $7f7b: $e0 $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00

jr_08c_7f82:
	rrca                                             ; $7f82: $0f
	rrca                                             ; $7f83: $0f
	rra                                              ; $7f84: $1f
	dec  d                                           ; $7f85: $15
	ccf                                              ; $7f86: $3f
	ld   hl, $6a7f                                   ; $7f87: $21 $7f $6a
	ccf                                              ; $7f8a: $3f
	ld   l, $33                                      ; $7f8b: $2e $33

jr_08c_7f8d:
	ccf                                              ; $7f8d: $3f
	jr   nc, @+$41                                   ; $7f8e: $30 $3f

	jr   nc, @+$41                                   ; $7f90: $30 $3f

	ld   l, $3f                                      ; $7f92: $2e $3f
	ld   d, $1f                                      ; $7f94: $16 $1f
	inc  d                                           ; $7f96: $14
	rra                                              ; $7f97: $1f
	ld   [$070f], sp                                 ; $7f98: $08 $0f $07
	rlca                                             ; $7f9b: $07
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	ldh  [$e0], a                                    ; $7fa2: $e0 $e0
	ld   hl, sp+$38                                  ; $7fa4: $f8 $38
	db   $fc                                         ; $7fa6: $fc
	inc  b                                           ; $7fa7: $04
	db   $fc                                         ; $7fa8: $fc
	and  h                                           ; $7fa9: $a4
	db   $fc                                         ; $7faa: $fc
	or   h                                           ; $7fab: $b4
	call z, $0cfc                                    ; $7fac: $cc $fc $0c
	db   $fc                                         ; $7faf: $fc
	inc  c                                           ; $7fb0: $0c
	db   $fc                                         ; $7fb1: $fc
	ld   [hl], h                                     ; $7fb2: $74
	db   $fc                                         ; $7fb3: $fc
	ld   l, b                                        ; $7fb4: $68
	ld   hl, sp+$28                                  ; $7fb5: $f8 $28
	ld   hl, sp+$10                                  ; $7fb7: $f8 $10
	ldh  a, [$e0]                                    ; $7fb9: $f0 $e0
	ldh  [rP1], a                                    ; $7fbb: $e0 $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	rrca                                             ; $7fc2: $0f
	rrca                                             ; $7fc3: $0f
	rra                                              ; $7fc4: $1f
	dec  d                                           ; $7fc5: $15
	ccf                                              ; $7fc6: $3f
	ld   hl, $6a7f                                   ; $7fc7: $21 $7f $6a
	ccf                                              ; $7fca: $3f
	ld   l, $33                                      ; $7fcb: $2e $33
	ccf                                              ; $7fcd: $3f
	jr   nc, @+$41                                   ; $7fce: $30 $3f

	jr   nc, @+$41                                   ; $7fd0: $30 $3f

	jr   nz, @+$41                                   ; $7fd2: $20 $3f

	db   $10                                         ; $7fd4: $10
	rra                                              ; $7fd5: $1f
	ld   d, $1f                                      ; $7fd6: $16 $1f
	ld   [$070f], sp                                 ; $7fd8: $08 $0f $07
	rlca                                             ; $7fdb: $07
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	ldh  [$e0], a                                    ; $7fe2: $e0 $e0
	ld   hl, sp+$38                                  ; $7fe4: $f8 $38
	db   $fc                                         ; $7fe6: $fc
	inc  b                                           ; $7fe7: $04
	db   $fc                                         ; $7fe8: $fc
	and  h                                           ; $7fe9: $a4
	db   $fc                                         ; $7fea: $fc
	or   h                                           ; $7feb: $b4
	call z, $0cfc                                    ; $7fec: $cc $fc $0c
	db   $fc                                         ; $7fef: $fc
	inc  c                                           ; $7ff0: $0c
	db   $fc                                         ; $7ff1: $fc
	inc  b                                           ; $7ff2: $04
	db   $fc                                         ; $7ff3: $fc
	ld   [$68f8], sp                                 ; $7ff4: $08 $f8 $68
	ld   hl, sp+$10                                  ; $7ff7: $f8 $10
	ldh  a, [$e0]                                    ; $7ff9: $f0 $e0
	ldh  [rP1], a                                    ; $7ffb: $e0 $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
