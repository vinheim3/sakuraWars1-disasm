; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08b", ROMX[$4000], BANK[$8b]

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	rst  $38                                         ; $4008: $ff
	ld   a, a                                        ; $4009: $7f
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	db   $10                                         ; $400c: $10
	ld   h, d                                        ; $400d: $62
	rst  $20                                         ; $400e: $e7
	jr   nc, jr_08b_4011                             ; $400f: $30 $00

jr_08b_4011:
	nop                                              ; $4011: $00
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
	nop                                              ; $402b: $00
	nop                                              ; $402c: $00
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	nop                                              ; $4031: $00
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
	ld   a, a                                        ; $4041: $7f
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	rst  $28                                         ; $4044: $ef
	dec  a                                           ; $4045: $3d
	rst  $20                                         ; $4046: $e7
	inc  e                                           ; $4047: $1c
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	nop                                              ; $404c: $00
	nop                                              ; $404d: $00
	nop                                              ; $404e: $00
	nop                                              ; $404f: $00
	nop                                              ; $4050: $00
	nop                                              ; $4051: $00
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
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
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
	nop                                              ; $4070: $00
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	nop                                              ; $4073: $00
	nop                                              ; $4074: $00
	nop                                              ; $4075: $00
	nop                                              ; $4076: $00
	nop                                              ; $4077: $00
	rst  $38                                         ; $4078: $ff
	ld   a, a                                        ; $4079: $7f
	nop                                              ; $407a: $00
	nop                                              ; $407b: $00
	db   $10                                         ; $407c: $10
	ld   b, d                                        ; $407d: $42
	rst  $20                                         ; $407e: $e7
	inc  e                                           ; $407f: $1c
	nop                                              ; $4080: $00
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
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00
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
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
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
	nop                                              ; $40ae: $00
	nop                                              ; $40af: $00
	rst  $38                                         ; $40b0: $ff
	ld   a, a                                        ; $40b1: $7f
	nop                                              ; $40b2: $00
	nop                                              ; $40b3: $00
	db   $10                                         ; $40b4: $10
	ld   h, d                                        ; $40b5: $62
	rst  $20                                         ; $40b6: $e7
	jr   nc, jr_08b_40b9                             ; $40b7: $30 $00

jr_08b_40b9:
	nop                                              ; $40b9: $00
	sbc  a                                           ; $40ba: $9f
	ld   [bc], a                                     ; $40bb: $02
	ld   [hl], $01                                   ; $40bc: $36 $01
	and  b                                           ; $40be: $a0
	ld   [bc], a                                     ; $40bf: $02
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
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
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
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	nop                                              ; $40e3: $00
	nop                                              ; $40e4: $00
	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	rst  $38                                         ; $40e8: $ff
	ld   a, a                                        ; $40e9: $7f
	nop                                              ; $40ea: $00
	nop                                              ; $40eb: $00
	adc  h                                           ; $40ec: $8c
	dec  a                                           ; $40ed: $3d
	add  $24                                         ; $40ee: $c6 $24
	nop                                              ; $40f0: $00
	nop                                              ; $40f1: $00
	xor  d                                           ; $40f2: $aa
	nop                                              ; $40f3: $00
	ld   a, [de]                                     ; $40f4: $1a
	ld   [bc], a                                     ; $40f5: $02
	nop                                              ; $40f6: $00
	nop                                              ; $40f7: $00
	nop                                              ; $40f8: $00
	nop                                              ; $40f9: $00
	ld   a, [de]                                     ; $40fa: $1a
	nop                                              ; $40fb: $00
	nop                                              ; $40fc: $00
	ld   l, b                                        ; $40fd: $68
	ld   e, d                                        ; $40fe: $5a
	inc  bc                                          ; $40ff: $03
	nop                                              ; $4100: $00
	nop                                              ; $4101: $00
	ld   a, [de]                                     ; $4102: $1a
	nop                                              ; $4103: $00
	jr   nz, jr_08b_410c                             ; $4104: $20 $06

	ld   e, d                                        ; $4106: $5a
	inc  bc                                          ; $4107: $03
	nop                                              ; $4108: $00
	nop                                              ; $4109: $00
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00

