; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ef", ROMX[$4000], BANK[$ef]

	adc  b                                           ; $4000: $88
	adc  b                                           ; $4001: $88
	adc  b                                           ; $4002: $88
	adc  b                                           ; $4003: $88
	adc  b                                           ; $4004: $88
	adc  b                                           ; $4005: $88
	adc  b                                           ; $4006: $88
	adc  b                                           ; $4007: $88
	adc  b                                           ; $4008: $88
	adc  b                                           ; $4009: $88
	adc  b                                           ; $400a: $88
	adc  b                                           ; $400b: $88
	adc  b                                           ; $400c: $88
	adc  b                                           ; $400d: $88
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	adc  b                                           ; $4010: $88
	adc  b                                           ; $4011: $88
	adc  b                                           ; $4012: $88
	adc  b                                           ; $4013: $88
	adc  b                                           ; $4014: $88
	adc  b                                           ; $4015: $88
	adc  b                                           ; $4016: $88
	adc  b                                           ; $4017: $88
	adc  b                                           ; $4018: $88
	adc  b                                           ; $4019: $88
	adc  b                                           ; $401a: $88
	adc  b                                           ; $401b: $88
	adc  b                                           ; $401c: $88
	adc  b                                           ; $401d: $88
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	adc  b                                           ; $4020: $88
	adc  b                                           ; $4021: $88
	adc  b                                           ; $4022: $88
	adc  b                                           ; $4023: $88
	adc  b                                           ; $4024: $88
	adc  b                                           ; $4025: $88
	adc  b                                           ; $4026: $88
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	adc  b                                           ; $4029: $88
	adc  b                                           ; $402a: $88
	adc  b                                           ; $402b: $88
	adc  b                                           ; $402c: $88
	adc  b                                           ; $402d: $88
	adc  b                                           ; $402e: $88
	adc  b                                           ; $402f: $88
	adc  b                                           ; $4030: $88
	adc  c                                           ; $4031: $89
	ld   [hl], a                                     ; $4032: $77
	and  [hl]                                        ; $4033: $a6
	sbc  c                                           ; $4034: $99
	ld   a, d                                        ; $4035: $7a
	ld   c, c                                        ; $4036: $49
	add  [hl]                                        ; $4037: $86
	or   [hl]                                        ; $4038: $b6
	sub  a                                           ; $4039: $97
	sbc  d                                           ; $403a: $9a
	ld   [hl], a                                     ; $403b: $77
	sbc  b                                           ; $403c: $98
	ld   a, b                                        ; $403d: $78
	adc  b                                           ; $403e: $88
	adc  b                                           ; $403f: $88
	adc  b                                           ; $4040: $88
	adc  b                                           ; $4041: $88
	sub  a                                           ; $4042: $97
	sbc  b                                           ; $4043: $98
	adc  b                                           ; $4044: $88
	adc  c                                           ; $4045: $89
	ld   a, b                                        ; $4046: $78
	sub  a                                           ; $4047: $97
	adc  b                                           ; $4048: $88
	ld   a, c                                        ; $4049: $79
	ld   a, b                                        ; $404a: $78
	adc  b                                           ; $404b: $88
	ld   a, d                                        ; $404c: $7a
	add  [hl]                                        ; $404d: $86
	and  a                                           ; $404e: $a7
	adc  b                                           ; $404f: $88
	ld   a, c                                        ; $4050: $79
	ld   a, b                                        ; $4051: $78
	ld   a, b                                        ; $4052: $78
	adc  b                                           ; $4053: $88
	adc  b                                           ; $4054: $88
	adc  b                                           ; $4055: $88
	add  a                                           ; $4056: $87
	sub  a                                           ; $4057: $97
	add  a                                           ; $4058: $87
	ld   a, c                                        ; $4059: $79
	ld   a, b                                        ; $405a: $78
	adc  b                                           ; $405b: $88
	adc  b                                           ; $405c: $88
	adc  b                                           ; $405d: $88
	adc  b                                           ; $405e: $88
	adc  b                                           ; $405f: $88
	add  a                                           ; $4060: $87
	add  a                                           ; $4061: $87
	ld   a, b                                        ; $4062: $78
	ld   a, e                                        ; $4063: $7b
	ld   [hl], a                                     ; $4064: $77
	sub  [hl]                                        ; $4065: $96
	adc  b                                           ; $4066: $88
	and  [hl]                                        ; $4067: $a6
	adc  c                                           ; $4068: $89
	ld   a, c                                        ; $4069: $79
	ld   a, c                                        ; $406a: $79
	add  a                                           ; $406b: $87
	sbc  c                                           ; $406c: $99
	ld   a, c                                        ; $406d: $79
	adc  b                                           ; $406e: $88
	add  a                                           ; $406f: $87
	adc  c                                           ; $4070: $89
	add  a                                           ; $4071: $87
	sub  a                                           ; $4072: $97
	sub  a                                           ; $4073: $97
	adc  b                                           ; $4074: $88
	halt                                             ; $4075: $76
	sbc  l                                           ; $4076: $9d
	ld   e, b                                        ; $4077: $58
	ld   a, b                                        ; $4078: $78
	sub  h                                           ; $4079: $94
	cp   b                                           ; $407a: $b8
	ld   [hl], a                                     ; $407b: $77
	halt                                             ; $407c: $76
	sbc  c                                           ; $407d: $99
	adc  d                                           ; $407e: $8a
	ld   l, d                                        ; $407f: $6a
	ld   l, c                                        ; $4080: $69
	add  a                                           ; $4081: $87
	sub  a                                           ; $4082: $97
	add  [hl]                                        ; $4083: $86
	adc  b                                           ; $4084: $88
	adc  c                                           ; $4085: $89
	and  a                                           ; $4086: $a7
	adc  c                                           ; $4087: $89
	ld   l, c                                        ; $4088: $69
	ld   l, c                                        ; $4089: $69
	adc  b                                           ; $408a: $88
	sub  a                                           ; $408b: $97
	sbc  c                                           ; $408c: $99
	sub  a                                           ; $408d: $97
	sub  a                                           ; $408e: $97
	ld   a, c                                        ; $408f: $79
	ld   a, b                                        ; $4090: $78
	sub  a                                           ; $4091: $97
	add  a                                           ; $4092: $87
	ld   a, c                                        ; $4093: $79
	sbc  b                                           ; $4094: $98
	add  a                                           ; $4095: $87
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	ld   [hl], a                                     ; $4098: $77
	sbc  d                                           ; $4099: $9a
	ld   l, b                                        ; $409a: $68
	ld   a, b                                        ; $409b: $78
	sbc  c                                           ; $409c: $99
	add  [hl]                                        ; $409d: $86
	sub  [hl]                                        ; $409e: $96
	cp   b                                           ; $409f: $b8
	ld   l, b                                        ; $40a0: $68
	ld   a, c                                        ; $40a1: $79
	ld   a, d                                        ; $40a2: $7a
	ld   a, b                                        ; $40a3: $78
	sub  a                                           ; $40a4: $97
	adc  b                                           ; $40a5: $88
	adc  b                                           ; $40a6: $88
	adc  d                                           ; $40a7: $8a
	sbc  b                                           ; $40a8: $98
	halt                                             ; $40a9: $76
	and  [hl]                                        ; $40aa: $a6
	ld   a, d                                        ; $40ab: $7a
	ld   a, c                                        ; $40ac: $79
	ld   a, b                                        ; $40ad: $78
	adc  b                                           ; $40ae: $88
	ld   a, c                                        ; $40af: $79
	ld   h, a                                        ; $40b0: $67
	and  a                                           ; $40b1: $a7
	sub  a                                           ; $40b2: $97
	adc  b                                           ; $40b3: $88
	ld   a, c                                        ; $40b4: $79
	sub  a                                           ; $40b5: $97
	ld   [hl], a                                     ; $40b6: $77
	ld   a, c                                        ; $40b7: $79
	sbc  b                                           ; $40b8: $98
	ld   a, b                                        ; $40b9: $78
	adc  b                                           ; $40ba: $88
	sub  a                                           ; $40bb: $97
	add  a                                           ; $40bc: $87
	ld   a, c                                        ; $40bd: $79
	adc  d                                           ; $40be: $8a
	adc  b                                           ; $40bf: $88
	ld   [hl], a                                     ; $40c0: $77
	add  a                                           ; $40c1: $87
	adc  b                                           ; $40c2: $88
	ld   a, c                                        ; $40c3: $79
	ld   a, c                                        ; $40c4: $79
	add  [hl]                                        ; $40c5: $86
	adc  c                                           ; $40c6: $89
	add  a                                           ; $40c7: $87
	sub  a                                           ; $40c8: $97
	ld   [hl], a                                     ; $40c9: $77
	adc  d                                           ; $40ca: $8a
	ld   l, b                                        ; $40cb: $68
	add  a                                           ; $40cc: $87
	ld   a, c                                        ; $40cd: $79
	sbc  b                                           ; $40ce: $98
	add  a                                           ; $40cf: $87
	sbc  b                                           ; $40d0: $98
	ld   l, d                                        ; $40d1: $6a
	add  a                                           ; $40d2: $87
	ld   [hl], a                                     ; $40d3: $77
	sub  a                                           ; $40d4: $97
	ld   a, c                                        ; $40d5: $79
	ld   a, b                                        ; $40d6: $78
	add  [hl]                                        ; $40d7: $86
	cp   c                                           ; $40d8: $b9
	adc  b                                           ; $40d9: $88
	adc  b                                           ; $40da: $88
	ld   [hl], a                                     ; $40db: $77
	sbc  b                                           ; $40dc: $98
	ld   [hl], a                                     ; $40dd: $77
	ld   a, b                                        ; $40de: $78
	ld   a, b                                        ; $40df: $78
	add  a                                           ; $40e0: $87
	sbc  b                                           ; $40e1: $98
	add  a                                           ; $40e2: $87
	sbc  d                                           ; $40e3: $9a
	ld   [hl], a                                     ; $40e4: $77
	and  [hl]                                        ; $40e5: $a6
	ld   a, d                                        ; $40e6: $7a
	adc  b                                           ; $40e7: $88
	ld   a, b                                        ; $40e8: $78
	add  a                                           ; $40e9: $87
	sbc  b                                           ; $40ea: $98
	ld   l, b                                        ; $40eb: $68
	and  a                                           ; $40ec: $a7
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	ld   l, d                                        ; $40ef: $6a
	add  [hl]                                        ; $40f0: $86
	and  [hl]                                        ; $40f1: $a6
	sub  [hl]                                        ; $40f2: $96
	sbc  b                                           ; $40f3: $98
	ld   e, e                                        ; $40f4: $5b
	ld   a, c                                        ; $40f5: $79
	sbc  b                                           ; $40f6: $98
	add  [hl]                                        ; $40f7: $86
	and  [hl]                                        ; $40f8: $a6
	and  a                                           ; $40f9: $a7
	ld   a, e                                        ; $40fa: $7b
	ld   l, b                                        ; $40fb: $68
	adc  b                                           ; $40fc: $88
	add  a                                           ; $40fd: $87
	add  a                                           ; $40fe: $87
	and  [hl]                                        ; $40ff: $a6
	ld   a, h                                        ; $4100: $7c
	ld   d, a                                        ; $4101: $57
	and  [hl]                                        ; $4102: $a6
	ld   a, b                                        ; $4103: $78
	or   [hl]                                        ; $4104: $b6
	ld   a, c                                        ; $4105: $79
	ld   a, c                                        ; $4106: $79
	ld   l, b                                        ; $4107: $68
	sub  a                                           ; $4108: $97
	add  a                                           ; $4109: $87
	sbc  b                                           ; $410a: $98
	ld   l, c                                        ; $410b: $69
	sub  a                                           ; $410c: $97
	ld   l, d                                        ; $410d: $6a
	sub  [hl]                                        ; $410e: $96
	adc  d                                           ; $410f: $8a
	add  [hl]                                        ; $4110: $86
	ld   a, c                                        ; $4111: $79
	sub  [hl]                                        ; $4112: $96
	ld   a, d                                        ; $4113: $7a
	ld   [hl], a                                     ; $4114: $77
	xor  b                                           ; $4115: $a8
	adc  b                                           ; $4116: $88
	ld   a, b                                        ; $4117: $78
	ld   a, b                                        ; $4118: $78
	adc  b                                           ; $4119: $88
	add  a                                           ; $411a: $87
	and  a                                           ; $411b: $a7
	ld   l, d                                        ; $411c: $6a
	ld   [hl], a                                     ; $411d: $77
	adc  d                                           ; $411e: $8a
	add  [hl]                                        ; $411f: $86
	or   a                                           ; $4120: $b7
	ld   a, c                                        ; $4121: $79
	sbc  c                                           ; $4122: $99
	ld   l, c                                        ; $4123: $69
	and  a                                           ; $4124: $a7
	ld   a, c                                        ; $4125: $79
	adc  b                                           ; $4126: $88
	ld   a, c                                        ; $4127: $79
	add  a                                           ; $4128: $87
	sbc  c                                           ; $4129: $99
	ld   l, b                                        ; $412a: $68
	and  [hl]                                        ; $412b: $a6
	adc  c                                           ; $412c: $89
	sbc  b                                           ; $412d: $98
	ld   a, b                                        ; $412e: $78
	adc  b                                           ; $412f: $88
	ld   a, c                                        ; $4130: $79
	adc  b                                           ; $4131: $88
	adc  b                                           ; $4132: $88
	sub  a                                           ; $4133: $97
	and  [hl]                                        ; $4134: $a6
	adc  c                                           ; $4135: $89
	adc  b                                           ; $4136: $88
	adc  b                                           ; $4137: $88
	ld   l, c                                        ; $4138: $69
	ld   [hl], a                                     ; $4139: $77
	adc  c                                           ; $413a: $89
	add  a                                           ; $413b: $87
	sub  a                                           ; $413c: $97
	add  a                                           ; $413d: $87
	sbc  c                                           ; $413e: $99
	ld   a, c                                        ; $413f: $79
	add  a                                           ; $4140: $87
	ld   a, d                                        ; $4141: $7a
	add  a                                           ; $4142: $87
	adc  b                                           ; $4143: $88
	sbc  b                                           ; $4144: $98
	ld   a, b                                        ; $4145: $78
	sub  a                                           ; $4146: $97
	ld   a, c                                        ; $4147: $79
	adc  b                                           ; $4148: $88
	adc  b                                           ; $4149: $88
	adc  b                                           ; $414a: $88
	ld   a, b                                        ; $414b: $78
	ld   [hl], a                                     ; $414c: $77
	and  a                                           ; $414d: $a7
	adc  c                                           ; $414e: $89
	ld   a, b                                        ; $414f: $78
	ld   a, b                                        ; $4150: $78
	add  a                                           ; $4151: $87
	adc  b                                           ; $4152: $88
	add  a                                           ; $4153: $87
	adc  b                                           ; $4154: $88
	ld   a, c                                        ; $4155: $79
	adc  b                                           ; $4156: $88
	adc  b                                           ; $4157: $88
	sbc  b                                           ; $4158: $98
	sbc  b                                           ; $4159: $98
	adc  b                                           ; $415a: $88
	adc  b                                           ; $415b: $88
	adc  b                                           ; $415c: $88
	adc  b                                           ; $415d: $88
	adc  b                                           ; $415e: $88
	adc  c                                           ; $415f: $89
	adc  b                                           ; $4160: $88
	adc  b                                           ; $4161: $88
	adc  b                                           ; $4162: $88
	adc  b                                           ; $4163: $88
	sbc  b                                           ; $4164: $98
	adc  c                                           ; $4165: $89
	ld   a, b                                        ; $4166: $78
	adc  b                                           ; $4167: $88
	adc  b                                           ; $4168: $88
	adc  b                                           ; $4169: $88
	adc  b                                           ; $416a: $88
	adc  b                                           ; $416b: $88
	adc  b                                           ; $416c: $88
	sbc  b                                           ; $416d: $98
	adc  b                                           ; $416e: $88
	adc  b                                           ; $416f: $88
	adc  b                                           ; $4170: $88
	adc  b                                           ; $4171: $88
	adc  b                                           ; $4172: $88
	adc  b                                           ; $4173: $88
	adc  b                                           ; $4174: $88
	adc  b                                           ; $4175: $88
	adc  b                                           ; $4176: $88
	adc  b                                           ; $4177: $88
	adc  b                                           ; $4178: $88
	adc  b                                           ; $4179: $88
	adc  b                                           ; $417a: $88
	adc  b                                           ; $417b: $88
	adc  b                                           ; $417c: $88
	adc  b                                           ; $417d: $88
	adc  b                                           ; $417e: $88
	adc  b                                           ; $417f: $88
	adc  b                                           ; $4180: $88
	adc  b                                           ; $4181: $88
	adc  b                                           ; $4182: $88
	adc  b                                           ; $4183: $88
	adc  b                                           ; $4184: $88
	adc  b                                           ; $4185: $88
	adc  b                                           ; $4186: $88
	adc  b                                           ; $4187: $88
	adc  b                                           ; $4188: $88
	adc  b                                           ; $4189: $88
	adc  b                                           ; $418a: $88
	adc  b                                           ; $418b: $88
	adc  b                                           ; $418c: $88
	adc  b                                           ; $418d: $88
	adc  b                                           ; $418e: $88
	adc  b                                           ; $418f: $88
	adc  b                                           ; $4190: $88
	adc  b                                           ; $4191: $88
	adc  b                                           ; $4192: $88
	adc  b                                           ; $4193: $88
	adc  b                                           ; $4194: $88
	adc  b                                           ; $4195: $88
	adc  b                                           ; $4196: $88

Jump_0ef_4197:
	adc  b                                           ; $4197: $88
	adc  b                                           ; $4198: $88
	adc  b                                           ; $4199: $88
	adc  b                                           ; $419a: $88
	adc  b                                           ; $419b: $88
	adc  b                                           ; $419c: $88
	adc  b                                           ; $419d: $88
	adc  b                                           ; $419e: $88
	adc  b                                           ; $419f: $88
	adc  b                                           ; $41a0: $88
	adc  b                                           ; $41a1: $88
	adc  b                                           ; $41a2: $88
	adc  b                                           ; $41a3: $88
	adc  b                                           ; $41a4: $88
	adc  b                                           ; $41a5: $88
	adc  b                                           ; $41a6: $88
	adc  b                                           ; $41a7: $88
	adc  b                                           ; $41a8: $88
	adc  b                                           ; $41a9: $88
	adc  b                                           ; $41aa: $88
	adc  b                                           ; $41ab: $88
	adc  b                                           ; $41ac: $88
	adc  b                                           ; $41ad: $88
	adc  b                                           ; $41ae: $88
	adc  b                                           ; $41af: $88
	adc  b                                           ; $41b0: $88
	adc  b                                           ; $41b1: $88
	adc  b                                           ; $41b2: $88
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	adc  b                                           ; $41b5: $88
	adc  b                                           ; $41b6: $88

Call_0ef_41b7:
	adc  b                                           ; $41b7: $88
	adc  b                                           ; $41b8: $88
	adc  b                                           ; $41b9: $88
	adc  b                                           ; $41ba: $88
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	adc  b                                           ; $41bd: $88
	adc  b                                           ; $41be: $88
	adc  b                                           ; $41bf: $88
	adc  b                                           ; $41c0: $88
	adc  b                                           ; $41c1: $88
	adc  b                                           ; $41c2: $88
	adc  b                                           ; $41c3: $88
	adc  b                                           ; $41c4: $88
	adc  b                                           ; $41c5: $88
	adc  b                                           ; $41c6: $88
	adc  b                                           ; $41c7: $88
	adc  b                                           ; $41c8: $88
	adc  b                                           ; $41c9: $88
	adc  b                                           ; $41ca: $88
	adc  b                                           ; $41cb: $88
	adc  b                                           ; $41cc: $88
	adc  b                                           ; $41cd: $88
	adc  b                                           ; $41ce: $88
	adc  b                                           ; $41cf: $88
	adc  b                                           ; $41d0: $88
	adc  b                                           ; $41d1: $88
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	adc  b                                           ; $41d4: $88
	adc  b                                           ; $41d5: $88
	adc  b                                           ; $41d6: $88
	adc  b                                           ; $41d7: $88
	adc  b                                           ; $41d8: $88
	adc  b                                           ; $41d9: $88
	adc  b                                           ; $41da: $88
	adc  b                                           ; $41db: $88
	adc  b                                           ; $41dc: $88
	adc  b                                           ; $41dd: $88
	adc  b                                           ; $41de: $88
	adc  b                                           ; $41df: $88
	adc  b                                           ; $41e0: $88
	adc  b                                           ; $41e1: $88
	adc  b                                           ; $41e2: $88
	adc  b                                           ; $41e3: $88
	adc  b                                           ; $41e4: $88
	adc  b                                           ; $41e5: $88
	adc  b                                           ; $41e6: $88
	adc  b                                           ; $41e7: $88
	adc  b                                           ; $41e8: $88
	adc  b                                           ; $41e9: $88
	adc  b                                           ; $41ea: $88
	adc  b                                           ; $41eb: $88
	adc  b                                           ; $41ec: $88
	adc  b                                           ; $41ed: $88
	adc  b                                           ; $41ee: $88
	adc  b                                           ; $41ef: $88
	adc  b                                           ; $41f0: $88
	adc  b                                           ; $41f1: $88
	adc  b                                           ; $41f2: $88
	adc  b                                           ; $41f3: $88
	adc  b                                           ; $41f4: $88
	adc  b                                           ; $41f5: $88
	adc  b                                           ; $41f6: $88
	adc  b                                           ; $41f7: $88
	adc  b                                           ; $41f8: $88
	adc  b                                           ; $41f9: $88
	adc  b                                           ; $41fa: $88
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	adc  b                                           ; $41fd: $88
	adc  b                                           ; $41fe: $88
	adc  b                                           ; $41ff: $88
	adc  b                                           ; $4200: $88
	adc  b                                           ; $4201: $88
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	adc  b                                           ; $4206: $88
	adc  b                                           ; $4207: $88
	adc  b                                           ; $4208: $88
	adc  b                                           ; $4209: $88
	adc  b                                           ; $420a: $88
	adc  b                                           ; $420b: $88
	adc  b                                           ; $420c: $88
	adc  b                                           ; $420d: $88
	adc  b                                           ; $420e: $88
	adc  b                                           ; $420f: $88
	adc  b                                           ; $4210: $88
	adc  b                                           ; $4211: $88
	adc  b                                           ; $4212: $88
	adc  b                                           ; $4213: $88
	adc  b                                           ; $4214: $88
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
	adc  b                                           ; $4217: $88
	adc  b                                           ; $4218: $88
	adc  b                                           ; $4219: $88
	adc  b                                           ; $421a: $88
	adc  b                                           ; $421b: $88
	adc  b                                           ; $421c: $88
	adc  b                                           ; $421d: $88
	adc  b                                           ; $421e: $88
	adc  b                                           ; $421f: $88
	adc  b                                           ; $4220: $88
	adc  b                                           ; $4221: $88
	adc  b                                           ; $4222: $88
	adc  b                                           ; $4223: $88
	adc  b                                           ; $4224: $88
	adc  b                                           ; $4225: $88
	adc  b                                           ; $4226: $88
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	adc  b                                           ; $4229: $88
	adc  b                                           ; $422a: $88
	adc  b                                           ; $422b: $88
	adc  b                                           ; $422c: $88
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  b                                           ; $4230: $88
	adc  b                                           ; $4231: $88
	adc  b                                           ; $4232: $88
	adc  b                                           ; $4233: $88
	adc  b                                           ; $4234: $88
	adc  b                                           ; $4235: $88
	adc  b                                           ; $4236: $88
	adc  b                                           ; $4237: $88
	adc  b                                           ; $4238: $88
	adc  b                                           ; $4239: $88
	adc  b                                           ; $423a: $88
	adc  b                                           ; $423b: $88
	adc  b                                           ; $423c: $88
	adc  b                                           ; $423d: $88
	adc  b                                           ; $423e: $88
	adc  b                                           ; $423f: $88
	adc  b                                           ; $4240: $88
	adc  b                                           ; $4241: $88
	adc  b                                           ; $4242: $88
	adc  b                                           ; $4243: $88
	adc  b                                           ; $4244: $88
	adc  b                                           ; $4245: $88
	adc  b                                           ; $4246: $88
	adc  b                                           ; $4247: $88
	adc  b                                           ; $4248: $88
	adc  b                                           ; $4249: $88
	adc  b                                           ; $424a: $88
	adc  b                                           ; $424b: $88
	adc  b                                           ; $424c: $88
	adc  b                                           ; $424d: $88
	adc  b                                           ; $424e: $88
	adc  b                                           ; $424f: $88
	adc  b                                           ; $4250: $88
	adc  b                                           ; $4251: $88
	adc  b                                           ; $4252: $88
	adc  b                                           ; $4253: $88
	adc  b                                           ; $4254: $88
	adc  b                                           ; $4255: $88
	adc  b                                           ; $4256: $88
	adc  b                                           ; $4257: $88
	adc  b                                           ; $4258: $88
	adc  b                                           ; $4259: $88
	adc  b                                           ; $425a: $88
	adc  b                                           ; $425b: $88
	adc  b                                           ; $425c: $88
	adc  b                                           ; $425d: $88
	adc  b                                           ; $425e: $88
	adc  b                                           ; $425f: $88
	adc  b                                           ; $4260: $88
	adc  b                                           ; $4261: $88
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	adc  b                                           ; $4264: $88
	adc  b                                           ; $4265: $88
	adc  b                                           ; $4266: $88
	adc  b                                           ; $4267: $88
	adc  b                                           ; $4268: $88
	adc  b                                           ; $4269: $88
	adc  b                                           ; $426a: $88
	adc  b                                           ; $426b: $88
	adc  b                                           ; $426c: $88
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	adc  b                                           ; $426f: $88
	adc  b                                           ; $4270: $88
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	adc  b                                           ; $4275: $88
	adc  b                                           ; $4276: $88
	adc  b                                           ; $4277: $88
	adc  b                                           ; $4278: $88
	adc  b                                           ; $4279: $88
	adc  b                                           ; $427a: $88
	adc  b                                           ; $427b: $88
	adc  b                                           ; $427c: $88
	adc  b                                           ; $427d: $88
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	adc  b                                           ; $4280: $88
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	adc  b                                           ; $4284: $88
	adc  b                                           ; $4285: $88
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	adc  b                                           ; $4293: $88
	adc  b                                           ; $4294: $88
	adc  b                                           ; $4295: $88
	adc  b                                           ; $4296: $88
	adc  b                                           ; $4297: $88
	adc  b                                           ; $4298: $88
	adc  b                                           ; $4299: $88
	adc  b                                           ; $429a: $88
	adc  b                                           ; $429b: $88
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	adc  b                                           ; $429e: $88
	adc  b                                           ; $429f: $88
	adc  b                                           ; $42a0: $88
	adc  b                                           ; $42a1: $88
	adc  b                                           ; $42a2: $88
	adc  b                                           ; $42a3: $88
	adc  b                                           ; $42a4: $88
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88

Call_0ef_42a7:
	adc  b                                           ; $42a7: $88

Call_0ef_42a8:
	adc  b                                           ; $42a8: $88
	adc  b                                           ; $42a9: $88
	adc  b                                           ; $42aa: $88
	adc  b                                           ; $42ab: $88
	adc  b                                           ; $42ac: $88
	adc  b                                           ; $42ad: $88
	adc  b                                           ; $42ae: $88
	adc  b                                           ; $42af: $88
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	adc  b                                           ; $42b3: $88
	adc  b                                           ; $42b4: $88
	adc  b                                           ; $42b5: $88
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88

Call_0ef_42b8:
	adc  b                                           ; $42b8: $88
	adc  b                                           ; $42b9: $88
	adc  b                                           ; $42ba: $88
	adc  b                                           ; $42bb: $88
	adc  b                                           ; $42bc: $88
	adc  b                                           ; $42bd: $88
	adc  b                                           ; $42be: $88
	adc  b                                           ; $42bf: $88
	adc  b                                           ; $42c0: $88
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	adc  b                                           ; $42c3: $88
	adc  b                                           ; $42c4: $88
	adc  b                                           ; $42c5: $88
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	adc  b                                           ; $42ca: $88
	adc  b                                           ; $42cb: $88
	adc  b                                           ; $42cc: $88
	adc  b                                           ; $42cd: $88
	adc  b                                           ; $42ce: $88
	adc  b                                           ; $42cf: $88
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	adc  b                                           ; $42d2: $88
	adc  b                                           ; $42d3: $88
	adc  b                                           ; $42d4: $88
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	adc  b                                           ; $42d7: $88
	adc  b                                           ; $42d8: $88
	adc  b                                           ; $42d9: $88
	adc  b                                           ; $42da: $88
	adc  b                                           ; $42db: $88
	adc  b                                           ; $42dc: $88
	adc  b                                           ; $42dd: $88
	adc  b                                           ; $42de: $88
	adc  b                                           ; $42df: $88
	adc  b                                           ; $42e0: $88
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	adc  b                                           ; $42e3: $88
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	adc  b                                           ; $42e6: $88
	adc  b                                           ; $42e7: $88
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	adc  b                                           ; $42ea: $88
	adc  b                                           ; $42eb: $88
	adc  b                                           ; $42ec: $88
	adc  b                                           ; $42ed: $88
	adc  b                                           ; $42ee: $88
	adc  b                                           ; $42ef: $88
	adc  b                                           ; $42f0: $88
	adc  b                                           ; $42f1: $88
	adc  b                                           ; $42f2: $88
	adc  b                                           ; $42f3: $88
	adc  b                                           ; $42f4: $88
	adc  b                                           ; $42f5: $88
	adc  b                                           ; $42f6: $88
	adc  b                                           ; $42f7: $88
	adc  b                                           ; $42f8: $88
	adc  b                                           ; $42f9: $88
	adc  b                                           ; $42fa: $88
	adc  b                                           ; $42fb: $88
	adc  b                                           ; $42fc: $88
	adc  b                                           ; $42fd: $88
	adc  b                                           ; $42fe: $88
	adc  b                                           ; $42ff: $88
	adc  b                                           ; $4300: $88
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	adc  b                                           ; $4305: $88
	adc  b                                           ; $4306: $88
	adc  b                                           ; $4307: $88
	adc  b                                           ; $4308: $88
	adc  b                                           ; $4309: $88
	adc  b                                           ; $430a: $88
	adc  b                                           ; $430b: $88
	adc  b                                           ; $430c: $88
	adc  b                                           ; $430d: $88
	adc  b                                           ; $430e: $88
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  b                                           ; $4311: $88
	adc  b                                           ; $4312: $88
	adc  b                                           ; $4313: $88
	adc  b                                           ; $4314: $88
	adc  b                                           ; $4315: $88
	adc  b                                           ; $4316: $88
	adc  b                                           ; $4317: $88
	adc  b                                           ; $4318: $88
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	adc  b                                           ; $431c: $88
	adc  b                                           ; $431d: $88
	adc  b                                           ; $431e: $88
	adc  b                                           ; $431f: $88
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  b                                           ; $4326: $88
	adc  b                                           ; $4327: $88
	adc  b                                           ; $4328: $88
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	adc  b                                           ; $432b: $88
	adc  b                                           ; $432c: $88
	adc  b                                           ; $432d: $88
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  b                                           ; $4331: $88
	adc  b                                           ; $4332: $88
	adc  b                                           ; $4333: $88
	adc  b                                           ; $4334: $88
	adc  b                                           ; $4335: $88
	adc  b                                           ; $4336: $88
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  b                                           ; $433d: $88
	adc  b                                           ; $433e: $88
	adc  b                                           ; $433f: $88
	adc  b                                           ; $4340: $88
	adc  b                                           ; $4341: $88
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	adc  b                                           ; $4345: $88
	adc  b                                           ; $4346: $88
	adc  b                                           ; $4347: $88
	adc  b                                           ; $4348: $88
	adc  b                                           ; $4349: $88
	adc  b                                           ; $434a: $88
	adc  b                                           ; $434b: $88
	adc  b                                           ; $434c: $88
	adc  b                                           ; $434d: $88
	adc  b                                           ; $434e: $88
	adc  b                                           ; $434f: $88
	adc  b                                           ; $4350: $88
	adc  b                                           ; $4351: $88
	adc  b                                           ; $4352: $88
	adc  b                                           ; $4353: $88
	adc  b                                           ; $4354: $88
	adc  b                                           ; $4355: $88
	adc  b                                           ; $4356: $88
	adc  b                                           ; $4357: $88
	adc  b                                           ; $4358: $88
	adc  b                                           ; $4359: $88
	adc  b                                           ; $435a: $88
	adc  b                                           ; $435b: $88
	adc  b                                           ; $435c: $88
	adc  b                                           ; $435d: $88
	adc  b                                           ; $435e: $88
	adc  b                                           ; $435f: $88
	adc  b                                           ; $4360: $88
	adc  b                                           ; $4361: $88
	adc  b                                           ; $4362: $88
	adc  b                                           ; $4363: $88
	adc  b                                           ; $4364: $88
	adc  b                                           ; $4365: $88
	adc  b                                           ; $4366: $88
	adc  b                                           ; $4367: $88
	adc  b                                           ; $4368: $88
	adc  b                                           ; $4369: $88
	adc  b                                           ; $436a: $88
	adc  b                                           ; $436b: $88
	adc  b                                           ; $436c: $88
	adc  b                                           ; $436d: $88
	adc  b                                           ; $436e: $88
	adc  b                                           ; $436f: $88
	adc  b                                           ; $4370: $88
	adc  b                                           ; $4371: $88
	adc  b                                           ; $4372: $88
	adc  b                                           ; $4373: $88
	adc  b                                           ; $4374: $88
	adc  b                                           ; $4375: $88
	adc  b                                           ; $4376: $88
	adc  b                                           ; $4377: $88
	adc  b                                           ; $4378: $88
	adc  b                                           ; $4379: $88
	adc  b                                           ; $437a: $88
	adc  b                                           ; $437b: $88
	adc  b                                           ; $437c: $88
	adc  b                                           ; $437d: $88
	adc  b                                           ; $437e: $88
	adc  b                                           ; $437f: $88
	adc  b                                           ; $4380: $88
	adc  b                                           ; $4381: $88
	adc  b                                           ; $4382: $88
	adc  b                                           ; $4383: $88
	adc  b                                           ; $4384: $88
	adc  b                                           ; $4385: $88
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
	adc  b                                           ; $438b: $88
	adc  b                                           ; $438c: $88
	adc  b                                           ; $438d: $88
	adc  b                                           ; $438e: $88
	adc  b                                           ; $438f: $88
	adc  b                                           ; $4390: $88
	adc  b                                           ; $4391: $88
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	adc  b                                           ; $4394: $88
	adc  b                                           ; $4395: $88
	adc  b                                           ; $4396: $88
	adc  b                                           ; $4397: $88
	adc  b                                           ; $4398: $88
	adc  b                                           ; $4399: $88
	adc  b                                           ; $439a: $88
	adc  b                                           ; $439b: $88
	adc  b                                           ; $439c: $88
	adc  b                                           ; $439d: $88
	adc  b                                           ; $439e: $88
	adc  b                                           ; $439f: $88
	adc  b                                           ; $43a0: $88
	adc  b                                           ; $43a1: $88
	adc  b                                           ; $43a2: $88
	adc  b                                           ; $43a3: $88
	adc  b                                           ; $43a4: $88
	adc  b                                           ; $43a5: $88
	adc  b                                           ; $43a6: $88
	adc  b                                           ; $43a7: $88
	adc  b                                           ; $43a8: $88
	adc  b                                           ; $43a9: $88
	adc  b                                           ; $43aa: $88
	adc  b                                           ; $43ab: $88
	adc  b                                           ; $43ac: $88
	adc  b                                           ; $43ad: $88
	adc  b                                           ; $43ae: $88
	adc  b                                           ; $43af: $88
	adc  b                                           ; $43b0: $88
	adc  b                                           ; $43b1: $88
	adc  b                                           ; $43b2: $88
	adc  b                                           ; $43b3: $88
	adc  b                                           ; $43b4: $88
	adc  b                                           ; $43b5: $88
	adc  b                                           ; $43b6: $88
	adc  b                                           ; $43b7: $88
	adc  b                                           ; $43b8: $88
	adc  b                                           ; $43b9: $88
	adc  b                                           ; $43ba: $88
	adc  b                                           ; $43bb: $88
	adc  b                                           ; $43bc: $88
	adc  b                                           ; $43bd: $88
	adc  b                                           ; $43be: $88
	adc  b                                           ; $43bf: $88
	adc  b                                           ; $43c0: $88
	adc  b                                           ; $43c1: $88
	adc  b                                           ; $43c2: $88
	adc  b                                           ; $43c3: $88
	adc  b                                           ; $43c4: $88
	adc  b                                           ; $43c5: $88
	adc  b                                           ; $43c6: $88
	adc  b                                           ; $43c7: $88
	adc  b                                           ; $43c8: $88
	adc  b                                           ; $43c9: $88
	adc  b                                           ; $43ca: $88
	adc  b                                           ; $43cb: $88
	adc  b                                           ; $43cc: $88
	adc  b                                           ; $43cd: $88
	adc  b                                           ; $43ce: $88
	adc  b                                           ; $43cf: $88
	adc  b                                           ; $43d0: $88
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	adc  b                                           ; $43db: $88
	adc  b                                           ; $43dc: $88
	adc  b                                           ; $43dd: $88
	adc  b                                           ; $43de: $88
	adc  b                                           ; $43df: $88
	adc  b                                           ; $43e0: $88
	adc  b                                           ; $43e1: $88
	adc  b                                           ; $43e2: $88
	adc  b                                           ; $43e3: $88
	adc  b                                           ; $43e4: $88
	adc  b                                           ; $43e5: $88
	adc  b                                           ; $43e6: $88
	adc  b                                           ; $43e7: $88
	adc  b                                           ; $43e8: $88
	adc  b                                           ; $43e9: $88
	adc  b                                           ; $43ea: $88
	adc  b                                           ; $43eb: $88
	adc  b                                           ; $43ec: $88
	adc  b                                           ; $43ed: $88
	adc  b                                           ; $43ee: $88
	adc  b                                           ; $43ef: $88
	adc  b                                           ; $43f0: $88
	adc  b                                           ; $43f1: $88
	adc  b                                           ; $43f2: $88
	adc  b                                           ; $43f3: $88
	adc  b                                           ; $43f4: $88
	adc  b                                           ; $43f5: $88
	adc  b                                           ; $43f6: $88
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	adc  b                                           ; $43f9: $88
	adc  b                                           ; $43fa: $88
	adc  b                                           ; $43fb: $88
	adc  b                                           ; $43fc: $88
	adc  b                                           ; $43fd: $88
	adc  b                                           ; $43fe: $88
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	adc  b                                           ; $4401: $88
	adc  b                                           ; $4402: $88
	adc  b                                           ; $4403: $88
	adc  b                                           ; $4404: $88
	adc  b                                           ; $4405: $88
	adc  b                                           ; $4406: $88
	adc  b                                           ; $4407: $88
	adc  b                                           ; $4408: $88
	adc  b                                           ; $4409: $88
	adc  b                                           ; $440a: $88
	adc  b                                           ; $440b: $88
	adc  b                                           ; $440c: $88
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	adc  b                                           ; $440f: $88
	adc  b                                           ; $4410: $88
	adc  b                                           ; $4411: $88
	adc  b                                           ; $4412: $88
	adc  b                                           ; $4413: $88
	adc  b                                           ; $4414: $88
	adc  b                                           ; $4415: $88
	sbc  c                                           ; $4416: $99
	sbc  d                                           ; $4417: $9a
	sbc  b                                           ; $4418: $98
	adc  b                                           ; $4419: $88
	add  a                                           ; $441a: $87
	adc  c                                           ; $441b: $89
	sub  a                                           ; $441c: $97
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	sbc  b                                           ; $441f: $98
	ld   a, b                                        ; $4420: $78
	add  a                                           ; $4421: $87
	ld   [hl], a                                     ; $4422: $77
	sbc  c                                           ; $4423: $99
	add  a                                           ; $4424: $87
	adc  h                                           ; $4425: $8c
	cp   d                                           ; $4426: $ba
	xor  d                                           ; $4427: $aa
	or   a                                           ; $4428: $b7
	ld   [hl], a                                     ; $4429: $77
	cp   h                                           ; $442a: $bc
	ld   a, d                                        ; $442b: $7a
	sbc  e                                           ; $442c: $9b
	ld   h, e                                        ; $442d: $63
	ld   [hl+], a                                    ; $442e: $22
	ld   h, e                                        ; $442f: $63
	inc  sp                                          ; $4430: $33
	ld   b, l                                        ; $4431: $45
	dec  [hl]                                        ; $4432: $35
	ld   e, h                                        ; $4433: $5c
	call c, $ffff                                    ; $4434: $dc $ff $ff
	call nc, $1133                                   ; $4437: $d4 $33 $11
	ld   de, $1111                                   ; $443a: $11 $11 $11
	ld   h, a                                        ; $443d: $67
	rst  $38                                         ; $443e: $ff
	rst  $38                                         ; $443f: $ff
	rst  $38                                         ; $4440: $ff
	rst  $38                                         ; $4441: $ff
	add  c                                           ; $4442: $81
	ld   de, $1111                                   ; $4443: $11 $11 $11
	ld   de, $ef13                                   ; $4446: $11 $13 $ef
	rst  $38                                         ; $4449: $ff
	rst  $38                                         ; $444a: $ff
	rst  $38                                         ; $444b: $ff
	rst  $38                                         ; $444c: $ff
	ld   d, c                                        ; $444d: $51
	ld   de, $1111                                   ; $444e: $11 $11 $11
	ld   de, $ff5a                                   ; $4451: $11 $5a $ff
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	rst  $38                                         ; $4456: $ff
	cp   $11                                         ; $4457: $fe $11
	ld   de, $1111                                   ; $4459: $11 $11 $11
	add  hl, de                                      ; $445c: $19
	db   $fd                                         ; $445d: $fd
	rst  $38                                         ; $445e: $ff
	rst  $38                                         ; $445f: $ff
	rst  $38                                         ; $4460: $ff
	rst  $38                                         ; $4461: $ff
	sbc  c                                           ; $4462: $99
	ld   de, $1111                                   ; $4463: $11 $11 $11
	ld   de, $ff6f                                   ; $4466: $11 $6f $ff
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff
	rst  $38                                         ; $446b: $ff
	rst  $38                                         ; $446c: $ff
	ld   de, $1111                                   ; $446d: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4470: $11 $11 $ff
	rst  $38                                         ; $4473: $ff
	rst  $38                                         ; $4474: $ff
	rst  $38                                         ; $4475: $ff
	rst  $38                                         ; $4476: $ff
	db   $f4                                         ; $4477: $f4
	ld   de, $1111                                   ; $4478: $11 $11 $11
	ld   de, $ff1f                                   ; $447b: $11 $1f $ff
	rst  $38                                         ; $447e: $ff
	rst  $38                                         ; $447f: $ff
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	ld   d, c                                        ; $4482: $51
	ld   de, $1111                                   ; $4483: $11 $11 $11
	ld   de, $ffff                                   ; $4486: $11 $ff $ff
	rst  $38                                         ; $4489: $ff
	db   $fd                                         ; $448a: $fd
	rst  $38                                         ; $448b: $ff
	di                                               ; $448c: $f3
	ld   de, $1511                                   ; $448d: $11 $11 $15
	ld   de, $ff5f                                   ; $4490: $11 $5f $ff
	rst  JumpTable                                         ; $4493: $df
	rst  $38                                         ; $4494: $ff

jr_0ef_4495:
	sbc  a                                           ; $4495: $9f
	rst  $38                                         ; $4496: $ff
	ld   de, $1111                                   ; $4497: $11 $11 $11
	ld   [hl], c                                     ; $449a: $71
	ld   a, [hl+]                                    ; $449b: $2a
	rst  $38                                         ; $449c: $ff
	ld   a, [$daff]                                  ; $449d: $fa $ff $da
	cp   a                                           ; $44a0: $bf
	pop  de                                          ; $44a1: $d1
	ld   de, $1811                                   ; $44a2: $11 $11 $18
	ld   d, $ef                                      ; $44a5: $16 $ef
	rst  $38                                         ; $44a7: $ff
	sbc  a                                           ; $44a8: $9f
	push af                                          ; $44a9: $f5
	adc  d                                           ; $44aa: $8a
	ld   sp, hl                                      ; $44ab: $f9
	ld   de, $1911                                   ; $44ac: $11 $11 $19
	ld   d, e                                        ; $44af: $53
	sbc  a                                           ; $44b0: $9f
	rst  $38                                         ; $44b1: $ff
	sbc  a                                           ; $44b2: $9f
	rst  $38                                         ; $44b3: $ff
	add  hl, sp                                      ; $44b4: $39
	cp   a                                           ; $44b5: $bf
	ld   hl, $1111                                   ; $44b6: $21 $11 $11
	ldh  [c], a                                      ; $44b9: $e2
	ld   l, d                                        ; $44ba: $6a
	rst  $38                                         ; $44bb: $ff
	di                                               ; $44bc: $f3
	rst  $38                                         ; $44bd: $ff
	sub  e                                           ; $44be: $93
	ld   a, a                                        ; $44bf: $7f
	pop  af                                          ; $44c0: $f1
	ld   de, $3a11                                   ; $44c1: $11 $11 $3a
	jr   z, jr_0ef_4495                              ; $44c4: $28 $cf

	rst  $38                                         ; $44c6: $ff
	ld   l, a                                        ; $44c7: $6f
	db   $f4                                         ; $44c8: $f4
	ld   c, c                                        ; $44c9: $49
	ld   hl, sp+$11                                  ; $44ca: $f8 $11
	ld   de, $541e                                   ; $44cc: $11 $1e $54
	cp   a                                           ; $44cf: $bf
	rst  $38                                         ; $44d0: $ff
	ld   c, a                                        ; $44d1: $4f
	rst  $38                                         ; $44d2: $ff
	inc  h                                           ; $44d3: $24
	rst  $38                                         ; $44d4: $ff
	ld   de, $1141                                   ; $44d5: $11 $41 $11
	di                                               ; $44d8: $f3
	ld   e, h                                        ; $44d9: $5c
	rst  $38                                         ; $44da: $ff
	di                                               ; $44db: $f3
	rst  $38                                         ; $44dc: $ff
	ld   h, d                                        ; $44dd: $62
	ld   a, a                                        ; $44de: $7f
	pop  de                                          ; $44df: $d1
	inc  de                                          ; $44e0: $13
	ld   de, $27bc                                   ; $44e1: $11 $bc $27
	rst  $38                                         ; $44e4: $ff
	or   $df                                         ; $44e5: $f6 $df
	ldh  a, [c]                                      ; $44e7: $f2
	dec  a                                           ; $44e8: $3d
	pop  af                                          ; $44e9: $f1
	dec  d                                           ; $44ea: $15
	ld   de, $521f                                   ; $44eb: $11 $1f $52
	xor  a                                           ; $44ee: $af
	rst  $38                                         ; $44ef: $ff
	cpl                                              ; $44f0: $2f
	rst  $30                                         ; $44f1: $f7
	ld   d, $ff                                      ; $44f2: $16 $ff
	ld   de, $1771                                   ; $44f4: $11 $71 $17
	pop  af                                          ; $44f7: $f1
	ccf                                              ; $44f8: $3f
	rst  $38                                         ; $44f9: $ff
	sbc  b                                           ; $44fa: $98
	rst  $38                                         ; $44fb: $ff
	inc  de                                          ; $44fc: $13
	rst  JumpTable                                         ; $44fd: $df
	ld   b, c                                        ; $44fe: $41
	ld   d, c                                        ; $44ff: $51
	ld   de, $17f9                                   ; $4500: $11 $f9 $17
	rst  $38                                         ; $4503: $ff
	ldh  a, [c]                                      ; $4504: $f2
	rst  $38                                         ; $4505: $ff
	or   c                                           ; $4506: $b1
	ld   l, a                                        ; $4507: $6f
	pop  af                                          ; $4508: $f1
	add  hl, de                                      ; $4509: $19
	ld   de, $111f                                   ; $450a: $11 $1f $11
	rst  $28                                         ; $450d: $ef
	cp   $6f                                         ; $450e: $fe $6f
	ldh  a, [c]                                      ; $4510: $f2
	ld   c, h                                        ; $4511: $4c
	ld   sp, hl                                      ; $4512: $f9
	ld   [de], a                                     ; $4513: $12
	ld   d, c                                        ; $4514: $51
	rra                                              ; $4515: $1f
	pop  de                                          ; $4516: $d1
	ld   e, a                                        ; $4517: $5f
	rst  $38                                         ; $4518: $ff
	ld   l, a                                        ; $4519: $6f
	rst  $38                                         ; $451a: $ff
	jr   @+$01                                       ; $451b: $18 $ff

	ld   de, $1191                                   ; $451d: $11 $91 $11
	db   $f4                                         ; $4520: $f4
	dec  de                                          ; $4521: $1b
	rst  $38                                         ; $4522: $ff
	db   $f4                                         ; $4523: $f4
	rst  $38                                         ; $4524: $ff
	ld   b, e                                        ; $4525: $43
	cp   a                                           ; $4526: $bf
	pop  hl                                          ; $4527: $e1
	ld   a, [de]                                     ; $4528: $1a
	ld   de, $114f                                   ; $4529: $11 $4f $11
	rst  $38                                         ; $452c: $ff
	ld   a, [$f1af]                                  ; $452d: $fa $af $f1
	ld   a, a                                        ; $4530: $7f
	push af                                          ; $4531: $f5
	ld   d, $21                                      ; $4532: $16 $21
	rra                                              ; $4534: $1f
	and  c                                           ; $4535: $a1
	ld   e, a                                        ; $4536: $5f
	rst  $38                                         ; $4537: $ff
	ld   l, a                                        ; $4538: $6f
	ld   a, [$ff1b]                                  ; $4539: $fa $1b $ff
	ld   de, $11c1                                   ; $453c: $11 $c1 $11
	pop  af                                          ; $453f: $f1
	dec  e                                           ; $4540: $1d
	rst  $38                                         ; $4541: $ff
	rst  $30                                         ; $4542: $f7
	rst  $38                                         ; $4543: $ff
	inc  d                                           ; $4544: $14
	rst  $38                                         ; $4545: $ff
	add  c                                           ; $4546: $81
	ld   a, [hl-]                                    ; $4547: $3a
	ld   de, $117f                                   ; $4548: $11 $7f $11
	rst  $38                                         ; $454b: $ff
	ei                                               ; $454c: $fb
	rst  $28                                         ; $454d: $ef
	pop  af                                          ; $454e: $f1
	sbc  a                                           ; $454f: $9f
	pop  af                                          ; $4550: $f1
	ld   a, [de]                                     ; $4551: $1a
	ld   de, $811f                                   ; $4552: $11 $1f $81
	ld   l, a                                        ; $4555: $6f
	rst  $38                                         ; $4556: $ff
	xor  a                                           ; $4557: $af
	ld   sp, hl                                      ; $4558: $f9
	rra                                              ; $4559: $1f
	ld   a, [$a112]                                  ; $455a: $fa $12 $a1
	ld   de, $1ff1                                   ; $455d: $11 $f1 $1f
	rst  $38                                         ; $4560: $ff
	cp   $ff                                         ; $4561: $fe $ff
	ld   d, $ff                                      ; $4563: $16 $ff
	ld   hl, $1195                                   ; $4565: $21 $95 $11
	sbc  a                                           ; $4568: $9f
	ld   de, $fcff                                   ; $4569: $11 $ff $fc
	rst  $38                                         ; $456c: $ff
	pop  af                                          ; $456d: $f1
	rst  $28                                         ; $456e: $ef
	pop  de                                          ; $456f: $d1
	dec  e                                           ; $4570: $1d
	ld   de, $811f                                   ; $4571: $11 $1f $81
	ld   e, a                                        ; $4574: $5f
	db   $fd                                         ; $4575: $fd
	cp   a                                           ; $4576: $bf
	push af                                          ; $4577: $f5
	rra                                              ; $4578: $1f
	db   $f4                                         ; $4579: $f4
	add  hl, de                                      ; $457a: $19
	pop  hl                                          ; $457b: $e1
	ld   de, $1ff1                                   ; $457c: $11 $f1 $1f
	rst  $38                                         ; $457f: $ff
	xor  a                                           ; $4580: $af
	rst  $38                                         ; $4581: $ff
	rla                                              ; $4582: $17
	rst  $38                                         ; $4583: $ff
	ld   de, $11f6                                   ; $4584: $11 $f6 $11
	ld   a, a                                        ; $4587: $7f
	ld   de, $fbff                                   ; $4588: $11 $ff $fb
	rst  $38                                         ; $458b: $ff
	pop  af                                          ; $458c: $f1
	rst  $38                                         ; $458d: $ff
	and  c                                           ; $458e: $a1
	ld   e, a                                        ; $458f: $5f
	ld   de, $711f                                   ; $4590: $11 $1f $71
	ccf                                              ; $4593: $3f
	ld   a, [$f9ff]                                  ; $4594: $fa $ff $f9
	rra                                              ; $4597: $1f
	pop  af                                          ; $4598: $f1
	dec  e                                           ; $4599: $1d
	pop  hl                                          ; $459a: $e1
	ld   de, $1ff1                                   ; $459b: $11 $f1 $1f
	rst  $38                                         ; $459e: $ff
	sbc  a                                           ; $459f: $9f
	rst  $38                                         ; $45a0: $ff
	ld   d, $ff                                      ; $45a1: $16 $ff
	ld   de, $11f7                                   ; $45a3: $11 $f7 $11
	rra                                              ; $45a6: $1f
	ld   de, $caff                                   ; $45a7: $11 $ff $ca
	rst  $38                                         ; $45aa: $ff
	pop  af                                          ; $45ab: $f1
	rst  $38                                         ; $45ac: $ff
	pop  de                                          ; $45ad: $d1
	adc  a                                           ; $45ae: $8f
	ld   de, $c113                                   ; $45af: $11 $13 $c1
	rra                                              ; $45b2: $1f
	or   $ff                                         ; $45b3: $f6 $ff
	rst  $38                                         ; $45b5: $ff
	rra                                              ; $45b6: $1f
	push af                                          ; $45b7: $f5
	rra                                              ; $45b8: $1f
	pop  af                                          ; $45b9: $f1
	ld   de, $1154                                   ; $45ba: $11 $54 $11
	rst  $38                                         ; $45bd: $ff
	ld   c, a                                        ; $45be: $4f
	rst  $38                                         ; $45bf: $ff
	db   $f4                                         ; $45c0: $f4
	rst  $38                                         ; $45c1: $ff
	ld   de, $11fc                                   ; $45c2: $11 $fc $11
	dec  d                                           ; $45c5: $15
	ld   de, $e53f                                   ; $45c6: $11 $3f $e5
	rst  $38                                         ; $45c9: $ff
	cp   $af                                         ; $45ca: $fe $af
	pop  af                                          ; $45cc: $f1
	ld   e, a                                        ; $45cd: $5f
	ld   [hl], c                                     ; $45ce: $71
	ld   de, $1621                                   ; $45cf: $11 $21 $16
	ld   a, [$ff6f]                                  ; $45d2: $fa $6f $ff
	rst  $38                                         ; $45d5: $ff
	rst  $38                                         ; $45d6: $ff
	ld   a, [de]                                     ; $45d7: $1a
	ldh  a, [c]                                      ; $45d8: $f2
	ld   de, $1111                                   ; $45d9: $11 $11 $11
	ld   l, a                                        ; $45dc: $6f
	adc  b                                           ; $45dd: $88
	rst  $38                                         ; $45de: $ff
	rst  $38                                         ; $45df: $ff
	rst  $38                                         ; $45e0: $ff
	di                                               ; $45e1: $f3
	rst  $28                                         ; $45e2: $ef
	ld   de, $1111                                   ; $45e3: $11 $11 $11
	ld   [de], a                                     ; $45e6: $12
	rst  $30                                         ; $45e7: $f7
	sbc  a                                           ; $45e8: $9f
	rst  $38                                         ; $45e9: $ff
	rst  $38                                         ; $45ea: $ff
	rst  $38                                         ; $45eb: $ff
	ld   l, a                                        ; $45ec: $6f
	ldh  a, [c]                                      ; $45ed: $f2
	ld   de, $1111                                   ; $45ee: $11 $11 $11
	rra                                              ; $45f1: $1f
	sub  a                                           ; $45f2: $97
	rst  $38                                         ; $45f3: $ff
	rst  $38                                         ; $45f4: $ff
	rst  $38                                         ; $45f5: $ff
	ld   a, [$51ff]                                  ; $45f6: $fa $ff $51
	ld   de, $1111                                   ; $45f9: $11 $11 $11
	jp   z, $ff5f                                    ; $45fc: $ca $5f $ff

	rst  $38                                         ; $45ff: $ff
	rst  $38                                         ; $4600: $ff
	xor  $fb                                         ; $4601: $ee $fb
	ld   de, $1111                                   ; $4603: $11 $11 $11
	inc  de                                          ; $4606: $13
	and  e                                           ; $4607: $a3
	rst  JumpTable                                         ; $4608: $df
	rst  $38                                         ; $4609: $ff
	rst  $38                                         ; $460a: $ff
	rst  $38                                         ; $460b: $ff
	rst  JumpTable                                         ; $460c: $df
	pop  af                                          ; $460d: $f1
	ld   de, $1111                                   ; $460e: $11 $11 $11
	jr   jr_0ef_4658                                 ; $4611: $18 $45

	rst  $38                                         ; $4613: $ff
	rst  $38                                         ; $4614: $ff
	rst  $38                                         ; $4615: $ff
	rst  $38                                         ; $4616: $ff
	rst  $38                                         ; $4617: $ff
	add  c                                           ; $4618: $81
	ld   de, $1111                                   ; $4619: $11 $11 $11
	dec  d                                           ; $461c: $15
	jr   z, @+$01                                    ; $461d: $28 $ff

	rst  $38                                         ; $461f: $ff
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	rst  $38                                         ; $4622: $ff
	ld   b, c                                        ; $4623: $41
	ld   de, $1111                                   ; $4624: $11 $11 $11
	ld   [de], a                                     ; $4627: $12
	add  hl, de                                      ; $4628: $19
	rst  $38                                         ; $4629: $ff
	rst  $38                                         ; $462a: $ff
	rst  $38                                         ; $462b: $ff
	rst  $38                                         ; $462c: $ff
	rst  $38                                         ; $462d: $ff
	ld   d, c                                        ; $462e: $51
	ld   de, $1111                                   ; $462f: $11 $11 $11
	ld   de, $ff15                                   ; $4632: $11 $15 $ff
	rst  $38                                         ; $4635: $ff
	rst  $38                                         ; $4636: $ff
	rst  $38                                         ; $4637: $ff
	rst  $38                                         ; $4638: $ff
	sub  l                                           ; $4639: $95
	ld   hl, $1111                                   ; $463a: $21 $11 $11
	ld   de, $bf11                                   ; $463d: $11 $11 $bf
	rst  $38                                         ; $4640: $ff
	rst  $38                                         ; $4641: $ff
	rst  $38                                         ; $4642: $ff
	rst  $38                                         ; $4643: $ff
	ld   [$11b1], a                                  ; $4644: $ea $b1 $11
	ld   de, $1111                                   ; $4647: $11 $11 $11
	rra                                              ; $464a: $1f
	cp   a                                           ; $464b: $bf
	rst  $38                                         ; $464c: $ff
	rst  $38                                         ; $464d: $ff
	rst  $38                                         ; $464e: $ff
	db   $fd                                         ; $464f: $fd
	ld   a, [$1111]                                  ; $4650: $fa $11 $11
	ld   de, $1111                                   ; $4653: $11 $11 $11
	sub  a                                           ; $4656: $97
	rst  $28                                         ; $4657: $ef

jr_0ef_4658:
	rst  $38                                         ; $4658: $ff
	rst  $38                                         ; $4659: $ff
	rst  $38                                         ; $465a: $ff
	rst  $38                                         ; $465b: $ff
	or   c                                           ; $465c: $b1
	ld   de, $1111                                   ; $465d: $11 $11 $11
	ld   de, $5712                                   ; $4660: $11 $12 $57
	rst  $28                                         ; $4663: $ef
	rst  $38                                         ; $4664: $ff
	rst  $38                                         ; $4665: $ff
	rst  $38                                         ; $4666: $ff
	rst  $38                                         ; $4667: $ff
	and  e                                           ; $4668: $a3
	ld   de, $1111                                   ; $4669: $11 $11 $11
	ld   de, $4511                                   ; $466c: $11 $11 $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $466f: $cf
	rst  $38                                         ; $4670: $ff
	rst  $38                                         ; $4671: $ff
	rst  $38                                         ; $4672: $ff
	rst  $38                                         ; $4673: $ff
	or   h                                           ; $4674: $b4
	ld   de, $1111                                   ; $4675: $11 $11 $11
	ld   de, $2211                                   ; $4678: $11 $11 $22
	xor  l                                           ; $467b: $ad
	rst  $38                                         ; $467c: $ff
	rst  $38                                         ; $467d: $ff
	rst  $38                                         ; $467e: $ff
	rst  $38                                         ; $467f: $ff
	rst  $10                                         ; $4680: $d7
	ld   [hl-], a                                    ; $4681: $32
	ld   [bc], a                                     ; $4682: $02
	ld   de, $1111                                   ; $4683: $11 $11 $11
	ld   hl, $ae5c                                   ; $4686: $21 $5c $ae
	rst  $38                                         ; $4689: $ff
	rst  $38                                         ; $468a: $ff
	rst  $38                                         ; $468b: $ff
	ld   sp, hl                                      ; $468c: $f9
	ld   h, [hl]                                     ; $468d: $66
	ld   h, d                                        ; $468e: $62
	ld   h, c                                        ; $468f: $61
	ld   de, $1211                                   ; $4690: $11 $11 $12
	ld   d, $79                                      ; $4693: $16 $79
	xor  $ff                                         ; $4695: $ee $ff
	rst  $38                                         ; $4697: $ff
	ld   a, [$799b]                                  ; $4698: $fa $9b $79
	ld   h, a                                        ; $469b: $67
	ld   hl, $1111                                   ; $469c: $21 $11 $11
	ld   [hl-], a                                    ; $469f: $32
	ld   b, [hl]                                     ; $46a0: $46
	ld   a, c                                        ; $46a1: $79
	xor  a                                           ; $46a2: $af
	rst  $38                                         ; $46a3: $ff
	rst  $38                                         ; $46a4: $ff
	cp   e                                           ; $46a5: $bb
	add  sp, -$45                                    ; $46a6: $e8 $bb
	ld   h, a                                        ; $46a8: $67
	ld   b, e                                        ; $46a9: $43
	ld   [hl+], a                                    ; $46aa: $22
	ld   [de], a                                     ; $46ab: $12
	inc  hl                                          ; $46ac: $23
	ld   d, h                                        ; $46ad: $54
	ld   a, d                                        ; $46ae: $7a
	adc  h                                           ; $46af: $8c
	db   $fc                                         ; $46b0: $fc
	sbc  $cc                                         ; $46b1: $de $cc
	jp   z, $a9ca                                    ; $46b3: $ca $ca $a9

	halt                                             ; $46b6: $76
	dec  [hl]                                        ; $46b7: $35
	inc  sp                                          ; $46b8: $33
	ld   b, e                                        ; $46b9: $43
	ld   b, h                                        ; $46ba: $44
	ld   d, [hl]                                     ; $46bb: $56
	ld   a, c                                        ; $46bc: $79
	cp   d                                           ; $46bd: $ba
	xor  l                                           ; $46be: $ad
	xor  h                                           ; $46bf: $ac
	call z, $babc                                    ; $46c0: $cc $bc $ba
	sbc  c                                           ; $46c3: $99
	ld   [hl], l                                     ; $46c4: $75
	ld   h, h                                        ; $46c5: $64
	inc  [hl]                                        ; $46c6: $34
	ld   b, e                                        ; $46c7: $43
	dec  [hl]                                        ; $46c8: $35
	ld   h, [hl]                                     ; $46c9: $66
	ld   a, d                                        ; $46ca: $7a
	adc  d                                           ; $46cb: $8a
	cp   c                                           ; $46cc: $b9
	cp   h                                           ; $46cd: $bc
	call z, $aacc                                    ; $46ce: $cc $cc $aa
	sbc  c                                           ; $46d1: $99
	ld   h, a                                        ; $46d2: $67
	ld   h, h                                        ; $46d3: $64
	ld   b, h                                        ; $46d4: $44
	ld   b, e                                        ; $46d5: $43
	ld   d, l                                        ; $46d6: $55
	ld   d, a                                        ; $46d7: $57
	adc  b                                           ; $46d8: $88
	sbc  c                                           ; $46d9: $99
	cp   d                                           ; $46da: $ba
	xor  e                                           ; $46db: $ab
	cp   e                                           ; $46dc: $bb
	cp   e                                           ; $46dd: $bb
	cp   d                                           ; $46de: $ba
	xor  b                                           ; $46df: $a8
	halt                                             ; $46e0: $76
	ld   h, l                                        ; $46e1: $65
	ld   d, l                                        ; $46e2: $55
	ld   b, l                                        ; $46e3: $45
	ld   d, l                                        ; $46e4: $55
	ld   h, a                                        ; $46e5: $67
	ld   a, c                                        ; $46e6: $79
	adc  d                                           ; $46e7: $8a
	xor  d                                           ; $46e8: $aa
	xor  d                                           ; $46e9: $aa
	xor  e                                           ; $46ea: $ab
	cp   d                                           ; $46eb: $ba
	xor  d                                           ; $46ec: $aa
	adc  c                                           ; $46ed: $89
	add  a                                           ; $46ee: $87
	ld   h, [hl]                                     ; $46ef: $66
	ld   h, l                                        ; $46f0: $65
	ld   d, l                                        ; $46f1: $55
	ld   h, [hl]                                     ; $46f2: $66
	ld   [hl], a                                     ; $46f3: $77
	adc  b                                           ; $46f4: $88
	sbc  c                                           ; $46f5: $99
	sbc  d                                           ; $46f6: $9a
	xor  d                                           ; $46f7: $aa
	xor  d                                           ; $46f8: $aa
	xor  c                                           ; $46f9: $a9
	sbc  c                                           ; $46fa: $99
	adc  c                                           ; $46fb: $89
	adc  b                                           ; $46fc: $88
	ld   [hl], a                                     ; $46fd: $77
	ld   [hl], a                                     ; $46fe: $77
	ld   [hl], a                                     ; $46ff: $77
	ld   [hl], a                                     ; $4700: $77
	ld   [hl], a                                     ; $4701: $77
	ld   a, b                                        ; $4702: $78
	adc  b                                           ; $4703: $88
	sbc  c                                           ; $4704: $99
	adc  b                                           ; $4705: $88
	adc  b                                           ; $4706: $88
	adc  b                                           ; $4707: $88
	adc  b                                           ; $4708: $88
	sbc  c                                           ; $4709: $99
	adc  b                                           ; $470a: $88
	adc  b                                           ; $470b: $88
	ld   [hl], a                                     ; $470c: $77
	ld   [hl], a                                     ; $470d: $77
	ld   [hl], a                                     ; $470e: $77
	ld   [hl], a                                     ; $470f: $77
	ld   a, b                                        ; $4710: $78
	adc  b                                           ; $4711: $88
	adc  b                                           ; $4712: $88
	adc  b                                           ; $4713: $88
	adc  c                                           ; $4714: $89
	adc  c                                           ; $4715: $89
	sbc  c                                           ; $4716: $99
	adc  b                                           ; $4717: $88
	adc  b                                           ; $4718: $88
	adc  b                                           ; $4719: $88
	adc  b                                           ; $471a: $88
	add  a                                           ; $471b: $87
	ld   [hl], a                                     ; $471c: $77
	adc  b                                           ; $471d: $88
	adc  b                                           ; $471e: $88
	adc  b                                           ; $471f: $88
	adc  b                                           ; $4720: $88
	adc  c                                           ; $4721: $89
	adc  b                                           ; $4722: $88
	adc  c                                           ; $4723: $89
	sbc  b                                           ; $4724: $98
	adc  b                                           ; $4725: $88
	adc  b                                           ; $4726: $88
	adc  b                                           ; $4727: $88
	ld   a, b                                        ; $4728: $78
	add  a                                           ; $4729: $87
	adc  b                                           ; $472a: $88
	adc  b                                           ; $472b: $88
	adc  b                                           ; $472c: $88
	adc  b                                           ; $472d: $88
	adc  b                                           ; $472e: $88
	adc  b                                           ; $472f: $88
	adc  b                                           ; $4730: $88
	adc  b                                           ; $4731: $88
	adc  b                                           ; $4732: $88
	adc  b                                           ; $4733: $88
	adc  b                                           ; $4734: $88
	adc  b                                           ; $4735: $88
	adc  b                                           ; $4736: $88
	ld   a, b                                        ; $4737: $78
	sub  a                                           ; $4738: $97
	adc  c                                           ; $4739: $89
	adc  b                                           ; $473a: $88
	adc  b                                           ; $473b: $88
	adc  b                                           ; $473c: $88
	adc  b                                           ; $473d: $88
	adc  b                                           ; $473e: $88
	adc  b                                           ; $473f: $88
	adc  b                                           ; $4740: $88
	adc  b                                           ; $4741: $88
	adc  b                                           ; $4742: $88
	adc  b                                           ; $4743: $88
	adc  b                                           ; $4744: $88
	adc  b                                           ; $4745: $88
	adc  b                                           ; $4746: $88
	adc  b                                           ; $4747: $88
	adc  b                                           ; $4748: $88
	adc  b                                           ; $4749: $88
	adc  b                                           ; $474a: $88
	adc  b                                           ; $474b: $88
	adc  b                                           ; $474c: $88
	adc  b                                           ; $474d: $88
	adc  b                                           ; $474e: $88
	adc  b                                           ; $474f: $88
	adc  b                                           ; $4750: $88
	adc  b                                           ; $4751: $88
	adc  b                                           ; $4752: $88
	adc  b                                           ; $4753: $88
	adc  b                                           ; $4754: $88
	adc  b                                           ; $4755: $88
	adc  b                                           ; $4756: $88
	adc  b                                           ; $4757: $88
	adc  b                                           ; $4758: $88
	adc  b                                           ; $4759: $88
	adc  b                                           ; $475a: $88
	adc  b                                           ; $475b: $88
	adc  b                                           ; $475c: $88
	adc  b                                           ; $475d: $88
	adc  b                                           ; $475e: $88
	adc  b                                           ; $475f: $88
	adc  b                                           ; $4760: $88
	adc  b                                           ; $4761: $88
	adc  b                                           ; $4762: $88
	adc  b                                           ; $4763: $88
	adc  b                                           ; $4764: $88
	adc  b                                           ; $4765: $88
	adc  b                                           ; $4766: $88
	adc  b                                           ; $4767: $88
	adc  b                                           ; $4768: $88
	adc  b                                           ; $4769: $88
	adc  b                                           ; $476a: $88
	adc  b                                           ; $476b: $88
	adc  b                                           ; $476c: $88
	adc  b                                           ; $476d: $88
	adc  b                                           ; $476e: $88
	adc  b                                           ; $476f: $88
	adc  b                                           ; $4770: $88
	adc  b                                           ; $4771: $88
	adc  b                                           ; $4772: $88
	adc  b                                           ; $4773: $88
	adc  b                                           ; $4774: $88
	adc  b                                           ; $4775: $88
	adc  b                                           ; $4776: $88
	adc  b                                           ; $4777: $88
	adc  b                                           ; $4778: $88
	adc  b                                           ; $4779: $88
	adc  b                                           ; $477a: $88
	adc  b                                           ; $477b: $88
	adc  b                                           ; $477c: $88
	adc  b                                           ; $477d: $88
	adc  b                                           ; $477e: $88
	adc  b                                           ; $477f: $88
	adc  b                                           ; $4780: $88
	adc  b                                           ; $4781: $88
	adc  b                                           ; $4782: $88
	adc  b                                           ; $4783: $88
	adc  b                                           ; $4784: $88
	adc  b                                           ; $4785: $88
	adc  b                                           ; $4786: $88
	adc  b                                           ; $4787: $88
	adc  b                                           ; $4788: $88
	adc  b                                           ; $4789: $88
	adc  b                                           ; $478a: $88
	adc  b                                           ; $478b: $88
	adc  b                                           ; $478c: $88
	adc  b                                           ; $478d: $88
	adc  b                                           ; $478e: $88
	adc  b                                           ; $478f: $88
	adc  b                                           ; $4790: $88
	adc  b                                           ; $4791: $88
	adc  b                                           ; $4792: $88
	adc  b                                           ; $4793: $88
	adc  b                                           ; $4794: $88
	adc  b                                           ; $4795: $88
	adc  b                                           ; $4796: $88
	adc  b                                           ; $4797: $88
	adc  b                                           ; $4798: $88
	adc  b                                           ; $4799: $88
	adc  b                                           ; $479a: $88
	adc  b                                           ; $479b: $88
	adc  b                                           ; $479c: $88
	adc  b                                           ; $479d: $88
	adc  b                                           ; $479e: $88
	adc  b                                           ; $479f: $88
	adc  b                                           ; $47a0: $88
	adc  b                                           ; $47a1: $88
	adc  b                                           ; $47a2: $88
	adc  b                                           ; $47a3: $88
	adc  b                                           ; $47a4: $88
	adc  b                                           ; $47a5: $88
	adc  b                                           ; $47a6: $88
	adc  b                                           ; $47a7: $88
	adc  b                                           ; $47a8: $88
	adc  b                                           ; $47a9: $88
	adc  b                                           ; $47aa: $88
	adc  b                                           ; $47ab: $88
	adc  b                                           ; $47ac: $88
	adc  b                                           ; $47ad: $88
	adc  b                                           ; $47ae: $88
	adc  b                                           ; $47af: $88
	adc  b                                           ; $47b0: $88
	adc  b                                           ; $47b1: $88
	adc  b                                           ; $47b2: $88
	adc  b                                           ; $47b3: $88
	adc  b                                           ; $47b4: $88
	adc  b                                           ; $47b5: $88
	adc  b                                           ; $47b6: $88
	adc  b                                           ; $47b7: $88
	adc  b                                           ; $47b8: $88
	adc  b                                           ; $47b9: $88
	adc  b                                           ; $47ba: $88
	adc  b                                           ; $47bb: $88
	adc  b                                           ; $47bc: $88
	adc  b                                           ; $47bd: $88
	adc  b                                           ; $47be: $88
	adc  b                                           ; $47bf: $88
	adc  b                                           ; $47c0: $88
	adc  b                                           ; $47c1: $88
	adc  b                                           ; $47c2: $88
	adc  b                                           ; $47c3: $88
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	adc  b                                           ; $47c7: $88
	adc  b                                           ; $47c8: $88
	adc  b                                           ; $47c9: $88
	adc  b                                           ; $47ca: $88
	adc  b                                           ; $47cb: $88
	adc  b                                           ; $47cc: $88
	adc  b                                           ; $47cd: $88
	adc  b                                           ; $47ce: $88
	adc  b                                           ; $47cf: $88
	adc  b                                           ; $47d0: $88
	adc  b                                           ; $47d1: $88
	adc  b                                           ; $47d2: $88
	adc  b                                           ; $47d3: $88
	adc  b                                           ; $47d4: $88
	adc  b                                           ; $47d5: $88
	adc  b                                           ; $47d6: $88
	adc  b                                           ; $47d7: $88
	adc  b                                           ; $47d8: $88
	adc  b                                           ; $47d9: $88
	adc  b                                           ; $47da: $88
	adc  b                                           ; $47db: $88
	adc  b                                           ; $47dc: $88
	adc  b                                           ; $47dd: $88
	adc  b                                           ; $47de: $88
	adc  b                                           ; $47df: $88
	adc  b                                           ; $47e0: $88
	adc  b                                           ; $47e1: $88
	adc  b                                           ; $47e2: $88
	adc  b                                           ; $47e3: $88
	adc  b                                           ; $47e4: $88
	adc  b                                           ; $47e5: $88
	adc  b                                           ; $47e6: $88
	adc  b                                           ; $47e7: $88
	adc  b                                           ; $47e8: $88
	adc  b                                           ; $47e9: $88
	adc  b                                           ; $47ea: $88
	adc  b                                           ; $47eb: $88
	adc  b                                           ; $47ec: $88
	adc  b                                           ; $47ed: $88
	adc  b                                           ; $47ee: $88
	adc  b                                           ; $47ef: $88
	adc  b                                           ; $47f0: $88
	adc  b                                           ; $47f1: $88
	adc  b                                           ; $47f2: $88
	adc  b                                           ; $47f3: $88
	adc  b                                           ; $47f4: $88
	adc  b                                           ; $47f5: $88
	adc  b                                           ; $47f6: $88
	adc  b                                           ; $47f7: $88
	adc  b                                           ; $47f8: $88
	adc  b                                           ; $47f9: $88
	adc  b                                           ; $47fa: $88
	adc  b                                           ; $47fb: $88
	adc  b                                           ; $47fc: $88
	adc  b                                           ; $47fd: $88
	adc  b                                           ; $47fe: $88
	adc  b                                           ; $47ff: $88
	adc  b                                           ; $4800: $88
	adc  b                                           ; $4801: $88
	adc  b                                           ; $4802: $88
	adc  b                                           ; $4803: $88
	adc  b                                           ; $4804: $88
	adc  b                                           ; $4805: $88
	adc  b                                           ; $4806: $88
	adc  b                                           ; $4807: $88
	adc  b                                           ; $4808: $88
	adc  b                                           ; $4809: $88
	adc  b                                           ; $480a: $88
	adc  b                                           ; $480b: $88
	adc  b                                           ; $480c: $88
	adc  b                                           ; $480d: $88
	adc  b                                           ; $480e: $88
	adc  b                                           ; $480f: $88
	adc  b                                           ; $4810: $88
	adc  b                                           ; $4811: $88
	adc  b                                           ; $4812: $88
	adc  b                                           ; $4813: $88
	adc  b                                           ; $4814: $88
	adc  b                                           ; $4815: $88
	adc  b                                           ; $4816: $88
	adc  b                                           ; $4817: $88
	adc  b                                           ; $4818: $88
	adc  b                                           ; $4819: $88
	adc  b                                           ; $481a: $88
	adc  b                                           ; $481b: $88
	adc  b                                           ; $481c: $88
	adc  b                                           ; $481d: $88
	adc  b                                           ; $481e: $88
	adc  b                                           ; $481f: $88
	adc  b                                           ; $4820: $88
	adc  b                                           ; $4821: $88
	adc  b                                           ; $4822: $88
	adc  b                                           ; $4823: $88
	adc  b                                           ; $4824: $88
	adc  b                                           ; $4825: $88
	adc  b                                           ; $4826: $88
	adc  b                                           ; $4827: $88
	adc  b                                           ; $4828: $88
	adc  b                                           ; $4829: $88
	adc  b                                           ; $482a: $88
	adc  b                                           ; $482b: $88
	adc  b                                           ; $482c: $88
	adc  b                                           ; $482d: $88
	adc  b                                           ; $482e: $88
	adc  b                                           ; $482f: $88
	adc  b                                           ; $4830: $88
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	adc  b                                           ; $4833: $88
	adc  b                                           ; $4834: $88
	adc  b                                           ; $4835: $88
	adc  b                                           ; $4836: $88
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	adc  b                                           ; $4839: $88
	adc  b                                           ; $483a: $88
	adc  b                                           ; $483b: $88
	adc  b                                           ; $483c: $88
	adc  b                                           ; $483d: $88
	adc  b                                           ; $483e: $88
	adc  b                                           ; $483f: $88
	adc  b                                           ; $4840: $88
	adc  b                                           ; $4841: $88
	adc  b                                           ; $4842: $88
	adc  b                                           ; $4843: $88
	adc  b                                           ; $4844: $88
	adc  b                                           ; $4845: $88
	adc  b                                           ; $4846: $88
	adc  b                                           ; $4847: $88
	adc  b                                           ; $4848: $88
	adc  b                                           ; $4849: $88
	adc  b                                           ; $484a: $88
	adc  b                                           ; $484b: $88
	adc  b                                           ; $484c: $88
	adc  b                                           ; $484d: $88
	adc  b                                           ; $484e: $88
	adc  b                                           ; $484f: $88
	adc  b                                           ; $4850: $88
	adc  b                                           ; $4851: $88
	adc  b                                           ; $4852: $88
	adc  b                                           ; $4853: $88
	adc  b                                           ; $4854: $88
	adc  b                                           ; $4855: $88
	adc  b                                           ; $4856: $88
	adc  b                                           ; $4857: $88
	adc  b                                           ; $4858: $88
	adc  b                                           ; $4859: $88
	adc  b                                           ; $485a: $88
	adc  b                                           ; $485b: $88
	adc  b                                           ; $485c: $88
	adc  b                                           ; $485d: $88
	adc  b                                           ; $485e: $88
	adc  b                                           ; $485f: $88
	adc  b                                           ; $4860: $88
	adc  b                                           ; $4861: $88
	adc  b                                           ; $4862: $88
	adc  b                                           ; $4863: $88
	adc  b                                           ; $4864: $88
	adc  b                                           ; $4865: $88
	adc  b                                           ; $4866: $88
	adc  b                                           ; $4867: $88
	adc  b                                           ; $4868: $88
	adc  b                                           ; $4869: $88
	adc  b                                           ; $486a: $88
	adc  b                                           ; $486b: $88
	adc  b                                           ; $486c: $88
	adc  b                                           ; $486d: $88
	adc  b                                           ; $486e: $88
	adc  b                                           ; $486f: $88
	adc  b                                           ; $4870: $88
	adc  b                                           ; $4871: $88
	adc  b                                           ; $4872: $88
	adc  b                                           ; $4873: $88
	adc  b                                           ; $4874: $88
	adc  b                                           ; $4875: $88
	adc  b                                           ; $4876: $88
	adc  b                                           ; $4877: $88
	adc  b                                           ; $4878: $88
	adc  b                                           ; $4879: $88
	adc  b                                           ; $487a: $88
	adc  b                                           ; $487b: $88
	adc  b                                           ; $487c: $88
	adc  b                                           ; $487d: $88
	adc  b                                           ; $487e: $88
	adc  b                                           ; $487f: $88
	adc  b                                           ; $4880: $88
	adc  b                                           ; $4881: $88
	adc  b                                           ; $4882: $88
	adc  b                                           ; $4883: $88
	adc  b                                           ; $4884: $88
	adc  b                                           ; $4885: $88
	adc  b                                           ; $4886: $88
	adc  b                                           ; $4887: $88
	adc  b                                           ; $4888: $88
	adc  b                                           ; $4889: $88
	adc  b                                           ; $488a: $88
	adc  b                                           ; $488b: $88
	adc  b                                           ; $488c: $88
	adc  b                                           ; $488d: $88
	adc  b                                           ; $488e: $88
	adc  b                                           ; $488f: $88
	adc  b                                           ; $4890: $88
	adc  b                                           ; $4891: $88
	adc  b                                           ; $4892: $88
	adc  b                                           ; $4893: $88
	adc  b                                           ; $4894: $88
	adc  b                                           ; $4895: $88
	adc  b                                           ; $4896: $88
	adc  b                                           ; $4897: $88
	adc  b                                           ; $4898: $88
	adc  b                                           ; $4899: $88
	adc  b                                           ; $489a: $88
	adc  b                                           ; $489b: $88
	adc  b                                           ; $489c: $88
	adc  b                                           ; $489d: $88
	adc  b                                           ; $489e: $88
	adc  b                                           ; $489f: $88
	adc  b                                           ; $48a0: $88
	adc  b                                           ; $48a1: $88
	adc  b                                           ; $48a2: $88
	adc  b                                           ; $48a3: $88
	adc  b                                           ; $48a4: $88
	adc  b                                           ; $48a5: $88
	adc  b                                           ; $48a6: $88
	adc  b                                           ; $48a7: $88
	adc  b                                           ; $48a8: $88
	adc  c                                           ; $48a9: $89
	sbc  b                                           ; $48aa: $98
	adc  b                                           ; $48ab: $88
	adc  b                                           ; $48ac: $88
	sbc  c                                           ; $48ad: $99
	sbc  b                                           ; $48ae: $98
	ld   h, [hl]                                     ; $48af: $66
	ld   a, c                                        ; $48b0: $79
	sbc  c                                           ; $48b1: $99
	ld   [hl], a                                     ; $48b2: $77
	ld   a, b                                        ; $48b3: $78
	sbc  b                                           ; $48b4: $98
	sbc  b                                           ; $48b5: $98
	adc  c                                           ; $48b6: $89
	adc  b                                           ; $48b7: $88
	ld   [hl], a                                     ; $48b8: $77
	adc  b                                           ; $48b9: $88
	sbc  b                                           ; $48ba: $98
	ld   [hl], a                                     ; $48bb: $77
	ld   a, b                                        ; $48bc: $78
	adc  b                                           ; $48bd: $88
	add  a                                           ; $48be: $87
	adc  b                                           ; $48bf: $88
	adc  b                                           ; $48c0: $88
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	sbc  b                                           ; $48c3: $98
	ld   [hl], a                                     ; $48c4: $77
	ld   a, b                                        ; $48c5: $78
	sbc  b                                           ; $48c6: $98
	ld   [hl], a                                     ; $48c7: $77
	ld   [hl], a                                     ; $48c8: $77
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	adc  c                                           ; $48cd: $89
	adc  b                                           ; $48ce: $88
	add  a                                           ; $48cf: $87
	adc  b                                           ; $48d0: $88
	adc  c                                           ; $48d1: $89
	sbc  c                                           ; $48d2: $99
	add  a                                           ; $48d3: $87
	ld   [hl], a                                     ; $48d4: $77
	adc  c                                           ; $48d5: $89
	sub  a                                           ; $48d6: $97
	ld   h, [hl]                                     ; $48d7: $66
	ld   a, b                                        ; $48d8: $78
	sbc  c                                           ; $48d9: $99
	ld   [hl], a                                     ; $48da: $77
	ld   a, b                                        ; $48db: $78
	adc  c                                           ; $48dc: $89
	sbc  b                                           ; $48dd: $98
	adc  b                                           ; $48de: $88
	adc  b                                           ; $48df: $88
	ld   [hl], a                                     ; $48e0: $77
	ld   [hl], a                                     ; $48e1: $77
	ld   a, b                                        ; $48e2: $78
	add  a                                           ; $48e3: $87
	ld   h, [hl]                                     ; $48e4: $66
	adc  c                                           ; $48e5: $89
	sbc  c                                           ; $48e6: $99
	ld   [hl], a                                     ; $48e7: $77
	adc  d                                           ; $48e8: $8a
	xor  c                                           ; $48e9: $a9
	sbc  c                                           ; $48ea: $99
	sbc  c                                           ; $48eb: $99
	ld   [hl], a                                     ; $48ec: $77
	ld   [hl], a                                     ; $48ed: $77
	ld   h, [hl]                                     ; $48ee: $66
	ld   h, [hl]                                     ; $48ef: $66
	ld   h, [hl]                                     ; $48f0: $66
	ld   h, a                                        ; $48f1: $67
	adc  c                                           ; $48f2: $89
	sbc  d                                           ; $48f3: $9a
	cp   e                                           ; $48f4: $bb
	cp   e                                           ; $48f5: $bb
	xor  c                                           ; $48f6: $a9
	ld   a, b                                        ; $48f7: $78
	sub  a                                           ; $48f8: $97
	ld   d, d                                        ; $48f9: $52
	inc  h                                           ; $48fa: $24
	ld   h, [hl]                                     ; $48fb: $66
	ld   h, l                                        ; $48fc: $65
	ld   d, a                                        ; $48fd: $57
	cp   [hl]                                        ; $48fe: $be
	rst  $38                                         ; $48ff: $ff
	db   $ec                                         ; $4900: $ec
	call c, Call_0ef_54b8                            ; $4901: $dc $b8 $54
	ld   b, e                                        ; $4904: $43
	ld   [hl-], a                                    ; $4905: $32
	inc  hl                                          ; $4906: $23
	ld   b, [hl]                                     ; $4907: $46
	ld   [hl], a                                     ; $4908: $77
	sbc  e                                           ; $4909: $9b
	rst  JumpTable                                         ; $490a: $df
	rst  $38                                         ; $490b: $ff
	rst  $38                                         ; $490c: $ff
	db   $fd                                         ; $490d: $fd
	sub  [hl]                                        ; $490e: $96
	inc  sp                                          ; $490f: $33
	ld   hl, $1111                                   ; $4910: $21 $11 $11
	ld   b, a                                        ; $4913: $47
	sub  a                                           ; $4914: $97
	ld   a, e                                        ; $4915: $7b
	rst  $38                                         ; $4916: $ff
	rst  $38                                         ; $4917: $ff
	rst  $38                                         ; $4918: $ff
	cp   e                                           ; $4919: $bb
	sub  l                                           ; $491a: $95
	ld   de, $1111                                   ; $491b: $11 $11 $11
	ld   de, $bf48                                   ; $491e: $11 $48 $bf
	rst  $38                                         ; $4921: $ff
	rst  $38                                         ; $4922: $ff
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	db   $eb                                         ; $4925: $eb
	ld   sp, $1111                                   ; $4926: $31 $11 $11
	ld   de, $ad36                                   ; $4929: $11 $36 $ad
	rst  $38                                         ; $492c: $ff
	rst  $38                                         ; $492d: $ff
	rst  $38                                         ; $492e: $ff
	rst  $38                                         ; $492f: $ff
	cp   $a2                                         ; $4930: $fe $a2
	ld   de, $1311                                   ; $4932: $11 $11 $13
	sbc  e                                           ; $4935: $9b
	xor  h                                           ; $4936: $ac
	rst  $28                                         ; $4937: $ef
	rst  $38                                         ; $4938: $ff
	rst  $38                                         ; $4939: $ff
	ei                                               ; $493a: $fb
	cp   [hl]                                        ; $493b: $be
	ei                                               ; $493c: $fb
	ld   de, $1411                                   ; $493d: $11 $11 $14
	rst  $38                                         ; $4940: $ff
	db   $fd                                         ; $4941: $fd
	sbc  l                                           ; $4942: $9d
	rst  $38                                         ; $4943: $ff
	rst  $38                                         ; $4944: $ff
	push af                                          ; $4945: $f5
	scf                                              ; $4946: $37
	call c, $1111                                    ; $4947: $dc $11 $11
	jr   @+$01                                       ; $494a: $18 $ff

	rst  $38                                         ; $494c: $ff
	sub  [hl]                                        ; $494d: $96
	rst  $38                                         ; $494e: $ff
	rst  $38                                         ; $494f: $ff
	di                                               ; $4950: $f3
	ld   de, $1111                                   ; $4951: $11 $11 $11
	ld   de, $ff5f                                   ; $4954: $11 $5f $ff
	rst  $38                                         ; $4957: $ff
	ld   d, [hl]                                     ; $4958: $56
	rst  $28                                         ; $4959: $ef
	rst  $38                                         ; $495a: $ff
	or   e                                           ; $495b: $b3
	ld   de, $1111                                   ; $495c: $11 $11 $11
	xor  a                                           ; $495f: $af
	rst  $38                                         ; $4960: $ff
	rst  $38                                         ; $4961: $ff
	add  [hl]                                        ; $4962: $86
	cp   a                                           ; $4963: $bf
	rst  $38                                         ; $4964: $ff
	rst  ToBoot                                         ; $4965: $c7
	ld   de, $1111                                   ; $4966: $11 $11 $11
	rst  $38                                         ; $4969: $ff
	rst  $38                                         ; $496a: $ff
	ei                                               ; $496b: $fb
	ld   de, $ff7f                                   ; $496c: $11 $7f $ff
	push hl                                          ; $496f: $e5
	ld   de, $1311                                   ; $4970: $11 $11 $13
	rst  $38                                         ; $4973: $ff
	rst  $38                                         ; $4974: $ff
	pop  af                                          ; $4975: $f1
	ld   de, $ffcf                                   ; $4976: $11 $cf $ff
	pop  bc                                          ; $4979: $c1
	ld   de, $1f11                                   ; $497a: $11 $11 $1f
	rst  $38                                         ; $497d: $ff
	rst  $38                                         ; $497e: $ff
	ld   de, $ff18                                   ; $497f: $11 $18 $ff
	rst  $38                                         ; $4982: $ff
	ld   de, $1511                                   ; $4983: $11 $11 $15
	rst  $38                                         ; $4986: $ff
	rst  $38                                         ; $4987: $ff
	and  c                                           ; $4988: $a1
	ld   de, $ffcf                                   ; $4989: $11 $cf $ff
	pop  af                                          ; $498c: $f1
	ld   de, rAUD1LEN                                   ; $498d: $11 $11 $ff
	rst  $38                                         ; $4990: $ff
	pop  af                                          ; $4991: $f1
	ld   de, $ff1f                                   ; $4992: $11 $1f $ff
	or   $11                                         ; $4995: $f6 $11
	ld   de, $ff6f                                   ; $4997: $11 $6f $ff
	ldh  a, [c]                                      ; $499a: $f2
	ld   de, $ff1b                                   ; $499b: $11 $1b $ff
	rst  $38                                         ; $499e: $ff
	ld   de, $1f11                                   ; $499f: $11 $11 $1f
	rst  $38                                         ; $49a2: $ff
	cp   $11                                         ; $49a3: $fe $11
	ld   de, $ffff                                   ; $49a5: $11 $ff $ff
	ld   hl, $1f11                                   ; $49a8: $21 $11 $1f
	rst  $38                                         ; $49ab: $ff
	rst  $38                                         ; $49ac: $ff
	ld   de, rAUD1LEN                                   ; $49ad: $11 $11 $ff
	rst  $38                                         ; $49b0: $ff
	pop  af                                          ; $49b1: $f1
	ld   de, rAUD1LEN                                   ; $49b2: $11 $11 $ff
	rst  $38                                         ; $49b5: $ff
	ld   h, c                                        ; $49b6: $61
	ld   de, $ff1f                                   ; $49b7: $11 $1f $ff
	pop  af                                          ; $49ba: $f1
	ld   de, rAUD1LEN                                   ; $49bb: $11 $11 $ff
	rst  $38                                         ; $49be: $ff
	pop  af                                          ; $49bf: $f1
	ld   de, $ff1f                                   ; $49c0: $11 $1f $ff
	rst  $38                                         ; $49c3: $ff
	ld   de, $1f11                                   ; $49c4: $11 $11 $1f
	rst  $38                                         ; $49c7: $ff
	pop  af                                          ; $49c8: $f1
	ld   de, rAUD1LOW                                   ; $49c9: $11 $13 $ff
	rst  $38                                         ; $49cc: $ff
	ld   de, $1f11                                   ; $49cd: $11 $11 $1f
	rst  $38                                         ; $49d0: $ff
	rst  $38                                         ; $49d1: $ff
	ld   de, rAUD1LEN                                   ; $49d2: $11 $11 $ff
	rst  $38                                         ; $49d5: $ff
	pop  de                                          ; $49d6: $d1
	ld   de, $ff15                                   ; $49d7: $11 $15 $ff
	rst  $38                                         ; $49da: $ff
	ld   de, $6f11                                   ; $49db: $11 $11 $6f
	rst  $38                                         ; $49de: $ff
	pop  af                                          ; $49df: $f1
	ld   de, rAUD1LEN                                   ; $49e0: $11 $11 $ff
	rst  $38                                         ; $49e3: $ff
	pop  af                                          ; $49e4: $f1
	ld   de, $ff1f                                   ; $49e5: $11 $1f $ff
	db   $fd                                         ; $49e8: $fd
	ld   de, $5f11                                   ; $49e9: $11 $11 $5f
	rst  $38                                         ; $49ec: $ff
	pop  af                                          ; $49ed: $f1
	ld   de, rAUD1HIGH                                   ; $49ee: $11 $14 $ff
	rst  $38                                         ; $49f1: $ff
	ld   de, $1f11                                   ; $49f2: $11 $11 $1f
	rst  $38                                         ; $49f5: $ff
	rst  $38                                         ; $49f6: $ff
	ld   de, rAUD1LEN                                   ; $49f7: $11 $11 $ff
	rst  $38                                         ; $49fa: $ff
	pop  hl                                          ; $49fb: $e1
	ld   de, rAUD1LEN                                   ; $49fc: $11 $11 $ff
	rst  $38                                         ; $49ff: $ff
	ld   de, $5f11                                   ; $4a00: $11 $11 $5f
	rst  $38                                         ; $4a03: $ff
	pop  af                                          ; $4a04: $f1
	ld   de, rAUD1LEN                                   ; $4a05: $11 $11 $ff
	rst  $38                                         ; $4a08: $ff
	pop  af                                          ; $4a09: $f1
	ld   de, $ff1f                                   ; $4a0a: $11 $1f $ff
	rst  $38                                         ; $4a0d: $ff
	ld   de, $1f11                                   ; $4a0e: $11 $11 $1f
	rst  $38                                         ; $4a11: $ff
	ld   a, [$1111]                                  ; $4a12: $fa $11 $11
	rst  $38                                         ; $4a15: $ff
	rst  $38                                         ; $4a16: $ff
	pop  hl                                          ; $4a17: $e1
	ld   de, rAUD1LEN                                   ; $4a18: $11 $11 $ff
	rst  $38                                         ; $4a1b: $ff
	ld   de, $7f11                                   ; $4a1c: $11 $11 $7f
	rst  $38                                         ; $4a1f: $ff
	db   $f4                                         ; $4a20: $f4
	ld   de, $bf11                                   ; $4a21: $11 $11 $bf
	rst  $38                                         ; $4a24: $ff
	pop  af                                          ; $4a25: $f1
	ld   de, $ff1f                                   ; $4a26: $11 $1f $ff
	rst  $38                                         ; $4a29: $ff
	ld   de, $1f11                                   ; $4a2a: $11 $11 $1f
	rst  $38                                         ; $4a2d: $ff
	rst  $38                                         ; $4a2e: $ff
	ld   de, rAUD1LEN                                   ; $4a2f: $11 $11 $ff
	rst  $38                                         ; $4a32: $ff
	pop  af                                          ; $4a33: $f1
	ld   de, rAUD1LEN                                   ; $4a34: $11 $11 $ff
	rst  $38                                         ; $4a37: $ff
	and  c                                           ; $4a38: $a1
	ld   de, $ff1f                                   ; $4a39: $11 $1f $ff
	rst  $38                                         ; $4a3c: $ff
	ld   de, $1f11                                   ; $4a3d: $11 $11 $1f
	rst  $38                                         ; $4a40: $ff
	pop  af                                          ; $4a41: $f1
	ld   de, $ff15                                   ; $4a42: $11 $15 $ff
	rst  $38                                         ; $4a45: $ff
	pop  de                                          ; $4a46: $d1
	ld   de, rAUD1LOW                                   ; $4a47: $11 $13 $ff
	rst  $38                                         ; $4a4a: $ff
	ld   de, $9f11                                   ; $4a4b: $11 $11 $9f
	rst  $38                                         ; $4a4e: $ff
	ld   hl, sp+$11                                  ; $4a4f: $f8 $11
	ld   de, $ff9f                                   ; $4a51: $11 $9f $ff
	pop  af                                          ; $4a54: $f1
	ld   de, $ff1f                                   ; $4a55: $11 $1f $ff
	rst  $38                                         ; $4a58: $ff
	ld   de, $1d11                                   ; $4a59: $11 $11 $1d
	rst  $38                                         ; $4a5c: $ff
	rst  $38                                         ; $4a5d: $ff
	ld   de, rAUD1LEN                                   ; $4a5e: $11 $11 $ff
	rst  $38                                         ; $4a61: $ff
	pop  af                                          ; $4a62: $f1
	ld   de, rAUD1LEN                                   ; $4a63: $11 $11 $ff
	rst  $38                                         ; $4a66: $ff
	pop  af                                          ; $4a67: $f1
	ld   de, $ff1f                                   ; $4a68: $11 $1f $ff
	rst  $38                                         ; $4a6b: $ff
	ld   de, $1f11                                   ; $4a6c: $11 $11 $1f
	rst  $38                                         ; $4a6f: $ff
	rst  $38                                         ; $4a70: $ff
	ld   de, rAUD1LEN                                   ; $4a71: $11 $11 $ff
	rst  $38                                         ; $4a74: $ff
	pop  af                                          ; $4a75: $f1
	ld   de, rAUD1LEN                                   ; $4a76: $11 $11 $ff
	rst  $38                                         ; $4a79: $ff
	pop  bc                                          ; $4a7a: $c1
	ld   de, $ff1f                                   ; $4a7b: $11 $1f $ff
	rst  $38                                         ; $4a7e: $ff
	ld   de, $1f11                                   ; $4a7f: $11 $11 $1f
	rst  $38                                         ; $4a82: $ff
	ld   sp, hl                                      ; $4a83: $f9
	ld   de, rAUD1LEN                                   ; $4a84: $11 $11 $ff
	rst  $38                                         ; $4a87: $ff
	pop  af                                          ; $4a88: $f1
	ld   de, rAUD1LEN                                   ; $4a89: $11 $11 $ff
	rst  $38                                         ; $4a8c: $ff
	ld   d, c                                        ; $4a8d: $51
	ld   de, $ff4f                                   ; $4a8e: $11 $4f $ff
	rst  $38                                         ; $4a91: $ff
	ld   de, $1f11                                   ; $4a92: $11 $11 $1f
	rst  $38                                         ; $4a95: $ff
	rst  $30                                         ; $4a96: $f7
	ld   de, rAUD1LEN                                   ; $4a97: $11 $11 $ff
	rst  $38                                         ; $4a9a: $ff
	pop  af                                          ; $4a9b: $f1
	ld   de, rAUD1LEN                                   ; $4a9c: $11 $11 $ff
	rst  $38                                         ; $4a9f: $ff
	and  c                                           ; $4aa0: $a1
	ld   de, $ff1f                                   ; $4aa1: $11 $1f $ff
	rst  $38                                         ; $4aa4: $ff
	ld   de, $1f11                                   ; $4aa5: $11 $11 $1f
	rst  $38                                         ; $4aa8: $ff
	db   $fc                                         ; $4aa9: $fc
	ld   de, rAUD1LEN                                   ; $4aaa: $11 $11 $ff
	rst  $38                                         ; $4aad: $ff
	pop  af                                          ; $4aae: $f1
	ld   de, rAUD1LEN                                   ; $4aaf: $11 $11 $ff
	rst  $38                                         ; $4ab2: $ff
	pop  af                                          ; $4ab3: $f1
	ld   de, $ff1d                                   ; $4ab4: $11 $1d $ff
	rst  $38                                         ; $4ab7: $ff
	ld   b, c                                        ; $4ab8: $41
	ld   de, $ff1a                                   ; $4ab9: $11 $1a $ff
	rst  $38                                         ; $4abc: $ff
	ld   de, $df11                                   ; $4abd: $11 $11 $df
	rst  $38                                         ; $4ac0: $ff
	push af                                          ; $4ac1: $f5
	ld   de, $5f11                                   ; $4ac2: $11 $11 $5f
	rst  $38                                         ; $4ac5: $ff
	di                                               ; $4ac6: $f3
	ld   de, rAUD1LEN                                   ; $4ac7: $11 $11 $ff
	rst  $38                                         ; $4aca: $ff
	or   c                                           ; $4acb: $b1
	ld   de, rAUD1LEN                                   ; $4acc: $11 $11 $ff
	rst  $38                                         ; $4acf: $ff
	pop  af                                          ; $4ad0: $f1
	ld   de, $ff1f                                   ; $4ad1: $11 $1f $ff
	rst  $38                                         ; $4ad4: $ff
	ld   de, $1911                                   ; $4ad5: $11 $11 $19
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	ld   sp, $1f11                                   ; $4ada: $31 $11 $1f
	rst  $38                                         ; $4add: $ff
	ei                                               ; $4ade: $fb
	ld   de, $1f11                                   ; $4adf: $11 $11 $1f
	rst  $38                                         ; $4ae2: $ff
	rst  $38                                         ; $4ae3: $ff
	ld   de, $6f11                                   ; $4ae4: $11 $11 $6f
	rst  $38                                         ; $4ae7: $ff
	pop  af                                          ; $4ae8: $f1
	ld   de, $1f11                                   ; $4ae9: $11 $11 $1f
	rst  $38                                         ; $4aec: $ff
	rst  $38                                         ; $4aed: $ff
	ld   de, $bf11                                   ; $4aee: $11 $11 $bf
	rst  $38                                         ; $4af1: $ff
	pop  af                                          ; $4af2: $f1
	ld   de, $1f11                                   ; $4af3: $11 $11 $1f
	rst  $38                                         ; $4af6: $ff
	rst  $38                                         ; $4af7: $ff
	ld   de, $8f11                                   ; $4af8: $11 $11 $8f
	rst  $38                                         ; $4afb: $ff
	pop  af                                          ; $4afc: $f1
	ld   de, $1f11                                   ; $4afd: $11 $11 $1f
	rst  $38                                         ; $4b00: $ff
	rst  $38                                         ; $4b01: $ff
	ld   de, $1f11                                   ; $4b02: $11 $11 $1f
	rst  $38                                         ; $4b05: $ff
	ldh  a, [c]                                      ; $4b06: $f2
	ld   de, $3f11                                   ; $4b07: $11 $11 $3f
	rst  $38                                         ; $4b0a: $ff
	rst  $38                                         ; $4b0b: $ff
	ld   sp, $1f11                                   ; $4b0c: $31 $11 $1f
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	ld   de, $1c11                                   ; $4b11: $11 $11 $1c
	rst  $38                                         ; $4b14: $ff
	rst  $38                                         ; $4b15: $ff
	pop  bc                                          ; $4b16: $c1
	ld   de, $ff16                                   ; $4b17: $11 $16 $ff
	rst  $38                                         ; $4b1a: $ff
	ld   de, $1b11                                   ; $4b1b: $11 $11 $1b
	rst  $38                                         ; $4b1e: $ff
	rst  $38                                         ; $4b1f: $ff
	db   $f4                                         ; $4b20: $f4
	ld   de, rAUD1LEN                                   ; $4b21: $11 $11 $ff
	rst  $38                                         ; $4b24: $ff
	pop  af                                          ; $4b25: $f1
	ld   de, $ef12                                   ; $4b26: $11 $12 $ef
	rst  $38                                         ; $4b29: $ff
	rst  $38                                         ; $4b2a: $ff
	ld   de, $1f11                                   ; $4b2b: $11 $11 $1f
	rst  $38                                         ; $4b2e: $ff
	cp   $11                                         ; $4b2f: $fe $11
	ld   de, $ff7f                                   ; $4b31: $11 $7f $ff
	rst  $38                                         ; $4b34: $ff
	pop  af                                          ; $4b35: $f1
	ld   de, rAUD1LEN                                   ; $4b36: $11 $11 $ff
	rst  $38                                         ; $4b39: $ff
	and  c                                           ; $4b3a: $a1
	ld   de, $ff1b                                   ; $4b3b: $11 $1b $ff
	rst  $38                                         ; $4b3e: $ff
	db   $fc                                         ; $4b3f: $fc
	ld   de, $1f11                                   ; $4b40: $11 $11 $1f
	rst  $38                                         ; $4b43: $ff
	ei                                               ; $4b44: $fb
	ld   de, $df11                                   ; $4b45: $11 $11 $df
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	db   $e3                                         ; $4b4a: $e3
	ld   de, rAUD1LEN                                   ; $4b4b: $11 $11 $ff
	rst  $38                                         ; $4b4e: $ff
	pop  af                                          ; $4b4f: $f1
	ld   de, $ff1b                                   ; $4b50: $11 $1b $ff
	cp   $ff                                         ; $4b53: $fe $ff
	add  l                                           ; $4b55: $85
	ld   de, rAUD1LEN                                   ; $4b56: $11 $11 $ff
	rst  $38                                         ; $4b59: $ff
	ld   h, c                                        ; $4b5a: $61
	ld   de, $ff1f                                   ; $4b5b: $11 $1f $ff
	ei                                               ; $4b5e: $fb
	rst  $38                                         ; $4b5f: $ff
	and  d                                           ; $4b60: $a2
	ld   de, $ff19                                   ; $4b61: $11 $19 $ff
	rst  $38                                         ; $4b64: $ff
	ld   de, $6f11                                   ; $4b65: $11 $11 $6f
	rst  $38                                         ; $4b68: $ff
	sub  $cd                                         ; $4b69: $d6 $cd
	and  a                                           ; $4b6b: $a7
	ld   de, $ff17                                   ; $4b6c: $11 $17 $ff
	rst  $38                                         ; $4b6f: $ff
	ld   de, $7f11                                   ; $4b70: $11 $11 $7f
	rst  $38                                         ; $4b73: $ff
	sub  c                                           ; $4b74: $91
	ld   a, $cf                                      ; $4b75: $3e $cf
	ld   de, rAUD1LEN                                   ; $4b77: $11 $11 $ff
	rst  $38                                         ; $4b7a: $ff
	ld   h, c                                        ; $4b7b: $61
	ld   de, $ff4f                                   ; $4b7c: $11 $4f $ff
	ld   b, c                                        ; $4b7f: $41
	ld   d, $ff                                      ; $4b80: $16 $ff
	ldh  a, [c]                                      ; $4b82: $f2
	ld   de, $ff1f                                   ; $4b83: $11 $1f $ff
	or   $11                                         ; $4b86: $f6 $11
	jr   @+$01                                       ; $4b88: $18 $ff

	ldh  a, [c]                                      ; $4b8a: $f2
	ld   de, $ff3f                                   ; $4b8b: $11 $3f $ff
	or   c                                           ; $4b8e: $b1
	ld   de, $ff6f                                   ; $4b8f: $11 $6f $ff
	jp   nc, $3c11                                   ; $4b92: $d2 $11 $3c

	rst  $38                                         ; $4b95: $ff
	jp   $3c11                                       ; $4b96: $c3 $11 $3c


	rst  $38                                         ; $4b99: $ff
	di                                               ; $4b9a: $f3
	ld   de, $ff1b                                   ; $4b9b: $11 $1b $ff
	ld   a, [$1621]                                  ; $4b9e: $fa $21 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ba1: $cf
	add  sp, $41                                     ; $4ba2: $e8 $41
	inc  d                                           ; $4ba4: $14
	adc  l                                           ; $4ba5: $8d
	db   $ed                                         ; $4ba6: $ed
	add  l                                           ; $4ba7: $85
	inc  sp                                          ; $4ba8: $33
	ld   a, d                                        ; $4ba9: $7a
	call c, Call_0ef_66b7                            ; $4baa: $dc $b7 $66
	adc  d                                           ; $4bad: $8a
	xor  c                                           ; $4bae: $a9
	ld   h, e                                        ; $4baf: $63
	dec  [hl]                                        ; $4bb0: $35
	sbc  [hl]                                        ; $4bb1: $9e
	jp   c, $1461                                    ; $4bb2: $da $61 $14

	sbc  [hl]                                        ; $4bb5: $9e
	cp   $a5                                         ; $4bb6: $fe $a5
	inc  sp                                          ; $4bb8: $33
	ld   l, b                                        ; $4bb9: $68
	xor  c                                           ; $4bba: $a9
	halt                                             ; $4bbb: $76
	ld   l, b                                        ; $4bbc: $68
	xor  c                                           ; $4bbd: $a9
	sub  [hl]                                        ; $4bbe: $96
	ld   d, [hl]                                     ; $4bbf: $56
	ld   a, d                                        ; $4bc0: $7a
	call $65b8                                       ; $4bc1: $cd $b8 $65
	ld   d, a                                        ; $4bc4: $57
	sbc  d                                           ; $4bc5: $9a
	sub  [hl]                                        ; $4bc6: $96
	ld   d, l                                        ; $4bc7: $55
	ld   a, d                                        ; $4bc8: $7a
	cp   l                                           ; $4bc9: $bd
	cp   d                                           ; $4bca: $ba
	ld   [hl], l                                     ; $4bcb: $75
	ld   d, l                                        ; $4bcc: $55
	ld   l, b                                        ; $4bcd: $68
	add  [hl]                                        ; $4bce: $86
	ld   b, [hl]                                     ; $4bcf: $46
	ld   a, l                                        ; $4bd0: $7d
	cp   $b3                                         ; $4bd1: $fe $b3
	ld   bc, $ff2a                                   ; $4bd3: $01 $2a $ff
	ld   a, [$1321]                                  ; $4bd6: $fa $21 $13
	xor  a                                           ; $4bd9: $af
	rst  $38                                         ; $4bda: $ff
	sub  h                                           ; $4bdb: $94
	ld   [hl+], a                                    ; $4bdc: $22
	ld   l, b                                        ; $4bdd: $68
	cp   h                                           ; $4bde: $bc
	xor  b                                           ; $4bdf: $a8
	ld   h, a                                        ; $4be0: $67
	adc  c                                           ; $4be1: $89
	sbc  c                                           ; $4be2: $99
	halt                                             ; $4be3: $76
	ld   h, a                                        ; $4be4: $67
	adc  c                                           ; $4be5: $89
	xor  d                                           ; $4be6: $aa
	sub  a                                           ; $4be7: $97
	ld   h, l                                        ; $4be8: $65
	ld   h, a                                        ; $4be9: $67
	sbc  d                                           ; $4bea: $9a
	xor  d                                           ; $4beb: $aa
	add  [hl]                                        ; $4bec: $86
	ld   h, a                                        ; $4bed: $67
	adc  d                                           ; $4bee: $8a
	xor  d                                           ; $4bef: $aa
	halt                                             ; $4bf0: $76
	ld   d, [hl]                                     ; $4bf1: $56
	adc  c                                           ; $4bf2: $89
	xor  d                                           ; $4bf3: $aa
	sbc  b                                           ; $4bf4: $98
	ld   [hl], a                                     ; $4bf5: $77
	ld   [hl], a                                     ; $4bf6: $77
	ld   a, b                                        ; $4bf7: $78
	sbc  c                                           ; $4bf8: $99
	sbc  c                                           ; $4bf9: $99
	ld   d, d                                        ; $4bfa: $52
	inc  h                                           ; $4bfb: $24
	xor  [hl]                                        ; $4bfc: $ae
	rst  $38                                         ; $4bfd: $ff
	and  l                                           ; $4bfe: $a5
	ld   de, $ef28                                   ; $4bff: $11 $28 $ef
	ld   a, [$1452]                                  ; $4c02: $fa $52 $14
	adc  h                                           ; $4c05: $8c
	db   $dd                                         ; $4c06: $dd
	and  a                                           ; $4c07: $a7
	ld   h, l                                        ; $4c08: $65
	ld   h, a                                        ; $4c09: $67
	sbc  c                                           ; $4c0a: $99
	sbc  b                                           ; $4c0b: $98
	sbc  b                                           ; $4c0c: $98
	adc  b                                           ; $4c0d: $88
	adc  b                                           ; $4c0e: $88
	ld   [hl], a                                     ; $4c0f: $77
	ld   [hl], a                                     ; $4c10: $77
	adc  c                                           ; $4c11: $89
	sbc  d                                           ; $4c12: $9a
	sub  a                                           ; $4c13: $97
	ld   h, l                                        ; $4c14: $65
	ld   l, b                                        ; $4c15: $68
	sbc  e                                           ; $4c16: $9b
	cp   b                                           ; $4c17: $b8
	halt                                             ; $4c18: $76
	ld   d, a                                        ; $4c19: $57
	sbc  d                                           ; $4c1a: $9a
	xor  d                                           ; $4c1b: $aa
	add  a                                           ; $4c1c: $87
	ld   h, [hl]                                     ; $4c1d: $66
	ld   a, c                                        ; $4c1e: $79
	sbc  c                                           ; $4c1f: $99
	sbc  b                                           ; $4c20: $98
	ld   [hl], a                                     ; $4c21: $77
	ld   [hl], a                                     ; $4c22: $77
	adc  b                                           ; $4c23: $88
	sbc  c                                           ; $4c24: $99
	adc  b                                           ; $4c25: $88
	ld   a, b                                        ; $4c26: $78
	adc  c                                           ; $4c27: $89
	sbc  b                                           ; $4c28: $98
	ld   [hl], a                                     ; $4c29: $77
	ld   a, b                                        ; $4c2a: $78
	sbc  c                                           ; $4c2b: $99
	sbc  c                                           ; $4c2c: $99
	add  a                                           ; $4c2d: $87
	ld   a, b                                        ; $4c2e: $78
	sbc  c                                           ; $4c2f: $99
	sbc  c                                           ; $4c30: $99
	adc  b                                           ; $4c31: $88
	adc  b                                           ; $4c32: $88
	adc  b                                           ; $4c33: $88
	ld   [hl], a                                     ; $4c34: $77
	adc  c                                           ; $4c35: $89
	adc  c                                           ; $4c36: $89
	sbc  b                                           ; $4c37: $98
	ld   [hl], a                                     ; $4c38: $77
	ld   [hl], a                                     ; $4c39: $77
	sbc  c                                           ; $4c3a: $99
	sbc  c                                           ; $4c3b: $99
	sbc  b                                           ; $4c3c: $98
	ld   [hl], a                                     ; $4c3d: $77
	ld   [hl], a                                     ; $4c3e: $77
	adc  c                                           ; $4c3f: $89
	sbc  c                                           ; $4c40: $99
	adc  b                                           ; $4c41: $88
	halt                                             ; $4c42: $76
	ld   [hl], a                                     ; $4c43: $77
	adc  c                                           ; $4c44: $89
	xor  d                                           ; $4c45: $aa
	sbc  c                                           ; $4c46: $99
	ld   [hl], a                                     ; $4c47: $77
	ld   h, a                                        ; $4c48: $67
	ld   a, c                                        ; $4c49: $79
	sbc  c                                           ; $4c4a: $99
	xor  b                                           ; $4c4b: $a8
	ld   [hl], a                                     ; $4c4c: $77
	ld   h, a                                        ; $4c4d: $67
	ld   a, c                                        ; $4c4e: $79
	sbc  c                                           ; $4c4f: $99
	sbc  b                                           ; $4c50: $98
	ld   [hl], a                                     ; $4c51: $77
	ld   [hl], a                                     ; $4c52: $77
	adc  b                                           ; $4c53: $88
	sbc  b                                           ; $4c54: $98
	adc  b                                           ; $4c55: $88
	adc  b                                           ; $4c56: $88
	adc  b                                           ; $4c57: $88
	add  a                                           ; $4c58: $87
	adc  b                                           ; $4c59: $88
	adc  c                                           ; $4c5a: $89
	sbc  b                                           ; $4c5b: $98
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
	sbc  b                                           ; $4c6b: $98
	adc  b                                           ; $4c6c: $88
	adc  b                                           ; $4c6d: $88
	adc  b                                           ; $4c6e: $88
	adc  b                                           ; $4c6f: $88
	adc  b                                           ; $4c70: $88
	adc  b                                           ; $4c71: $88
	ld   de, $1111                                   ; $4c72: $11 $11 $11
	ld   de, $1111                                   ; $4c75: $11 $11 $11
	ld   de, $1111                                   ; $4c78: $11 $11 $11
	ld   de, $1111                                   ; $4c7b: $11 $11 $11
	ld   de, $1111                                   ; $4c7e: $11 $11 $11
	ld   de, $1111                                   ; $4c81: $11 $11 $11
	ld   de, $1111                                   ; $4c84: $11 $11 $11
	ld   de, $1111                                   ; $4c87: $11 $11 $11
	ld   de, $1111                                   ; $4c8a: $11 $11 $11
	ld   de, $1111                                   ; $4c8d: $11 $11 $11
	ld   de, $1111                                   ; $4c90: $11 $11 $11
	ld   de, $1111                                   ; $4c93: $11 $11 $11
	ld   de, $1111                                   ; $4c96: $11 $11 $11
	ld   de, $1111                                   ; $4c99: $11 $11 $11
	ld   de, $0011                                   ; $4c9c: $11 $11 $00
	ld   c, b                                        ; $4c9f: $48
	ld   de, $1111                                   ; $4ca0: $11 $11 $11
	ld   de, $1111                                   ; $4ca3: $11 $11 $11
	ld   de, $1111                                   ; $4ca6: $11 $11 $11
	ld   de, $5413                                   ; $4ca9: $11 $13 $54
	ld   d, h                                        ; $4cac: $54
	ld   d, h                                        ; $4cad: $54
	ld   b, c                                        ; $4cae: $41
	rra                                              ; $4caf: $1f
	rst  $38                                         ; $4cb0: $ff
	pop  af                                          ; $4cb1: $f1
	ld   de, $1611                                   ; $4cb2: $11 $11 $16
	ld   sp, $1c11                                   ; $4cb5: $31 $11 $1c
	db   $dd                                         ; $4cb8: $dd

Call_0ef_4cb9:
	call z, $c1dd                                    ; $4cb9: $cc $dd $c1
	ld   de, $1111                                   ; $4cbc: $11 $11 $11
	ld   de, $1111                                   ; $4cbf: $11 $11 $11
	ld   de, $1111                                   ; $4cc2: $11 $11 $11
	ld   de, $1111                                   ; $4cc5: $11 $11 $11
	ld   de, $5411                                   ; $4cc8: $11 $11 $54
	ld   b, h                                        ; $4ccb: $44
	ld   [hl], $11                                   ; $4ccc: $36 $11
	ld   d, h                                        ; $4cce: $54
	ld   d, h                                        ; $4ccf: $54
	ld   h, a                                        ; $4cd0: $67
	ld   [hl], d                                     ; $4cd1: $72
	ld   de, $1111                                   ; $4cd2: $11 $11 $11
	ld   de, $1112                                   ; $4cd5: $11 $12 $11
	ld   [de], a                                     ; $4cd8: $12
	ld   de, $1111                                   ; $4cd9: $11 $11 $11
	ld   h, [hl]                                     ; $4cdc: $66
	halt                                             ; $4cdd: $76
	ld   d, $11                                      ; $4cde: $16 $11
	adc  b                                           ; $4ce0: $88
	ld   [hl], a                                     ; $4ce1: $77
	ld   [hl], a                                     ; $4ce2: $77
	halt                                             ; $4ce3: $76
	ld   h, [hl]                                     ; $4ce4: $66
	ld   [hl], a                                     ; $4ce5: $77
	ld   [hl], a                                     ; $4ce6: $77
	ld   a, b                                        ; $4ce7: $78
	sbc  c                                           ; $4ce8: $99
	xor  d                                           ; $4ce9: $aa
	xor  c                                           ; $4cea: $a9
	xor  d                                           ; $4ceb: $aa
	adc  b                                           ; $4cec: $88
	ld   h, l                                        ; $4ced: $65
	ld   [hl-], a                                    ; $4cee: $32
	ld   de, $1111                                   ; $4cef: $11 $11 $11
	dec  h                                           ; $4cf2: $25
	adc  e                                           ; $4cf3: $8b
	rst  $28                                         ; $4cf4: $ef
	rst  $38                                         ; $4cf5: $ff
	rst  $38                                         ; $4cf6: $ff
	rst  $38                                         ; $4cf7: $ff
	db   $eb                                         ; $4cf8: $eb
	add  h                                           ; $4cf9: $84
	ld   de, $1111                                   ; $4cfa: $11 $11 $11
	ld   de, $bf14                                   ; $4cfd: $11 $14 $bf
	rst  $38                                         ; $4d00: $ff
	rst  $38                                         ; $4d01: $ff
	rst  $38                                         ; $4d02: $ff
	rst  $38                                         ; $4d03: $ff
	jp   hl                                          ; $4d04: $e9


	ld   b, c                                        ; $4d05: $41
	ld   de, $1111                                   ; $4d06: $11 $11 $11
	ld   de, $ff5f                                   ; $4d09: $11 $5f $ff
	rst  $38                                         ; $4d0c: $ff
	rst  $38                                         ; $4d0d: $ff
	rst  $38                                         ; $4d0e: $ff
	ld   hl, sp+$31                                  ; $4d0f: $f8 $31
	ld   de, $1111                                   ; $4d11: $11 $11 $11
	ld   de, $ff4f                                   ; $4d14: $11 $4f $ff
	rst  $38                                         ; $4d17: $ff
	rst  $38                                         ; $4d18: $ff
	rst  $38                                         ; $4d19: $ff
	call nz, $1111                                   ; $4d1a: $c4 $11 $11
	ld   de, $2411                                   ; $4d1d: $11 $11 $24
	adc  a                                           ; $4d20: $8f
	rst  $38                                         ; $4d21: $ff
	rst  $38                                         ; $4d22: $ff
	rst  $38                                         ; $4d23: $ff
	rst  $38                                         ; $4d24: $ff
	add  c                                           ; $4d25: $81
	ld   de, $1111                                   ; $4d26: $11 $11 $11
	ld   de, $ef8a                                   ; $4d29: $11 $8a $ef
	rst  $38                                         ; $4d2c: $ff
	rst  $38                                         ; $4d2d: $ff
	rst  $38                                         ; $4d2e: $ff
	ei                                               ; $4d2f: $fb
	ld   sp, $1111                                   ; $4d30: $31 $11 $11
	ld   de, $df11                                   ; $4d33: $11 $11 $df
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	ld   a, [$1151]                                  ; $4d3a: $fa $51 $11
	ld   de, $1111                                   ; $4d3d: $11 $11 $11
	set  7, a                                        ; $4d40: $cb $ff
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	rst  $28                                         ; $4d44: $ef
	ret                                              ; $4d45: $c9


	or   d                                           ; $4d46: $b2
	ld   de, $1111                                   ; $4d47: $11 $11 $11
	ld   de, $dfbb                                   ; $4d4a: $11 $bb $df
	rst  $38                                         ; $4d4d: $ff
	rst  $38                                         ; $4d4e: $ff
	xor  $c9                                         ; $4d4f: $ee $c9
	or   [hl]                                        ; $4d51: $b6
	ld   de, $1111                                   ; $4d52: $11 $11 $11
	ld   de, $ff4c                                   ; $4d55: $11 $4c $ff
	rst  $38                                         ; $4d58: $ff
	rst  $38                                         ; $4d59: $ff
	ld   a, [$b977]                                  ; $4d5a: $fa $77 $b9
	ld   de, $1111                                   ; $4d5d: $11 $11 $11
	ld   de, $ff1f                                   ; $4d60: $11 $1f $ff
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	db   $f4                                         ; $4d65: $f4
	add  hl, sp                                      ; $4d66: $39
	db   $db                                         ; $4d67: $db
	ld   hl, $1111                                   ; $4d68: $21 $11 $11
	ld   de, $ff1c                                   ; $4d6b: $11 $1c $ff
	rst  $38                                         ; $4d6e: $ff
	rst  $38                                         ; $4d6f: $ff
	or   $22                                         ; $4d70: $f6 $22
	xor  [hl]                                        ; $4d72: $ae
	ld   d, c                                        ; $4d73: $51
	ld   hl, $1111                                   ; $4d74: $21 $11 $11
	jr   @+$01                                       ; $4d77: $18 $ff

	rst  $38                                         ; $4d79: $ff
	rst  $38                                         ; $4d7a: $ff
	pop  af                                          ; $4d7b: $f1
	ld   [de], a                                     ; $4d7c: $12
	rst  JumpTable                                         ; $4d7d: $df
	pop  bc                                          ; $4d7e: $c1
	ld   de, $1111                                   ; $4d7f: $11 $11 $11
	ld   de, $ffff                                   ; $4d82: $11 $ff $ff
	rst  $38                                         ; $4d85: $ff
	ei                                               ; $4d86: $fb
	ld   [de], a                                     ; $4d87: $12
	adc  a                                           ; $4d88: $8f
	di                                               ; $4d89: $f3
	ld   de, $1111                                   ; $4d8a: $11 $11 $11
	ld   de, $ffff                                   ; $4d8d: $11 $ff $ff
	rst  $38                                         ; $4d90: $ff
	rst  $38                                         ; $4d91: $ff
	ld   sp, $f91f                                   ; $4d92: $31 $1f $f9
	ld   b, c                                        ; $4d95: $41
	ld   de, $1111                                   ; $4d96: $11 $11 $11
	rra                                              ; $4d99: $1f
	rst  $38                                         ; $4d9a: $ff
	rst  $38                                         ; $4d9b: $ff
	rst  $38                                         ; $4d9c: $ff
	ld   [hl], c                                     ; $4d9d: $71
	jr   @+$01                                       ; $4d9e: $18 $ff

	sub  d                                           ; $4da0: $92
	ld   b, c                                        ; $4da1: $41
	ld   de, $1f11                                   ; $4da2: $11 $11 $1f
	rst  $38                                         ; $4da5: $ff
	rst  $38                                         ; $4da6: $ff
	rst  $38                                         ; $4da7: $ff
	or   c                                           ; $4da8: $b1
	ld   d, $ff                                      ; $4da9: $16 $ff
	pop  de                                          ; $4dab: $d1
	or   d                                           ; $4dac: $b2
	ld   de, $1f11                                   ; $4dad: $11 $11 $1f
	ld   a, a                                        ; $4db0: $7f
	rst  $38                                         ; $4db1: $ff
	rst  $38                                         ; $4db2: $ff
	pop  hl                                          ; $4db3: $e1
	ld   de, $f7ff                                   ; $4db4: $11 $ff $f7
	ld   de, $1111                                   ; $4db7: $11 $11 $11
	ld   de, $ffff                                   ; $4dba: $11 $ff $ff
	rst  $38                                         ; $4dbd: $ff

jr_0ef_4dbe:
	pop  af                                          ; $4dbe: $f1
	jr   jr_0ef_4dbe                                 ; $4dbf: $18 $fd

	rst  $38                                         ; $4dc1: $ff
	inc  de                                          ; $4dc2: $13
	ld   de, $1111                                   ; $4dc3: $11 $11 $11
	rst  $38                                         ; $4dc6: $ff
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	ld   d, c                                        ; $4dca: $51
	inc  e                                           ; $4dcb: $1c
	rst  $38                                         ; $4dcc: $ff
	ld   de, $1111                                   ; $4dcd: $11 $11 $11
	ld   de, $ff1b                                   ; $4dd0: $11 $1b $ff
	rst  $38                                         ; $4dd3: $ff
	db   $f4                                         ; $4dd4: $f4
	dec  h                                           ; $4dd5: $25
	ld   a, [de]                                     ; $4dd6: $1a
	rst  $38                                         ; $4dd7: $ff
	cpl                                              ; $4dd8: $2f
	ld   de, $1111                                   ; $4dd9: $11 $11 $11
	ld   de, $ffff                                   ; $4ddc: $11 $ff $ff
	push af                                          ; $4ddf: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4de0: $cf
	ld   de, $f7ff                                   ; $4de1: $11 $ff $f7
	ld   de, $1111                                   ; $4de4: $11 $11 $11
	ld   de, $ffdf                                   ; $4de7: $11 $df $ff
	rst  $38                                         ; $4dea: $ff
	ld   a, e                                        ; $4deb: $7b
	ld   d, c                                        ; $4dec: $51
	rst  JumpTable                                         ; $4ded: $df
	pop  af                                          ; $4dee: $f1
	ld   d, c                                        ; $4def: $51
	ld   de, $1111                                   ; $4df0: $11 $11 $11
	ld   l, a                                        ; $4df3: $6f
	push af                                          ; $4df4: $f5
	rst  $38                                         ; $4df5: $ff
	ld   e, c                                        ; $4df6: $59
	pop  af                                          ; $4df7: $f1
	cpl                                              ; $4df8: $2f
	push af                                          ; $4df9: $f5
	ld   h, c                                        ; $4dfa: $61
	inc  d                                           ; $4dfb: $14
	pop  af                                          ; $4dfc: $f1
	ld   de, $ff1f                                   ; $4dfd: $11 $1f $ff
	rst  $38                                         ; $4e00: $ff
	rst  $38                                         ; $4e01: $ff
	ld   e, b                                        ; $4e02: $58
	add  c                                           ; $4e03: $81
	rst  $38                                         ; $4e04: $ff
	inc  d                                           ; $4e05: $14
	ld   de, $1111                                   ; $4e06: $11 $11 $11
	ld   a, a                                        ; $4e09: $7f
	rst  $38                                         ; $4e0a: $ff
	rst  $38                                         ; $4e0b: $ff
	ei                                               ; $4e0c: $fb
	db   $fc                                         ; $4e0d: $fc
	ld   d, $ff                                      ; $4e0e: $16 $ff
	add  $11                                         ; $4e10: $c6 $11
	ld   [hl], e                                     ; $4e12: $73
	ld   de, rAUD1LEN                                   ; $4e13: $11 $11 $ff
	db   $fc                                         ; $4e16: $fc
	db   $fc                                         ; $4e17: $fc
	ld   a, a                                        ; $4e18: $7f
	ret                                              ; $4e19: $c9


	rst  $38                                         ; $4e1a: $ff
	db   $fd                                         ; $4e1b: $fd
	ld   de, $1111                                   ; $4e1c: $11 $11 $11
	ld   de, $effe                                   ; $4e1f: $11 $fe $ef
	ld   a, [$18ff]                                  ; $4e22: $fa $ff $18
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e25: $cf
	rst  $38                                         ; $4e26: $ff
	ld   de, $5111                                   ; $4e27: $11 $11 $51
	ld   de, $ff1f                                   ; $4e2a: $11 $1f $ff
	di                                               ; $4e2d: $f3
	rst  $28                                         ; $4e2e: $ef
	db   $ed                                         ; $4e2f: $ed
	ld   [hl], c                                     ; $4e30: $71
	rst  $38                                         ; $4e31: $ff
	push bc                                          ; $4e32: $c5
	ld   de, $1141                                   ; $4e33: $11 $41 $11
	ld   de, $ff9f                                   ; $4e36: $11 $9f $ff
	pop  af                                          ; $4e39: $f1
	sbc  a                                           ; $4e3a: $9f
	ld   c, [hl]                                     ; $4e3b: $4e
	ld   a, [$11ff]                                  ; $4e3c: $fa $ff $11
	ld   de, $1111                                   ; $4e3f: $11 $11 $11
	cp   a                                           ; $4e42: $bf
	rst  $38                                         ; $4e43: $ff
	cp   d                                           ; $4e44: $ba
	rst  $38                                         ; $4e45: $ff
	add  hl, de                                      ; $4e46: $19
	ld   [hl], h                                     ; $4e47: $74
	rst  $38                                         ; $4e48: $ff
	ld   de, $1511                                   ; $4e49: $11 $11 $15
	ld   de, $ff1f                                   ; $4e4c: $11 $1f $ff
	cp   $df                                         ; $4e4f: $fe $df
	rst  $30                                         ; $4e51: $f7
	dec  h                                           ; $4e52: $25
	rst  $38                                         ; $4e53: $ff
	or   e                                           ; $4e54: $b3
	ld   de, $1129                                   ; $4e55: $11 $29 $11
	ld   de, $ffff                                   ; $4e58: $11 $ff $ff
	dec  l                                           ; $4e5b: $2d
	di                                               ; $4e5c: $f3
	sbc  a                                           ; $4e5d: $9f
	rst  $38                                         ; $4e5e: $ff
	push af                                          ; $4e5f: $f5
	ld   de, $1111                                   ; $4e60: $11 $11 $11
	ld   de, $ffff                                   ; $4e63: $11 $ff $ff
	pop  hl                                          ; $4e66: $e1
	adc  a                                           ; $4e67: $8f
	ld   [hl], d                                     ; $4e68: $72
	db   $fd                                         ; $4e69: $fd
	rst  $38                                         ; $4e6a: $ff
	ld   de, $1a11                                   ; $4e6b: $11 $11 $1a
	ld   de, $ff1f                                   ; $4e6e: $11 $1f $ff
	ld   a, [$b7df]                                  ; $4e71: $fa $df $b7
	or   [hl]                                        ; $4e74: $b6
	rst  $38                                         ; $4e75: $ff
	and  c                                           ; $4e76: $a1
	ld   de, $1114                                   ; $4e77: $11 $14 $11
	dec  d                                           ; $4e7a: $15
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	ld   d, c                                        ; $4e7d: $51
	rst  $38                                         ; $4e7e: $ff
	ld   [hl+], a                                    ; $4e7f: $22
	rst  $38                                         ; $4e80: $ff
	sbc  l                                           ; $4e81: $9d
	ld   de, $1115                                   ; $4e82: $11 $15 $11
	ld   de, $ffff                                   ; $4e85: $11 $ff $ff
	ld   b, c                                        ; $4e88: $41
	rst  $38                                         ; $4e89: $ff
	sbc  a                                           ; $4e8a: $9f
	rst  $38                                         ; $4e8b: $ff
	rst  $38                                         ; $4e8c: $ff
	ld   de, $5111                                   ; $4e8d: $11 $11 $51
	ld   de, $ff5f                                   ; $4e90: $11 $5f $ff
	di                                               ; $4e93: $f3
	rra                                              ; $4e94: $1f
	pop  af                                          ; $4e95: $f1
	ccf                                              ; $4e96: $3f
	rst  $38                                         ; $4e97: $ff
	pop  af                                          ; $4e98: $f1
	ld   de, $1111                                   ; $4e99: $11 $11 $11
	inc  e                                           ; $4e9c: $1c
	rst  $38                                         ; $4e9d: $ff
	db   $fc                                         ; $4e9e: $fc
	ld   l, l                                        ; $4e9f: $6d
	db   $eb                                         ; $4ea0: $eb
	dec  [hl]                                        ; $4ea1: $35
	rst  $38                                         ; $4ea2: $ff
	push bc                                          ; $4ea3: $c5
	ld   de, $1111                                   ; $4ea4: $11 $11 $11
	ld   de, $ffff                                   ; $4ea7: $11 $ff $ff
	ldh  a, [c]                                      ; $4eaa: $f2
	rra                                              ; $4eab: $1f
	call nc, $ffff                                   ; $4eac: $d4 $ff $ff
	ld   de, $1111                                   ; $4eaf: $11 $11 $11
	ld   de, $ffff                                   ; $4eb2: $11 $ff $ff
	db   $f4                                         ; $4eb5: $f4
	rst  $28                                         ; $4eb6: $ef
	jr   @-$03                                       ; $4eb7: $18 $fb

	rst  $38                                         ; $4eb9: $ff
	ld   de, $1111                                   ; $4eba: $11 $11 $11
	ld   de, $ffbf                                   ; $4ebd: $11 $bf $ff
	ld   a, [$48f6]                                  ; $4ec0: $fa $f6 $48
	ld   l, h                                        ; $4ec3: $6c
	rst  $38                                         ; $4ec4: $ff
	pop  af                                          ; $4ec5: $f1
	ld   de, $1111                                   ; $4ec6: $11 $11 $11
	dec  e                                           ; $4ec9: $1d
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	and  d                                           ; $4ecc: $a2
	ld   b, [hl]                                     ; $4ecd: $46
	cp   a                                           ; $4ece: $bf
	rst  $38                                         ; $4ecf: $ff
	ldh  a, [c]                                      ; $4ed0: $f2
	ld   de, $1111                                   ; $4ed1: $11 $11 $11
	inc  d                                           ; $4ed4: $14
	rst  $38                                         ; $4ed5: $ff
	rst  $38                                         ; $4ed6: $ff
	pop  de                                          ; $4ed7: $d1
	daa                                              ; $4ed8: $27
	ld   a, a                                        ; $4ed9: $7f
	rst  $38                                         ; $4eda: $ff
	db   $fc                                         ; $4edb: $fc
	ld   de, $1111                                   ; $4edc: $11 $11 $11
	ld   de, $ffff                                   ; $4edf: $11 $ff $ff
	or   c                                           ; $4ee2: $b1
	ld   c, l                                        ; $4ee3: $4d
	and  $ff                                         ; $4ee4: $e6 $ff
	rst  $38                                         ; $4ee6: $ff
	or   c                                           ; $4ee7: $b1
	ld   de, $1111                                   ; $4ee8: $11 $11 $11
	rra                                              ; $4eeb: $1f
	rst  $38                                         ; $4eec: $ff
	db   $f4                                         ; $4eed: $f4
	ld   [hl+], a                                    ; $4eee: $22
	rst  $38                                         ; $4eef: $ff
	ld   c, a                                        ; $4ef0: $4f
	rst  $38                                         ; $4ef1: $ff
	ld   sp, $4111                                   ; $4ef2: $31 $11 $41
	ld   de, $ff1f                                   ; $4ef5: $11 $1f $ff
	ld   hl, sp+$79                                  ; $4ef8: $f8 $79
	push af                                          ; $4efa: $f5
	rrca                                             ; $4efb: $0f
	rst  $38                                         ; $4efc: $ff
	pop  af                                          ; $4efd: $f1
	ld   de, $1111                                   ; $4efe: $11 $11 $11
	ld   e, $ff                                      ; $4f01: $1e $ff
	rst  $38                                         ; $4f03: $ff
	ld   l, l                                        ; $4f04: $6d
	pop  af                                          ; $4f05: $f1
	ld   c, h                                        ; $4f06: $4c
	rst  $38                                         ; $4f07: $ff
	pop  af                                          ; $4f08: $f1
	ld   de, $1111                                   ; $4f09: $11 $11 $11
	dec  de                                          ; $4f0c: $1b
	rst  $38                                         ; $4f0d: $ff
	db   $fc                                         ; $4f0e: $fc
	ld   [hl], $ed                                   ; $4f0f: $36 $ed
	ld   c, d                                        ; $4f11: $4a
	rst  $38                                         ; $4f12: $ff
	ei                                               ; $4f13: $fb
	ld   de, $1111                                   ; $4f14: $11 $11 $11
	ld   de, $ffff                                   ; $4f17: $11 $ff $ff
	ld   h, d                                        ; $4f1a: $62
	adc  c                                           ; $4f1b: $89
	adc  e                                           ; $4f1c: $8b
	rst  $38                                         ; $4f1d: $ff
	db   $fc                                         ; $4f1e: $fc
	ld   de, $1111                                   ; $4f1f: $11 $11 $11
	dec  d                                           ; $4f22: $15
	rst  $38                                         ; $4f23: $ff
	rst  $38                                         ; $4f24: $ff
	ld   sp, $af7a                                   ; $4f25: $31 $7a $af
	rst  $38                                         ; $4f28: $ff
	db   $fd                                         ; $4f29: $fd
	ld   de, $1111                                   ; $4f2a: $11 $11 $11
	ld   d, $ff                                      ; $4f2d: $16 $ff
	rst  $38                                         ; $4f2f: $ff
	add  hl, de                                      ; $4f30: $19
	or   $af                                         ; $4f31: $f6 $af
	rst  $38                                         ; $4f33: $ff
	rst  $38                                         ; $4f34: $ff
	ld   de, $1111                                   ; $4f35: $11 $11 $11
	dec  e                                           ; $4f38: $1d
	rst  $38                                         ; $4f39: $ff
	db   $fd                                         ; $4f3a: $fd
	dec  d                                           ; $4f3b: $15
	or   l                                           ; $4f3c: $b5
	cp   a                                           ; $4f3d: $bf
	rst  $38                                         ; $4f3e: $ff
	pop  af                                          ; $4f3f: $f1
	ld   de, $1111                                   ; $4f40: $11 $11 $11
	ld   e, $ff                                      ; $4f43: $1e $ff
	cp   $94                                         ; $4f45: $fe $94
	sub  [hl]                                        ; $4f47: $96
	sbc  [hl]                                        ; $4f48: $9e
	rst  $38                                         ; $4f49: $ff
	pop  af                                          ; $4f4a: $f1
	ld   de, $1111                                   ; $4f4b: $11 $11 $11
	rra                                              ; $4f4e: $1f
	rst  $38                                         ; $4f4f: $ff
	cp   $16                                         ; $4f50: $fe $16
	di                                               ; $4f52: $f3
	ld   e, a                                        ; $4f53: $5f
	rst  $38                                         ; $4f54: $ff
	ldh  a, [c]                                      ; $4f55: $f2
	ld   de, $1411                                   ; $4f56: $11 $11 $14
	ld   l, a                                        ; $4f59: $6f
	rst  $38                                         ; $4f5a: $ff
	rst  $38                                         ; $4f5b: $ff
	ld   sp, $dfc7                                   ; $4f5c: $31 $c7 $df
	rst  $38                                         ; $4f5f: $ff
	and  c                                           ; $4f60: $a1
	ld   de, $1111                                   ; $4f61: $11 $11 $11
	rst  $38                                         ; $4f64: $ff
	rst  $38                                         ; $4f65: $ff
	di                                               ; $4f66: $f3
	ld   e, l                                        ; $4f67: $5d
	ld   [hl], l                                     ; $4f68: $75
	rst  $38                                         ; $4f69: $ff
	rst  $38                                         ; $4f6a: $ff
	ld   de, $1111                                   ; $4f6b: $11 $11 $11
	ld   de, $ffff                                   ; $4f6e: $11 $ff $ff
	ld   h, h                                        ; $4f71: $64
	scf                                              ; $4f72: $37
	and  l                                           ; $4f73: $a5
	rst  $38                                         ; $4f74: $ff
	db   $fd                                         ; $4f75: $fd
	ld   de, $1111                                   ; $4f76: $11 $11 $11
	dec  e                                           ; $4f79: $1d
	rst  $38                                         ; $4f7a: $ff
	rst  $38                                         ; $4f7b: $ff
	ld   de, $6f61                                   ; $4f7c: $11 $61 $6f
	rst  $38                                         ; $4f7f: $ff
	pop  af                                          ; $4f80: $f1
	ld   de, $1111                                   ; $4f81: $11 $11 $11
	rst  JumpTable                                         ; $4f84: $df
	rst  $38                                         ; $4f85: $ff
	ld   hl, sp+$12                                  ; $4f86: $f8 $12
	inc  d                                           ; $4f88: $14
	rst  $38                                         ; $4f89: $ff
	rst  $38                                         ; $4f8a: $ff
	ld   sp, $1111                                   ; $4f8b: $31 $11 $11
	ld   d, $ff                                      ; $4f8e: $16 $ff
	rst  $38                                         ; $4f90: $ff
	pop  af                                          ; $4f91: $f1
	inc  d                                           ; $4f92: $14
	inc  de                                          ; $4f93: $13
	rst  $38                                         ; $4f94: $ff
	rst  $38                                         ; $4f95: $ff
	ld   de, $1111                                   ; $4f96: $11 $11 $11
	cpl                                              ; $4f99: $2f
	rst  $38                                         ; $4f9a: $ff
	rst  $38                                         ; $4f9b: $ff
	ld   de, $8f11                                   ; $4f9c: $11 $11 $8f
	rst  $38                                         ; $4f9f: $ff
	pop  af                                          ; $4fa0: $f1
	ld   de, $1411                                   ; $4fa1: $11 $11 $14
	rst  $38                                         ; $4fa4: $ff
	rst  $38                                         ; $4fa5: $ff
	rst  $30                                         ; $4fa6: $f7
	ld   sp, $ff1a                                   ; $4fa7: $31 $1a $ff
	rst  $38                                         ; $4faa: $ff
	ld   de, $1111                                   ; $4fab: $11 $11 $11
	ld   a, [de]                                     ; $4fae: $1a
	rst  $38                                         ; $4faf: $ff
	rst  $38                                         ; $4fb0: $ff
	pop  bc                                          ; $4fb1: $c1
	ld   de, $ff1f                                   ; $4fb2: $11 $1f $ff
	pop  af                                          ; $4fb5: $f1
	ld   de, $1111                                   ; $4fb6: $11 $11 $11
	rst  $38                                         ; $4fb9: $ff
	rst  $38                                         ; $4fba: $ff
	rst  $38                                         ; $4fbb: $ff
	ld   de, rAUD1LEN                                   ; $4fbc: $11 $11 $ff
	rst  $38                                         ; $4fbf: $ff
	ld   de, $1111                                   ; $4fc0: $11 $11 $11
	rra                                              ; $4fc3: $1f
	rst  $38                                         ; $4fc4: $ff
	rst  $38                                         ; $4fc5: $ff
	pop  af                                          ; $4fc6: $f1
	ld   de, $ff1f                                   ; $4fc7: $11 $1f $ff
	pop  af                                          ; $4fca: $f1
	ld   de, $1211                                   ; $4fcb: $11 $11 $12
	rst  $38                                         ; $4fce: $ff
	rst  $38                                         ; $4fcf: $ff
	pop  af                                          ; $4fd0: $f1
	ld   de, $ff1d                                   ; $4fd1: $11 $1d $ff
	ld   a, [$1111]                                  ; $4fd4: $fa $11 $11
	ld   de, $ffef                                   ; $4fd7: $11 $ef $ff
	cp   $11                                         ; $4fda: $fe $11
	ld   de, $ffef                                   ; $4fdc: $11 $ef $ff
	ld   h, c                                        ; $4fdf: $61
	ld   de, $1f11                                   ; $4fe0: $11 $11 $1f
	rst  $38                                         ; $4fe3: $ff
	rst  $38                                         ; $4fe4: $ff
	sub  c                                           ; $4fe5: $91
	ld   de, $ff1f                                   ; $4fe6: $11 $1f $ff
	pop  af                                          ; $4fe9: $f1
	ld   de, $1911                                   ; $4fea: $11 $11 $19
	rst  $38                                         ; $4fed: $ff
	rst  $38                                         ; $4fee: $ff
	ei                                               ; $4fef: $fb
	ld   de, $ff17                                   ; $4ff0: $11 $17 $ff
	push af                                          ; $4ff3: $f5
	ld   de, $1111                                   ; $4ff4: $11 $11 $11
	rst  $38                                         ; $4ff7: $ff
	rst  $38                                         ; $4ff8: $ff
	rst  $38                                         ; $4ff9: $ff
	sub  c                                           ; $4ffa: $91
	ld   de, $ffbf                                   ; $4ffb: $11 $bf $ff
	ld   de, $1111                                   ; $4ffe: $11 $11 $11
	rra                                              ; $5001: $1f
	rst  $38                                         ; $5002: $ff
	rst  $38                                         ; $5003: $ff
	pop  de                                          ; $5004: $d1
	ld   de, $ff0f                                   ; $5005: $11 $0f $ff
	pop  bc                                          ; $5008: $c1
	ld   de, $1511                                   ; $5009: $11 $11 $15
	rst  $38                                         ; $500c: $ff
	rst  $38                                         ; $500d: $ff
	push af                                          ; $500e: $f5
	ld   de, $ff17                                   ; $500f: $11 $17 $ff
	di                                               ; $5012: $f3
	ld   de, $1111                                   ; $5013: $11 $11 $11
	rst  $38                                         ; $5016: $ff
	rst  $38                                         ; $5017: $ff
	db   $fc                                         ; $5018: $fc
	ld   de, rAUD1ENV                                   ; $5019: $11 $12 $ff
	rst  $38                                         ; $501c: $ff
	ld   de, $1111                                   ; $501d: $11 $11 $11
	adc  a                                           ; $5020: $8f
	rst  $38                                         ; $5021: $ff
	rst  $38                                         ; $5022: $ff
	or   c                                           ; $5023: $b1
	ld   de, $ffbf                                   ; $5024: $11 $bf $ff
	sub  c                                           ; $5027: $91
	ld   de, $0d11                                   ; $5028: $11 $11 $0d
	rst  $38                                         ; $502b: $ff
	rst  $38                                         ; $502c: $ff
	ld   sp, hl                                      ; $502d: $f9
	ld   de, $ff3a                                   ; $502e: $11 $3a $ff
	pop  af                                          ; $5031: $f1
	ld   de, $1511                                   ; $5032: $11 $11 $15
	rst  $38                                         ; $5035: $ff
	rst  $38                                         ; $5036: $ff
	rst  $38                                         ; $5037: $ff
	ld   [hl], c                                     ; $5038: $71
	ld   de, $ffff                                   ; $5039: $11 $ff $ff
	ld   de, $1111                                   ; $503c: $11 $11 $11
	rst  $28                                         ; $503f: $ef
	rst  $38                                         ; $5040: $ff
	rst  $38                                         ; $5041: $ff
	and  c                                           ; $5042: $a1
	ld   de, $ff9f                                   ; $5043: $11 $9f $ff
	sub  c                                           ; $5046: $91
	ld   de, $af11                                   ; $5047: $11 $11 $af
	rst  $38                                         ; $504a: $ff
	rst  $38                                         ; $504b: $ff
	rst  $30                                         ; $504c: $f7
	ld   de, $ff2a                                   ; $504d: $11 $2a $ff
	pop  de                                          ; $5050: $d1
	ld   de, $1e11                                   ; $5051: $11 $11 $1e
	rst  $38                                         ; $5054: $ff
	rst  $38                                         ; $5055: $ff
	db   $fd                                         ; $5056: $fd
	ld   sp, $ff17                                   ; $5057: $31 $17 $ff
	ld   a, [$1111]                                  ; $505a: $fa $11 $11
	ld   a, [de]                                     ; $505d: $1a
	rst  $38                                         ; $505e: $ff
	rst  $38                                         ; $505f: $ff
	rst  $38                                         ; $5060: $ff
	or   c                                           ; $5061: $b1
	ld   de, $ffbf                                   ; $5062: $11 $bf $ff
	ld   de, $1311                                   ; $5065: $11 $11 $13
	rst  JumpTable                                         ; $5068: $df
	rst  $38                                         ; $5069: $ff
	rst  $38                                         ; $506a: $ff
	di                                               ; $506b: $f3
	ld   de, $ff4f                                   ; $506c: $11 $4f $ff
	pop  bc                                          ; $506f: $c1
	ld   de, $8f11                                   ; $5070: $11 $11 $8f
	rst  $38                                         ; $5073: $ff
	rst  $38                                         ; $5074: $ff
	di                                               ; $5075: $f3
	ld   de, $ff3e                                   ; $5076: $11 $3e $ff
	di                                               ; $5079: $f3
	ld   de, $1f11                                   ; $507a: $11 $11 $1f
	rst  $38                                         ; $507d: $ff
	rst  $38                                         ; $507e: $ff
	rst  $38                                         ; $507f: $ff
	ld   de, $ff19                                   ; $5080: $11 $19 $ff
	db   $fc                                         ; $5083: $fc
	ld   de, $1911                                   ; $5084: $11 $11 $19
	rst  $38                                         ; $5087: $ff
	rst  $38                                         ; $5088: $ff
	rst  $38                                         ; $5089: $ff
	pop  af                                          ; $508a: $f1
	ld   de, $ffaf                                   ; $508b: $11 $af $ff
	ld   sp, $1211                                   ; $508e: $31 $11 $12
	rst  $28                                         ; $5091: $ef
	rst  $38                                         ; $5092: $ff
	rst  $38                                         ; $5093: $ff
	pop  af                                          ; $5094: $f1
	ld   de, $ff5f                                   ; $5095: $11 $5f $ff
	pop  hl                                          ; $5098: $e1
	ld   de, $8f11                                   ; $5099: $11 $11 $8f
	rst  $38                                         ; $509c: $ff
	rst  $38                                         ; $509d: $ff
	ei                                               ; $509e: $fb
	ld   de, $ff1a                                   ; $509f: $11 $1a $ff
	db   $f4                                         ; $50a2: $f4
	ld   de, $1f11                                   ; $50a3: $11 $11 $1f
	rst  $38                                         ; $50a6: $ff
	rst  $38                                         ; $50a7: $ff
	rst  $38                                         ; $50a8: $ff
	ld   hl, rAUD1HIGH                                   ; $50a9: $21 $14 $ff
	db   $fd                                         ; $50ac: $fd
	ld   de, $1b11                                   ; $50ad: $11 $11 $1b
	rst  $38                                         ; $50b0: $ff
	rst  $38                                         ; $50b1: $ff
	rst  $38                                         ; $50b2: $ff
	or   c                                           ; $50b3: $b1
	ld   de, $ffef                                   ; $50b4: $11 $ef $ff
	ld   b, c                                        ; $50b7: $41
	ld   de, $ff15                                   ; $50b8: $11 $15 $ff
	rst  $38                                         ; $50bb: $ff
	rst  $38                                         ; $50bc: $ff
	di                                               ; $50bd: $f3
	ld   de, $ff3f                                   ; $50be: $11 $3f $ff
	pop  af                                          ; $50c1: $f1
	ld   de, $cf11                                   ; $50c2: $11 $11 $cf
	rst  $38                                         ; $50c5: $ff
	rst  $38                                         ; $50c6: $ff
	ld   a, [$1a11]                                  ; $50c7: $fa $11 $1a
	rst  $38                                         ; $50ca: $ff
	push af                                          ; $50cb: $f5
	ld   de, $6f11                                   ; $50cc: $11 $11 $6f
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	rst  $38                                         ; $50d1: $ff
	ld   de, rAUD1ENV                                   ; $50d2: $11 $12 $ff
	cp   $11                                         ; $50d5: $fe $11
	ld   de, $ff16                                   ; $50d7: $11 $16 $ff
	rst  $38                                         ; $50da: $ff
	rst  $38                                         ; $50db: $ff
	ld   h, c                                        ; $50dc: $61
	ld   de, $ffbf                                   ; $50dd: $11 $bf $ff
	ld   de, $1511                                   ; $50e0: $11 $11 $15
	rst  $38                                         ; $50e3: $ff
	rst  $38                                         ; $50e4: $ff
	rst  $38                                         ; $50e5: $ff
	ldh  a, [c]                                      ; $50e6: $f2
	ld   de, $ff4f                                   ; $50e7: $11 $4f $ff
	and  c                                           ; $50ea: $a1
	ld   de, $af11                                   ; $50eb: $11 $11 $af
	rst  $38                                         ; $50ee: $ff
	rst  $38                                         ; $50ef: $ff
	ld   a, [$1c11]                                  ; $50f0: $fa $11 $1c
	rst  $38                                         ; $50f3: $ff
	pop  af                                          ; $50f4: $f1
	ld   de, $4a11                                   ; $50f5: $11 $11 $4a
	rst  $38                                         ; $50f8: $ff
	rst  $38                                         ; $50f9: $ff
	rst  $38                                         ; $50fa: $ff
	ld   b, c                                        ; $50fb: $41
	ld   [de], a                                     ; $50fc: $12
	rst  $28                                         ; $50fd: $ef
	db   $fc                                         ; $50fe: $fc
	ld   de, $1911                                   ; $50ff: $11 $11 $19
	rst  JumpTable                                         ; $5102: $df
	rst  $38                                         ; $5103: $ff
	rst  $38                                         ; $5104: $ff
	and  c                                           ; $5105: $a1
	ld   de, $ffbf                                   ; $5106: $11 $bf $ff
	ld   de, $1511                                   ; $5109: $11 $11 $15
	xor  a                                           ; $510c: $af
	rst  $38                                         ; $510d: $ff
	rst  $38                                         ; $510e: $ff
	ld   hl, sp+$11                                  ; $510f: $f8 $11
	ld   l, $ff                                      ; $5111: $2e $ff
	add  c                                           ; $5113: $81
	ld   de, $ae11                                   ; $5114: $11 $11 $ae
	rst  $38                                         ; $5117: $ff
	rst  $38                                         ; $5118: $ff
	db   $fc                                         ; $5119: $fc
	ld   de, $ff1a                                   ; $511a: $11 $1a $ff
	pop  af                                          ; $511d: $f1
	ld   de, $3a11                                   ; $511e: $11 $11 $3a
	rst  $38                                         ; $5121: $ff
	rst  $38                                         ; $5122: $ff
	rst  $38                                         ; $5123: $ff
	ld   h, c                                        ; $5124: $61
	ld   de, $f8cf                                   ; $5125: $11 $cf $f8
	ld   de, $1911                                   ; $5128: $11 $11 $19
	rst  JumpTable                                         ; $512b: $df
	rst  $38                                         ; $512c: $ff
	rst  $38                                         ; $512d: $ff
	push hl                                          ; $512e: $e5
	ld   de, $ff8f                                   ; $512f: $11 $8f $ff
	ld   de, $1611                                   ; $5132: $11 $11 $16
	xor  a                                           ; $5135: $af
	rst  $38                                         ; $5136: $ff
	rst  $38                                         ; $5137: $ff
	ld   sp, hl                                      ; $5138: $f9
	ld   de, $fd0f                                   ; $5139: $11 $0f $fd
	ld   b, c                                        ; $513c: $41
	ld   de, $9d11                                   ; $513d: $11 $11 $9d
	rst  $38                                         ; $5140: $ff
	rst  $38                                         ; $5141: $ff
	rst  $38                                         ; $5142: $ff
	ld   b, c                                        ; $5143: $41
	dec  de                                          ; $5144: $1b
	rst  $38                                         ; $5145: $ff
	and  c                                           ; $5146: $a1
	ld   de, $8a11                                   ; $5147: $11 $11 $8a
	rst  $38                                         ; $514a: $ff
	rst  $38                                         ; $514b: $ff
	rst  $38                                         ; $514c: $ff
	and  c                                           ; $514d: $a1
	dec  d                                           ; $514e: $15
	rst  $38                                         ; $514f: $ff
	pop  bc                                          ; $5150: $c1
	ld   de, $3a11                                   ; $5151: $11 $11 $3a
	rst  $38                                         ; $5154: $ff
	rst  $38                                         ; $5155: $ff
	rst  $38                                         ; $5156: $ff
	pop  bc                                          ; $5157: $c1
	ld   de, $f5bf                                   ; $5158: $11 $bf $f5
	ld   de, $2a11                                   ; $515b: $11 $11 $2a
	rst  JumpTable                                         ; $515e: $df
	rst  $38                                         ; $515f: $ff
	rst  $38                                         ; $5160: $ff
	rst  $30                                         ; $5161: $f7
	ld   bc, $e99f                                   ; $5162: $01 $9f $e9
	ld   de, $1611                                   ; $5165: $11 $11 $16
	xor  a                                           ; $5168: $af
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	ei                                               ; $516b: $fb
	ld   de, $fb5c                                   ; $516c: $11 $5c $fb
	ld   de, $1511                                   ; $516f: $11 $11 $15
	sbc  [hl]                                        ; $5172: $9e
	rst  $38                                         ; $5173: $ff
	rst  $38                                         ; $5174: $ff
	cp   $51                                         ; $5175: $fe $51
	ld   a, [de]                                     ; $5177: $1a
	jp   c, $1111                                    ; $5178: $da $11 $11

	ld   [de], a                                     ; $517b: $12
	xor  l                                           ; $517c: $ad
	rst  $38                                         ; $517d: $ff
	rst  $38                                         ; $517e: $ff
	rst  $38                                         ; $517f: $ff
	ld   [hl], c                                     ; $5180: $71
	rla                                              ; $5181: $17
	xor  h                                           ; $5182: $ac
	ld   b, c                                        ; $5183: $41
	ld   de, $7c11                                   ; $5184: $11 $11 $7c
	rst  $38                                         ; $5187: $ff
	rst  $38                                         ; $5188: $ff
	rst  $38                                         ; $5189: $ff
	or   c                                           ; $518a: $b1
	dec  d                                           ; $518b: $15
	call z, $1131                                    ; $518c: $cc $31 $11
	ld   de, $ff5d                                   ; $518f: $11 $5d $ff
	rst  $38                                         ; $5192: $ff
	rst  $38                                         ; $5193: $ff
	or   c                                           ; $5194: $b1
	dec  d                                           ; $5195: $15
	adc  e                                           ; $5196: $8b
	add  c                                           ; $5197: $81
	ld   de, $5913                                   ; $5198: $11 $13 $59
	rst  $38                                         ; $519b: $ff
	rst  $38                                         ; $519c: $ff
	rst  $38                                         ; $519d: $ff
	push af                                          ; $519e: $f5
	inc  d                                           ; $519f: $14
	sbc  h                                           ; $51a0: $9c
	ld   h, c                                        ; $51a1: $61
	ld   de, $5911                                   ; $51a2: $11 $11 $59
	rst  $28                                         ; $51a5: $ef
	rst  $38                                         ; $51a6: $ff
	rst  $38                                         ; $51a7: $ff
	or   $13                                         ; $51a8: $f6 $13
	adc  e                                           ; $51aa: $8b
	ld   b, c                                        ; $51ab: $41
	ld   de, $3911                                   ; $51ac: $11 $11 $39
	rst  $38                                         ; $51af: $ff
	rst  $38                                         ; $51b0: $ff
	rst  $38                                         ; $51b1: $ff
	or   $13                                         ; $51b2: $f6 $13
	ld   a, c                                        ; $51b4: $79
	ld   sp, $1111                                   ; $51b5: $31 $11 $11
	ld   e, c                                        ; $51b8: $59
	rst  $38                                         ; $51b9: $ff
	rst  $38                                         ; $51ba: $ff
	rst  $38                                         ; $51bb: $ff
	ld   sp, hl                                      ; $51bc: $f9
	inc  de                                          ; $51bd: $13
	add  a                                           ; $51be: $87
	ld   de, $1111                                   ; $51bf: $11 $11 $11
	ld   c, e                                        ; $51c2: $4b
	rst  $38                                         ; $51c3: $ff
	rst  $38                                         ; $51c4: $ff
	rst  $38                                         ; $51c5: $ff
	ld   hl, sp+$12                                  ; $51c6: $f8 $12
	ld   [hl], h                                     ; $51c8: $74
	ld   de, $1111                                   ; $51c9: $11 $11 $11
	ld   a, d                                        ; $51cc: $7a
	rst  $38                                         ; $51cd: $ff
	rst  $38                                         ; $51ce: $ff
	rst  $38                                         ; $51cf: $ff
	ld   a, [$8414]                                  ; $51d0: $fa $14 $84
	ld   de, $1111                                   ; $51d3: $11 $11 $11
	ld   e, h                                        ; $51d6: $5c
	rst  $38                                         ; $51d7: $ff
	rst  $38                                         ; $51d8: $ff
	rst  $38                                         ; $51d9: $ff
	rst  $30                                         ; $51da: $f7
	inc  h                                           ; $51db: $24
	ld   [hl], l                                     ; $51dc: $75
	ld   de, $1111                                   ; $51dd: $11 $11 $11
	ld   e, h                                        ; $51e0: $5c
	rst  $38                                         ; $51e1: $ff
	rst  $38                                         ; $51e2: $ff
	rst  $38                                         ; $51e3: $ff
	push af                                          ; $51e4: $f5
	dec  [hl]                                        ; $51e5: $35
	ld   d, c                                        ; $51e6: $51
	ld   de, $1311                                   ; $51e7: $11 $11 $13
	ld   l, l                                        ; $51ea: $6d
	rst  $38                                         ; $51eb: $ff
	rst  $38                                         ; $51ec: $ff
	rst  $38                                         ; $51ed: $ff
	ldh  a, [c]                                      ; $51ee: $f2
	ld   d, $61                                      ; $51ef: $16 $61
	ld   de, $1311                                   ; $51f1: $11 $11 $13
	ld   a, l                                        ; $51f4: $7d
	rst  $38                                         ; $51f5: $ff
	rst  $38                                         ; $51f6: $ff
	rst  $38                                         ; $51f7: $ff
	db   $d3                                         ; $51f8: $d3
	scf                                              ; $51f9: $37
	ld   b, c                                        ; $51fa: $41
	ld   de, $1111                                   ; $51fb: $11 $11 $11
	adc  a                                           ; $51fe: $8f
	rst  $38                                         ; $51ff: $ff
	rst  $38                                         ; $5200: $ff
	rst  $38                                         ; $5201: $ff
	ld   [hl], e                                     ; $5202: $73
	ld   d, l                                        ; $5203: $55
	ld   de, $1111                                   ; $5204: $11 $11 $11
	dec  d                                           ; $5207: $15
	cp   a                                           ; $5208: $bf
	rst  $38                                         ; $5209: $ff
	rst  $38                                         ; $520a: $ff
	rst  $38                                         ; $520b: $ff
	ld   d, h                                        ; $520c: $54
	ld   d, [hl]                                     ; $520d: $56
	ld   de, $1111                                   ; $520e: $11 $11 $11
	dec  d                                           ; $5211: $15
	rst  $38                                         ; $5212: $ff
	rst  $38                                         ; $5213: $ff
	rst  $38                                         ; $5214: $ff
	ei                                               ; $5215: $fb
	ld   h, a                                        ; $5216: $67
	ld   b, c                                        ; $5217: $41
	ld   de, $1111                                   ; $5218: $11 $11 $11
	ld   [$ffff], sp                                 ; $521b: $08 $ff $ff
	rst  $38                                         ; $521e: $ff
	rst  $30                                         ; $521f: $f7
	ld   c, b                                        ; $5220: $48
	ld   sp, $1111                                   ; $5221: $31 $11 $11
	ld   de, $ff6f                                   ; $5224: $11 $6f $ff
	rst  $38                                         ; $5227: $ff
	rst  $38                                         ; $5228: $ff
	rst  $10                                         ; $5229: $d7
	ld   [hl], l                                     ; $522a: $75
	ld   de, $1111                                   ; $522b: $11 $11 $11
	ld   de, $ffdf                                   ; $522e: $11 $df $ff
	rst  $38                                         ; $5231: $ff
	rst  $38                                         ; $5232: $ff
	ld   [hl], a                                     ; $5233: $77
	ld   [hl], d                                     ; $5234: $72
	ld   de, $1111                                   ; $5235: $11 $11 $11
	rla                                              ; $5238: $17
	rst  $38                                         ; $5239: $ff
	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	ei                                               ; $523c: $fb
	ld   a, d                                        ; $523d: $7a
	ld   b, c                                        ; $523e: $41
	ld   de, $1111                                   ; $523f: $11 $11 $11
	ld   e, a                                        ; $5242: $5f
	rst  $38                                         ; $5243: $ff
	rst  $38                                         ; $5244: $ff
	rst  $38                                         ; $5245: $ff
	ld   hl, sp-$6a                                  ; $5246: $f8 $96
	ld   de, $1111                                   ; $5248: $11 $11 $11
	ld   de, $ffaf                                   ; $524b: $11 $af $ff
	rst  $38                                         ; $524e: $ff
	rst  $38                                         ; $524f: $ff
	xor  c                                           ; $5250: $a9
	sub  c                                           ; $5251: $91
	ld   de, $1111                                   ; $5252: $11 $11 $11
	add  hl, de                                      ; $5255: $19
	rst  $38                                         ; $5256: $ff
	rst  $38                                         ; $5257: $ff
	rst  $38                                         ; $5258: $ff
	db   $fc                                         ; $5259: $fc
	xor  b                                           ; $525a: $a8
	ld   hl, $1111                                   ; $525b: $21 $11 $11
	ld   de, $ff4f                                   ; $525e: $11 $4f $ff
	rst  $38                                         ; $5261: $ff
	rst  $38                                         ; $5262: $ff
	db   $db                                         ; $5263: $db
	or   h                                           ; $5264: $b4
	ld   de, $1111                                   ; $5265: $11 $11 $11
	ld   [de], a                                     ; $5268: $12
	rst  $38                                         ; $5269: $ff
	rst  $38                                         ; $526a: $ff
	rst  $38                                         ; $526b: $ff
	rst  $38                                         ; $526c: $ff
	bit  0, c                                        ; $526d: $cb $41
	ld   de, $1111                                   ; $526f: $11 $11 $11
	rra                                              ; $5272: $1f
	rst  $38                                         ; $5273: $ff
	rst  $38                                         ; $5274: $ff
	rst  $38                                         ; $5275: $ff
	db   $fd                                         ; $5276: $fd
	or   e                                           ; $5277: $b3
	ld   de, $1111                                   ; $5278: $11 $11 $11
	ld   de, $ffff                                   ; $527b: $11 $ff $ff
	rst  $38                                         ; $527e: $ff
	rst  $38                                         ; $527f: $ff
	db   $ed                                         ; $5280: $ed
	ld   b, c                                        ; $5281: $41
	ld   de, $1111                                   ; $5282: $11 $11 $11
	rra                                              ; $5285: $1f
	rst  $38                                         ; $5286: $ff
	rst  $38                                         ; $5287: $ff
	rst  $38                                         ; $5288: $ff
	rst  $38                                         ; $5289: $ff
	db   $e4                                         ; $528a: $e4
	ld   de, $1111                                   ; $528b: $11 $11 $11
	ld   de, $ffef                                   ; $528e: $11 $ef $ff
	rst  $38                                         ; $5291: $ff
	rst  $38                                         ; $5292: $ff
	db   $fd                                         ; $5293: $fd
	ld   b, c                                        ; $5294: $41
	ld   de, $1111                                   ; $5295: $11 $11 $11
	rra                                              ; $5298: $1f
	rst  $38                                         ; $5299: $ff
	rst  $38                                         ; $529a: $ff
	rst  $38                                         ; $529b: $ff
	rst  $38                                         ; $529c: $ff
	db   $e3                                         ; $529d: $e3
	ld   de, $1111                                   ; $529e: $11 $11 $11
	ld   de, $ffff                                   ; $52a1: $11 $ff $ff
	rst  $38                                         ; $52a4: $ff
	rst  $38                                         ; $52a5: $ff
	db   $fd                                         ; $52a6: $fd
	ld   sp, $1111                                   ; $52a7: $31 $11 $11
	ld   de, $ff1e                                   ; $52aa: $11 $1e $ff
	rst  $38                                         ; $52ad: $ff
	rst  $38                                         ; $52ae: $ff
	rst  $38                                         ; $52af: $ff
	db   $e4                                         ; $52b0: $e4
	ld   de, $1111                                   ; $52b1: $11 $11 $11
	ld   de, $ffef                                   ; $52b4: $11 $ef $ff
	rst  $38                                         ; $52b7: $ff
	rst  $38                                         ; $52b8: $ff
	cp   $41                                         ; $52b9: $fe $41
	ld   de, $1111                                   ; $52bb: $11 $11 $11
	dec  e                                           ; $52be: $1d
	rst  $38                                         ; $52bf: $ff
	rst  $38                                         ; $52c0: $ff
	rst  $38                                         ; $52c1: $ff
	rst  $38                                         ; $52c2: $ff
	di                                               ; $52c3: $f3
	ld   de, $1111                                   ; $52c4: $11 $11 $11
	ld   de, $ffbf                                   ; $52c7: $11 $bf $ff
	rst  $38                                         ; $52ca: $ff
	rst  $38                                         ; $52cb: $ff
	rst  $38                                         ; $52cc: $ff
	ld   d, c                                        ; $52cd: $51
	ld   de, $1111                                   ; $52ce: $11 $11 $11
	ld   a, [de]                                     ; $52d1: $1a
	rst  $38                                         ; $52d2: $ff
	rst  $38                                         ; $52d3: $ff
	rst  $38                                         ; $52d4: $ff
	rst  $38                                         ; $52d5: $ff
	push af                                          ; $52d6: $f5
	ld   de, $1111                                   ; $52d7: $11 $11 $11
	ld   de, $ff9f                                   ; $52da: $11 $9f $ff
	rst  $38                                         ; $52dd: $ff
	rst  $38                                         ; $52de: $ff
	rst  $38                                         ; $52df: $ff
	ld   [hl], c                                     ; $52e0: $71
	ld   de, $1111                                   ; $52e1: $11 $11 $11
	ld   d, $ff                                      ; $52e4: $16 $ff
	rst  $38                                         ; $52e6: $ff
	rst  $38                                         ; $52e7: $ff
	rst  $38                                         ; $52e8: $ff
	ld   hl, sp+$11                                  ; $52e9: $f8 $11
	ld   de, $1111                                   ; $52eb: $11 $11 $11
	dec  a                                           ; $52ee: $3d
	rst  $38                                         ; $52ef: $ff
	rst  $38                                         ; $52f0: $ff
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	jp   $1111                                       ; $52f3: $c3 $11 $11


	ld   de, $af11                                   ; $52f6: $11 $11 $af
	rst  $38                                         ; $52f9: $ff
	rst  $38                                         ; $52fa: $ff
	rst  $38                                         ; $52fb: $ff
	cp   $61                                         ; $52fc: $fe $61
	ld   de, $1111                                   ; $52fe: $11 $11 $11
	rla                                              ; $5301: $17
	rst  $38                                         ; $5302: $ff
	rst  $38                                         ; $5303: $ff
	rst  $38                                         ; $5304: $ff
	rst  $38                                         ; $5305: $ff
	ld   sp, hl                                      ; $5306: $f9
	ld   de, $1111                                   ; $5307: $11 $11 $11
	ld   de, $ff4e                                   ; $530a: $11 $4e $ff
	rst  $38                                         ; $530d: $ff
	rst  $38                                         ; $530e: $ff
	rst  $38                                         ; $530f: $ff
	or   d                                           ; $5310: $b2
	ld   de, $1111                                   ; $5311: $11 $11 $11
	ld   de, $ff8f                                   ; $5314: $11 $8f $ff
	rst  $38                                         ; $5317: $ff
	rst  $38                                         ; $5318: $ff
	cp   $61                                         ; $5319: $fe $61
	ld   de, $1111                                   ; $531b: $11 $11 $11
	inc  de                                          ; $531e: $13
	rst  $38                                         ; $531f: $ff
	rst  $38                                         ; $5320: $ff
	rst  $38                                         ; $5321: $ff
	rst  $38                                         ; $5322: $ff
	db   $fc                                         ; $5323: $fc
	ld   de, $1111                                   ; $5324: $11 $11 $11
	ld   de, $ff1a                                   ; $5327: $11 $1a $ff
	rst  $38                                         ; $532a: $ff
	rst  $38                                         ; $532b: $ff
	rst  $38                                         ; $532c: $ff
	push af                                          ; $532d: $f5
	ld   de, $1111                                   ; $532e: $11 $11 $11
	ld   de, $ff2f                                   ; $5331: $11 $2f $ff
	rst  $38                                         ; $5334: $ff
	rst  $38                                         ; $5335: $ff
	rst  $38                                         ; $5336: $ff
	or   c                                           ; $5337: $b1
	ld   de, $1111                                   ; $5338: $11 $11 $11
	ld   de, $ff9f                                   ; $533b: $11 $9f $ff
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	rst  $38                                         ; $5340: $ff
	ld   h, c                                        ; $5341: $61
	ld   de, $1111                                   ; $5342: $11 $11 $11
	ld   de, $ffff                                   ; $5345: $11 $ff $ff
	rst  $38                                         ; $5348: $ff
	rst  $38                                         ; $5349: $ff
	cp   $11                                         ; $534a: $fe $11
	ld   de, $1111                                   ; $534c: $11 $11 $11
	jr   @+$01                                       ; $534f: $18 $ff

	rst  $38                                         ; $5351: $ff
	rst  $38                                         ; $5352: $ff
	rst  $38                                         ; $5353: $ff
	ld   hl, sp+$11                                  ; $5354: $f8 $11
	ld   de, $1111                                   ; $5356: $11 $11 $11
	ld   e, $ff                                      ; $5359: $1e $ff
	rst  $38                                         ; $535b: $ff
	rst  $38                                         ; $535c: $ff
	rst  $38                                         ; $535d: $ff
	push af                                          ; $535e: $f5
	ld   de, $1111                                   ; $535f: $11 $11 $11
	ld   de, $ff3f                                   ; $5362: $11 $3f $ff
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	db   $d3                                         ; $5368: $d3
	ld   de, $1111                                   ; $5369: $11 $11 $11
	ld   de, $ff8f                                   ; $536c: $11 $8f $ff
	rst  $38                                         ; $536f: $ff
	rst  $38                                         ; $5370: $ff
	rst  $38                                         ; $5371: $ff
	or   c                                           ; $5372: $b1
	ld   de, $1111                                   ; $5373: $11 $11 $11
	ld   de, $ffcf                                   ; $5376: $11 $cf $ff
	rst  $38                                         ; $5379: $ff
	rst  $38                                         ; $537a: $ff
	rst  $38                                         ; $537b: $ff
	ld   [hl], c                                     ; $537c: $71
	ld   de, $1111                                   ; $537d: $11 $11 $11
	ld   de, $ffdf                                   ; $5380: $11 $df $ff
	rst  $38                                         ; $5383: $ff
	rst  $38                                         ; $5384: $ff
	rst  $38                                         ; $5385: $ff
	ld   h, c                                        ; $5386: $61
	ld   de, $1111                                   ; $5387: $11 $11 $11
	inc  de                                          ; $538a: $13
	rst  $28                                         ; $538b: $ef
	rst  $38                                         ; $538c: $ff
	rst  $38                                         ; $538d: $ff
	rst  $38                                         ; $538e: $ff
	cp   $51                                         ; $538f: $fe $51
	ld   de, $1111                                   ; $5391: $11 $11 $11
	dec  d                                           ; $5394: $15
	rst  $38                                         ; $5395: $ff
	rst  $38                                         ; $5396: $ff
	rst  $38                                         ; $5397: $ff
	rst  $38                                         ; $5398: $ff
	db   $fc                                         ; $5399: $fc
	ld   d, c                                        ; $539a: $51
	ld   de, $1111                                   ; $539b: $11 $11 $11
	jr   @+$01                                       ; $539e: $18 $ff

	rst  $38                                         ; $53a0: $ff
	rst  $38                                         ; $53a1: $ff
	rst  $38                                         ; $53a2: $ff
	ei                                               ; $53a3: $fb
	ld   sp, $1111                                   ; $53a4: $31 $11 $11
	ld   de, $ff17                                   ; $53a7: $11 $17 $ff
	rst  $38                                         ; $53aa: $ff
	rst  $38                                         ; $53ab: $ff
	rst  $38                                         ; $53ac: $ff
	ei                                               ; $53ad: $fb
	ld   de, $1111                                   ; $53ae: $11 $11 $11
	ld   de, $ff17                                   ; $53b1: $11 $17 $ff
	rst  $38                                         ; $53b4: $ff
	rst  $38                                         ; $53b5: $ff
	rst  $38                                         ; $53b6: $ff
	ei                                               ; $53b7: $fb
	ld   de, $1111                                   ; $53b8: $11 $11 $11
	ld   de, $ff18                                   ; $53bb: $11 $18 $ff
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	rst  $38                                         ; $53c0: $ff
	ld   a, [$1111]                                  ; $53c1: $fa $11 $11
	ld   de, $1911                                   ; $53c4: $11 $11 $19
	rst  $38                                         ; $53c7: $ff
	rst  $38                                         ; $53c8: $ff
	rst  $38                                         ; $53c9: $ff
	rst  $38                                         ; $53ca: $ff
	ld   sp, hl                                      ; $53cb: $f9
	ld   de, $1111                                   ; $53cc: $11 $11 $11
	ld   de, $ff29                                   ; $53cf: $11 $29 $ff
	rst  $38                                         ; $53d2: $ff
	rst  $38                                         ; $53d3: $ff
	rst  $38                                         ; $53d4: $ff
	rst  $30                                         ; $53d5: $f7
	ld   de, $1111                                   ; $53d6: $11 $11 $11
	ld   de, $ff2a                                   ; $53d9: $11 $2a $ff
	rst  $38                                         ; $53dc: $ff
	rst  $38                                         ; $53dd: $ff
	rst  $38                                         ; $53de: $ff
	rst  $20                                         ; $53df: $e7
	ld   de, $1111                                   ; $53e0: $11 $11 $11
	ld   de, $ff3a                                   ; $53e3: $11 $3a $ff
	rst  $38                                         ; $53e6: $ff
	rst  $38                                         ; $53e7: $ff
	rst  $38                                         ; $53e8: $ff
	rst  $10                                         ; $53e9: $d7
	ld   de, $1111                                   ; $53ea: $11 $11 $11
	ld   de, $ff4a                                   ; $53ed: $11 $4a $ff
	rst  $38                                         ; $53f0: $ff
	rst  $38                                         ; $53f1: $ff
	rst  $38                                         ; $53f2: $ff
	and  $11                                         ; $53f3: $e6 $11
	ld   de, $1111                                   ; $53f5: $11 $11 $11
	ld   c, d                                        ; $53f8: $4a
	rst  $38                                         ; $53f9: $ff
	rst  $38                                         ; $53fa: $ff
	rst  $38                                         ; $53fb: $ff
	rst  $38                                         ; $53fc: $ff
	rst  ToBoot                                         ; $53fd: $c7
	ld   de, $1111                                   ; $53fe: $11 $11 $11
	ld   de, $ff59                                   ; $5401: $11 $59 $ff
	rst  $38                                         ; $5404: $ff
	rst  $38                                         ; $5405: $ff
	rst  $38                                         ; $5406: $ff
	rst  ToBoot                                         ; $5407: $c7
	ld   de, $1111                                   ; $5408: $11 $11 $11
	ld   de, $ff49                                   ; $540b: $11 $49 $ff
	rst  $38                                         ; $540e: $ff
	rst  $38                                         ; $540f: $ff
	rst  $38                                         ; $5410: $ff
	add  $11                                         ; $5411: $c6 $11
	ld   de, $1111                                   ; $5413: $11 $11 $11
	ld   e, d                                        ; $5416: $5a
	rst  $38                                         ; $5417: $ff
	rst  $38                                         ; $5418: $ff
	rst  $38                                         ; $5419: $ff
	rst  $38                                         ; $541a: $ff
	or   a                                           ; $541b: $b7
	ld   de, $1111                                   ; $541c: $11 $11 $11
	ld   de, $ff5a                                   ; $541f: $11 $5a $ff
	rst  $38                                         ; $5422: $ff
	rst  $38                                         ; $5423: $ff
	rst  $38                                         ; $5424: $ff
	rst  ToBoot                                         ; $5425: $c7
	ld   de, $1111                                   ; $5426: $11 $11 $11
	ld   de, $ff5a                                   ; $5429: $11 $5a $ff
	rst  $38                                         ; $542c: $ff
	rst  $38                                         ; $542d: $ff
	rst  $38                                         ; $542e: $ff
	push bc                                          ; $542f: $c5
	ld   de, $1111                                   ; $5430: $11 $11 $11
	ld   de, $ff4a                                   ; $5433: $11 $4a $ff
	rst  $38                                         ; $5436: $ff
	rst  $38                                         ; $5437: $ff
	rst  $38                                         ; $5438: $ff
	or   [hl]                                        ; $5439: $b6
	ld   de, $1111                                   ; $543a: $11 $11 $11
	ld   de, $ff59                                   ; $543d: $11 $59 $ff
	rst  $38                                         ; $5440: $ff
	rst  $38                                         ; $5441: $ff
	rst  $38                                         ; $5442: $ff
	add  $11                                         ; $5443: $c6 $11
	ld   de, $1111                                   ; $5445: $11 $11 $11
	ld   e, c                                        ; $5448: $59
	rst  $38                                         ; $5449: $ff
	rst  $38                                         ; $544a: $ff
	rst  $38                                         ; $544b: $ff
	rst  $38                                         ; $544c: $ff
	or   [hl]                                        ; $544d: $b6
	ld   de, $1111                                   ; $544e: $11 $11 $11
	ld   de, $ff59                                   ; $5451: $11 $59 $ff
	rst  $38                                         ; $5454: $ff
	rst  $38                                         ; $5455: $ff
	rst  $38                                         ; $5456: $ff
	or   [hl]                                        ; $5457: $b6
	ld   de, $1111                                   ; $5458: $11 $11 $11
	ld   de, $ff49                                   ; $545b: $11 $49 $ff
	rst  $38                                         ; $545e: $ff
	rst  $38                                         ; $545f: $ff
	rst  $38                                         ; $5460: $ff
	add  $11                                         ; $5461: $c6 $11
	ld   de, $1111                                   ; $5463: $11 $11 $11
	ld   c, c                                        ; $5466: $49
	rst  $38                                         ; $5467: $ff
	rst  $38                                         ; $5468: $ff
	rst  $38                                         ; $5469: $ff
	rst  $38                                         ; $546a: $ff
	push bc                                          ; $546b: $c5
	ld   de, $1111                                   ; $546c: $11 $11 $11
	ld   de, $ff49                                   ; $546f: $11 $49 $ff
	rst  $38                                         ; $5472: $ff
	rst  $38                                         ; $5473: $ff
	rst  $38                                         ; $5474: $ff
	or   l                                           ; $5475: $b5
	ld   de, $1111                                   ; $5476: $11 $11 $11
	ld   [de], a                                     ; $5479: $12
	ld   e, c                                        ; $547a: $59
	rst  $38                                         ; $547b: $ff
	rst  $38                                         ; $547c: $ff
	rst  $38                                         ; $547d: $ff
	cp   $b6                                         ; $547e: $fe $b6
	ld   de, $1111                                   ; $5480: $11 $11 $11
	ld   de, $ff4a                                   ; $5483: $11 $4a $ff
	rst  $38                                         ; $5486: $ff
	rst  $38                                         ; $5487: $ff
	rst  $38                                         ; $5488: $ff
	or   [hl]                                        ; $5489: $b6
	ld   de, $1111                                   ; $548a: $11 $11 $11
	ld   [de], a                                     ; $548d: $12
	ld   e, b                                        ; $548e: $58
	rst  $38                                         ; $548f: $ff
	rst  $38                                         ; $5490: $ff
	rst  $38                                         ; $5491: $ff
	cp   $a7                                         ; $5492: $fe $a7
	ld   hl, $1111                                   ; $5494: $21 $11 $11
	ld   [de], a                                     ; $5497: $12
	ld   e, b                                        ; $5498: $58
	rst  $38                                         ; $5499: $ff
	rst  $38                                         ; $549a: $ff
	rst  $38                                         ; $549b: $ff
	db   $fd                                         ; $549c: $fd
	xor  b                                           ; $549d: $a8
	ld   sp, $1111                                   ; $549e: $31 $11 $11
	ld   [de], a                                     ; $54a1: $12
	ld   d, a                                        ; $54a2: $57
	rst  $28                                         ; $54a3: $ef
	rst  $38                                         ; $54a4: $ff
	rst  $38                                         ; $54a5: $ff
	cp   $a7                                         ; $54a6: $fe $a7
	ld   b, c                                        ; $54a8: $41
	ld   de, $1111                                   ; $54a9: $11 $11 $11
	ld   l, b                                        ; $54ac: $68
	cp   a                                           ; $54ad: $bf
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	cp   $b8                                         ; $54b0: $fe $b8
	ld   b, d                                        ; $54b2: $42
	ld   de, $1111                                   ; $54b3: $11 $11 $11
	ld   h, a                                        ; $54b6: $67
	cp   a                                           ; $54b7: $bf

Call_0ef_54b8:
	rst  $38                                         ; $54b8: $ff
	rst  $38                                         ; $54b9: $ff
	cp   $b8                                         ; $54ba: $fe $b8
	ld   d, e                                        ; $54bc: $53
	ld   de, $1111                                   ; $54bd: $11 $11 $11
	ld   e, b                                        ; $54c0: $58
	xor  l                                           ; $54c1: $ad
	rst  $38                                         ; $54c2: $ff
	rst  $38                                         ; $54c3: $ff
	cp   $b8                                         ; $54c4: $fe $b8
	ld   h, h                                        ; $54c6: $64
	ld   de, $1111                                   ; $54c7: $11 $11 $11
	ld   c, b                                        ; $54ca: $48
	xor  h                                           ; $54cb: $ac
	rst  $38                                         ; $54cc: $ff
	rst  $38                                         ; $54cd: $ff
	db   $ed                                         ; $54ce: $ed
	ret  z                                           ; $54cf: $c8

	ld   h, h                                        ; $54d0: $64
	ld   sp, $2211                                   ; $54d1: $31 $11 $22
	ld   b, a                                        ; $54d4: $47
	sbc  e                                           ; $54d5: $9b
	rst  JumpTable                                         ; $54d6: $df
	cp   $dc                                         ; $54d7: $fe $dc
	xor  d                                           ; $54d9: $aa
	ld   [hl], l                                     ; $54da: $75
	ld   b, d                                        ; $54db: $42
	ld   [de], a                                     ; $54dc: $12
	inc  sp                                          ; $54dd: $33
	ld   d, a                                        ; $54de: $57
	sbc  e                                           ; $54df: $9b
	cp   l                                           ; $54e0: $bd
	db   $ec                                         ; $54e1: $ec
	cp   e                                           ; $54e2: $bb
	sbc  c                                           ; $54e3: $99
	halt                                             ; $54e4: $76
	ld   d, l                                        ; $54e5: $55
	ld   b, h                                        ; $54e6: $44
	ld   d, l                                        ; $54e7: $55
	ld   h, a                                        ; $54e8: $67
	adc  b                                           ; $54e9: $88
	xor  d                                           ; $54ea: $aa
	cp   d                                           ; $54eb: $ba
	sbc  d                                           ; $54ec: $9a
	sbc  c                                           ; $54ed: $99
	sbc  c                                           ; $54ee: $99
	add  a                                           ; $54ef: $87
	ld   [hl], a                                     ; $54f0: $77
	ld   [hl], a                                     ; $54f1: $77
	ld   [hl], a                                     ; $54f2: $77
	adc  b                                           ; $54f3: $88
	sbc  b                                           ; $54f4: $98
	sbc  c                                           ; $54f5: $99
	sbc  b                                           ; $54f6: $98
	sbc  b                                           ; $54f7: $98
	adc  b                                           ; $54f8: $88
	adc  b                                           ; $54f9: $88
	ld   [hl], a                                     ; $54fa: $77
	ld   [hl], a                                     ; $54fb: $77
	ld   [hl], a                                     ; $54fc: $77
	adc  b                                           ; $54fd: $88
	sbc  b                                           ; $54fe: $98
	adc  c                                           ; $54ff: $89
	adc  c                                           ; $5500: $89
	adc  b                                           ; $5501: $88
	adc  b                                           ; $5502: $88
	add  a                                           ; $5503: $87
	ld   [hl], a                                     ; $5504: $77
	ld   [hl], a                                     ; $5505: $77
	ld   [hl], a                                     ; $5506: $77
	adc  b                                           ; $5507: $88
	sbc  b                                           ; $5508: $98
	adc  c                                           ; $5509: $89
	adc  b                                           ; $550a: $88
	sbc  b                                           ; $550b: $98
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	add  a                                           ; $550e: $87
	ld   [hl], a                                     ; $550f: $77
	ld   [hl], a                                     ; $5510: $77
	adc  b                                           ; $5511: $88
	adc  b                                           ; $5512: $88
	sbc  c                                           ; $5513: $99
	sbc  c                                           ; $5514: $99
	sbc  b                                           ; $5515: $98
	adc  b                                           ; $5516: $88
	adc  b                                           ; $5517: $88
	adc  b                                           ; $5518: $88
	adc  b                                           ; $5519: $88
	ld   a, b                                        ; $551a: $78
	adc  b                                           ; $551b: $88
	adc  b                                           ; $551c: $88
	adc  b                                           ; $551d: $88
	adc  b                                           ; $551e: $88
	adc  b                                           ; $551f: $88
	adc  b                                           ; $5520: $88
	adc  b                                           ; $5521: $88
	adc  b                                           ; $5522: $88
	adc  b                                           ; $5523: $88
	adc  b                                           ; $5524: $88
	adc  b                                           ; $5525: $88
	adc  b                                           ; $5526: $88
	adc  b                                           ; $5527: $88
	adc  b                                           ; $5528: $88
	adc  b                                           ; $5529: $88
	adc  b                                           ; $552a: $88
	adc  b                                           ; $552b: $88
	adc  b                                           ; $552c: $88
	adc  b                                           ; $552d: $88
	adc  b                                           ; $552e: $88
	adc  b                                           ; $552f: $88
	adc  b                                           ; $5530: $88
	adc  b                                           ; $5531: $88
	adc  b                                           ; $5532: $88
	adc  b                                           ; $5533: $88
	adc  b                                           ; $5534: $88
	adc  b                                           ; $5535: $88
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	adc  b                                           ; $5538: $88
	adc  b                                           ; $5539: $88
	adc  b                                           ; $553a: $88
	adc  b                                           ; $553b: $88
	adc  b                                           ; $553c: $88
	adc  b                                           ; $553d: $88
	adc  b                                           ; $553e: $88
	adc  b                                           ; $553f: $88
	adc  b                                           ; $5540: $88
	adc  b                                           ; $5541: $88
	adc  b                                           ; $5542: $88
	adc  b                                           ; $5543: $88
	adc  b                                           ; $5544: $88
	adc  b                                           ; $5545: $88
	adc  b                                           ; $5546: $88
	adc  b                                           ; $5547: $88
	adc  b                                           ; $5548: $88
	adc  b                                           ; $5549: $88
	adc  b                                           ; $554a: $88
	adc  b                                           ; $554b: $88
	adc  b                                           ; $554c: $88
	adc  b                                           ; $554d: $88
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	adc  b                                           ; $5550: $88
	adc  b                                           ; $5551: $88
	adc  b                                           ; $5552: $88
	adc  b                                           ; $5553: $88
	adc  b                                           ; $5554: $88
	adc  b                                           ; $5555: $88
	adc  b                                           ; $5556: $88
	adc  b                                           ; $5557: $88
	adc  b                                           ; $5558: $88
	adc  b                                           ; $5559: $88
	adc  b                                           ; $555a: $88
	adc  b                                           ; $555b: $88
	adc  b                                           ; $555c: $88
	adc  b                                           ; $555d: $88
	adc  b                                           ; $555e: $88
	adc  b                                           ; $555f: $88
	adc  b                                           ; $5560: $88
	adc  b                                           ; $5561: $88
	adc  b                                           ; $5562: $88
	adc  b                                           ; $5563: $88
	adc  b                                           ; $5564: $88
	adc  b                                           ; $5565: $88
	adc  b                                           ; $5566: $88
	adc  b                                           ; $5567: $88
	adc  b                                           ; $5568: $88
	adc  b                                           ; $5569: $88
	adc  b                                           ; $556a: $88
	adc  b                                           ; $556b: $88
	adc  b                                           ; $556c: $88
	adc  b                                           ; $556d: $88
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	adc  b                                           ; $5570: $88
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	adc  b                                           ; $5573: $88
	adc  b                                           ; $5574: $88
	adc  b                                           ; $5575: $88
	adc  b                                           ; $5576: $88
	adc  b                                           ; $5577: $88
	adc  b                                           ; $5578: $88
	adc  b                                           ; $5579: $88
	adc  b                                           ; $557a: $88
	adc  b                                           ; $557b: $88
	adc  b                                           ; $557c: $88
	adc  b                                           ; $557d: $88
	adc  b                                           ; $557e: $88
	adc  b                                           ; $557f: $88
	adc  b                                           ; $5580: $88
	adc  b                                           ; $5581: $88
	adc  b                                           ; $5582: $88
	adc  b                                           ; $5583: $88
	adc  b                                           ; $5584: $88
	adc  b                                           ; $5585: $88
	adc  b                                           ; $5586: $88
	adc  b                                           ; $5587: $88
	adc  b                                           ; $5588: $88
	adc  b                                           ; $5589: $88
	adc  b                                           ; $558a: $88
	adc  b                                           ; $558b: $88
	adc  b                                           ; $558c: $88
	adc  b                                           ; $558d: $88
	adc  b                                           ; $558e: $88
	adc  b                                           ; $558f: $88
	adc  b                                           ; $5590: $88
	adc  b                                           ; $5591: $88
	adc  b                                           ; $5592: $88
	adc  b                                           ; $5593: $88
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88
	adc  b                                           ; $5596: $88
	adc  b                                           ; $5597: $88
	adc  b                                           ; $5598: $88
	adc  b                                           ; $5599: $88
	adc  b                                           ; $559a: $88
	adc  b                                           ; $559b: $88
	adc  b                                           ; $559c: $88
	adc  b                                           ; $559d: $88
	adc  b                                           ; $559e: $88
	adc  b                                           ; $559f: $88
	adc  b                                           ; $55a0: $88
	adc  b                                           ; $55a1: $88
	adc  b                                           ; $55a2: $88
	adc  b                                           ; $55a3: $88
	adc  b                                           ; $55a4: $88
	adc  b                                           ; $55a5: $88
	adc  b                                           ; $55a6: $88
	adc  b                                           ; $55a7: $88
	adc  b                                           ; $55a8: $88
	adc  b                                           ; $55a9: $88
	adc  b                                           ; $55aa: $88
	adc  b                                           ; $55ab: $88
	adc  b                                           ; $55ac: $88
	adc  b                                           ; $55ad: $88
	adc  b                                           ; $55ae: $88
	adc  b                                           ; $55af: $88
	adc  b                                           ; $55b0: $88
	adc  b                                           ; $55b1: $88
	adc  b                                           ; $55b2: $88
	adc  b                                           ; $55b3: $88
	adc  b                                           ; $55b4: $88
	adc  b                                           ; $55b5: $88
	adc  b                                           ; $55b6: $88
	adc  b                                           ; $55b7: $88
	adc  b                                           ; $55b8: $88
	adc  b                                           ; $55b9: $88
	adc  b                                           ; $55ba: $88
	adc  b                                           ; $55bb: $88
	adc  b                                           ; $55bc: $88
	adc  b                                           ; $55bd: $88
	adc  b                                           ; $55be: $88
	adc  b                                           ; $55bf: $88
	adc  b                                           ; $55c0: $88
	adc  b                                           ; $55c1: $88
	adc  b                                           ; $55c2: $88
	adc  b                                           ; $55c3: $88
	adc  b                                           ; $55c4: $88
	sbc  c                                           ; $55c5: $99
	sbc  c                                           ; $55c6: $99
	adc  b                                           ; $55c7: $88
	adc  b                                           ; $55c8: $88
	ld   [hl], a                                     ; $55c9: $77
	ld   [hl], a                                     ; $55ca: $77
	adc  b                                           ; $55cb: $88
	adc  b                                           ; $55cc: $88
	adc  b                                           ; $55cd: $88
	adc  b                                           ; $55ce: $88
	sbc  c                                           ; $55cf: $99
	sbc  c                                           ; $55d0: $99
	sbc  b                                           ; $55d1: $98
	adc  b                                           ; $55d2: $88
	ld   [hl], a                                     ; $55d3: $77
	ld   [hl], a                                     ; $55d4: $77
	ld   a, b                                        ; $55d5: $78
	adc  b                                           ; $55d6: $88
	adc  b                                           ; $55d7: $88
	adc  b                                           ; $55d8: $88
	sbc  c                                           ; $55d9: $99
	sbc  c                                           ; $55da: $99
	sbc  b                                           ; $55db: $98
	adc  b                                           ; $55dc: $88
	ld   [hl], a                                     ; $55dd: $77
	ld   [hl], a                                     ; $55de: $77
	ld   [hl], a                                     ; $55df: $77
	adc  b                                           ; $55e0: $88
	adc  b                                           ; $55e1: $88
	adc  b                                           ; $55e2: $88
	adc  c                                           ; $55e3: $89
	sbc  c                                           ; $55e4: $99
	sbc  c                                           ; $55e5: $99
	add  a                                           ; $55e6: $87
	ld   [hl], a                                     ; $55e7: $77
	ld   [hl], a                                     ; $55e8: $77
	ld   [hl], a                                     ; $55e9: $77
	adc  b                                           ; $55ea: $88
	adc  b                                           ; $55eb: $88
	sbc  c                                           ; $55ec: $99
	adc  c                                           ; $55ed: $89
	sbc  c                                           ; $55ee: $99
	adc  b                                           ; $55ef: $88
	add  a                                           ; $55f0: $87
	ld   [hl], a                                     ; $55f1: $77
	ld   [hl], a                                     ; $55f2: $77
	ld   [hl], a                                     ; $55f3: $77
	adc  b                                           ; $55f4: $88
	adc  c                                           ; $55f5: $89
	adc  b                                           ; $55f6: $88
	adc  b                                           ; $55f7: $88
	sbc  c                                           ; $55f8: $99
	sbc  b                                           ; $55f9: $98
	sub  a                                           ; $55fa: $97
	ld   [hl], a                                     ; $55fb: $77
	ld   [hl], a                                     ; $55fc: $77
	ld   [hl], a                                     ; $55fd: $77
	ld   a, b                                        ; $55fe: $78
	adc  c                                           ; $55ff: $89
	adc  c                                           ; $5600: $89
	sbc  b                                           ; $5601: $98
	adc  c                                           ; $5602: $89
	sbc  b                                           ; $5603: $98
	adc  b                                           ; $5604: $88
	ld   [hl], a                                     ; $5605: $77
	ld   [hl], a                                     ; $5606: $77
	ld   [hl], a                                     ; $5607: $77
	adc  b                                           ; $5608: $88
	sbc  b                                           ; $5609: $98
	sbc  c                                           ; $560a: $99
	sbc  b                                           ; $560b: $98
	adc  b                                           ; $560c: $88
	sbc  b                                           ; $560d: $98
	adc  b                                           ; $560e: $88
	halt                                             ; $560f: $76
	ld   h, a                                        ; $5610: $67
	ld   [hl], a                                     ; $5611: $77
	adc  b                                           ; $5612: $88
	sbc  c                                           ; $5613: $99
	xor  d                                           ; $5614: $aa
	sbc  c                                           ; $5615: $99
	adc  b                                           ; $5616: $88
	adc  c                                           ; $5617: $89
	adc  b                                           ; $5618: $88
	halt                                             ; $5619: $76
	ld   h, [hl]                                     ; $561a: $66
	ld   [hl], a                                     ; $561b: $77
	adc  b                                           ; $561c: $88
	adc  d                                           ; $561d: $8a
	sbc  d                                           ; $561e: $9a
	xor  b                                           ; $561f: $a8
	ld   [hl], a                                     ; $5620: $77
	adc  b                                           ; $5621: $88
	sub  a                                           ; $5622: $97
	ld   h, [hl]                                     ; $5623: $66
	ld   h, [hl]                                     ; $5624: $66
	ld   [hl], a                                     ; $5625: $77
	adc  c                                           ; $5626: $89
	sbc  d                                           ; $5627: $9a
	cp   d                                           ; $5628: $ba
	cp   c                                           ; $5629: $b9
	ld   [hl], a                                     ; $562a: $77
	ld   [hl], a                                     ; $562b: $77
	add  a                                           ; $562c: $87
	ld   h, l                                        ; $562d: $65
	ld   d, [hl]                                     ; $562e: $56
	ld   h, a                                        ; $562f: $67
	adc  c                                           ; $5630: $89
	sbc  e                                           ; $5631: $9b
	cp   h                                           ; $5632: $bc
	cp   c                                           ; $5633: $b9
	ld   [hl], a                                     ; $5634: $77
	ld   [hl], a                                     ; $5635: $77
	ld   [hl], a                                     ; $5636: $77
	ld   d, h                                        ; $5637: $54
	ld   d, [hl]                                     ; $5638: $56
	ld   h, a                                        ; $5639: $67
	adc  c                                           ; $563a: $89
	sbc  h                                           ; $563b: $9c
	call z, Call_0ef_76c9                            ; $563c: $cc $c9 $76
	ld   h, a                                        ; $563f: $67
	halt                                             ; $5640: $76
	ld   b, h                                        ; $5641: $44
	ld   b, l                                        ; $5642: $45
	ld   a, b                                        ; $5643: $78
	sbc  c                                           ; $5644: $99
	xor  h                                           ; $5645: $ac
	sbc  $c9                                         ; $5646: $de $c9
	halt                                             ; $5648: $76
	ld   d, [hl]                                     ; $5649: $56
	ld   h, l                                        ; $564a: $65
	inc  sp                                          ; $564b: $33
	ld   b, l                                        ; $564c: $45
	ld   a, c                                        ; $564d: $79
	xor  e                                           ; $564e: $ab
	sbc  $fe                                         ; $564f: $de $fe
	ret                                              ; $5651: $c9


	ld   h, l                                        ; $5652: $65
	ld   b, h                                        ; $5653: $44
	ld   b, e                                        ; $5654: $43
	ld   [hl+], a                                    ; $5655: $22
	dec  [hl]                                        ; $5656: $35
	sbc  e                                           ; $5657: $9b
	db   $dd                                         ; $5658: $dd
	rst  $28                                         ; $5659: $ef
	rst  $38                                         ; $565a: $ff
	rst  ToBoot                                         ; $565b: $c7
	ld   b, h                                        ; $565c: $44
	inc  [hl]                                        ; $565d: $34
	ld   sp, $3711                                   ; $565e: $31 $11 $37
	sbc  e                                           ; $5661: $9b
	rst  $28                                         ; $5662: $ef
	rst  $38                                         ; $5663: $ff
	rst  $38                                         ; $5664: $ff
	add  $42                                         ; $5665: $c6 $42
	ld   [de], a                                     ; $5667: $12
	ld   de, $3711                                   ; $5668: $11 $11 $37
	cp   [hl]                                        ; $566b: $be
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	rst  $38                                         ; $566e: $ff
	or   h                                           ; $566f: $b4
	ld   hl, $1111                                   ; $5670: $21 $11 $11
	ld   de, $df49                                   ; $5673: $11 $49 $df
	rst  $38                                         ; $5676: $ff
	rst  $38                                         ; $5677: $ff
	cp   $72                                         ; $5678: $fe $72
	ld   de, $1111                                   ; $567a: $11 $11 $11
	ld   de, $ff5a                                   ; $567d: $11 $5a $ff
	rst  $38                                         ; $5680: $ff
	rst  $38                                         ; $5681: $ff
	db   $fd                                         ; $5682: $fd
	ld   d, c                                        ; $5683: $51
	ld   de, $1111                                   ; $5684: $11 $11 $11
	ld   de, $ff7e                                   ; $5687: $11 $7e $ff
	rst  $38                                         ; $568a: $ff
	rst  $38                                         ; $568b: $ff
	ei                                               ; $568c: $fb
	ld   sp, $1111                                   ; $568d: $31 $11 $11
	ld   de, $bf11                                   ; $5690: $11 $11 $bf
	rst  $38                                         ; $5693: $ff
	rst  $38                                         ; $5694: $ff
	rst  $38                                         ; $5695: $ff
	ld   sp, hl                                      ; $5696: $f9
	ld   de, $1111                                   ; $5697: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $569a: $11 $14 $ff
	rst  $38                                         ; $569d: $ff
	rst  $38                                         ; $569e: $ff
	rst  $38                                         ; $569f: $ff
	or   $11                                         ; $56a0: $f6 $11
	ld   de, $1111                                   ; $56a2: $11 $11 $11
	add  hl, de                                      ; $56a5: $19
	rst  $38                                         ; $56a6: $ff
	rst  $38                                         ; $56a7: $ff
	rst  $38                                         ; $56a8: $ff
	rst  $38                                         ; $56a9: $ff
	jp   $1111                                       ; $56aa: $c3 $11 $11


	ld   de, $1e11                                   ; $56ad: $11 $11 $1e
	rst  $38                                         ; $56b0: $ff
	rst  $38                                         ; $56b1: $ff
	rst  $38                                         ; $56b2: $ff
	rst  $38                                         ; $56b3: $ff
	sub  c                                           ; $56b4: $91
	ld   de, $1111                                   ; $56b5: $11 $11 $11
	ld   de, $ff7f                                   ; $56b8: $11 $7f $ff
	rst  $38                                         ; $56bb: $ff
	rst  $38                                         ; $56bc: $ff
	ei                                               ; $56bd: $fb
	ld   sp, $1111                                   ; $56be: $31 $11 $11
	ld   de, rAUD1LOW                                   ; $56c1: $11 $13 $ff
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	rst  $38                                         ; $56c6: $ff
	and  $11                                         ; $56c7: $e6 $11
	ld   de, $1111                                   ; $56c9: $11 $11 $11
	dec  e                                           ; $56cc: $1d
	rst  $38                                         ; $56cd: $ff
	rst  $38                                         ; $56ce: $ff
	rst  $38                                         ; $56cf: $ff
	rst  $38                                         ; $56d0: $ff
	sub  c                                           ; $56d1: $91
	ld   de, $1111                                   ; $56d2: $11 $11 $11
	ld   de, $ff9f                                   ; $56d5: $11 $9f $ff
	rst  $38                                         ; $56d8: $ff
	rst  $38                                         ; $56d9: $ff
	ld   a, [$1111]                                  ; $56da: $fa $11 $11
	ld   de, $1611                                   ; $56dd: $11 $11 $16
	rst  $38                                         ; $56e0: $ff
	rst  $38                                         ; $56e1: $ff
	rst  $38                                         ; $56e2: $ff
	rst  $38                                         ; $56e3: $ff
	db   $d3                                         ; $56e4: $d3
	ld   de, $1111                                   ; $56e5: $11 $11 $11
	ld   de, $ff4f                                   ; $56e8: $11 $4f $ff
	rst  $38                                         ; $56eb: $ff
	rst  $38                                         ; $56ec: $ff
	cp   $31                                         ; $56ed: $fe $31
	ld   de, $1111                                   ; $56ef: $11 $11 $11
	inc  de                                          ; $56f2: $13
	rst  $38                                         ; $56f3: $ff
	rst  $38                                         ; $56f4: $ff
	rst  $38                                         ; $56f5: $ff
	rst  $38                                         ; $56f6: $ff
	or   $11                                         ; $56f7: $f6 $11
	ld   de, $1111                                   ; $56f9: $11 $11 $11
	ccf                                              ; $56fc: $3f
	rst  $38                                         ; $56fd: $ff
	rst  $38                                         ; $56fe: $ff
	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	ld   d, c                                        ; $5701: $51
	ld   de, $1111                                   ; $5702: $11 $11 $11
	inc  d                                           ; $5705: $14
	rst  $38                                         ; $5706: $ff
	rst  $38                                         ; $5707: $ff
	rst  $38                                         ; $5708: $ff
	rst  $38                                         ; $5709: $ff
	or   $11                                         ; $570a: $f6 $11
	ld   de, $1111                                   ; $570c: $11 $11 $11
	ld   e, a                                        ; $570f: $5f
	rst  $38                                         ; $5710: $ff
	rst  $38                                         ; $5711: $ff
	rst  $38                                         ; $5712: $ff
	db   $fd                                         ; $5713: $fd
	ld   d, c                                        ; $5714: $51
	ld   de, $1111                                   ; $5715: $11 $11 $11
	ld   d, $ff                                      ; $5718: $16 $ff
	rst  $38                                         ; $571a: $ff
	rst  $38                                         ; $571b: $ff
	rst  $38                                         ; $571c: $ff
	push bc                                          ; $571d: $c5
	ld   de, $1111                                   ; $571e: $11 $11 $11
	ld   de, $ff9f                                   ; $5721: $11 $9f $ff
	rst  $38                                         ; $5724: $ff
	rst  $38                                         ; $5725: $ff
	ei                                               ; $5726: $fb
	ld   b, c                                        ; $5727: $41
	ld   de, $1111                                   ; $5728: $11 $11 $11
	ld   a, [hl-]                                    ; $572b: $3a
	rst  $38                                         ; $572c: $ff
	rst  $38                                         ; $572d: $ff
	rst  $38                                         ; $572e: $ff
	rst  $38                                         ; $572f: $ff
	or   e                                           ; $5730: $b3
	ld   de, $1111                                   ; $5731: $11 $11 $11
	inc  d                                           ; $5734: $14
	rst  JumpTable                                         ; $5735: $df
	rst  $38                                         ; $5736: $ff
	rst  $38                                         ; $5737: $ff
	rst  $38                                         ; $5738: $ff
	ld   a, [$1121]                                  ; $5739: $fa $21 $11
	ld   de, $5f11                                   ; $573c: $11 $11 $5f
	rst  $38                                         ; $573f: $ff
	rst  $38                                         ; $5740: $ff
	rst  $38                                         ; $5741: $ff
	rst  $38                                         ; $5742: $ff
	sub  c                                           ; $5743: $91
	ld   de, $1111                                   ; $5744: $11 $11 $11
	rla                                              ; $5747: $17
	rst  $38                                         ; $5748: $ff
	rst  $38                                         ; $5749: $ff
	rst  $38                                         ; $574a: $ff
	rst  $38                                         ; $574b: $ff
	ld   sp, hl                                      ; $574c: $f9
	ld   de, $1111                                   ; $574d: $11 $11 $11
	ld   de, $ff9f                                   ; $5750: $11 $9f $ff
	rst  $38                                         ; $5753: $ff
	rst  $38                                         ; $5754: $ff
	rst  $38                                         ; $5755: $ff
	ld   [hl], c                                     ; $5756: $71
	ld   de, $1111                                   ; $5757: $11 $11 $11
	ld   a, [hl+]                                    ; $575a: $2a
	rst  $38                                         ; $575b: $ff
	rst  $38                                         ; $575c: $ff
	rst  $38                                         ; $575d: $ff
	rst  $38                                         ; $575e: $ff
	rst  $30                                         ; $575f: $f7
	ld   de, $1111                                   ; $5760: $11 $11 $11
	inc  de                                          ; $5763: $13
	cp   a                                           ; $5764: $bf
	rst  $38                                         ; $5765: $ff
	rst  $38                                         ; $5766: $ff
	rst  $38                                         ; $5767: $ff
	rst  $38                                         ; $5768: $ff
	ld   h, c                                        ; $5769: $61
	ld   de, $1111                                   ; $576a: $11 $11 $11
	ld   e, d                                        ; $576d: $5a
	rst  $38                                         ; $576e: $ff
	rst  $38                                         ; $576f: $ff
	rst  $38                                         ; $5770: $ff
	rst  $38                                         ; $5771: $ff
	rst  $30                                         ; $5772: $f7
	ld   de, $1111                                   ; $5773: $11 $11 $11
	daa                                              ; $5776: $27
	cp   a                                           ; $5777: $bf
	rst  $38                                         ; $5778: $ff
	rst  $38                                         ; $5779: $ff
	rst  $38                                         ; $577a: $ff
	rst  $38                                         ; $577b: $ff
	sub  c                                           ; $577c: $91
	ld   de, $1311                                   ; $577d: $11 $11 $13
	ld   a, e                                        ; $5780: $7b
	rst  $38                                         ; $5781: $ff
	rst  $38                                         ; $5782: $ff
	rst  $38                                         ; $5783: $ff
	rst  $38                                         ; $5784: $ff
	ld   a, [$1131]                                  ; $5785: $fa $31 $11
	ld   de, $bf18                                   ; $5788: $11 $18 $bf
	rst  $38                                         ; $578b: $ff
	rst  $38                                         ; $578c: $ff
	rst  $38                                         ; $578d: $ff
	rst  $38                                         ; $578e: $ff
	add  $11                                         ; $578f: $c6 $11
	ld   de, $6c11                                   ; $5791: $11 $11 $6c
	rst  JumpTable                                         ; $5794: $df
	rst  $38                                         ; $5795: $ff
	rst  $38                                         ; $5796: $ff
	rst  $38                                         ; $5797: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5798: $cf
	and  [hl]                                        ; $5799: $a6
	ld   de, $1111                                   ; $579a: $11 $11 $11
	xor  h                                           ; $579d: $ac
	rst  $38                                         ; $579e: $ff
	rst  $38                                         ; $579f: $ff
	rst  $38                                         ; $57a0: $ff
	rst  $38                                         ; $57a1: $ff
	cp   a                                           ; $57a2: $bf
	sub  a                                           ; $57a3: $97
	ld   de, $1111                                   ; $57a4: $11 $11 $11
	adc  l                                           ; $57a7: $8d
	cp   $ff                                         ; $57a8: $fe $ff
	rst  $38                                         ; $57aa: $ff
	rst  $38                                         ; $57ab: $ff
	sbc  a                                           ; $57ac: $9f
	ret  z                                           ; $57ad: $c8

	ld   hl, $1111                                   ; $57ae: $21 $11 $11
	inc  e                                           ; $57b1: $1c
	db   $fd                                         ; $57b2: $fd
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	rst  $38                                         ; $57b5: $ff
	adc  $fa                                         ; $57b6: $ce $fa
	ld   [hl], c                                     ; $57b8: $71
	ld   de, $1511                                   ; $57b9: $11 $11 $15
	rst  $38                                         ; $57bc: $ff
	rst  JumpTable                                         ; $57bd: $df
	rst  $38                                         ; $57be: $ff
	rst  $38                                         ; $57bf: $ff
	ld   a, [$a4ff]                                  ; $57c0: $fa $ff $a4
	ld   de, $1111                                   ; $57c3: $11 $11 $11
	ld   l, a                                        ; $57c6: $6f
	cp   $ff                                         ; $57c7: $fe $ff
	rst  $38                                         ; $57c9: $ff
	db   $fc                                         ; $57ca: $fc
	sbc  l                                           ; $57cb: $9d
	ld   a, [$1151]                                  ; $57cc: $fa $51 $11
	ld   de, rAUD1ENV                                   ; $57cf: $11 $12 $ff
	rst  $38                                         ; $57d2: $ff
	rst  $38                                         ; $57d3: $ff
	rst  $38                                         ; $57d4: $ff
	or   l                                           ; $57d5: $b5
	sbc  a                                           ; $57d6: $9f
	cp   b                                           ; $57d7: $b8
	ld   de, $1111                                   ; $57d8: $11 $11 $11
	ld   e, $ff                                      ; $57db: $1e $ff
	rst  $38                                         ; $57dd: $ff
	rst  $38                                         ; $57de: $ff
	rst  $38                                         ; $57df: $ff
	ld   b, e                                        ; $57e0: $43
	db   $dd                                         ; $57e1: $dd
	call nz, $1112                                   ; $57e2: $c4 $12 $11
	ld   de, $ff1f                                   ; $57e5: $11 $1f $ff
	call z, $f9ff                                    ; $57e8: $cc $ff $f9
	inc  de                                          ; $57eb: $13
	rst  $38                                         ; $57ec: $ff
	db   $d3                                         ; $57ed: $d3
	ld   d, $31                                      ; $57ee: $16 $31
	ld   de, $ff1f                                   ; $57f0: $11 $1f $ff
	xor  b                                           ; $57f3: $a8
	rst  $38                                         ; $57f4: $ff
	ld   hl, sp+$21                                  ; $57f5: $f8 $21
	rst  $38                                         ; $57f7: $ff
	rst  $30                                         ; $57f8: $f7
	jr   jr_0ef_586c                                 ; $57f9: $18 $71

	ld   de, $fe1f                                   ; $57fb: $11 $1f $fe
	and  e                                           ; $57fe: $a3
	rst  $38                                         ; $57ff: $ff
	db   $fc                                         ; $5800: $fc
	ld   b, c                                        ; $5801: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5802: $cf
	db   $fd                                         ; $5803: $fd
	jr   @+$7a                                       ; $5804: $18 $78

	ld   de, rAUD1LOW                                   ; $5806: $11 $13 $ff
	pop  de                                          ; $5809: $d1
	xor  a                                           ; $580a: $af
	rst  $38                                         ; $580b: $ff
	sub  c                                           ; $580c: $91
	ld   c, a                                        ; $580d: $4f
	rst  $38                                         ; $580e: $ff
	inc  h                                           ; $580f: $24
	ld   l, e                                        ; $5810: $6b
	ld   de, rAUD1LEN                                   ; $5811: $11 $11 $ff
	or   $4c                                         ; $5814: $f6 $4c
	rst  $38                                         ; $5816: $ff
	ld   hl, sp+$1b                                  ; $5817: $f8 $1b
	rst  $38                                         ; $5819: $ff
	pop  hl                                          ; $581a: $e1
	ld   b, l                                        ; $581b: $45
	pop  af                                          ; $581c: $f1
	ld   de, $ff1f                                   ; $581d: $11 $1f $ff
	ld   d, l                                        ; $5820: $55
	rst  JumpTable                                         ; $5821: $df
	rst  $38                                         ; $5822: $ff
	ld   hl, $face                                   ; $5823: $21 $ce $fa
	inc  d                                           ; $5826: $14
	adc  a                                           ; $5827: $8f
	ld   de, rAUD1LEN                                   ; $5828: $11 $11 $ff
	add  $2d                                         ; $582b: $c6 $2d
	rst  $38                                         ; $582d: $ff
	pop  af                                          ; $582e: $f1
	ld   a, [de]                                     ; $582f: $1a
	rst  $28                                         ; $5830: $ef
	or   c                                           ; $5831: $b1
	ld   l, b                                        ; $5832: $68
	pop  af                                          ; $5833: $f1
	ld   de, $fc1f                                   ; $5834: $11 $1f $fc
	ld   [hl], c                                     ; $5837: $71
	sbc  a                                           ; $5838: $9f
	rst  $38                                         ; $5839: $ff
	ld   hl, $ff7d                                   ; $583a: $21 $7d $ff
	rla                                              ; $583d: $17
	xor  a                                           ; $583e: $af
	add  c                                           ; $583f: $81
	ld   de, $e77f                                   ; $5840: $11 $7f $e7
	ld   [de], a                                     ; $5843: $12
	rst  $38                                         ; $5844: $ff
	rst  $30                                         ; $5845: $f7
	inc  de                                          ; $5846: $13
	rst  JumpTable                                         ; $5847: $df
	pop  af                                          ; $5848: $f1
	ld   e, c                                        ; $5849: $59
	rst  $38                                         ; $584a: $ff
	ld   de, rAUD1LEN                                   ; $584b: $11 $11 $ff
	ld   h, l                                        ; $584e: $65
	rra                                              ; $584f: $1f
	rst  $38                                         ; $5850: $ff
	pop  af                                          ; $5851: $f1
	add  hl, de                                      ; $5852: $19
	rst  $28                                         ; $5853: $ef
	pop  hl                                          ; $5854: $e1
	adc  c                                           ; $5855: $89
	db   $fd                                         ; $5856: $fd
	ld   de, rAUD1LEN                                   ; $5857: $11 $11 $ff
	add  c                                           ; $585a: $81
	rra                                              ; $585b: $1f
	rst  $38                                         ; $585c: $ff
	or   c                                           ; $585d: $b1
	ld   a, [de]                                     ; $585e: $1a
	rst  $38                                         ; $585f: $ff
	ld   [hl], d                                     ; $5860: $72
	ld   a, h                                        ; $5861: $7c
	ld   a, [$1311]                                  ; $5862: $fa $11 $13
	rst  $38                                         ; $5865: $ff
	ld   d, c                                        ; $5866: $51
	rra                                              ; $5867: $1f
	rst  $38                                         ; $5868: $ff
	sub  c                                           ; $5869: $91
	dec  e                                           ; $586a: $1d
	rst  $38                                         ; $586b: $ff

jr_0ef_586c:
	ld   [hl], c                                     ; $586c: $71
	ld   a, [hl]                                     ; $586d: $7e
	rst  $38                                         ; $586e: $ff
	ld   de, rAUD1LEN                                   ; $586f: $11 $11 $ff
	ld   b, c                                        ; $5872: $41
	rra                                              ; $5873: $1f
	rst  $38                                         ; $5874: $ff
	pop  bc                                          ; $5875: $c1
	ld   a, [de]                                     ; $5876: $1a
	rst  $38                                         ; $5877: $ff
	or   c                                           ; $5878: $b1
	adc  c                                           ; $5879: $89
	rst  $38                                         ; $587a: $ff
	ld   [hl], c                                     ; $587b: $71
	ld   de, $d26f                                   ; $587c: $11 $6f $d2
	inc  de                                          ; $587f: $13
	rst  $38                                         ; $5880: $ff
	ld   sp, hl                                      ; $5881: $f9
	ld   de, $f3fc                                   ; $5882: $11 $fc $f3
	add  hl, de                                      ; $5885: $19
	rst  $28                                         ; $5886: $ef
	ld   hl, sp+$11                                  ; $5887: $f8 $11
	rla                                              ; $5889: $17
	cp   $11                                         ; $588a: $fe $11
	cpl                                              ; $588c: $2f
	rst  $38                                         ; $588d: $ff
	and  c                                           ; $588e: $a1
	rra                                              ; $588f: $1f
	rst  JumpTable                                         ; $5890: $df
	ld   sp, $ff6c                                   ; $5891: $31 $6c $ff
	or   c                                           ; $5894: $b1
	ld   de, $f15d                                   ; $5895: $11 $5d $f1
	ld   [de], a                                     ; $5898: $12
	adc  a                                           ; $5899: $8f
	rst  $38                                         ; $589a: $ff
	ld   h, c                                        ; $589b: $61
	rst  JumpTable                                         ; $589c: $df
	reti                                             ; $589d: $d9


	ld   de, $ff8f                                   ; $589e: $11 $8f $ff
	sub  c                                           ; $58a1: $91
	ld   de, $f16a                                   ; $58a2: $11 $6a $f1
	dec  h                                           ; $58a5: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58a6: $cf
	rst  $38                                         ; $58a7: $ff
	ld   h, h                                        ; $58a8: $64
	db   $fd                                         ; $58a9: $fd
	sub  h                                           ; $58aa: $94
	ld   de, $ff6f                                   ; $58ab: $11 $6f $ff
	rst  $30                                         ; $58ae: $f7
	ld   de, $2911                                   ; $58af: $11 $11 $29
	inc  [hl]                                        ; $58b2: $34
	ld   a, c                                        ; $58b3: $79
	rst  $38                                         ; $58b4: $ff
	cp   $79                                         ; $58b5: $fe $79
	add  l                                           ; $58b7: $85
	ld   d, c                                        ; $58b8: $51
	dec  d                                           ; $58b9: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ba: $cf
	rst  $38                                         ; $58bb: $ff
	ld   hl, sp+$11                                  ; $58bc: $f8 $11
	ld   de, $165b                                   ; $58be: $11 $5b $16
	ld   e, e                                        ; $58c1: $5b
	rst  $38                                         ; $58c2: $ff
	ld   sp, hl                                      ; $58c3: $f9
	ld   e, d                                        ; $58c4: $5a
	ld   h, a                                        ; $58c5: $67
	ld   sp, $ef13                                   ; $58c6: $31 $13 $ef
	rst  $38                                         ; $58c9: $ff
	cp   $71                                         ; $58ca: $fe $71
	ld   de, $8518                                   ; $58cc: $11 $18 $85
	add  l                                           ; $58cf: $85
	rst  $38                                         ; $58d0: $ff
	rst  $38                                         ; $58d1: $ff
	ld   [hl], h                                     ; $58d2: $74
	ld   h, h                                        ; $58d3: $64
	ld   [hl], c                                     ; $58d4: $71
	ld   de, $ff3f                                   ; $58d5: $11 $3f $ff
	rst  $38                                         ; $58d8: $ff
	db   $fd                                         ; $58d9: $fd
	ld   h, c                                        ; $58da: $61
	ld   de, $d615                                   ; $58db: $11 $15 $d6
	cp   d                                           ; $58de: $ba
	rst  $38                                         ; $58df: $ff
	rst  $38                                         ; $58e0: $ff
	ld   [hl], c                                     ; $58e1: $71
	ld   b, d                                        ; $58e2: $42
	ld   sp, $4f11                                   ; $58e3: $31 $11 $4f
	rst  $38                                         ; $58e6: $ff
	rst  $38                                         ; $58e7: $ff
	rst  $38                                         ; $58e8: $ff
	and  e                                           ; $58e9: $a3
	ld   de, $af11                                   ; $58ea: $11 $11 $af
	cp   l                                           ; $58ed: $bd
	rst  $28                                         ; $58ee: $ef
	rst  $38                                         ; $58ef: $ff
	pop  af                                          ; $58f0: $f1
	ld   de, $0113                                   ; $58f1: $11 $13 $01
	daa                                              ; $58f4: $27
	rst  $38                                         ; $58f5: $ff
	rst  $38                                         ; $58f6: $ff
	call z, $b3dd                                    ; $58f7: $cc $dd $b3
	ld   de, $6f11                                   ; $58fa: $11 $11 $6f
	ld   a, [$fffc]                                  ; $58fd: $fa $fc $ff
	and  l                                           ; $5900: $a5
	ld   de, $9354                                   ; $5901: $11 $54 $93
	add  hl, de                                      ; $5904: $19
	rst  JumpTable                                         ; $5905: $df
	db   $fd                                         ; $5906: $fd
	sub  [hl]                                        ; $5907: $96
	sbc  d                                           ; $5908: $9a
	ld   [hl], h                                     ; $5909: $74
	ld   d, $ff                                      ; $590a: $16 $ff
	db   $fc                                         ; $590c: $fc
	ld   d, c                                        ; $590d: $51
	ld   de, $ba03                                   ; $590e: $11 $03 $ba
	sbc  l                                           ; $5911: $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5912: $cf
	db   $fd                                         ; $5913: $fd
	sub  d                                           ; $5914: $92
	inc  [hl]                                        ; $5915: $34
	inc  hl                                          ; $5916: $23
	inc  de                                          ; $5917: $13
	adc  l                                           ; $5918: $8d
	rst  $38                                         ; $5919: $ff
	db   $fc                                         ; $591a: $fc
	cp   d                                           ; $591b: $ba
	add  l                                           ; $591c: $85
	ld   de, $9a25                                   ; $591d: $11 $25 $9a
	xor  h                                           ; $5920: $ac
	rst  JumpTable                                         ; $5921: $df
	db   $fd                                         ; $5922: $fd
	and  a                                           ; $5923: $a7
	ld   a, e                                        ; $5924: $7b
	ld   [hl], d                                     ; $5925: $72
	ld   de, $ff19                                   ; $5926: $11 $19 $ff
	xor  e                                           ; $5929: $ab
	ld   a, a                                        ; $592a: $7f
	ld   sp, hl                                      ; $592b: $f9
	ld   hl, $9c17                                   ; $592c: $21 $17 $9c
	ld   d, e                                        ; $592f: $53
	xor  a                                           ; $5930: $af
	rst  $38                                         ; $5931: $ff
	add  d                                           ; $5932: $82
	rla                                              ; $5933: $17
	sub  [hl]                                        ; $5934: $96
	ld   hl, $ff5c                                   ; $5935: $21 $5c $ff
	and  [hl]                                        ; $5938: $a6
	ld   a, e                                        ; $5939: $7b
	or   a                                           ; $593a: $b7
	ld   hl, $cc38                                   ; $593b: $21 $38 $cc
	xor  b                                           ; $593e: $a8
	sbc  h                                           ; $593f: $9c
	ret                                              ; $5940: $c9


	ld   b, d                                        ; $5941: $42
	ld   [hl], $9a                                   ; $5942: $36 $9a
	ld   a, d                                        ; $5944: $7a
	cp   [hl]                                        ; $5945: $be
	ei                                               ; $5946: $fb
	sub  [hl]                                        ; $5947: $96
	ld   a, c                                        ; $5948: $79
	ld   d, c                                        ; $5949: $51
	ld   de, $fe6f                                   ; $594a: $11 $6f $fe
	cp   b                                           ; $594d: $b8
	cp   a                                           ; $594e: $bf
	sub  e                                           ; $594f: $93
	ld   de, $d95a                                   ; $5950: $11 $5a $d9
	ld   e, d                                        ; $5953: $5a
	rst  $38                                         ; $5954: $ff
	rst  $30                                         ; $5955: $f7
	ld   hl, $7569                                   ; $5956: $21 $69 $75
	add  hl, sp                                      ; $5959: $39
	rst  $28                                         ; $595a: $ef
	rst  $20                                         ; $595b: $e7
	ld   d, [hl]                                     ; $595c: $56
	sbc  c                                           ; $595d: $99
	ld   d, e                                        ; $595e: $53
	scf                                              ; $595f: $37
	call $79c8                                       ; $5960: $cd $c8 $79
	xor  c                                           ; $5963: $a9
	ld   d, e                                        ; $5964: $53
	ld   b, a                                        ; $5965: $47
	xor  c                                           ; $5966: $a9
	sbc  b                                           ; $5967: $98
	sbc  d                                           ; $5968: $9a
	xor  c                                           ; $5969: $a9
	ld   d, l                                        ; $596a: $55
	ld   l, c                                        ; $596b: $69
	sub  a                                           ; $596c: $97
	ld   h, a                                        ; $596d: $67
	xor  e                                           ; $596e: $ab
	cp   b                                           ; $596f: $b8
	ld   h, l                                        ; $5970: $65
	ld   a, c                                        ; $5971: $79
	add  a                                           ; $5972: $87
	ld   h, a                                        ; $5973: $67
	xor  e                                           ; $5974: $ab
	sbc  b                                           ; $5975: $98
	ld   [hl], a                                     ; $5976: $77
	adc  b                                           ; $5977: $88
	halt                                             ; $5978: $76
	ld   l, b                                        ; $5979: $68
	xor  c                                           ; $597a: $a9
	sbc  b                                           ; $597b: $98
	adc  b                                           ; $597c: $88
	add  a                                           ; $597d: $87
	ld   h, [hl]                                     ; $597e: $66
	ld   a, b                                        ; $597f: $78
	xor  c                                           ; $5980: $a9
	adc  c                                           ; $5981: $89
	adc  c                                           ; $5982: $89
	add  a                                           ; $5983: $87
	halt                                             ; $5984: $76
	ld   h, a                                        ; $5985: $67
	adc  c                                           ; $5986: $89
	sbc  b                                           ; $5987: $98
	xor  e                                           ; $5988: $ab
	xor  b                                           ; $5989: $a8
	halt                                             ; $598a: $76
	ld   h, a                                        ; $598b: $67
	ld   [hl], a                                     ; $598c: $77
	ld   a, b                                        ; $598d: $78
	sbc  d                                           ; $598e: $9a
	add  a                                           ; $598f: $87
	ld   h, a                                        ; $5990: $67
	adc  b                                           ; $5991: $88
	ld   [hl], a                                     ; $5992: $77
	adc  c                                           ; $5993: $89
	adc  b                                           ; $5994: $88
	ld   [hl], a                                     ; $5995: $77
	ld   a, b                                        ; $5996: $78
	add  a                                           ; $5997: $87
	ld   h, [hl]                                     ; $5998: $66
	adc  c                                           ; $5999: $89
	adc  b                                           ; $599a: $88
	ld   a, b                                        ; $599b: $78
	adc  c                                           ; $599c: $89
	sbc  b                                           ; $599d: $98
	ld   [hl], a                                     ; $599e: $77
	adc  b                                           ; $599f: $88
	add  a                                           ; $59a0: $87
	adc  c                                           ; $59a1: $89
	sbc  b                                           ; $59a2: $98
	sbc  b                                           ; $59a3: $98
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	ld   [hl], a                                     ; $59a6: $77
	adc  b                                           ; $59a7: $88
	adc  b                                           ; $59a8: $88
	adc  c                                           ; $59a9: $89
	sbc  c                                           ; $59aa: $99
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	adc  b                                           ; $59ad: $88
	adc  b                                           ; $59ae: $88
	adc  c                                           ; $59af: $89
	sbc  b                                           ; $59b0: $98
	adc  b                                           ; $59b1: $88
	adc  b                                           ; $59b2: $88
	add  a                                           ; $59b3: $87
	ld   a, b                                        ; $59b4: $78
	adc  b                                           ; $59b5: $88
	adc  b                                           ; $59b6: $88
	adc  b                                           ; $59b7: $88
	sbc  b                                           ; $59b8: $98
	adc  b                                           ; $59b9: $88
	adc  b                                           ; $59ba: $88
	adc  b                                           ; $59bb: $88
	adc  b                                           ; $59bc: $88
	adc  b                                           ; $59bd: $88
	sbc  b                                           ; $59be: $98
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  b                                           ; $59c1: $88
	adc  b                                           ; $59c2: $88
	adc  b                                           ; $59c3: $88
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	sbc  c                                           ; $59c6: $99
	adc  b                                           ; $59c7: $88
	adc  b                                           ; $59c8: $88
	adc  b                                           ; $59c9: $88
	adc  b                                           ; $59ca: $88
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  c                                           ; $59cd: $89
	sbc  b                                           ; $59ce: $98
	adc  b                                           ; $59cf: $88
	adc  b                                           ; $59d0: $88
	adc  b                                           ; $59d1: $88
	adc  b                                           ; $59d2: $88
	adc  b                                           ; $59d3: $88
	adc  b                                           ; $59d4: $88
	adc  b                                           ; $59d5: $88
	adc  b                                           ; $59d6: $88
	adc  b                                           ; $59d7: $88
	adc  b                                           ; $59d8: $88
	adc  b                                           ; $59d9: $88
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	adc  b                                           ; $59dc: $88
	adc  b                                           ; $59dd: $88
	adc  b                                           ; $59de: $88
	adc  b                                           ; $59df: $88
	adc  b                                           ; $59e0: $88
	adc  b                                           ; $59e1: $88
	adc  b                                           ; $59e2: $88
	adc  b                                           ; $59e3: $88
	adc  b                                           ; $59e4: $88
	adc  b                                           ; $59e5: $88
	adc  b                                           ; $59e6: $88
	adc  b                                           ; $59e7: $88
	adc  b                                           ; $59e8: $88
	adc  b                                           ; $59e9: $88
	adc  b                                           ; $59ea: $88
	adc  b                                           ; $59eb: $88
	adc  b                                           ; $59ec: $88
	adc  b                                           ; $59ed: $88
	adc  b                                           ; $59ee: $88
	adc  b                                           ; $59ef: $88
	adc  b                                           ; $59f0: $88
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	adc  b                                           ; $59f3: $88
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	adc  b                                           ; $59f6: $88
	adc  b                                           ; $59f7: $88
	adc  b                                           ; $59f8: $88
	adc  b                                           ; $59f9: $88
	adc  b                                           ; $59fa: $88
	adc  b                                           ; $59fb: $88
	adc  b                                           ; $59fc: $88
	adc  b                                           ; $59fd: $88
	adc  b                                           ; $59fe: $88
	adc  b                                           ; $59ff: $88
	adc  b                                           ; $5a00: $88
	adc  b                                           ; $5a01: $88
	adc  b                                           ; $5a02: $88
	adc  b                                           ; $5a03: $88
	adc  b                                           ; $5a04: $88
	adc  b                                           ; $5a05: $88
	adc  b                                           ; $5a06: $88
	adc  b                                           ; $5a07: $88
	adc  b                                           ; $5a08: $88
	adc  b                                           ; $5a09: $88
	adc  b                                           ; $5a0a: $88
	adc  b                                           ; $5a0b: $88
	adc  b                                           ; $5a0c: $88
	adc  b                                           ; $5a0d: $88
	adc  b                                           ; $5a0e: $88
	adc  b                                           ; $5a0f: $88
	adc  b                                           ; $5a10: $88
	adc  b                                           ; $5a11: $88
	adc  b                                           ; $5a12: $88
	adc  b                                           ; $5a13: $88
	adc  b                                           ; $5a14: $88
	adc  b                                           ; $5a15: $88
	adc  b                                           ; $5a16: $88
	adc  b                                           ; $5a17: $88
	adc  b                                           ; $5a18: $88
	adc  b                                           ; $5a19: $88
	adc  b                                           ; $5a1a: $88
	adc  b                                           ; $5a1b: $88
	adc  b                                           ; $5a1c: $88
	adc  b                                           ; $5a1d: $88
	adc  b                                           ; $5a1e: $88
	adc  b                                           ; $5a1f: $88
	adc  b                                           ; $5a20: $88
	adc  b                                           ; $5a21: $88
	adc  b                                           ; $5a22: $88
	adc  b                                           ; $5a23: $88
	adc  b                                           ; $5a24: $88
	adc  b                                           ; $5a25: $88
	adc  b                                           ; $5a26: $88
	adc  b                                           ; $5a27: $88
	adc  b                                           ; $5a28: $88
	adc  b                                           ; $5a29: $88
	adc  b                                           ; $5a2a: $88
	adc  b                                           ; $5a2b: $88
	adc  b                                           ; $5a2c: $88
	adc  b                                           ; $5a2d: $88
	adc  b                                           ; $5a2e: $88
	adc  b                                           ; $5a2f: $88
	adc  b                                           ; $5a30: $88
	adc  b                                           ; $5a31: $88
	adc  b                                           ; $5a32: $88
	adc  b                                           ; $5a33: $88
	adc  b                                           ; $5a34: $88
	adc  b                                           ; $5a35: $88
	adc  b                                           ; $5a36: $88
	adc  b                                           ; $5a37: $88
	adc  b                                           ; $5a38: $88
	adc  b                                           ; $5a39: $88
	adc  b                                           ; $5a3a: $88
	adc  b                                           ; $5a3b: $88
	adc  b                                           ; $5a3c: $88
	adc  b                                           ; $5a3d: $88
	adc  b                                           ; $5a3e: $88
	adc  b                                           ; $5a3f: $88
	adc  b                                           ; $5a40: $88
	adc  b                                           ; $5a41: $88
	adc  b                                           ; $5a42: $88
	adc  b                                           ; $5a43: $88
	adc  b                                           ; $5a44: $88
	adc  b                                           ; $5a45: $88
	adc  b                                           ; $5a46: $88
	adc  b                                           ; $5a47: $88
	adc  b                                           ; $5a48: $88
	adc  b                                           ; $5a49: $88
	adc  b                                           ; $5a4a: $88
	adc  b                                           ; $5a4b: $88
	adc  b                                           ; $5a4c: $88
	adc  b                                           ; $5a4d: $88
	adc  b                                           ; $5a4e: $88
	adc  b                                           ; $5a4f: $88
	adc  b                                           ; $5a50: $88
	adc  b                                           ; $5a51: $88
	adc  b                                           ; $5a52: $88
	adc  b                                           ; $5a53: $88
	adc  b                                           ; $5a54: $88
	adc  b                                           ; $5a55: $88
	adc  b                                           ; $5a56: $88
	adc  b                                           ; $5a57: $88
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	adc  b                                           ; $5a5a: $88
	adc  b                                           ; $5a5b: $88
	adc  b                                           ; $5a5c: $88
	adc  b                                           ; $5a5d: $88
	adc  b                                           ; $5a5e: $88
	adc  b                                           ; $5a5f: $88
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	adc  b                                           ; $5a62: $88
	adc  b                                           ; $5a63: $88
	adc  b                                           ; $5a64: $88
	adc  b                                           ; $5a65: $88
	adc  b                                           ; $5a66: $88
	adc  b                                           ; $5a67: $88
	adc  b                                           ; $5a68: $88
	adc  b                                           ; $5a69: $88
	adc  b                                           ; $5a6a: $88
	adc  b                                           ; $5a6b: $88
	adc  b                                           ; $5a6c: $88
	adc  b                                           ; $5a6d: $88
	adc  b                                           ; $5a6e: $88
	adc  b                                           ; $5a6f: $88
	adc  b                                           ; $5a70: $88
	adc  b                                           ; $5a71: $88
	adc  b                                           ; $5a72: $88
	adc  b                                           ; $5a73: $88
	adc  b                                           ; $5a74: $88
	adc  b                                           ; $5a75: $88
	adc  b                                           ; $5a76: $88
	adc  b                                           ; $5a77: $88
	adc  b                                           ; $5a78: $88
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	adc  b                                           ; $5a7b: $88
	adc  b                                           ; $5a7c: $88
	adc  b                                           ; $5a7d: $88
	adc  b                                           ; $5a7e: $88
	adc  b                                           ; $5a7f: $88
	adc  b                                           ; $5a80: $88
	adc  b                                           ; $5a81: $88
	adc  b                                           ; $5a82: $88
	adc  b                                           ; $5a83: $88
	adc  b                                           ; $5a84: $88
	adc  b                                           ; $5a85: $88
	adc  b                                           ; $5a86: $88
	adc  b                                           ; $5a87: $88
	adc  b                                           ; $5a88: $88
	adc  b                                           ; $5a89: $88
	adc  b                                           ; $5a8a: $88
	adc  b                                           ; $5a8b: $88
	adc  b                                           ; $5a8c: $88
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	adc  b                                           ; $5a8f: $88
	adc  b                                           ; $5a90: $88
	adc  b                                           ; $5a91: $88
	adc  b                                           ; $5a92: $88
	adc  b                                           ; $5a93: $88
	adc  b                                           ; $5a94: $88
	adc  b                                           ; $5a95: $88
	adc  b                                           ; $5a96: $88
	adc  b                                           ; $5a97: $88
	adc  b                                           ; $5a98: $88
	adc  b                                           ; $5a99: $88
	adc  b                                           ; $5a9a: $88
	adc  b                                           ; $5a9b: $88
	adc  b                                           ; $5a9c: $88
	adc  b                                           ; $5a9d: $88
	adc  b                                           ; $5a9e: $88
	adc  b                                           ; $5a9f: $88
	adc  b                                           ; $5aa0: $88
	adc  b                                           ; $5aa1: $88
	adc  b                                           ; $5aa2: $88
	adc  b                                           ; $5aa3: $88
	adc  b                                           ; $5aa4: $88
	adc  b                                           ; $5aa5: $88
	adc  b                                           ; $5aa6: $88
	adc  b                                           ; $5aa7: $88
	adc  b                                           ; $5aa8: $88
	adc  b                                           ; $5aa9: $88
	adc  b                                           ; $5aaa: $88
	adc  b                                           ; $5aab: $88
	adc  b                                           ; $5aac: $88
	adc  b                                           ; $5aad: $88
	adc  b                                           ; $5aae: $88
	adc  b                                           ; $5aaf: $88
	adc  b                                           ; $5ab0: $88
	adc  b                                           ; $5ab1: $88
	adc  b                                           ; $5ab2: $88
	adc  b                                           ; $5ab3: $88
	adc  b                                           ; $5ab4: $88
	adc  b                                           ; $5ab5: $88
	adc  b                                           ; $5ab6: $88
	adc  b                                           ; $5ab7: $88
	adc  b                                           ; $5ab8: $88
	adc  b                                           ; $5ab9: $88
	adc  b                                           ; $5aba: $88
	adc  b                                           ; $5abb: $88
	adc  b                                           ; $5abc: $88
	adc  b                                           ; $5abd: $88
	adc  b                                           ; $5abe: $88
	adc  b                                           ; $5abf: $88
	adc  b                                           ; $5ac0: $88
	adc  b                                           ; $5ac1: $88
	adc  b                                           ; $5ac2: $88
	adc  b                                           ; $5ac3: $88
	adc  b                                           ; $5ac4: $88
	adc  b                                           ; $5ac5: $88
	adc  b                                           ; $5ac6: $88
	adc  b                                           ; $5ac7: $88
	adc  b                                           ; $5ac8: $88
	adc  b                                           ; $5ac9: $88
	adc  b                                           ; $5aca: $88
	adc  b                                           ; $5acb: $88
	adc  b                                           ; $5acc: $88
	adc  b                                           ; $5acd: $88
	adc  b                                           ; $5ace: $88
	adc  b                                           ; $5acf: $88
	adc  b                                           ; $5ad0: $88
	adc  b                                           ; $5ad1: $88
	adc  b                                           ; $5ad2: $88
	adc  b                                           ; $5ad3: $88
	adc  b                                           ; $5ad4: $88
	adc  b                                           ; $5ad5: $88
	adc  b                                           ; $5ad6: $88
	adc  b                                           ; $5ad7: $88
	adc  b                                           ; $5ad8: $88
	adc  b                                           ; $5ad9: $88
	adc  b                                           ; $5ada: $88
	adc  b                                           ; $5adb: $88
	adc  b                                           ; $5adc: $88
	adc  b                                           ; $5add: $88
	adc  b                                           ; $5ade: $88
	adc  b                                           ; $5adf: $88
	adc  b                                           ; $5ae0: $88
	adc  b                                           ; $5ae1: $88
	adc  b                                           ; $5ae2: $88
	adc  b                                           ; $5ae3: $88
	adc  b                                           ; $5ae4: $88
	adc  b                                           ; $5ae5: $88
	adc  b                                           ; $5ae6: $88
	adc  b                                           ; $5ae7: $88
	adc  b                                           ; $5ae8: $88
	adc  b                                           ; $5ae9: $88
	adc  b                                           ; $5aea: $88
	adc  b                                           ; $5aeb: $88
	adc  b                                           ; $5aec: $88
	adc  b                                           ; $5aed: $88
	adc  b                                           ; $5aee: $88
	adc  b                                           ; $5aef: $88
	adc  b                                           ; $5af0: $88
	adc  b                                           ; $5af1: $88
	adc  b                                           ; $5af2: $88
	adc  b                                           ; $5af3: $88
	adc  b                                           ; $5af4: $88
	adc  b                                           ; $5af5: $88
	adc  b                                           ; $5af6: $88
	adc  b                                           ; $5af7: $88
	adc  b                                           ; $5af8: $88
	adc  b                                           ; $5af9: $88
	adc  b                                           ; $5afa: $88
	adc  b                                           ; $5afb: $88
	adc  b                                           ; $5afc: $88
	adc  b                                           ; $5afd: $88
	adc  b                                           ; $5afe: $88
	adc  b                                           ; $5aff: $88
	adc  b                                           ; $5b00: $88
	adc  b                                           ; $5b01: $88
	adc  b                                           ; $5b02: $88
	adc  b                                           ; $5b03: $88
	adc  b                                           ; $5b04: $88
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	adc  b                                           ; $5b07: $88
	adc  b                                           ; $5b08: $88
	adc  b                                           ; $5b09: $88
	adc  b                                           ; $5b0a: $88
	adc  b                                           ; $5b0b: $88
	adc  b                                           ; $5b0c: $88
	adc  b                                           ; $5b0d: $88
	adc  b                                           ; $5b0e: $88
	adc  b                                           ; $5b0f: $88
	adc  b                                           ; $5b10: $88
	adc  b                                           ; $5b11: $88
	adc  b                                           ; $5b12: $88
	adc  b                                           ; $5b13: $88
	adc  b                                           ; $5b14: $88
	adc  b                                           ; $5b15: $88
	adc  b                                           ; $5b16: $88
	adc  b                                           ; $5b17: $88
	adc  b                                           ; $5b18: $88
	adc  b                                           ; $5b19: $88
	adc  b                                           ; $5b1a: $88
	adc  b                                           ; $5b1b: $88
	adc  b                                           ; $5b1c: $88
	adc  b                                           ; $5b1d: $88
	adc  b                                           ; $5b1e: $88
	adc  b                                           ; $5b1f: $88
	adc  b                                           ; $5b20: $88
	adc  b                                           ; $5b21: $88
	adc  b                                           ; $5b22: $88
	adc  b                                           ; $5b23: $88
	adc  b                                           ; $5b24: $88
	adc  b                                           ; $5b25: $88
	adc  b                                           ; $5b26: $88
	adc  b                                           ; $5b27: $88
	adc  b                                           ; $5b28: $88
	adc  b                                           ; $5b29: $88
	adc  b                                           ; $5b2a: $88
	adc  b                                           ; $5b2b: $88
	adc  b                                           ; $5b2c: $88
	adc  b                                           ; $5b2d: $88
	adc  b                                           ; $5b2e: $88
	adc  b                                           ; $5b2f: $88
	adc  b                                           ; $5b30: $88
	adc  b                                           ; $5b31: $88
	adc  b                                           ; $5b32: $88
	adc  b                                           ; $5b33: $88
	adc  b                                           ; $5b34: $88
	adc  b                                           ; $5b35: $88
	adc  b                                           ; $5b36: $88
	adc  b                                           ; $5b37: $88
	adc  b                                           ; $5b38: $88
	adc  b                                           ; $5b39: $88
	adc  b                                           ; $5b3a: $88
	adc  b                                           ; $5b3b: $88
	adc  b                                           ; $5b3c: $88
	adc  b                                           ; $5b3d: $88
	adc  b                                           ; $5b3e: $88
	adc  b                                           ; $5b3f: $88
	adc  b                                           ; $5b40: $88
	adc  b                                           ; $5b41: $88
	adc  b                                           ; $5b42: $88
	adc  b                                           ; $5b43: $88
	adc  b                                           ; $5b44: $88
	adc  b                                           ; $5b45: $88
	adc  b                                           ; $5b46: $88
	adc  b                                           ; $5b47: $88
	adc  b                                           ; $5b48: $88
	adc  b                                           ; $5b49: $88
	adc  b                                           ; $5b4a: $88
	adc  b                                           ; $5b4b: $88
	adc  b                                           ; $5b4c: $88
	adc  b                                           ; $5b4d: $88
	adc  b                                           ; $5b4e: $88
	adc  b                                           ; $5b4f: $88
	adc  b                                           ; $5b50: $88
	adc  b                                           ; $5b51: $88
	adc  b                                           ; $5b52: $88
	adc  b                                           ; $5b53: $88
	adc  b                                           ; $5b54: $88
	adc  b                                           ; $5b55: $88
	adc  b                                           ; $5b56: $88
	adc  b                                           ; $5b57: $88
	adc  b                                           ; $5b58: $88
	adc  b                                           ; $5b59: $88
	adc  b                                           ; $5b5a: $88
	adc  b                                           ; $5b5b: $88
	adc  b                                           ; $5b5c: $88
	adc  b                                           ; $5b5d: $88
	adc  c                                           ; $5b5e: $89
	sbc  b                                           ; $5b5f: $98
	adc  c                                           ; $5b60: $89
	adc  b                                           ; $5b61: $88
	sbc  b                                           ; $5b62: $98
	ld   d, e                                        ; $5b63: $53
	ld   h, $b9                                      ; $5b64: $26 $b9
	sbc  d                                           ; $5b66: $9a
	xor  h                                           ; $5b67: $ac
	halt                                             ; $5b68: $76
	halt                                             ; $5b69: $76
	halt                                             ; $5b6a: $76
	ld   l, c                                        ; $5b6b: $69
	xor  c                                           ; $5b6c: $a9
	sbc  c                                           ; $5b6d: $99
	xor  d                                           ; $5b6e: $aa
	ld   [hl], a                                     ; $5b6f: $77
	ld   h, a                                        ; $5b70: $67
	halt                                             ; $5b71: $76
	adc  c                                           ; $5b72: $89
	sbc  d                                           ; $5b73: $9a
	adc  b                                           ; $5b74: $88
	sbc  b                                           ; $5b75: $98
	halt                                             ; $5b76: $76
	ld   a, b                                        ; $5b77: $78
	adc  c                                           ; $5b78: $89
	sbc  c                                           ; $5b79: $99
	xor  c                                           ; $5b7a: $a9
	xor  d                                           ; $5b7b: $aa
	xor  c                                           ; $5b7c: $a9
	sbc  b                                           ; $5b7d: $98
	ld   d, d                                        ; $5b7e: $52
	ld   de, $7cbe                                   ; $5b7f: $11 $be $7c
	xor  a                                           ; $5b82: $af
	call nc, Call_0ef_6675                           ; $5b83: $d4 $75 $66
	ld   d, $a9                                      ; $5b86: $16 $a9
	xor  d                                           ; $5b88: $aa
	xor  h                                           ; $5b89: $ac
	sub  a                                           ; $5b8a: $97
	ld   h, [hl]                                     ; $5b8b: $66
	ld   [hl], l                                     ; $5b8c: $75
	ld   e, b                                        ; $5b8d: $58
	xor  d                                           ; $5b8e: $aa
	xor  d                                           ; $5b8f: $aa
	cp   c                                           ; $5b90: $b9
	add  [hl]                                        ; $5b91: $86
	ld   h, [hl]                                     ; $5b92: $66
	ld   h, [hl]                                     ; $5b93: $66
	ld   a, b                                        ; $5b94: $78
	xor  d                                           ; $5b95: $aa
	xor  d                                           ; $5b96: $aa
	sbc  c                                           ; $5b97: $99
	halt                                             ; $5b98: $76
	ld   h, [hl]                                     ; $5b99: $66
	ld   [hl], a                                     ; $5b9a: $77
	adc  d                                           ; $5b9b: $8a
	xor  d                                           ; $5b9c: $aa
	xor  c                                           ; $5b9d: $a9
	sbc  b                                           ; $5b9e: $98
	ld   [hl], a                                     ; $5b9f: $77
	cp   h                                           ; $5ba0: $bc
	sbc  b                                           ; $5ba1: $98
	xor  l                                           ; $5ba2: $ad
	add  $54                                         ; $5ba3: $c6 $54
	ld   de, $e81b                                   ; $5ba5: $11 $1b $e8
	call z, Call_0ef_67fe                            ; $5ba8: $cc $fe $67
	ld   e, b                                        ; $5bab: $58
	ld   hl, $9a57                                   ; $5bac: $21 $57 $9a
	sbc  l                                           ; $5baf: $9d
	ei                                               ; $5bb0: $fb
	add  a                                           ; $5bb1: $87
	ld   [hl], l                                     ; $5bb2: $75
	inc  sp                                          ; $5bb3: $33
	ld   e, c                                        ; $5bb4: $59
	xor  c                                           ; $5bb5: $a9
	cp   l                                           ; $5bb6: $bd
	jp   z, Jump_0ef_7587                            ; $5bb7: $ca $87 $75

	ld   b, l                                        ; $5bba: $45
	sbc  l                                           ; $5bbb: $9d
	cp   l                                           ; $5bbc: $bd
	rst  $38                                         ; $5bbd: $ff
	cp   c                                           ; $5bbe: $b9
	ld   [hl], l                                     ; $5bbf: $75
	ld   de, $df11                                   ; $5bc0: $11 $11 $df
	ld   a, a                                        ; $5bc3: $7f
	rst  $38                                         ; $5bc4: $ff
	or   $74                                         ; $5bc5: $f6 $74
	ld   d, c                                        ; $5bc7: $51
	inc  d                                           ; $5bc8: $14

Jump_0ef_5bc9:
	ld   l, c                                        ; $5bc9: $69
	cp   h                                           ; $5bca: $bc
	rst  $38                                         ; $5bcb: $ff
	jp   c, $2196                                    ; $5bcc: $da $96 $21

	inc  de                                          ; $5bcf: $13
	ld   a, b                                        ; $5bd0: $78
	cp   a                                           ; $5bd1: $bf
	rst  $38                                         ; $5bd2: $ff
	db   $fd                                         ; $5bd3: $fd
	reti                                             ; $5bd4: $d9


	ld   b, d                                        ; $5bd5: $42
	ld   [hl+], a                                    ; $5bd6: $22
	ld   de, $fe12                                   ; $5bd7: $11 $12 $fe
	xor  a                                           ; $5bda: $af
	rst  $38                                         ; $5bdb: $ff
	add  e                                           ; $5bdc: $83
	ld   b, l                                        ; $5bdd: $45
	ld   b, c                                        ; $5bde: $41
	ld   a, [de]                                     ; $5bdf: $1a
	adc  e                                           ; $5be0: $8b
	cp   l                                           ; $5be1: $bd
	rst  $38                                         ; $5be2: $ff
	sbc  c                                           ; $5be3: $99
	add  a                                           ; $5be4: $87
	ld   [hl-], a                                    ; $5be5: $32
	ld   c, d                                        ; $5be6: $4a
	cp   $ff                                         ; $5be7: $fe $ff
	db   $ec                                         ; $5be9: $ec
	ld   h, d                                        ; $5bea: $62
	ld   de, $e711                                   ; $5beb: $11 $11 $e7
	ld   a, a                                        ; $5bee: $7f
	rst  $38                                         ; $5bef: $ff
	db   $fc                                         ; $5bf0: $fc
	xor  d                                           ; $5bf1: $aa
	ld   sp, $1511                                   ; $5bf2: $31 $11 $15
	ld   e, l                                        ; $5bf5: $5d
	rst  $38                                         ; $5bf6: $ff
	rst  $38                                         ; $5bf7: $ff
	rst  $38                                         ; $5bf8: $ff
	add  e                                           ; $5bf9: $83
	scf                                              ; $5bfa: $37
	ld   h, h                                        ; $5bfb: $64
	ld   d, [hl]                                     ; $5bfc: $56
	ld   hl, $fd11                                   ; $5bfd: $21 $11 $fd
	ld   a, [de]                                     ; $5c00: $1a
	rst  $38                                         ; $5c01: $ff
	push bc                                          ; $5c02: $c5
	xor  [hl]                                        ; $5c03: $ae
	pop  bc                                          ; $5c04: $c1
	jr   jr_0ef_5c3c                                 ; $5c05: $18 $35

	dec  [hl]                                        ; $5c07: $35
	rst  $38                                         ; $5c08: $ff
	xor  a                                           ; $5c09: $af
	rst  $38                                         ; $5c0a: $ff
	db   $fc                                         ; $5c0b: $fc
	rst  JumpTable                                         ; $5c0c: $df
	jp   $1111                                       ; $5c0d: $c3 $11 $11


	inc  de                                          ; $5c10: $13
	push af                                          ; $5c11: $f5
	xor  a                                           ; $5c12: $af
	rst  $38                                         ; $5c13: $ff
	jp   c, HLequNextKanjiQuarterBankOffsetAndKanjiIdx                                    ; $5c14: $da $cc $11

	ld   de, $3f12                                   ; $5c17: $11 $12 $3f
	rst  $38                                         ; $5c1a: $ff
	rst  $38                                         ; $5c1b: $ff
	rst  $38                                         ; $5c1c: $ff
	xor  c                                           ; $5c1d: $a9
	xor  b                                           ; $5c1e: $a8
	ld   de, $1111                                   ; $5c1f: $11 $11 $11
	rst  JumpTable                                         ; $5c22: $df
	sbc  a                                           ; $5c23: $9f
	rst  $38                                         ; $5c24: $ff
	db   $fc                                         ; $5c25: $fc
	sbc  e                                           ; $5c26: $9b
	ld   d, c                                        ; $5c27: $51
	ld   de, $2811                                   ; $5c28: $11 $11 $28
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	rst  $38                                         ; $5c2d: $ff
	db   $fc                                         ; $5c2e: $fc
	cp   e                                           ; $5c2f: $bb
	ld   h, c                                        ; $5c30: $61
	ld   de, $1f11                                   ; $5c31: $11 $11 $1f
	jp   z, $ffff                                    ; $5c34: $ca $ff $ff

	rst  $38                                         ; $5c37: $ff
	and  c                                           ; $5c38: $a1
	ld   de, $1111                                   ; $5c39: $11 $11 $11

jr_0ef_5c3c:
	rst  $28                                         ; $5c3c: $ef
	rst  $38                                         ; $5c3d: $ff
	rst  $38                                         ; $5c3e: $ff
	rst  $38                                         ; $5c3f: $ff
	jp   c, $1141                                    ; $5c40: $da $41 $11

	ld   de, $cc1f                                   ; $5c43: $11 $1f $cc
	rst  $38                                         ; $5c46: $ff
	rst  $38                                         ; $5c47: $ff
	rst  $38                                         ; $5c48: $ff
	or   c                                           ; $5c49: $b1
	ld   de, $1111                                   ; $5c4a: $11 $11 $11
	rst  JumpTable                                         ; $5c4d: $df
	rst  $38                                         ; $5c4e: $ff
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	or   [hl]                                        ; $5c51: $b6
	ld   de, $1111                                   ; $5c52: $11 $11 $11
	rra                                              ; $5c55: $1f
	ld   a, a                                        ; $5c56: $7f
	rst  $38                                         ; $5c57: $ff
	rst  $38                                         ; $5c58: $ff
	rst  $38                                         ; $5c59: $ff
	sub  c                                           ; $5c5a: $91
	ld   de, $1111                                   ; $5c5b: $11 $11 $11
	rst  $38                                         ; $5c5e: $ff
	rst  $38                                         ; $5c5f: $ff
	rst  $38                                         ; $5c60: $ff
	rst  $38                                         ; $5c61: $ff
	sub  e                                           ; $5c62: $93
	ld   de, $1111                                   ; $5c63: $11 $11 $11
	rst  JumpTable                                         ; $5c66: $df
	cp   a                                           ; $5c67: $bf
	rst  $38                                         ; $5c68: $ff
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	ld   de, $1111                                   ; $5c6b: $11 $11 $11
	rla                                              ; $5c6e: $17
	rst  $38                                         ; $5c6f: $ff
	rst  $38                                         ; $5c70: $ff
	rst  $38                                         ; $5c71: $ff
	ei                                               ; $5c72: $fb
	ld   b, c                                        ; $5c73: $41
	ld   de, $1111                                   ; $5c74: $11 $11 $11
	ld   hl, sp-$01                                  ; $5c77: $f8 $ff
	rst  $38                                         ; $5c79: $ff
	rst  $38                                         ; $5c7a: $ff
	ld   a, [$1111]                                  ; $5c7b: $fa $11 $11
	ld   de, $ff1f                                   ; $5c7e: $11 $1f $ff
	rst  $38                                         ; $5c81: $ff
	rst  $38                                         ; $5c82: $ff
	rst  $30                                         ; $5c83: $f7
	ld   de, $1111                                   ; $5c84: $11 $11 $11
	ld   a, [de]                                     ; $5c87: $1a
	ld   sp, hl                                      ; $5c88: $f9
	rst  $38                                         ; $5c89: $ff
	rst  $38                                         ; $5c8a: $ff
	rst  $38                                         ; $5c8b: $ff
	pop  af                                          ; $5c8c: $f1
	ld   de, $1111                                   ; $5c8d: $11 $11 $11
	ld   c, a                                        ; $5c90: $4f
	rst  $38                                         ; $5c91: $ff
	rst  $38                                         ; $5c92: $ff
	rst  $38                                         ; $5c93: $ff
	call nc, $1111                                   ; $5c94: $d4 $11 $11
	ld   de, $ef1f                                   ; $5c97: $11 $1f $ef
	rst  $38                                         ; $5c9a: $ff
	rst  $38                                         ; $5c9b: $ff
	rst  $38                                         ; $5c9c: $ff
	pop  af                                          ; $5c9d: $f1
	ld   de, $1111                                   ; $5c9e: $11 $11 $11
	cp   a                                           ; $5ca1: $bf
	rst  $38                                         ; $5ca2: $ff
	rst  $38                                         ; $5ca3: $ff
	rst  $38                                         ; $5ca4: $ff
	sub  c                                           ; $5ca5: $91
	ld   de, $1111                                   ; $5ca6: $11 $11 $11
	rra                                              ; $5ca9: $1f
	ld   a, a                                        ; $5caa: $7f
	rst  $38                                         ; $5cab: $ff
	rst  $38                                         ; $5cac: $ff
	rst  $38                                         ; $5cad: $ff
	ld   [hl], c                                     ; $5cae: $71
	ld   de, $1111                                   ; $5caf: $11 $11 $11
	rst  $38                                         ; $5cb2: $ff
	rst  $38                                         ; $5cb3: $ff
	rst  $38                                         ; $5cb4: $ff
	rst  $38                                         ; $5cb5: $ff
	ld   h, c                                        ; $5cb6: $61
	ld   de, $1111                                   ; $5cb7: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cba: $cf
	xor  a                                           ; $5cbb: $af
	rst  $38                                         ; $5cbc: $ff
	rst  $38                                         ; $5cbd: $ff
	rst  $38                                         ; $5cbe: $ff
	ld   de, $1111                                   ; $5cbf: $11 $11 $11
	ld   [de], a                                     ; $5cc2: $12
	rst  $38                                         ; $5cc3: $ff
	rst  $38                                         ; $5cc4: $ff
	rst  $38                                         ; $5cc5: $ff
	rst  $38                                         ; $5cc6: $ff
	ld   sp, $1111                                   ; $5cc7: $31 $11 $11
	ld   de, $fffa                                   ; $5cca: $11 $fa $ff
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	rst  $38                                         ; $5ccf: $ff
	ld   de, $1111                                   ; $5cd0: $11 $11 $11
	ld   d, $ff                                      ; $5cd3: $16 $ff
	rst  $38                                         ; $5cd5: $ff
	rst  $38                                         ; $5cd6: $ff
	db   $fd                                         ; $5cd7: $fd
	ld   hl, $1111                                   ; $5cd8: $21 $11 $11
	ld   de, $fff7                                   ; $5cdb: $11 $f7 $ff
	rst  $38                                         ; $5cde: $ff
	rst  $38                                         ; $5cdf: $ff
	rst  $38                                         ; $5ce0: $ff
	ld   de, $1111                                   ; $5ce1: $11 $11 $11
	dec  de                                          ; $5ce4: $1b
	rst  $38                                         ; $5ce5: $ff
	rst  $38                                         ; $5ce6: $ff
	rst  $38                                         ; $5ce7: $ff
	db   $fc                                         ; $5ce8: $fc
	ld   sp, $1111                                   ; $5ce9: $31 $11 $11
	ld   de, $ffe7                                   ; $5cec: $11 $e7 $ff
	rst  $38                                         ; $5cef: $ff
	rst  $38                                         ; $5cf0: $ff
	db   $fd                                         ; $5cf1: $fd
	ld   de, $1111                                   ; $5cf2: $11 $11 $11
	ld   a, [de]                                     ; $5cf5: $1a
	rst  $38                                         ; $5cf6: $ff
	rst  $38                                         ; $5cf7: $ff
	rst  $38                                         ; $5cf8: $ff
	ei                                               ; $5cf9: $fb
	ld   sp, $1111                                   ; $5cfa: $31 $11 $11
	ld   de, $ffd6                                   ; $5cfd: $11 $d6 $ff
	rst  $38                                         ; $5d00: $ff
	rst  $38                                         ; $5d01: $ff
	ei                                               ; $5d02: $fb
	ld   de, $1111                                   ; $5d03: $11 $11 $11
	inc  e                                           ; $5d06: $1c
	rst  $38                                         ; $5d07: $ff
	rst  $38                                         ; $5d08: $ff
	rst  $38                                         ; $5d09: $ff
	db   $fc                                         ; $5d0a: $fc
	ld   sp, $1111                                   ; $5d0b: $31 $11 $11
	ld   de, $ffc6                                   ; $5d0e: $11 $c6 $ff
	rst  $38                                         ; $5d11: $ff
	rst  $38                                         ; $5d12: $ff
	db   $fd                                         ; $5d13: $fd
	ld   de, $1111                                   ; $5d14: $11 $11 $11
	ld   a, [de]                                     ; $5d17: $1a
	rst  $38                                         ; $5d18: $ff
	rst  $38                                         ; $5d19: $ff
	rst  $38                                         ; $5d1a: $ff
	cp   $41                                         ; $5d1b: $fe $41
	ld   de, $1111                                   ; $5d1d: $11 $11 $11
	push de                                          ; $5d20: $d5
	rst  $38                                         ; $5d21: $ff
	rst  $38                                         ; $5d22: $ff
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	ld   de, $1111                                   ; $5d25: $11 $11 $11
	rla                                              ; $5d28: $17
	rst  $38                                         ; $5d29: $ff
	rst  $38                                         ; $5d2a: $ff
	rst  $38                                         ; $5d2b: $ff
	rst  $38                                         ; $5d2c: $ff
	ld   d, c                                        ; $5d2d: $51
	ld   de, $1111                                   ; $5d2e: $11 $11 $11
	push de                                          ; $5d31: $d5
	rst  $38                                         ; $5d32: $ff
	rst  $38                                         ; $5d33: $ff
	rst  $38                                         ; $5d34: $ff
	rst  $38                                         ; $5d35: $ff
	ld   de, $1111                                   ; $5d36: $11 $11 $11
	inc  d                                           ; $5d39: $14
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rst  $38                                         ; $5d3d: $ff
	ld   [hl], c                                     ; $5d3e: $71
	ld   de, $1111                                   ; $5d3f: $11 $11 $11
	and  [hl]                                        ; $5d42: $a6
	rst  $38                                         ; $5d43: $ff
	rst  $38                                         ; $5d44: $ff
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	ld   de, $1111                                   ; $5d47: $11 $11 $11
	ld   de, $ffff                                   ; $5d4a: $11 $ff $ff
	rst  $38                                         ; $5d4d: $ff
	rst  $38                                         ; $5d4e: $ff
	sub  c                                           ; $5d4f: $91
	ld   de, $1111                                   ; $5d50: $11 $11 $11
	adc  b                                           ; $5d53: $88
	sbc  a                                           ; $5d54: $9f
	rst  $38                                         ; $5d55: $ff
	rst  $38                                         ; $5d56: $ff
	rst  $38                                         ; $5d57: $ff
	ld   de, $1111                                   ; $5d58: $11 $11 $11
	ld   de, $ffff                                   ; $5d5b: $11 $ff $ff
	rst  $38                                         ; $5d5e: $ff
	rst  $38                                         ; $5d5f: $ff
	pop  de                                          ; $5d60: $d1
	ld   de, $1111                                   ; $5d61: $11 $11 $11
	dec  e                                           ; $5d64: $1d
	ld   c, a                                        ; $5d65: $4f
	rst  $38                                         ; $5d66: $ff
	rst  $38                                         ; $5d67: $ff
	rst  $38                                         ; $5d68: $ff
	or   c                                           ; $5d69: $b1
	ld   de, $1111                                   ; $5d6a: $11 $11 $11
	adc  a                                           ; $5d6d: $8f
	rst  $38                                         ; $5d6e: $ff
	rst  $38                                         ; $5d6f: $ff
	rst  $38                                         ; $5d70: $ff
	db   $f4                                         ; $5d71: $f4
	ld   de, $1111                                   ; $5d72: $11 $11 $11
	dec  e                                           ; $5d75: $1d
	ld   a, [hl]                                     ; $5d76: $7e
	rst  $38                                         ; $5d77: $ff
	rst  $38                                         ; $5d78: $ff
	rst  $38                                         ; $5d79: $ff
	pop  af                                          ; $5d7a: $f1
	ld   de, $1111                                   ; $5d7b: $11 $11 $11
	rra                                              ; $5d7e: $1f
	rst  $38                                         ; $5d7f: $ff
	rst  $38                                         ; $5d80: $ff
	rst  $38                                         ; $5d81: $ff
	db   $fc                                         ; $5d82: $fc
	ld   de, $1111                                   ; $5d83: $11 $11 $11
	ld   de, $ffe4                                   ; $5d86: $11 $e4 $ff
	rst  $38                                         ; $5d89: $ff
	rst  $38                                         ; $5d8a: $ff
	ei                                               ; $5d8b: $fb
	ld   de, $1111                                   ; $5d8c: $11 $11 $11
	rla                                              ; $5d8f: $17
	rst  $38                                         ; $5d90: $ff
	rst  $38                                         ; $5d91: $ff
	rst  $38                                         ; $5d92: $ff
	rst  $38                                         ; $5d93: $ff
	ld   h, c                                        ; $5d94: $61
	ld   de, $1111                                   ; $5d95: $11 $11 $11
	ret                                              ; $5d98: $c9


	sbc  a                                           ; $5d99: $9f
	rst  $38                                         ; $5d9a: $ff
	rst  $38                                         ; $5d9b: $ff
	rst  $38                                         ; $5d9c: $ff
	ld   de, $1111                                   ; $5d9d: $11 $11 $11
	ld   de, $ffef                                   ; $5da0: $11 $ef $ff
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	pop  af                                          ; $5da5: $f1
	ld   de, $1111                                   ; $5da6: $11 $11 $11
	ld   e, $4f                                      ; $5da9: $1e $4f
	rst  $38                                         ; $5dab: $ff
	rst  $38                                         ; $5dac: $ff
	rst  $38                                         ; $5dad: $ff
	pop  af                                          ; $5dae: $f1
	ld   de, $1111                                   ; $5daf: $11 $11 $11
	ld   l, a                                        ; $5db2: $6f
	rst  $38                                         ; $5db3: $ff
	rst  $38                                         ; $5db4: $ff
	rst  $38                                         ; $5db5: $ff
	db   $fc                                         ; $5db6: $fc
	ld   de, $1111                                   ; $5db7: $11 $11 $11
	ld   [de], a                                     ; $5dba: $12
	push de                                          ; $5dbb: $d5
	rst  $38                                         ; $5dbc: $ff
	rst  $38                                         ; $5dbd: $ff
	rst  $38                                         ; $5dbe: $ff
	ld   sp, hl                                      ; $5dbf: $f9
	ld   de, $1111                                   ; $5dc0: $11 $11 $11
	add  hl, de                                      ; $5dc3: $19
	rst  $38                                         ; $5dc4: $ff
	rst  $38                                         ; $5dc5: $ff
	rst  $38                                         ; $5dc6: $ff
	rst  $38                                         ; $5dc7: $ff
	ld   [hl], c                                     ; $5dc8: $71
	ld   de, $1111                                   ; $5dc9: $11 $11 $11
	sbc  e                                           ; $5dcc: $9b
	adc  a                                           ; $5dcd: $8f
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	rst  $38                                         ; $5dd0: $ff
	ld   hl, $1111                                   ; $5dd1: $21 $11 $11
	ld   de, $ffef                                   ; $5dd4: $11 $ef $ff
	rst  $38                                         ; $5dd7: $ff
	rst  $38                                         ; $5dd8: $ff
	db   $f4                                         ; $5dd9: $f4
	ld   de, $1111                                   ; $5dda: $11 $11 $11
	dec  e                                           ; $5ddd: $1d
	sbc  e                                           ; $5dde: $9b
	rst  $38                                         ; $5ddf: $ff
	rst  $38                                         ; $5de0: $ff
	rst  $38                                         ; $5de1: $ff
	pop  af                                          ; $5de2: $f1
	ld   de, $1111                                   ; $5de3: $11 $11 $11
	cpl                                              ; $5de6: $2f
	rst  $38                                         ; $5de7: $ff
	rst  $38                                         ; $5de8: $ff
	rst  $38                                         ; $5de9: $ff
	rst  $38                                         ; $5dea: $ff
	ld   sp, $1111                                   ; $5deb: $31 $11 $11
	ld   de, $cfeb                                   ; $5dee: $11 $eb $cf
	rst  $38                                         ; $5df1: $ff
	rst  $38                                         ; $5df2: $ff
	rst  $38                                         ; $5df3: $ff
	ld   de, $1111                                   ; $5df4: $11 $11 $11
	ld   [de], a                                     ; $5df7: $12
	rst  $38                                         ; $5df8: $ff
	rst  $38                                         ; $5df9: $ff
	rst  $38                                         ; $5dfa: $ff
	rst  $38                                         ; $5dfb: $ff
	di                                               ; $5dfc: $f3
	ld   de, $1111                                   ; $5dfd: $11 $11 $11
	ld   e, $cc                                      ; $5e00: $1e $cc
	rst  $38                                         ; $5e02: $ff
	rst  $38                                         ; $5e03: $ff
	rst  $38                                         ; $5e04: $ff
	pop  af                                          ; $5e05: $f1
	ld   de, $1111                                   ; $5e06: $11 $11 $11
	rra                                              ; $5e09: $1f
	rst  $38                                         ; $5e0a: $ff
	rst  $38                                         ; $5e0b: $ff
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	ld   d, c                                        ; $5e0e: $51
	ld   de, $1111                                   ; $5e0f: $11 $11 $11
	adc  $af                                         ; $5e12: $ce $af
	rst  $38                                         ; $5e14: $ff
	rst  $38                                         ; $5e15: $ff
	rst  $38                                         ; $5e16: $ff
	ld   de, $1111                                   ; $5e17: $11 $11 $11
	ld   de, $ffff                                   ; $5e1a: $11 $ff $ff
	rst  $38                                         ; $5e1d: $ff
	rst  $38                                         ; $5e1e: $ff
	rst  $30                                         ; $5e1f: $f7
	ld   de, $1111                                   ; $5e20: $11 $11 $11
	rla                                              ; $5e23: $17
	ld   hl, sp-$01                                  ; $5e24: $f8 $ff
	rst  $38                                         ; $5e26: $ff
	rst  $38                                         ; $5e27: $ff
	or   $11                                         ; $5e28: $f6 $11
	ld   de, $1c11                                   ; $5e2a: $11 $11 $1c
	rst  $38                                         ; $5e2d: $ff
	rst  $38                                         ; $5e2e: $ff
	rst  $38                                         ; $5e2f: $ff
	rst  $38                                         ; $5e30: $ff
	or   c                                           ; $5e31: $b1
	ld   de, $1111                                   ; $5e32: $11 $11 $11
	rra                                              ; $5e35: $1f
	adc  a                                           ; $5e36: $8f
	rst  $38                                         ; $5e37: $ff
	rst  $38                                         ; $5e38: $ff
	rst  $38                                         ; $5e39: $ff
	pop  bc                                          ; $5e3a: $c1
	ld   de, $1111                                   ; $5e3b: $11 $11 $11
	ld   a, a                                        ; $5e3e: $7f
	rst  $38                                         ; $5e3f: $ff
	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	cp   $21                                         ; $5e42: $fe $21
	ld   de, $1111                                   ; $5e44: $11 $11 $11
	db   $fc                                         ; $5e47: $fc
	cp   a                                           ; $5e48: $bf
	rst  $38                                         ; $5e49: $ff
	rst  $38                                         ; $5e4a: $ff
	rst  $38                                         ; $5e4b: $ff
	ld   de, $1111                                   ; $5e4c: $11 $11 $11
	ld   [de], a                                     ; $5e4f: $12
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	rst  $38                                         ; $5e52: $ff
	rst  $38                                         ; $5e53: $ff
	rst  $30                                         ; $5e54: $f7
	ld   de, $1111                                   ; $5e55: $11 $11 $11
	rla                                              ; $5e58: $17
	rst  $30                                         ; $5e59: $f7
	rst  $38                                         ; $5e5a: $ff
	rst  $38                                         ; $5e5b: $ff
	rst  $38                                         ; $5e5c: $ff
	ld   hl, sp+$11                                  ; $5e5d: $f8 $11
	ld   de, $1a11                                   ; $5e5f: $11 $11 $1a
	rst  $38                                         ; $5e62: $ff
	rst  $38                                         ; $5e63: $ff
	rst  $38                                         ; $5e64: $ff
	rst  $38                                         ; $5e65: $ff
	pop  bc                                          ; $5e66: $c1
	ld   de, $1111                                   ; $5e67: $11 $11 $11
	rra                                              ; $5e6a: $1f
	cp   h                                           ; $5e6b: $bc
	rst  $38                                         ; $5e6c: $ff
	rst  $38                                         ; $5e6d: $ff
	rst  $38                                         ; $5e6e: $ff
	pop  af                                          ; $5e6f: $f1
	ld   de, $1111                                   ; $5e70: $11 $11 $11
	ccf                                              ; $5e73: $3f
	rst  $38                                         ; $5e74: $ff
	rst  $38                                         ; $5e75: $ff
	rst  $38                                         ; $5e76: $ff
	rst  $38                                         ; $5e77: $ff
	ld   [hl], c                                     ; $5e78: $71
	ld   de, $1111                                   ; $5e79: $11 $11 $11
	ld   e, a                                        ; $5e7c: $5f
	ld   l, a                                        ; $5e7d: $6f
	rst  $38                                         ; $5e7e: $ff
	rst  $38                                         ; $5e7f: $ff
	rst  $38                                         ; $5e80: $ff
	or   c                                           ; $5e81: $b1
	ld   de, $1111                                   ; $5e82: $11 $11 $11
	adc  a                                           ; $5e85: $8f
	rst  $38                                         ; $5e86: $ff
	rst  $38                                         ; $5e87: $ff
	rst  $38                                         ; $5e88: $ff
	rst  $38                                         ; $5e89: $ff
	ld   sp, $1111                                   ; $5e8a: $31 $11 $11
	ld   de, $8fcb                                   ; $5e8d: $11 $cb $8f
	rst  $38                                         ; $5e90: $ff
	rst  $38                                         ; $5e91: $ff
	rst  $38                                         ; $5e92: $ff
	ld   sp, $1111                                   ; $5e93: $31 $11 $11
	ld   de, $ffdf                                   ; $5e96: $11 $df $ff
	rst  $38                                         ; $5e99: $ff
	rst  $38                                         ; $5e9a: $ff
	ei                                               ; $5e9b: $fb
	ld   de, $1111                                   ; $5e9c: $11 $11 $11
	ld   de, $fff7                                   ; $5e9f: $11 $f7 $ff
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	cp   $11                                         ; $5ea4: $fe $11
	ld   de, $1511                                   ; $5ea6: $11 $11 $15
	rst  $38                                         ; $5ea9: $ff
	rst  $38                                         ; $5eaa: $ff
	rst  $38                                         ; $5eab: $ff
	rst  $38                                         ; $5eac: $ff
	or   $11                                         ; $5ead: $f6 $11
	ld   de, $1a11                                   ; $5eaf: $11 $11 $1a
	sub  $ff                                         ; $5eb2: $d6 $ff
	rst  $38                                         ; $5eb4: $ff
	rst  $38                                         ; $5eb5: $ff
	or   $11                                         ; $5eb6: $f6 $11
	ld   de, $1c11                                   ; $5eb8: $11 $11 $1c
	rst  $38                                         ; $5ebb: $ff
	rst  $38                                         ; $5ebc: $ff
	rst  $38                                         ; $5ebd: $ff
	rst  $38                                         ; $5ebe: $ff
	pop  de                                          ; $5ebf: $d1
	ld   de, $1111                                   ; $5ec0: $11 $11 $11
	rra                                              ; $5ec3: $1f
	xor  h                                           ; $5ec4: $ac
	rst  $38                                         ; $5ec5: $ff
	rst  $38                                         ; $5ec6: $ff
	rst  $38                                         ; $5ec7: $ff
	pop  af                                          ; $5ec8: $f1
	ld   de, $1111                                   ; $5ec9: $11 $11 $11
	ccf                                              ; $5ecc: $3f
	rst  $38                                         ; $5ecd: $ff
	rst  $38                                         ; $5ece: $ff
	rst  $38                                         ; $5ecf: $ff
	rst  $38                                         ; $5ed0: $ff
	add  c                                           ; $5ed1: $81
	ld   de, $1111                                   ; $5ed2: $11 $11 $11
	ld   a, [hl]                                     ; $5ed5: $7e
	ld   l, a                                        ; $5ed6: $6f
	rst  $38                                         ; $5ed7: $ff
	rst  $38                                         ; $5ed8: $ff
	rst  $38                                         ; $5ed9: $ff
	sub  c                                           ; $5eda: $91
	ld   de, $1111                                   ; $5edb: $11 $11 $11
	sbc  a                                           ; $5ede: $9f
	rst  $38                                         ; $5edf: $ff
	rst  $38                                         ; $5ee0: $ff
	rst  $38                                         ; $5ee1: $ff
	cp   $21                                         ; $5ee2: $fe $21
	ld   de, $1111                                   ; $5ee4: $11 $11 $11
	ld   a, [$ffbf]                                  ; $5ee7: $fa $bf $ff
	rst  $38                                         ; $5eea: $ff
	rst  $38                                         ; $5eeb: $ff
	ld   de, $1111                                   ; $5eec: $11 $11 $11
	ld   [de], a                                     ; $5eef: $12
	rst  $38                                         ; $5ef0: $ff
	rst  $38                                         ; $5ef1: $ff
	rst  $38                                         ; $5ef2: $ff
	rst  $38                                         ; $5ef3: $ff
	ld   sp, hl                                      ; $5ef4: $f9
	ld   de, $1111                                   ; $5ef5: $11 $11 $11
	inc  d                                           ; $5ef8: $14
	rst  $30                                         ; $5ef9: $f7
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	rst  $38                                         ; $5efc: $ff
	ei                                               ; $5efd: $fb
	ld   de, $1111                                   ; $5efe: $11 $11 $11
	add  hl, de                                      ; $5f01: $19
	rst  $38                                         ; $5f02: $ff
	rst  $38                                         ; $5f03: $ff
	rst  $38                                         ; $5f04: $ff
	rst  $38                                         ; $5f05: $ff
	db   $e4                                         ; $5f06: $e4
	ld   de, $1111                                   ; $5f07: $11 $11 $11
	dec  e                                           ; $5f0a: $1d
	jp   z, $ffff                                    ; $5f0b: $ca $ff $ff

	rst  $38                                         ; $5f0e: $ff
	ldh  a, [c]                                      ; $5f0f: $f2
	ld   de, $1111                                   ; $5f10: $11 $11 $11
	rra                                              ; $5f13: $1f
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	rst  $38                                         ; $5f16: $ff
	rst  $38                                         ; $5f17: $ff
	and  c                                           ; $5f18: $a1
	ld   de, $1111                                   ; $5f19: $11 $11 $11
	rra                                              ; $5f1c: $1f
	adc  a                                           ; $5f1d: $8f
	rst  $38                                         ; $5f1e: $ff
	rst  $38                                         ; $5f1f: $ff
	rst  $38                                         ; $5f20: $ff
	pop  de                                          ; $5f21: $d1
	ld   de, $1111                                   ; $5f22: $11 $11 $11
	ld   l, a                                        ; $5f25: $6f
	rst  $38                                         ; $5f26: $ff
	rst  $38                                         ; $5f27: $ff
	rst  $38                                         ; $5f28: $ff
	rst  $38                                         ; $5f29: $ff
	ld   d, c                                        ; $5f2a: $51
	ld   de, $1111                                   ; $5f2b: $11 $11 $11
	xor  l                                           ; $5f2e: $ad
	xor  a                                           ; $5f2f: $af
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
	rst  $38                                         ; $5f32: $ff
	ld   d, c                                        ; $5f33: $51
	ld   de, $1111                                   ; $5f34: $11 $11 $11
	rst  JumpTable                                         ; $5f37: $df
	rst  $38                                         ; $5f38: $ff
	rst  $38                                         ; $5f39: $ff
	rst  $38                                         ; $5f3a: $ff
	db   $fc                                         ; $5f3b: $fc
	ld   de, $1111                                   ; $5f3c: $11 $11 $11
	ld   de, $effb                                   ; $5f3f: $11 $fb $ef
	rst  $38                                         ; $5f42: $ff
	rst  $38                                         ; $5f43: $ff
	rst  $38                                         ; $5f44: $ff
	ld   de, $1111                                   ; $5f45: $11 $11 $11
	inc  de                                          ; $5f48: $13
	rst  $38                                         ; $5f49: $ff
	rst  $38                                         ; $5f4a: $ff
	rst  $38                                         ; $5f4b: $ff
	rst  $38                                         ; $5f4c: $ff
	ld   sp, hl                                      ; $5f4d: $f9
	ld   de, $1111                                   ; $5f4e: $11 $11 $11
	ld   [de], a                                     ; $5f51: $12
	ld   sp, hl                                      ; $5f52: $f9
	rst  $38                                         ; $5f53: $ff
	rst  $38                                         ; $5f54: $ff
	rst  $38                                         ; $5f55: $ff
	db   $fc                                         ; $5f56: $fc
	ld   de, $1111                                   ; $5f57: $11 $11 $11
	jr   @+$01                                       ; $5f5a: $18 $ff

	rst  $38                                         ; $5f5c: $ff
	rst  $38                                         ; $5f5d: $ff
	rst  $38                                         ; $5f5e: $ff
	push af                                          ; $5f5f: $f5
	ld   de, $1111                                   ; $5f60: $11 $11 $11
	ld   a, [de]                                     ; $5f63: $1a
	jp   hl                                          ; $5f64: $e9


	rst  $38                                         ; $5f65: $ff
	rst  $38                                         ; $5f66: $ff
	rst  $38                                         ; $5f67: $ff
	push af                                          ; $5f68: $f5
	ld   de, $1111                                   ; $5f69: $11 $11 $11
	inc  e                                           ; $5f6c: $1c
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	pop  bc                                          ; $5f71: $c1
	ld   de, $1111                                   ; $5f72: $11 $11 $11
	rra                                              ; $5f75: $1f
	xor  [hl]                                        ; $5f76: $ae
	rst  $38                                         ; $5f77: $ff
	rst  $38                                         ; $5f78: $ff
	rst  $38                                         ; $5f79: $ff
	pop  af                                          ; $5f7a: $f1
	ld   de, $1111                                   ; $5f7b: $11 $11 $11
	cpl                                              ; $5f7e: $2f
	rst  $38                                         ; $5f7f: $ff
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	rst  $38                                         ; $5f82: $ff
	sub  c                                           ; $5f83: $91
	ld   de, $1111                                   ; $5f84: $11 $11 $11
	rra                                              ; $5f87: $1f
	sbc  a                                           ; $5f88: $9f
	rst  $38                                         ; $5f89: $ff
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	pop  de                                          ; $5f8c: $d1
	ld   de, $1111                                   ; $5f8d: $11 $11 $11
	ld   a, a                                        ; $5f90: $7f
	rst  $38                                         ; $5f91: $ff
	rst  $38                                         ; $5f92: $ff
	rst  $38                                         ; $5f93: $ff
	rst  $38                                         ; $5f94: $ff
	ld   h, c                                        ; $5f95: $61
	ld   de, $1111                                   ; $5f96: $11 $11 $11
	xor  h                                           ; $5f99: $ac
	adc  a                                           ; $5f9a: $8f
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	rst  $38                                         ; $5f9d: $ff
	ld   h, c                                        ; $5f9e: $61
	ld   de, $1111                                   ; $5f9f: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fa2: $cf
	rst  $38                                         ; $5fa3: $ff
	rst  $38                                         ; $5fa4: $ff
	rst  $38                                         ; $5fa5: $ff
	cp   $21                                         ; $5fa6: $fe $21
	ld   de, $1111                                   ; $5fa8: $11 $11 $11
	jp   hl                                          ; $5fab: $e9


	rst  $28                                         ; $5fac: $ef
	rst  $38                                         ; $5fad: $ff
	rst  $38                                         ; $5fae: $ff
	rst  $38                                         ; $5faf: $ff
	ld   de, $1111                                   ; $5fb0: $11 $11 $11
	ld   de, $ffff                                   ; $5fb3: $11 $ff $ff
	rst  $38                                         ; $5fb6: $ff
	rst  $38                                         ; $5fb7: $ff
	ld   a, [$1111]                                  ; $5fb8: $fa $11 $11
	ld   de, $f811                                   ; $5fbb: $11 $11 $f8
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	rst  $38                                         ; $5fc0: $ff
	rst  $38                                         ; $5fc1: $ff
	ld   de, $1111                                   ; $5fc2: $11 $11 $11
	inc  d                                           ; $5fc5: $14
	rst  $38                                         ; $5fc6: $ff
	rst  $38                                         ; $5fc7: $ff
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	rst  $30                                         ; $5fca: $f7
	ld   de, $1111                                   ; $5fcb: $11 $11 $11
	inc  de                                          ; $5fce: $13
	ret  c                                           ; $5fcf: $d8

	rst  $38                                         ; $5fd0: $ff
	rst  $38                                         ; $5fd1: $ff
	rst  $38                                         ; $5fd2: $ff
	ei                                               ; $5fd3: $fb
	ld   de, $1111                                   ; $5fd4: $11 $11 $11
	rla                                              ; $5fd7: $17
	rst  $38                                         ; $5fd8: $ff
	rst  $38                                         ; $5fd9: $ff
	rst  $38                                         ; $5fda: $ff
	rst  $38                                         ; $5fdb: $ff
	push af                                          ; $5fdc: $f5
	ld   de, $1111                                   ; $5fdd: $11 $11 $11
	dec  d                                           ; $5fe0: $15
	ret  c                                           ; $5fe1: $d8

	rst  $38                                         ; $5fe2: $ff
	rst  $38                                         ; $5fe3: $ff
	rst  $38                                         ; $5fe4: $ff
	ld   sp, hl                                      ; $5fe5: $f9
	ld   de, $1111                                   ; $5fe6: $11 $11 $11
	add  hl, de                                      ; $5fe9: $19
	rst  $38                                         ; $5fea: $ff
	rst  $38                                         ; $5feb: $ff
	rst  $38                                         ; $5fec: $ff
	rst  $38                                         ; $5fed: $ff
	db   $f4                                         ; $5fee: $f4
	ld   de, $1111                                   ; $5fef: $11 $11 $11
	rla                                              ; $5ff2: $17
	cp   c                                           ; $5ff3: $b9
	rst  $38                                         ; $5ff4: $ff
	rst  $38                                         ; $5ff5: $ff
	rst  $38                                         ; $5ff6: $ff
	rst  $30                                         ; $5ff7: $f7
	ld   de, $1111                                   ; $5ff8: $11 $11 $11
	add  hl, de                                      ; $5ffb: $19
	rst  $38                                         ; $5ffc: $ff
	rst  $38                                         ; $5ffd: $ff
	rst  $38                                         ; $5ffe: $ff
	rst  $38                                         ; $5fff: $ff
	di                                               ; $6000: $f3
	ld   de, $1111                                   ; $6001: $11 $11 $11
	add  hl, de                                      ; $6004: $19
	xor  c                                           ; $6005: $a9
	rst  $38                                         ; $6006: $ff
	rst  $38                                         ; $6007: $ff
	rst  $38                                         ; $6008: $ff
	push af                                          ; $6009: $f5
	ld   de, $1111                                   ; $600a: $11 $11 $11
	add  hl, de                                      ; $600d: $19
	rst  $38                                         ; $600e: $ff
	rst  $38                                         ; $600f: $ff
	rst  $38                                         ; $6010: $ff
	rst  $38                                         ; $6011: $ff
	jp   nc, $1111                                   ; $6012: $d2 $11 $11

	ld   de, $9a17                                   ; $6015: $11 $17 $9a
	rst  $38                                         ; $6018: $ff
	rst  $38                                         ; $6019: $ff
	rst  $38                                         ; $601a: $ff
	db   $f4                                         ; $601b: $f4
	ld   de, $1111                                   ; $601c: $11 $11 $11
	add  hl, de                                      ; $601f: $19
	rst  $38                                         ; $6020: $ff
	rst  $38                                         ; $6021: $ff
	rst  $38                                         ; $6022: $ff
	rst  $38                                         ; $6023: $ff
	pop  hl                                          ; $6024: $e1
	ld   de, $1111                                   ; $6025: $11 $11 $11
	rla                                              ; $6028: $17
	adc  d                                           ; $6029: $8a
	rst  $38                                         ; $602a: $ff
	rst  $38                                         ; $602b: $ff
	rst  $38                                         ; $602c: $ff
	db   $f4                                         ; $602d: $f4
	ld   de, $1111                                   ; $602e: $11 $11 $11
	jr   @+$01                                       ; $6031: $18 $ff

	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	rst  $38                                         ; $6035: $ff
	ldh  [c], a                                      ; $6036: $e2
	ld   de, $1111                                   ; $6037: $11 $11 $11
	ld   d, $79                                      ; $603a: $16 $79
	rst  $38                                         ; $603c: $ff
	rst  $38                                         ; $603d: $ff
	rst  $38                                         ; $603e: $ff
	push af                                          ; $603f: $f5
	ld   de, $1111                                   ; $6040: $11 $11 $11
	rla                                              ; $6043: $17
	rst  $28                                         ; $6044: $ef
	rst  $38                                         ; $6045: $ff
	rst  $38                                         ; $6046: $ff
	rst  $38                                         ; $6047: $ff
	jp   nc, $1111                                   ; $6048: $d2 $11 $11

	ld   de, $7a15                                   ; $604b: $11 $15 $7a
	rst  $38                                         ; $604e: $ff
	rst  $38                                         ; $604f: $ff
	rst  $38                                         ; $6050: $ff
	push af                                          ; $6051: $f5
	ld   de, $1111                                   ; $6052: $11 $11 $11
	ld   d, $ef                                      ; $6055: $16 $ef
	rst  $38                                         ; $6057: $ff
	rst  $38                                         ; $6058: $ff
	rst  $38                                         ; $6059: $ff
	ldh  [c], a                                      ; $605a: $e2
	ld   de, $1111                                   ; $605b: $11 $11 $11
	inc  d                                           ; $605e: $14
	ld   l, b                                        ; $605f: $68
	rst  $38                                         ; $6060: $ff
	rst  $38                                         ; $6061: $ff
	rst  $38                                         ; $6062: $ff
	rst  $30                                         ; $6063: $f7
	ld   de, $1111                                   ; $6064: $11 $11 $11
	inc  d                                           ; $6067: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6068: $cf
	rst  $38                                         ; $6069: $ff
	rst  $38                                         ; $606a: $ff
	rst  $38                                         ; $606b: $ff
	db   $f4                                         ; $606c: $f4
	ld   de, $1111                                   ; $606d: $11 $11 $11
	ld   [de], a                                     ; $6070: $12
	ld   h, a                                        ; $6071: $67
	rst  $38                                         ; $6072: $ff
	rst  $38                                         ; $6073: $ff
	rst  $38                                         ; $6074: $ff
	ld   a, [$1111]                                  ; $6075: $fa $11 $11
	ld   de, $af11                                   ; $6078: $11 $11 $af
	rst  $38                                         ; $607b: $ff
	rst  $38                                         ; $607c: $ff
	rst  $38                                         ; $607d: $ff
	push af                                          ; $607e: $f5
	ld   de, $1111                                   ; $607f: $11 $11 $11
	ld   de, $ff45                                   ; $6082: $11 $45 $ff
	rst  $38                                         ; $6085: $ff
	rst  $38                                         ; $6086: $ff
	ei                                               ; $6087: $fb
	ld   de, $1111                                   ; $6088: $11 $11 $11
	ld   de, $ff7f                                   ; $608b: $11 $7f $ff
	rst  $38                                         ; $608e: $ff
	rst  $38                                         ; $608f: $ff
	rst  $30                                         ; $6090: $f7
	ld   de, $1111                                   ; $6091: $11 $11 $11
	ld   de, $ff23                                   ; $6094: $11 $23 $ff
	rst  $38                                         ; $6097: $ff
	rst  $38                                         ; $6098: $ff
	rst  $38                                         ; $6099: $ff
	ld   de, $1111                                   ; $609a: $11 $11 $11
	ld   de, $ff5f                                   ; $609d: $11 $5f $ff
	rst  $38                                         ; $60a0: $ff
	rst  $38                                         ; $60a1: $ff
	ld   sp, hl                                      ; $60a2: $f9
	ld   hl, $1111                                   ; $60a3: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $60a6: $11 $11 $ff
	rst  $38                                         ; $60a9: $ff
	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	ld   sp, $1111                                   ; $60ac: $31 $11 $11
	ld   de, $ff3f                                   ; $60af: $11 $3f $ff
	rst  $38                                         ; $60b2: $ff
	rst  $38                                         ; $60b3: $ff
	db   $fc                                         ; $60b4: $fc
	ld   d, c                                        ; $60b5: $51
	ld   de, $1111                                   ; $60b6: $11 $11 $11
	ld   de, $ffff                                   ; $60b9: $11 $ff $ff
	rst  $38                                         ; $60bc: $ff
	rst  $38                                         ; $60bd: $ff
	ld   [hl], c                                     ; $60be: $71
	ld   de, $1111                                   ; $60bf: $11 $11 $11
	inc  e                                           ; $60c2: $1c
	rst  $38                                         ; $60c3: $ff
	rst  $38                                         ; $60c4: $ff
	rst  $38                                         ; $60c5: $ff
	cp   $71                                         ; $60c6: $fe $71
	ld   de, $1111                                   ; $60c8: $11 $11 $11
	inc  de                                          ; $60cb: $13
	rst  $38                                         ; $60cc: $ff
	rst  $38                                         ; $60cd: $ff
	rst  $38                                         ; $60ce: $ff
	rst  $38                                         ; $60cf: $ff
	or   [hl]                                        ; $60d0: $b6
	ld   de, $1111                                   ; $60d1: $11 $11 $11
	add  hl, de                                      ; $60d4: $19
	rst  $38                                         ; $60d5: $ff
	rst  $38                                         ; $60d6: $ff
	rst  $38                                         ; $60d7: $ff
	db   $fd                                         ; $60d8: $fd
	ld   d, c                                        ; $60d9: $51
	ld   de, $1111                                   ; $60da: $11 $11 $11
	ld   l, $ff                                      ; $60dd: $2e $ff
	rst  $38                                         ; $60df: $ff
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	db   $e3                                         ; $60e2: $e3
	ld   de, $1111                                   ; $60e3: $11 $11 $11
	ld   e, b                                        ; $60e6: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60e7: $cf
	rst  $38                                         ; $60e8: $ff
	db   $fc                                         ; $60e9: $fc
	and  h                                           ; $60ea: $a4
	ld   de, $1111                                   ; $60eb: $11 $11 $11
	ld   de, $ff9e                                   ; $60ee: $11 $9e $ff
	rst  $38                                         ; $60f1: $ff
	rst  $38                                         ; $60f2: $ff
	db   $fc                                         ; $60f3: $fc
	cp   b                                           ; $60f4: $b8
	inc  sp                                          ; $60f5: $33
	ld   b, d                                        ; $60f6: $42
	ld   c, b                                        ; $60f7: $48
	xor  c                                           ; $60f8: $a9
	sub  a                                           ; $60f9: $97
	ld   hl, $4111                                   ; $60fa: $21 $11 $41
	inc  d                                           ; $60fd: $14
	add  l                                           ; $60fe: $85
	ld   a, [hl]                                     ; $60ff: $7e
	cp   $ff                                         ; $6100: $fe $ff
	cp   $da                                         ; $6102: $fe $da
	adc  c                                           ; $6104: $89
	add  l                                           ; $6105: $85
	ld   l, b                                        ; $6106: $68
	xor  c                                           ; $6107: $a9
	call z, $a5cc                                    ; $6108: $cc $cc $a5
	ld   de, $1111                                   ; $610b: $11 $11 $11
	ld   de, $8f65                                   ; $610e: $11 $65 $8f
	rst  $38                                         ; $6111: $ff
	rst  $38                                         ; $6112: $ff
	rst  $38                                         ; $6113: $ff
	db   $ec                                         ; $6114: $ec
	cp   d                                           ; $6115: $ba
	ld   h, h                                        ; $6116: $64
	ld   h, [hl]                                     ; $6117: $66
	ld   b, a                                        ; $6118: $47
	xor  b                                           ; $6119: $a8
	adc  b                                           ; $611a: $88
	ld   b, c                                        ; $611b: $41
	ld   de, $1211                                   ; $611c: $11 $11 $12
	ld   d, [hl]                                     ; $611f: $56
	ld   l, d                                        ; $6120: $6a
	db   $dd                                         ; $6121: $dd
	rst  $28                                         ; $6122: $ef
	db   $fd                                         ; $6123: $fd
	db   $dd                                         ; $6124: $dd
	db   $db                                         ; $6125: $db
	xor  d                                           ; $6126: $aa
	xor  d                                           ; $6127: $aa
	adc  b                                           ; $6128: $88
	sbc  b                                           ; $6129: $98
	ld   [hl], a                                     ; $612a: $77
	ld   h, c                                        ; $612b: $61
	ld   de, $1111                                   ; $612c: $11 $11 $11
	ld   b, l                                        ; $612f: $45
	ld   l, b                                        ; $6130: $68
	call $ffdf                                       ; $6131: $cd $df $ff
	xor  $cc                                         ; $6134: $ee $cc
	xor  d                                           ; $6136: $aa
	xor  c                                           ; $6137: $a9
	ld   [hl], a                                     ; $6138: $77
	adc  b                                           ; $6139: $88
	halt                                             ; $613a: $76
	ld   h, e                                        ; $613b: $63
	ld   [de], a                                     ; $613c: $12
	ld   b, e                                        ; $613d: $43
	ld   [de], a                                     ; $613e: $12
	ld   d, l                                        ; $613f: $55
	ld   e, b                                        ; $6140: $58
	sbc  d                                           ; $6141: $9a
	call $dede                                       ; $6142: $cd $de $de
	call $a9ba                                       ; $6145: $cd $ba $a9
	add  a                                           ; $6148: $87
	ld   [hl], a                                     ; $6149: $77
	ld   h, [hl]                                     ; $614a: $66
	ld   [hl], l                                     ; $614b: $75
	ld   b, l                                        ; $614c: $45
	ld   h, l                                        ; $614d: $65
	ld   d, l                                        ; $614e: $55
	ld   d, [hl]                                     ; $614f: $56
	ld   h, [hl]                                     ; $6150: $66
	ld   a, b                                        ; $6151: $78
	adc  b                                           ; $6152: $88
	sbc  e                                           ; $6153: $9b
	cp   e                                           ; $6154: $bb
	xor  d                                           ; $6155: $aa
	cp   d                                           ; $6156: $ba
	xor  d                                           ; $6157: $aa
	sbc  c                                           ; $6158: $99
	adc  c                                           ; $6159: $89
	adc  c                                           ; $615a: $89
	sbc  c                                           ; $615b: $99
	add  a                                           ; $615c: $87
	ld   [hl], a                                     ; $615d: $77
	ld   [hl], a                                     ; $615e: $77
	halt                                             ; $615f: $76
	ld   h, [hl]                                     ; $6160: $66
	ld   h, [hl]                                     ; $6161: $66
	ld   h, [hl]                                     ; $6162: $66
	ld   [hl], a                                     ; $6163: $77
	ld   a, b                                        ; $6164: $78
	adc  b                                           ; $6165: $88
	adc  b                                           ; $6166: $88
	adc  c                                           ; $6167: $89
	sbc  c                                           ; $6168: $99
	sbc  c                                           ; $6169: $99
	sbc  d                                           ; $616a: $9a
	sbc  c                                           ; $616b: $99
	sbc  c                                           ; $616c: $99
	sbc  c                                           ; $616d: $99
	xor  c                                           ; $616e: $a9
	sbc  c                                           ; $616f: $99
	add  a                                           ; $6170: $87
	ld   [hl], a                                     ; $6171: $77
	ld   h, [hl]                                     ; $6172: $66
	ld   h, [hl]                                     ; $6173: $66
	ld   h, [hl]                                     ; $6174: $66
	ld   h, [hl]                                     ; $6175: $66
	ld   h, [hl]                                     ; $6176: $66
	ld   [hl], a                                     ; $6177: $77
	ld   [hl], a                                     ; $6178: $77
	adc  b                                           ; $6179: $88
	adc  c                                           ; $617a: $89
	sbc  b                                           ; $617b: $98
	sbc  c                                           ; $617c: $99
	sbc  d                                           ; $617d: $9a
	sbc  d                                           ; $617e: $9a
	xor  d                                           ; $617f: $aa
	xor  d                                           ; $6180: $aa
	sbc  d                                           ; $6181: $9a
	sbc  b                                           ; $6182: $98
	adc  b                                           ; $6183: $88
	ld   [hl], a                                     ; $6184: $77
	ld   [hl], a                                     ; $6185: $77
	ld   h, [hl]                                     ; $6186: $66
	ld   h, [hl]                                     ; $6187: $66
	ld   h, [hl]                                     ; $6188: $66
	ld   h, a                                        ; $6189: $67
	ld   [hl], a                                     ; $618a: $77
	ld   [hl], a                                     ; $618b: $77
	ld   [hl], a                                     ; $618c: $77
	adc  b                                           ; $618d: $88
	adc  c                                           ; $618e: $89
	adc  c                                           ; $618f: $89
	sbc  c                                           ; $6190: $99
	xor  d                                           ; $6191: $aa
	sbc  c                                           ; $6192: $99
	xor  d                                           ; $6193: $aa
	sbc  c                                           ; $6194: $99
	sbc  b                                           ; $6195: $98
	sbc  b                                           ; $6196: $98
	adc  b                                           ; $6197: $88
	ld   [hl], a                                     ; $6198: $77
	ld   [hl], a                                     ; $6199: $77
	ld   [hl], a                                     ; $619a: $77
	ld   [hl], a                                     ; $619b: $77
	ld   [hl], a                                     ; $619c: $77
	ld   [hl], a                                     ; $619d: $77
	ld   [hl], a                                     ; $619e: $77
	ld   [hl], a                                     ; $619f: $77
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	sbc  b                                           ; $61a2: $98
	adc  b                                           ; $61a3: $88
	sbc  c                                           ; $61a4: $99
	sbc  c                                           ; $61a5: $99
	sbc  c                                           ; $61a6: $99
	adc  b                                           ; $61a7: $88
	adc  b                                           ; $61a8: $88
	sbc  c                                           ; $61a9: $99
	sbc  b                                           ; $61aa: $98
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	ld   [hl], a                                     ; $61ad: $77
	ld   [hl], a                                     ; $61ae: $77
	ld   [hl], a                                     ; $61af: $77
	ld   [hl], a                                     ; $61b0: $77
	ld   [hl], a                                     ; $61b1: $77
	ld   [hl], a                                     ; $61b2: $77
	ld   a, b                                        ; $61b3: $78
	adc  b                                           ; $61b4: $88
	adc  b                                           ; $61b5: $88
	sbc  c                                           ; $61b6: $99
	sbc  c                                           ; $61b7: $99
	sbc  c                                           ; $61b8: $99
	sbc  c                                           ; $61b9: $99
	sbc  c                                           ; $61ba: $99
	sbc  c                                           ; $61bb: $99
	sbc  c                                           ; $61bc: $99
	sbc  c                                           ; $61bd: $99
	adc  b                                           ; $61be: $88
	adc  b                                           ; $61bf: $88
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	ld   [hl], a                                     ; $61c2: $77
	ld   [hl], a                                     ; $61c3: $77
	ld   [hl], a                                     ; $61c4: $77
	ld   a, b                                        ; $61c5: $78
	add  a                                           ; $61c6: $87
	adc  b                                           ; $61c7: $88
	adc  b                                           ; $61c8: $88
	adc  b                                           ; $61c9: $88
	adc  b                                           ; $61ca: $88
	adc  b                                           ; $61cb: $88
	adc  c                                           ; $61cc: $89
	sbc  c                                           ; $61cd: $99
	sbc  c                                           ; $61ce: $99
	sbc  c                                           ; $61cf: $99
	adc  c                                           ; $61d0: $89
	adc  b                                           ; $61d1: $88
	adc  b                                           ; $61d2: $88
	adc  b                                           ; $61d3: $88
	adc  b                                           ; $61d4: $88
	adc  b                                           ; $61d5: $88
	adc  b                                           ; $61d6: $88
	adc  b                                           ; $61d7: $88
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88
	adc  b                                           ; $61da: $88
	adc  b                                           ; $61db: $88
	adc  b                                           ; $61dc: $88
	adc  b                                           ; $61dd: $88
	adc  b                                           ; $61de: $88
	adc  b                                           ; $61df: $88
	adc  b                                           ; $61e0: $88
	adc  b                                           ; $61e1: $88
	adc  b                                           ; $61e2: $88
	adc  b                                           ; $61e3: $88
	adc  b                                           ; $61e4: $88
	adc  b                                           ; $61e5: $88
	adc  b                                           ; $61e6: $88
	adc  b                                           ; $61e7: $88
	adc  b                                           ; $61e8: $88
	adc  b                                           ; $61e9: $88
	adc  b                                           ; $61ea: $88
	adc  b                                           ; $61eb: $88
	adc  b                                           ; $61ec: $88
	adc  b                                           ; $61ed: $88
	adc  b                                           ; $61ee: $88
	adc  b                                           ; $61ef: $88
	adc  b                                           ; $61f0: $88
	adc  b                                           ; $61f1: $88
	adc  b                                           ; $61f2: $88
	adc  b                                           ; $61f3: $88
	adc  b                                           ; $61f4: $88
	adc  b                                           ; $61f5: $88
	adc  b                                           ; $61f6: $88
	adc  b                                           ; $61f7: $88
	adc  b                                           ; $61f8: $88
	adc  b                                           ; $61f9: $88
	adc  b                                           ; $61fa: $88
	adc  b                                           ; $61fb: $88
	adc  b                                           ; $61fc: $88
	adc  b                                           ; $61fd: $88
	adc  b                                           ; $61fe: $88
	adc  b                                           ; $61ff: $88
	adc  b                                           ; $6200: $88
	adc  b                                           ; $6201: $88
	adc  b                                           ; $6202: $88
	adc  b                                           ; $6203: $88
	adc  b                                           ; $6204: $88
	adc  b                                           ; $6205: $88
	adc  b                                           ; $6206: $88
	adc  b                                           ; $6207: $88
	adc  b                                           ; $6208: $88
	adc  b                                           ; $6209: $88
	adc  b                                           ; $620a: $88
	adc  b                                           ; $620b: $88
	adc  b                                           ; $620c: $88
	adc  b                                           ; $620d: $88
	adc  b                                           ; $620e: $88
	adc  b                                           ; $620f: $88
	adc  b                                           ; $6210: $88
	adc  b                                           ; $6211: $88
	adc  b                                           ; $6212: $88
	adc  b                                           ; $6213: $88
	adc  b                                           ; $6214: $88
	adc  b                                           ; $6215: $88
	adc  b                                           ; $6216: $88
	adc  b                                           ; $6217: $88
	adc  b                                           ; $6218: $88
	adc  b                                           ; $6219: $88
	adc  b                                           ; $621a: $88
	adc  b                                           ; $621b: $88
	adc  b                                           ; $621c: $88
	adc  b                                           ; $621d: $88
	adc  b                                           ; $621e: $88
	adc  b                                           ; $621f: $88
	adc  b                                           ; $6220: $88
	adc  b                                           ; $6221: $88
	adc  b                                           ; $6222: $88
	adc  b                                           ; $6223: $88
	adc  b                                           ; $6224: $88
	adc  b                                           ; $6225: $88
	adc  b                                           ; $6226: $88
	adc  b                                           ; $6227: $88
	adc  b                                           ; $6228: $88
	adc  b                                           ; $6229: $88
	adc  b                                           ; $622a: $88
	adc  b                                           ; $622b: $88
	adc  b                                           ; $622c: $88
	adc  b                                           ; $622d: $88
	adc  b                                           ; $622e: $88
	adc  b                                           ; $622f: $88
	adc  b                                           ; $6230: $88
	adc  b                                           ; $6231: $88
	adc  b                                           ; $6232: $88
	adc  b                                           ; $6233: $88
	adc  b                                           ; $6234: $88
	adc  b                                           ; $6235: $88
	adc  b                                           ; $6236: $88
	adc  b                                           ; $6237: $88
	adc  b                                           ; $6238: $88
	adc  b                                           ; $6239: $88
	adc  b                                           ; $623a: $88
	adc  b                                           ; $623b: $88
	adc  b                                           ; $623c: $88
	adc  b                                           ; $623d: $88
	adc  b                                           ; $623e: $88
	adc  b                                           ; $623f: $88
	adc  b                                           ; $6240: $88
	adc  b                                           ; $6241: $88
	adc  b                                           ; $6242: $88
	adc  b                                           ; $6243: $88
	adc  b                                           ; $6244: $88
	adc  b                                           ; $6245: $88
	adc  b                                           ; $6246: $88
	adc  b                                           ; $6247: $88
	adc  b                                           ; $6248: $88
	adc  b                                           ; $6249: $88
	adc  b                                           ; $624a: $88
	adc  b                                           ; $624b: $88
	adc  b                                           ; $624c: $88
	adc  b                                           ; $624d: $88
	adc  b                                           ; $624e: $88
	adc  b                                           ; $624f: $88
	adc  b                                           ; $6250: $88
	adc  b                                           ; $6251: $88
	adc  b                                           ; $6252: $88
	adc  b                                           ; $6253: $88
	adc  b                                           ; $6254: $88
	adc  b                                           ; $6255: $88
	adc  b                                           ; $6256: $88
	adc  b                                           ; $6257: $88
	adc  b                                           ; $6258: $88
	adc  b                                           ; $6259: $88
	adc  b                                           ; $625a: $88
	adc  b                                           ; $625b: $88
	adc  b                                           ; $625c: $88
	adc  b                                           ; $625d: $88
	adc  b                                           ; $625e: $88
	adc  b                                           ; $625f: $88
	adc  b                                           ; $6260: $88
	adc  b                                           ; $6261: $88
	adc  b                                           ; $6262: $88
	adc  b                                           ; $6263: $88
	adc  b                                           ; $6264: $88
	adc  b                                           ; $6265: $88
	adc  b                                           ; $6266: $88
	adc  b                                           ; $6267: $88
	adc  b                                           ; $6268: $88
	adc  b                                           ; $6269: $88
	adc  b                                           ; $626a: $88
	adc  b                                           ; $626b: $88
	adc  b                                           ; $626c: $88
	adc  b                                           ; $626d: $88
	adc  b                                           ; $626e: $88
	adc  b                                           ; $626f: $88
	adc  b                                           ; $6270: $88
	adc  b                                           ; $6271: $88
	adc  b                                           ; $6272: $88
	adc  b                                           ; $6273: $88
	adc  b                                           ; $6274: $88
	adc  b                                           ; $6275: $88
	adc  b                                           ; $6276: $88
	adc  b                                           ; $6277: $88
	adc  b                                           ; $6278: $88
	adc  b                                           ; $6279: $88
	adc  b                                           ; $627a: $88
	adc  b                                           ; $627b: $88
	adc  b                                           ; $627c: $88
	adc  b                                           ; $627d: $88
	adc  b                                           ; $627e: $88
	adc  b                                           ; $627f: $88
	adc  b                                           ; $6280: $88
	adc  b                                           ; $6281: $88
	adc  b                                           ; $6282: $88
	adc  b                                           ; $6283: $88
	adc  b                                           ; $6284: $88
	adc  b                                           ; $6285: $88
	adc  b                                           ; $6286: $88
	adc  b                                           ; $6287: $88
	adc  b                                           ; $6288: $88
	adc  b                                           ; $6289: $88
	adc  b                                           ; $628a: $88
	adc  b                                           ; $628b: $88
	adc  b                                           ; $628c: $88
	adc  b                                           ; $628d: $88
	adc  b                                           ; $628e: $88
	adc  b                                           ; $628f: $88
	adc  b                                           ; $6290: $88
	adc  b                                           ; $6291: $88
	adc  b                                           ; $6292: $88
	adc  b                                           ; $6293: $88
	adc  b                                           ; $6294: $88
	adc  b                                           ; $6295: $88
	adc  b                                           ; $6296: $88
	adc  b                                           ; $6297: $88
	adc  b                                           ; $6298: $88
	adc  b                                           ; $6299: $88
	adc  b                                           ; $629a: $88
	adc  b                                           ; $629b: $88
	adc  b                                           ; $629c: $88
	adc  b                                           ; $629d: $88
	adc  b                                           ; $629e: $88
	adc  b                                           ; $629f: $88
	adc  b                                           ; $62a0: $88
	adc  b                                           ; $62a1: $88
	adc  b                                           ; $62a2: $88
	adc  b                                           ; $62a3: $88
	adc  b                                           ; $62a4: $88
	adc  b                                           ; $62a5: $88
	adc  b                                           ; $62a6: $88
	adc  b                                           ; $62a7: $88
	adc  b                                           ; $62a8: $88
	adc  b                                           ; $62a9: $88
	adc  b                                           ; $62aa: $88
	adc  b                                           ; $62ab: $88
	adc  b                                           ; $62ac: $88
	adc  b                                           ; $62ad: $88
	adc  b                                           ; $62ae: $88
	adc  b                                           ; $62af: $88
	adc  b                                           ; $62b0: $88
	adc  b                                           ; $62b1: $88
	adc  b                                           ; $62b2: $88
	adc  b                                           ; $62b3: $88
	adc  b                                           ; $62b4: $88
	adc  b                                           ; $62b5: $88
	adc  b                                           ; $62b6: $88
	adc  b                                           ; $62b7: $88
	adc  b                                           ; $62b8: $88
	adc  b                                           ; $62b9: $88
	adc  b                                           ; $62ba: $88
	adc  b                                           ; $62bb: $88
	adc  b                                           ; $62bc: $88
	adc  b                                           ; $62bd: $88
	adc  b                                           ; $62be: $88
	adc  b                                           ; $62bf: $88
	adc  b                                           ; $62c0: $88
	adc  b                                           ; $62c1: $88
	adc  b                                           ; $62c2: $88
	adc  b                                           ; $62c3: $88
	adc  b                                           ; $62c4: $88
	adc  b                                           ; $62c5: $88
	adc  b                                           ; $62c6: $88
	adc  b                                           ; $62c7: $88
	adc  b                                           ; $62c8: $88
	adc  b                                           ; $62c9: $88
	adc  b                                           ; $62ca: $88
	adc  b                                           ; $62cb: $88
	adc  b                                           ; $62cc: $88
	adc  b                                           ; $62cd: $88
	adc  b                                           ; $62ce: $88
	adc  b                                           ; $62cf: $88
	adc  b                                           ; $62d0: $88
	adc  b                                           ; $62d1: $88
	adc  b                                           ; $62d2: $88
	adc  b                                           ; $62d3: $88
	adc  b                                           ; $62d4: $88
	adc  b                                           ; $62d5: $88
	adc  b                                           ; $62d6: $88
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	adc  b                                           ; $62d9: $88
	adc  b                                           ; $62da: $88
	adc  b                                           ; $62db: $88
	adc  b                                           ; $62dc: $88
	adc  b                                           ; $62dd: $88
	adc  c                                           ; $62de: $89
	sub  a                                           ; $62df: $97
	ld   a, c                                        ; $62e0: $79
	adc  b                                           ; $62e1: $88
	ld   a, b                                        ; $62e2: $78
	sbc  c                                           ; $62e3: $99
	ld   [hl], a                                     ; $62e4: $77
	sbc  c                                           ; $62e5: $99
	adc  b                                           ; $62e6: $88
	adc  b                                           ; $62e7: $88
	adc  b                                           ; $62e8: $88
	add  a                                           ; $62e9: $87
	adc  c                                           ; $62ea: $89
	sbc  c                                           ; $62eb: $99
	adc  b                                           ; $62ec: $88
	sbc  b                                           ; $62ed: $98
	adc  c                                           ; $62ee: $89
	xor  b                                           ; $62ef: $a8
	ld   [hl], a                                     ; $62f0: $77
	ld   a, b                                        ; $62f1: $78
	sbc  b                                           ; $62f2: $98
	halt                                             ; $62f3: $76
	ld   a, b                                        ; $62f4: $78
	sbc  c                                           ; $62f5: $99
	ld   [hl], a                                     ; $62f6: $77
	sbc  c                                           ; $62f7: $99
	adc  c                                           ; $62f8: $89
	add  a                                           ; $62f9: $87
	adc  b                                           ; $62fa: $88
	adc  b                                           ; $62fb: $88
	adc  b                                           ; $62fc: $88
	add  a                                           ; $62fd: $87
	ld   a, b                                        ; $62fe: $78
	add  a                                           ; $62ff: $87
	ld   l, b                                        ; $6300: $68
	adc  c                                           ; $6301: $89
	add  a                                           ; $6302: $87
	adc  c                                           ; $6303: $89
	cp   d                                           ; $6304: $ba
	sbc  c                                           ; $6305: $99
	sbc  c                                           ; $6306: $99
	add  [hl]                                        ; $6307: $86
	ld   l, b                                        ; $6308: $68
	sbc  d                                           ; $6309: $9a
	ld   [hl], l                                     ; $630a: $75
	ld   d, a                                        ; $630b: $57
	xor  d                                           ; $630c: $aa
	ld   [hl], a                                     ; $630d: $77
	ld   a, b                                        ; $630e: $78
	sub  [hl]                                        ; $630f: $96
	ld   h, a                                        ; $6310: $67
	ld   h, a                                        ; $6311: $67
	halt                                             ; $6312: $76
	adc  b                                           ; $6313: $88
	ld   h, [hl]                                     ; $6314: $66
	ld   a, b                                        ; $6315: $78
	add  a                                           ; $6316: $87
	sbc  b                                           ; $6317: $98
	ld   a, b                                        ; $6318: $78
	sbc  c                                           ; $6319: $99
	ld   a, b                                        ; $631a: $78
	sbc  b                                           ; $631b: $98
	add  a                                           ; $631c: $87
	ld   a, c                                        ; $631d: $79
	add  [hl]                                        ; $631e: $86
	ld   a, c                                        ; $631f: $79
	sub  a                                           ; $6320: $97
	ld   l, b                                        ; $6321: $68
	adc  b                                           ; $6322: $88
	add  [hl]                                        ; $6323: $86
	ld   a, c                                        ; $6324: $79
	sbc  b                                           ; $6325: $98
	ld   h, a                                        ; $6326: $67
	add  a                                           ; $6327: $87
	ld   l, b                                        ; $6328: $68
	sub  a                                           ; $6329: $97
	adc  c                                           ; $632a: $89
	adc  c                                           ; $632b: $89
	sub  a                                           ; $632c: $97
	ld   a, c                                        ; $632d: $79
	sbc  d                                           ; $632e: $9a
	cp   b                                           ; $632f: $b8
	ld   h, a                                        ; $6330: $67
	add  a                                           ; $6331: $87
	ld   h, l                                        ; $6332: $65
	ld   a, b                                        ; $6333: $78
	ld   h, [hl]                                     ; $6334: $66
	adc  c                                           ; $6335: $89
	add  [hl]                                        ; $6336: $86
	ld   l, d                                        ; $6337: $6a
	or   a                                           ; $6338: $b7
	ld   h, [hl]                                     ; $6339: $66
	ld   [hl], a                                     ; $633a: $77
	ld   b, l                                        ; $633b: $45
	ld   [hl], a                                     ; $633c: $77
	sub  a                                           ; $633d: $97
	ld   c, b                                        ; $633e: $48
	rst  ToBoot                                         ; $633f: $c7
	ld   d, a                                        ; $6340: $57
	ld   a, c                                        ; $6341: $79
	add  h                                           ; $6342: $84
	ld   c, b                                        ; $6343: $48
	add  [hl]                                        ; $6344: $86
	ld   h, a                                        ; $6345: $67
	xor  h                                           ; $6346: $ac
	sbc  c                                           ; $6347: $99
	xor  c                                           ; $6348: $a9
	db   $db                                         ; $6349: $db
	ld   a, b                                        ; $634a: $78
	xor  c                                           ; $634b: $a9
	ld   h, l                                        ; $634c: $65
	ld   h, l                                        ; $634d: $65
	inc  [hl]                                        ; $634e: $34
	ld   d, [hl]                                     ; $634f: $56
	ld   b, d                                        ; $6350: $42
	ld   l, c                                        ; $6351: $69
	ld   l, c                                        ; $6352: $69
	jp   z, $efbd                                    ; $6353: $ca $bd $ef

	db   $fd                                         ; $6356: $fd
	db   $dd                                         ; $6357: $dd
	sbc  c                                           ; $6358: $99
	sub  l                                           ; $6359: $95
	ld   b, l                                        ; $635a: $45
	ld   hl, $1211                                   ; $635b: $21 $11 $12
	ld   d, l                                        ; $635e: $55
	xor  l                                           ; $635f: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6360: $cf
	rst  $38                                         ; $6361: $ff
	rst  $28                                         ; $6362: $ef
	cp   $fd                                         ; $6363: $fe $fd
	sbc  b                                           ; $6365: $98
	ld   [hl], c                                     ; $6366: $71
	inc  de                                          ; $6367: $13
	ld   de, $2511                                   ; $6368: $11 $11 $25
	ld   h, a                                        ; $636b: $67
	rst  JumpTable                                         ; $636c: $df
	rst  $38                                         ; $636d: $ff
	rst  $38                                         ; $636e: $ff
	rst  $38                                         ; $636f: $ff
	ei                                               ; $6370: $fb
	ld   a, [$1158]                                  ; $6371: $fa $58 $11
	ld   sp, $1511                                   ; $6374: $31 $11 $15
	ld   h, a                                        ; $6377: $67
	rst  $28                                         ; $6378: $ef
	rst  $28                                         ; $6379: $ef
	cp   $bf                                         ; $637a: $fe $bf
	db   $fd                                         ; $637c: $fd
	cp   $34                                         ; $637d: $fe $34
	ld   b, c                                        ; $637f: $41
	ld   de, $1111                                   ; $6380: $11 $11 $11
	ld   c, l                                        ; $6383: $4d
	rst  $38                                         ; $6384: $ff
	rst  $38                                         ; $6385: $ff
	rst  $38                                         ; $6386: $ff
	cp   a                                           ; $6387: $bf
	db   $fd                                         ; $6388: $fd
	ld   a, [$2113]                                  ; $6389: $fa $13 $21
	ld   de, $3311                                   ; $638c: $11 $11 $33
	cp   a                                           ; $638f: $bf
	sbc  $ff                                         ; $6390: $de $ff
	ld   a, a                                        ; $6392: $7f
	set  7, a                                        ; $6393: $cb $ff
	sub  h                                           ; $6395: $94
	ld   b, c                                        ; $6396: $41
	ld   de, $1111                                   ; $6397: $11 $11 $11
	adc  l                                           ; $639a: $8d
	rst  $38                                         ; $639b: $ff
	rst  $38                                         ; $639c: $ff
	cp   $cc                                         ; $639d: $fe $cc
	sbc  a                                           ; $639f: $9f
	ei                                               ; $63a0: $fb
	ld   sp, $1111                                   ; $63a1: $31 $11 $11
	ld   de, $bf7f                                   ; $63a4: $11 $7f $bf
	rst  $38                                         ; $63a7: $ff
	rst  $38                                         ; $63a8: $ff
	or   d                                           ; $63a9: $b2
	rst  $38                                         ; $63aa: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63ab: $cf
	pop  de                                          ; $63ac: $d1
	ld   de, $1111                                   ; $63ad: $11 $11 $11
	ld   a, [de]                                     ; $63b0: $1a
	rst  $38                                         ; $63b1: $ff
	rst  $38                                         ; $63b2: $ff
	rst  $28                                         ; $63b3: $ef
	rst  $30                                         ; $63b4: $f7
	ld   e, a                                        ; $63b5: $5f
	ei                                               ; $63b6: $fb
	ld   [hl], l                                     ; $63b7: $75
	ld   de, $1111                                   ; $63b8: $11 $11 $11
	cpl                                              ; $63bb: $2f
	rst  $38                                         ; $63bc: $ff
	rst  $38                                         ; $63bd: $ff
	rst  $38                                         ; $63be: $ff
	and  l                                           ; $63bf: $a5
	rst  JumpTable                                         ; $63c0: $df
	rst  $38                                         ; $63c1: $ff
	ld   d, h                                        ; $63c2: $54
	ld   de, $1111                                   ; $63c3: $11 $11 $11
	xor  e                                           ; $63c6: $ab
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	ldh  a, [c]                                      ; $63c9: $f2
	xor  $4f                                         ; $63ca: $ee $4f
	ld   sp, hl                                      ; $63cc: $f9
	ld   d, c                                        ; $63cd: $51
	ld   de, $1111                                   ; $63ce: $11 $11 $11
	xor  a                                           ; $63d1: $af
	rst  $38                                         ; $63d2: $ff
	cp   $fc                                         ; $63d3: $fe $fc
	ld   a, c                                        ; $63d5: $79
	rst  $38                                         ; $63d6: $ff
	or   $11                                         ; $63d7: $f6 $11
	ld   de, $1511                                   ; $63d9: $11 $11 $15
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	ld   hl, sp+$67                                  ; $63de: $f8 $67
	adc  a                                           ; $63e0: $8f
	rst  $38                                         ; $63e1: $ff
	or   c                                           ; $63e2: $b1
	ld   de, $1111                                   ; $63e3: $11 $11 $11
	cpl                                              ; $63e6: $2f
	rst  $38                                         ; $63e7: $ff
	rst  $38                                         ; $63e8: $ff
	ld   e, e                                        ; $63e9: $5b
	add  $df                                         ; $63ea: $c6 $df
	cp   $11                                         ; $63ec: $fe $11
	ld   de, $1411                                   ; $63ee: $11 $11 $14
	rst  $38                                         ; $63f1: $ff
	rst  $38                                         ; $63f2: $ff
	sbc  l                                           ; $63f3: $9d
	or   [hl]                                        ; $63f4: $b6
	xor  $ff                                         ; $63f5: $ee $ff
	and  c                                           ; $63f7: $a1
	ld   de, $1114                                   ; $63f8: $11 $14 $11
	rst  JumpTable                                         ; $63fb: $df
	rst  $38                                         ; $63fc: $ff
	rst  $30                                         ; $63fd: $f7
	rst  JumpTable                                         ; $63fe: $df
	adc  d                                           ; $63ff: $8a
	rst  $38                                         ; $6400: $ff
	ei                                               ; $6401: $fb
	ld   de, $1111                                   ; $6402: $11 $11 $11
	ld   d, $ff                                      ; $6405: $16 $ff
	rst  $38                                         ; $6407: $ff
	sub  $75                                         ; $6408: $d6 $75
	ld   l, a                                        ; $640a: $6f
	rst  $38                                         ; $640b: $ff
	ld   d, c                                        ; $640c: $51
	ld   de, $1111                                   ; $640d: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6410: $cf
	rst  $38                                         ; $6411: $ff
	ld   hl, sp+$46                                  ; $6412: $f8 $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6414: $cf
	rst  $38                                         ; $6415: $ff
	ld   b, c                                        ; $6416: $41
	ld   de, $1111                                   ; $6417: $11 $11 $11
	xor  a                                           ; $641a: $af
	rst  $38                                         ; $641b: $ff
	ld   a, [$9d8b]                                  ; $641c: $fa $8b $9d
	rst  $38                                         ; $641f: $ff
	pop  hl                                          ; $6420: $e1
	ld   de, $1111                                   ; $6421: $11 $11 $11
	ld   c, a                                        ; $6424: $4f
	rst  $38                                         ; $6425: $ff
	cp   $ca                                         ; $6426: $fe $ca
	cp   h                                           ; $6428: $bc
	rst  $38                                         ; $6429: $ff
	pop  hl                                          ; $642a: $e1
	ld   de, $1111                                   ; $642b: $11 $11 $11
	xor  l                                           ; $642e: $ad
	rst  $38                                         ; $642f: $ff
	rst  $38                                         ; $6430: $ff
	push af                                          ; $6431: $f5
	rra                                              ; $6432: $1f
	cp   $e1                                         ; $6433: $fe $e1
	ld   de, $1111                                   ; $6435: $11 $11 $11
	cpl                                              ; $6438: $2f
	rst  $38                                         ; $6439: $ff
	rst  $38                                         ; $643a: $ff
	db   $fc                                         ; $643b: $fc
	ld   d, $df                                      ; $643c: $16 $df
	push af                                          ; $643e: $f5
	ld   de, $5111                                   ; $643f: $11 $11 $51
	rra                                              ; $6442: $1f
	rst  $38                                         ; $6443: $ff
	rst  $38                                         ; $6444: $ff
	sub  a                                           ; $6445: $97
	ld   c, e                                        ; $6446: $4b
	ld   a, [$11c5]                                  ; $6447: $fa $c5 $11
	ld   [de], a                                     ; $644a: $12
	ld   h, c                                        ; $644b: $61
	rra                                              ; $644c: $1f
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	and  c                                           ; $644f: $a1
	adc  b                                           ; $6450: $88
	rst  $38                                         ; $6451: $ff
	ld   [hl], c                                     ; $6452: $71
	ld   de, $1116                                   ; $6453: $11 $16 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6456: $cf
	rst  $38                                         ; $6457: $ff
	rst  $38                                         ; $6458: $ff
	sub  $fe                                         ; $6459: $d6 $fe
	ld   l, a                                        ; $645b: $6f
	and  c                                           ; $645c: $a1
	ld   de, $3119                                   ; $645d: $11 $19 $31
	rst  JumpTable                                         ; $6460: $df
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	or   h                                           ; $6463: $b4
	sbc  a                                           ; $6464: $9f
	db   $e4                                         ; $6465: $e4
	ld   d, c                                        ; $6466: $51
	ld   de, $4411                                   ; $6467: $11 $11 $44
	cp   a                                           ; $646a: $bf
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	ld   l, c                                        ; $646d: $69
	call c, $11f8                                    ; $646e: $dc $f8 $11
	ld   de, $1845                                   ; $6471: $11 $45 $18
	cp   a                                           ; $6474: $bf
	rst  $38                                         ; $6475: $ff
	rst  $38                                         ; $6476: $ff
	or   d                                           ; $6477: $b2
	adc  a                                           ; $6478: $8f
	sub  a                                           ; $6479: $97
	ld   de, $1111                                   ; $647a: $11 $11 $11
	daa                                              ; $647d: $27
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	rst  $38                                         ; $6480: $ff
	cp   b                                           ; $6481: $b8
	ld   e, d                                        ; $6482: $5a
	add  $11                                         ; $6483: $c6 $11
	ld   de, $6b41                                   ; $6485: $11 $41 $6b
	rst  $28                                         ; $6488: $ef
	rst  $38                                         ; $6489: $ff
	db   $fd                                         ; $648a: $fd
	ld   c, b                                        ; $648b: $48
	db   $eb                                         ; $648c: $eb
	and  h                                           ; $648d: $a4
	ld   de, $2111                                   ; $648e: $11 $11 $21
	ld   e, [hl]                                     ; $6491: $5e
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	db   $fc                                         ; $6494: $fc
	ld   a, d                                        ; $6495: $7a
	cp   h                                           ; $6496: $bc
	add  c                                           ; $6497: $81
	ld   de, $4417                                   ; $6498: $11 $17 $44
	ld   c, c                                        ; $649b: $49
	rst  $38                                         ; $649c: $ff
	rst  $38                                         ; $649d: $ff
	jp   nc, $f26f                                   ; $649e: $d2 $6f $f2

	ld   de, $1111                                   ; $64a1: $11 $11 $11
	ld   c, a                                        ; $64a4: $4f
	xor  d                                           ; $64a5: $aa
	rst  $38                                         ; $64a6: $ff
	rst  $38                                         ; $64a7: $ff
	ld   h, c                                        ; $64a8: $61
	xor  a                                           ; $64a9: $af
	jp   hl                                          ; $64aa: $e9


	ld   de, $1111                                   ; $64ab: $11 $11 $11
	ld   d, $cf                                      ; $64ae: $16 $cf
	rst  $38                                         ; $64b0: $ff
	cp   $a5                                         ; $64b1: $fe $a5
	ld   a, a                                        ; $64b3: $7f
	push af                                          ; $64b4: $f5
	ld   de, $2116                                   ; $64b5: $11 $16 $21
	ld   e, c                                        ; $64b8: $59
	rst  $38                                         ; $64b9: $ff
	rst  $38                                         ; $64ba: $ff
	db   $fd                                         ; $64bb: $fd
	ld   l, h                                        ; $64bc: $6c
	ret  c                                           ; $64bd: $d8

	sub  c                                           ; $64be: $91
	ld   de, $2511                                   ; $64bf: $11 $11 $25
	ld   l, e                                        ; $64c2: $6b
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	jp   nz, $efad                                   ; $64c5: $c2 $ad $ef

	ld   de, $2211                                   ; $64c8: $11 $11 $22
	dec  d                                           ; $64cb: $15
	rst  JumpTable                                         ; $64cc: $df
	rst  $38                                         ; $64cd: $ff
	rst  $38                                         ; $64ce: $ff
	sub  [hl]                                        ; $64cf: $96
	and  [hl]                                        ; $64d0: $a6
	db   $fd                                         ; $64d1: $fd
	ld   de, $1111                                   ; $64d2: $11 $11 $11
	ld   c, b                                        ; $64d5: $48
	rst  JumpTable                                         ; $64d6: $df
	rst  $38                                         ; $64d7: $ff
	ei                                               ; $64d8: $fb
	ld   [hl], $df                                   ; $64d9: $36 $df
	pop  bc                                          ; $64db: $c1
	ld   de, $5511                                   ; $64dc: $11 $11 $55
	ld   e, l                                        ; $64df: $5d
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	xor  b                                           ; $64e2: $a8
	xor  a                                           ; $64e3: $af
	or   $11                                         ; $64e4: $f6 $11
	ld   de, $2821                                   ; $64e6: $11 $21 $28
	cp   a                                           ; $64e9: $bf
	rst  $38                                         ; $64ea: $ff
	rst  $38                                         ; $64eb: $ff
	jp   hl                                          ; $64ec: $e9


	ld   l, a                                        ; $64ed: $6f
	sub  $11                                         ; $64ee: $d6 $11
	ld   de, $a515                                   ; $64f0: $11 $15 $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64f3: $cf
	rst  $38                                         ; $64f4: $ff
	rst  $30                                         ; $64f5: $f7
	inc  l                                           ; $64f6: $2c
	rst  $38                                         ; $64f7: $ff
	pop  af                                          ; $64f8: $f1
	ld   de, $2311                                   ; $64f9: $11 $11 $23
	cp   a                                           ; $64fc: $bf
	rst  $38                                         ; $64fd: $ff
	rst  $38                                         ; $64fe: $ff
	or   $6f                                         ; $64ff: $f6 $6f
	db   $fc                                         ; $6501: $fc
	ld   de, $1611                                   ; $6502: $11 $11 $16
	or   [hl]                                        ; $6505: $b6
	adc  a                                           ; $6506: $8f
	rst  $38                                         ; $6507: $ff
	db   $fd                                         ; $6508: $fd
	sbc  b                                           ; $6509: $98
	rst  $38                                         ; $650a: $ff
	and  c                                           ; $650b: $a1
	ld   de, $1711                                   ; $650c: $11 $11 $17
	xor  d                                           ; $650f: $aa
	rst  $38                                         ; $6510: $ff
	rst  $38                                         ; $6511: $ff
	ld   hl, sp+$78                                  ; $6512: $f8 $78
	rst  $28                                         ; $6514: $ef
	ld   b, c                                        ; $6515: $41
	ld   de, $4912                                   ; $6516: $11 $12 $49
	rst  JumpTable                                         ; $6519: $df
	rst  $38                                         ; $651a: $ff
	db   $fd                                         ; $651b: $fd
	ld   l, d                                        ; $651c: $6a
	rst  $38                                         ; $651d: $ff
	or   c                                           ; $651e: $b1
	ld   de, $3611                                   ; $651f: $11 $11 $36
	xor  l                                           ; $6522: $ad
	rst  $38                                         ; $6523: $ff
	rst  $38                                         ; $6524: $ff
	db   $eb                                         ; $6525: $eb
	rst  JumpTable                                         ; $6526: $df
	ld   a, [$1111]                                  ; $6527: $fa $11 $11
	ld   de, $af7c                                   ; $652a: $11 $7c $af
	rst  $38                                         ; $652d: $ff
	rst  $38                                         ; $652e: $ff
	rla                                              ; $652f: $17
	rst  $38                                         ; $6530: $ff
	pop  de                                          ; $6531: $d1
	ld   de, $4311                                   ; $6532: $11 $11 $43
	ld   a, a                                        ; $6535: $7f
	rst  $38                                         ; $6536: $ff
	rst  $38                                         ; $6537: $ff
	or   $1f                                         ; $6538: $f6 $1f
	db   $fc                                         ; $653a: $fc
	ld   sp, $1311                                   ; $653b: $31 $11 $13
	and  h                                           ; $653e: $a4
	xor  a                                           ; $653f: $af
	rst  $38                                         ; $6540: $ff
	rst  $38                                         ; $6541: $ff
	ld   [hl], a                                     ; $6542: $77
	rst  $38                                         ; $6543: $ff
	pop  af                                          ; $6544: $f1
	ld   de, $4411                                   ; $6545: $11 $11 $44
	ld   l, c                                        ; $6548: $69
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	or   d                                           ; $654b: $b2
	cp   a                                           ; $654c: $bf
	rst  $38                                         ; $654d: $ff
	ld   hl, $1211                                   ; $654e: $21 $11 $12
	ld   a, [hl+]                                    ; $6551: $2a
	rst  $38                                         ; $6552: $ff
	rst  $38                                         ; $6553: $ff
	cp   $b8                                         ; $6554: $fe $b8
	rst  $28                                         ; $6556: $ef
	ldh  a, [c]                                      ; $6557: $f2
	ld   de, $5a11                                   ; $6558: $11 $11 $5a
	ld   l, c                                        ; $655b: $69
	rst  $38                                         ; $655c: $ff
	rst  $38                                         ; $655d: $ff
	db   $d3                                         ; $655e: $d3
	ld   c, a                                        ; $655f: $4f
	db   $fd                                         ; $6560: $fd
	ld   de, $1711                                   ; $6561: $11 $11 $17
	sub  l                                           ; $6564: $95
	sbc  a                                           ; $6565: $9f
	rst  $38                                         ; $6566: $ff
	cp   $6b                                         ; $6567: $fe $6b
	rst  $38                                         ; $6569: $ff
	or   c                                           ; $656a: $b1
	ld   de, $5511                                   ; $656b: $11 $11 $55
	ld   a, d                                        ; $656e: $7a
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	call nz, $fbbf                                   ; $6571: $c4 $bf $fb
	ld   de, $1211                                   ; $6574: $11 $11 $12
	ld   h, [hl]                                     ; $6577: $66
	adc  a                                           ; $6578: $8f
	rst  $38                                         ; $6579: $ff
	db   $fc                                         ; $657a: $fc
	ld   e, a                                        ; $657b: $5f
	rst  $38                                         ; $657c: $ff
	ld   sp, $1111                                   ; $657d: $31 $11 $11
	inc  d                                           ; $6580: $14
	adc  a                                           ; $6581: $8f
	rst  $38                                         ; $6582: $ff
	rst  $38                                         ; $6583: $ff
	cp   l                                           ; $6584: $bd
	cp   $fc                                         ; $6585: $fe $fc
	ld   de, $1411                                   ; $6587: $11 $11 $14
	ld   [hl], h                                     ; $658a: $74
	cp   a                                           ; $658b: $bf
	rst  $38                                         ; $658c: $ff
	db   $fd                                         ; $658d: $fd
	sbc  $ff                                         ; $658e: $de $ff
	ld   de, $1111                                   ; $6590: $11 $11 $11
	ld   d, [hl]                                     ; $6593: $56
	ld   e, a                                        ; $6594: $5f
	rst  $38                                         ; $6595: $ff
	rst  $38                                         ; $6596: $ff

Call_0ef_6597:
	add  hl, sp                                      ; $6597: $39
	rst  $38                                         ; $6598: $ff
	add  c                                           ; $6599: $81
	ld   de, $1211                                   ; $659a: $11 $11 $12
	sbc  l                                           ; $659d: $9d
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	jp   hl                                          ; $65a0: $e9


	db   $dd                                         ; $65a1: $dd
	rst  $38                                         ; $65a2: $ff
	ld   de, $1711                                   ; $65a3: $11 $11 $17
	ld   h, e                                        ; $65a6: $63
	sbc  a                                           ; $65a7: $9f
	rst  $38                                         ; $65a8: $ff
	db   $fd                                         ; $65a9: $fd
	ld   e, [hl]                                     ; $65aa: $5e
	cp   $61                                         ; $65ab: $fe $61
	ld   de, $1611                                   ; $65ad: $11 $11 $16
	xor  e                                           ; $65b0: $ab
	rst  $38                                         ; $65b1: $ff
	rst  $38                                         ; $65b2: $ff
	add  $cf                                         ; $65b3: $c6 $cf
	db   $e3                                         ; $65b5: $e3
	ld   de, $1311                                   ; $65b6: $11 $11 $13
	ld   a, b                                        ; $65b9: $78
	rst  $38                                         ; $65ba: $ff
	rst  $38                                         ; $65bb: $ff
	ei                                               ; $65bc: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65bd: $cf
	db   $fd                                         ; $65be: $fd
	ld   de, $1111                                   ; $65bf: $11 $11 $11
	ld   h, a                                        ; $65c2: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65c3: $cf
	rst  $38                                         ; $65c4: $ff
	rst  $38                                         ; $65c5: $ff
	cp   h                                           ; $65c6: $bc
	cp   $71                                         ; $65c7: $fe $71
	ld   de, $1911                                   ; $65c9: $11 $11 $19
	ld   l, e                                        ; $65cc: $6b
	rst  $38                                         ; $65cd: $ff
	rst  $38                                         ; $65ce: $ff
	db   $db                                         ; $65cf: $db
	rst  $38                                         ; $65d0: $ff
	push hl                                          ; $65d1: $e5
	ld   de, $1111                                   ; $65d2: $11 $11 $11
	ld   d, a                                        ; $65d5: $57
	rst  $38                                         ; $65d6: $ff
	rst  $38                                         ; $65d7: $ff
	cp   $df                                         ; $65d8: $fe $df
	ld   [$1121], a                                  ; $65da: $ea $21 $11
	ld   de, $9f55                                   ; $65dd: $11 $55 $9f
	rst  $38                                         ; $65e0: $ff
	rst  $38                                         ; $65e1: $ff
	rst  JumpTable                                         ; $65e2: $df
	cp   $71                                         ; $65e3: $fe $71
	ld   de, $1611                                   ; $65e5: $11 $11 $16
	ld   l, l                                        ; $65e8: $6d
	rst  $38                                         ; $65e9: $ff
	rst  $38                                         ; $65ea: $ff
	db   $fd                                         ; $65eb: $fd
	rst  $38                                         ; $65ec: $ff
	rst  ToBoot                                         ; $65ed: $c7
	ld   de, $1111                                   ; $65ee: $11 $11 $11
	ld   b, h                                        ; $65f1: $44
	rst  $38                                         ; $65f2: $ff
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	rst  $38                                         ; $65f5: $ff
	ld   sp, hl                                      ; $65f6: $f9
	ld   hl, $1111                                   ; $65f7: $21 $11 $11
	inc  d                                           ; $65fa: $14
	xor  a                                           ; $65fb: $af
	rst  $38                                         ; $65fc: $ff
	rst  $38                                         ; $65fd: $ff
	rst  $38                                         ; $65fe: $ff
	db   $fd                                         ; $65ff: $fd
	ld   [hl], c                                     ; $6600: $71
	ld   de, $1111                                   ; $6601: $11 $11 $11
	ld   a, [hl+]                                    ; $6604: $2a
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	ret  c                                           ; $6609: $d8

	ld   de, $1111                                   ; $660a: $11 $11 $11
	ld   de, $ffbf                                   ; $660d: $11 $bf $ff
	rst  $38                                         ; $6610: $ff
	rst  $38                                         ; $6611: $ff
	db   $fd                                         ; $6612: $fd
	ld   h, c                                        ; $6613: $61
	ld   de, $1111                                   ; $6614: $11 $11 $11
	dec  l                                           ; $6617: $2d
	rst  $38                                         ; $6618: $ff
	rst  $38                                         ; $6619: $ff
	rst  $38                                         ; $661a: $ff
	rst  $38                                         ; $661b: $ff
	push de                                          ; $661c: $d5
	ld   de, $1111                                   ; $661d: $11 $11 $11
	ld   [de], a                                     ; $6620: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6621: $cf
	rst  $38                                         ; $6622: $ff
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	db   $fc                                         ; $6625: $fc
	ld   b, c                                        ; $6626: $41
	ld   de, $1111                                   ; $6627: $11 $11 $11
	inc  e                                           ; $662a: $1c
	rst  $38                                         ; $662b: $ff
	rst  $38                                         ; $662c: $ff
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	db   $e4                                         ; $662f: $e4
	ld   de, $1111                                   ; $6630: $11 $11 $11
	ld   de, $ff9f                                   ; $6633: $11 $9f $ff
	rst  $38                                         ; $6636: $ff
	rst  $38                                         ; $6637: $ff
	cp   $61                                         ; $6638: $fe $61
	ld   de, $1111                                   ; $663a: $11 $11 $11
	dec  d                                           ; $663d: $15
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	rst  $38                                         ; $6641: $ff
	ld   sp, hl                                      ; $6642: $f9
	ld   de, $1111                                   ; $6643: $11 $11 $11
	ld   de, $ff2f                                   ; $6646: $11 $2f $ff
	rst  $38                                         ; $6649: $ff
	rst  $38                                         ; $664a: $ff
	rst  $38                                         ; $664b: $ff
	db   $d3                                         ; $664c: $d3
	ld   de, $1111                                   ; $664d: $11 $11 $11
	ld   de, $ffbf                                   ; $6650: $11 $bf $ff
	rst  $38                                         ; $6653: $ff
	rst  $38                                         ; $6654: $ff
	rst  $38                                         ; $6655: $ff
	add  c                                           ; $6656: $81
	ld   de, $1111                                   ; $6657: $11 $11 $11
	dec  d                                           ; $665a: $15
	rst  JumpTable                                         ; $665b: $df
	rst  $38                                         ; $665c: $ff
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	db   $fc                                         ; $665f: $fc
	ld   sp, $1111                                   ; $6660: $31 $11 $11
	ld   de, $cf17                                   ; $6663: $11 $17 $cf
	rst  $38                                         ; $6666: $ff
	rst  $38                                         ; $6667: $ff
	rst  $38                                         ; $6668: $ff
	ld   sp, hl                                      ; $6669: $f9
	ld   sp, $1111                                   ; $666a: $31 $11 $11
	ld   de, $cf17                                   ; $666d: $11 $17 $cf
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	rst  $38                                         ; $6672: $ff
	ld   hl, sp+$52                                  ; $6673: $f8 $52

Call_0ef_6675:
	ld   de, $1111                                   ; $6675: $11 $11 $11
	ld   d, $8c                                      ; $6678: $16 $8c
	sbc  $ff                                         ; $667a: $de $ff
	rst  $38                                         ; $667c: $ff
	res  0, l                                        ; $667d: $cb $85
	ld   hl, $1111                                   ; $667f: $21 $11 $11
	inc  de                                          ; $6682: $13
	ld   l, c                                        ; $6683: $69
	call $ffef                                       ; $6684: $cd $ef $ff
	db   $fd                                         ; $6687: $fd
	and  a                                           ; $6688: $a7
	ld   d, d                                        ; $6689: $52
	ld   de, $1111                                   ; $668a: $11 $11 $11
	ld   b, a                                        ; $668d: $47
	xor  e                                           ; $668e: $ab
	rst  $28                                         ; $668f: $ef
	rst  $38                                         ; $6690: $ff
	rst  $38                                         ; $6691: $ff
	cp   b                                           ; $6692: $b8
	ld   h, e                                        ; $6693: $63
	ld   de, $1111                                   ; $6694: $11 $11 $11
	ld   b, [hl]                                     ; $6697: $46
	sbc  h                                           ; $6698: $9c
	rst  $28                                         ; $6699: $ef
	rst  $38                                         ; $669a: $ff
	rst  $38                                         ; $669b: $ff
	ret                                              ; $669c: $c9


	ld   h, e                                        ; $669d: $63
	ld   de, $1111                                   ; $669e: $11 $11 $11
	ld   [hl], $ab                                   ; $66a1: $36 $ab
	rst  $28                                         ; $66a3: $ef
	rst  $38                                         ; $66a4: $ff
	cp   $c8                                         ; $66a5: $fe $c8
	ld   h, e                                        ; $66a7: $63
	ld   de, $1111                                   ; $66a8: $11 $11 $11
	ld   [hl], $ab                                   ; $66ab: $36 $ab
	rst  JumpTable                                         ; $66ad: $df
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	ret                                              ; $66b0: $c9


	ld   h, e                                        ; $66b1: $63
	ld   hl, $1111                                   ; $66b2: $21 $11 $11
	ld   [hl], $8b                                   ; $66b5: $36 $8b

Call_0ef_66b7:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66b7: $cf
	rst  $38                                         ; $66b8: $ff
	rst  $38                                         ; $66b9: $ff
	reti                                             ; $66ba: $d9


	ld   h, h                                        ; $66bb: $64
	ld   hl, $1111                                   ; $66bc: $21 $11 $11
	ld   [hl], $8b                                   ; $66bf: $36 $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66c1: $cf
	rst  $38                                         ; $66c2: $ff
	rst  $38                                         ; $66c3: $ff
	jp   c, $3175                                    ; $66c4: $da $75 $31

	ld   de, $2511                                   ; $66c7: $11 $11 $25
	adc  e                                           ; $66ca: $8b
	adc  $ff                                         ; $66cb: $ce $ff
	rst  $38                                         ; $66cd: $ff
	db   $eb                                         ; $66ce: $eb
	add  l                                           ; $66cf: $85
	ld   [hl-], a                                    ; $66d0: $32
	ld   bc, $2511                                   ; $66d1: $01 $11 $25
	ld   a, d                                        ; $66d4: $7a
	cp   l                                           ; $66d5: $bd
	rst  $38                                         ; $66d6: $ff
	rst  $38                                         ; $66d7: $ff
	db   $fc                                         ; $66d8: $fc
	add  [hl]                                        ; $66d9: $86
	ld   [hl-], a                                    ; $66da: $32
	ld   bc, $1411                                   ; $66db: $01 $11 $14
	ld   l, c                                        ; $66de: $69
	cp   l                                           ; $66df: $bd
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	db   $fd                                         ; $66e2: $fd
	and  [hl]                                        ; $66e3: $a6
	ld   b, d                                        ; $66e4: $42
	ld   de, $1311                                   ; $66e5: $11 $11 $13
	ld   l, b                                        ; $66e8: $68
	xor  h                                           ; $66e9: $ac
	rst  $38                                         ; $66ea: $ff
	rst  $38                                         ; $66eb: $ff
	db   $fd                                         ; $66ec: $fd
	and  a                                           ; $66ed: $a7
	ld   b, d                                        ; $66ee: $42
	ld   de, $1211                                   ; $66ef: $11 $11 $12
	ld   b, a                                        ; $66f2: $47
	xor  h                                           ; $66f3: $ac
	rst  $28                                         ; $66f4: $ef
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	ret                                              ; $66f7: $c9


	ld   d, e                                        ; $66f8: $53
	ld   de, $1111                                   ; $66f9: $11 $11 $11
	ld   b, [hl]                                     ; $66fc: $46
	sbc  h                                           ; $66fd: $9c
	rst  $28                                         ; $66fe: $ef
	rst  $38                                         ; $66ff: $ff
	rst  $38                                         ; $6700: $ff
	reti                                             ; $6701: $d9


	ld   h, h                                        ; $6702: $64
	ld   hl, $1111                                   ; $6703: $21 $11 $11
	dec  [hl]                                        ; $6706: $35
	adc  d                                           ; $6707: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6708: $cf
	rst  $38                                         ; $6709: $ff
	rst  $38                                         ; $670a: $ff
	ld   a, [$3185]                                  ; $670b: $fa $85 $31
	ld   de, $1411                                   ; $670e: $11 $11 $14
	ld   l, c                                        ; $6711: $69
	adc  $ff                                         ; $6712: $ce $ff
	rst  $38                                         ; $6714: $ff
	db   $fd                                         ; $6715: $fd
	sub  a                                           ; $6716: $97
	ld   b, d                                        ; $6717: $42
	ld   de, $1311                                   ; $6718: $11 $11 $13
	ld   e, b                                        ; $671b: $58
	xor  h                                           ; $671c: $ac
	rst  $28                                         ; $671d: $ef
	rst  $38                                         ; $671e: $ff
	cp   $b8                                         ; $671f: $fe $b8
	ld   h, h                                        ; $6721: $64
	ld   sp, $1211                                   ; $6722: $31 $11 $12
	ld   d, [hl]                                     ; $6725: $56
	adc  e                                           ; $6726: $8b
	sbc  $ff                                         ; $6727: $de $ff
	rst  $38                                         ; $6729: $ff
	reti                                             ; $672a: $d9


	ld   [hl], l                                     ; $672b: $75
	ld   b, e                                        ; $672c: $43
	ld   hl, $3511                                   ; $672d: $21 $11 $35
	ld   a, b                                        ; $6730: $78
	xor  h                                           ; $6731: $ac
	xor  $fe                                         ; $6732: $ee $fe
	call c, Call_0ef_6597                            ; $6734: $dc $97 $65
	ld   b, e                                        ; $6737: $43
	ld   [hl+], a                                    ; $6738: $22
	inc  h                                           ; $6739: $24
	ld   d, a                                        ; $673a: $57
	adc  d                                           ; $673b: $8a
	call $edee                                       ; $673c: $cd $ee $ed
	cp   d                                           ; $673f: $ba
	add  a                                           ; $6740: $87
	ld   d, h                                        ; $6741: $54
	ld   b, e                                        ; $6742: $43
	inc  sp                                          ; $6743: $33
	ld   d, [hl]                                     ; $6744: $56
	ld   a, b                                        ; $6745: $78
	sbc  d                                           ; $6746: $9a
	call z, $bacd                                    ; $6747: $cc $cd $ba
	xor  c                                           ; $674a: $a9
	halt                                             ; $674b: $76
	ld   h, l                                        ; $674c: $65
	ld   d, h                                        ; $674d: $54
	ld   b, l                                        ; $674e: $45
	ld   h, [hl]                                     ; $674f: $66
	ld   a, b                                        ; $6750: $78
	xor  e                                           ; $6751: $ab
	cp   e                                           ; $6752: $bb
	cp   h                                           ; $6753: $bc
	xor  c                                           ; $6754: $a9
	sbc  b                                           ; $6755: $98
	halt                                             ; $6756: $76
	ld   h, l                                        ; $6757: $65
	ld   d, l                                        ; $6758: $55
	ld   d, l                                        ; $6759: $55
	ld   h, a                                        ; $675a: $67
	adc  b                                           ; $675b: $88
	xor  d                                           ; $675c: $aa
	xor  e                                           ; $675d: $ab
	xor  d                                           ; $675e: $aa
	sbc  c                                           ; $675f: $99
	add  a                                           ; $6760: $87
	ld   [hl], a                                     ; $6761: $77
	ld   h, [hl]                                     ; $6762: $66
	ld   h, [hl]                                     ; $6763: $66
	ld   h, [hl]                                     ; $6764: $66
	ld   [hl], a                                     ; $6765: $77
	adc  b                                           ; $6766: $88
	sbc  c                                           ; $6767: $99
	xor  d                                           ; $6768: $aa
	xor  d                                           ; $6769: $aa
	sbc  d                                           ; $676a: $9a
	sbc  c                                           ; $676b: $99
	add  a                                           ; $676c: $87
	halt                                             ; $676d: $76
	ld   h, [hl]                                     ; $676e: $66
	ld   h, [hl]                                     ; $676f: $66
	ld   h, a                                        ; $6770: $67
	adc  c                                           ; $6771: $89
	adc  c                                           ; $6772: $89
	sbc  c                                           ; $6773: $99
	sbc  c                                           ; $6774: $99
	xor  c                                           ; $6775: $a9
	sbc  b                                           ; $6776: $98
	ld   [hl], a                                     ; $6777: $77
	halt                                             ; $6778: $76
	ld   h, [hl]                                     ; $6779: $66
	ld   h, a                                        ; $677a: $67
	ld   [hl], a                                     ; $677b: $77
	adc  b                                           ; $677c: $88
	adc  c                                           ; $677d: $89
	sbc  c                                           ; $677e: $99
	sbc  c                                           ; $677f: $99
	sbc  c                                           ; $6780: $99
	sbc  b                                           ; $6781: $98
	sbc  b                                           ; $6782: $98
	add  a                                           ; $6783: $87
	ld   [hl], a                                     ; $6784: $77
	ld   [hl], a                                     ; $6785: $77
	ld   [hl], a                                     ; $6786: $77
	ld   a, b                                        ; $6787: $78
	adc  c                                           ; $6788: $89
	adc  b                                           ; $6789: $88
	adc  b                                           ; $678a: $88
	sbc  c                                           ; $678b: $99
	adc  b                                           ; $678c: $88
	adc  b                                           ; $678d: $88
	ld   [hl], a                                     ; $678e: $77
	ld   [hl], a                                     ; $678f: $77
	ld   [hl], a                                     ; $6790: $77
	ld   a, b                                        ; $6791: $78
	adc  b                                           ; $6792: $88
	adc  c                                           ; $6793: $89
	sbc  b                                           ; $6794: $98
	adc  b                                           ; $6795: $88
	sbc  c                                           ; $6796: $99
	sbc  b                                           ; $6797: $98
	adc  b                                           ; $6798: $88
	adc  b                                           ; $6799: $88
	adc  b                                           ; $679a: $88
	adc  b                                           ; $679b: $88
	adc  b                                           ; $679c: $88
	adc  b                                           ; $679d: $88
	adc  b                                           ; $679e: $88
	adc  b                                           ; $679f: $88
	adc  b                                           ; $67a0: $88
	adc  b                                           ; $67a1: $88
	adc  b                                           ; $67a2: $88
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88
	adc  b                                           ; $67a5: $88
	ld   a, b                                        ; $67a6: $78
	adc  b                                           ; $67a7: $88
	adc  b                                           ; $67a8: $88
	adc  b                                           ; $67a9: $88
	adc  b                                           ; $67aa: $88
	adc  b                                           ; $67ab: $88
	sbc  c                                           ; $67ac: $99
	sbc  c                                           ; $67ad: $99
	sbc  b                                           ; $67ae: $98
	adc  b                                           ; $67af: $88
	adc  b                                           ; $67b0: $88
	adc  b                                           ; $67b1: $88
	adc  b                                           ; $67b2: $88
	adc  b                                           ; $67b3: $88
	adc  b                                           ; $67b4: $88
	adc  b                                           ; $67b5: $88
	adc  b                                           ; $67b6: $88
	adc  b                                           ; $67b7: $88
	adc  b                                           ; $67b8: $88
	adc  b                                           ; $67b9: $88
	adc  b                                           ; $67ba: $88
	adc  b                                           ; $67bb: $88
	adc  b                                           ; $67bc: $88
	adc  b                                           ; $67bd: $88
	adc  b                                           ; $67be: $88
	adc  b                                           ; $67bf: $88
	adc  b                                           ; $67c0: $88
	adc  b                                           ; $67c1: $88
	adc  b                                           ; $67c2: $88
	adc  b                                           ; $67c3: $88
	adc  b                                           ; $67c4: $88
	adc  b                                           ; $67c5: $88
	adc  b                                           ; $67c6: $88
	adc  b                                           ; $67c7: $88
	adc  b                                           ; $67c8: $88
	adc  b                                           ; $67c9: $88
	adc  b                                           ; $67ca: $88
	adc  b                                           ; $67cb: $88
	adc  b                                           ; $67cc: $88
	adc  b                                           ; $67cd: $88
	adc  b                                           ; $67ce: $88
	adc  b                                           ; $67cf: $88
	adc  b                                           ; $67d0: $88
	adc  b                                           ; $67d1: $88
	adc  b                                           ; $67d2: $88
	adc  b                                           ; $67d3: $88
	adc  b                                           ; $67d4: $88
	adc  b                                           ; $67d5: $88
	adc  b                                           ; $67d6: $88
	adc  b                                           ; $67d7: $88
	adc  b                                           ; $67d8: $88
	adc  b                                           ; $67d9: $88
	adc  b                                           ; $67da: $88
	adc  b                                           ; $67db: $88
	adc  b                                           ; $67dc: $88
	adc  b                                           ; $67dd: $88
	adc  b                                           ; $67de: $88
	adc  b                                           ; $67df: $88
	adc  b                                           ; $67e0: $88
	adc  b                                           ; $67e1: $88
	adc  b                                           ; $67e2: $88
	adc  b                                           ; $67e3: $88
	adc  b                                           ; $67e4: $88
	adc  b                                           ; $67e5: $88
	adc  b                                           ; $67e6: $88
	adc  b                                           ; $67e7: $88
	adc  b                                           ; $67e8: $88
	adc  b                                           ; $67e9: $88
	adc  b                                           ; $67ea: $88
	adc  b                                           ; $67eb: $88
	adc  b                                           ; $67ec: $88
	adc  b                                           ; $67ed: $88
	adc  b                                           ; $67ee: $88
	adc  b                                           ; $67ef: $88
	adc  b                                           ; $67f0: $88
	adc  b                                           ; $67f1: $88
	adc  c                                           ; $67f2: $89
	xor  c                                           ; $67f3: $a9
	cp   e                                           ; $67f4: $bb
	sbc  c                                           ; $67f5: $99
	sbc  b                                           ; $67f6: $98
	add  a                                           ; $67f7: $87
	add  a                                           ; $67f8: $87
	ld   a, b                                        ; $67f9: $78
	sbc  c                                           ; $67fa: $99
	ld   [hl], a                                     ; $67fb: $77
	adc  c                                           ; $67fc: $89
	and  a                                           ; $67fd: $a7

Call_0ef_67fe:
	adc  c                                           ; $67fe: $89
	ld   a, b                                        ; $67ff: $78
	sbc  d                                           ; $6800: $9a
	sub  a                                           ; $6801: $97
	adc  c                                           ; $6802: $89
	add  a                                           ; $6803: $87
	sub  a                                           ; $6804: $97
	halt                                             ; $6805: $76
	ld   h, a                                        ; $6806: $67
	ld   h, a                                        ; $6807: $67
	ld   l, b                                        ; $6808: $68
	sub  a                                           ; $6809: $97
	adc  b                                           ; $680a: $88
	xor  c                                           ; $680b: $a9
	sbc  c                                           ; $680c: $99
	sbc  d                                           ; $680d: $9a
	sbc  c                                           ; $680e: $99
	adc  b                                           ; $680f: $88
	add  a                                           ; $6810: $87
	ld   [hl], a                                     ; $6811: $77
	ld   [hl], a                                     ; $6812: $77
	ld   [hl], a                                     ; $6813: $77
	ld   a, b                                        ; $6814: $78
	sub  a                                           ; $6815: $97
	adc  c                                           ; $6816: $89
	sbc  c                                           ; $6817: $99
	sbc  c                                           ; $6818: $99
	adc  d                                           ; $6819: $8a
	adc  b                                           ; $681a: $88
	add  a                                           ; $681b: $87
	ld   [hl], a                                     ; $681c: $77
	halt                                             ; $681d: $76
	ld   h, [hl]                                     ; $681e: $66
	ld   [hl], a                                     ; $681f: $77
	ld   a, b                                        ; $6820: $78
	adc  c                                           ; $6821: $89
	sbc  d                                           ; $6822: $9a
	sbc  d                                           ; $6823: $9a
	cp   d                                           ; $6824: $ba
	adc  c                                           ; $6825: $89
	xor  b                                           ; $6826: $a8
	sub  a                                           ; $6827: $97
	ld   h, [hl]                                     ; $6828: $66
	ld   [hl], l                                     ; $6829: $75
	ld   d, [hl]                                     ; $682a: $56
	ld   h, a                                        ; $682b: $67
	ld   a, b                                        ; $682c: $78
	sbc  c                                           ; $682d: $99
	xor  b                                           ; $682e: $a8
	xor  d                                           ; $682f: $aa
	cp   d                                           ; $6830: $ba
	adc  c                                           ; $6831: $89
	adc  c                                           ; $6832: $89
	sbc  b                                           ; $6833: $98
	ld   h, a                                        ; $6834: $67
	ld   [hl], l                                     ; $6835: $75
	ld   h, [hl]                                     ; $6836: $66
	ld   h, l                                        ; $6837: $65
	halt                                             ; $6838: $76
	ld   a, c                                        ; $6839: $79
	adc  d                                           ; $683a: $8a
	cp   h                                           ; $683b: $bc
	jp   z, $87a9                                    ; $683c: $ca $a9 $87

	sbc  b                                           ; $683f: $98
	halt                                             ; $6840: $76
	ld   [hl], a                                     ; $6841: $77
	ld   d, h                                        ; $6842: $54
	ld   d, [hl]                                     ; $6843: $56
	ld   h, a                                        ; $6844: $67
	ld   a, c                                        ; $6845: $79
	sbc  c                                           ; $6846: $99
	sbc  d                                           ; $6847: $9a
	cp   d                                           ; $6848: $ba
	ret                                              ; $6849: $c9


	sbc  c                                           ; $684a: $99
	ld   a, d                                        ; $684b: $7a
	halt                                             ; $684c: $76
	ld   h, a                                        ; $684d: $67
	ld   b, h                                        ; $684e: $44
	ld   d, h                                        ; $684f: $54
	add  [hl]                                        ; $6850: $86
	ld   h, a                                        ; $6851: $67
	xor  d                                           ; $6852: $aa
	adc  l                                           ; $6853: $8d
	xor  h                                           ; $6854: $ac
	cp   e                                           ; $6855: $bb
	cp   c                                           ; $6856: $b9
	halt                                             ; $6857: $76
	add  [hl]                                        ; $6858: $86
	ld   d, [hl]                                     ; $6859: $56
	scf                                              ; $685a: $37
	ld   b, e                                        ; $685b: $43
	ld   h, [hl]                                     ; $685c: $66
	add  [hl]                                        ; $685d: $86
	sbc  c                                           ; $685e: $99
	xor  h                                           ; $685f: $ac
	xor  l                                           ; $6860: $ad
	cp   l                                           ; $6861: $bd
	cp   e                                           ; $6862: $bb
	sub  l                                           ; $6863: $95
	halt                                             ; $6864: $76
	add  e                                           ; $6865: $83
	ld   d, h                                        ; $6866: $54
	ld   b, l                                        ; $6867: $45
	rla                                              ; $6868: $17
	ld   c, c                                        ; $6869: $49
	adc  c                                           ; $686a: $89
	xor  d                                           ; $686b: $aa
	reti                                             ; $686c: $d9


	db   $fc                                         ; $686d: $fc
	db   $dd                                         ; $686e: $dd
	ret                                              ; $686f: $c9


	halt                                             ; $6870: $76
	ld   c, c                                        ; $6871: $49
	inc  [hl]                                        ; $6872: $34
	inc  sp                                          ; $6873: $33
	ld   [hl-], a                                    ; $6874: $32
	ld   d, e                                        ; $6875: $53
	halt                                             ; $6876: $76
	sbc  h                                           ; $6877: $9c
	cp   h                                           ; $6878: $bc
	xor  $cf                                         ; $6879: $ee $cf
	db   $dd                                         ; $687b: $dd
	jp   c, $3466                                    ; $687c: $da $66 $34

	ld   b, d                                        ; $687f: $42
	ld   sp, $4441                                   ; $6880: $31 $41 $44
	ld   c, c                                        ; $6883: $49
	ld   a, h                                        ; $6884: $7c
	call $ecde                                       ; $6885: $cd $de $ec
	db   $fc                                         ; $6888: $fc
	db   $db                                         ; $6889: $db
	and  [hl]                                        ; $688a: $a6
	dec  h                                           ; $688b: $25
	dec  d                                           ; $688c: $15
	ld   de, $4131                                   ; $688d: $11 $31 $41
	ld   [hl], l                                     ; $6890: $75
	ld   a, d                                        ; $6891: $7a
	xor  a                                           ; $6892: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6893: $cf
	rst  JumpTable                                         ; $6894: $df
	cp   $fd                                         ; $6895: $fe $fd
	rst  $30                                         ; $6897: $f7
	sub  d                                           ; $6898: $92
	inc  d                                           ; $6899: $14
	ld   de, $1312                                   ; $689a: $11 $12 $13
	ld   sp, $a977                                   ; $689d: $31 $77 $a9
	rst  $38                                         ; $68a0: $ff
	rst  $38                                         ; $68a1: $ff
	rst  $38                                         ; $68a2: $ff
	rst  $38                                         ; $68a3: $ff
	call $31b7                                       ; $68a4: $cd $b7 $31
	ld   de, $1111                                   ; $68a7: $11 $11 $11
	ld   de, $6b27                                   ; $68aa: $11 $27 $6b
	db   $dd                                         ; $68ad: $dd
	rst  $38                                         ; $68ae: $ff
	rst  $38                                         ; $68af: $ff
	rst  $38                                         ; $68b0: $ff
	rst  $38                                         ; $68b1: $ff
	call $1162                                       ; $68b2: $cd $62 $11
	ld   de, $1111                                   ; $68b5: $11 $11 $11
	inc  de                                          ; $68b8: $13
	ld   c, e                                        ; $68b9: $4b
	sbc  a                                           ; $68ba: $9f
	rst  $28                                         ; $68bb: $ef
	rst  $38                                         ; $68bc: $ff
	rst  $38                                         ; $68bd: $ff
	rst  $38                                         ; $68be: $ff
	db   $fd                                         ; $68bf: $fd
	ret  z                                           ; $68c0: $c8

	ld   de, $1111                                   ; $68c1: $11 $11 $11
	ld   de, $3411                                   ; $68c4: $11 $11 $34
	cp   h                                           ; $68c7: $bc
	rst  $38                                         ; $68c8: $ff
	rst  $38                                         ; $68c9: $ff
	rst  $38                                         ; $68ca: $ff
	rst  $38                                         ; $68cb: $ff
	cp   $db                                         ; $68cc: $fe $db
	add  c                                           ; $68ce: $81
	ld   de, $1111                                   ; $68cf: $11 $11 $11
	ld   de, $6b11                                   ; $68d2: $11 $11 $6b
	rst  JumpTable                                         ; $68d5: $df
	rst  $38                                         ; $68d6: $ff
	rst  $38                                         ; $68d7: $ff
	rst  $38                                         ; $68d8: $ff
	rst  $38                                         ; $68d9: $ff
	xor  $a6                                         ; $68da: $ee $a6
	ld   de, $1111                                   ; $68dc: $11 $11 $11
	ld   de, $1811                                   ; $68df: $11 $11 $18
	rst  JumpTable                                         ; $68e2: $df
	rst  $38                                         ; $68e3: $ff
	rst  $38                                         ; $68e4: $ff
	rst  $38                                         ; $68e5: $ff
	rst  $38                                         ; $68e6: $ff
	rst  $38                                         ; $68e7: $ff
	db   $db                                         ; $68e8: $db
	ld   b, c                                        ; $68e9: $41
	ld   de, $1111                                   ; $68ea: $11 $11 $11
	ld   de, $8f12                                   ; $68ed: $11 $12 $8f
	rst  $38                                         ; $68f0: $ff
	rst  $38                                         ; $68f1: $ff
	rst  $38                                         ; $68f2: $ff
	rst  $38                                         ; $68f3: $ff
	rst  $38                                         ; $68f4: $ff
	adc  $b3                                         ; $68f5: $ce $b3
	ld   de, $1111                                   ; $68f7: $11 $11 $11
	ld   de, $3811                                   ; $68fa: $11 $11 $38
	rst  $28                                         ; $68fd: $ef
	rst  $38                                         ; $68fe: $ff
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	rst  $38                                         ; $6901: $ff
	db   $fd                                         ; $6902: $fd
	jp   c, $1121                                    ; $6903: $da $21 $11

	ld   de, $1111                                   ; $6906: $11 $11 $11
	inc  de                                          ; $6909: $13
	sbc  a                                           ; $690a: $9f
	rst  $38                                         ; $690b: $ff
	rst  $38                                         ; $690c: $ff
	rst  $38                                         ; $690d: $ff
	rst  $38                                         ; $690e: $ff
	rst  $38                                         ; $690f: $ff
	db   $dd                                         ; $6910: $dd
	and  e                                           ; $6911: $a3
	ld   de, $1111                                   ; $6912: $11 $11 $11
	ld   de, $1611                                   ; $6915: $11 $11 $16
	rst  $28                                         ; $6918: $ef
	rst  $38                                         ; $6919: $ff
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	rst  $38                                         ; $691c: $ff
	cp   $cb                                         ; $691d: $fe $cb
	ld   d, c                                        ; $691f: $51
	ld   de, $1111                                   ; $6920: $11 $11 $11
	ld   de, $4b11                                   ; $6923: $11 $11 $4b
	rst  $38                                         ; $6926: $ff
	rst  $38                                         ; $6927: $ff
	rst  $38                                         ; $6928: $ff
	rst  $38                                         ; $6929: $ff
	rst  $38                                         ; $692a: $ff
	db   $fd                                         ; $692b: $fd
	cp   c                                           ; $692c: $b9
	ld   hl, $1111                                   ; $692d: $21 $11 $11
	ld   de, $1111                                   ; $6930: $11 $11 $11
	ld   l, [hl]                                     ; $6933: $6e
	rst  $38                                         ; $6934: $ff
	rst  $38                                         ; $6935: $ff
	rst  $38                                         ; $6936: $ff
	rst  $38                                         ; $6937: $ff
	rst  $38                                         ; $6938: $ff
	db   $fd                                         ; $6939: $fd
	sub  $11                                         ; $693a: $d6 $11
	ld   de, $1111                                   ; $693c: $11 $11 $11
	ld   [de], a                                     ; $693f: $12
	ld   de, $ff7f                                   ; $6940: $11 $7f $ff
	rst  $38                                         ; $6943: $ff
	rst  $38                                         ; $6944: $ff
	rst  $38                                         ; $6945: $ff
	rst  $38                                         ; $6946: $ff
	cp   $b5                                         ; $6947: $fe $b5
	ld   [de], a                                     ; $6949: $12
	ld   de, $1111                                   ; $694a: $11 $11 $11
	inc  d                                           ; $694d: $14
	ld   de, $fe6f                                   ; $694e: $11 $6f $fe
	rst  $38                                         ; $6951: $ff
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	db   $fd                                         ; $6954: $fd
	rst  $38                                         ; $6955: $ff
	add  $34                                         ; $6956: $c6 $34
	ld   de, $1111                                   ; $6958: $11 $11 $11
	inc  d                                           ; $695b: $14
	ld   hl, $fd3d                                   ; $695c: $21 $3d $fd
	rst  $28                                         ; $695f: $ef
	rst  $38                                         ; $6960: $ff
	rst  $38                                         ; $6961: $ff
	db   $fd                                         ; $6962: $fd
	rst  $28                                         ; $6963: $ef
	and  $36                                         ; $6964: $e6 $36
	ld   sp, $4111                                   ; $6966: $31 $11 $41
	ld   de, $1a61                                   ; $6969: $11 $61 $1a
	rst  $38                                         ; $696c: $ff
	xor  a                                           ; $696d: $af
	rst  $38                                         ; $696e: $ff
	rst  $28                                         ; $696f: $ef
	rst  $38                                         ; $6970: $ff
	xor  a                                           ; $6971: $af
	ld   a, [$8146]                                  ; $6972: $fa $46 $81
	ld   de, $1112                                   ; $6975: $11 $12 $11
	ld   d, d                                        ; $6978: $52
	ld   de, $acdf                                   ; $6979: $11 $df $ac
	rst  $38                                         ; $697c: $ff
	cp   $ff                                         ; $697d: $fe $ff
	db   $dd                                         ; $697f: $dd
	rst  $38                                         ; $6980: $ff
	sub  l                                           ; $6981: $95
	xor  c                                           ; $6982: $a9
	ld   de, $1111                                   ; $6983: $11 $11 $11
	dec  d                                           ; $6986: $15
	ld   de, $ba1b                                   ; $6987: $11 $1b $ba
	cp   a                                           ; $698a: $bf
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	rst  $38                                         ; $698d: $ff
	rst  $28                                         ; $698e: $ef
	ld   a, [$a17b]                                  ; $698f: $fa $7b $a1
	ld   de, $1111                                   ; $6992: $11 $11 $11
	ld   hl, $8a11                                   ; $6995: $21 $11 $8a
	sbc  e                                           ; $6998: $9b
	rst  $38                                         ; $6999: $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	rst  $38                                         ; $699c: $ff
	rst  $38                                         ; $699d: $ff
	add  sp, -$34                                    ; $699e: $e8 $cc
	ld   hl, $1111                                   ; $69a0: $21 $11 $11
	ld   de, $1311                                   ; $69a3: $11 $11 $13
	ld   a, c                                        ; $69a6: $79
	xor  h                                           ; $69a7: $ac
	rst  $38                                         ; $69a8: $ff
	rst  $38                                         ; $69a9: $ff
	rst  $38                                         ; $69aa: $ff
	rst  $38                                         ; $69ab: $ff
	rst  $38                                         ; $69ac: $ff
	jp   z, $11d9                                    ; $69ad: $ca $d9 $11

	ld   de, $1111                                   ; $69b0: $11 $11 $11
	ld   de, $6913                                   ; $69b3: $11 $13 $69
	xor  h                                           ; $69b6: $ac
	rst  $38                                         ; $69b7: $ff
	rst  $38                                         ; $69b8: $ff
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	set  3, c                                        ; $69bc: $cb $d9
	ld   sp, $1111                                   ; $69be: $31 $11 $11
	ld   de, $1111                                   ; $69c1: $11 $11 $11
	ld   e, b                                        ; $69c4: $58
	sbc  e                                           ; $69c5: $9b
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	db   $eb                                         ; $69cb: $eb
	db   $db                                         ; $69cc: $db
	ld   d, d                                        ; $69cd: $52
	ld   de, $1111                                   ; $69ce: $11 $11 $11
	ld   de, $3711                                   ; $69d1: $11 $11 $37
	sbc  c                                           ; $69d4: $99
	rst  JumpTable                                         ; $69d5: $df
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	rst  $38                                         ; $69d8: $ff
	rst  $38                                         ; $69d9: $ff
	db   $fd                                         ; $69da: $fd
	call $2194                                       ; $69db: $cd $94 $21
	ld   de, $1111                                   ; $69de: $11 $11 $11
	ld   de, $7814                                   ; $69e1: $11 $14 $78
	sbc  l                                           ; $69e4: $9d
	rst  $38                                         ; $69e5: $ff
	rst  $38                                         ; $69e6: $ff
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	rst  $38                                         ; $69e9: $ff
	set  1, b                                        ; $69ea: $cb $c8
	ld   b, e                                        ; $69ec: $43
	ld   de, $1111                                   ; $69ed: $11 $11 $11
	ld   de, $3611                                   ; $69f0: $11 $11 $36
	ld   a, c                                        ; $69f3: $79
	rst  JumpTable                                         ; $69f4: $df
	cp   $ff                                         ; $69f5: $fe $ff
	rst  $38                                         ; $69f7: $ff
	rst  $38                                         ; $69f8: $ff
	db   $fc                                         ; $69f9: $fc
	cp   h                                           ; $69fa: $bc
	sub  l                                           ; $69fb: $95
	ld   d, d                                        ; $69fc: $52
	ld   de, $1121                                   ; $69fd: $11 $21 $11
	ld   de, $6712                                   ; $6a00: $11 $12 $67
	ld   a, d                                        ; $6a03: $7a
	rst  $38                                         ; $6a04: $ff
	rst  $28                                         ; $6a05: $ef
	rst  $38                                         ; $6a06: $ff
	rst  $38                                         ; $6a07: $ff
	rst  $38                                         ; $6a08: $ff
	db   $ec                                         ; $6a09: $ec
	db   $db                                         ; $6a0a: $db
	halt                                             ; $6a0b: $76
	ld   d, c                                        ; $6a0c: $51
	ld   de, $1121                                   ; $6a0d: $11 $21 $11
	ld   de, $6614                                   ; $6a10: $11 $14 $66
	ld   a, h                                        ; $6a13: $7c
	xor  $ef                                         ; $6a14: $ee $ef
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	rst  $38                                         ; $6a18: $ff
	xor  $d9                                         ; $6a19: $ee $d9
	add  a                                           ; $6a1b: $87
	ld   sp, $1113                                   ; $6a1c: $31 $13 $11
	ld   de, $1411                                   ; $6a1f: $11 $11 $14
	ld   b, l                                        ; $6a22: $45
	xor  l                                           ; $6a23: $ad
	call $ffff                                       ; $6a24: $cd $ff $ff
	rst  $38                                         ; $6a27: $ff
	rst  $38                                         ; $6a28: $ff
	cp   $ba                                         ; $6a29: $fe $ba
	and  a                                           ; $6a2b: $a7
	ld   hl, $1113                                   ; $6a2c: $21 $13 $11
	ld   de, $2411                                   ; $6a2f: $11 $11 $24
	dec  [hl]                                        ; $6a32: $35
	cp   l                                           ; $6a33: $bd
	call z, $ffff                                    ; $6a34: $cc $ff $ff
	rst  $38                                         ; $6a37: $ff
	rst  $38                                         ; $6a38: $ff
	cp   $aa                                         ; $6a39: $fe $aa
	and  [hl]                                        ; $6a3b: $a6
	ld   de, $1122                                   ; $6a3c: $11 $22 $11
	ld   de, $3311                                   ; $6a3f: $11 $11 $33
	ld   h, $cd                                      ; $6a42: $26 $cd
	cp   l                                           ; $6a44: $bd
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	rst  $28                                         ; $6a48: $ef
	db   $fd                                         ; $6a49: $fd
	xor  h                                           ; $6a4a: $ac
	or   [hl]                                        ; $6a4b: $b6
	ld   de, $1121                                   ; $6a4c: $11 $21 $11
	ld   de, $2211                                   ; $6a4f: $11 $11 $22
	ld   d, $bb                                      ; $6a52: $16 $bb
	cp   [hl]                                        ; $6a54: $be
	rst  $38                                         ; $6a55: $ff
	rst  $28                                         ; $6a56: $ef
	rst  $38                                         ; $6a57: $ff
	rst  $38                                         ; $6a58: $ff
	cp   $bd                                         ; $6a59: $fe $bd
	or   a                                           ; $6a5b: $b7
	ld   [hl-], a                                    ; $6a5c: $32
	ld   de, $1111                                   ; $6a5d: $11 $11 $11
	ld   de, $1412                                   ; $6a60: $11 $12 $14
	sbc  e                                           ; $6a63: $9b
	cp   l                                           ; $6a64: $bd
	rst  $38                                         ; $6a65: $ff
	rst  $38                                         ; $6a66: $ff
	rst  $38                                         ; $6a67: $ff
	rst  $38                                         ; $6a68: $ff
	rst  $38                                         ; $6a69: $ff
	cp   l                                           ; $6a6a: $bd
	ret                                              ; $6a6b: $c9


	ld   h, h                                        ; $6a6c: $64
	ld   hl, $1111                                   ; $6a6d: $21 $11 $11
	ld   de, $1211                                   ; $6a70: $11 $11 $12
	ld   e, b                                        ; $6a73: $58
	xor  e                                           ; $6a74: $ab
	rst  JumpTable                                         ; $6a75: $df
	rst  $38                                         ; $6a76: $ff
	rst  $38                                         ; $6a77: $ff
	rst  $38                                         ; $6a78: $ff
	rst  $38                                         ; $6a79: $ff
	call c, $86cc                                    ; $6a7a: $dc $cc $86
	ld   b, d                                        ; $6a7d: $42
	ld   [bc], a                                     ; $6a7e: $02
	ld   de, $1111                                   ; $6a7f: $11 $11 $11
	ld   de, $8a25                                   ; $6a82: $11 $25 $8a
	cp   l                                           ; $6a85: $bd
	rst  $38                                         ; $6a86: $ff
	rst  $38                                         ; $6a87: $ff
	rst  $38                                         ; $6a88: $ff
	rst  $38                                         ; $6a89: $ff
	cp   $dd                                         ; $6a8a: $fe $dd
	cp   c                                           ; $6a8c: $b9
	ld   [hl], l                                     ; $6a8d: $75
	ld   hl, $1121                                   ; $6a8e: $21 $21 $11
	ld   de, $2211                                   ; $6a91: $11 $11 $22
	ld   e, b                                        ; $6a94: $58
	xor  e                                           ; $6a95: $ab
	adc  $ff                                         ; $6a96: $ce $ff
	rst  $38                                         ; $6a98: $ff
	rst  $38                                         ; $6a99: $ff
	rst  $38                                         ; $6a9a: $ff
	db   $ed                                         ; $6a9b: $ed
	db   $ed                                         ; $6a9c: $ed
	and  a                                           ; $6a9d: $a7
	ld   h, h                                        ; $6a9e: $64
	ld   de, $1111                                   ; $6a9f: $11 $11 $11
	ld   de, $1311                                   ; $6aa2: $11 $11 $13
	ld   l, d                                        ; $6aa5: $6a
	call z, $ffef                                    ; $6aa6: $cc $ef $ff
	rst  $38                                         ; $6aa9: $ff
	rst  $38                                         ; $6aaa: $ff
	rst  $38                                         ; $6aab: $ff
	set  1, d                                        ; $6aac: $cb $ca
	halt                                             ; $6aae: $76
	ld   b, d                                        ; $6aaf: $42
	ld   [de], a                                     ; $6ab0: $12
	ld   de, $1111                                   ; $6ab1: $11 $11 $11
	ld   [hl+], a                                    ; $6ab4: $22
	scf                                              ; $6ab5: $37
	xor  e                                           ; $6ab6: $ab
	call $dfff                                       ; $6ab7: $cd $ff $df
	rst  $38                                         ; $6aba: $ff
	rst  JumpTable                                         ; $6abb: $df
	cp   $dd                                         ; $6abc: $fe $dd
	jp   z, Jump_0ef_4197                            ; $6abe: $ca $97 $41

	ld   hl, $1111                                   ; $6ac1: $21 $11 $11
	ld   de, $5922                                   ; $6ac4: $11 $22 $59
	call z, $fedf                                    ; $6ac7: $cc $df $fe
	rst  $38                                         ; $6aca: $ff
	rst  $38                                         ; $6acb: $ff
	rst  $38                                         ; $6acc: $ff
	cp   $ec                                         ; $6acd: $fe $ec
	xor  b                                           ; $6acf: $a8
	ld   d, d                                        ; $6ad0: $52
	ld   de, $1111                                   ; $6ad1: $11 $11 $11
	ld   de, $3723                                   ; $6ad4: $11 $23 $37
	xor  h                                           ; $6ad7: $ac
	adc  $ff                                         ; $6ad8: $ce $ff
	rst  $28                                         ; $6ada: $ef
	cp   $ef                                         ; $6adb: $fe $ef
	cp   $ed                                         ; $6add: $fe $ed
	ret                                              ; $6adf: $c9


	ld   [hl], h                                     ; $6ae0: $74
	ld   de, $1111                                   ; $6ae1: $11 $11 $11
	ld   de, $3514                                   ; $6ae4: $11 $14 $35
	sbc  e                                           ; $6ae7: $9b
	call $eeef                                       ; $6ae8: $cd $ef $ee
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	rst  $38                                         ; $6aed: $ff
	rst  $38                                         ; $6aee: $ff
	res  0, l                                        ; $6aef: $cb $85
	ld   hl, $1111                                   ; $6af1: $21 $11 $11
	ld   de, $4413                                   ; $6af4: $11 $13 $44
	ld   a, e                                        ; $6af7: $7b
	call z, $eddf                                    ; $6af8: $cc $df $ed
	rst  $38                                         ; $6afb: $ff
	rst  $28                                         ; $6afc: $ef
	rst  $38                                         ; $6afd: $ff
	rst  $38                                         ; $6afe: $ff
	call c, $31a6                                    ; $6aff: $dc $a6 $31
	ld   de, $1111                                   ; $6b02: $11 $11 $11
	ld   de, $6a43                                   ; $6b05: $11 $43 $6a
	set  3, a                                        ; $6b08: $cb $df
	db   $fd                                         ; $6b0a: $fd
	rst  $28                                         ; $6b0b: $ef
	rst  $38                                         ; $6b0c: $ff
	rst  $38                                         ; $6b0d: $ff
	rst  $38                                         ; $6b0e: $ff
	db   $ec                                         ; $6b0f: $ec
	or   a                                           ; $6b10: $b7
	ld   b, d                                        ; $6b11: $42
	ld   de, $1111                                   ; $6b12: $11 $11 $11
	ld   de, $4944                                   ; $6b15: $11 $44 $49
	res  7, [hl]                                     ; $6b18: $cb $be
	xor  $ef                                         ; $6b1a: $ee $ef
	rst  $38                                         ; $6b1c: $ff
	rst  $38                                         ; $6b1d: $ff
	rst  $38                                         ; $6b1e: $ff
	db   $fd                                         ; $6b1f: $fd
	jp   z, $1163                                    ; $6b20: $ca $63 $11

	ld   de, $1111                                   ; $6b23: $11 $11 $11
	inc  hl                                          ; $6b26: $23
	scf                                              ; $6b27: $37
	xor  e                                           ; $6b28: $ab
	call z, $dfee                                    ; $6b29: $cc $ee $df
	rst  $38                                         ; $6b2c: $ff
	rst  $38                                         ; $6b2d: $ff
	rst  $38                                         ; $6b2e: $ff
	cp   $ca                                         ; $6b2f: $fe $ca
	ld   [hl], h                                     ; $6b31: $74
	ld   de, $1111                                   ; $6b32: $11 $11 $11
	ld   de, $3413                                   ; $6b35: $11 $13 $34
	adc  e                                           ; $6b38: $8b
	cp   e                                           ; $6b39: $bb
	rst  JumpTable                                         ; $6b3a: $df
	sbc  $ff                                         ; $6b3b: $de $ff
	rst  $38                                         ; $6b3d: $ff
	rst  $38                                         ; $6b3e: $ff
	rst  $38                                         ; $6b3f: $ff
	res  2, l                                        ; $6b40: $cb $95
	ld   hl, $1111                                   ; $6b42: $21 $11 $11
	ld   de, $3312                                   ; $6b45: $11 $12 $33
	ld   a, d                                        ; $6b48: $7a
	xor  e                                           ; $6b49: $ab
	sbc  $ee                                         ; $6b4a: $de $ee
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	rst  $38                                         ; $6b4e: $ff
	rst  $38                                         ; $6b4f: $ff
	call c, Call_0ef_42a7                            ; $6b50: $dc $a7 $42
	ld   bc, $1111                                   ; $6b53: $01 $11 $11
	ld   de, $4822                                   ; $6b56: $11 $22 $48
	xor  d                                           ; $6b59: $aa
	call $ffed                                       ; $6b5a: $cd $ed $ff
	rst  $38                                         ; $6b5d: $ff
	rst  $38                                         ; $6b5e: $ff
	rst  $38                                         ; $6b5f: $ff
	db   $fd                                         ; $6b60: $fd
	jp   z, $1163                                    ; $6b61: $ca $63 $11

	ld   de, $1111                                   ; $6b64: $11 $11 $11
	inc  de                                          ; $6b67: $13
	dec  [hl]                                        ; $6b68: $35
	sbc  e                                           ; $6b69: $9b
	xor  h                                           ; $6b6a: $ac
	sbc  $df                                         ; $6b6b: $de $df
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	res  2, l                                        ; $6b71: $cb $95
	ld   hl, $1111                                   ; $6b73: $21 $11 $11
	ld   de, $3312                                   ; $6b76: $11 $12 $33
	ld   a, d                                        ; $6b79: $7a
	cp   e                                           ; $6b7a: $bb
	sbc  $ee                                         ; $6b7b: $de $ee
	rst  $38                                         ; $6b7d: $ff
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	rst  $38                                         ; $6b80: $ff
	call c, Call_0ef_42b8                            ; $6b81: $dc $b8 $42
	ld   de, $1111                                   ; $6b84: $11 $11 $11
	ld   de, $4823                                   ; $6b87: $11 $23 $48
	xor  d                                           ; $6b8a: $aa
	cp   h                                           ; $6b8b: $bc
	db   $ed                                         ; $6b8c: $ed
	rst  $28                                         ; $6b8d: $ef
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	rst  $38                                         ; $6b90: $ff
	db   $fd                                         ; $6b91: $fd
	jp   z, $1174                                    ; $6b92: $ca $74 $11

	ld   de, $1111                                   ; $6b95: $11 $11 $11
	ld   [de], a                                     ; $6b98: $12
	inc  [hl]                                        ; $6b99: $34
	adc  d                                           ; $6b9a: $8a
	cp   h                                           ; $6b9b: $bc
	adc  $de                                         ; $6b9c: $ce $de
	rst  $38                                         ; $6b9e: $ff
	rst  $38                                         ; $6b9f: $ff
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	call c, Call_0ef_41b7                            ; $6ba2: $dc $b7 $41
	ld   de, $1111                                   ; $6ba5: $11 $11 $11
	ld   de, $4923                                   ; $6ba8: $11 $23 $49
	xor  e                                           ; $6bab: $ab
	call z, $efed                                    ; $6bac: $cc $ed $ef
	rst  $38                                         ; $6baf: $ff
	rst  $38                                         ; $6bb0: $ff
	rst  $38                                         ; $6bb1: $ff
	db   $fd                                         ; $6bb2: $fd
	jp   z, $1174                                    ; $6bb3: $ca $74 $11

	ld   de, $1111                                   ; $6bb6: $11 $11 $11
	inc  de                                          ; $6bb9: $13
	inc  [hl]                                        ; $6bba: $34
	adc  d                                           ; $6bbb: $8a
	cp   h                                           ; $6bbc: $bc
	call $ffde                                       ; $6bbd: $cd $de $ff
	rst  $38                                         ; $6bc0: $ff
	rst  $38                                         ; $6bc1: $ff
	rst  $38                                         ; $6bc2: $ff
	call c, Call_0ef_41b7                            ; $6bc3: $dc $b7 $41
	ld   de, $1111                                   ; $6bc6: $11 $11 $11
	ld   de, $4823                                   ; $6bc9: $11 $23 $48
	sbc  e                                           ; $6bcc: $9b
	cp   h                                           ; $6bcd: $bc
	db   $dd                                         ; $6bce: $dd
	rst  $28                                         ; $6bcf: $ef
	rst  $38                                         ; $6bd0: $ff
	rst  $38                                         ; $6bd1: $ff
	rst  $38                                         ; $6bd2: $ff
	db   $fd                                         ; $6bd3: $fd
	bit  6, h                                        ; $6bd4: $cb $74
	ld   hl, $1111                                   ; $6bd6: $21 $11 $11
	ld   de, $3412                                   ; $6bd9: $11 $12 $34
	ld   a, d                                        ; $6bdc: $7a
	xor  e                                           ; $6bdd: $ab
	adc  $ef                                         ; $6bde: $ce $ef
	rst  $38                                         ; $6be0: $ff
	rst  $38                                         ; $6be1: $ff
	rst  $38                                         ; $6be2: $ff
	rst  $38                                         ; $6be3: $ff
	call c, Call_0ef_42a8                            ; $6be4: $dc $a8 $42
	ld   de, $1111                                   ; $6be7: $11 $11 $11
	ld   de, $4722                                   ; $6bea: $11 $22 $47
	sbc  d                                           ; $6bed: $9a
	cp   h                                           ; $6bee: $bc
	sbc  $ef                                         ; $6bef: $de $ef
	rst  $38                                         ; $6bf1: $ff
	rst  $38                                         ; $6bf2: $ff
	rst  $38                                         ; $6bf3: $ff
	db   $fd                                         ; $6bf4: $fd
	call c, $3195                                    ; $6bf5: $dc $95 $31
	ld   de, $1111                                   ; $6bf8: $11 $11 $11
	ld   de, $5823                                   ; $6bfb: $11 $23 $58
	xor  e                                           ; $6bfe: $ab
	cp   h                                           ; $6bff: $bc
	sbc  $ff                                         ; $6c00: $de $ff
	rst  $38                                         ; $6c02: $ff
	rst  $38                                         ; $6c03: $ff
	rst  $38                                         ; $6c04: $ff
	db   $ec                                         ; $6c05: $ec
	jp   z, $1174                                    ; $6c06: $ca $74 $11

	ld   de, $1111                                   ; $6c09: $11 $11 $11
	ld   [de], a                                     ; $6c0c: $12
	inc  h                                           ; $6c0d: $24
	ld   a, b                                        ; $6c0e: $78
	xor  e                                           ; $6c0f: $ab
	cp   l                                           ; $6c10: $bd
	rst  $28                                         ; $6c11: $ef
	rst  $38                                         ; $6c12: $ff
	rst  $38                                         ; $6c13: $ff
	rst  $38                                         ; $6c14: $ff
	rst  $38                                         ; $6c15: $ff
	db   $ed                                         ; $6c16: $ed
	ret  z                                           ; $6c17: $c8

	ld   d, e                                        ; $6c18: $53
	ld   bc, $1111                                   ; $6c19: $01 $11 $11
	ld   de, $3512                                   ; $6c1c: $11 $12 $35
	adc  c                                           ; $6c1f: $89
	xor  e                                           ; $6c20: $ab
	call $ffdf                                       ; $6c21: $cd $df $ff
	rst  $38                                         ; $6c24: $ff
	rst  $38                                         ; $6c25: $ff
	cp   $dd                                         ; $6c26: $fe $dd
	cp   b                                           ; $6c28: $b8
	ld   d, d                                        ; $6c29: $52
	ld   de, $1111                                   ; $6c2a: $11 $11 $11
	ld   de, $3512                                   ; $6c2d: $11 $12 $35
	ld   a, c                                        ; $6c30: $79
	xor  e                                           ; $6c31: $ab
	db   $dd                                         ; $6c32: $dd
	rst  $28                                         ; $6c33: $ef
	rst  $38                                         ; $6c34: $ff
	rst  $38                                         ; $6c35: $ff
	rst  $38                                         ; $6c36: $ff
	cp   $ed                                         ; $6c37: $fe $ed
	cp   b                                           ; $6c39: $b8
	ld   d, d                                        ; $6c3a: $52
	ld   de, $1111                                   ; $6c3b: $11 $11 $11
	ld   de, $3512                                   ; $6c3e: $11 $12 $35
	ld   a, c                                        ; $6c41: $79
	xor  e                                           ; $6c42: $ab
	sbc  $ff                                         ; $6c43: $de $ff
	rst  $38                                         ; $6c45: $ff
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	db   $dd                                         ; $6c49: $dd
	xor  b                                           ; $6c4a: $a8
	ld   d, d                                        ; $6c4b: $52
	ld   de, $1111                                   ; $6c4c: $11 $11 $11
	ld   de, $3512                                   ; $6c4f: $11 $12 $35
	ld   a, c                                        ; $6c52: $79
	xor  h                                           ; $6c53: $ac
	db   $dd                                         ; $6c54: $dd
	rst  $38                                         ; $6c55: $ff
	rst  $38                                         ; $6c56: $ff
	rst  $38                                         ; $6c57: $ff
	rst  $38                                         ; $6c58: $ff
	rst  $38                                         ; $6c59: $ff
	db   $ec                                         ; $6c5a: $ec
	cp   b                                           ; $6c5b: $b8
	ld   d, d                                        ; $6c5c: $52
	ld   de, $1111                                   ; $6c5d: $11 $11 $11
	ld   de, $3511                                   ; $6c60: $11 $11 $35
	ld   a, c                                        ; $6c63: $79
	xor  e                                           ; $6c64: $ab
	sbc  $ff                                         ; $6c65: $de $ff
	rst  $38                                         ; $6c67: $ff
	rst  $38                                         ; $6c68: $ff
	rst  $38                                         ; $6c69: $ff
	rst  $38                                         ; $6c6a: $ff
	db   $ed                                         ; $6c6b: $ed
	cp   c                                           ; $6c6c: $b9
	ld   d, d                                        ; $6c6d: $52
	ld   de, $1111                                   ; $6c6e: $11 $11 $11
	ld   de, $3511                                   ; $6c71: $11 $11 $35
	ld   a, c                                        ; $6c74: $79
	xor  e                                           ; $6c75: $ab
	db   $dd                                         ; $6c76: $dd
	rst  $38                                         ; $6c77: $ff
	rst  $38                                         ; $6c78: $ff
	rst  $38                                         ; $6c79: $ff
	rst  $38                                         ; $6c7a: $ff
	rst  $38                                         ; $6c7b: $ff
	db   $ed                                         ; $6c7c: $ed
	cp   c                                           ; $6c7d: $b9
	ld   h, d                                        ; $6c7e: $62
	ld   de, $1111                                   ; $6c7f: $11 $11 $11
	ld   de, $3411                                   ; $6c82: $11 $11 $34
	ld   a, c                                        ; $6c85: $79
	sbc  h                                           ; $6c86: $9c
	call $ffef                                       ; $6c87: $cd $ef $ff
	rst  $38                                         ; $6c8a: $ff
	rst  $38                                         ; $6c8b: $ff
	rst  $38                                         ; $6c8c: $ff
	db   $fd                                         ; $6c8d: $fd
	jp   z, $1173                                    ; $6c8e: $ca $73 $11

	ld   de, $1111                                   ; $6c91: $11 $11 $11
	ld   de, $6824                                   ; $6c94: $11 $24 $68
	sbc  e                                           ; $6c97: $9b
	call $ffff                                       ; $6c98: $cd $ff $ff
	rst  $38                                         ; $6c9b: $ff
	rst  $38                                         ; $6c9c: $ff
	rst  $38                                         ; $6c9d: $ff
	cp   $da                                         ; $6c9e: $fe $da
	add  h                                           ; $6ca0: $84
	ld   de, $1111                                   ; $6ca1: $11 $11 $11
	ld   de, $1311                                   ; $6ca4: $11 $11 $13
	ld   d, a                                        ; $6ca7: $57
	adc  e                                           ; $6ca8: $8b
	cp   h                                           ; $6ca9: $bc
	xor  $ff                                         ; $6caa: $ee $ff
	rst  $38                                         ; $6cac: $ff
	rst  $38                                         ; $6cad: $ff
	rst  $38                                         ; $6cae: $ff
	cp   $eb                                         ; $6caf: $fe $eb
	sub  [hl]                                        ; $6cb1: $96
	ld   sp, $1111                                   ; $6cb2: $31 $11 $11
	ld   de, $1211                                   ; $6cb5: $11 $11 $12
	ld   b, [hl]                                     ; $6cb8: $46
	adc  d                                           ; $6cb9: $8a
	cp   h                                           ; $6cba: $bc
	rst  $28                                         ; $6cbb: $ef
	rst  $38                                         ; $6cbc: $ff
	rst  $38                                         ; $6cbd: $ff
	rst  $38                                         ; $6cbe: $ff
	rst  $38                                         ; $6cbf: $ff
	rst  $38                                         ; $6cc0: $ff
	db   $ec                                         ; $6cc1: $ec
	cp   b                                           ; $6cc2: $b8
	ld   b, c                                        ; $6cc3: $41
	ld   de, $1111                                   ; $6cc4: $11 $11 $11
	ld   de, $4511                                   ; $6cc7: $11 $11 $45
	ld   a, b                                        ; $6cca: $78
	xor  e                                           ; $6ccb: $ab
	call $ffff                                       ; $6ccc: $cd $ff $ff
	rst  $38                                         ; $6ccf: $ff
	rst  $38                                         ; $6cd0: $ff
	rst  $38                                         ; $6cd1: $ff
	xor  $ca                                         ; $6cd2: $ee $ca
	ld   h, e                                        ; $6cd4: $63
	ld   de, $1111                                   ; $6cd5: $11 $11 $11
	ld   de, $2411                                   ; $6cd8: $11 $11 $24
	ld   h, a                                        ; $6cdb: $67
	sbc  d                                           ; $6cdc: $9a
	cp   l                                           ; $6cdd: $bd
	xor  $ff                                         ; $6cde: $ee $ff
	rst  $38                                         ; $6ce0: $ff
	rst  $38                                         ; $6ce1: $ff
	rst  $38                                         ; $6ce2: $ff
	rst  $38                                         ; $6ce3: $ff
	db   $db                                         ; $6ce4: $db
	add  l                                           ; $6ce5: $85
	ld   hl, $1111                                   ; $6ce6: $21 $11 $11
	ld   de, $1311                                   ; $6ce9: $11 $11 $13
	ld   b, [hl]                                     ; $6cec: $46
	adc  c                                           ; $6ced: $89
	cp   h                                           ; $6cee: $bc
	sbc  $ff                                         ; $6cef: $de $ff
	rst  $38                                         ; $6cf1: $ff
	rst  $38                                         ; $6cf2: $ff
	rst  $38                                         ; $6cf3: $ff
	rst  $38                                         ; $6cf4: $ff
	db   $ed                                         ; $6cf5: $ed
	xor  b                                           ; $6cf6: $a8
	ld   d, d                                        ; $6cf7: $52
	ld   de, $1111                                   ; $6cf8: $11 $11 $11
	ld   de, $3511                                   ; $6cfb: $11 $11 $35
	ld   l, c                                        ; $6cfe: $69
	sbc  e                                           ; $6cff: $9b
	call $ffee                                       ; $6d00: $cd $ee $ff
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	rst  $38                                         ; $6d05: $ff
	cp   $ca                                         ; $6d06: $fe $ca
	add  l                                           ; $6d08: $85
	ld   hl, $1111                                   ; $6d09: $21 $11 $11
	ld   de, $1311                                   ; $6d0c: $11 $11 $13
	ld   d, a                                        ; $6d0f: $57
	adc  d                                           ; $6d10: $8a
	cp   h                                           ; $6d11: $bc
	sbc  $ef                                         ; $6d12: $de $ef
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	rst  $38                                         ; $6d16: $ff
	rst  $38                                         ; $6d17: $ff
	db   $ed                                         ; $6d18: $ed
	cp   c                                           ; $6d19: $b9
	ld   d, d                                        ; $6d1a: $52
	ld   de, $1111                                   ; $6d1b: $11 $11 $11
	ld   de, $3511                                   ; $6d1e: $11 $11 $35
	ld   l, c                                        ; $6d21: $69
	sbc  e                                           ; $6d22: $9b
	call $ffde                                       ; $6d23: $cd $de $ff
	rst  $38                                         ; $6d26: $ff
	rst  $38                                         ; $6d27: $ff
	rst  $38                                         ; $6d28: $ff
	rst  $38                                         ; $6d29: $ff
	db   $db                                         ; $6d2a: $db
	add  [hl]                                        ; $6d2b: $86
	ld   sp, $1111                                   ; $6d2c: $31 $11 $11
	ld   de, $1311                                   ; $6d2f: $11 $11 $13
	ld   d, [hl]                                     ; $6d32: $56
	adc  c                                           ; $6d33: $89
	cp   e                                           ; $6d34: $bb
	db   $dd                                         ; $6d35: $dd
	rst  $28                                         ; $6d36: $ef
	rst  $38                                         ; $6d37: $ff
	rst  $38                                         ; $6d38: $ff
	rst  $38                                         ; $6d39: $ff
	rst  $38                                         ; $6d3a: $ff
	db   $ed                                         ; $6d3b: $ed
	cp   d                                           ; $6d3c: $ba
	ld   [hl], e                                     ; $6d3d: $73
	ld   de, $1111                                   ; $6d3e: $11 $11 $11
	ld   de, $3411                                   ; $6d41: $11 $11 $34
	ld   l, b                                        ; $6d44: $68
	xor  d                                           ; $6d45: $aa
	cp   h                                           ; $6d46: $bc
	xor  $ef                                         ; $6d47: $ee $ef
	rst  $38                                         ; $6d49: $ff
	rst  $38                                         ; $6d4a: $ff
	rst  $38                                         ; $6d4b: $ff
	rst  $38                                         ; $6d4c: $ff
	db   $ed                                         ; $6d4d: $ed
	cp   b                                           ; $6d4e: $b8
	ld   d, d                                        ; $6d4f: $52
	ld   de, $1111                                   ; $6d50: $11 $11 $11
	ld   de, $4512                                   ; $6d53: $11 $12 $45
	ld   a, b                                        ; $6d56: $78
	xor  e                                           ; $6d57: $ab
	call $ffde                                       ; $6d58: $cd $de $ff
	rst  $38                                         ; $6d5b: $ff
	rst  $38                                         ; $6d5c: $ff
	rst  $38                                         ; $6d5d: $ff
	cp   $ec                                         ; $6d5e: $fe $ec
	sub  [hl]                                        ; $6d60: $96
	ld   sp, $1111                                   ; $6d61: $31 $11 $11
	ld   de, $1311                                   ; $6d64: $11 $11 $13
	ld   b, [hl]                                     ; $6d67: $46
	adc  d                                           ; $6d68: $8a
	cp   e                                           ; $6d69: $bb
	sbc  $de                                         ; $6d6a: $de $de
	rst  $38                                         ; $6d6c: $ff
	rst  $38                                         ; $6d6d: $ff
	rst  $38                                         ; $6d6e: $ff
	rst  $38                                         ; $6d6f: $ff
	cp   $ca                                         ; $6d70: $fe $ca
	add  l                                           ; $6d72: $85
	ld   sp, $1111                                   ; $6d73: $31 $11 $11
	ld   de, $2411                                   ; $6d76: $11 $11 $24
	ld   d, [hl]                                     ; $6d79: $56
	sbc  d                                           ; $6d7a: $9a
	call z, $efcd                                    ; $6d7b: $cc $cd $ef
	rst  $38                                         ; $6d7e: $ff
	rst  $38                                         ; $6d7f: $ff
	rst  $38                                         ; $6d80: $ff
	rst  $38                                         ; $6d81: $ff
	cp   $ca                                         ; $6d82: $fe $ca
	ld   [hl], h                                     ; $6d84: $74
	ld   hl, $1111                                   ; $6d85: $21 $11 $11
	ld   de, $2411                                   ; $6d88: $11 $11 $24
	ld   d, a                                        ; $6d8b: $57
	sbc  d                                           ; $6d8c: $9a
	call $efcd                                       ; $6d8d: $cd $cd $ef
	rst  $38                                         ; $6d90: $ff
	rst  $38                                         ; $6d91: $ff
	rst  $38                                         ; $6d92: $ff
	rst  $38                                         ; $6d93: $ff
	xor  $ca                                         ; $6d94: $ee $ca
	ld   [hl], h                                     ; $6d96: $74
	ld   hl, $1111                                   ; $6d97: $21 $11 $11
	ld   de, $2411                                   ; $6d9a: $11 $11 $24
	ld   h, a                                        ; $6d9d: $67
	adc  d                                           ; $6d9e: $8a
	call $dfdd                                       ; $6d9f: $cd $dd $df
	rst  $38                                         ; $6da2: $ff
	rst  $38                                         ; $6da3: $ff
	rst  $38                                         ; $6da4: $ff
	rst  $38                                         ; $6da5: $ff
	xor  $db                                         ; $6da6: $ee $db
	ld   [hl], h                                     ; $6da8: $74
	ld   hl, $1111                                   ; $6da9: $21 $11 $11
	ld   de, $1411                                   ; $6dac: $11 $11 $14
	ld   l, b                                        ; $6daf: $68
	adc  c                                           ; $6db0: $89
	adc  $dd                                         ; $6db1: $ce $dd
	adc  $ff                                         ; $6db3: $ce $ff
	rst  $38                                         ; $6db5: $ff
	rst  $38                                         ; $6db6: $ff
	rst  $38                                         ; $6db7: $ff
	ld   sp, hl                                      ; $6db8: $f9
	cp   c                                           ; $6db9: $b9
	ld   sp, $1111                                   ; $6dba: $31 $11 $11
	ld   de, $4115                                   ; $6dbd: $11 $15 $41
	ld   e, e                                        ; $6dc0: $5b
	rst  $38                                         ; $6dc1: $ff
	jp   c, $e9df                                    ; $6dc2: $da $df $e9

	adc  l                                           ; $6dc5: $8d
	rst  $38                                         ; $6dc6: $ff
	cp   c                                           ; $6dc7: $b9
	rst  $38                                         ; $6dc8: $ff
	ei                                               ; $6dc9: $fb
	xor  h                                           ; $6dca: $ac
	push hl                                          ; $6dcb: $e5
	ld   de, $1111                                   ; $6dcc: $11 $11 $11
	ld   de, $75cb                                   ; $6dcf: $11 $cb $75
	rst  $38                                         ; $6dd2: $ff
	ld   a, [$fbaf]                                  ; $6dd3: $fa $af $fb
	ld   de, $b7be                                   ; $6dd6: $11 $be $b7
	adc  a                                           ; $6dd9: $8f
	rst  $38                                         ; $6dda: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ddb: $cf
	rst  $38                                         ; $6ddc: $ff
	add  c                                           ; $6ddd: $81
	ld   de, $1111                                   ; $6dde: $11 $11 $11
	ld   de, $ff9e                                   ; $6de1: $11 $9e $ff
	rst  $38                                         ; $6de4: $ff
	rst  $38                                         ; $6de5: $ff
	jp   c, $3166                                    ; $6de6: $da $66 $31

	ld   a, d                                        ; $6de9: $7a
	jp   c, $ffcf                                    ; $6dea: $da $cf $ff

	rst  $38                                         ; $6ded: $ff
	rst  $38                                         ; $6dee: $ff
	add  c                                           ; $6def: $81
	ld   de, $1111                                   ; $6df0: $11 $11 $11
	dec  d                                           ; $6df3: $15
	rst  $38                                         ; $6df4: $ff
	rst  $38                                         ; $6df5: $ff
	rst  $38                                         ; $6df6: $ff
	db   $fc                                         ; $6df7: $fc
	ld   h, [hl]                                     ; $6df8: $66
	ld   b, e                                        ; $6df9: $43
	ld   de, $fc8e                                   ; $6dfa: $11 $8e $fc
	rst  $38                                         ; $6dfd: $ff
	rst  $38                                         ; $6dfe: $ff
	rst  $38                                         ; $6dff: $ff
	cp   $51                                         ; $6e00: $fe $51
	ld   de, $2111                                   ; $6e02: $11 $11 $21
	dec  de                                          ; $6e05: $1b
	rst  $38                                         ; $6e06: $ff
	rst  $38                                         ; $6e07: $ff
	rst  $38                                         ; $6e08: $ff
	add  sp, $11                                     ; $6e09: $e8 $11
	inc  de                                          ; $6e0b: $13
	ld   sp, $ffaf                                   ; $6e0c: $31 $af $ff
	rst  $38                                         ; $6e0f: $ff
	rst  $38                                         ; $6e10: $ff
	rst  $38                                         ; $6e11: $ff
	db   $ed                                         ; $6e12: $ed
	ld   b, c                                        ; $6e13: $41
	ld   de, $6911                                   ; $6e14: $11 $11 $69
	ld   l, a                                        ; $6e17: $6f
	rst  $38                                         ; $6e18: $ff
	rst  $38                                         ; $6e19: $ff
	cp   h                                           ; $6e1a: $bc
	and  l                                           ; $6e1b: $a5
	ld   de, $7324                                   ; $6e1c: $11 $24 $73
	xor  a                                           ; $6e1f: $af
	rst  $38                                         ; $6e20: $ff
	rst  $38                                         ; $6e21: $ff
	rst  $38                                         ; $6e22: $ff
	cp   $cb                                         ; $6e23: $fe $cb
	ld   d, c                                        ; $6e25: $51
	ld   de, $5f11                                   ; $6e26: $11 $11 $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e29: $cf
	rst  $38                                         ; $6e2a: $ff
	db   $fc                                         ; $6e2b: $fc
	ld   b, l                                        ; $6e2c: $45
	ld   h, [hl]                                     ; $6e2d: $66
	ld   de, $d836                                   ; $6e2e: $11 $36 $d8
	ld   a, a                                        ; $6e31: $7f
	rst  $38                                         ; $6e32: $ff
	rst  $38                                         ; $6e33: $ff
	rst  $38                                         ; $6e34: $ff
	db   $fc                                         ; $6e35: $fc
	and  a                                           ; $6e36: $a7
	ld   d, c                                        ; $6e37: $51
	ld   de, $7f11                                   ; $6e38: $11 $11 $7f
	rst  $38                                         ; $6e3b: $ff
	rst  $38                                         ; $6e3c: $ff
	ld   a, [$4811]                                  ; $6e3d: $fa $11 $48
	ld   b, c                                        ; $6e40: $41
	ld   e, c                                        ; $6e41: $59
	db   $fd                                         ; $6e42: $fd
	ld   e, e                                        ; $6e43: $5b
	rst  $38                                         ; $6e44: $ff
	rst  $38                                         ; $6e45: $ff
	rst  $38                                         ; $6e46: $ff
	db   $fd                                         ; $6e47: $fd
	add  l                                           ; $6e48: $85
	ld   b, c                                        ; $6e49: $41
	ld   de, $1f11                                   ; $6e4a: $11 $11 $1f
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	db   $fd                                         ; $6e4f: $fd
	ld   de, $c418                                   ; $6e50: $11 $18 $c4
	ld   c, b                                        ; $6e53: $48
	rst  JumpTable                                         ; $6e54: $df
	ld   h, l                                        ; $6e55: $65
	rst  JumpTable                                         ; $6e56: $df
	rst  $38                                         ; $6e57: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e58: $cf
	rst  $38                                         ; $6e59: $ff
	and  h                                           ; $6e5a: $a4
	ld   [hl-], a                                    ; $6e5b: $32
	ld   de, $1b11                                   ; $6e5c: $11 $11 $1b
	rst  $38                                         ; $6e5f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e60: $cf
	rst  $38                                         ; $6e61: $ff
	sub  c                                           ; $6e62: $91
	inc  d                                           ; $6e63: $14
	rst  $38                                         ; $6e64: $ff
	ld   [hl], a                                     ; $6e65: $77
	adc  l                                           ; $6e66: $8d
	push hl                                          ; $6e67: $e5
	ld   a, $ff                                      ; $6e68: $3e $ff
	db   $fc                                         ; $6e6a: $fc
	rst  $38                                         ; $6e6b: $ff
	rst  $20                                         ; $6e6c: $e7
	ld   hl, $1111                                   ; $6e6d: $21 $11 $11
	ld   de, $f9ff                                   ; $6e70: $11 $ff $f9
	cp   a                                           ; $6e73: $bf
	db   $e4                                         ; $6e74: $e4
	ld   de, $f59f                                   ; $6e75: $11 $9f $f5
	ld   d, a                                        ; $6e78: $57
	call c, $ff43                                    ; $6e79: $dc $43 $ff
	rst  $38                                         ; $6e7c: $ff
	cp   [hl]                                        ; $6e7d: $be
	db   $fd                                         ; $6e7e: $fd
	ld   b, c                                        ; $6e7f: $41
	inc  de                                          ; $6e80: $13
	ld   de, $1f11                                   ; $6e81: $11 $11 $1f
	rst  $38                                         ; $6e84: $ff
	adc  c                                           ; $6e85: $89
	xor  $11                                         ; $6e86: $ee $11
	rra                                              ; $6e88: $1f
	rst  $38                                         ; $6e89: $ff
	ld   b, h                                        ; $6e8a: $44
	ld   a, l                                        ; $6e8b: $7d
	and  e                                           ; $6e8c: $a3
	ld   l, a                                        ; $6e8d: $6f
	rst  $38                                         ; $6e8e: $ff
	ld   a, [$a2df]                                  ; $6e8f: $fa $df $a2
	ld   de, $1131                                   ; $6e92: $11 $31 $11
	rra                                              ; $6e95: $1f
	rst  $38                                         ; $6e96: $ff
	or   a                                           ; $6e97: $b7
	adc  a                                           ; $6e98: $8f
	or   c                                           ; $6e99: $b1
	ld   de, $a3ff                                   ; $6e9a: $11 $ff $a3
	add  hl, sp                                      ; $6e9d: $39
	jp   c, $ff1a                                    ; $6e9e: $da $1a $ff

	db   $fd                                         ; $6ea1: $fd
	cp   l                                           ; $6ea2: $bd
	rst  $30                                         ; $6ea3: $f7
	ld   de, $1112                                   ; $6ea4: $11 $12 $11
	ld   de, $f9ff                                   ; $6ea7: $11 $ff $f9
	ld   l, b                                        ; $6eaa: $68
	rst  $30                                         ; $6eab: $f7
	ld   de, $f86f                                   ; $6eac: $11 $6f $f8
	inc  hl                                          ; $6eaf: $23
	cp   [hl]                                        ; $6eb0: $be
	add  c                                           ; $6eb1: $81
	rst  $38                                         ; $6eb2: $ff
	rst  $38                                         ; $6eb3: $ff
	ret  z                                           ; $6eb4: $c8

	call $1241                                       ; $6eb5: $cd $41 $12
	ld   de, $1f11                                   ; $6eb8: $11 $11 $1f
	rst  $38                                         ; $6ebb: $ff
	sub  h                                           ; $6ebc: $94
	sbc  a                                           ; $6ebd: $9f
	ld   hl, $ff1b                                   ; $6ebe: $21 $1b $ff
	ld   h, d                                        ; $6ec1: $62
	ld   c, h                                        ; $6ec2: $4c
	push de                                          ; $6ec3: $d5
	ccf                                              ; $6ec4: $3f
	rst  $38                                         ; $6ec5: $ff
	ld   hl, sp-$51                                  ; $6ec6: $f8 $af
	db   $f4                                         ; $6ec8: $f4
	ld   de, $1141                                   ; $6ec9: $11 $41 $11
	ld   de, $f8ff                                   ; $6ecc: $11 $ff $f8
	ld   c, e                                        ; $6ecf: $4b
	db   $f4                                         ; $6ed0: $f4
	ld   de, $f79f                                   ; $6ed1: $11 $9f $f7
	inc  [hl]                                        ; $6ed4: $34
	sbc  $53                                         ; $6ed5: $de $53
	rst  $38                                         ; $6ed7: $ff
	rst  $38                                         ; $6ed8: $ff
	ld   a, c                                        ; $6ed9: $79
	rst  $38                                         ; $6eda: $ff
	ld   [hl], c                                     ; $6edb: $71
	inc  d                                           ; $6edc: $14
	ld   sp, $1f11                                   ; $6edd: $31 $11 $1f
	rst  $38                                         ; $6ee0: $ff
	add  l                                           ; $6ee1: $85
	sbc  a                                           ; $6ee2: $9f
	ld   [hl], c                                     ; $6ee3: $71
	dec  d                                           ; $6ee4: $15
	rst  $38                                         ; $6ee5: $ff
	sub  e                                           ; $6ee6: $93
	ld   c, [hl]                                     ; $6ee7: $4e
	ld   sp, hl                                      ; $6ee8: $f9
	inc  e                                           ; $6ee9: $1c
	rst  $38                                         ; $6eea: $ff
	ld   sp, hl                                      ; $6eeb: $f9
	ld   a, e                                        ; $6eec: $7b
	rst  $20                                         ; $6eed: $e7
	ld   de, $1111                                   ; $6eee: $11 $11 $11
	ld   d, $ff                                      ; $6ef1: $16 $ff
	or   $4d                                         ; $6ef3: $f6 $4d
	pop  af                                          ; $6ef5: $f1
	ld   de, $f7cf                                   ; $6ef6: $11 $cf $f7
	jr   z, @+$01                                    ; $6ef9: $28 $ff

	ld   b, h                                        ; $6efb: $44
	rst  $38                                         ; $6efc: $ff
	rst  $38                                         ; $6efd: $ff
	adc  c                                           ; $6efe: $89
	db   $ec                                         ; $6eff: $ec
	ld   b, c                                        ; $6f00: $41
	ld   [de], a                                     ; $6f01: $12
	ld   de, rAUD1LEN                                   ; $6f02: $11 $11 $ff
	rst  $38                                         ; $6f05: $ff
	ld   d, a                                        ; $6f06: $57
	ei                                               ; $6f07: $fb
	ld   de, $fe1f                                   ; $6f08: $11 $1f $fe
	ld   d, h                                        ; $6f0b: $54
	rst  JumpTable                                         ; $6f0c: $df
	pop  bc                                          ; $6f0d: $c1
	ld   l, a                                        ; $6f0e: $6f
	rst  $38                                         ; $6f0f: $ff
	ret                                              ; $6f10: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f11: $cf
	or   d                                           ; $6f12: $b2
	ld   de, $1111                                   ; $6f13: $11 $11 $11
	rra                                              ; $6f16: $1f
	rst  $38                                         ; $6f17: $ff
	or   [hl]                                        ; $6f18: $b6
	rst  JumpTable                                         ; $6f19: $df
	ld   b, c                                        ; $6f1a: $41
	inc  de                                          ; $6f1b: $13
	rst  $38                                         ; $6f1c: $ff
	and  h                                           ; $6f1d: $a4
	ld   a, a                                        ; $6f1e: $7f
	rst  $30                                         ; $6f1f: $f7
	inc  l                                           ; $6f20: $2c
	rst  $38                                         ; $6f21: $ff
	ld   sp, hl                                      ; $6f22: $f9
	cp   a                                           ; $6f23: $bf
	ld   a, [$1111]                                  ; $6f24: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $6f27: $11 $11 $ff
	ei                                               ; $6f2a: $fb
	sbc  a                                           ; $6f2b: $9f
	pop  af                                          ; $6f2c: $f1
	ld   de, $f94f                                   ; $6f2d: $11 $4f $f9
	ld   e, e                                        ; $6f30: $5b
	rst  $38                                         ; $6f31: $ff
	sub  l                                           ; $6f32: $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f33: $cf
	rst  $38                                         ; $6f34: $ff
	set  7, [hl]                                     ; $6f35: $cb $fe
	ld   [hl], c                                     ; $6f37: $71
	ld   de, $1111                                   ; $6f38: $11 $11 $11
	rst  $38                                         ; $6f3b: $ff
	rst  $38                                         ; $6f3c: $ff
	xor  $f5                                         ; $6f3d: $ee $f5
	ld   de, $e91d                                   ; $6f3f: $11 $1d $e9
	ld   l, e                                        ; $6f42: $6b
	rst  $38                                         ; $6f43: $ff
	ret  c                                           ; $6f44: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f45: $cf
	rst  $38                                         ; $6f46: $ff
	cp   l                                           ; $6f47: $bd
	rst  $38                                         ; $6f48: $ff
	and  d                                           ; $6f49: $a2
	ld   de, $1111                                   ; $6f4a: $11 $11 $11
	rst  $38                                         ; $6f4d: $ff
	rst  $38                                         ; $6f4e: $ff
	rst  $38                                         ; $6f4f: $ff
	ld   sp, hl                                      ; $6f50: $f9
	ld   de, $9617                                   ; $6f51: $11 $17 $96
	ld   e, e                                        ; $6f54: $5b
	rst  $38                                         ; $6f55: $ff
	db   $fc                                         ; $6f56: $fc
	db   $fd                                         ; $6f57: $fd
	cp   $9a                                         ; $6f58: $fe $9a
	sbc  $c4                                         ; $6f5a: $de $c4
	ld   de, $1111                                   ; $6f5c: $11 $11 $11
	rst  $38                                         ; $6f5f: $ff
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	ld   sp, hl                                      ; $6f62: $f9
	ld   de, $3115                                   ; $6f63: $11 $15 $31
	ld   a, [hl+]                                    ; $6f66: $2a
	rst  $38                                         ; $6f67: $ff
	cp   $ff                                         ; $6f68: $fe $ff
	db   $fc                                         ; $6f6a: $fc
	sbc  c                                           ; $6f6b: $99
	call $11a3                                       ; $6f6c: $cd $a3 $11
	ld   de, rAUD1LEN                                   ; $6f6f: $11 $11 $ff
	rst  $38                                         ; $6f72: $ff
	rst  $38                                         ; $6f73: $ff
	ld   hl, sp+$11                                  ; $6f74: $f8 $11
	inc  h                                           ; $6f76: $24
	ld   de, $ff1a                                   ; $6f77: $11 $1a $ff
	rst  $38                                         ; $6f7a: $ff
	rst  $38                                         ; $6f7b: $ff
	ei                                               ; $6f7c: $fb
	adc  b                                           ; $6f7d: $88
	cp   e                                           ; $6f7e: $bb
	ld   [hl], c                                     ; $6f7f: $71
	ld   de, $1611                                   ; $6f80: $11 $11 $16
	rst  $38                                         ; $6f83: $ff
	rst  JumpTable                                         ; $6f84: $df
	rst  $38                                         ; $6f85: $ff
	rst  $30                                         ; $6f86: $f7
	ld   de, $1154                                   ; $6f87: $11 $54 $11
	add  hl, de                                      ; $6f8a: $19
	rst  $38                                         ; $6f8b: $ff
	rst  $38                                         ; $6f8c: $ff
	rst  $38                                         ; $6f8d: $ff
	db   $fd                                         ; $6f8e: $fd
	xor  d                                           ; $6f8f: $aa
	ret                                              ; $6f90: $c9


	ld   b, c                                        ; $6f91: $41
	ld   de, $1811                                   ; $6f92: $11 $11 $18
	rst  $38                                         ; $6f95: $ff
	rst  JumpTable                                         ; $6f96: $df
	rst  $38                                         ; $6f97: $ff
	ld   hl, sp+$24                                  ; $6f98: $f8 $24
	ld   [hl], h                                     ; $6f9a: $74
	ld   de, $ff19                                   ; $6f9b: $11 $19 $ff
	rst  $38                                         ; $6f9e: $ff
	rst  $38                                         ; $6f9f: $ff
	cp   $bc                                         ; $6fa0: $fe $bc
	ret                                              ; $6fa2: $c9


	ld   hl, $1111                                   ; $6fa3: $21 $11 $11
	jr   @-$12                                       ; $6fa6: $18 $ec

	rst  $28                                         ; $6fa8: $ef
	rst  $38                                         ; $6fa9: $ff
	ei                                               ; $6faa: $fb
	ld   h, a                                        ; $6fab: $67
	add  d                                           ; $6fac: $82
	ld   de, wTitleScreenCounterBetweenBlinkAnimIdxes                                   ; $6fad: $11 $16 $cc
	rst  $38                                         ; $6fb0: $ff
	rst  $38                                         ; $6fb1: $ff
	rst  $38                                         ; $6fb2: $ff
	rst  $38                                         ; $6fb3: $ff
	jp   c, $1121                                    ; $6fb4: $da $21 $11

	ld   de, $a916                                   ; $6fb7: $11 $16 $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fba: $cf
	rst  $38                                         ; $6fbb: $ff
	rst  $38                                         ; $6fbc: $ff
	cp   e                                           ; $6fbd: $bb
	push bc                                          ; $6fbe: $c5
	ld   de, $7713                                   ; $6fbf: $11 $13 $77
	xor  [hl]                                        ; $6fc2: $ae
	rst  $38                                         ; $6fc3: $ff
	rst  $38                                         ; $6fc4: $ff
	rst  $38                                         ; $6fc5: $ff
	db   $fd                                         ; $6fc6: $fd
	ld   d, c                                        ; $6fc7: $51
	ld   de, $1111                                   ; $6fc8: $11 $11 $11
	inc  [hl]                                        ; $6fcb: $34
	ld   a, e                                        ; $6fcc: $7b
	rst  $38                                         ; $6fcd: $ff
	rst  $38                                         ; $6fce: $ff
	rst  $38                                         ; $6fcf: $ff
	db   $fd                                         ; $6fd0: $fd
	ld   [hl], d                                     ; $6fd1: $72
	ld   [de], a                                     ; $6fd2: $12
	inc  [hl]                                        ; $6fd3: $34
	ld   d, [hl]                                     ; $6fd4: $56
	sbc  l                                           ; $6fd5: $9d
	rst  $38                                         ; $6fd6: $ff
	rst  $38                                         ; $6fd7: $ff
	rst  $38                                         ; $6fd8: $ff
	rst  ToBoot                                         ; $6fd9: $c7
	ld   hl, $1111                                   ; $6fda: $21 $11 $11
	ld   de, $5923                                   ; $6fdd: $11 $23 $59
	cp   h                                           ; $6fe0: $bc
	call $ecee                                       ; $6fe1: $cd $ee $ec
	cp   d                                           ; $6fe4: $ba
	sbc  c                                           ; $6fe5: $99
	sbc  c                                           ; $6fe6: $99
	sbc  b                                           ; $6fe7: $98
	sbc  d                                           ; $6fe8: $9a
	xor  c                                           ; $6fe9: $a9
	xor  c                                           ; $6fea: $a9
	sbc  b                                           ; $6feb: $98
	ld   [hl], l                                     ; $6fec: $75
	ld   d, [hl]                                     ; $6fed: $56
	ld   a, b                                        ; $6fee: $78
	ld   h, l                                        ; $6fef: $65
	ld   b, h                                        ; $6ff0: $44
	ld   d, l                                        ; $6ff1: $55
	ld   d, h                                        ; $6ff2: $54
	ld   d, [hl]                                     ; $6ff3: $56
	adc  b                                           ; $6ff4: $88
	sbc  c                                           ; $6ff5: $99
	adc  c                                           ; $6ff6: $89
	sbc  c                                           ; $6ff7: $99
	xor  d                                           ; $6ff8: $aa
	xor  d                                           ; $6ff9: $aa
	xor  e                                           ; $6ffa: $ab
	cp   e                                           ; $6ffb: $bb
	cp   e                                           ; $6ffc: $bb
	cp   e                                           ; $6ffd: $bb
	cp   e                                           ; $6ffe: $bb
	cp   e                                           ; $6fff: $bb
	xor  c                                           ; $7000: $a9
	sbc  c                                           ; $7001: $99
	add  a                                           ; $7002: $87
	ld   h, l                                        ; $7003: $65
	ld   b, h                                        ; $7004: $44
	ld   b, h                                        ; $7005: $44
	ld   b, h                                        ; $7006: $44
	ld   d, l                                        ; $7007: $55
	ld   d, [hl]                                     ; $7008: $56
	ld   h, [hl]                                     ; $7009: $66
	ld   a, b                                        ; $700a: $78
	adc  c                                           ; $700b: $89
	adc  c                                           ; $700c: $89
	sbc  d                                           ; $700d: $9a
	xor  c                                           ; $700e: $a9
	sbc  d                                           ; $700f: $9a
	xor  d                                           ; $7010: $aa
	xor  e                                           ; $7011: $ab
	cp   e                                           ; $7012: $bb
	call z, $bacb                                    ; $7013: $cc $cb $ba
	xor  c                                           ; $7016: $a9
	add  a                                           ; $7017: $87
	ld   h, l                                        ; $7018: $65
	ld   d, h                                        ; $7019: $54
	inc  sp                                          ; $701a: $33
	inc  sp                                          ; $701b: $33
	ld   b, l                                        ; $701c: $45
	ld   d, l                                        ; $701d: $55
	ld   h, a                                        ; $701e: $67
	adc  b                                           ; $701f: $88
	add  a                                           ; $7020: $87
	ld   a, b                                        ; $7021: $78
	adc  b                                           ; $7022: $88
	adc  c                                           ; $7023: $89
	sbc  d                                           ; $7024: $9a
	xor  d                                           ; $7025: $aa
	cp   e                                           ; $7026: $bb
	call z, $bbcc                                    ; $7027: $cc $cc $bb
	cp   h                                           ; $702a: $bc
	xor  d                                           ; $702b: $aa
	sbc  b                                           ; $702c: $98
	halt                                             ; $702d: $76
	ld   h, l                                        ; $702e: $65
	ld   d, h                                        ; $702f: $54
	ld   b, l                                        ; $7030: $45
	ld   d, l                                        ; $7031: $55
	ld   d, l                                        ; $7032: $55
	ld   d, l                                        ; $7033: $55
	ld   d, [hl]                                     ; $7034: $56
	ld   h, [hl]                                     ; $7035: $66
	ld   [hl], a                                     ; $7036: $77
	ld   [hl], a                                     ; $7037: $77
	adc  c                                           ; $7038: $89
	sbc  d                                           ; $7039: $9a
	xor  d                                           ; $703a: $aa
	xor  e                                           ; $703b: $ab
	xor  e                                           ; $703c: $ab
	cp   e                                           ; $703d: $bb
	xor  d                                           ; $703e: $aa
	xor  c                                           ; $703f: $a9
	xor  d                                           ; $7040: $aa
	sbc  c                                           ; $7041: $99
	sbc  c                                           ; $7042: $99
	sbc  b                                           ; $7043: $98
	add  a                                           ; $7044: $87
	ld   h, [hl]                                     ; $7045: $66
	ld   d, l                                        ; $7046: $55
	ld   d, h                                        ; $7047: $54
	ld   b, l                                        ; $7048: $45
	ld   d, l                                        ; $7049: $55
	ld   d, l                                        ; $704a: $55
	ld   h, a                                        ; $704b: $67
	ld   [hl], a                                     ; $704c: $77
	ld   a, b                                        ; $704d: $78
	adc  c                                           ; $704e: $89
	sbc  d                                           ; $704f: $9a
	xor  c                                           ; $7050: $a9
	sbc  c                                           ; $7051: $99
	sbc  d                                           ; $7052: $9a
	xor  c                                           ; $7053: $a9
	sbc  c                                           ; $7054: $99
	sbc  c                                           ; $7055: $99
	sbc  c                                           ; $7056: $99
	sbc  c                                           ; $7057: $99
	sbc  b                                           ; $7058: $98
	sbc  b                                           ; $7059: $98
	sbc  b                                           ; $705a: $98
	add  a                                           ; $705b: $87
	ld   [hl], a                                     ; $705c: $77
	halt                                             ; $705d: $76
	ld   h, [hl]                                     ; $705e: $66
	ld   h, [hl]                                     ; $705f: $66
	ld   h, a                                        ; $7060: $67
	ld   [hl], a                                     ; $7061: $77
	ld   [hl], a                                     ; $7062: $77
	adc  b                                           ; $7063: $88
	sbc  b                                           ; $7064: $98
	sbc  c                                           ; $7065: $99
	sbc  c                                           ; $7066: $99
	xor  d                                           ; $7067: $aa
	sbc  c                                           ; $7068: $99
	adc  c                                           ; $7069: $89
	adc  b                                           ; $706a: $88
	sbc  c                                           ; $706b: $99
	sbc  c                                           ; $706c: $99
	add  a                                           ; $706d: $87
	ld   [hl], a                                     ; $706e: $77
	ld   h, [hl]                                     ; $706f: $66
	ld   d, l                                        ; $7070: $55
	ld   d, l                                        ; $7071: $55
	ld   h, [hl]                                     ; $7072: $66
	ld   h, [hl]                                     ; $7073: $66
	ld   h, a                                        ; $7074: $67
	ld   [hl], a                                     ; $7075: $77
	adc  b                                           ; $7076: $88
	adc  b                                           ; $7077: $88
	sbc  b                                           ; $7078: $98
	sbc  c                                           ; $7079: $99
	sbc  c                                           ; $707a: $99
	sbc  c                                           ; $707b: $99
	sbc  c                                           ; $707c: $99
	sbc  d                                           ; $707d: $9a
	sbc  c                                           ; $707e: $99
	sbc  c                                           ; $707f: $99
	xor  d                                           ; $7080: $aa
	xor  c                                           ; $7081: $a9
	adc  b                                           ; $7082: $88
	adc  b                                           ; $7083: $88
	add  a                                           ; $7084: $87
	ld   [hl], a                                     ; $7085: $77
	ld   [hl], a                                     ; $7086: $77
	ld   [hl], a                                     ; $7087: $77
	ld   [hl], a                                     ; $7088: $77
	ld   [hl], a                                     ; $7089: $77
	ld   [hl], a                                     ; $708a: $77
	ld   [hl], a                                     ; $708b: $77
	ld   [hl], a                                     ; $708c: $77
	adc  b                                           ; $708d: $88
	adc  b                                           ; $708e: $88
	adc  c                                           ; $708f: $89
	adc  b                                           ; $7090: $88
	adc  b                                           ; $7091: $88
	adc  c                                           ; $7092: $89
	adc  b                                           ; $7093: $88
	sbc  b                                           ; $7094: $98
	adc  b                                           ; $7095: $88
	adc  b                                           ; $7096: $88
	ld   [hl], a                                     ; $7097: $77
	ld   [hl], a                                     ; $7098: $77
	ld   [hl], a                                     ; $7099: $77
	ld   [hl], a                                     ; $709a: $77
	ld   [hl], a                                     ; $709b: $77
	ld   [hl], a                                     ; $709c: $77
	ld   [hl], a                                     ; $709d: $77
	ld   [hl], a                                     ; $709e: $77
	ld   a, b                                        ; $709f: $78
	adc  b                                           ; $70a0: $88
	adc  b                                           ; $70a1: $88
	sbc  c                                           ; $70a2: $99
	sbc  b                                           ; $70a3: $98
	adc  c                                           ; $70a4: $89
	sbc  b                                           ; $70a5: $98
	adc  b                                           ; $70a6: $88
	adc  b                                           ; $70a7: $88
	adc  b                                           ; $70a8: $88
	adc  c                                           ; $70a9: $89
	sbc  c                                           ; $70aa: $99
	adc  b                                           ; $70ab: $88
	adc  b                                           ; $70ac: $88
	add  a                                           ; $70ad: $87
	ld   [hl], a                                     ; $70ae: $77
	ld   [hl], a                                     ; $70af: $77
	ld   [hl], a                                     ; $70b0: $77
	ld   [hl], a                                     ; $70b1: $77
	ld   [hl], a                                     ; $70b2: $77
	ld   [hl], a                                     ; $70b3: $77
	adc  b                                           ; $70b4: $88
	adc  b                                           ; $70b5: $88
	adc  c                                           ; $70b6: $89
	sbc  c                                           ; $70b7: $99
	sbc  c                                           ; $70b8: $99
	sbc  c                                           ; $70b9: $99
	sbc  b                                           ; $70ba: $98
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	adc  b                                           ; $70bd: $88
	sbc  c                                           ; $70be: $99
	adc  b                                           ; $70bf: $88
	adc  b                                           ; $70c0: $88
	add  a                                           ; $70c1: $87
	ld   [hl], a                                     ; $70c2: $77
	ld   [hl], a                                     ; $70c3: $77
	ld   [hl], a                                     ; $70c4: $77
	ld   [hl], a                                     ; $70c5: $77
	ld   [hl], a                                     ; $70c6: $77
	ld   [hl], a                                     ; $70c7: $77
	adc  b                                           ; $70c8: $88
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	sbc  c                                           ; $70cd: $99
	adc  c                                           ; $70ce: $89
	adc  c                                           ; $70cf: $89
	adc  b                                           ; $70d0: $88
	sbc  c                                           ; $70d1: $99
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
	sbc  b                                           ; $70e0: $98
	adc  b                                           ; $70e1: $88
	adc  b                                           ; $70e2: $88
	adc  b                                           ; $70e3: $88
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	adc  b                                           ; $70e6: $88
	adc  b                                           ; $70e7: $88
	adc  c                                           ; $70e8: $89
	sbc  c                                           ; $70e9: $99
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
	adc  c                                           ; $70fa: $89
	sbc  c                                           ; $70fb: $99
	sbc  b                                           ; $70fc: $98
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
	add  a                                           ; $72b5: $87
	ld   [hl], a                                     ; $72b6: $77
	ld   [hl], a                                     ; $72b7: $77
	ld   [hl], a                                     ; $72b8: $77
	ld   [hl], a                                     ; $72b9: $77
	adc  b                                           ; $72ba: $88
	adc  b                                           ; $72bb: $88
	adc  c                                           ; $72bc: $89
	sbc  b                                           ; $72bd: $98
	adc  b                                           ; $72be: $88
	adc  b                                           ; $72bf: $88
	adc  b                                           ; $72c0: $88
	adc  b                                           ; $72c1: $88
	adc  c                                           ; $72c2: $89
	sbc  b                                           ; $72c3: $98
	adc  b                                           ; $72c4: $88
	ld   [hl], a                                     ; $72c5: $77
	ld   [hl], a                                     ; $72c6: $77
	ld   [hl], a                                     ; $72c7: $77
	ld   [hl], a                                     ; $72c8: $77
	ld   [hl], a                                     ; $72c9: $77
	ld   [hl], a                                     ; $72ca: $77
	ld   [hl], a                                     ; $72cb: $77
	adc  b                                           ; $72cc: $88
	adc  b                                           ; $72cd: $88
	adc  b                                           ; $72ce: $88
	sbc  c                                           ; $72cf: $99
	adc  b                                           ; $72d0: $88
	sbc  c                                           ; $72d1: $99
	sbc  d                                           ; $72d2: $9a
	xor  c                                           ; $72d3: $a9
	sbc  c                                           ; $72d4: $99
	sbc  c                                           ; $72d5: $99
	sbc  d                                           ; $72d6: $9a
	sbc  b                                           ; $72d7: $98
	sbc  c                                           ; $72d8: $99
	add  a                                           ; $72d9: $87
	halt                                             ; $72da: $76
	ld   h, [hl]                                     ; $72db: $66
	ld   h, l                                        ; $72dc: $65
	ld   d, l                                        ; $72dd: $55
	ld   h, [hl]                                     ; $72de: $66
	ld   h, [hl]                                     ; $72df: $66
	ld   h, a                                        ; $72e0: $67
	ld   [hl], a                                     ; $72e1: $77
	ld   a, b                                        ; $72e2: $78
	sbc  e                                           ; $72e3: $9b
	db   $dd                                         ; $72e4: $dd
	call $bbeb                                       ; $72e5: $cd $eb $bb
	xor  e                                           ; $72e8: $ab
	adc  b                                           ; $72e9: $88
	ld   a, b                                        ; $72ea: $78
	ld   h, e                                        ; $72eb: $63
	ld   [de], a                                     ; $72ec: $12
	or   [hl]                                        ; $72ed: $b6
	ld   [de], a                                     ; $72ee: $12
	ld   d, l                                        ; $72ef: $55
	ld   b, e                                        ; $72f0: $43
	add  hl, hl                                      ; $72f1: $29
	and  [hl]                                        ; $72f2: $a6
	ld   e, e                                        ; $72f3: $5b
	res  4, a                                        ; $72f4: $cb $a7
	cp   [hl]                                        ; $72f6: $be
	ret                                              ; $72f7: $c9


	cp   a                                           ; $72f8: $bf
	res  3, e                                        ; $72f9: $cb $9b
	db   $db                                         ; $72fb: $db
	ld   d, h                                        ; $72fc: $54
	ld   b, c                                        ; $72fd: $41
	ld   [de], a                                     ; $72fe: $12
	ld   sp, $1411                                   ; $72ff: $31 $11 $14

jr_0ef_7302:
	ld   b, l                                        ; $7302: $45
	adc  h                                           ; $7303: $8c
	cp   h                                           ; $7304: $bc
	rst  JumpTable                                         ; $7305: $df
	rst  $28                                         ; $7306: $ef
	set  1, h                                        ; $7307: $cb $cc
	call c, $ca9a                                    ; $7309: $dc $9a $ca
	sbc  d                                           ; $730c: $9a
	sub  l                                           ; $730d: $95
	ld   de, $2111                                   ; $730e: $11 $11 $21
	ld   de, $3633                                   ; $7311: $11 $33 $36
	rst  JumpTable                                         ; $7314: $df
	cp   $ff                                         ; $7315: $fe $ff
	rst  $38                                         ; $7317: $ff
	rst  $38                                         ; $7318: $ff
	ld   sp, hl                                      ; $7319: $f9
	ld   a, d                                        ; $731a: $7a
	add  $56                                         ; $731b: $c6 $56
	ld   h, l                                        ; $731d: $65
	ld   de, $1114                                   ; $731e: $11 $14 $11
	ld   d, $85                                      ; $7321: $16 $85
	ld   c, e                                        ; $7323: $4b
	rst  $38                                         ; $7324: $ff
	rst  $28                                         ; $7325: $ef
	rst  $38                                         ; $7326: $ff
	db   $ec                                         ; $7327: $ec
	rst  $28                                         ; $7328: $ef
	push bc                                          ; $7329: $c5
	ld   l, d                                        ; $732a: $6a
	and  h                                           ; $732b: $a4
	ld   d, a                                        ; $732c: $57
	add  c                                           ; $732d: $81
	ld   de, $1126                                   ; $732e: $11 $26 $11
	ld   a, [hl+]                                    ; $7331: $2a
	ld   h, d                                        ; $7332: $62
	ld   a, a                                        ; $7333: $7f
	cp   $df                                         ; $7334: $fe $df
	rst  $38                                         ; $7336: $ff
	xor  [hl]                                        ; $7337: $ae
	cp   $55                                         ; $7338: $fe $55
	cp   h                                           ; $733a: $bc
	ld   d, e                                        ; $733b: $53
	sbc  c                                           ; $733c: $99
	ld   sp, $6111                                   ; $733d: $31 $11 $61
	ld   de, $0696                                   ; $7340: $11 $96 $06
	rst  $38                                         ; $7343: $ff
	db   $fc                                         ; $7344: $fc
	rst  $38                                         ; $7345: $ff
	ld   sp, hl                                      ; $7346: $f9
	rst  $38                                         ; $7347: $ff
	sub  $5b                                         ; $7348: $d6 $5b
	call nz, $911a                                   ; $734a: $c4 $1a $91
	ld   de, $1115                                   ; $734d: $11 $15 $11
	inc  a                                           ; $7350: $3c
	ld   d, c                                        ; $7351: $51
	xor  a                                           ; $7352: $af
	rst  $38                                         ; $7353: $ff
	rst  JumpTable                                         ; $7354: $df
	rst  $38                                         ; $7355: $ff
	adc  a                                           ; $7356: $8f
	ld   sp, hl                                      ; $7357: $f9
	ld   d, a                                        ; $7358: $57
	ret                                              ; $7359: $c9


	inc  hl                                          ; $735a: $23
	or   a                                           ; $735b: $b7
	ld   de, $4111                                   ; $735c: $11 $11 $41
	jr   jr_0ef_7302                                 ; $735f: $18 $a1

	cpl                                              ; $7361: $2f
	rst  $38                                         ; $7362: $ff
	rst  $28                                         ; $7363: $ef
	rst  $38                                         ; $7364: $ff
	cp   [hl]                                        ; $7365: $be
	rst  $38                                         ; $7366: $ff
	ld   e, c                                        ; $7367: $59
	bit  2, c                                        ; $7368: $cb $51
	ld   a, e                                        ; $736a: $7b
	ld   de, $1111                                   ; $736b: $11 $11 $11
	ld   de, $19b5                                   ; $736e: $11 $b5 $19
	rst  $38                                         ; $7371: $ff
	rst  $38                                         ; $7372: $ff
	rst  $38                                         ; $7373: $ff
	ei                                               ; $7374: $fb
	rst  $38                                         ; $7375: $ff
	ld   a, b                                        ; $7376: $78
	ld   [$4a63], a                                  ; $7377: $ea $63 $4a
	ld   d, c                                        ; $737a: $51
	ld   de, $1111                                   ; $737b: $11 $11 $11
	ld   l, c                                        ; $737e: $69
	inc  d                                           ; $737f: $14
	rst  $38                                         ; $7380: $ff
	rst  $28                                         ; $7381: $ef
	rst  $38                                         ; $7382: $ff
	db   $fd                                         ; $7383: $fd
	rst  $38                                         ; $7384: $ff
	and  a                                           ; $7385: $a7
	ei                                               ; $7386: $fb
	ld   h, h                                        ; $7387: $64
	ld   b, a                                        ; $7388: $47
	ld   d, c                                        ; $7389: $51
	ld   de, $1111                                   ; $738a: $11 $11 $11
	ld   a, [hl-]                                    ; $738d: $3a
	inc  de                                          ; $738e: $13
	rst  $38                                         ; $738f: $ff
	rst  $38                                         ; $7390: $ff
	rst  $38                                         ; $7391: $ff
	rst  $38                                         ; $7392: $ff
	rst  $38                                         ; $7393: $ff
	ret  z                                           ; $7394: $c8

	ei                                               ; $7395: $fb
	ld   d, l                                        ; $7396: $55
	ld   d, [hl]                                     ; $7397: $56
	ld   sp, $1111                                   ; $7398: $31 $11 $11
	ld   de, $1677                                   ; $739b: $11 $77 $16
	rst  $38                                         ; $739e: $ff
	rst  JumpTable                                         ; $739f: $df
	rst  $38                                         ; $73a0: $ff
	rst  $38                                         ; $73a1: $ff
	rst  $38                                         ; $73a2: $ff
	sbc  e                                           ; $73a3: $9b
	ld   sp, hl                                      ; $73a4: $f9
	ld   b, l                                        ; $73a5: $45
	ld   h, h                                        ; $73a6: $64
	ld   de, $1111                                   ; $73a7: $11 $11 $11
	ld   de, $1e91                                   ; $73aa: $11 $91 $1e
	cp   $ff                                         ; $73ad: $fe $ff
	rst  $38                                         ; $73af: $ff
	rst  $38                                         ; $73b0: $ff
	rst  $38                                         ; $73b1: $ff
	cp   a                                           ; $73b2: $bf
	push de                                          ; $73b3: $d5
	ld   h, a                                        ; $73b4: $67
	ld   sp, $1111                                   ; $73b5: $31 $11 $11
	ld   de, $1118                                   ; $73b8: $11 $18 $11
	rst  JumpTable                                         ; $73bb: $df
	rst  $28                                         ; $73bc: $ef
	rst  $38                                         ; $73bd: $ff
	rst  $38                                         ; $73be: $ff
	rst  $38                                         ; $73bf: $ff
	cp   $fe                                         ; $73c0: $fe $fe
	ld   [hl], a                                     ; $73c2: $77
	add  d                                           ; $73c3: $82
	ld   de, $1111                                   ; $73c4: $11 $11 $11
	ld   de, $1a54                                   ; $73c7: $11 $54 $1a
	cp   $ff                                         ; $73ca: $fe $ff
	rst  $38                                         ; $73cc: $ff
	rst  $38                                         ; $73cd: $ff
	rst  $38                                         ; $73ce: $ff
	rst  $38                                         ; $73cf: $ff
	ld   hl, sp+$69                                  ; $73d0: $f8 $69
	ld   hl, $1111                                   ; $73d2: $21 $11 $11
	ld   de, $1113                                   ; $73d5: $11 $13 $11
	sbc  a                                           ; $73d8: $9f
	xor  $ff                                         ; $73d9: $ee $ff
	rst  $38                                         ; $73db: $ff
	rst  $38                                         ; $73dc: $ff
	rst  $38                                         ; $73dd: $ff
	rst  $38                                         ; $73de: $ff
	xor  c                                           ; $73df: $a9
	add  d                                           ; $73e0: $82
	ld   de, $1111                                   ; $73e1: $11 $11 $11
	ld   de, $1314                                   ; $73e4: $11 $14 $13
	db   $db                                         ; $73e7: $db
	cp   a                                           ; $73e8: $bf
	rst  $38                                         ; $73e9: $ff
	rst  $38                                         ; $73ea: $ff
	rst  $38                                         ; $73eb: $ff
	rst  $38                                         ; $73ec: $ff
	ld   a, [$31dd]                                  ; $73ed: $fa $dd $31
	ld   sp, $1111                                   ; $73f0: $31 $11 $11
	ld   de, $1313                                   ; $73f3: $11 $13 $13
	rst  ToBoot                                         ; $73f6: $c7
	ld   a, a                                        ; $73f7: $7f
	cp   $ff                                         ; $73f8: $fe $ff
	rst  $38                                         ; $73fa: $ff
	rst  $38                                         ; $73fb: $ff
	db   $fc                                         ; $73fc: $fc
	db   $fd                                         ; $73fd: $fd
	ld   b, d                                        ; $73fe: $42
	add  d                                           ; $73ff: $82
	ld   de, $1111                                   ; $7400: $11 $11 $11
	ld   de, $3631                                   ; $7403: $11 $31 $36
	ld   l, b                                        ; $7406: $68
	cp   e                                           ; $7407: $bb
	rst  JumpTable                                         ; $7408: $df
	rst  $38                                         ; $7409: $ff
	rst  $38                                         ; $740a: $ff
	rst  $38                                         ; $740b: $ff
	db   $ec                                         ; $740c: $ec
	ret  c                                           ; $740d: $d8

	ld   a, b                                        ; $740e: $78
	ld   d, d                                        ; $740f: $52
	inc  sp                                          ; $7410: $33
	ld   de, $1231                                   ; $7411: $11 $31 $12
	ld   sp, $4416                                   ; $7414: $31 $16 $44
	adc  d                                           ; $7417: $8a
	xor  h                                           ; $7418: $ac
	rst  $38                                         ; $7419: $ff
	rst  $38                                         ; $741a: $ff
	rst  $38                                         ; $741b: $ff
	call z, $abd9                                    ; $741c: $cc $d9 $ab
	sub  [hl]                                        ; $741f: $96
	ld   a, b                                        ; $7420: $78
	inc  hl                                          ; $7421: $23
	ld   [hl], e                                     ; $7422: $73
	inc  de                                          ; $7423: $13
	ld   sp, $3212                                   ; $7424: $31 $12 $32
	scf                                              ; $7427: $37
	ld   [hl], a                                     ; $7428: $77
	xor  [hl]                                        ; $7429: $ae
	db   $ed                                         ; $742a: $ed
	rst  $38                                         ; $742b: $ff
	xor  e                                           ; $742c: $ab
	db   $fd                                         ; $742d: $fd
	xor  l                                           ; $742e: $ad
	reti                                             ; $742f: $d9


	cp   h                                           ; $7430: $bc
	sub  a                                           ; $7431: $97
	sbc  b                                           ; $7432: $98
	ld   d, h                                        ; $7433: $54
	ld   b, e                                        ; $7434: $43
	ld   de, $1211                                   ; $7435: $11 $11 $12
	ld   b, h                                        ; $7438: $44
	ld   d, a                                        ; $7439: $57
	adc  d                                           ; $743a: $8a
	cp   h                                           ; $743b: $bc
	call z, $ddcc                                    ; $743c: $cc $cc $dd
	rst  $28                                         ; $743f: $ef
	xor  $fc                                         ; $7440: $ee $fc
	cp   e                                           ; $7442: $bb
	sbc  b                                           ; $7443: $98
	ld   [hl], l                                     ; $7444: $75
	inc  sp                                          ; $7445: $33
	ld   hl, $1111                                   ; $7446: $21 $11 $11
	inc  de                                          ; $7449: $13
	ld   b, l                                        ; $744a: $45
	ld   h, a                                        ; $744b: $67
	sbc  c                                           ; $744c: $99
	sbc  e                                           ; $744d: $9b
	call c, $dedf                                    ; $744e: $dc $df $de
	cp   $de                                         ; $7451: $fe $de
	db   $db                                         ; $7453: $db
	cp   d                                           ; $7454: $ba
	add  a                                           ; $7455: $87
	ld   h, h                                        ; $7456: $64
	ld   b, d                                        ; $7457: $42
	ld   [hl+], a                                    ; $7458: $22
	ld   de, $3423                                   ; $7459: $11 $23 $34
	ld   d, l                                        ; $745c: $55
	ld   l, b                                        ; $745d: $68
	adc  c                                           ; $745e: $89
	sbc  d                                           ; $745f: $9a
	cp   h                                           ; $7460: $bc
	call z, $dccd                                    ; $7461: $cc $cd $dc
	call z, $aaba                                    ; $7464: $cc $ba $aa
	add  a                                           ; $7467: $87
	halt                                             ; $7468: $76
	ld   d, l                                        ; $7469: $55
	ld   b, h                                        ; $746a: $44
	ld   b, h                                        ; $746b: $44
	ld   b, h                                        ; $746c: $44
	ld   d, l                                        ; $746d: $55
	ld   d, [hl]                                     ; $746e: $56
	ld   h, a                                        ; $746f: $67
	ld   a, b                                        ; $7470: $78
	sbc  c                                           ; $7471: $99
	xor  d                                           ; $7472: $aa
	xor  e                                           ; $7473: $ab
	cp   h                                           ; $7474: $bc
	call z, $aabb                                    ; $7475: $cc $bb $aa
	xor  d                                           ; $7478: $aa
	adc  c                                           ; $7479: $89
	add  a                                           ; $747a: $87
	ld   [hl], a                                     ; $747b: $77
	ld   h, [hl]                                     ; $747c: $66
	ld   h, [hl]                                     ; $747d: $66
	ld   d, l                                        ; $747e: $55
	ld   d, l                                        ; $747f: $55
	ld   d, [hl]                                     ; $7480: $56
	ld   h, [hl]                                     ; $7481: $66
	ld   h, a                                        ; $7482: $67
	ld   a, b                                        ; $7483: $78
	sbc  c                                           ; $7484: $99
	xor  c                                           ; $7485: $a9
	xor  d                                           ; $7486: $aa
	cp   d                                           ; $7487: $ba
	xor  d                                           ; $7488: $aa
	xor  d                                           ; $7489: $aa
	xor  d                                           ; $748a: $aa
	sbc  b                                           ; $748b: $98
	adc  b                                           ; $748c: $88
	ld   [hl], a                                     ; $748d: $77
	halt                                             ; $748e: $76
	ld   h, [hl]                                     ; $748f: $66
	ld   h, [hl]                                     ; $7490: $66
	ld   h, [hl]                                     ; $7491: $66
	ld   h, a                                        ; $7492: $67
	ld   [hl], a                                     ; $7493: $77
	ld   a, b                                        ; $7494: $78
	adc  b                                           ; $7495: $88
	adc  c                                           ; $7496: $89
	adc  c                                           ; $7497: $89
	xor  c                                           ; $7498: $a9
	sbc  d                                           ; $7499: $9a
	sbc  c                                           ; $749a: $99
	sbc  c                                           ; $749b: $99
	adc  b                                           ; $749c: $88
	adc  b                                           ; $749d: $88
	ld   [hl], a                                     ; $749e: $77
	ld   [hl], a                                     ; $749f: $77
	ld   [hl], a                                     ; $74a0: $77
	ld   [hl], a                                     ; $74a1: $77
	ld   [hl], a                                     ; $74a2: $77
	ld   [hl], a                                     ; $74a3: $77
	adc  b                                           ; $74a4: $88
	adc  b                                           ; $74a5: $88
	adc  c                                           ; $74a6: $89
	sbc  c                                           ; $74a7: $99
	adc  b                                           ; $74a8: $88
	sbc  c                                           ; $74a9: $99
	adc  c                                           ; $74aa: $89
	sbc  b                                           ; $74ab: $98
	adc  b                                           ; $74ac: $88
	adc  b                                           ; $74ad: $88
	add  a                                           ; $74ae: $87
	adc  b                                           ; $74af: $88
	add  a                                           ; $74b0: $87
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
	add  a                                           ; $74c4: $87
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88
	adc  b                                           ; $74c9: $88
	adc  b                                           ; $74ca: $88
	adc  b                                           ; $74cb: $88
	sbc  b                                           ; $74cc: $98
	adc  d                                           ; $74cd: $8a
	and  [hl]                                        ; $74ce: $a6
	sbc  d                                           ; $74cf: $9a
	ld   l, c                                        ; $74d0: $69
	add  a                                           ; $74d1: $87
	add  a                                           ; $74d2: $87
	adc  b                                           ; $74d3: $88
	add  a                                           ; $74d4: $87
	add  a                                           ; $74d5: $87
	ld   [hl], a                                     ; $74d6: $77
	ld   [hl], a                                     ; $74d7: $77
	ld   [hl], a                                     ; $74d8: $77
	ld   a, b                                        ; $74d9: $78
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	sbc  b                                           ; $74dc: $98
	sbc  c                                           ; $74dd: $99
	adc  c                                           ; $74de: $89
	sbc  b                                           ; $74df: $98
	adc  c                                           ; $74e0: $89
	adc  b                                           ; $74e1: $88
	sbc  b                                           ; $74e2: $98
	adc  b                                           ; $74e3: $88
	adc  b                                           ; $74e4: $88
	ld   a, b                                        ; $74e5: $78
	ld   [hl], a                                     ; $74e6: $77
	add  a                                           ; $74e7: $87
	ld   a, b                                        ; $74e8: $78
	ld   [hl], a                                     ; $74e9: $77
	sub  a                                           ; $74ea: $97
	adc  c                                           ; $74eb: $89
	adc  b                                           ; $74ec: $88
	adc  b                                           ; $74ed: $88
	adc  b                                           ; $74ee: $88
	adc  b                                           ; $74ef: $88
	adc  b                                           ; $74f0: $88
	adc  c                                           ; $74f1: $89
	sbc  c                                           ; $74f2: $99
	add  [hl]                                        ; $74f3: $86
	sbc  c                                           ; $74f4: $99
	ld   a, d                                        ; $74f5: $7a
	ld   [hl], a                                     ; $74f6: $77
	sbc  b                                           ; $74f7: $98
	ld   a, b                                        ; $74f8: $78
	ld   a, b                                        ; $74f9: $78
	sbc  c                                           ; $74fa: $99
	sub  [hl]                                        ; $74fb: $96
	adc  b                                           ; $74fc: $88
	ld   l, b                                        ; $74fd: $68
	ld   a, b                                        ; $74fe: $78
	add  a                                           ; $74ff: $87
	adc  b                                           ; $7500: $88
	add  a                                           ; $7501: $87
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  c                                           ; $7505: $89
	adc  b                                           ; $7506: $88
	adc  b                                           ; $7507: $88
	sbc  b                                           ; $7508: $98
	adc  c                                           ; $7509: $89
	adc  b                                           ; $750a: $88
	sbc  b                                           ; $750b: $98
	sub  a                                           ; $750c: $97
	ld   l, c                                        ; $750d: $69
	ld   [hl], a                                     ; $750e: $77
	or   [hl]                                        ; $750f: $b6
	ld   a, c                                        ; $7510: $79
	ld   a, b                                        ; $7511: $78
	ld   a, b                                        ; $7512: $78
	ld   a, b                                        ; $7513: $78
	add  a                                           ; $7514: $87
	add  a                                           ; $7515: $87
	ld   a, d                                        ; $7516: $7a
	add  a                                           ; $7517: $87
	and  a                                           ; $7518: $a7
	adc  b                                           ; $7519: $88
	ld   a, d                                        ; $751a: $7a
	ld   a, c                                        ; $751b: $79
	sub  [hl]                                        ; $751c: $96
	adc  b                                           ; $751d: $88
	add  a                                           ; $751e: $87
	add  a                                           ; $751f: $87
	adc  c                                           ; $7520: $89
	ld   l, b                                        ; $7521: $68
	ld   a, b                                        ; $7522: $78
	ld   a, b                                        ; $7523: $78
	sub  a                                           ; $7524: $97
	sub  a                                           ; $7525: $97
	adc  c                                           ; $7526: $89
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	add  a                                           ; $7529: $87
	adc  d                                           ; $752a: $8a
	adc  b                                           ; $752b: $88
	sub  a                                           ; $752c: $97
	ld   a, c                                        ; $752d: $79
	ld   a, b                                        ; $752e: $78
	sub  a                                           ; $752f: $97
	add  a                                           ; $7530: $87
	ld   l, c                                        ; $7531: $69
	ld   a, b                                        ; $7532: $78
	add  a                                           ; $7533: $87
	sub  a                                           ; $7534: $97
	ld   a, d                                        ; $7535: $7a
	ld   a, b                                        ; $7536: $78
	sub  a                                           ; $7537: $97
	sbc  b                                           ; $7538: $98
	ld   a, b                                        ; $7539: $78
	ld   a, c                                        ; $753a: $79
	xor  b                                           ; $753b: $a8
	sbc  c                                           ; $753c: $99
	add  a                                           ; $753d: $87
	adc  c                                           ; $753e: $89
	ld   l, b                                        ; $753f: $68
	or   l                                           ; $7540: $b5
	adc  b                                           ; $7541: $88
	ld   e, b                                        ; $7542: $58
	adc  b                                           ; $7543: $88
	adc  b                                           ; $7544: $88
	ld   a, b                                        ; $7545: $78
	ld   a, b                                        ; $7546: $78
	and  a                                           ; $7547: $a7
	sbc  b                                           ; $7548: $98
	adc  c                                           ; $7549: $89
	ld   a, c                                        ; $754a: $79
	adc  b                                           ; $754b: $88
	adc  c                                           ; $754c: $89
	sub  a                                           ; $754d: $97
	add  a                                           ; $754e: $87
	add  a                                           ; $754f: $87
	ld   a, b                                        ; $7550: $78
	ld   [hl], a                                     ; $7551: $77
	ld   a, b                                        ; $7552: $78
	add  $5a                                         ; $7553: $c6 $5a
	ld   l, b                                        ; $7555: $68
	sub  a                                           ; $7556: $97
	and  a                                           ; $7557: $a7
	ld   a, b                                        ; $7558: $78
	adc  b                                           ; $7559: $88
	ld   a, d                                        ; $755a: $7a
	ld   a, b                                        ; $755b: $78
	add  a                                           ; $755c: $87
	sbc  c                                           ; $755d: $99
	ld   a, b                                        ; $755e: $78
	adc  b                                           ; $755f: $88
	ld   l, c                                        ; $7560: $69
	jp   nz, Jump_0ef_5bc9                           ; $7561: $c2 $c9 $5b

	ld   c, e                                        ; $7564: $4b
	ld   l, b                                        ; $7565: $68
	and  h                                           ; $7566: $a4
	and  [hl]                                        ; $7567: $a6
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	adc  c                                           ; $756a: $89
	add  a                                           ; $756b: $87
	adc  c                                           ; $756c: $89
	adc  c                                           ; $756d: $89
	ld   a, c                                        ; $756e: $79
	add  a                                           ; $756f: $87
	sub  a                                           ; $7570: $97
	adc  b                                           ; $7571: $88
	ld   a, b                                        ; $7572: $78
	add  [hl]                                        ; $7573: $86
	sbc  c                                           ; $7574: $99
	ld   l, e                                        ; $7575: $6b
	ld   [hl], a                                     ; $7576: $77
	sub  a                                           ; $7577: $97
	sub  a                                           ; $7578: $97
	ld   a, c                                        ; $7579: $79
	ld   l, d                                        ; $757a: $6a
	add  a                                           ; $757b: $87
	and  [hl]                                        ; $757c: $a6
	ld   l, d                                        ; $757d: $6a
	ld   l, c                                        ; $757e: $69
	sub  [hl]                                        ; $757f: $96
	sbc  b                                           ; $7580: $98
	ld   l, d                                        ; $7581: $6a
	add  [hl]                                        ; $7582: $86
	or   a                                           ; $7583: $b7
	sbc  c                                           ; $7584: $99
	ld   c, h                                        ; $7585: $4c
	add  l                                           ; $7586: $85

Jump_0ef_7587:
	and  [hl]                                        ; $7587: $a6
	sbc  c                                           ; $7588: $99
	ld   l, c                                        ; $7589: $69
	add  [hl]                                        ; $758a: $86
	adc  c                                           ; $758b: $89
	ld   e, e                                        ; $758c: $5b
	ld   [hl], a                                     ; $758d: $77
	and  [hl]                                        ; $758e: $a6
	and  a                                           ; $758f: $a7
	sub  [hl]                                        ; $7590: $96
	adc  c                                           ; $7591: $89
	ld   l, e                                        ; $7592: $6b
	ld   l, c                                        ; $7593: $69
	sub  [hl]                                        ; $7594: $96
	and  a                                           ; $7595: $a7
	ld   a, d                                        ; $7596: $7a
	ld   l, c                                        ; $7597: $69
	sub  [hl]                                        ; $7598: $96
	sub  a                                           ; $7599: $97
	adc  c                                           ; $759a: $89
	ld   [hl], a                                     ; $759b: $77
	add  a                                           ; $759c: $87
	ld   a, c                                        ; $759d: $79
	adc  b                                           ; $759e: $88
	adc  b                                           ; $759f: $88
	add  a                                           ; $75a0: $87
	sbc  b                                           ; $75a1: $98
	adc  b                                           ; $75a2: $88
	add  a                                           ; $75a3: $87
	sbc  b                                           ; $75a4: $98

jr_0ef_75a5:
	ld   l, d                                        ; $75a5: $6a
	ld   a, b                                        ; $75a6: $78
	ld   a, c                                        ; $75a7: $79
	add  a                                           ; $75a8: $87
	add  a                                           ; $75a9: $87
	sub  a                                           ; $75aa: $97
	and  a                                           ; $75ab: $a7
	ld   a, b                                        ; $75ac: $78
	ld   l, d                                        ; $75ad: $6a
	ld   l, b                                        ; $75ae: $68
	sub  a                                           ; $75af: $97
	sub  a                                           ; $75b0: $97
	sub  [hl]                                        ; $75b1: $96
	ld   a, c                                        ; $75b2: $79
	ld   a, b                                        ; $75b3: $78
	ld   a, b                                        ; $75b4: $78
	sub  a                                           ; $75b5: $97
	ld   a, d                                        ; $75b6: $7a
	ld   l, c                                        ; $75b7: $69
	and  [hl]                                        ; $75b8: $a6
	xor  b                                           ; $75b9: $a8
	ld   a, b                                        ; $75ba: $78
	add  a                                           ; $75bb: $87
	ld   a, b                                        ; $75bc: $78
	ld   a, c                                        ; $75bd: $79
	ld   a, b                                        ; $75be: $78
	sbc  b                                           ; $75bf: $98
	ld   [hl], a                                     ; $75c0: $77
	xor  b                                           ; $75c1: $a8
	ld   a, c                                        ; $75c2: $79
	ld   a, d                                        ; $75c3: $7a
	halt                                             ; $75c4: $76
	or   l                                           ; $75c5: $b5
	sbc  d                                           ; $75c6: $9a
	ld   l, b                                        ; $75c7: $68
	add  a                                           ; $75c8: $87
	sbc  c                                           ; $75c9: $99
	ld   e, e                                        ; $75ca: $5b
	ld   h, [hl]                                     ; $75cb: $66
	or   l                                           ; $75cc: $b5
	sbc  b                                           ; $75cd: $98
	ld   a, c                                        ; $75ce: $79
	sbc  b                                           ; $75cf: $98
	sub  a                                           ; $75d0: $97
	ld   a, b                                        ; $75d1: $78
	add  a                                           ; $75d2: $87
	ld   a, d                                        ; $75d3: $7a
	sub  [hl]                                        ; $75d4: $96
	sbc  b                                           ; $75d5: $98
	ld   l, d                                        ; $75d6: $6a
	ld   h, a                                        ; $75d7: $67
	or   a                                           ; $75d8: $b7
	ld   a, c                                        ; $75d9: $79
	add  [hl]                                        ; $75da: $86
	and  a                                           ; $75db: $a7
	adc  b                                           ; $75dc: $88
	ld   l, d                                        ; $75dd: $6a
	ld   l, b                                        ; $75de: $68
	adc  b                                           ; $75df: $88
	sub  a                                           ; $75e0: $97
	halt                                             ; $75e1: $76
	sub  a                                           ; $75e2: $97
	sbc  b                                           ; $75e3: $98
	add  a                                           ; $75e4: $87
	ld   l, h                                        ; $75e5: $6c
	ld   h, a                                        ; $75e6: $67
	sbc  b                                           ; $75e7: $98
	ld   a, d                                        ; $75e8: $7a
	or   h                                           ; $75e9: $b4
	ld   a, d                                        ; $75ea: $7a
	ld   a, b                                        ; $75eb: $78
	ld   a, b                                        ; $75ec: $78
	adc  c                                           ; $75ed: $89
	add  [hl]                                        ; $75ee: $86
	sbc  b                                           ; $75ef: $98
	ld   l, c                                        ; $75f0: $69
	and  [hl]                                        ; $75f1: $a6
	adc  d                                           ; $75f2: $8a
	ld   e, l                                        ; $75f3: $5d
	ld   b, [hl]                                     ; $75f4: $46
	jp   nz, Jump_0ef_7bc7                           ; $75f5: $c2 $c7 $7b

	ld   e, e                                        ; $75f8: $5b
	ld   a, b                                        ; $75f9: $78
	ld   l, c                                        ; $75fa: $69
	halt                                             ; $75fb: $76
	call nc, Call_0ef_7cb6                           ; $75fc: $d4 $b6 $7c
	jr   c, jr_0ef_75a5                              ; $75ff: $38 $a4

	sbc  h                                           ; $7601: $9c
	ld   a, [hl-]                                    ; $7602: $3a
	sub  a                                           ; $7603: $97
	and  l                                           ; $7604: $a5
	or   a                                           ; $7605: $b7
	sbc  b                                           ; $7606: $98
	adc  c                                           ; $7607: $89
	adc  c                                           ; $7608: $89
	ld   e, b                                        ; $7609: $58
	adc  b                                           ; $760a: $88
	ld   l, c                                        ; $760b: $69
	sub  [hl]                                        ; $760c: $96
	sbc  c                                           ; $760d: $99
	adc  b                                           ; $760e: $88
	ld   a, c                                        ; $760f: $79
	sbc  b                                           ; $7610: $98
	halt                                             ; $7611: $76
	xor  b                                           ; $7612: $a8
	ld   h, a                                        ; $7613: $67
	sbc  c                                           ; $7614: $99
	ld   e, e                                        ; $7615: $5b
	or   e                                           ; $7616: $b3
	adc  e                                           ; $7617: $8b
	inc  a                                           ; $7618: $3c
	sub  l                                           ; $7619: $95
	xor  b                                           ; $761a: $a8
	sbc  b                                           ; $761b: $98
	ld   l, d                                        ; $761c: $6a
	ld   h, [hl]                                     ; $761d: $66
	call nc, Call_0ef_4cb9                           ; $761e: $d4 $b9 $4c
	ld   h, a                                        ; $7621: $67
	and  a                                           ; $7622: $a7
	ld   a, c                                        ; $7623: $79
	add  a                                           ; $7624: $87
	and  [hl]                                        ; $7625: $a6
	adc  e                                           ; $7626: $8b
	ld   e, c                                        ; $7627: $59
	sub  a                                           ; $7628: $97
	sbc  b                                           ; $7629: $98
	ld   a, b                                        ; $762a: $78
	sub  a                                           ; $762b: $97
	and  [hl]                                        ; $762c: $a6
	sbc  b                                           ; $762d: $98
	ld   e, e                                        ; $762e: $5b
	ld   e, d                                        ; $762f: $5a
	add  [hl]                                        ; $7630: $86
	cp   b                                           ; $7631: $b8
	ld   [hl], a                                     ; $7632: $77
	sub  [hl]                                        ; $7633: $96
	adc  d                                           ; $7634: $8a
	ld   a, b                                        ; $7635: $78
	and  a                                           ; $7636: $a7
	adc  c                                           ; $7637: $89
	halt                                             ; $7638: $76
	sbc  b                                           ; $7639: $98
	ld   a, d                                        ; $763a: $7a
	adc  b                                           ; $763b: $88
	ld   l, c                                        ; $763c: $69
	add  a                                           ; $763d: $87
	sub  [hl]                                        ; $763e: $96
	or   [hl]                                        ; $763f: $b6
	ld   a, e                                        ; $7640: $7b
	ld   e, b                                        ; $7641: $58
	sbc  b                                           ; $7642: $98
	and  l                                           ; $7643: $a5
	adc  e                                           ; $7644: $8b
	ld   [hl], a                                     ; $7645: $77
	sub  a                                           ; $7646: $97
	adc  b                                           ; $7647: $88
	sbc  c                                           ; $7648: $99
	ld   e, d                                        ; $7649: $5a
	add  l                                           ; $764a: $85
	rst  ToBoot                                         ; $764b: $c7
	adc  b                                           ; $764c: $88
	ld   a, c                                        ; $764d: $79
	ld   a, b                                        ; $764e: $78
	adc  d                                           ; $764f: $8a
	ld   h, [hl]                                     ; $7650: $66
	push bc                                          ; $7651: $c5
	sbc  d                                           ; $7652: $9a
	ld   e, e                                        ; $7653: $5b
	ld   a, b                                        ; $7654: $78
	sub  [hl]                                        ; $7655: $96
	and  a                                           ; $7656: $a7
	sub  l                                           ; $7657: $95
	sbc  e                                           ; $7658: $9b
	ld   e, c                                        ; $7659: $59
	xor  b                                           ; $765a: $a8
	ld   a, c                                        ; $765b: $79
	ld   a, c                                        ; $765c: $79
	add  l                                           ; $765d: $85
	add  $89                                         ; $765e: $c6 $89
	ld   l, e                                        ; $7660: $6b
	ld   l, c                                        ; $7661: $69
	sub  l                                           ; $7662: $95
	or   a                                           ; $7663: $b7
	ld   a, c                                        ; $7664: $79
	ld   h, a                                        ; $7665: $67
	xor  b                                           ; $7666: $a8
	ld   l, c                                        ; $7667: $69
	add  a                                           ; $7668: $87
	sbc  c                                           ; $7669: $99
	ld   l, c                                        ; $766a: $69
	sub  [hl]                                        ; $766b: $96
	and  a                                           ; $766c: $a7
	sub  [hl]                                        ; $766d: $96
	adc  c                                           ; $766e: $89
	ld   a, c                                        ; $766f: $79
	ld   l, c                                        ; $7670: $69
	ld   l, d                                        ; $7671: $6a
	ld   l, b                                        ; $7672: $68
	add  a                                           ; $7673: $87
	add  a                                           ; $7674: $87
	sub  a                                           ; $7675: $97
	sbc  b                                           ; $7676: $98
	ld   a, c                                        ; $7677: $79
	ld   l, c                                        ; $7678: $69
	add  a                                           ; $7679: $87
	sub  a                                           ; $767a: $97
	sub  a                                           ; $767b: $97
	adc  b                                           ; $767c: $88
	ld   a, b                                        ; $767d: $78
	add  a                                           ; $767e: $87
	adc  c                                           ; $767f: $89
	ld   a, c                                        ; $7680: $79
	add  a                                           ; $7681: $87
	adc  b                                           ; $7682: $88
	sub  a                                           ; $7683: $97
	and  a                                           ; $7684: $a7
	ld   a, b                                        ; $7685: $78
	ld   a, c                                        ; $7686: $79
	add  a                                           ; $7687: $87
	sbc  b                                           ; $7688: $98
	adc  c                                           ; $7689: $89
	ld   a, d                                        ; $768a: $7a
	add  a                                           ; $768b: $87
	add  a                                           ; $768c: $87
	ld   a, b                                        ; $768d: $78
	add  a                                           ; $768e: $87
	add  a                                           ; $768f: $87
	adc  b                                           ; $7690: $88
	ld   a, c                                        ; $7691: $79
	adc  b                                           ; $7692: $88
	add  a                                           ; $7693: $87
	adc  b                                           ; $7694: $88
	ld   a, b                                        ; $7695: $78
	adc  b                                           ; $7696: $88
	sub  a                                           ; $7697: $97
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

Call_0ef_76c9:
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
	adc  c                                           ; $7813: $89
	sub  a                                           ; $7814: $97
	ld   a, c                                        ; $7815: $79
	sbc  b                                           ; $7816: $98
	adc  c                                           ; $7817: $89
	sub  a                                           ; $7818: $97
	ld   a, b                                        ; $7819: $78
	adc  b                                           ; $781a: $88
	ld   a, b                                        ; $781b: $78
	sub  a                                           ; $781c: $97
	ld   a, b                                        ; $781d: $78
	cp   e                                           ; $781e: $bb
	add  [hl]                                        ; $781f: $86
	sbc  c                                           ; $7820: $99
	ld   [hl], a                                     ; $7821: $77
	ld   a, d                                        ; $7822: $7a
	halt                                             ; $7823: $76
	ld   a, c                                        ; $7824: $79
	adc  d                                           ; $7825: $8a
	cp   b                                           ; $7826: $b8
	sub  [hl]                                        ; $7827: $96
	adc  c                                           ; $7828: $89
	sbc  h                                           ; $7829: $9c
	and  a                                           ; $782a: $a7
	adc  e                                           ; $782b: $8b
	ret                                              ; $782c: $c9


	ld   a, d                                        ; $782d: $7a
	ld   d, e                                        ; $782e: $53
	ld   a, b                                        ; $782f: $78
	add  a                                           ; $7830: $87
	ld   d, [hl]                                     ; $7831: $56
	ld   d, a                                        ; $7832: $57
	halt                                             ; $7833: $76
	sbc  c                                           ; $7834: $99
	sbc  d                                           ; $7835: $9a
	or   a                                           ; $7836: $b7
	ld   c, b                                        ; $7837: $48
	and  [hl]                                        ; $7838: $a6
	ld   [hl], $ad                                   ; $7839: $36 $ad
	ld   d, l                                        ; $783b: $55
	adc  c                                           ; $783c: $89
	ld   h, e                                        ; $783d: $63
	halt                                             ; $783e: $76
	sbc  b                                           ; $783f: $98
	ld   [hl], h                                     ; $7840: $74
	ld   e, b                                        ; $7841: $58
	ld   [hl], a                                     ; $7842: $77
	ld   a, e                                        ; $7843: $7b
	adc  d                                           ; $7844: $8a
	add  [hl]                                        ; $7845: $86
	ld   h, l                                        ; $7846: $65
	add  a                                           ; $7847: $87
	ld   [hl], a                                     ; $7848: $77
	add  [hl]                                        ; $7849: $86
	ld   h, [hl]                                     ; $784a: $66
	ld   l, d                                        ; $784b: $6a
	ld   a, c                                        ; $784c: $79
	sbc  b                                           ; $784d: $98
	ld   [hl], a                                     ; $784e: $77
	sbc  b                                           ; $784f: $98
	halt                                             ; $7850: $76
	halt                                             ; $7851: $76
	ld   [hl], a                                     ; $7852: $77
	ld   a, b                                        ; $7853: $78
	sbc  d                                           ; $7854: $9a
	sbc  d                                           ; $7855: $9a
	xor  e                                           ; $7856: $ab
	xor  e                                           ; $7857: $ab
	and  l                                           ; $7858: $a5
	ld   de, $7911                                   ; $7859: $11 $11 $79
	sbc  h                                           ; $785c: $9c
	rst  $38                                         ; $785d: $ff
	rst  $38                                         ; $785e: $ff
	rst  $38                                         ; $785f: $ff
	or   c                                           ; $7860: $b1
	ld   de, $1111                                   ; $7861: $11 $11 $11
	ld   a, a                                        ; $7864: $7f
	rst  $38                                         ; $7865: $ff
	rst  $38                                         ; $7866: $ff
	cp   $11                                         ; $7867: $fe $11
	ld   de, $1111                                   ; $7869: $11 $11 $11
	rst  $38                                         ; $786c: $ff
	rst  $38                                         ; $786d: $ff
	rst  $38                                         ; $786e: $ff
	db   $fc                                         ; $786f: $fc
	ld   hl, $1111                                   ; $7870: $21 $11 $11
	ld   d, $ff                                      ; $7873: $16 $ff
	rst  $38                                         ; $7875: $ff
	rst  $38                                         ; $7876: $ff
	db   $fc                                         ; $7877: $fc
	ld   sp, $1111                                   ; $7878: $31 $11 $11
	ld   a, e                                        ; $787b: $7b
	rst  $38                                         ; $787c: $ff
	rst  $38                                         ; $787d: $ff
	rst  $38                                         ; $787e: $ff
	cp   e                                           ; $787f: $bb
	ld   de, $1711                                   ; $7880: $11 $11 $17
	xor  a                                           ; $7883: $af
	rst  $38                                         ; $7884: $ff
	rst  $38                                         ; $7885: $ff
	ei                                               ; $7886: $fb
	push bc                                          ; $7887: $c5
	ld   de, $2c11                                   ; $7888: $11 $11 $2c
	cp   a                                           ; $788b: $bf
	rst  $38                                         ; $788c: $ff
	rst  $38                                         ; $788d: $ff
	db   $ec                                         ; $788e: $ec
	pop  de                                          ; $788f: $d1
	ld   de, $9a11                                   ; $7890: $11 $11 $9a
	rst  $28                                         ; $7893: $ef
	rst  $38                                         ; $7894: $ff
	rst  $38                                         ; $7895: $ff
	xor  h                                           ; $7896: $ac
	and  c                                           ; $7897: $a1
	ld   de, $d718                                   ; $7898: $11 $18 $d7
	rst  $38                                         ; $789b: $ff
	rst  $38                                         ; $789c: $ff
	db   $fc                                         ; $789d: $fc
	cp   a                                           ; $789e: $bf
	ld   h, c                                        ; $789f: $61
	ld   de, $dc1b                                   ; $78a0: $11 $1b $dc
	rst  $38                                         ; $78a3: $ff
	rst  $38                                         ; $78a4: $ff
	or   $cf                                         ; $78a5: $f6 $cf
	ld   de, $3f11                                   ; $78a7: $11 $11 $3f
	call z, $ffff                                    ; $78aa: $cc $ff $ff
	rst  $30                                         ; $78ad: $f7
	rst  $38                                         ; $78ae: $ff
	ld   de, $8f11                                   ; $78af: $11 $11 $8f
	ld   a, e                                        ; $78b2: $7b
	rst  $38                                         ; $78b3: $ff
	rst  $38                                         ; $78b4: $ff
	sbc  e                                           ; $78b5: $9b
	db   $fd                                         ; $78b6: $fd
	ld   de, $cf11                                   ; $78b7: $11 $11 $cf
	sub  a                                           ; $78ba: $97
	rst  $38                                         ; $78bb: $ff
	rst  $38                                         ; $78bc: $ff
	sbc  a                                           ; $78bd: $9f
	ld   sp, hl                                      ; $78be: $f9
	ld   de, rAUD1LEN                                   ; $78bf: $11 $11 $ff
	ld   c, h                                        ; $78c2: $4c
	rst  $38                                         ; $78c3: $ff
	rst  $38                                         ; $78c4: $ff
	cp   a                                           ; $78c5: $bf
	ei                                               ; $78c6: $fb
	ld   de, rAUD1LEN                                   ; $78c7: $11 $11 $ff
	ld   e, l                                        ; $78ca: $5d
	rst  $38                                         ; $78cb: $ff
	rst  $38                                         ; $78cc: $ff
	adc  a                                           ; $78cd: $8f
	cp   $11                                         ; $78ce: $fe $11
	ld   de, $6cff                                   ; $78d0: $11 $ff $6c
	rst  $38                                         ; $78d3: $ff
	rst  $38                                         ; $78d4: $ff
	sbc  a                                           ; $78d5: $9f
	cp   $11                                         ; $78d6: $fe $11
	ld   de, $6cdf                                   ; $78d8: $11 $df $6c
	rst  $38                                         ; $78db: $ff
	rst  $38                                         ; $78dc: $ff
	ld   sp, hl                                      ; $78dd: $f9
	rst  $38                                         ; $78de: $ff
	ld   de, $9f11                                   ; $78df: $11 $11 $9f
	and  h                                           ; $78e2: $a4
	rst  $38                                         ; $78e3: $ff
	rst  $38                                         ; $78e4: $ff
	db   $fd                                         ; $78e5: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78e6: $cf
	ld   h, c                                        ; $78e7: $61
	ld   de, $f61f                                   ; $78e8: $11 $1f $f6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78eb: $cf
	rst  $38                                         ; $78ec: $ff
	rst  $38                                         ; $78ed: $ff
	rst  JumpTable                                         ; $78ee: $df
	pop  bc                                          ; $78ef: $c1
	ld   de, $fe1c                                   ; $78f0: $11 $1c $fe
	xor  a                                           ; $78f3: $af
	rst  $38                                         ; $78f4: $ff
	rst  $38                                         ; $78f5: $ff
	db   $ed                                         ; $78f6: $ed
	di                                               ; $78f7: $f3
	ld   de, rAUD1LEN                                   ; $78f8: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78fb: $cf
	rst  $38                                         ; $78fc: $ff
	rst  $38                                         ; $78fd: $ff
	jp   hl                                          ; $78fe: $e9


	db   $ed                                         ; $78ff: $ed
	ld   de, $df11                                   ; $7900: $11 $11 $df
	db   $fd                                         ; $7903: $fd
	rst  $38                                         ; $7904: $ff
	rst  $38                                         ; $7905: $ff
	ld   a, [$51df]                                  ; $7906: $fa $df $51
	ld   de, $fc1f                                   ; $7909: $11 $1f $fc
	rst  $38                                         ; $790c: $ff
	rst  $38                                         ; $790d: $ff
	cp   $ce                                         ; $790e: $fe $ce
	pop  hl                                          ; $7910: $e1
	ld   de, $ff1d                                   ; $7911: $11 $1d $ff
	xor  a                                           ; $7914: $af
	rst  $38                                         ; $7915: $ff
	db   $fd                                         ; $7916: $fd
	sbc  h                                           ; $7917: $9c
	ei                                               ; $7918: $fb
	ld   de, rAUD1LEN                                   ; $7919: $11 $11 $ff
	jp   hl                                          ; $791c: $e9


	rst  $38                                         ; $791d: $ff
	rst  $38                                         ; $791e: $ff
	sub  a                                           ; $791f: $97
	rst  $28                                         ; $7920: $ef
	pop  bc                                          ; $7921: $c1
	ld   de, $fc1f                                   ; $7922: $11 $1f $fc
	ld   a, a                                        ; $7925: $7f
	rst  $38                                         ; $7926: $ff
	ld   a, [$f45d]                                  ; $7927: $fa $5d $f4
	ld   de, rAUD1LEN                                   ; $792a: $11 $11 $ff
	rst  $38                                         ; $792d: $ff
	rst  $38                                         ; $792e: $ff
	rst  $38                                         ; $792f: $ff
	db   $eb                                         ; $7930: $eb
	sbc  a                                           ; $7931: $9f
	sub  c                                           ; $7932: $91
	ld   de, $ff1f                                   ; $7933: $11 $1f $ff
	sbc  a                                           ; $7936: $9f
	rst  $38                                         ; $7937: $ff
	cp   $79                                         ; $7938: $fe $79
	ld   sp, hl                                      ; $793a: $f9
	ld   de, rAUD1LEN                                   ; $793b: $11 $11 $ff
	ld   a, [$ffff]                                  ; $793e: $fa $ff $ff
	add  [hl]                                        ; $7941: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7942: $cf
	sub  c                                           ; $7943: $91
	ld   de, $ff1f                                   ; $7944: $11 $1f $ff
	cp   a                                           ; $7947: $bf
	rst  $38                                         ; $7948: $ff
	ei                                               ; $7949: $fb
	ld   l, d                                        ; $794a: $6a
	ei                                               ; $794b: $fb
	ld   de, rAUD1LEN                                   ; $794c: $11 $11 $ff
	ld   a, [$ffdf]                                  ; $794f: $fa $df $ff
	xor  b                                           ; $7952: $a8
	xor  a                                           ; $7953: $af
	pop  hl                                          ; $7954: $e1
	ld   de, $ff1b                                   ; $7955: $11 $1b $ff
	cp   a                                           ; $7958: $bf
	rst  $38                                         ; $7959: $ff
	ld   a, [$ff8a]                                  ; $795a: $fa $8a $ff
	ld   de, $2f11                                   ; $795d: $11 $11 $2f
	db   $fd                                         ; $7960: $fd
	xor  a                                           ; $7961: $af
	rst  $38                                         ; $7962: $ff
	rst  $30                                         ; $7963: $f7
	ld   c, d                                        ; $7964: $4a
	cp   $11                                         ; $7965: $fe $11
	ld   de, $f9ff                                   ; $7967: $11 $ff $f9
	rst  $38                                         ; $796a: $ff
	rst  $38                                         ; $796b: $ff
	add  h                                           ; $796c: $84
	cp   a                                           ; $796d: $bf
	pop  af                                          ; $796e: $f1
	ld   de, $ff17                                   ; $796f: $11 $17 $ff
	cp   [hl]                                        ; $7972: $be
	rst  $38                                         ; $7973: $ff
	db   $fc                                         ; $7974: $fc
	ld   b, e                                        ; $7975: $43
	rst  JumpTable                                         ; $7976: $df
	pop  de                                          ; $7977: $d1
	ld   de, $ff1f                                   ; $7978: $11 $1f $ff
	adc  a                                           ; $797b: $8f
	rst  $38                                         ; $797c: $ff
	ld   hl, sp+$12                                  ; $797d: $f8 $12
	rst  $38                                         ; $797f: $ff
	ld   sp, $8f11                                   ; $7980: $31 $11 $8f
	db   $fc                                         ; $7983: $fc
	rst  $38                                         ; $7984: $ff
	rst  $38                                         ; $7985: $ff
	and  c                                           ; $7986: $a1
	cpl                                              ; $7987: $2f
	ld   hl, sp+$11                                  ; $7988: $f8 $11
	ld   de, $ffbf                                   ; $798a: $11 $bf $ff
	rst  $38                                         ; $798d: $ff
	rst  $38                                         ; $798e: $ff
	ld   d, c                                        ; $798f: $51
	ld   a, a                                        ; $7990: $7f
	pop  af                                          ; $7991: $f1
	ld   de, rAUD1HIGH                                   ; $7992: $11 $14 $ff
	rst  $38                                         ; $7995: $ff
	rst  $38                                         ; $7996: $ff
	ei                                               ; $7997: $fb
	ld   de, $a1ff                                   ; $7998: $11 $ff $a1
	ld   de, $ff1d                                   ; $799b: $11 $1d $ff
	rst  JumpTable                                         ; $799e: $df
	rst  $38                                         ; $799f: $ff
	or   $13                                         ; $79a0: $f6 $13
	rst  $38                                         ; $79a2: $ff
	ld   hl, $1f11                                   ; $79a3: $21 $11 $1f
	rst  $38                                         ; $79a6: $ff
	rst  JumpTable                                         ; $79a7: $df
	rst  $38                                         ; $79a8: $ff
	db   $f4                                         ; $79a9: $f4
	add  hl, de                                      ; $79aa: $19
	cp   $11                                         ; $79ab: $fe $11
	ld   de, $fd9f                                   ; $79ad: $11 $9f $fd
	rst  $38                                         ; $79b0: $ff
	rst  $38                                         ; $79b1: $ff
	sub  c                                           ; $79b2: $91
	ccf                                              ; $79b3: $3f
	pop  af                                          ; $79b4: $f1
	ld   de, $df11                                   ; $79b5: $11 $11 $df
	rst  $38                                         ; $79b8: $ff
	rst  $38                                         ; $79b9: $ff
	rst  $38                                         ; $79ba: $ff
	ld   d, e                                        ; $79bb: $53
	adc  a                                           ; $79bc: $8f
	pop  de                                          ; $79bd: $d1
	ld   de, rAUD1ENV                                   ; $79be: $11 $12 $ff
	rst  $38                                         ; $79c1: $ff
	rst  $38                                         ; $79c2: $ff
	rst  $38                                         ; $79c3: $ff
	ld   de, $91df                                   ; $79c4: $11 $df $91
	ld   de, $ff17                                   ; $79c7: $11 $17 $ff
	rst  JumpTable                                         ; $79ca: $df
	rst  $38                                         ; $79cb: $ff
	ld   sp, hl                                      ; $79cc: $f9
	dec  h                                           ; $79cd: $25
	rst  $38                                         ; $79ce: $ff
	ld   sp, $1b11                                   ; $79cf: $31 $11 $1b
	rst  $38                                         ; $79d2: $ff
	rst  $28                                         ; $79d3: $ef
	rst  $38                                         ; $79d4: $ff
	ld   hl, sp+$26                                  ; $79d5: $f8 $26
	db   $ed                                         ; $79d7: $ed
	ld   de, $1d11                                   ; $79d8: $11 $11 $1d
	rst  $38                                         ; $79db: $ff
	rst  $38                                         ; $79dc: $ff
	rst  $38                                         ; $79dd: $ff
	push af                                          ; $79de: $f5
	dec  d                                           ; $79df: $15
	db   $fd                                         ; $79e0: $fd
	ld   de, $1d11                                   ; $79e1: $11 $11 $1d
	rst  $38                                         ; $79e4: $ff
	rst  $38                                         ; $79e5: $ff
	rst  $38                                         ; $79e6: $ff
	or   $27                                         ; $79e7: $f6 $27
	reti                                             ; $79e9: $d9


	ld   de, $1d11                                   ; $79ea: $11 $11 $1d
	db   $fd                                         ; $79ed: $fd
	rst  $38                                         ; $79ee: $ff
	rst  $38                                         ; $79ef: $ff
	db   $f4                                         ; $79f0: $f4
	ld   a, [hl+]                                    ; $79f1: $2a
	db   $e4                                         ; $79f2: $e4
	ld   de, $1b11                                   ; $79f3: $11 $11 $1b
	rst  $38                                         ; $79f6: $ff
	rst  $38                                         ; $79f7: $ff
	rst  $38                                         ; $79f8: $ff
	ld   sp, hl                                      ; $79f9: $f9
	ld   e, b                                        ; $79fa: $58
	sub  h                                           ; $79fb: $94
	ld   de, $1d11                                   ; $79fc: $11 $11 $1d
	rst  $38                                         ; $79ff: $ff
	rst  $38                                         ; $7a00: $ff
	rst  $38                                         ; $7a01: $ff
	ld   hl, sp+$58                                  ; $7a02: $f8 $58
	add  c                                           ; $7a04: $81
	ld   de, $1911                                   ; $7a05: $11 $11 $19
	rst  $28                                         ; $7a08: $ef
	rst  $38                                         ; $7a09: $ff
	rst  $38                                         ; $7a0a: $ff
	rst  $30                                         ; $7a0b: $f7
	ld   l, d                                        ; $7a0c: $6a
	add  c                                           ; $7a0d: $81
	ld   de, $1a11                                   ; $7a0e: $11 $11 $1a
	rst  JumpTable                                         ; $7a11: $df
	rst  $38                                         ; $7a12: $ff
	rst  $38                                         ; $7a13: $ff
	ld   hl, sp+$6a                                  ; $7a14: $f8 $6a
	ld   [hl], c                                     ; $7a16: $71
	ld   de, $1811                                   ; $7a17: $11 $11 $18
	rst  JumpTable                                         ; $7a1a: $df
	rst  $38                                         ; $7a1b: $ff
	rst  $38                                         ; $7a1c: $ff
	ei                                               ; $7a1d: $fb
	sbc  d                                           ; $7a1e: $9a
	add  c                                           ; $7a1f: $81
	ld   de, $1311                                   ; $7a20: $11 $11 $13
	sbc  [hl]                                        ; $7a23: $9e
	rst  $38                                         ; $7a24: $ff
	rst  $38                                         ; $7a25: $ff
	rst  $38                                         ; $7a26: $ff
	xor  c                                           ; $7a27: $a9
	add  e                                           ; $7a28: $83
	ld   de, $1111                                   ; $7a29: $11 $11 $11
	xor  h                                           ; $7a2c: $ac
	rst  $38                                         ; $7a2d: $ff
	rst  $38                                         ; $7a2e: $ff
	rst  $38                                         ; $7a2f: $ff
	call c, $11a5                                    ; $7a30: $dc $a5 $11
	ld   de, $3711                                   ; $7a33: $11 $11 $37
	rst  $28                                         ; $7a36: $ef
	rst  $38                                         ; $7a37: $ff
	rst  $38                                         ; $7a38: $ff
	cp   $e8                                         ; $7a39: $fe $e8
	ld   de, $1111                                   ; $7a3b: $11 $11 $11
	ld   [de], a                                     ; $7a3e: $12
	adc  a                                           ; $7a3f: $8f
	rst  $38                                         ; $7a40: $ff
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	ei                                               ; $7a43: $fb
	ld   b, c                                        ; $7a44: $41
	ld   de, $1111                                   ; $7a45: $11 $11 $11
	ld   [hl], $df                                   ; $7a48: $36 $df
	rst  $38                                         ; $7a4a: $ff
	rst  $38                                         ; $7a4b: $ff
	db   $fd                                         ; $7a4c: $fd
	sub  [hl]                                        ; $7a4d: $96
	ld   sp, $1111                                   ; $7a4e: $31 $11 $11
	ld   [hl+], a                                    ; $7a51: $22
	scf                                              ; $7a52: $37
	rst  JumpTable                                         ; $7a53: $df
	rst  $38                                         ; $7a54: $ff
	res  5, c                                        ; $7a55: $cb $a9
	sbc  b                                           ; $7a57: $98
	ld   h, a                                        ; $7a58: $67
	halt                                             ; $7a59: $76
	ld   a, b                                        ; $7a5a: $78
	ld   h, [hl]                                     ; $7a5b: $66
	ld   [hl], a                                     ; $7a5c: $77
	sbc  c                                           ; $7a5d: $99
	halt                                             ; $7a5e: $76
	ld   h, [hl]                                     ; $7a5f: $66
	ld   a, b                                        ; $7a60: $78
	sbc  d                                           ; $7a61: $9a
	xor  e                                           ; $7a62: $ab
	cp   h                                           ; $7a63: $bc
	res  7, c                                        ; $7a64: $cb $b9
	sub  a                                           ; $7a66: $97
	ld   h, l                                        ; $7a67: $65
	ld   b, e                                        ; $7a68: $43
	ld   b, l                                        ; $7a69: $45
	ld   d, [hl]                                     ; $7a6a: $56
	ld   a, c                                        ; $7a6b: $79
	sbc  d                                           ; $7a6c: $9a
	cp   e                                           ; $7a6d: $bb
	call c, $87ca                                    ; $7a6e: $dc $ca $87
	ld   h, l                                        ; $7a71: $65
	ld   b, e                                        ; $7a72: $43
	ld   b, h                                        ; $7a73: $44
	ld   d, [hl]                                     ; $7a74: $56
	ld   a, b                                        ; $7a75: $78
	xor  h                                           ; $7a76: $ac
	call z, $bacb                                    ; $7a77: $cc $cb $ba
	sub  a                                           ; $7a7a: $97
	ld   d, l                                        ; $7a7b: $55
	ld   b, h                                        ; $7a7c: $44
	ld   b, h                                        ; $7a7d: $44
	ld   d, [hl]                                     ; $7a7e: $56
	ld   a, b                                        ; $7a7f: $78
	xor  e                                           ; $7a80: $ab
	call z, $babb                                    ; $7a81: $cc $bb $ba
	sbc  b                                           ; $7a84: $98
	ld   h, [hl]                                     ; $7a85: $66
	ld   h, [hl]                                     ; $7a86: $66
	ld   d, l                                        ; $7a87: $55
	ld   h, [hl]                                     ; $7a88: $66
	ld   a, b                                        ; $7a89: $78
	adc  b                                           ; $7a8a: $88
	sbc  c                                           ; $7a8b: $99
	xor  d                                           ; $7a8c: $aa
	sbc  c                                           ; $7a8d: $99
	sbc  c                                           ; $7a8e: $99
	sbc  c                                           ; $7a8f: $99
	add  a                                           ; $7a90: $87
	ld   [hl], a                                     ; $7a91: $77
	halt                                             ; $7a92: $76
	ld   h, [hl]                                     ; $7a93: $66
	ld   h, [hl]                                     ; $7a94: $66
	ld   [hl], a                                     ; $7a95: $77
	adc  b                                           ; $7a96: $88
	sbc  d                                           ; $7a97: $9a
	cp   d                                           ; $7a98: $ba
	cp   d                                           ; $7a99: $ba
	xor  d                                           ; $7a9a: $aa
	adc  b                                           ; $7a9b: $88
	halt                                             ; $7a9c: $76
	ld   d, l                                        ; $7a9d: $55
	ld   d, l                                        ; $7a9e: $55
	ld   d, l                                        ; $7a9f: $55
	ld   a, b                                        ; $7aa0: $78
	sbc  c                                           ; $7aa1: $99
	xor  d                                           ; $7aa2: $aa
	set  1, d                                        ; $7aa3: $cb $ca
	xor  c                                           ; $7aa5: $a9
	ld   [hl], a                                     ; $7aa6: $77
	ld   h, h                                        ; $7aa7: $64
	ld   b, h                                        ; $7aa8: $44
	ld   d, l                                        ; $7aa9: $55
	ld   h, [hl]                                     ; $7aaa: $66
	ld   a, b                                        ; $7aab: $78
	xor  d                                           ; $7aac: $aa
	cp   e                                           ; $7aad: $bb
	cp   e                                           ; $7aae: $bb
	xor  d                                           ; $7aaf: $aa
	add  a                                           ; $7ab0: $87
	ld   h, [hl]                                     ; $7ab1: $66
	ld   d, l                                        ; $7ab2: $55
	ld   d, l                                        ; $7ab3: $55
	ld   d, l                                        ; $7ab4: $55
	ld   a, b                                        ; $7ab5: $78
	sbc  d                                           ; $7ab6: $9a
	sbc  e                                           ; $7ab7: $9b
	cp   d                                           ; $7ab8: $ba
	sbc  d                                           ; $7ab9: $9a
	sbc  c                                           ; $7aba: $99
	adc  b                                           ; $7abb: $88
	halt                                             ; $7abc: $76
	ld   d, l                                        ; $7abd: $55
	ld   d, l                                        ; $7abe: $55
	ld   h, [hl]                                     ; $7abf: $66
	ld   h, a                                        ; $7ac0: $67
	adc  c                                           ; $7ac1: $89
	xor  c                                           ; $7ac2: $a9
	xor  e                                           ; $7ac3: $ab
	cp   e                                           ; $7ac4: $bb
	xor  c                                           ; $7ac5: $a9
	adc  b                                           ; $7ac6: $88
	add  a                                           ; $7ac7: $87
	ld   h, l                                        ; $7ac8: $65
	ld   d, l                                        ; $7ac9: $55
	ld   d, [hl]                                     ; $7aca: $56
	ld   h, [hl]                                     ; $7acb: $66
	ld   a, c                                        ; $7acc: $79
	sbc  d                                           ; $7acd: $9a
	xor  d                                           ; $7ace: $aa
	xor  e                                           ; $7acf: $ab
	xor  e                                           ; $7ad0: $ab
	xor  b                                           ; $7ad1: $a8
	ld   [hl], a                                     ; $7ad2: $77
	ld   h, l                                        ; $7ad3: $65
	ld   d, l                                        ; $7ad4: $55
	ld   d, l                                        ; $7ad5: $55
	ld   h, a                                        ; $7ad6: $67
	ld   a, b                                        ; $7ad7: $78
	adc  c                                           ; $7ad8: $89
	xor  e                                           ; $7ad9: $ab
	cp   d                                           ; $7ada: $ba
	xor  d                                           ; $7adb: $aa
	xor  c                                           ; $7adc: $a9
	add  a                                           ; $7add: $87
	ld   h, [hl]                                     ; $7ade: $66
	ld   h, [hl]                                     ; $7adf: $66
	ld   h, [hl]                                     ; $7ae0: $66
	ld   h, a                                        ; $7ae1: $67
	ld   a, b                                        ; $7ae2: $78
	sbc  b                                           ; $7ae3: $98
	sbc  d                                           ; $7ae4: $9a
	sbc  c                                           ; $7ae5: $99
	xor  d                                           ; $7ae6: $aa
	sbc  d                                           ; $7ae7: $9a
	sbc  c                                           ; $7ae8: $99
	ld   [hl], a                                     ; $7ae9: $77
	ld   h, [hl]                                     ; $7aea: $66
	ld   h, [hl]                                     ; $7aeb: $66
	ld   h, [hl]                                     ; $7aec: $66
	ld   h, [hl]                                     ; $7aed: $66
	ld   a, b                                        ; $7aee: $78
	sbc  c                                           ; $7aef: $99
	xor  d                                           ; $7af0: $aa
	xor  e                                           ; $7af1: $ab
	xor  d                                           ; $7af2: $aa
	sbc  c                                           ; $7af3: $99
	sbc  b                                           ; $7af4: $98
	halt                                             ; $7af5: $76
	ld   d, l                                        ; $7af6: $55
	ld   d, [hl]                                     ; $7af7: $56
	ld   h, [hl]                                     ; $7af8: $66
	ld   [hl], a                                     ; $7af9: $77
	adc  c                                           ; $7afa: $89
	xor  c                                           ; $7afb: $a9
	xor  e                                           ; $7afc: $ab
	xor  d                                           ; $7afd: $aa
	xor  c                                           ; $7afe: $a9
	sbc  b                                           ; $7aff: $98
	ld   [hl], a                                     ; $7b00: $77
	ld   h, [hl]                                     ; $7b01: $66
	ld   h, [hl]                                     ; $7b02: $66
	ld   h, [hl]                                     ; $7b03: $66
	ld   [hl], a                                     ; $7b04: $77
	adc  c                                           ; $7b05: $89
	sbc  d                                           ; $7b06: $9a
	xor  d                                           ; $7b07: $aa
	xor  c                                           ; $7b08: $a9
	sbc  d                                           ; $7b09: $9a
	sbc  c                                           ; $7b0a: $99
	add  a                                           ; $7b0b: $87
	halt                                             ; $7b0c: $76
	ld   h, [hl]                                     ; $7b0d: $66
	ld   h, [hl]                                     ; $7b0e: $66
	ld   [hl], a                                     ; $7b0f: $77
	ld   a, b                                        ; $7b10: $78
	adc  d                                           ; $7b11: $8a
	sbc  c                                           ; $7b12: $99
	sbc  d                                           ; $7b13: $9a
	xor  d                                           ; $7b14: $aa
	xor  d                                           ; $7b15: $aa
	adc  b                                           ; $7b16: $88
	ld   [hl], a                                     ; $7b17: $77
	ld   [hl], l                                     ; $7b18: $75
	ld   d, l                                        ; $7b19: $55
	ld   d, [hl]                                     ; $7b1a: $56
	ld   a, b                                        ; $7b1b: $78
	xor  h                                           ; $7b1c: $ac
	xor  h                                           ; $7b1d: $ac
	jp   c, $ab9a                                    ; $7b1e: $da $9a $ab

	xor  c                                           ; $7b21: $a9
	add  l                                           ; $7b22: $85
	inc  [hl]                                        ; $7b23: $34
	ld   b, e                                        ; $7b24: $43
	ld   b, l                                        ; $7b25: $45
	ld   d, [hl]                                     ; $7b26: $56
	ld   [hl], a                                     ; $7b27: $77
	sbc  d                                           ; $7b28: $9a
	xor  e                                           ; $7b29: $ab
	xor  d                                           ; $7b2a: $aa
	sbc  c                                           ; $7b2b: $99
	xor  d                                           ; $7b2c: $aa
	xor  b                                           ; $7b2d: $a8
	ld   h, l                                        ; $7b2e: $65
	ld   d, h                                        ; $7b2f: $54
	ld   b, h                                        ; $7b30: $44
	ld   d, a                                        ; $7b31: $57
	ld   [hl], a                                     ; $7b32: $77
	sbc  d                                           ; $7b33: $9a
	adc  $de                                         ; $7b34: $ce $de
	ret  z                                           ; $7b36: $c8

	adc  c                                           ; $7b37: $89
	halt                                             ; $7b38: $76
	ld   b, e                                        ; $7b39: $43
	ld   [hl+], a                                    ; $7b3a: $22
	ld   [hl+], a                                    ; $7b3b: $22
	ld   b, l                                        ; $7b3c: $45
	adc  d                                           ; $7b3d: $8a
	cp   l                                           ; $7b3e: $bd
	rst  $38                                         ; $7b3f: $ff
	rst  $38                                         ; $7b40: $ff
	jp   c, $6676                                    ; $7b41: $da $76 $66

	ld   sp, $1111                                   ; $7b44: $31 $11 $11
	dec  d                                           ; $7b47: $15
	sbc  d                                           ; $7b48: $9a
	rst  JumpTable                                         ; $7b49: $df
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	and  e                                           ; $7b4d: $a3
	ld   [hl+], a                                    ; $7b4e: $22
	ld   de, $1111                                   ; $7b4f: $11 $11 $11
	ld   de, $ff7c                                   ; $7b52: $11 $7c $ff
	rst  $38                                         ; $7b55: $ff
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	ei                                               ; $7b58: $fb
	ld   de, $1111                                   ; $7b59: $11 $11 $11
	ld   de, $1811                                   ; $7b5c: $11 $11 $18
	rst  $38                                         ; $7b5f: $ff
	rst  $38                                         ; $7b60: $ff
	rst  $38                                         ; $7b61: $ff
	rst  $38                                         ; $7b62: $ff
	rst  $38                                         ; $7b63: $ff
	and  c                                           ; $7b64: $a1
	ld   de, $1111                                   ; $7b65: $11 $11 $11
	ld   de, $df13                                   ; $7b68: $11 $13 $df
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	rst  $38                                         ; $7b6e: $ff
	di                                               ; $7b6f: $f3
	ld   de, $1111                                   ; $7b70: $11 $11 $11
	ld   de, $ef13                                   ; $7b73: $11 $13 $ef
	rst  $38                                         ; $7b76: $ff
	rst  $38                                         ; $7b77: $ff
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	db   $d3                                         ; $7b7a: $d3
	ld   de, $1111                                   ; $7b7b: $11 $11 $11
	ld   de, $ff19                                   ; $7b7e: $11 $19 $ff
	rst  $38                                         ; $7b81: $ff
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	ld   h, c                                        ; $7b85: $61
	ld   de, $1111                                   ; $7b86: $11 $11 $11
	ld   de, $ff7f                                   ; $7b89: $11 $7f $ff
	rst  $38                                         ; $7b8c: $ff
	rst  $38                                         ; $7b8d: $ff
	rst  $38                                         ; $7b8e: $ff
	rst  $30                                         ; $7b8f: $f7
	ld   de, $1111                                   ; $7b90: $11 $11 $11
	ld   de, $ff17                                   ; $7b93: $11 $17 $ff
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	rst  $38                                         ; $7b98: $ff
	rst  $38                                         ; $7b99: $ff
	ld   h, c                                        ; $7b9a: $61
	ld   de, $1111                                   ; $7b9b: $11 $11 $11
	ld   de, $ffdf                                   ; $7b9e: $11 $df $ff
	rst  $38                                         ; $7ba1: $ff
	rst  $38                                         ; $7ba2: $ff
	rst  $38                                         ; $7ba3: $ff
	sub  c                                           ; $7ba4: $91
	ld   de, $1111                                   ; $7ba5: $11 $11 $11
	ld   de, $ff7f                                   ; $7ba8: $11 $7f $ff
	rst  $38                                         ; $7bab: $ff
	rst  $38                                         ; $7bac: $ff
	rst  $38                                         ; $7bad: $ff
	jp   nz, $1111                                   ; $7bae: $c2 $11 $11

	ld   de, $3f11                                   ; $7bb1: $11 $11 $3f
	rst  $38                                         ; $7bb4: $ff
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff
	rst  $38                                         ; $7bb7: $ff
	db   $f4                                         ; $7bb8: $f4
	ld   de, $1111                                   ; $7bb9: $11 $11 $11
	ld   de, $ff1f                                   ; $7bbc: $11 $1f $ff
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	ld   hl, sp+$11                                  ; $7bc2: $f8 $11
	ld   de, $1111                                   ; $7bc4: $11 $11 $11

Jump_0ef_7bc7:
	inc  e                                           ; $7bc7: $1c
	rst  $38                                         ; $7bc8: $ff
	rst  $38                                         ; $7bc9: $ff
	rst  $38                                         ; $7bca: $ff
	rst  $38                                         ; $7bcb: $ff
	add  sp, $11                                     ; $7bcc: $e8 $11
	ld   de, $1111                                   ; $7bce: $11 $11 $11
	jr   @+$01                                       ; $7bd1: $18 $ff

	rst  $38                                         ; $7bd3: $ff
	rst  $38                                         ; $7bd4: $ff
	rst  $38                                         ; $7bd5: $ff
	ret                                              ; $7bd6: $c9


	ld   de, $1111                                   ; $7bd7: $11 $11 $11
	ld   de, $ff15                                   ; $7bda: $11 $15 $ff
	rst  $38                                         ; $7bdd: $ff
	rst  $38                                         ; $7bde: $ff
	rst  $38                                         ; $7bdf: $ff
	and  l                                           ; $7be0: $a5
	ld   hl, $1111                                   ; $7be1: $21 $11 $11
	ld   de, rAUDVOL                                   ; $7be4: $11 $24 $ff
	rst  $38                                         ; $7be7: $ff
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	or   h                                           ; $7bea: $b4
	ld   hl, $1111                                   ; $7beb: $21 $11 $11
	ld   de, $bf46                                   ; $7bee: $11 $46 $bf
	rst  $38                                         ; $7bf1: $ff
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	and  a                                           ; $7bf4: $a7
	ld   hl, $1111                                   ; $7bf5: $21 $11 $11
	ld   de, $8f18                                   ; $7bf8: $11 $18 $8f
	rst  $38                                         ; $7bfb: $ff
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	ld   hl, sp+$51                                  ; $7bfe: $f8 $51
	ld   de, $1111                                   ; $7c00: $11 $11 $11
	ld   de, $ffa9                                   ; $7c03: $11 $a9 $ff
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	db   $fc                                         ; $7c08: $fc
	ld   [hl], d                                     ; $7c09: $72
	ld   de, $1111                                   ; $7c0a: $11 $11 $11
	ld   de, $bf2a                                   ; $7c0d: $11 $2a $bf
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	ld   [hl], l                                     ; $7c13: $75
	ld   hl, $1111                                   ; $7c14: $21 $11 $11
	ld   de, $ef16                                   ; $7c17: $11 $16 $ef
	rst  $38                                         ; $7c1a: $ff
	rst  $38                                         ; $7c1b: $ff
	rst  $38                                         ; $7c1c: $ff
	db   $f4                                         ; $7c1d: $f4
	ld   b, c                                        ; $7c1e: $41
	ld   hl, $1111                                   ; $7c1f: $21 $11 $11
	ld   de, $df9b                                   ; $7c22: $11 $9b $df
	rst  $38                                         ; $7c25: $ff
	rst  $38                                         ; $7c26: $ff
	cp   $56                                         ; $7c27: $fe $56
	inc  [hl]                                        ; $7c29: $34
	ld   hl, $1111                                   ; $7c2a: $21 $11 $11
	ld   d, $99                                      ; $7c2d: $16 $99
	rst  $38                                         ; $7c2f: $ff
	rst  $38                                         ; $7c30: $ff
	rst  $38                                         ; $7c31: $ff
	rst  $30                                         ; $7c32: $f7
	ld   h, [hl]                                     ; $7c33: $66
	ld   d, h                                        ; $7c34: $54
	ld   de, $1111                                   ; $7c35: $11 $11 $11
	jr   jr_0ef_7ca8                                 ; $7c38: $18 $6e

	rst  $38                                         ; $7c3a: $ff
	rst  $38                                         ; $7c3b: $ff
	rst  $38                                         ; $7c3c: $ff
	or   [hl]                                        ; $7c3d: $b6
	halt                                             ; $7c3e: $76
	ld   h, e                                        ; $7c3f: $63
	ld   de, $1111                                   ; $7c40: $11 $11 $11
	ld   b, a                                        ; $7c43: $47
	xor  a                                           ; $7c44: $af
	rst  $38                                         ; $7c45: $ff
	rst  $38                                         ; $7c46: $ff
	rst  $38                                         ; $7c47: $ff
	adc  b                                           ; $7c48: $88
	ld   h, a                                        ; $7c49: $67
	ld   h, d                                        ; $7c4a: $62
	ld   de, $1111                                   ; $7c4b: $11 $11 $11
	ld   h, [hl]                                     ; $7c4e: $66
	rst  JumpTable                                         ; $7c4f: $df
	rst  $38                                         ; $7c50: $ff
	rst  $38                                         ; $7c51: $ff
	db   $fc                                         ; $7c52: $fc
	ld   a, b                                        ; $7c53: $78
	add  a                                           ; $7c54: $87
	ld   b, e                                        ; $7c55: $43
	ld   de, $1111                                   ; $7c56: $11 $11 $11
	ld   b, l                                        ; $7c59: $45
	rst  $38                                         ; $7c5a: $ff
	rst  $38                                         ; $7c5b: $ff
	rst  $38                                         ; $7c5c: $ff
	ld   a, [$658a]                                  ; $7c5d: $fa $8a $65
	ld   b, c                                        ; $7c60: $41
	ld   de, $1311                                   ; $7c61: $11 $11 $13
	ld   e, d                                        ; $7c64: $5a
	rst  $38                                         ; $7c65: $ff
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	ld   sp, hl                                      ; $7c68: $f9
	adc  b                                           ; $7c69: $88
	ld   d, [hl]                                     ; $7c6a: $56
	ld   b, c                                        ; $7c6b: $41
	ld   de, $1311                                   ; $7c6c: $11 $11 $13
	ld   c, h                                        ; $7c6f: $4c
	rst  $38                                         ; $7c70: $ff
	rst  $38                                         ; $7c71: $ff
	rst  $38                                         ; $7c72: $ff
	ld   hl, sp-$58                                  ; $7c73: $f8 $a8
	ld   b, [hl]                                     ; $7c75: $46
	ld   b, c                                        ; $7c76: $41
	ld   de, $1411                                   ; $7c77: $11 $11 $14
	dec  e                                           ; $7c7a: $1d
	rst  $38                                         ; $7c7b: $ff
	rst  $38                                         ; $7c7c: $ff
	rst  $38                                         ; $7c7d: $ff
	ret  c                                           ; $7c7e: $d8

	add  [hl]                                        ; $7c7f: $86
	ld   d, e                                        ; $7c80: $53
	ld   d, d                                        ; $7c81: $52
	ld   de, $1111                                   ; $7c82: $11 $11 $11
	ld   c, [hl]                                     ; $7c85: $4e
	rst  $38                                         ; $7c86: $ff
	rst  $38                                         ; $7c87: $ff
	rst  $38                                         ; $7c88: $ff
	rst  $20                                         ; $7c89: $e7
	adc  b                                           ; $7c8a: $88
	inc  sp                                          ; $7c8b: $33
	ld   d, h                                        ; $7c8c: $54
	ld   de, $1411                                   ; $7c8d: $11 $11 $14
	dec  e                                           ; $7c90: $1d
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	add  sp, $76                                     ; $7c94: $e8 $76
	ld   b, e                                        ; $7c96: $43
	ld   d, l                                        ; $7c97: $55
	ld   de, $1411                                   ; $7c98: $11 $11 $14
	add  hl, hl                                      ; $7c9b: $29
	rst  $38                                         ; $7c9c: $ff
	rst  $38                                         ; $7c9d: $ff
	rst  $38                                         ; $7c9e: $ff
	or   $78                                         ; $7c9f: $f6 $78
	inc  hl                                          ; $7ca1: $23
	ld   h, a                                        ; $7ca2: $67
	ld   de, $1511                                   ; $7ca3: $11 $11 $15
	rla                                              ; $7ca6: $17
	rst  $38                                         ; $7ca7: $ff

jr_0ef_7ca8:
	rst  $38                                         ; $7ca8: $ff
	rst  $38                                         ; $7ca9: $ff
	ld   sp, hl                                      ; $7caa: $f9
	ld   a, b                                        ; $7cab: $78
	ld   d, e                                        ; $7cac: $53
	ld   a, b                                        ; $7cad: $78
	ld   sp, $1411                                   ; $7cae: $31 $11 $14
	ld   de, $ffff                                   ; $7cb1: $11 $ff $ff
	rst  $38                                         ; $7cb4: $ff
	ei                                               ; $7cb5: $fb

Call_0ef_7cb6:
	ld   a, b                                        ; $7cb6: $78
	ld   [hl], d                                     ; $7cb7: $72
	ld   e, c                                        ; $7cb8: $59
	ld   h, c                                        ; $7cb9: $61
	ld   de, $3112                                   ; $7cba: $11 $12 $31
	xor  a                                           ; $7cbd: $af
	rst  $38                                         ; $7cbe: $ff
	rst  $38                                         ; $7cbf: $ff
	db   $fd                                         ; $7cc0: $fd
	sbc  b                                           ; $7cc1: $98
	add  h                                           ; $7cc2: $84
	ld   a, [hl+]                                    ; $7cc3: $2a
	and  c                                           ; $7cc4: $a1
	ld   de, $5111                                   ; $7cc5: $11 $11 $51
	cpl                                              ; $7cc8: $2f
	rst  $38                                         ; $7cc9: $ff
	rst  $38                                         ; $7cca: $ff
	rst  $38                                         ; $7ccb: $ff
	sbc  b                                           ; $7ccc: $98
	sub  a                                           ; $7ccd: $97
	daa                                              ; $7cce: $27
	add  $11                                         ; $7ccf: $c6 $11
	ld   de, $1911                                   ; $7cd1: $11 $11 $19
	rst  $38                                         ; $7cd4: $ff
	rst  $38                                         ; $7cd5: $ff
	rst  $38                                         ; $7cd6: $ff
	cp   c                                           ; $7cd7: $b9
	xor  c                                           ; $7cd8: $a9
	ld   d, d                                        ; $7cd9: $52
	xor  h                                           ; $7cda: $ac
	ld   sp, $1511                                   ; $7cdb: $31 $11 $15
	ld   de, $ffff                                   ; $7cde: $11 $ff $ff
	rst  $38                                         ; $7ce1: $ff
	ld   sp, hl                                      ; $7ce2: $f9
	sbc  c                                           ; $7ce3: $99
	add  e                                           ; $7ce4: $83
	ld   a, $c3                                      ; $7ce5: $3e $c3
	ld   de, $2111                                   ; $7ce7: $11 $11 $21
	rra                                              ; $7cea: $1f
	rst  $38                                         ; $7ceb: $ff
	rst  $38                                         ; $7cec: $ff
	rst  $38                                         ; $7ced: $ff
	ld   l, c                                        ; $7cee: $69
	sub  a                                           ; $7cef: $97
	ld   d, $ff                                      ; $7cf0: $16 $ff
	ld   [hl], c                                     ; $7cf2: $71
	ld   de, $1111                                   ; $7cf3: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cf6: $cf
	rst  $38                                         ; $7cf7: $ff
	rst  $38                                         ; $7cf8: $ff
	db   $fc                                         ; $7cf9: $fc
	ld   e, b                                        ; $7cfa: $58
	ld   d, c                                        ; $7cfb: $51
	ld   e, l                                        ; $7cfc: $5d
	rst  $38                                         ; $7cfd: $ff
	ld   h, c                                        ; $7cfe: $61
	ld   de, $1111                                   ; $7cff: $11 $11 $11
	rst  $38                                         ; $7d02: $ff
	rst  $38                                         ; $7d03: $ff
	rst  $38                                         ; $7d04: $ff
	ld   sp, hl                                      ; $7d05: $f9
	ld   e, d                                        ; $7d06: $5a
	ld   b, c                                        ; $7d07: $41
	ld   a, a                                        ; $7d08: $7f

jr_0ef_7d09:
	cp   $31                                         ; $7d09: $fe $31
	ld   de, $1111                                   ; $7d0b: $11 $11 $11
	rst  $38                                         ; $7d0e: $ff
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	ei                                               ; $7d11: $fb
	ld   a, b                                        ; $7d12: $78
	ld   h, d                                        ; $7d13: $62
	sbc  a                                           ; $7d14: $9f
	rst  $38                                         ; $7d15: $ff
	ld   sp, $1111                                   ; $7d16: $31 $11 $11
	ld   de, $ffff                                   ; $7d19: $11 $ff $ff
	rst  $38                                         ; $7d1c: $ff
	ei                                               ; $7d1d: $fb
	ld   e, c                                        ; $7d1e: $59
	ld   h, c                                        ; $7d1f: $61
	ld   a, a                                        ; $7d20: $7f
	rst  $38                                         ; $7d21: $ff
	ld   h, c                                        ; $7d22: $61
	ld   de, $1111                                   ; $7d23: $11 $11 $11
	rst  $28                                         ; $7d26: $ef
	rst  $38                                         ; $7d27: $ff
	rst  $38                                         ; $7d28: $ff
	cp   $68                                         ; $7d29: $fe $68
	ld   d, c                                        ; $7d2b: $51
	ld   e, h                                        ; $7d2c: $5c
	rst  $38                                         ; $7d2d: $ff
	jp   nc, $1111                                   ; $7d2e: $d2 $11 $11

	ld   de, $ff6f                                   ; $7d31: $11 $6f $ff
	rst  $38                                         ; $7d34: $ff
	rst  $38                                         ; $7d35: $ff
	or   e                                           ; $7d36: $b3
	ld   h, e                                        ; $7d37: $63
	jr   z, jr_0ef_7d09                              ; $7d38: $28 $cf

	ld   hl, sp+$11                                  ; $7d3a: $f8 $11
	ld   de, $1811                                   ; $7d3c: $11 $11 $18
	rst  $38                                         ; $7d3f: $ff
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	ld   hl, sp+$12                                  ; $7d42: $f8 $12
	inc  hl                                          ; $7d44: $23
	ld   l, l                                        ; $7d45: $6d
	rst  $38                                         ; $7d46: $ff
	pop  bc                                          ; $7d47: $c1
	ld   de, $1111                                   ; $7d48: $11 $11 $11
	ld   l, a                                        ; $7d4b: $6f
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	rst  $38                                         ; $7d4e: $ff
	and  c                                           ; $7d4f: $a1
	ld   [hl+], a                                    ; $7d50: $22
	ld   [hl], $cf                                   ; $7d51: $36 $cf
	ld   a, [$1111]                                  ; $7d53: $fa $11 $11
	ld   de, rAUD1HIGH                                   ; $7d56: $11 $14 $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	cp   $31                                         ; $7d5b: $fe $31
	ld   de, $ff29                                   ; $7d5d: $11 $29 $ff
	ld   a, [$1121]                                  ; $7d60: $fa $21 $11
	ld   de, rAUD1HIGH                                   ; $7d63: $11 $14 $ff
	rst  $38                                         ; $7d66: $ff
	rst  $38                                         ; $7d67: $ff
	db   $fd                                         ; $7d68: $fd
	ld   hl, $2911                                   ; $7d69: $21 $11 $29
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	sub  c                                           ; $7d6e: $91
	ld   de, $1111                                   ; $7d6f: $11 $11 $11
	rst  JumpTable                                         ; $7d72: $df
	rst  $38                                         ; $7d73: $ff
	rst  $38                                         ; $7d74: $ff
	ld   hl, sp+$41                                  ; $7d75: $f8 $41
	ld   de, $ff15                                   ; $7d77: $11 $15 $ff
	rst  $38                                         ; $7d7a: $ff
	rst  $38                                         ; $7d7b: $ff
	ld   sp, $1111                                   ; $7d7c: $31 $11 $11
	jr   @+$01                                       ; $7d7f: $18 $ff

	rst  $38                                         ; $7d81: $ff
	rst  $38                                         ; $7d82: $ff
	sub  c                                           ; $7d83: $91
	ld   de, $4f11                                   ; $7d84: $11 $11 $4f
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	db   $fc                                         ; $7d89: $fc
	ld   hl, $1111                                   ; $7d8a: $21 $11 $11
	ld   a, a                                        ; $7d8d: $7f
	rst  $38                                         ; $7d8e: $ff
	rst  $38                                         ; $7d8f: $ff
	db   $fc                                         ; $7d90: $fc
	or   c                                           ; $7d91: $b1
	ld   de, $7e14                                   ; $7d92: $11 $14 $7e
	rst  $38                                         ; $7d95: $ff
	rst  $38                                         ; $7d96: $ff
	rst  $38                                         ; $7d97: $ff
	ld   [hl], d                                     ; $7d98: $72
	ld   de, $1c11                                   ; $7d99: $11 $11 $1c
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	ld   e, d                                        ; $7d9f: $5a
	ld   b, c                                        ; $7da0: $41
	ld   de, $9faf                                   ; $7da1: $11 $af $9f
	rst  $38                                         ; $7da4: $ff
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	ld   sp, $1111                                   ; $7da7: $31 $11 $11
	rra                                              ; $7daa: $1f
	ld   a, [$ffff]                                  ; $7dab: $fa $ff $ff
	ld   c, h                                        ; $7dae: $4c
	ld   d, c                                        ; $7daf: $51
	ld   de, $7fce                                   ; $7db0: $11 $ce $7f
	rst  $38                                         ; $7db3: $ff
	rst  $38                                         ; $7db4: $ff
	cp   $31                                         ; $7db5: $fe $31
	ld   de, $1f11                                   ; $7db7: $11 $11 $1f
	ei                                               ; $7dba: $fb
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	dec  hl                                          ; $7dbd: $2b
	ld   hl, $df11                                   ; $7dbe: $21 $11 $df
	cp   a                                           ; $7dc1: $bf
	rst  $38                                         ; $7dc2: $ff
	rst  $38                                         ; $7dc3: $ff
	db   $fc                                         ; $7dc4: $fc
	ld   de, $1111                                   ; $7dc5: $11 $11 $11
	rra                                              ; $7dc8: $1f
	ld   hl, sp-$01                                  ; $7dc9: $f8 $ff
	rst  $38                                         ; $7dcb: $ff
	inc  a                                           ; $7dcc: $3c
	ld   h, c                                        ; $7dcd: $61
	ld   de, $cfbf                                   ; $7dce: $11 $bf $cf
	rst  $38                                         ; $7dd1: $ff
	rst  $38                                         ; $7dd2: $ff
	rst  $38                                         ; $7dd3: $ff
	ld   d, c                                        ; $7dd4: $51
	ld   de, $1f11                                   ; $7dd5: $11 $11 $1f
	ld   sp, hl                                      ; $7dd8: $f9
	rst  $38                                         ; $7dd9: $ff
	rst  $38                                         ; $7dda: $ff
	ld   a, [bc]                                     ; $7ddb: $0a
	ld   [hl], c                                     ; $7ddc: $71
	ld   de, $ff5f                                   ; $7ddd: $11 $5f $ff
	rst  $38                                         ; $7de0: $ff
	rst  $38                                         ; $7de1: $ff
	ei                                               ; $7de2: $fb
	ld   b, c                                        ; $7de3: $41
	ld   de, $1711                                   ; $7de4: $11 $11 $17
	ei                                               ; $7de7: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7de8: $cf
	rst  $38                                         ; $7de9: $ff
	ld   [hl+], a                                    ; $7dea: $22
	pop  hl                                          ; $7deb: $e1
	ld   de, $ff1f                                   ; $7dec: $11 $1f $ff
	rst  $38                                         ; $7def: $ff
	cp   $ee                                         ; $7df0: $fe $ee
	add  h                                           ; $7df2: $84
	inc  [hl]                                        ; $7df3: $34
	ld   de, rAUD1LEN                                   ; $7df4: $11 $11 $ff
	ld   c, a                                        ; $7df7: $4f
	rst  $38                                         ; $7df8: $ff
	pop  af                                          ; $7df9: $f1
	ld   [$1711], a                                  ; $7dfa: $ea $11 $17
	rst  $38                                         ; $7dfd: $ff
	rst  $38                                         ; $7dfe: $ff
	rst  $38                                         ; $7dff: $ff
	rst  $28                                         ; $7e00: $ef
	or   a                                           ; $7e01: $b7
	ld   b, h                                        ; $7e02: $44
	ld   sp, $1f11                                   ; $7e03: $31 $11 $1f
	ld   hl, sp-$01                                  ; $7e06: $f8 $ff
	db   $fd                                         ; $7e08: $fd
	ccf                                              ; $7e09: $3f
	ld   sp, $8c11                                   ; $7e0a: $31 $11 $8c
	rst  $38                                         ; $7e0d: $ff
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	or   $76                                         ; $7e10: $f6 $76
	ld   h, d                                        ; $7e12: $62
	ld   de, $fc11                                   ; $7e13: $11 $11 $fc
	cp   a                                           ; $7e16: $bf
	rst  $38                                         ; $7e17: $ff
	add  e                                           ; $7e18: $83
	pop  af                                          ; $7e19: $f1
	ld   de, $af1a                                   ; $7e1a: $11 $1a $af
	rst  $38                                         ; $7e1d: $ff
	rst  $38                                         ; $7e1e: $ff
	rst  $38                                         ; $7e1f: $ff
	ld   l, c                                        ; $7e20: $69
	and  l                                           ; $7e21: $a5
	ld   hl, $1f11                                   ; $7e22: $21 $11 $1f
	cp   h                                           ; $7e25: $bc
	rst  $38                                         ; $7e26: $ff
	ei                                               ; $7e27: $fb
	ld   a, $11                                      ; $7e28: $3e $11
	ld   de, $ef89                                   ; $7e2a: $11 $89 $ef
	rst  $38                                         ; $7e2d: $ff
	rst  $38                                         ; $7e2e: $ff
	ld   a, [$517a]                                  ; $7e2f: $fa $7a $51
	ld   de, rAUD1LEN                                   ; $7e32: $11 $11 $ff
	ld   a, a                                        ; $7e35: $7f
	rst  $38                                         ; $7e36: $ff
	pop  af                                          ; $7e37: $f1
	sub  $11                                         ; $7e38: $d6 $11
	rla                                              ; $7e3a: $17
	ld   a, c                                        ; $7e3b: $79
	rst  $38                                         ; $7e3c: $ff
	rst  $38                                         ; $7e3d: $ff
	rst  $38                                         ; $7e3e: $ff
	and  $77                                         ; $7e3f: $e6 $77
	ld   hl, $1f11                                   ; $7e41: $21 $11 $1f
	rst  $30                                         ; $7e44: $f7
	rst  $38                                         ; $7e45: $ff
	rst  $38                                         ; $7e46: $ff
	rla                                              ; $7e47: $17
	or   c                                           ; $7e48: $b1
	ld   de, $8f19                                   ; $7e49: $11 $19 $8f
	rst  $38                                         ; $7e4c: $ff
	rst  $38                                         ; $7e4d: $ff
	db   $fd                                         ; $7e4e: $fd
	and  h                                           ; $7e4f: $a4
	ld   h, [hl]                                     ; $7e50: $66
	ld   hl, $1f11                                   ; $7e51: $21 $11 $1f
	ld   hl, sp-$01                                  ; $7e54: $f8 $ff
	db   $fc                                         ; $7e56: $fc
	inc  e                                           ; $7e57: $1c
	ld   h, c                                        ; $7e58: $61
	ld   de, $9f89                                   ; $7e59: $11 $89 $9f
	rst  $38                                         ; $7e5c: $ff
	rst  $38                                         ; $7e5d: $ff
	cp   $61                                         ; $7e5e: $fe $61
	adc  b                                           ; $7e60: $88
	ld   de, $9f11                                   ; $7e61: $11 $11 $9f
	adc  e                                           ; $7e64: $8b
	rst  $38                                         ; $7e65: $ff
	di                                               ; $7e66: $f3
	ld   e, l                                        ; $7e67: $5d
	ld   de, $a611                                   ; $7e68: $11 $11 $a6
	cp   a                                           ; $7e6b: $bf
	rst  $38                                         ; $7e6c: $ff
	rst  JumpTable                                         ; $7e6d: $df
	db   $fc                                         ; $7e6e: $fc
	ld   b, c                                        ; $7e6f: $41
	sub  [hl]                                        ; $7e70: $96
	ld   de, $ef11                                   ; $7e71: $11 $11 $ef
	adc  l                                           ; $7e74: $8d
	rst  $38                                         ; $7e75: $ff
	di                                               ; $7e76: $f3
	ld   l, e                                        ; $7e77: $6b
	ld   de, $a712                                   ; $7e78: $11 $12 $a7
	cp   a                                           ; $7e7b: $bf
	rst  $38                                         ; $7e7c: $ff
	rst  $28                                         ; $7e7d: $ef
	db   $fc                                         ; $7e7e: $fc
	ld   sp, $11a5                                   ; $7e7f: $31 $a5 $11
	ld   de, $9eff                                   ; $7e82: $11 $ff $9e
	rst  $38                                         ; $7e85: $ff
	ldh  a, [c]                                      ; $7e86: $f2
	ld   c, d                                        ; $7e87: $4a
	ld   de, $a813                                   ; $7e88: $11 $13 $a8
	xor  a                                           ; $7e8b: $af
	rst  $38                                         ; $7e8c: $ff
	cp   a                                           ; $7e8d: $bf
	db   $ec                                         ; $7e8e: $ec
	ld   hl, $1196                                   ; $7e8f: $21 $96 $11
	ld   de, $aeff                                   ; $7e92: $11 $ff $ae
	rst  $38                                         ; $7e95: $ff
	pop  af                                          ; $7e96: $f1
	inc  l                                           ; $7e97: $2c
	ld   de, $b913                                   ; $7e98: $11 $13 $b9
	xor  a                                           ; $7e9b: $af
	rst  $38                                         ; $7e9c: $ff
	cp   a                                           ; $7e9d: $bf
	ld   hl, sp+$31                                  ; $7e9e: $f8 $31
	adc  b                                           ; $7ea0: $88
	ld   de, $4f11                                   ; $7ea1: $11 $11 $4f
	reti                                             ; $7ea4: $d9


	rst  $38                                         ; $7ea5: $ff
	or   $1b                                         ; $7ea6: $f6 $1b
	ld   d, c                                        ; $7ea8: $51
	ld   [de], a                                     ; $7ea9: $12
	sbc  c                                           ; $7eaa: $99
	sbc  a                                           ; $7eab: $9f
	rst  $38                                         ; $7eac: $ff
	db   $ec                                         ; $7ead: $ec
	db   $fc                                         ; $7eae: $fc
	ld   d, c                                        ; $7eaf: $51
	ld   c, d                                        ; $7eb0: $4a
	ld   d, c                                        ; $7eb1: $51
	ld   de, $f81f                                   ; $7eb2: $11 $1f $f8
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	jr   @-$6d                                       ; $7eb7: $18 $91

	ld   de, $8e58                                   ; $7eb9: $11 $58 $8e
	rst  $38                                         ; $7ebc: $ff
	ei                                               ; $7ebd: $fb
	db   $fd                                         ; $7ebe: $fd
	ld   [hl], d                                     ; $7ebf: $72
	ld   a, [de]                                     ; $7ec0: $1a
	ld   [hl], c                                     ; $7ec1: $71
	ld   de, $fb1b                                   ; $7ec2: $11 $1b $fb
	rst  JumpTable                                         ; $7ec5: $df
	rst  $38                                         ; $7ec6: $ff
	inc  sp                                          ; $7ec7: $33
	jp   nz, $1911                                   ; $7ec8: $c2 $11 $19

	sbc  e                                           ; $7ecb: $9b
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ece: $cf
	sub  h                                           ; $7ecf: $94
	inc  d                                           ; $7ed0: $14
	and  l                                           ; $7ed1: $a5
	ld   de, rAUD1LEN                                   ; $7ed2: $11 $11 $ff
	sbc  a                                           ; $7ed5: $9f
	rst  $38                                         ; $7ed6: $ff
	pop  af                                          ; $7ed7: $f1
	sbc  b                                           ; $7ed8: $98
	ld   de, $8914                                   ; $7ed9: $11 $14 $89
	rst  JumpTable                                         ; $7edc: $df
	rst  $38                                         ; $7edd: $ff
	cp   a                                           ; $7ede: $bf
	rst  $10                                         ; $7edf: $d7
	ld   b, c                                        ; $7ee0: $41
	ld   l, c                                        ; $7ee1: $69
	ld   sp, $1f11                                   ; $7ee2: $31 $11 $1f
	ei                                               ; $7ee5: $fb
	rst  $38                                         ; $7ee6: $ff
	cp   $17                                         ; $7ee7: $fe $17
	ld   h, c                                        ; $7ee9: $61
	ld   de, $ae69                                   ; $7eea: $11 $69 $ae
	rst  $38                                         ; $7eed: $ff
	ei                                               ; $7eee: $fb
	call z, $1653                                    ; $7eef: $cc $53 $16
	and  h                                           ; $7ef2: $a4
	ld   de, rAUD1LEN                                   ; $7ef3: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef6: $cf
	rst  $38                                         ; $7ef7: $ff
	jp   nc, $1187                                   ; $7ef8: $d2 $87 $11

	dec  d                                           ; $7efb: $15
	xor  d                                           ; $7efc: $aa
	rst  $28                                         ; $7efd: $ef
	rst  $38                                         ; $7efe: $ff
	db   $fc                                         ; $7eff: $fc
	or   l                                           ; $7f00: $b5
	ld   [hl-], a                                    ; $7f01: $32
	ld   e, c                                        ; $7f02: $59
	ld   d, c                                        ; $7f03: $51
	ld   de, $f91f                                   ; $7f04: $11 $1f $f9
	rst  $38                                         ; $7f07: $ff
	rst  $38                                         ; $7f08: $ff
	rla                                              ; $7f09: $17
	and  c                                           ; $7f0a: $a1
	ld   de, $ae3a                                   ; $7f0b: $11 $3a $ae
	rst  $38                                         ; $7f0e: $ff
	rst  $38                                         ; $7f0f: $ff
	cp   e                                           ; $7f10: $bb
	ld   h, e                                        ; $7f11: $63
	inc  hl                                          ; $7f12: $23
	sbc  b                                           ; $7f13: $98
	ld   hl, $9f11                                   ; $7f14: $21 $11 $9f
	cp   h                                           ; $7f17: $bc
	rst  $38                                         ; $7f18: $ff
	push af                                          ; $7f19: $f5
	dec  de                                          ; $7f1a: $1b
	ld   de, $ab11                                   ; $7f1b: $11 $11 $ab
	cp   a                                           ; $7f1e: $bf
	rst  $38                                         ; $7f1f: $ff
	rst  $38                                         ; $7f20: $ff
	and  [hl]                                        ; $7f21: $a6
	ld   b, c                                        ; $7f22: $41
	scf                                              ; $7f23: $37
	sbc  c                                           ; $7f24: $99
	ld   de, rAUD1LEN                                   ; $7f25: $11 $11 $ff
	ld   a, a                                        ; $7f28: $7f
	rst  $38                                         ; $7f29: $ff
	pop  af                                          ; $7f2a: $f1
	adc  c                                           ; $7f2b: $89
	ld   de, $b915                                   ; $7f2c: $11 $15 $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f2f: $cf
	rst  $38                                         ; $7f30: $ff
	cp   $84                                         ; $7f31: $fe $84
	ld   [de], a                                     ; $7f33: $12
	ld   a, d                                        ; $7f34: $7a
	ret  z                                           ; $7f35: $c8

	ld   de, rAUD1LEN                                   ; $7f36: $11 $11 $ff
	ld   a, a                                        ; $7f39: $7f
	rst  $38                                         ; $7f3a: $ff
	pop  af                                          ; $7f3b: $f1
	xor  b                                           ; $7f3c: $a8
	ld   de, $b915                                   ; $7f3d: $11 $15 $b9
	rst  JumpTable                                         ; $7f40: $df
	rst  $38                                         ; $7f41: $ff
	cp   $53                                         ; $7f42: $fe $53
	ld   de, $cacd                                   ; $7f44: $11 $cd $ca
	ld   hl, $cf11                                   ; $7f47: $21 $11 $cf
	ld   l, l                                        ; $7f4a: $6d
	rst  $38                                         ; $7f4b: $ff
	di                                               ; $7f4c: $f3
	ld   e, d                                        ; $7f4d: $5a
	ld   de, $9811                                   ; $7f4e: $11 $11 $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f51: $cf
	rst  $38                                         ; $7f52: $ff
	db   $fd                                         ; $7f53: $fd
	add  e                                           ; $7f54: $83
	ld   de, $ff8f                                   ; $7f55: $11 $8f $ff
	ld   [hl], c                                     ; $7f58: $71
	ld   de, $f61e                                   ; $7f59: $11 $1e $f6
	rst  $38                                         ; $7f5c: $ff
	rst  $38                                         ; $7f5d: $ff
	ld   d, [hl]                                     ; $7f5e: $56
	ld   [hl], c                                     ; $7f5f: $71
	ld   de, $bf1a                                   ; $7f60: $11 $1a $bf
	rst  $38                                         ; $7f63: $ff
	rst  $38                                         ; $7f64: $ff
	rst  $10                                         ; $7f65: $d7
	ld   de, $ff18                                   ; $7f66: $11 $18 $ff
	ld   sp, hl                                      ; $7f69: $f9
	ld   de, $7f11                                   ; $7f6a: $11 $11 $7f
	ld   a, a                                        ; $7f6d: $7f
	rst  $38                                         ; $7f6e: $ff
	rst  $30                                         ; $7f6f: $f7
	ld   b, l                                        ; $7f70: $45
	ld   de, $8b11                                   ; $7f71: $11 $11 $8b
	rst  $38                                         ; $7f74: $ff
	rst  $38                                         ; $7f75: $ff
	rst  $38                                         ; $7f76: $ff
	ld   [hl], d                                     ; $7f77: $72
	ld   de, $ff8c                                   ; $7f78: $11 $8c $ff
	and  e                                           ; $7f7b: $a3
	ld   de, $f713                                   ; $7f7c: $11 $13 $f7
	rst  JumpTable                                         ; $7f7f: $df
	rst  $38                                         ; $7f80: $ff
	add  d                                           ; $7f81: $82
	add  c                                           ; $7f82: $81
	ld   de, $bf19                                   ; $7f83: $11 $19 $bf
	rst  $38                                         ; $7f86: $ff
	rst  $38                                         ; $7f87: $ff
	db   $fc                                         ; $7f88: $fc
	ld   hl, $de16                                   ; $7f89: $21 $16 $de
	db   $fd                                         ; $7f8c: $fd
	ld   d, c                                        ; $7f8d: $51
	ld   de, $ea1f                                   ; $7f8e: $11 $1f $ea
	rst  $38                                         ; $7f91: $ff
	rst  $38                                         ; $7f92: $ff
	ld   d, $01                                      ; $7f93: $16 $01
	ld   de, $ff5d                                   ; $7f95: $11 $5d $ff
	rst  $38                                         ; $7f98: $ff
	ld   hl, sp-$46                                  ; $7f99: $f8 $ba
	ld   de, $ff16                                   ; $7f9b: $11 $16 $ff
	db   $fd                                         ; $7f9e: $fd
	ld   [hl], c                                     ; $7f9f: $71
	ld   de, $fc11                                   ; $7fa0: $11 $11 $fc
	rst  $38                                         ; $7fa3: $ff
	rst  $38                                         ; $7fa4: $ff
	ld   [hl], c                                     ; $7fa5: $71
	ld   hl, $1c11                                   ; $7fa6: $21 $11 $1c
	rst  $38                                         ; $7fa9: $ff
	rst  $38                                         ; $7faa: $ff
	db   $fd                                         ; $7fab: $fd
	ld   h, a                                        ; $7fac: $67
	ld   b, c                                        ; $7fad: $41
	ld   [de], a                                     ; $7fae: $12
	rst  JumpTable                                         ; $7faf: $df
	rst  $38                                         ; $7fb0: $ff
	and  $11                                         ; $7fb1: $e6 $11
	ld   de, $cfcf                                   ; $7fb3: $11 $cf $cf
	rst  $38                                         ; $7fb6: $ff
	pop  af                                          ; $7fb7: $f1
	ld   de, $1311                                   ; $7fb8: $11 $11 $13
	rst  $38                                         ; $7fbb: $ff
	rst  $38                                         ; $7fbc: $ff
	rst  $38                                         ; $7fbd: $ff
	ld   [hl], l                                     ; $7fbe: $75
	ld   [hl], l                                     ; $7fbf: $75
	ld   de, $ff6f                                   ; $7fc0: $11 $6f $ff
	db   $db                                         ; $7fc3: $db
	ld   de, $1f11                                   ; $7fc4: $11 $11 $1f
	db   $fd                                         ; $7fc7: $fd
	rst  $38                                         ; $7fc8: $ff
	rst  $38                                         ; $7fc9: $ff
	ld   [de], a                                     ; $7fca: $12
	ld   de, $9f11                                   ; $7fcb: $11 $11 $9f
	rst  $38                                         ; $7fce: $ff
	rst  $38                                         ; $7fcf: $ff
	di                                               ; $7fd0: $f3
	ld   b, [hl]                                     ; $7fd1: $46
	ld   d, h                                        ; $7fd2: $54
	add  hl, sp                                      ; $7fd3: $39
	rst  $38                                         ; $7fd4: $ff
	db   $fc                                         ; $7fd5: $fc
	ld   [hl], h                                     ; $7fd6: $74
	ld   de, rAUD1LEN                                   ; $7fd7: $11 $11 $ff
	rst  JumpTable                                         ; $7fda: $df
	rst  $38                                         ; $7fdb: $ff
	pop  af                                          ; $7fdc: $f1
	ld   de, $1411                                   ; $7fdd: $11 $11 $14
	rst  $38                                         ; $7fe0: $ff
	rst  $38                                         ; $7fe1: $ff
	rst  $38                                         ; $7fe2: $ff
	ld   d, c                                        ; $7fe3: $51
	daa                                              ; $7fe4: $27
	ld   [hl], h                                     ; $7fe5: $74
	xor  [hl]                                        ; $7fe6: $ae
	rst  $38                                         ; $7fe7: $ff
	call $1182                                       ; $7fe8: $cd $82 $11
	ld   de, $ff4f                                   ; $7feb: $11 $4f $ff
	rst  $38                                         ; $7fee: $ff
	pop  af                                          ; $7fef: $f1
	ld   [de], a                                     ; $7ff0: $12
	ld   de, rAUD1LEN                                   ; $7ff1: $11 $11 $ff
	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	ld   h, c                                        ; $7ff6: $61
	dec  h                                           ; $7ff7: $25
	xor  b                                           ; $7ff8: $a8
	ld   a, l                                        ; $7ff9: $7d
	rst  $38                                         ; $7ffa: $ff
	cp   h                                           ; $7ffb: $bc
	sbc  c                                           ; $7ffc: $99
	ld   sp, $1f11                                   ; $7ffd: $31 $11 $1f