jr_08b_410c:
	nop                                              ; $410c: $00
	nop                                              ; $410d: $00
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
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
	ld   a, a                                        ; $4121: $7f
	nop                                              ; $4122: $00
	nop                                              ; $4123: $00
	jr   c, @+$04                                    ; $4124: $38 $02

	dec  c                                           ; $4126: $0d
	ld   bc, $0000                                   ; $4127: $01 $00 $00
	cpl                                              ; $412a: $2f
	ld   e, d                                        ; $412b: $5a
	dec  b                                           ; $412c: $05
	ld   sp, $0000                                   ; $412d: $31 $00 $00
	nop                                              ; $4130: $00
	nop                                              ; $4131: $00
	nop                                              ; $4132: $00
	nop                                              ; $4133: $00
	nop                                              ; $4134: $00
	nop                                              ; $4135: $00
	nop                                              ; $4136: $00
	nop                                              ; $4137: $00
	nop                                              ; $4138: $00
	nop                                              ; $4139: $00
	nop                                              ; $413a: $00
	nop                                              ; $413b: $00
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	nop                                              ; $4140: $00
	nop                                              ; $4141: $00
	nop                                              ; $4142: $00
	nop                                              ; $4143: $00
	nop                                              ; $4144: $00
	nop                                              ; $4145: $00
	nop                                              ; $4146: $00
	nop                                              ; $4147: $00
	nop                                              ; $4148: $00
	nop                                              ; $4149: $00
	nop                                              ; $414a: $00
	nop                                              ; $414b: $00
	nop                                              ; $414c: $00
	nop                                              ; $414d: $00
	nop                                              ; $414e: $00
	nop                                              ; $414f: $00
	nop                                              ; $4150: $00
	nop                                              ; $4151: $00
	nop                                              ; $4152: $00
	nop                                              ; $4153: $00
	nop                                              ; $4154: $00
	nop                                              ; $4155: $00
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	rst  $38                                         ; $4158: $ff
	ld   a, a                                        ; $4159: $7f
	nop                                              ; $415a: $00
	nop                                              ; $415b: $00
	ld   [hl], a                                     ; $415c: $77
	ld   b, $b0                                      ; $415d: $06 $b0
	ld   bc, $0000                                   ; $415f: $01 $00 $00
	ld   c, h                                        ; $4162: $4c
	ld   bc, $0000                                   ; $4163: $01 $00 $00
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
	nop                                              ; $4170: $00
	nop                                              ; $4171: $00
	nop                                              ; $4172: $00
	nop                                              ; $4173: $00
	nop                                              ; $4174: $00
	nop                                              ; $4175: $00
	nop                                              ; $4176: $00
	nop                                              ; $4177: $00
	nop                                              ; $4178: $00
	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	nop                                              ; $417c: $00
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
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
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	rst  $38                                         ; $4190: $ff
	ld   a, a                                        ; $4191: $7f
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	cp   c                                           ; $4194: $b9
	ld   c, $70                                      ; $4195: $0e $70
	ld   bc, $0000                                   ; $4197: $01 $00 $00
	dec  b                                           ; $419a: $05
	add  hl, hl                                      ; $419b: $29
	ld   l, b                                        ; $419c: $68
	dec  [hl]                                        ; $419d: $35
	ld   d, d                                        ; $419e: $52
	ld   c, d                                        ; $419f: $4a
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
	nop                                              ; $41ad: $00
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	nop                                              ; $41b0: $00
	nop                                              ; $41b1: $00
	nop                                              ; $41b2: $00
	nop                                              ; $41b3: $00
	nop                                              ; $41b4: $00
	nop                                              ; $41b5: $00
	nop                                              ; $41b6: $00
	nop                                              ; $41b7: $00
	nop                                              ; $41b8: $00
	nop                                              ; $41b9: $00
	nop                                              ; $41ba: $00
	nop                                              ; $41bb: $00
	nop                                              ; $41bc: $00
	nop                                              ; $41bd: $00
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	nop                                              ; $41c0: $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	rst  $38                                         ; $41c8: $ff
	ld   a, a                                        ; $41c9: $7f
	nop                                              ; $41ca: $00
	nop                                              ; $41cb: $00
	ld   a, a                                        ; $41cc: $7f
	rrca                                             ; $41cd: $0f
	ld   [hl-], a                                    ; $41ce: $32
	inc  d                                           ; $41cf: $14
	nop                                              ; $41d0: $00
	nop                                              ; $41d1: $00
	nop                                              ; $41d2: $00
	nop                                              ; $41d3: $00
	nop                                              ; $41d4: $00
	nop                                              ; $41d5: $00
	nop                                              ; $41d6: $00
	nop                                              ; $41d7: $00
	nop                                              ; $41d8: $00
	nop                                              ; $41d9: $00
	nop                                              ; $41da: $00
	nop                                              ; $41db: $00
	nop                                              ; $41dc: $00
	nop                                              ; $41dd: $00
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	nop                                              ; $41e0: $00
	nop                                              ; $41e1: $00
	nop                                              ; $41e2: $00
	nop                                              ; $41e3: $00
	nop                                              ; $41e4: $00
	nop                                              ; $41e5: $00
	nop                                              ; $41e6: $00
	nop                                              ; $41e7: $00
	nop                                              ; $41e8: $00
	nop                                              ; $41e9: $00
	nop                                              ; $41ea: $00
	nop                                              ; $41eb: $00
	nop                                              ; $41ec: $00
	nop                                              ; $41ed: $00
	nop                                              ; $41ee: $00
	nop                                              ; $41ef: $00
	nop                                              ; $41f0: $00
	nop                                              ; $41f1: $00
	nop                                              ; $41f2: $00
	nop                                              ; $41f3: $00
	nop                                              ; $41f4: $00
	nop                                              ; $41f5: $00
	nop                                              ; $41f6: $00
	nop                                              ; $41f7: $00
	nop                                              ; $41f8: $00
	nop                                              ; $41f9: $00
	nop                                              ; $41fa: $00
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	rst  $38                                         ; $4200: $ff
	ld   a, a                                        ; $4201: $7f
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	ld   l, b                                        ; $4204: $68
	dec  [hl]                                        ; $4205: $35
	ld   d, d                                        ; $4206: $52
	ld   c, d                                        ; $4207: $4a
	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	nop                                              ; $420f: $00
	nop                                              ; $4210: $00
	nop                                              ; $4211: $00
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
	nop                                              ; $4220: $00
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	nop                                              ; $4225: $00
	nop                                              ; $4226: $00
	nop                                              ; $4227: $00
	nop                                              ; $4228: $00
	nop                                              ; $4229: $00
	nop                                              ; $422a: $00
	nop                                              ; $422b: $00
	nop                                              ; $422c: $00
	nop                                              ; $422d: $00
	nop                                              ; $422e: $00
	nop                                              ; $422f: $00
	nop                                              ; $4230: $00
	nop                                              ; $4231: $00
	nop                                              ; $4232: $00
	nop                                              ; $4233: $00
	nop                                              ; $4234: $00
	nop                                              ; $4235: $00
	nop                                              ; $4236: $00
	nop                                              ; $4237: $00
	rst  $38                                         ; $4238: $ff
	ld   a, a                                        ; $4239: $7f
	nop                                              ; $423a: $00
	nop                                              ; $423b: $00
	ld   a, $03                                      ; $423c: $3e $03
	xor  d                                           ; $423e: $aa
	nop                                              ; $423f: $00
	nop                                              ; $4240: $00
	nop                                              ; $4241: $00
	cp   a                                           ; $4242: $bf
	nop                                              ; $4243: $00
	add  b                                           ; $4244: $80
	ld   [bc], a                                     ; $4245: $02
	ld   h, l                                        ; $4246: $65
	nop                                              ; $4247: $00
	nop                                              ; $4248: $00
	nop                                              ; $4249: $00
	nop                                              ; $424a: $00
	nop                                              ; $424b: $00
	nop                                              ; $424c: $00
	nop                                              ; $424d: $00
	nop                                              ; $424e: $00
	nop                                              ; $424f: $00
	nop                                              ; $4250: $00
	nop                                              ; $4251: $00
	nop                                              ; $4252: $00
	nop                                              ; $4253: $00
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	nop                                              ; $4258: $00
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	nop                                              ; $425b: $00
	nop                                              ; $425c: $00
	nop                                              ; $425d: $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
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
	nop                                              ; $426b: $00
	nop                                              ; $426c: $00
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	rst  $38                                         ; $4270: $ff
	ld   a, a                                        ; $4271: $7f
	nop                                              ; $4272: $00
	nop                                              ; $4273: $00
	db   $10                                         ; $4274: $10
	ld   h, d                                        ; $4275: $62
	rst  $20                                         ; $4276: $e7
	jr   nc, jr_08b_4279                             ; $4277: $30 $00

jr_08b_4279:
	nop                                              ; $4279: $00
	nop                                              ; $427a: $00
	nop                                              ; $427b: $00
	nop                                              ; $427c: $00
	nop                                              ; $427d: $00
	nop                                              ; $427e: $00
	nop                                              ; $427f: $00
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
	nop                                              ; $428f: $00
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
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	nop                                              ; $42a0: $00
	nop                                              ; $42a1: $00
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	nop                                              ; $42a4: $00
	nop                                              ; $42a5: $00
	nop                                              ; $42a6: $00
	nop                                              ; $42a7: $00
	rst  $38                                         ; $42a8: $ff
	ld   a, a                                        ; $42a9: $7f
	nop                                              ; $42aa: $00
	nop                                              ; $42ab: $00
	ccf                                              ; $42ac: $3f
	ld   [bc], a                                     ; $42ad: $02
	ld   [hl-], a                                    ; $42ae: $32
	ld   bc, $0000                                   ; $42af: $01 $00 $00
	ld   a, [de]                                     ; $42b2: $1a
	nop                                              ; $42b3: $00
	sbc  h                                           ; $42b4: $9c
	ld   [hl], $c0                                   ; $42b5: $36 $c0
	ld   [bc], a                                     ; $42b7: $02
	nop                                              ; $42b8: $00
	nop                                              ; $42b9: $00
	nop                                              ; $42ba: $00
	nop                                              ; $42bb: $00
	nop                                              ; $42bc: $00
	nop                                              ; $42bd: $00
	nop                                              ; $42be: $00
	nop                                              ; $42bf: $00
	nop                                              ; $42c0: $00
	nop                                              ; $42c1: $00
	nop                                              ; $42c2: $00
	nop                                              ; $42c3: $00
	nop                                              ; $42c4: $00
	nop                                              ; $42c5: $00
	nop                                              ; $42c6: $00
	nop                                              ; $42c7: $00
	nop                                              ; $42c8: $00
	nop                                              ; $42c9: $00
	nop                                              ; $42ca: $00
	nop                                              ; $42cb: $00
	nop                                              ; $42cc: $00
	nop                                              ; $42cd: $00
	nop                                              ; $42ce: $00
	nop                                              ; $42cf: $00
	nop                                              ; $42d0: $00
	nop                                              ; $42d1: $00
	nop                                              ; $42d2: $00
	nop                                              ; $42d3: $00
	nop                                              ; $42d4: $00
	nop                                              ; $42d5: $00
	nop                                              ; $42d6: $00
	nop                                              ; $42d7: $00
	nop                                              ; $42d8: $00
	nop                                              ; $42d9: $00
	nop                                              ; $42da: $00
	nop                                              ; $42db: $00
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	rst  $38                                         ; $42e0: $ff
	ld   a, a                                        ; $42e1: $7f
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	cpl                                              ; $42e4: $2f
	ld   e, d                                        ; $42e5: $5a
	dec  b                                           ; $42e6: $05
	ld   sp, $0000                                   ; $42e7: $31 $00 $00
	cp   [hl]                                        ; $42ea: $be
	ld   [bc], a                                     ; $42eb: $02
	ld   d, c                                        ; $42ec: $51
	dec  b                                           ; $42ed: $05
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	nop                                              ; $42f2: $00
	nop                                              ; $42f3: $00
	nop                                              ; $42f4: $00
	nop                                              ; $42f5: $00
	nop                                              ; $42f6: $00
	nop                                              ; $42f7: $00
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
	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	nop                                              ; $4315: $00
	nop                                              ; $4316: $00
	nop                                              ; $4317: $00
	rst  $38                                         ; $4318: $ff
	ld   a, a                                        ; $4319: $7f
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	inc  e                                           ; $431c: $1c
	ld   b, e                                        ; $431d: $43
	ld   d, e                                        ; $431e: $53
	ld   bc, $0000                                   ; $431f: $01 $00 $00
	jp   z, $1f00                                    ; $4322: $ca $00 $1f

	nop                                              ; $4325: $00
	ld   c, $00                                      ; $4326: $0e $00
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	nop                                              ; $432a: $00
	nop                                              ; $432b: $00
	nop                                              ; $432c: $00
	nop                                              ; $432d: $00
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	nop                                              ; $4330: $00
	nop                                              ; $4331: $00
	nop                                              ; $4332: $00
	nop                                              ; $4333: $00
	nop                                              ; $4334: $00
	nop                                              ; $4335: $00
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	nop                                              ; $4338: $00
	nop                                              ; $4339: $00
	nop                                              ; $433a: $00
	nop                                              ; $433b: $00
	nop                                              ; $433c: $00
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
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
	rst  $38                                         ; $4350: $ff
	ld   a, a                                        ; $4351: $7f
	nop                                              ; $4352: $00
	nop                                              ; $4353: $00
	rla                                              ; $4354: $17
	ld   a, [de]                                     ; $4355: $1a
	ld   d, e                                        ; $4356: $53
	ld   bc, $0000                                   ; $4357: $01 $00 $00
	ld   a, l                                        ; $435a: $7d
	ld   [de], a                                     ; $435b: $12
	xor  h                                           ; $435c: $ac
	nop                                              ; $435d: $00
	ld   l, b                                        ; $435e: $68
	nop                                              ; $435f: $00
	nop                                              ; $4360: $00
	nop                                              ; $4361: $00
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
	nop                                              ; $4370: $00
	nop                                              ; $4371: $00
	nop                                              ; $4372: $00
	nop                                              ; $4373: $00
	nop                                              ; $4374: $00
	nop                                              ; $4375: $00
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
	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	nop                                              ; $4384: $00
	nop                                              ; $4385: $00
	nop                                              ; $4386: $00
	nop                                              ; $4387: $00
	rst  $38                                         ; $4388: $ff
	ld   a, a                                        ; $4389: $7f
	nop                                              ; $438a: $00
	nop                                              ; $438b: $00
	ei                                               ; $438c: $fb
	ld   a, [hl+]                                    ; $438d: $2a
	ld   d, $02                                      ; $438e: $16 $02
	nop                                              ; $4390: $00
	nop                                              ; $4391: $00
	ld   l, b                                        ; $4392: $68
	dec  [hl]                                        ; $4393: $35
	ld   d, $00                                      ; $4394: $16 $00
	dec  l                                           ; $4396: $2d
	ld   bc, $0000                                   ; $4397: $01 $00 $00
	nop                                              ; $439a: $00
	nop                                              ; $439b: $00
	nop                                              ; $439c: $00
	nop                                              ; $439d: $00
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	nop                                              ; $43a2: $00
	nop                                              ; $43a3: $00
	nop                                              ; $43a4: $00
	nop                                              ; $43a5: $00
	nop                                              ; $43a6: $00
	nop                                              ; $43a7: $00
	nop                                              ; $43a8: $00
	nop                                              ; $43a9: $00
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
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
	nop                                              ; $43ba: $00
	nop                                              ; $43bb: $00
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	rst  $38                                         ; $43c0: $ff
	ld   a, a                                        ; $43c1: $7f
	nop                                              ; $43c2: $00
	nop                                              ; $43c3: $00
	db   $10                                         ; $43c4: $10
	ld   h, d                                        ; $43c5: $62
	ld   a, a                                        ; $43c6: $7f
	ld   e, e                                        ; $43c7: $5b
	nop                                              ; $43c8: $00
	nop                                              ; $43c9: $00
	ld   a, [de]                                     ; $43ca: $1a
	ld   [bc], a                                     ; $43cb: $02
	nop                                              ; $43cc: $00
	nop                                              ; $43cd: $00
	nop                                              ; $43ce: $00
	nop                                              ; $43cf: $00
	nop                                              ; $43d0: $00
	nop                                              ; $43d1: $00
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	nop                                              ; $43d4: $00
	nop                                              ; $43d5: $00
	nop                                              ; $43d6: $00
	nop                                              ; $43d7: $00
	nop                                              ; $43d8: $00
	nop                                              ; $43d9: $00
	nop                                              ; $43da: $00
	nop                                              ; $43db: $00
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00
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
	nop                                              ; $43ef: $00
	nop                                              ; $43f0: $00
	nop                                              ; $43f1: $00
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	nop                                              ; $43f4: $00
	nop                                              ; $43f5: $00
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	rst  $38                                         ; $43f8: $ff
	ld   a, a                                        ; $43f9: $7f
	or   a                                           ; $43fa: $b7
	add  hl, de                                      ; $43fb: $19
	ld   e, a                                        ; $43fc: $5f
	ld   c, e                                        ; $43fd: $4b
	add  h                                           ; $43fe: $84
	db   $10                                         ; $43ff: $10
	ldh  [$03], a                                    ; $4400: $e0 $03
	adc  $44                                         ; $4402: $ce $44
	ret  z                                           ; $4404: $c8

	inc  l                                           ; $4405: $2c
	ld   l, c                                        ; $4406: $69
	ld   d, d                                        ; $4407: $52
	ldh  [$03], a                                    ; $4408: $e0 $03
	ccf                                              ; $440a: $3f
	ld   c, [hl]                                     ; $440b: $4e
	rst  $38                                         ; $440c: $ff
	inc  l                                           ; $440d: $2c
	ld   de, $e000                                   ; $440e: $11 $00 $e0
	inc  bc                                          ; $4411: $03
	and  b                                           ; $4412: $a0
	ld   h, d                                        ; $4413: $62
	rrca                                             ; $4414: $0f
	dec  c                                           ; $4415: $0d
	rst  $38                                         ; $4416: $ff
	ld   a, a                                        ; $4417: $7f
	nop                                              ; $4418: $00
	nop                                              ; $4419: $00
	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	nop                                              ; $4424: $00
	nop                                              ; $4425: $00
	nop                                              ; $4426: $00
	nop                                              ; $4427: $00
	nop                                              ; $4428: $00
	nop                                              ; $4429: $00
	nop                                              ; $442a: $00
	nop                                              ; $442b: $00
	nop                                              ; $442c: $00
	nop                                              ; $442d: $00
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00
	rst  $38                                         ; $4430: $ff
	ld   a, a                                        ; $4431: $7f
	db   $ed                                         ; $4432: $ed
	db   $10                                         ; $4433: $10
	ld   a, a                                        ; $4434: $7f
	ld   b, d                                        ; $4435: $42
	ld   b, l                                        ; $4436: $45
	db   $10                                         ; $4437: $10
	ldh  [$03], a                                    ; $4438: $e0 $03
	dec  bc                                          ; $443a: $0b
	ld   c, h                                        ; $443b: $4c
	ld   [hl], d                                     ; $443c: $72
	inc  e                                           ; $443d: $1c
	add  hl, bc                                      ; $443e: $09
	add  hl, hl                                      ; $443f: $29
	ldh  [$03], a                                    ; $4440: $e0 $03
	rst  $38                                         ; $4442: $ff
	daa                                              ; $4443: $27
	sbc  a                                           ; $4444: $9f
	ld   c, a                                        ; $4445: $4f
	ccf                                              ; $4446: $3f
	ld   a, [bc]                                     ; $4447: $0a
	ldh  [$03], a                                    ; $4448: $e0 $03
	xor  c                                           ; $444a: $a9
	ld   e, c                                        ; $444b: $59
	ldh  [$03], a                                    ; $444c: $e0 $03
	ldh  [$03], a                                    ; $444e: $e0 $03
	nop                                              ; $4450: $00
	nop                                              ; $4451: $00
	nop                                              ; $4452: $00
	nop                                              ; $4453: $00
	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	nop                                              ; $4456: $00
	nop                                              ; $4457: $00
	nop                                              ; $4458: $00
	nop                                              ; $4459: $00
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	nop                                              ; $4467: $00
	rst  $38                                         ; $4468: $ff
	ld   a, a                                        ; $4469: $7f
	sbc  a                                           ; $446a: $9f
	ld   c, a                                        ; $446b: $4f
	jp   hl                                          ; $446c: $e9


	inc  d                                           ; $446d: $14
	add  l                                           ; $446e: $85
	inc  d                                           ; $446f: $14
	rst  $38                                         ; $4470: $ff
	ld   a, a                                        ; $4471: $7f
	add  $05                                         ; $4472: $c6 $05
	ld   sp, $0046                                   ; $4474: $31 $46 $00
	nop                                              ; $4477: $00
	rst  $38                                         ; $4478: $ff
	ld   a, a                                        ; $4479: $7f
	rst  $38                                         ; $447a: $ff
	inc  sp                                          ; $447b: $33
	ld   [hl], $16                                   ; $447c: $36 $16
	ld   l, l                                        ; $447e: $6d
	ld   e, h                                        ; $447f: $5c
	rst  $38                                         ; $4480: $ff
	ld   a, a                                        ; $4481: $7f
	pop  af                                          ; $4482: $f1
	db   $10                                         ; $4483: $10
	ld   e, a                                        ; $4484: $5f
	ld   c, $b1                                      ; $4485: $0e $b1
	ld   [hl], c                                     ; $4487: $71
	rst  $38                                         ; $4488: $ff
	ld   a, a                                        ; $4489: $7f
	pop  af                                          ; $448a: $f1
	db   $10                                         ; $448b: $10
	ld   sp, $ff46                                   ; $448c: $31 $46 $ff
	ld   a, a                                        ; $448f: $7f
	nop                                              ; $4490: $00
	nop                                              ; $4491: $00
	nop                                              ; $4492: $00
	nop                                              ; $4493: $00
	nop                                              ; $4494: $00
	nop                                              ; $4495: $00
	nop                                              ; $4496: $00
	nop                                              ; $4497: $00
	nop                                              ; $4498: $00
	nop                                              ; $4499: $00
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	rst  $38                                         ; $44a0: $ff
	ld   a, a                                        ; $44a1: $7f
	ld   a, a                                        ; $44a2: $7f
	inc  bc                                          ; $44a3: $03
	ld   d, [hl]                                     ; $44a4: $56
	ld   [bc], a                                     ; $44a5: $02
	add  l                                           ; $44a6: $85
	inc  d                                           ; $44a7: $14
	rst  $38                                         ; $44a8: $ff
	ld   a, a                                        ; $44a9: $7f
	di                                               ; $44aa: $f3
	ld   a, [hl]                                     ; $44ab: $7e
	jp   nc, $a905                                   ; $44ac: $d2 $05 $a9

	nop                                              ; $44af: $00
	rst  $38                                         ; $44b0: $ff
	ld   a, a                                        ; $44b1: $7f
	ld   e, a                                        ; $44b2: $5f
	ld   c, e                                        ; $44b3: $4b
	inc  a                                           ; $44b4: $3c
	ld   [hl+], a                                    ; $44b5: $22
	xor  c                                           ; $44b6: $a9
	nop                                              ; $44b7: $00
	rst  $38                                         ; $44b8: $ff
	ld   a, a                                        ; $44b9: $7f
	ld   e, a                                        ; $44ba: $5f
	ld   c, e                                        ; $44bb: $4b
	rra                                              ; $44bc: $1f
	ld   c, d                                        ; $44bd: $4a
	or   l                                           ; $44be: $b5
	jr   nz, jr_08b_44c1                             ; $44bf: $20 $00

jr_08b_44c1:
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
	nop                                              ; $44cf: $00
	nop                                              ; $44d0: $00
	nop                                              ; $44d1: $00
	nop                                              ; $44d2: $00
	nop                                              ; $44d3: $00
	nop                                              ; $44d4: $00
	nop                                              ; $44d5: $00
	nop                                              ; $44d6: $00
	nop                                              ; $44d7: $00
	rst  $38                                         ; $44d8: $ff
	ld   a, a                                        ; $44d9: $7f
	or   [hl]                                        ; $44da: $b6
	ld   h, [hl]                                     ; $44db: $66
	adc  h                                           ; $44dc: $8c
	ld   sp, $0008                                   ; $44dd: $31 $08 $00
	ldh  [$03], a                                    ; $44e0: $e0 $03
	db   $dd                                         ; $44e2: $dd
	ld   e, d                                        ; $44e3: $5a
	ld   d, d                                        ; $44e4: $52
	nop                                              ; $44e5: $00
	rrca                                             ; $44e6: $0f
	inc  a                                           ; $44e7: $3c
	ldh  [$03], a                                    ; $44e8: $e0 $03
	ld   e, a                                        ; $44ea: $5f
	ld   c, e                                        ; $44eb: $4b
	inc  e                                           ; $44ec: $1c
	ld   a, [bc]                                     ; $44ed: $0a
	rlca                                             ; $44ee: $07
	jr   jr_08b_44f1                                 ; $44ef: $18 $00

jr_08b_44f1:
	nop                                              ; $44f1: $00
	nop                                              ; $44f2: $00
	nop                                              ; $44f3: $00
	nop                                              ; $44f4: $00
	nop                                              ; $44f5: $00
	nop                                              ; $44f6: $00
	nop                                              ; $44f7: $00
	nop                                              ; $44f8: $00
	nop                                              ; $44f9: $00
	nop                                              ; $44fa: $00
	nop                                              ; $44fb: $00
	nop                                              ; $44fc: $00
	nop                                              ; $44fd: $00
	nop                                              ; $44fe: $00
	nop                                              ; $44ff: $00
	nop                                              ; $4500: $00
	nop                                              ; $4501: $00
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
	ld   a, a                                        ; $4511: $7f
	rst  JumpTable                                         ; $4512: $df
	scf                                              ; $4513: $37
	dec  [hl]                                        ; $4514: $35
	ld   a, [de]                                     ; $4515: $1a
	ld   b, [hl]                                     ; $4516: $46
	inc  c                                           ; $4517: $0c
	rra                                              ; $4518: $1f
	add  hl, hl                                      ; $4519: $29
	ret  c                                           ; $451a: $d8

	ld   [hl], d                                     ; $451b: $72
	sub  $4e                                         ; $451c: $d6 $4e
	xor  h                                           ; $451e: $ac
	dec  [hl]                                        ; $451f: $35
	pop  hl                                          ; $4520: $e1
	ld   a, a                                        ; $4521: $7f
	ld   a, a                                        ; $4522: $7f
	nop                                              ; $4523: $00
	ld   [de], a                                     ; $4524: $12
	nop                                              ; $4525: $00
	ld   c, h                                        ; $4526: $4c
	ld   [$7c1f], sp                                 ; $4527: $08 $1f $7c
	cp   a                                           ; $452a: $bf
	ld   e, $37                                      ; $452b: $1e $37
	dec  b                                           ; $452d: $05
	ldh  [rIF], a                                    ; $452e: $e0 $0f
	nop                                              ; $4530: $00
	nop                                              ; $4531: $00
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
	rst  $38                                         ; $4548: $ff
	ld   a, a                                        ; $4549: $7f
	nop                                              ; $454a: $00
	nop                                              ; $454b: $00
	dec  b                                           ; $454c: $05
	add  hl, hl                                      ; $454d: $29
	ld   [$0066], a                                  ; $454e: $ea $66 $00
	nop                                              ; $4551: $00
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	nop                                              ; $4555: $00
	nop                                              ; $4556: $00
	nop                                              ; $4557: $00
	nop                                              ; $4558: $00
	nop                                              ; $4559: $00
	nop                                              ; $455a: $00
	nop                                              ; $455b: $00
	nop                                              ; $455c: $00
	nop                                              ; $455d: $00
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
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
	nop                                              ; $456d: $00
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	nop                                              ; $4570: $00
	nop                                              ; $4571: $00
	nop                                              ; $4572: $00
	nop                                              ; $4573: $00
	nop                                              ; $4574: $00
	nop                                              ; $4575: $00
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	nop                                              ; $457a: $00
	nop                                              ; $457b: $00
	nop                                              ; $457c: $00
	nop                                              ; $457d: $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	rst  $38                                         ; $4580: $ff
	ld   a, a                                        ; $4581: $7f
	add  l                                           ; $4582: $85
	inc  b                                           ; $4583: $04
	db   $ec                                         ; $4584: $ec
	dec  h                                           ; $4585: $25
	ld   e, a                                        ; $4586: $5f
	ld   c, $00                                      ; $4587: $0e $00
	nop                                              ; $4589: $00
	or   h                                           ; $458a: $b4
	ld   b, d                                        ; $458b: $42
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	nop                                              ; $458e: $00
	
if def(VWF)

LoadKohranMiniGameTitleScreenGfx1::
; Original code pt.1
	ld   a, $15                                      ; $6d79: $3e $15
	ld   hl, $d000                                   ; $6d7b: $21 $00 $d0
	ld   de, $73c3                                   ; $6d7e: $11 $c3 $73
	call RLEXorCopy                                       ; $6d81: $cd $d2 $09

	ld   bc, .end-.gfx
	ld   de, $d000+$980
	ld   hl, .gfx
	call MemCopy

; Original code pt.2
	ld   c, $81                                      ; $6d84: $0e $81
	ld   de, $8800                                   ; $6d86: $11 $00 $88
	ld   a, $03                                      ; $6d89: $3e $03
	ld   hl, $d000                                   ; $6d8b: $21 $00 $d0

	ret

.gfx:
	INCBIN "en_kohranMGPopup.2bpp"
.end:


ReplaceKannaMiniGameTSPopup::
	ld   bc, $90
	ld   de, $d000+$200
	ld   hl, .gfx
	call MemCopy

	ld   bc, $a0
	ld   de, $d000+$300
	ld   hl, .gfx+$90
	call MemCopy

	ld   bc, $90
	ld   de, $d000+$400
	ld   hl, .gfx+$130
	call MemCopy

	ld   bc, $300
	ld   de, $d000+$500
	ld   hl, .gfx+$1c0
	call MemCopy
	ret
.gfx:
	INCBIN "en_kannaMGPopup.2bpp" ; $04c0


SakuraMiniGameTileAttrHook2::
; Original code pt.1
	ld   a, $1d
	ld   hl, $d400
	ld   de, $6d99
	call RLEXorCopy

	ld   hl, $d400
	M_FarCall EnLoadSakuraMiniGameTileAttr

; Original code pt.2
	ld   de, $d800
	ld   hl, $d040
	ld   bc, $0080 
	ret

Data_30_683aentry00::
	db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $00
Data_30_683aentry01::
	db $29, $3c, $3e, $3d, $10, $22, $3d, $46, $43, $3d, $00
Data_30_683aentry02::
	db $25, $43, $47, $49, $3f, $39, $10, $20, $49, $3e, $3d, $47, $3c, $3d, $41, $35, $00
Data_30_683aentry03::
	db $22, $3d, $38, $39, $42, $43, $46, $3d, $10, $27, $35, $48, $47, $49, $36, $35, $46, $35, $00
Data_30_683aentry04::
	db $25, $43, $3c, $39, $3d, $10, $2e, $35, $42, $35, $3f, $35, $00
Data_30_683aentry05::
	db $2d, $3c, $43, $3d, $37, $3c, $3d, $46, $43, $10, $23, $46, $3d, $41, $35, $3e, $3d, $46, $3d, $00
Data_30_683aentry06::
	db $2e, $39, $48, $47, $49, $10, $25, $35, $4d, $35, $41, $35, $00
Data_30_683aentry07::
	db $2d, $3c, $49, $3e, $3d, $10, $2f, $48, $47, $49, $41, $3d, $00
Data_30_683aentry08::
	db $33, $35, $47, $49, $35, $3f, $3d, $10, $28, $35, $3b, $43, $47, $3c, $3d, $00
Data_30_683aentry09::
	db $27, $35, $3f, $43, $48, $43, $10, $28, $35, $3f, $35, $4d, $35, $41, $35, $00
Data_30_683aentry0a::
	db $33, $49, $3f, $43, $10, $33, $35, $41, $35, $41, $43, $48, $43, $00
Data_30_683aentry0b::
	db $28, $43, $46, $3d, $4d, $43, $47, $3c, $3d, $10, $29, $36, $35, $00
Data_30_683aentry0c::
	db $33, $35, $47, $49, $43, $10, $27, $43, $46, $3d, $3a, $49, $3e, $3d, $00
Data_30_683aentry0d::
	db $22, $35, $48, $35, $43, $10, $29, $3b, $35, $48, $35, $00
Data_30_683aentry0e::
	db $2c, $4d, $49, $48, $35, $46, $43, $10, $28, $43, $42, $35, $3f, $35, $00
Data_30_683aentry0f::
	db $25, $39, $42, $3e, $3d, $10, $29, $3b, $3d, $42, $43, $00
Data_30_683aentry10::
	db $2d, $39, $3d, $3f, $43, $10, $25, $35, $4b, $35, $3c, $35, $46, $35, $00
Data_30_683aentry11::
	db $22, $3d, $48, $43, $10, $23, $3d, $00
Data_30_683aentry12::
	db $27, $35, $47, $35, $46, $49, $10, $25, $49, $46, $3d, $36, $35, $4d, $35, $47, $3c, $3d, $00
Data_30_683aentry13::
	db $28, $35, $43, $3f, $3d, $10, $27, $43, $46, $3d, $48, $35, $00
Data_30_683aentry14::
	db $21, $10, $1d, $3c, $35, $48, $35, $42, $3d, $00
Data_30_683aentry15::
	db $24, $49, $42, $3d, $37, $3c, $3d, $10, $2e, $35, $41, $49, $46, $35, $00
Data_30_683aentry16::
	db $27, $35, $47, $35, $42, $43, $46, $3d, $10, $20, $49, $42, $35, $3f, $43, $47, $3c, $3d, $00
Data_30_683aentry17::
	db $1e, $35, $3d, $47, $49, $3f, $39, $10, $27, $3d, $4d, $35, $43, $00
Data_30_683aentry18::
	db $22, $3d, $46, $35, $3f, $49, $10, $25, $3d, $48, $35, $4b, $35, $3f, $3d, $00
Data_30_683aentry19::
	db $24, $49, $42, $10, $2d, $49, $3b, $35, $48, $35, $00
Data_30_683aentry1a::
	db $28, $43, $46, $3d, $3f, $43, $10, $2d, $3c, $3d, $36, $49, $4d, $35, $00
Data_30_683aentry1b::
	db $1b, $3f, $3d, $10, $2e, $35, $3f, $39, $37, $3c, $3d, $00
Data_30_683aentry1c::
	db $28, $35, $48, $47, $49, $10, $25, $35, $48, $47, $49, $46, $35, $00
Data_30_683aentry1d::
	db $2e, $35, $3f, $35, $41, $3d, $48, $47, $49, $10, $20, $49, $46, $49, $41, $49, $46, $35, $00
Data_30_683aentry1e::
	db $25, $35, $43, $46, $49, $10, $2d, $35, $4b, $35, $38, $35, $00
Data_30_683aentry1f::
	db $22, $3d, $38, $39, $41, $43, $10, $2d, $3c, $3d, $41, $43, $41, $49, $46, $35, $00
Data_30_683aentry20::
	db $28, $43, $46, $3d, $37, $3c, $3d, $3f, $35, $10, $27, $39, $3b, $49, $46, $43, $00
Data_30_683aentry21::
	db $25, $43, $3e, $3d, $10, $25, $3d, $46, $3d, $4d, $35, $41, $35, $00
Data_30_683aentry22::
	db $2c, $35, $38, $3d, $4c, $10, $1d, $43, $f2, $e1, $10, $26, $48, $38, $f2, $00
Data_30_683aentry23::
	db $2d, $39, $3d, $3f, $3d, $10, $2e, $35, $42, $35, $3f, $35, $00
Data_30_683aentry24::
	db $25, $35, $4e, $49, $43, $10, $1f, $36, $3d, $47, $35, $4b, $35, $00
Data_30_683aentry25::
	db $22, $3d, $46, $43, $47, $3c, $3d, $10, $28, $43, $41, $49, $46, $35, $00
Data_30_683aentry26::
	db $23, $41, $35, $3b, $3d, $42, $39, $10, $23, $42, $37, $f2, $00
Data_30_683aentry27::
	db $33, $49, $3e, $3d, $10, $2d, $35, $3d, $48, $43, $00
Data_30_683aentry28::
	db $22, $35, $3e, $3d, $41, $39, $10, $2e, $43, $41, $35, $00
Data_30_683aentry29::
	db $2e, $01, $01, $47, $10, $27, $49, $47, $3d, $37, $10, $1d, $43, $f2, $e1, $10, $26, $48, $38, $f2, $00
Data_30_683aentry2a::
	db $33, $43, $47, $3c, $3d, $4d, $49, $3f, $3d, $10, $25, $35, $38, $43, $43, $3f, $35, $00
Data_30_683aentry2b::
	db $25, $43, $3d, $37, $3c, $3d, $10, $2d, $3c, $3d, $41, $35, $41, $49, $46, $35, $00
Data_30_683aentry2c::
	db $33, $49, $41, $3d, $10, $1b, $47, $35, $38, $35, $00


Data_30_6e56entry00::
	db $2e, $43, $3c, $43, $3f, $49, $10, $2d, $3c, $3d, $42, $47, $3c, $35, $10, $20, $3d, $40, $41, $10, $1d, $43, $46, $44, $43, $46, $35, $48, $3d, $43, $42, $00
Data_30_6e56entry01::
	db $2d, $35, $3f, $49, $46, $35, $10, $2d, $3c, $3d, $42, $3b, $49, $3e, $3d, $01, $15, $0d, $1d, $3c, $3d, $47, $35, $10, $33, $43, $3f, $43, $4d, $35, $41, $35, $00
Data_30_6e56entry02::
	db $2d, $49, $41, $3d, $46, $39, $10, $25, $35, $42, $4e, $35, $3f, $3d, $01, $15, $0d, $27, $3d, $37, $3c, $3d, $39, $10, $2e, $43, $41, $3d, $4e, $35, $4b, $35, $00
Data_30_6e56entry03::
	db $27, $35, $46, $3d, $35, $10, $2e, $35, $37, $3c, $3d, $36, $35, $42, $35, $01, $15, $0d, $2f, $46, $35, $46, $35, $10, $2e, $35, $3f, $35, $42, $43, $00
Data_30_6e56entry04::
	db $23, $46, $3d, $47, $01, $15, $0d, $25, $49, $41, $3d, $3f, $43, $10, $28, $3d, $47, $3c, $3d, $3c, $35, $46, $35, $00
Data_30_6e56entry05::
	db $25, $43, $3c, $46, $35, $42, $10, $26, $3d, $01, $15, $0d, $33, $49, $46, $3d, $3f, $43, $10, $20, $49, $37, $3c, $3d, $4e, $35, $3f, $3d, $00
Data_30_6e56entry06::
	db $25, $35, $42, $42, $35, $10, $25, $3d, $46, $3d, $47, $3c, $3d, $41, $35, $01, $15, $0d, $27, $35, $4d, $49, $41, $3d, $10, $2e, $35, $42, $35, $3f, $35, $00
Data_30_6e56entry07::
	db $2e, $43, $41, $43, $4d, $49, $3f, $3d, $10, $23, $48, $43, $00
Data_30_6e56entry08::
	db $28, $35, $43, $3f, $43, $10, $25, $43, $38, $35, $00
Data_30_6e56entry09::
	db $28, $43, $36, $49, $3c, $3d, $3f, $43, $10, $2d, $3c, $3d, $41, $3d, $4e, $49, $00
Data_30_6e56entry0a::
	db $33, $49, $41, $3d, $3f, $43, $10, $2f, $39, $38, $35, $00
Data_30_6e56entry0b::
	db $25, $43, $3e, $3d, $10, $2d, $35, $4b, $35, $00
Data_30_6e56entry0c::
	db $27, $35, $47, $35, $3f, $35, $48, $47, $49, $10, $31, $35, $48, $35, $42, $35, $36, $39, $00
Data_30_6e56entry0d::
	db $2d, $35, $46, $49, $3b, $35, $3f, $49, $37, $3c, $43, $00
Data_30_6e56entry0e::
	db $2e, $43, $46, $49, $10, $22, $35, $47, $3c, $3d, $41, $43, $48, $43, $00
Data_30_6e56entry0f::
	db $27, $3d, $4d, $49, $3f, $3d, $10, $2d, $35, $48, $43, $00
Data_30_6e56entry10::
	db $24, $49, $42, $10, $1b, $47, $35, $42, $43, $00
Data_30_6e56entry11::
	db $28, $35, $43, $4d, $35, $10, $25, $43, $3e, $3d, $41, $35, $00
Data_30_6e56entry12::
	db $1f, $3d, $3f, $43, $10, $25, $35, $4b, $35, $3f, $49, $36, $43, $00
Data_30_6e56entry13::
	db $1b, $3f, $3d, $10, $25, $35, $4b, $35, $35, $3d, $00
Data_30_6e56entry14::
	db $25, $43, $3d, $37, $3c, $3d, $10, $2e, $35, $38, $35, $00
Data_30_6e56entry15::
	db $27, $35, $47, $35, $3f, $35, $4e, $49, $10, $22, $35, $3b, $3d, $4b, $35, $46, $35, $00
Data_30_6e56entry16::
	db $1b, $48, $47, $49, $3c, $3d, $48, $43, $10, $31, $35, $48, $35, $42, $35, $36, $39, $00
Data_30_6e56entry17::
	db $33, $49, $3f, $35, $46, $3d, $10, $2d, $3c, $3d, $3f, $35, $3f, $49, $46, $35, $00
Data_30_6e56entry18::
	db $24, $49, $42, $4d, $35, $10, $22, $43, $47, $3c, $3d, $42, $43, $00
Data_30_6e56entry19::
	db $2e, $47, $49, $4d, $43, $47, $3c, $3d, $10, $25, $43, $4d, $35, $41, $35, $00
Data_30_6e56entry1a::
	db $22, $3d, $38, $39, $48, $43, $10, $2d, $35, $48, $43, $00
Data_30_6e56entry1b::
	db $22, $3d, $46, $43, $47, $3c, $3d, $10, $2d, $35, $48, $43, $00
Data_30_6e56entry1c::
	db $27, $35, $46, $3d, $10, $27, $3d, $4d, $35, $48, $35, $00
Data_30_6e56entry1d::
	db $2d, $35, $4d, $49, $41, $3d, $10, $23, $4b, $35, $48, $35, $00
Data_30_6e56entry1e::
	db $22, $3d, $47, $35, $4d, $43, $10, $25, $49, $42, $3d, $4d, $35, $00
Data_30_6e56entry1f::
	db $2f, $41, $3d, $48, $47, $49, $3f, $3d, $10, $1e, $39, $47, $3d, $3b, $42, $e1, $10, $26, $48, $38, $f2, $00
Data_30_6e56entry20::
	db $22, $3d, $46, $43, $47, $3c, $3d, $10, $2e, $35, $41, $49, $46, $35, $00
Data_30_6e56entry21::
	db $22, $3d, $48, $43, $47, $3c, $3d, $10, $2e, $35, $3f, $39, $49, $37, $3c, $3d, $00
Data_30_6e56entry22::
	db $28, $43, $46, $3d, $41, $35, $47, $35, $10, $33, $35, $48, $47, $49, $4e, $49, $3f, $35, $00
Data_30_6e56entry23::
	db $25, $39, $3d, $47, $35, $3f, $49, $10, $29, $3f, $49, $41, $49, $46, $35, $00
Data_30_6e56entry24::
	db $2e, $43, $46, $49, $10, $25, $49, $36, $43, $00
Data_30_6e56entry25::
	db $24, $49, $42, $3e, $3d, $10, $33, $35, $41, $35, $4e, $35, $3f, $3d, $00
Data_30_6e56entry26::
	db $2d, $3c, $3d, $42, $48, $35, $46, $43, $10, $2e, $35, $3f, $35, $3c, $35, $47, $3c, $3d, $00
Data_30_6e56entry27::
	db $22, $3d, $46, $43, $47, $3c, $3d, $10, $23, $4e, $49, $41, $3d, $00
Data_30_6e56entry28::
	db $2c, $39, $38, $10, $1d, $43, $41, $44, $35, $42, $4d, $10, $23, $42, $37, $f2, $00
Data_30_6e56entry29::
	db $24, $49, $44, $3d, $48, $39, $46, $10, $1d, $43, $46, $44, $43, $46, $35, $48, $3d, $43, $42, $00
Data_30_6e56entry2a::
	db $2d, $39, $3b, $35, $10, $1f, $42, $48, $39, $46, $44, $46, $3d, $47, $39, $47, $10, $26, $48, $38, $f2, $00
Data_30_6e56entry2b::
	db $27, $39, $38, $3d, $35, $10, $20, $35, $37, $48, $43, $46, $4d, $10, $23, $42, $37, $f2, $00


Data_30_77d4entry00::
	db $2d, $48, $43, $44, $10, $41, $49, $47, $3d, $37, $10, $44, $40, $35, $4d, $36, $35, $37, $3f, $00
Data_30_77d4entry01::
	db $21, $43, $fa, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $1b, $47, $47, $35, $49, $40, $48, $10, $2e, $46, $43, $49, $44, $39, $00
Data_30_77d4entry02::
	db $2e, $3d, $41, $39, $10, $2d, $40, $3d, $44, $47, $10, $1b, $4b, $35, $4d, $00
Data_30_77d4entry03::
	db $22, $39, $35, $46, $48, $4b, $35, $46, $41, $3d, $42, $3b, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $2e, $3c, $39, $35, $48, $39, $46, $10, $26, $3d, $3a, $39, $00
Data_30_77d4entry04::
	db $1c, $40, $43, $43, $41, $3d, $42, $3b, $10, $27, $35, $3d, $38, $39, $42, $47, $00
Data_30_77d4entry05::
	db $20, $35, $46, $39, $4b, $39, $40, $40, $00
Data_30_77d4entry06::
	db $2d, $44, $46, $3d, $42, $3b, $10, $3d, $47, $10, $1d, $43, $41, $3d, $42, $3b, $00
Data_30_77d4entry07::
	db $2e, $35, $42, $3b, $43, $10, $43, $3a, $10, $20, $35, $48, $39, $00
Data_30_77d4entry08::
	db $2e, $3c, $39, $10, $24, $43, $4d, $10, $43, $3a, $10, $26, $3d, $4a, $3d, $42, $3b, $00
Data_30_77d4entry09::
	db $2d, $43, $49, $48, $3c, $39, $46, $42, $10, $31, $3d, $42, $38, $e1, $10, $21, $43, $fa, $10, $21, $43, $fa, $00
Data_30_77d4entry0a::
	db $27, $4d, $10, $1c, $39, $40, $43, $4a, $39, $38, $10, $24, $39, $35, $42, $01, $0a, $2a, $35, $49, $40, $00
Data_30_77d4entry0b::
	db $26, $39, $48, $01, $01, $47, $10, $2e, $35, $3f, $39, $10, $48, $3c, $39, $10, $2e, $46, $35, $3d, $42, $00
Data_30_77d4entry0c::
	db $27, $43, $4a, $39, $10, $29, $49, $48, $fa, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $1b, $47, $47, $35, $49, $40, $48, $10, $2e, $46, $43, $49, $44, $39, $10, $2e, $3c, $39, $41, $39, $00
Data_30_77d4entry0d::
	db $29, $42, $48, $43, $10, $48, $3c, $39, $10, $28, $39, $4c, $48, $10, $29, $42, $39, $fa, $00
Data_30_77d4entry0e::
	db $21, $43, $10, $20, $43, $46, $10, $23, $48, $e1, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $1b, $47, $47, $35, $49, $40, $48, $10, $2e, $46, $43, $49, $44, $39, $fa, $00
Data_30_77d4entry0f::
	db $30, $3d, $37, $48, $43, $46, $4d, $fa, $00
Data_30_77d4entry10::
	db $2e, $3c, $39, $41, $39, $10, $43, $3a, $10, $2d, $43, $46, $46, $43, $4b, $00
Data_30_77d4entry11::
	db $24, $43, $4d, $00
Data_30_77d4entry12::
	db $2d, $3d, $40, $39, $42, $48, $10, $28, $3d, $3c, $3d, $40, $3d, $47, $48, $00
Data_30_77d4entry13::
	db $2e, $3c, $39, $41, $39, $10, $43, $3a, $10, $24, $43, $4d, $00
Data_30_77d4entry14::
	db $1e, $35, $4d, $10, $2e, $46, $3d, $44, $10, $48, $43, $10, $48, $3c, $39, $10, $1d, $3d, $48, $4d, $00


EnLoadSaveScreenPopupGfx::
	ld   bc, .end-.gfx
	ld   de, $d000+$100
	ld   hl, .gfx
	call MemCopy
	ret
.gfx:
	INCBIN "en_saveScreenPopups.2bpp"
.end:

	
Gfx_EnDormRoomDayDetails::
	INCBIN "en_dormRoomDayDetails.2bpp"
.end::


EnDMGScreen::
	ld   bc, .layout-.gfx
	ld   de, _VRAM+$800
	ld   hl, .gfx
	call MemCopy

	ld   a, BANK(.layout)
	ldbc 20, 18
	ld   de, .layout
	ld   hl, _SCRN0
	call FarCopyLayout
	ret

.gfx:
	INCBIN "en_dmg.2bpp"

.layout:
	db $80, $81, $82, $83, $84, $85, $82, $83, $84, $85, $82, $83, $84, $85, $82, $83, $84, $85, $86, $87
	db $88, $89, $8a, $8b, $8c, $8d, $8a, $8b, $8c, $8d, $8a, $8b, $8c, $8d, $8a, $8b, $8c, $8d, $8e, $8f
	db $90, $91, $92, $93, $94, $95, $96, $93, $94, $95, $96, $93, $94, $95, $96, $93, $94, $97, $98, $99
	db $9a, $9b, $9c, $9d, $9e, $9f, $9f, $9f, $9f, $a0, $9f, $9f, $a1, $9f, $a2, $9f, $9f, $a3, $a4, $8d
	db $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $af, $b2, $a8, $b3, $b4, $b5, $b6
	db $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $9f, $c7, $c8, $c9
	db $90, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $9f, $c7, $d9, $99
	db $9a, $9b, $da, $db, $dc, $dd, $de, $dd, $df, $e0, $b3, $e1, $af, $e2, $e3, $e4, $e5, $c7, $a4, $8d
	db $a5, $a6, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $9f, $9f, $c7, $b5, $b6
	db $b7, $b8, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fa, $fd, $fe, $9f, $9f, $c7, $c8, $c9
	db $90, $ca, $ff, $00, $01, $02, $02, $01, $01, $02, $02, $01, $01, $02, $02, $00, $01, $03, $d9, $99
	db $9a, $9b, $8c, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $8b, $a4, $8d
	db $a5, $a6, $8d, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $8c, $b5, $b6
	db $b7, $20, $21, $22, $23, $24, $21, $22, $23, $24, $21, $22, $23, $24, $21, $22, $23, $24, $25, $c9
	db $90, $8a, $26, $27, $28, $29, $2a, $8c, $2b, $2c, $2d, $2e, $2f, $8a, $30, $31, $32, $33, $8b, $99
	db $9a, $8b, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $8c, $8d
	db $44, $45, $8d, $8a, $8b, $8c, $8d, $8a, $8b, $8c, $8d, $8a, $8b, $8c, $8d, $8a, $8b, $8c, $46, $47
	db $48, $89, $49, $4a, $4b, $8d, $49, $4a, $4b, $8d, $49, $4a, $4b, $8d, $49, $4a, $4b, $8d, $4c, $4d


EnResetDataHook::
; Original tile attr hook
	ld   de, RleXorTileAttr_ResetData
	call RLEXorCopy

	ld   a, BANK(.attrs)
	ldbc 10, 8
	ld   de, .attrs
	ld   hl, $9865
	call FarCopyLayout

; Load new tile data
	ld   bc, .layout-.gfx
	ld   de, $9000
	ld   hl, .gfx
	call MemCopy

; Original tile map hook
	xor  a                                                          ; $403a
	ldh  [rVBK], a                                                  ; $403b
	ld   a, BANK(RleXorTileMap_ResetData)                           ; $403d
	ld   hl, _SCRN0                                                 ; $403f
	ld   de, RleXorTileMap_ResetData                                ; $4042
	call RLEXorCopy                                                 ; $4045

	ld   a, BANK(.layout)
	ldbc 10, 8
	ld   de, .layout
	ld   hl, $9865
	call FarCopyLayout

	ret

.gfx:
	INCBIN "en_resetData.2bpp"
.layout:
	db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09
	db $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13
	db $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d
	db $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27
	db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31
	db $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45
	db $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
.attrs:
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
	db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08


EnLoadRomandoShopCurrPtsTileData::
	ld   bc, $10
	ld   de, $d000+$c00
	ld   hl, .gfx
	call MemCopy

	ld   bc, $70
	ld   de, $d000+$d00
	ld   hl, .gfx+$10
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$c10
	ld   hl, .gfx+$80
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$c20
	ld   hl, .gfx+$90
	call MemCopy

	ld   bc, $70
	ld   de, $d000+$e00
	ld   hl, .gfx+$a0
	call MemCopy

	ld   bc, $10
	ld   de, $d000+$c30
	ld   hl, .gfx+$110
	call MemCopy
	ret
.gfx:
	INCBIN "en_romandoShopCurrPts.2bpp"
.end:

endc