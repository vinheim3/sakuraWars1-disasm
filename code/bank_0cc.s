; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0cc", ROMX[$4000], BANK[$cc]

	sbc  b                                           ; $4000: $98
	sbc  c                                           ; $4001: $99
	add  a                                           ; $4002: $87
	ld   a, c                                        ; $4003: $79
	xor  c                                           ; $4004: $a9
	halt                                             ; $4005: $76
	ld   l, b                                        ; $4006: $68
	sbc  c                                           ; $4007: $99
	add  a                                           ; $4008: $87
	ld   a, b                                        ; $4009: $78
	sbc  b                                           ; $400a: $98
	sbc  c                                           ; $400b: $99
	adc  b                                           ; $400c: $88
	ld   [hl], l                                     ; $400d: $75
	ld   l, c                                        ; $400e: $69
	sbc  d                                           ; $400f: $9a
	sbc  b                                           ; $4010: $98
	adc  d                                           ; $4011: $8a
	sub  a                                           ; $4012: $97
	ld   [hl], a                                     ; $4013: $77
	sbc  d                                           ; $4014: $9a
	add  [hl]                                        ; $4015: $86
	ld   h, a                                        ; $4016: $67
	adc  c                                           ; $4017: $89
	sbc  c                                           ; $4018: $99
	sbc  b                                           ; $4019: $98
	ld   [hl], a                                     ; $401a: $77
	ld   [hl], a                                     ; $401b: $77
	adc  b                                           ; $401c: $88
	ld   [hl], a                                     ; $401d: $77
	adc  b                                           ; $401e: $88
	sub  a                                           ; $401f: $97
	adc  c                                           ; $4020: $89
	adc  b                                           ; $4021: $88
	adc  b                                           ; $4022: $88
	add  a                                           ; $4023: $87
	adc  b                                           ; $4024: $88
	adc  c                                           ; $4025: $89
	sbc  c                                           ; $4026: $99
	add  a                                           ; $4027: $87
	adc  b                                           ; $4028: $88
	sbc  b                                           ; $4029: $98
	adc  b                                           ; $402a: $88
	ld   a, b                                        ; $402b: $78
	adc  c                                           ; $402c: $89
	adc  b                                           ; $402d: $88
	adc  b                                           ; $402e: $88
	add  a                                           ; $402f: $87
	ld   a, b                                        ; $4030: $78
	ld   [hl], a                                     ; $4031: $77
	adc  b                                           ; $4032: $88
	adc  c                                           ; $4033: $89
	ld   [hl], a                                     ; $4034: $77
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	add  a                                           ; $4037: $87
	add  a                                           ; $4038: $87
	adc  b                                           ; $4039: $88
	sbc  b                                           ; $403a: $98
	adc  b                                           ; $403b: $88
	sbc  b                                           ; $403c: $98
	add  a                                           ; $403d: $87
	ld   a, b                                        ; $403e: $78
	sbc  b                                           ; $403f: $98
	adc  b                                           ; $4040: $88
	adc  b                                           ; $4041: $88
	add  a                                           ; $4042: $87
	ld   [hl], a                                     ; $4043: $77
	adc  b                                           ; $4044: $88
	add  a                                           ; $4045: $87
	ld   [hl], a                                     ; $4046: $77
	adc  b                                           ; $4047: $88
	adc  c                                           ; $4048: $89
	sbc  b                                           ; $4049: $98
	ld   [hl], a                                     ; $404a: $77
	ld   a, b                                        ; $404b: $78
	adc  b                                           ; $404c: $88
	ld   a, b                                        ; $404d: $78
	sbc  b                                           ; $404e: $98
	adc  b                                           ; $404f: $88
	adc  c                                           ; $4050: $89
	adc  b                                           ; $4051: $88
	adc  b                                           ; $4052: $88
	adc  b                                           ; $4053: $88
	ld   a, b                                        ; $4054: $78
	sbc  b                                           ; $4055: $98
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	add  a                                           ; $4058: $87
	ld   a, b                                        ; $4059: $78
	adc  c                                           ; $405a: $89
	adc  b                                           ; $405b: $88
	add  a                                           ; $405c: $87
	ld   [hl], a                                     ; $405d: $77
	adc  c                                           ; $405e: $89
	sbc  b                                           ; $405f: $98
	ld   [hl], a                                     ; $4060: $77
	adc  c                                           ; $4061: $89
	adc  b                                           ; $4062: $88
	ld   [hl], a                                     ; $4063: $77
	adc  b                                           ; $4064: $88
	adc  b                                           ; $4065: $88
	adc  b                                           ; $4066: $88
	adc  b                                           ; $4067: $88
	adc  b                                           ; $4068: $88
	adc  b                                           ; $4069: $88
	adc  b                                           ; $406a: $88
	adc  b                                           ; $406b: $88
	adc  b                                           ; $406c: $88
	adc  b                                           ; $406d: $88
	adc  b                                           ; $406e: $88
	add  a                                           ; $406f: $87
	adc  b                                           ; $4070: $88
	adc  b                                           ; $4071: $88
	adc  b                                           ; $4072: $88
	adc  b                                           ; $4073: $88
	add  a                                           ; $4074: $87
	ld   [hl], a                                     ; $4075: $77
	adc  b                                           ; $4076: $88
	adc  b                                           ; $4077: $88
	adc  b                                           ; $4078: $88
	adc  b                                           ; $4079: $88
	adc  c                                           ; $407a: $89
	sbc  c                                           ; $407b: $99
	add  a                                           ; $407c: $87
	ld   a, b                                        ; $407d: $78
	adc  b                                           ; $407e: $88
	add  a                                           ; $407f: $87
	adc  b                                           ; $4080: $88
	sbc  b                                           ; $4081: $98
	adc  b                                           ; $4082: $88
	adc  b                                           ; $4083: $88
	adc  b                                           ; $4084: $88
	adc  b                                           ; $4085: $88
	adc  b                                           ; $4086: $88
	ld   [hl], a                                     ; $4087: $77
	ld   a, b                                        ; $4088: $78
	adc  b                                           ; $4089: $88
	adc  b                                           ; $408a: $88
	adc  b                                           ; $408b: $88
	adc  b                                           ; $408c: $88
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	adc  b                                           ; $408f: $88
	adc  b                                           ; $4090: $88
	sbc  c                                           ; $4091: $99
	sbc  b                                           ; $4092: $98
	adc  b                                           ; $4093: $88
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	adc  b                                           ; $4098: $88
	adc  b                                           ; $4099: $88
	adc  b                                           ; $409a: $88
	adc  b                                           ; $409b: $88
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	adc  b                                           ; $409f: $88
	adc  b                                           ; $40a0: $88
	adc  b                                           ; $40a1: $88
	adc  b                                           ; $40a2: $88
	adc  b                                           ; $40a3: $88
	adc  b                                           ; $40a4: $88
	adc  b                                           ; $40a5: $88
	adc  b                                           ; $40a6: $88
	adc  b                                           ; $40a7: $88
	adc  b                                           ; $40a8: $88
	adc  b                                           ; $40a9: $88
	adc  b                                           ; $40aa: $88
	adc  b                                           ; $40ab: $88
	adc  b                                           ; $40ac: $88
	adc  b                                           ; $40ad: $88
	adc  b                                           ; $40ae: $88
	adc  b                                           ; $40af: $88
	adc  b                                           ; $40b0: $88
	adc  b                                           ; $40b1: $88
	adc  b                                           ; $40b2: $88
	adc  b                                           ; $40b3: $88
	adc  b                                           ; $40b4: $88
	adc  b                                           ; $40b5: $88
	adc  b                                           ; $40b6: $88
	adc  b                                           ; $40b7: $88
	adc  b                                           ; $40b8: $88
	adc  b                                           ; $40b9: $88
	adc  b                                           ; $40ba: $88
	adc  b                                           ; $40bb: $88
	adc  b                                           ; $40bc: $88
	adc  b                                           ; $40bd: $88
	adc  b                                           ; $40be: $88
	adc  b                                           ; $40bf: $88
	adc  b                                           ; $40c0: $88
	adc  b                                           ; $40c1: $88
	adc  b                                           ; $40c2: $88
	adc  b                                           ; $40c3: $88
	adc  b                                           ; $40c4: $88
	adc  b                                           ; $40c5: $88
	adc  b                                           ; $40c6: $88
	adc  b                                           ; $40c7: $88
	adc  b                                           ; $40c8: $88
	adc  b                                           ; $40c9: $88
	adc  b                                           ; $40ca: $88
	adc  b                                           ; $40cb: $88
	adc  b                                           ; $40cc: $88
	adc  b                                           ; $40cd: $88
	adc  b                                           ; $40ce: $88
	adc  b                                           ; $40cf: $88
	adc  b                                           ; $40d0: $88
	adc  b                                           ; $40d1: $88
	adc  b                                           ; $40d2: $88
	adc  b                                           ; $40d3: $88
	adc  b                                           ; $40d4: $88
	adc  b                                           ; $40d5: $88
	adc  b                                           ; $40d6: $88
	adc  b                                           ; $40d7: $88
	adc  b                                           ; $40d8: $88
	adc  b                                           ; $40d9: $88
	adc  b                                           ; $40da: $88
	adc  b                                           ; $40db: $88
	adc  b                                           ; $40dc: $88
	adc  b                                           ; $40dd: $88
	adc  b                                           ; $40de: $88
	adc  b                                           ; $40df: $88
	adc  b                                           ; $40e0: $88
	adc  b                                           ; $40e1: $88
	adc  b                                           ; $40e2: $88
	adc  b                                           ; $40e3: $88
	adc  b                                           ; $40e4: $88
	adc  b                                           ; $40e5: $88
	adc  b                                           ; $40e6: $88
	adc  b                                           ; $40e7: $88
	adc  b                                           ; $40e8: $88
	adc  b                                           ; $40e9: $88
	adc  b                                           ; $40ea: $88
	adc  b                                           ; $40eb: $88
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	adc  b                                           ; $40ef: $88
	adc  b                                           ; $40f0: $88
	adc  b                                           ; $40f1: $88
	adc  b                                           ; $40f2: $88
	adc  b                                           ; $40f3: $88
	adc  b                                           ; $40f4: $88
	adc  b                                           ; $40f5: $88
	adc  b                                           ; $40f6: $88
	adc  b                                           ; $40f7: $88
	adc  b                                           ; $40f8: $88
	adc  b                                           ; $40f9: $88
	adc  b                                           ; $40fa: $88
	adc  b                                           ; $40fb: $88
	adc  b                                           ; $40fc: $88
	adc  b                                           ; $40fd: $88
	adc  b                                           ; $40fe: $88
	adc  b                                           ; $40ff: $88
	adc  b                                           ; $4100: $88
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	adc  b                                           ; $4103: $88
	adc  b                                           ; $4104: $88
	adc  b                                           ; $4105: $88
	adc  b                                           ; $4106: $88
	adc  b                                           ; $4107: $88
	adc  b                                           ; $4108: $88
	adc  b                                           ; $4109: $88
	adc  b                                           ; $410a: $88
	adc  b                                           ; $410b: $88
	adc  b                                           ; $410c: $88
	adc  b                                           ; $410d: $88
	adc  b                                           ; $410e: $88
	adc  b                                           ; $410f: $88
	adc  b                                           ; $4110: $88
	adc  b                                           ; $4111: $88
	adc  b                                           ; $4112: $88
	adc  b                                           ; $4113: $88
	adc  b                                           ; $4114: $88
	adc  b                                           ; $4115: $88
	adc  b                                           ; $4116: $88
	adc  b                                           ; $4117: $88
	adc  b                                           ; $4118: $88
	adc  b                                           ; $4119: $88
	adc  b                                           ; $411a: $88
	adc  b                                           ; $411b: $88
	adc  b                                           ; $411c: $88
	adc  b                                           ; $411d: $88
	adc  b                                           ; $411e: $88
	adc  b                                           ; $411f: $88
	adc  b                                           ; $4120: $88
	adc  b                                           ; $4121: $88
	adc  b                                           ; $4122: $88
	adc  b                                           ; $4123: $88
	adc  b                                           ; $4124: $88
	adc  b                                           ; $4125: $88
	adc  b                                           ; $4126: $88
	adc  b                                           ; $4127: $88
	adc  b                                           ; $4128: $88
	adc  b                                           ; $4129: $88
	adc  b                                           ; $412a: $88
	adc  b                                           ; $412b: $88
	adc  b                                           ; $412c: $88
	adc  b                                           ; $412d: $88
	adc  b                                           ; $412e: $88
	adc  b                                           ; $412f: $88
	adc  b                                           ; $4130: $88
	adc  b                                           ; $4131: $88
	adc  b                                           ; $4132: $88
	adc  b                                           ; $4133: $88
	adc  b                                           ; $4134: $88
	adc  b                                           ; $4135: $88
	adc  b                                           ; $4136: $88
	adc  b                                           ; $4137: $88
	adc  b                                           ; $4138: $88
	adc  b                                           ; $4139: $88
	adc  b                                           ; $413a: $88
	adc  b                                           ; $413b: $88
	adc  b                                           ; $413c: $88
	adc  b                                           ; $413d: $88
	adc  b                                           ; $413e: $88
	adc  b                                           ; $413f: $88
	adc  b                                           ; $4140: $88
	adc  b                                           ; $4141: $88
	adc  b                                           ; $4142: $88
	adc  b                                           ; $4143: $88
	adc  b                                           ; $4144: $88
	adc  b                                           ; $4145: $88
	adc  b                                           ; $4146: $88
	adc  b                                           ; $4147: $88
	adc  b                                           ; $4148: $88
	adc  b                                           ; $4149: $88
	adc  b                                           ; $414a: $88
	adc  b                                           ; $414b: $88
	adc  b                                           ; $414c: $88
	adc  b                                           ; $414d: $88
	adc  b                                           ; $414e: $88
	adc  b                                           ; $414f: $88
	adc  b                                           ; $4150: $88
	adc  b                                           ; $4151: $88
	adc  b                                           ; $4152: $88
	adc  b                                           ; $4153: $88
	adc  b                                           ; $4154: $88
	adc  b                                           ; $4155: $88
	adc  b                                           ; $4156: $88
	adc  b                                           ; $4157: $88
	adc  b                                           ; $4158: $88
	adc  b                                           ; $4159: $88
	adc  b                                           ; $415a: $88
	adc  b                                           ; $415b: $88
	adc  b                                           ; $415c: $88
	adc  b                                           ; $415d: $88
	adc  b                                           ; $415e: $88
	adc  b                                           ; $415f: $88
	adc  b                                           ; $4160: $88
	adc  b                                           ; $4161: $88
	adc  b                                           ; $4162: $88
	adc  b                                           ; $4163: $88
	adc  b                                           ; $4164: $88
	adc  b                                           ; $4165: $88
	adc  b                                           ; $4166: $88
	adc  b                                           ; $4167: $88
	adc  b                                           ; $4168: $88
	adc  b                                           ; $4169: $88
	adc  b                                           ; $416a: $88
	adc  b                                           ; $416b: $88
	adc  b                                           ; $416c: $88
	adc  b                                           ; $416d: $88
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
	adc  b                                           ; $42a7: $88
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
	adc  b                                           ; $4416: $88
	adc  b                                           ; $4417: $88
	adc  b                                           ; $4418: $88
	adc  b                                           ; $4419: $88
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	adc  b                                           ; $441c: $88
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	adc  b                                           ; $441f: $88
	adc  b                                           ; $4420: $88
	adc  b                                           ; $4421: $88
	adc  b                                           ; $4422: $88
	adc  b                                           ; $4423: $88
	adc  b                                           ; $4424: $88
	adc  b                                           ; $4425: $88
	adc  b                                           ; $4426: $88
	adc  b                                           ; $4427: $88
	adc  b                                           ; $4428: $88
	adc  b                                           ; $4429: $88
	adc  b                                           ; $442a: $88
	adc  b                                           ; $442b: $88
	adc  b                                           ; $442c: $88
	adc  b                                           ; $442d: $88
	adc  b                                           ; $442e: $88
	adc  b                                           ; $442f: $88
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	adc  b                                           ; $4432: $88
	adc  b                                           ; $4433: $88
	adc  b                                           ; $4434: $88
	adc  b                                           ; $4435: $88
	adc  b                                           ; $4436: $88
	adc  b                                           ; $4437: $88
	adc  b                                           ; $4438: $88
	adc  b                                           ; $4439: $88
	adc  b                                           ; $443a: $88
	adc  b                                           ; $443b: $88
	adc  b                                           ; $443c: $88
	adc  b                                           ; $443d: $88
	adc  b                                           ; $443e: $88
	adc  b                                           ; $443f: $88
	adc  b                                           ; $4440: $88
	adc  b                                           ; $4441: $88
	adc  b                                           ; $4442: $88
	adc  b                                           ; $4443: $88
	adc  b                                           ; $4444: $88
	adc  b                                           ; $4445: $88
	adc  b                                           ; $4446: $88
	adc  b                                           ; $4447: $88
	adc  b                                           ; $4448: $88
	adc  b                                           ; $4449: $88
	adc  b                                           ; $444a: $88
	adc  b                                           ; $444b: $88
	adc  b                                           ; $444c: $88
	adc  b                                           ; $444d: $88
	adc  b                                           ; $444e: $88
	adc  b                                           ; $444f: $88
	adc  b                                           ; $4450: $88
	adc  b                                           ; $4451: $88
	adc  b                                           ; $4452: $88
	adc  b                                           ; $4453: $88
	adc  b                                           ; $4454: $88
	adc  b                                           ; $4455: $88
	adc  b                                           ; $4456: $88
	adc  b                                           ; $4457: $88
	adc  b                                           ; $4458: $88
	adc  b                                           ; $4459: $88
	adc  b                                           ; $445a: $88
	adc  b                                           ; $445b: $88
	adc  b                                           ; $445c: $88
	adc  b                                           ; $445d: $88
	adc  b                                           ; $445e: $88
	adc  b                                           ; $445f: $88
	adc  b                                           ; $4460: $88
	adc  b                                           ; $4461: $88
	adc  b                                           ; $4462: $88
	adc  b                                           ; $4463: $88
	adc  b                                           ; $4464: $88
	adc  b                                           ; $4465: $88

Call_0cc_4466:
	adc  b                                           ; $4466: $88
	adc  b                                           ; $4467: $88
	adc  b                                           ; $4468: $88
	adc  b                                           ; $4469: $88
	adc  b                                           ; $446a: $88
	adc  b                                           ; $446b: $88
	adc  b                                           ; $446c: $88
	adc  b                                           ; $446d: $88
	adc  b                                           ; $446e: $88
	adc  b                                           ; $446f: $88
	adc  b                                           ; $4470: $88
	adc  b                                           ; $4471: $88
	adc  b                                           ; $4472: $88
	adc  b                                           ; $4473: $88
	adc  b                                           ; $4474: $88
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	adc  b                                           ; $4477: $88
	adc  b                                           ; $4478: $88
	adc  b                                           ; $4479: $88
	adc  b                                           ; $447a: $88
	adc  b                                           ; $447b: $88
	adc  b                                           ; $447c: $88
	adc  b                                           ; $447d: $88
	adc  b                                           ; $447e: $88
	adc  b                                           ; $447f: $88
	adc  b                                           ; $4480: $88
	adc  b                                           ; $4481: $88
	adc  b                                           ; $4482: $88
	adc  b                                           ; $4483: $88
	adc  b                                           ; $4484: $88
	adc  b                                           ; $4485: $88
	adc  b                                           ; $4486: $88
	adc  b                                           ; $4487: $88
	adc  b                                           ; $4488: $88
	adc  b                                           ; $4489: $88
	adc  b                                           ; $448a: $88
	adc  b                                           ; $448b: $88
	adc  b                                           ; $448c: $88
	adc  b                                           ; $448d: $88
	adc  b                                           ; $448e: $88
	adc  b                                           ; $448f: $88
	adc  b                                           ; $4490: $88
	adc  b                                           ; $4491: $88
	adc  b                                           ; $4492: $88
	adc  b                                           ; $4493: $88
	adc  b                                           ; $4494: $88
	adc  b                                           ; $4495: $88
	adc  b                                           ; $4496: $88
	adc  b                                           ; $4497: $88
	adc  b                                           ; $4498: $88
	adc  b                                           ; $4499: $88
	adc  b                                           ; $449a: $88
	adc  b                                           ; $449b: $88
	adc  b                                           ; $449c: $88
	adc  b                                           ; $449d: $88
	adc  b                                           ; $449e: $88
	adc  b                                           ; $449f: $88
	adc  b                                           ; $44a0: $88
	adc  b                                           ; $44a1: $88
	adc  b                                           ; $44a2: $88
	adc  b                                           ; $44a3: $88
	adc  b                                           ; $44a4: $88
	adc  b                                           ; $44a5: $88
	adc  b                                           ; $44a6: $88
	adc  b                                           ; $44a7: $88
	adc  b                                           ; $44a8: $88
	adc  b                                           ; $44a9: $88
	adc  b                                           ; $44aa: $88
	adc  b                                           ; $44ab: $88
	adc  b                                           ; $44ac: $88
	adc  b                                           ; $44ad: $88
	adc  b                                           ; $44ae: $88
	adc  b                                           ; $44af: $88
	adc  b                                           ; $44b0: $88
	adc  b                                           ; $44b1: $88
	adc  b                                           ; $44b2: $88
	adc  b                                           ; $44b3: $88
	adc  b                                           ; $44b4: $88
	adc  b                                           ; $44b5: $88
	adc  b                                           ; $44b6: $88
	adc  b                                           ; $44b7: $88
	adc  b                                           ; $44b8: $88
	adc  b                                           ; $44b9: $88
	adc  b                                           ; $44ba: $88
	adc  b                                           ; $44bb: $88
	adc  b                                           ; $44bc: $88
	adc  b                                           ; $44bd: $88
	adc  b                                           ; $44be: $88
	adc  b                                           ; $44bf: $88
	adc  b                                           ; $44c0: $88
	adc  b                                           ; $44c1: $88
	adc  b                                           ; $44c2: $88
	adc  b                                           ; $44c3: $88
	adc  b                                           ; $44c4: $88
	adc  b                                           ; $44c5: $88
	adc  b                                           ; $44c6: $88
	adc  b                                           ; $44c7: $88
	adc  b                                           ; $44c8: $88
	adc  b                                           ; $44c9: $88
	adc  b                                           ; $44ca: $88
	adc  b                                           ; $44cb: $88
	adc  b                                           ; $44cc: $88
	adc  b                                           ; $44cd: $88
	adc  b                                           ; $44ce: $88
	adc  b                                           ; $44cf: $88
	adc  b                                           ; $44d0: $88
	adc  b                                           ; $44d1: $88
	adc  b                                           ; $44d2: $88
	adc  b                                           ; $44d3: $88
	adc  b                                           ; $44d4: $88
	adc  b                                           ; $44d5: $88
	adc  b                                           ; $44d6: $88
	adc  b                                           ; $44d7: $88
	adc  b                                           ; $44d8: $88
	adc  b                                           ; $44d9: $88
	adc  b                                           ; $44da: $88
	adc  b                                           ; $44db: $88
	adc  b                                           ; $44dc: $88
	adc  b                                           ; $44dd: $88
	adc  b                                           ; $44de: $88
	adc  b                                           ; $44df: $88
	adc  b                                           ; $44e0: $88
	adc  b                                           ; $44e1: $88
	adc  b                                           ; $44e2: $88
	adc  b                                           ; $44e3: $88
	adc  b                                           ; $44e4: $88
	adc  b                                           ; $44e5: $88
	adc  b                                           ; $44e6: $88
	adc  b                                           ; $44e7: $88
	adc  b                                           ; $44e8: $88
	adc  b                                           ; $44e9: $88
	adc  b                                           ; $44ea: $88
	adc  b                                           ; $44eb: $88
	adc  b                                           ; $44ec: $88
	adc  b                                           ; $44ed: $88
	adc  b                                           ; $44ee: $88
	adc  b                                           ; $44ef: $88
	adc  b                                           ; $44f0: $88
	adc  b                                           ; $44f1: $88
	adc  b                                           ; $44f2: $88
	adc  b                                           ; $44f3: $88
	adc  b                                           ; $44f4: $88
	adc  b                                           ; $44f5: $88
	adc  b                                           ; $44f6: $88
	adc  b                                           ; $44f7: $88
	adc  b                                           ; $44f8: $88
	adc  b                                           ; $44f9: $88
	adc  b                                           ; $44fa: $88
	adc  b                                           ; $44fb: $88
	adc  b                                           ; $44fc: $88
	adc  b                                           ; $44fd: $88
	adc  b                                           ; $44fe: $88
	adc  b                                           ; $44ff: $88
	adc  b                                           ; $4500: $88
	adc  b                                           ; $4501: $88
	adc  b                                           ; $4502: $88
	adc  b                                           ; $4503: $88
	adc  b                                           ; $4504: $88
	adc  b                                           ; $4505: $88
	adc  b                                           ; $4506: $88
	adc  b                                           ; $4507: $88
	adc  b                                           ; $4508: $88
	adc  b                                           ; $4509: $88
	adc  b                                           ; $450a: $88
	adc  b                                           ; $450b: $88
	adc  b                                           ; $450c: $88
	adc  b                                           ; $450d: $88
	adc  b                                           ; $450e: $88
	adc  b                                           ; $450f: $88
	adc  b                                           ; $4510: $88
	adc  b                                           ; $4511: $88
	adc  b                                           ; $4512: $88
	adc  b                                           ; $4513: $88
	adc  b                                           ; $4514: $88
	adc  b                                           ; $4515: $88
	adc  b                                           ; $4516: $88
	adc  b                                           ; $4517: $88
	adc  b                                           ; $4518: $88
	adc  b                                           ; $4519: $88
	adc  b                                           ; $451a: $88
	adc  b                                           ; $451b: $88
	adc  b                                           ; $451c: $88
	adc  b                                           ; $451d: $88
	adc  b                                           ; $451e: $88
	adc  b                                           ; $451f: $88
	adc  b                                           ; $4520: $88
	adc  b                                           ; $4521: $88
	adc  b                                           ; $4522: $88
	adc  b                                           ; $4523: $88
	adc  b                                           ; $4524: $88
	adc  b                                           ; $4525: $88
	adc  b                                           ; $4526: $88
	adc  b                                           ; $4527: $88
	adc  b                                           ; $4528: $88
	adc  b                                           ; $4529: $88
	adc  b                                           ; $452a: $88
	adc  b                                           ; $452b: $88
	adc  b                                           ; $452c: $88
	adc  b                                           ; $452d: $88
	adc  b                                           ; $452e: $88
	adc  b                                           ; $452f: $88
	adc  b                                           ; $4530: $88
	adc  b                                           ; $4531: $88
	adc  b                                           ; $4532: $88
	adc  b                                           ; $4533: $88
	adc  b                                           ; $4534: $88
	adc  b                                           ; $4535: $88
	adc  b                                           ; $4536: $88
	adc  b                                           ; $4537: $88
	adc  b                                           ; $4538: $88
	adc  b                                           ; $4539: $88
	adc  b                                           ; $453a: $88
	adc  b                                           ; $453b: $88
	adc  b                                           ; $453c: $88
	adc  b                                           ; $453d: $88
	adc  b                                           ; $453e: $88
	adc  b                                           ; $453f: $88
	adc  b                                           ; $4540: $88
	adc  b                                           ; $4541: $88
	adc  b                                           ; $4542: $88
	adc  b                                           ; $4543: $88
	adc  b                                           ; $4544: $88
	adc  b                                           ; $4545: $88
	adc  b                                           ; $4546: $88
	adc  b                                           ; $4547: $88
	adc  b                                           ; $4548: $88
	adc  b                                           ; $4549: $88
	adc  b                                           ; $454a: $88
	adc  b                                           ; $454b: $88
	adc  b                                           ; $454c: $88
	adc  b                                           ; $454d: $88
	adc  b                                           ; $454e: $88
	adc  b                                           ; $454f: $88
	adc  b                                           ; $4550: $88
	adc  b                                           ; $4551: $88
	adc  b                                           ; $4552: $88
	adc  b                                           ; $4553: $88
	adc  b                                           ; $4554: $88
	adc  b                                           ; $4555: $88
	adc  b                                           ; $4556: $88
	adc  b                                           ; $4557: $88
	adc  b                                           ; $4558: $88
	adc  b                                           ; $4559: $88
	adc  b                                           ; $455a: $88
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	adc  b                                           ; $455d: $88
	adc  b                                           ; $455e: $88
	adc  b                                           ; $455f: $88
	adc  b                                           ; $4560: $88
	adc  b                                           ; $4561: $88
	adc  b                                           ; $4562: $88
	adc  b                                           ; $4563: $88
	adc  b                                           ; $4564: $88
	adc  b                                           ; $4565: $88
	adc  b                                           ; $4566: $88
	adc  b                                           ; $4567: $88
	adc  b                                           ; $4568: $88
	adc  b                                           ; $4569: $88
	adc  b                                           ; $456a: $88
	adc  b                                           ; $456b: $88
	adc  b                                           ; $456c: $88
	adc  b                                           ; $456d: $88
	adc  b                                           ; $456e: $88
	adc  b                                           ; $456f: $88
	adc  b                                           ; $4570: $88
	adc  b                                           ; $4571: $88
	adc  b                                           ; $4572: $88
	adc  b                                           ; $4573: $88
	adc  b                                           ; $4574: $88
	adc  b                                           ; $4575: $88
	adc  b                                           ; $4576: $88
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	adc  b                                           ; $4579: $88
	adc  b                                           ; $457a: $88
	adc  b                                           ; $457b: $88
	adc  b                                           ; $457c: $88
	adc  b                                           ; $457d: $88
	adc  b                                           ; $457e: $88
	adc  b                                           ; $457f: $88
	adc  b                                           ; $4580: $88
	adc  b                                           ; $4581: $88
	adc  b                                           ; $4582: $88
	adc  b                                           ; $4583: $88
	adc  b                                           ; $4584: $88
	adc  b                                           ; $4585: $88
	adc  b                                           ; $4586: $88
	adc  b                                           ; $4587: $88
	adc  b                                           ; $4588: $88
	adc  b                                           ; $4589: $88
	adc  b                                           ; $458a: $88
	adc  b                                           ; $458b: $88
	adc  b                                           ; $458c: $88
	adc  b                                           ; $458d: $88
	adc  b                                           ; $458e: $88
	adc  b                                           ; $458f: $88
	adc  b                                           ; $4590: $88
	adc  b                                           ; $4591: $88
	adc  b                                           ; $4592: $88
	adc  b                                           ; $4593: $88
	adc  b                                           ; $4594: $88
	adc  b                                           ; $4595: $88
	adc  b                                           ; $4596: $88
	adc  b                                           ; $4597: $88
	adc  b                                           ; $4598: $88
	adc  b                                           ; $4599: $88
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	adc  b                                           ; $459c: $88
	adc  b                                           ; $459d: $88
	adc  b                                           ; $459e: $88
	adc  b                                           ; $459f: $88
	adc  b                                           ; $45a0: $88
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	adc  b                                           ; $45aa: $88
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	adc  b                                           ; $45ad: $88
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	adc  b                                           ; $45b0: $88
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	adc  b                                           ; $45b4: $88
	adc  b                                           ; $45b5: $88
	adc  b                                           ; $45b6: $88
	adc  b                                           ; $45b7: $88
	adc  b                                           ; $45b8: $88
	adc  b                                           ; $45b9: $88
	adc  b                                           ; $45ba: $88
	adc  b                                           ; $45bb: $88
	adc  b                                           ; $45bc: $88
	adc  b                                           ; $45bd: $88
	adc  b                                           ; $45be: $88
	adc  b                                           ; $45bf: $88
	adc  b                                           ; $45c0: $88
	adc  b                                           ; $45c1: $88
	adc  b                                           ; $45c2: $88
	adc  b                                           ; $45c3: $88
	adc  b                                           ; $45c4: $88
	adc  b                                           ; $45c5: $88
	adc  b                                           ; $45c6: $88
	adc  b                                           ; $45c7: $88
	adc  b                                           ; $45c8: $88
	adc  b                                           ; $45c9: $88
	adc  b                                           ; $45ca: $88
	adc  b                                           ; $45cb: $88
	adc  b                                           ; $45cc: $88
	adc  b                                           ; $45cd: $88
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	adc  b                                           ; $45d0: $88
	adc  b                                           ; $45d1: $88
	adc  b                                           ; $45d2: $88
	adc  b                                           ; $45d3: $88
	adc  b                                           ; $45d4: $88
	adc  b                                           ; $45d5: $88
	adc  b                                           ; $45d6: $88
	adc  b                                           ; $45d7: $88
	adc  b                                           ; $45d8: $88
	adc  b                                           ; $45d9: $88
	adc  b                                           ; $45da: $88
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	adc  b                                           ; $45dd: $88
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	adc  b                                           ; $45e0: $88
	adc  b                                           ; $45e1: $88
	adc  b                                           ; $45e2: $88
	adc  b                                           ; $45e3: $88
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	adc  b                                           ; $45e8: $88
	adc  b                                           ; $45e9: $88
	adc  b                                           ; $45ea: $88
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	adc  b                                           ; $45ed: $88
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	adc  b                                           ; $45f0: $88
	adc  b                                           ; $45f1: $88
	adc  b                                           ; $45f2: $88
	adc  b                                           ; $45f3: $88
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	adc  b                                           ; $45f6: $88
	adc  b                                           ; $45f7: $88
	adc  b                                           ; $45f8: $88
	adc  b                                           ; $45f9: $88
	adc  b                                           ; $45fa: $88
	adc  b                                           ; $45fb: $88
	adc  b                                           ; $45fc: $88
	adc  b                                           ; $45fd: $88
	adc  b                                           ; $45fe: $88
	adc  b                                           ; $45ff: $88
	adc  b                                           ; $4600: $88
	adc  b                                           ; $4601: $88
	adc  b                                           ; $4602: $88
	adc  b                                           ; $4603: $88
	adc  b                                           ; $4604: $88
	adc  b                                           ; $4605: $88
	adc  b                                           ; $4606: $88
	adc  b                                           ; $4607: $88
	adc  b                                           ; $4608: $88
	adc  b                                           ; $4609: $88
	adc  b                                           ; $460a: $88
	adc  b                                           ; $460b: $88
	adc  b                                           ; $460c: $88
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	adc  b                                           ; $460f: $88
	adc  b                                           ; $4610: $88
	adc  b                                           ; $4611: $88
	adc  b                                           ; $4612: $88
	adc  b                                           ; $4613: $88
	adc  b                                           ; $4614: $88
	adc  b                                           ; $4615: $88
	adc  b                                           ; $4616: $88
	adc  b                                           ; $4617: $88
	adc  b                                           ; $4618: $88
	adc  b                                           ; $4619: $88
	adc  b                                           ; $461a: $88
	adc  b                                           ; $461b: $88
	adc  b                                           ; $461c: $88
	adc  b                                           ; $461d: $88
	adc  b                                           ; $461e: $88
	adc  b                                           ; $461f: $88
	adc  b                                           ; $4620: $88
	adc  b                                           ; $4621: $88
	adc  b                                           ; $4622: $88
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	adc  b                                           ; $4625: $88
	adc  b                                           ; $4626: $88
	adc  b                                           ; $4627: $88
	adc  b                                           ; $4628: $88
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	adc  b                                           ; $462b: $88
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	adc  b                                           ; $4630: $88
	adc  b                                           ; $4631: $88
	adc  b                                           ; $4632: $88
	adc  b                                           ; $4633: $88
	adc  b                                           ; $4634: $88
	adc  b                                           ; $4635: $88
	adc  b                                           ; $4636: $88
	adc  b                                           ; $4637: $88
	adc  b                                           ; $4638: $88
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	adc  b                                           ; $463b: $88
	adc  b                                           ; $463c: $88
	adc  b                                           ; $463d: $88
	adc  b                                           ; $463e: $88
	adc  b                                           ; $463f: $88
	adc  b                                           ; $4640: $88
	adc  b                                           ; $4641: $88
	adc  b                                           ; $4642: $88
	adc  b                                           ; $4643: $88
	adc  b                                           ; $4644: $88
	adc  b                                           ; $4645: $88
	adc  b                                           ; $4646: $88
	adc  b                                           ; $4647: $88
	adc  b                                           ; $4648: $88
	adc  b                                           ; $4649: $88
	adc  b                                           ; $464a: $88
	adc  b                                           ; $464b: $88
	adc  b                                           ; $464c: $88
	adc  b                                           ; $464d: $88
	adc  b                                           ; $464e: $88
	adc  b                                           ; $464f: $88
	adc  b                                           ; $4650: $88
	adc  b                                           ; $4651: $88
	adc  b                                           ; $4652: $88
	adc  b                                           ; $4653: $88
	adc  b                                           ; $4654: $88
	adc  b                                           ; $4655: $88
	adc  b                                           ; $4656: $88
	adc  b                                           ; $4657: $88
	adc  b                                           ; $4658: $88
	adc  b                                           ; $4659: $88
	adc  b                                           ; $465a: $88
	adc  b                                           ; $465b: $88
	adc  b                                           ; $465c: $88
	adc  b                                           ; $465d: $88
	adc  b                                           ; $465e: $88
	adc  b                                           ; $465f: $88
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	adc  b                                           ; $4663: $88
	adc  b                                           ; $4664: $88
	adc  b                                           ; $4665: $88
	adc  b                                           ; $4666: $88
	adc  b                                           ; $4667: $88
	adc  b                                           ; $4668: $88
	adc  b                                           ; $4669: $88
	adc  b                                           ; $466a: $88
	adc  b                                           ; $466b: $88
	adc  b                                           ; $466c: $88
	adc  b                                           ; $466d: $88
	adc  b                                           ; $466e: $88
	adc  b                                           ; $466f: $88
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88
	adc  b                                           ; $4673: $88
	adc  b                                           ; $4674: $88
	adc  b                                           ; $4675: $88
	adc  b                                           ; $4676: $88
	adc  b                                           ; $4677: $88
	adc  b                                           ; $4678: $88
	adc  b                                           ; $4679: $88
	adc  b                                           ; $467a: $88
	adc  b                                           ; $467b: $88
	adc  b                                           ; $467c: $88
	adc  b                                           ; $467d: $88
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	adc  b                                           ; $4680: $88
	adc  b                                           ; $4681: $88
	adc  b                                           ; $4682: $88
	adc  b                                           ; $4683: $88
	adc  b                                           ; $4684: $88
	adc  b                                           ; $4685: $88
	adc  b                                           ; $4686: $88
	adc  b                                           ; $4687: $88
	adc  b                                           ; $4688: $88
	adc  b                                           ; $4689: $88
	adc  b                                           ; $468a: $88
	adc  b                                           ; $468b: $88
	adc  b                                           ; $468c: $88
	adc  b                                           ; $468d: $88
	adc  b                                           ; $468e: $88
	adc  b                                           ; $468f: $88
	adc  b                                           ; $4690: $88
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	adc  b                                           ; $4693: $88
	adc  b                                           ; $4694: $88
	adc  b                                           ; $4695: $88
	adc  b                                           ; $4696: $88
	adc  b                                           ; $4697: $88
	adc  b                                           ; $4698: $88
	adc  b                                           ; $4699: $88
	adc  b                                           ; $469a: $88
	adc  b                                           ; $469b: $88
	adc  b                                           ; $469c: $88
	adc  b                                           ; $469d: $88
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	adc  b                                           ; $46a4: $88
	adc  b                                           ; $46a5: $88
	adc  b                                           ; $46a6: $88
	adc  b                                           ; $46a7: $88
	adc  b                                           ; $46a8: $88
	adc  b                                           ; $46a9: $88
	adc  b                                           ; $46aa: $88
	adc  b                                           ; $46ab: $88
	adc  b                                           ; $46ac: $88
	adc  b                                           ; $46ad: $88
	adc  b                                           ; $46ae: $88
	adc  b                                           ; $46af: $88
	adc  b                                           ; $46b0: $88
	adc  b                                           ; $46b1: $88
	adc  b                                           ; $46b2: $88
	adc  b                                           ; $46b3: $88
	adc  b                                           ; $46b4: $88
	adc  b                                           ; $46b5: $88
	adc  b                                           ; $46b6: $88
	adc  b                                           ; $46b7: $88
	adc  b                                           ; $46b8: $88
	adc  b                                           ; $46b9: $88
	adc  b                                           ; $46ba: $88
	adc  b                                           ; $46bb: $88
	adc  b                                           ; $46bc: $88
	adc  b                                           ; $46bd: $88
	adc  b                                           ; $46be: $88
	adc  b                                           ; $46bf: $88
	adc  b                                           ; $46c0: $88
	adc  b                                           ; $46c1: $88
	adc  b                                           ; $46c2: $88
	adc  b                                           ; $46c3: $88
	adc  b                                           ; $46c4: $88
	adc  b                                           ; $46c5: $88
	adc  b                                           ; $46c6: $88
	adc  b                                           ; $46c7: $88
	adc  b                                           ; $46c8: $88
	adc  b                                           ; $46c9: $88
	adc  b                                           ; $46ca: $88
	adc  b                                           ; $46cb: $88
	adc  b                                           ; $46cc: $88
	adc  b                                           ; $46cd: $88
	adc  b                                           ; $46ce: $88
	adc  b                                           ; $46cf: $88
	adc  b                                           ; $46d0: $88
	adc  b                                           ; $46d1: $88
	adc  b                                           ; $46d2: $88
	adc  b                                           ; $46d3: $88
	adc  b                                           ; $46d4: $88
	adc  b                                           ; $46d5: $88
	adc  b                                           ; $46d6: $88
	adc  b                                           ; $46d7: $88
	adc  b                                           ; $46d8: $88
	adc  b                                           ; $46d9: $88
	adc  b                                           ; $46da: $88
	adc  b                                           ; $46db: $88
	adc  b                                           ; $46dc: $88
	adc  b                                           ; $46dd: $88
	adc  b                                           ; $46de: $88
	adc  b                                           ; $46df: $88
	adc  b                                           ; $46e0: $88
	adc  b                                           ; $46e1: $88
	adc  b                                           ; $46e2: $88
	adc  b                                           ; $46e3: $88
	adc  b                                           ; $46e4: $88
	adc  b                                           ; $46e5: $88
	adc  b                                           ; $46e6: $88
	adc  b                                           ; $46e7: $88
	adc  b                                           ; $46e8: $88
	adc  b                                           ; $46e9: $88
	adc  b                                           ; $46ea: $88
	adc  b                                           ; $46eb: $88
	adc  b                                           ; $46ec: $88
	adc  b                                           ; $46ed: $88
	adc  b                                           ; $46ee: $88
	adc  b                                           ; $46ef: $88
	adc  b                                           ; $46f0: $88
	adc  b                                           ; $46f1: $88
	adc  b                                           ; $46f2: $88
	adc  b                                           ; $46f3: $88
	adc  b                                           ; $46f4: $88
	adc  b                                           ; $46f5: $88
	adc  b                                           ; $46f6: $88
	adc  b                                           ; $46f7: $88
	adc  b                                           ; $46f8: $88
	adc  b                                           ; $46f9: $88
	adc  b                                           ; $46fa: $88
	adc  b                                           ; $46fb: $88
	adc  b                                           ; $46fc: $88
	adc  b                                           ; $46fd: $88
	adc  b                                           ; $46fe: $88
	adc  b                                           ; $46ff: $88
	adc  b                                           ; $4700: $88
	adc  b                                           ; $4701: $88
	adc  b                                           ; $4702: $88
	adc  b                                           ; $4703: $88
	adc  b                                           ; $4704: $88
	adc  b                                           ; $4705: $88
	adc  b                                           ; $4706: $88
	adc  b                                           ; $4707: $88
	adc  b                                           ; $4708: $88
	adc  b                                           ; $4709: $88
	adc  b                                           ; $470a: $88
	adc  b                                           ; $470b: $88
	adc  b                                           ; $470c: $88
	adc  b                                           ; $470d: $88
	adc  b                                           ; $470e: $88
	adc  b                                           ; $470f: $88
	adc  b                                           ; $4710: $88
	adc  b                                           ; $4711: $88
	adc  b                                           ; $4712: $88
	adc  b                                           ; $4713: $88
	adc  b                                           ; $4714: $88
	adc  b                                           ; $4715: $88
	adc  b                                           ; $4716: $88
	adc  b                                           ; $4717: $88
	adc  b                                           ; $4718: $88
	adc  b                                           ; $4719: $88
	adc  b                                           ; $471a: $88
	adc  b                                           ; $471b: $88
	adc  b                                           ; $471c: $88
	adc  b                                           ; $471d: $88
	adc  b                                           ; $471e: $88
	adc  b                                           ; $471f: $88
	adc  b                                           ; $4720: $88
	adc  b                                           ; $4721: $88
	adc  b                                           ; $4722: $88
	adc  b                                           ; $4723: $88
	adc  b                                           ; $4724: $88
	adc  b                                           ; $4725: $88
	adc  b                                           ; $4726: $88
	adc  b                                           ; $4727: $88
	adc  b                                           ; $4728: $88
	adc  b                                           ; $4729: $88
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
	adc  b                                           ; $4737: $88
	adc  b                                           ; $4738: $88
	adc  b                                           ; $4739: $88
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

Call_0cc_4893:
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
	adc  b                                           ; $48a9: $88
	adc  b                                           ; $48aa: $88
	adc  b                                           ; $48ab: $88
	adc  b                                           ; $48ac: $88
	adc  b                                           ; $48ad: $88
	adc  b                                           ; $48ae: $88
	adc  b                                           ; $48af: $88
	adc  b                                           ; $48b0: $88
	adc  b                                           ; $48b1: $88
	adc  b                                           ; $48b2: $88
	adc  b                                           ; $48b3: $88
	adc  b                                           ; $48b4: $88
	adc  b                                           ; $48b5: $88
	adc  b                                           ; $48b6: $88
	adc  b                                           ; $48b7: $88
	adc  b                                           ; $48b8: $88
	adc  b                                           ; $48b9: $88
	adc  b                                           ; $48ba: $88
	adc  b                                           ; $48bb: $88
	adc  b                                           ; $48bc: $88
	adc  b                                           ; $48bd: $88
	adc  b                                           ; $48be: $88
	adc  b                                           ; $48bf: $88
	adc  b                                           ; $48c0: $88
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	adc  b                                           ; $48c3: $88
	adc  b                                           ; $48c4: $88
	adc  b                                           ; $48c5: $88
	adc  b                                           ; $48c6: $88
	adc  b                                           ; $48c7: $88
	adc  b                                           ; $48c8: $88
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	adc  b                                           ; $48cd: $88
	adc  b                                           ; $48ce: $88
	adc  b                                           ; $48cf: $88
	adc  b                                           ; $48d0: $88
	adc  b                                           ; $48d1: $88
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	adc  b                                           ; $48d6: $88
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	adc  b                                           ; $48da: $88
	adc  b                                           ; $48db: $88
	adc  b                                           ; $48dc: $88
	adc  b                                           ; $48dd: $88
	adc  b                                           ; $48de: $88
	adc  b                                           ; $48df: $88
	adc  b                                           ; $48e0: $88
	adc  b                                           ; $48e1: $88
	adc  b                                           ; $48e2: $88
	adc  b                                           ; $48e3: $88
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	adc  b                                           ; $48e7: $88
	adc  b                                           ; $48e8: $88
	adc  b                                           ; $48e9: $88
	adc  b                                           ; $48ea: $88
	adc  b                                           ; $48eb: $88
	adc  b                                           ; $48ec: $88
	adc  b                                           ; $48ed: $88
	adc  b                                           ; $48ee: $88
	adc  b                                           ; $48ef: $88
	adc  b                                           ; $48f0: $88
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	adc  b                                           ; $48f5: $88
	adc  b                                           ; $48f6: $88
	adc  b                                           ; $48f7: $88
	adc  b                                           ; $48f8: $88
	adc  b                                           ; $48f9: $88
	adc  b                                           ; $48fa: $88
	adc  b                                           ; $48fb: $88
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	adc  b                                           ; $4903: $88
	adc  b                                           ; $4904: $88
	adc  b                                           ; $4905: $88
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	adc  b                                           ; $490a: $88
	adc  b                                           ; $490b: $88
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	adc  b                                           ; $4913: $88
	adc  b                                           ; $4914: $88
	adc  b                                           ; $4915: $88
	adc  b                                           ; $4916: $88
	adc  b                                           ; $4917: $88
	adc  b                                           ; $4918: $88
	adc  b                                           ; $4919: $88
	adc  b                                           ; $491a: $88
	adc  b                                           ; $491b: $88
	adc  b                                           ; $491c: $88
	adc  b                                           ; $491d: $88
	adc  b                                           ; $491e: $88
	adc  b                                           ; $491f: $88
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	adc  b                                           ; $4922: $88
	adc  b                                           ; $4923: $88
	adc  b                                           ; $4924: $88
	adc  b                                           ; $4925: $88
	adc  b                                           ; $4926: $88
	adc  b                                           ; $4927: $88
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	adc  b                                           ; $492a: $88
	adc  b                                           ; $492b: $88
	adc  b                                           ; $492c: $88
	adc  b                                           ; $492d: $88
	adc  b                                           ; $492e: $88
	adc  b                                           ; $492f: $88
	adc  b                                           ; $4930: $88
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	adc  b                                           ; $4937: $88
	adc  b                                           ; $4938: $88
	adc  b                                           ; $4939: $88
	adc  b                                           ; $493a: $88
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  b                                           ; $493d: $88
	adc  b                                           ; $493e: $88
	adc  b                                           ; $493f: $88
	adc  b                                           ; $4940: $88
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	adc  b                                           ; $4944: $88
	adc  b                                           ; $4945: $88
	adc  b                                           ; $4946: $88
	adc  b                                           ; $4947: $88
	adc  b                                           ; $4948: $88
	adc  b                                           ; $4949: $88
	adc  b                                           ; $494a: $88
	adc  b                                           ; $494b: $88
	adc  b                                           ; $494c: $88
	adc  b                                           ; $494d: $88
	adc  b                                           ; $494e: $88
	adc  b                                           ; $494f: $88
	adc  b                                           ; $4950: $88
	adc  b                                           ; $4951: $88
	adc  b                                           ; $4952: $88
	adc  b                                           ; $4953: $88
	adc  b                                           ; $4954: $88
	adc  b                                           ; $4955: $88
	adc  b                                           ; $4956: $88
	adc  b                                           ; $4957: $88
	adc  b                                           ; $4958: $88
	adc  b                                           ; $4959: $88
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	adc  b                                           ; $495e: $88
	adc  b                                           ; $495f: $88
	adc  b                                           ; $4960: $88
	adc  b                                           ; $4961: $88
	adc  b                                           ; $4962: $88
	adc  b                                           ; $4963: $88
	adc  b                                           ; $4964: $88
	adc  b                                           ; $4965: $88
	adc  b                                           ; $4966: $88
	adc  b                                           ; $4967: $88
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	adc  b                                           ; $496d: $88
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	adc  b                                           ; $4970: $88
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
	adc  b                                           ; $4979: $88
	adc  b                                           ; $497a: $88
	adc  b                                           ; $497b: $88
	adc  b                                           ; $497c: $88
	adc  b                                           ; $497d: $88
	adc  b                                           ; $497e: $88
	adc  b                                           ; $497f: $88
	adc  b                                           ; $4980: $88
	adc  b                                           ; $4981: $88
	adc  b                                           ; $4982: $88
	adc  b                                           ; $4983: $88
	adc  b                                           ; $4984: $88
	adc  b                                           ; $4985: $88
	adc  b                                           ; $4986: $88
	adc  b                                           ; $4987: $88
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	adc  b                                           ; $498a: $88
	adc  b                                           ; $498b: $88
	adc  b                                           ; $498c: $88
	adc  b                                           ; $498d: $88
	adc  b                                           ; $498e: $88
	adc  b                                           ; $498f: $88
	adc  b                                           ; $4990: $88
	adc  b                                           ; $4991: $88
	adc  b                                           ; $4992: $88
	adc  b                                           ; $4993: $88
	adc  b                                           ; $4994: $88
	adc  b                                           ; $4995: $88
	adc  b                                           ; $4996: $88
	adc  b                                           ; $4997: $88
	adc  b                                           ; $4998: $88
	adc  b                                           ; $4999: $88
	adc  b                                           ; $499a: $88
	adc  b                                           ; $499b: $88
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  b                                           ; $499e: $88
	adc  b                                           ; $499f: $88
	adc  b                                           ; $49a0: $88
	adc  b                                           ; $49a1: $88
	adc  b                                           ; $49a2: $88
	adc  b                                           ; $49a3: $88
	adc  b                                           ; $49a4: $88
	adc  b                                           ; $49a5: $88
	adc  b                                           ; $49a6: $88
	adc  b                                           ; $49a7: $88
	adc  b                                           ; $49a8: $88
	adc  b                                           ; $49a9: $88
	adc  b                                           ; $49aa: $88
	adc  b                                           ; $49ab: $88
	adc  b                                           ; $49ac: $88
	adc  b                                           ; $49ad: $88
	adc  b                                           ; $49ae: $88
	adc  b                                           ; $49af: $88
	adc  b                                           ; $49b0: $88
	adc  b                                           ; $49b1: $88
	adc  b                                           ; $49b2: $88
	adc  b                                           ; $49b3: $88
	adc  b                                           ; $49b4: $88
	adc  b                                           ; $49b5: $88
	adc  b                                           ; $49b6: $88
	adc  b                                           ; $49b7: $88
	adc  b                                           ; $49b8: $88
	adc  b                                           ; $49b9: $88
	adc  b                                           ; $49ba: $88
	adc  b                                           ; $49bb: $88
	adc  b                                           ; $49bc: $88
	adc  b                                           ; $49bd: $88
	adc  b                                           ; $49be: $88
	adc  b                                           ; $49bf: $88
	adc  b                                           ; $49c0: $88
	adc  b                                           ; $49c1: $88
	adc  b                                           ; $49c2: $88
	adc  b                                           ; $49c3: $88
	adc  b                                           ; $49c4: $88
	adc  b                                           ; $49c5: $88
	adc  b                                           ; $49c6: $88
	adc  b                                           ; $49c7: $88
	adc  b                                           ; $49c8: $88
	adc  b                                           ; $49c9: $88
	adc  b                                           ; $49ca: $88
	adc  b                                           ; $49cb: $88
	adc  b                                           ; $49cc: $88
	adc  b                                           ; $49cd: $88
	adc  b                                           ; $49ce: $88
	adc  b                                           ; $49cf: $88
	adc  b                                           ; $49d0: $88
	adc  b                                           ; $49d1: $88
	adc  b                                           ; $49d2: $88
	adc  b                                           ; $49d3: $88
	adc  b                                           ; $49d4: $88
	adc  b                                           ; $49d5: $88
	adc  b                                           ; $49d6: $88
	adc  b                                           ; $49d7: $88
	adc  b                                           ; $49d8: $88
	adc  b                                           ; $49d9: $88
	adc  b                                           ; $49da: $88
	adc  b                                           ; $49db: $88
	adc  b                                           ; $49dc: $88
	adc  b                                           ; $49dd: $88
	adc  b                                           ; $49de: $88
	adc  b                                           ; $49df: $88
	adc  b                                           ; $49e0: $88
	adc  b                                           ; $49e1: $88
	adc  b                                           ; $49e2: $88
	adc  b                                           ; $49e3: $88
	adc  b                                           ; $49e4: $88
	adc  b                                           ; $49e5: $88
	adc  b                                           ; $49e6: $88
	adc  b                                           ; $49e7: $88
	adc  b                                           ; $49e8: $88
	adc  b                                           ; $49e9: $88
	adc  b                                           ; $49ea: $88
	adc  b                                           ; $49eb: $88
	adc  b                                           ; $49ec: $88
	adc  b                                           ; $49ed: $88
	adc  b                                           ; $49ee: $88
	adc  b                                           ; $49ef: $88
	adc  b                                           ; $49f0: $88
	adc  b                                           ; $49f1: $88
	adc  b                                           ; $49f2: $88
	adc  b                                           ; $49f3: $88
	adc  b                                           ; $49f4: $88
	adc  b                                           ; $49f5: $88
	adc  b                                           ; $49f6: $88
	adc  b                                           ; $49f7: $88
	adc  b                                           ; $49f8: $88
	adc  b                                           ; $49f9: $88
	adc  b                                           ; $49fa: $88
	adc  b                                           ; $49fb: $88
	adc  b                                           ; $49fc: $88
	adc  b                                           ; $49fd: $88
	adc  b                                           ; $49fe: $88
	adc  b                                           ; $49ff: $88
	adc  b                                           ; $4a00: $88
	adc  b                                           ; $4a01: $88
	adc  b                                           ; $4a02: $88
	adc  b                                           ; $4a03: $88
	adc  b                                           ; $4a04: $88
	adc  b                                           ; $4a05: $88
	adc  b                                           ; $4a06: $88
	adc  b                                           ; $4a07: $88
	adc  b                                           ; $4a08: $88
	adc  b                                           ; $4a09: $88
	adc  b                                           ; $4a0a: $88
	adc  b                                           ; $4a0b: $88
	adc  b                                           ; $4a0c: $88
	adc  b                                           ; $4a0d: $88
	adc  b                                           ; $4a0e: $88
	adc  b                                           ; $4a0f: $88
	adc  b                                           ; $4a10: $88
	adc  b                                           ; $4a11: $88
	adc  b                                           ; $4a12: $88
	adc  b                                           ; $4a13: $88
	adc  b                                           ; $4a14: $88
	adc  b                                           ; $4a15: $88
	adc  b                                           ; $4a16: $88
	adc  b                                           ; $4a17: $88
	adc  b                                           ; $4a18: $88
	adc  b                                           ; $4a19: $88
	adc  b                                           ; $4a1a: $88
	adc  b                                           ; $4a1b: $88
	adc  b                                           ; $4a1c: $88
	adc  b                                           ; $4a1d: $88
	adc  b                                           ; $4a1e: $88
	adc  b                                           ; $4a1f: $88
	adc  b                                           ; $4a20: $88
	adc  b                                           ; $4a21: $88
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	adc  b                                           ; $4a24: $88
	adc  b                                           ; $4a25: $88
	adc  b                                           ; $4a26: $88
	adc  b                                           ; $4a27: $88
	adc  b                                           ; $4a28: $88
	adc  b                                           ; $4a29: $88
	adc  b                                           ; $4a2a: $88
	adc  b                                           ; $4a2b: $88
	adc  b                                           ; $4a2c: $88
	adc  b                                           ; $4a2d: $88
	adc  b                                           ; $4a2e: $88
	adc  b                                           ; $4a2f: $88
	adc  b                                           ; $4a30: $88
	adc  b                                           ; $4a31: $88
	adc  b                                           ; $4a32: $88
	adc  b                                           ; $4a33: $88
	adc  b                                           ; $4a34: $88
	adc  b                                           ; $4a35: $88
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	adc  b                                           ; $4a38: $88
	adc  b                                           ; $4a39: $88
	adc  b                                           ; $4a3a: $88
	adc  b                                           ; $4a3b: $88
	adc  b                                           ; $4a3c: $88
	adc  b                                           ; $4a3d: $88
	adc  b                                           ; $4a3e: $88
	adc  b                                           ; $4a3f: $88
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	adc  b                                           ; $4a42: $88
	adc  b                                           ; $4a43: $88
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	adc  b                                           ; $4a46: $88
	adc  b                                           ; $4a47: $88
	adc  b                                           ; $4a48: $88
	adc  b                                           ; $4a49: $88
	adc  b                                           ; $4a4a: $88
	adc  b                                           ; $4a4b: $88
	adc  b                                           ; $4a4c: $88
	adc  b                                           ; $4a4d: $88
	adc  b                                           ; $4a4e: $88
	adc  b                                           ; $4a4f: $88
	adc  b                                           ; $4a50: $88
	adc  b                                           ; $4a51: $88
	adc  b                                           ; $4a52: $88
	adc  b                                           ; $4a53: $88
	adc  b                                           ; $4a54: $88
	adc  b                                           ; $4a55: $88
	adc  b                                           ; $4a56: $88
	adc  b                                           ; $4a57: $88
	adc  b                                           ; $4a58: $88
	adc  b                                           ; $4a59: $88
	adc  b                                           ; $4a5a: $88
	adc  b                                           ; $4a5b: $88
	adc  b                                           ; $4a5c: $88
	adc  b                                           ; $4a5d: $88
	adc  b                                           ; $4a5e: $88
	adc  b                                           ; $4a5f: $88
	adc  b                                           ; $4a60: $88
	adc  b                                           ; $4a61: $88
	adc  b                                           ; $4a62: $88
	adc  b                                           ; $4a63: $88
	adc  b                                           ; $4a64: $88
	adc  b                                           ; $4a65: $88
	adc  b                                           ; $4a66: $88
	adc  b                                           ; $4a67: $88
	adc  b                                           ; $4a68: $88
	adc  b                                           ; $4a69: $88
	adc  b                                           ; $4a6a: $88
	adc  b                                           ; $4a6b: $88
	adc  b                                           ; $4a6c: $88
	adc  b                                           ; $4a6d: $88
	adc  b                                           ; $4a6e: $88
	adc  b                                           ; $4a6f: $88
	adc  b                                           ; $4a70: $88
	adc  b                                           ; $4a71: $88
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	adc  b                                           ; $4a74: $88
	adc  b                                           ; $4a75: $88
	adc  b                                           ; $4a76: $88
	adc  b                                           ; $4a77: $88
	adc  b                                           ; $4a78: $88
	adc  b                                           ; $4a79: $88
	adc  b                                           ; $4a7a: $88
	adc  b                                           ; $4a7b: $88
	adc  b                                           ; $4a7c: $88
	adc  b                                           ; $4a7d: $88
	adc  b                                           ; $4a7e: $88
	adc  b                                           ; $4a7f: $88
	adc  b                                           ; $4a80: $88
	adc  b                                           ; $4a81: $88
	adc  b                                           ; $4a82: $88
	adc  b                                           ; $4a83: $88
	adc  b                                           ; $4a84: $88
	adc  b                                           ; $4a85: $88
	adc  b                                           ; $4a86: $88
	adc  b                                           ; $4a87: $88
	adc  b                                           ; $4a88: $88
	adc  b                                           ; $4a89: $88
	adc  b                                           ; $4a8a: $88
	adc  b                                           ; $4a8b: $88
	adc  b                                           ; $4a8c: $88
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  b                                           ; $4a90: $88
	adc  b                                           ; $4a91: $88
	adc  b                                           ; $4a92: $88
	adc  b                                           ; $4a93: $88
	adc  b                                           ; $4a94: $88
	adc  b                                           ; $4a95: $88
	adc  b                                           ; $4a96: $88
	adc  b                                           ; $4a97: $88
	adc  b                                           ; $4a98: $88
	adc  b                                           ; $4a99: $88
	adc  b                                           ; $4a9a: $88
	adc  b                                           ; $4a9b: $88
	adc  b                                           ; $4a9c: $88
	adc  b                                           ; $4a9d: $88
	adc  b                                           ; $4a9e: $88
	adc  b                                           ; $4a9f: $88
	adc  b                                           ; $4aa0: $88
	adc  b                                           ; $4aa1: $88
	adc  b                                           ; $4aa2: $88
	adc  b                                           ; $4aa3: $88
	adc  b                                           ; $4aa4: $88
	adc  b                                           ; $4aa5: $88
	adc  b                                           ; $4aa6: $88
	adc  b                                           ; $4aa7: $88
	adc  b                                           ; $4aa8: $88
	adc  b                                           ; $4aa9: $88
	adc  b                                           ; $4aaa: $88
	adc  b                                           ; $4aab: $88
	adc  b                                           ; $4aac: $88
	adc  b                                           ; $4aad: $88
	adc  b                                           ; $4aae: $88
	adc  b                                           ; $4aaf: $88
	adc  b                                           ; $4ab0: $88
	adc  b                                           ; $4ab1: $88
	adc  b                                           ; $4ab2: $88
	adc  b                                           ; $4ab3: $88
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	adc  b                                           ; $4ab6: $88
	adc  b                                           ; $4ab7: $88
	adc  b                                           ; $4ab8: $88
	adc  b                                           ; $4ab9: $88
	adc  b                                           ; $4aba: $88
	adc  b                                           ; $4abb: $88
	adc  b                                           ; $4abc: $88
	adc  b                                           ; $4abd: $88
	adc  b                                           ; $4abe: $88
	adc  b                                           ; $4abf: $88
	adc  b                                           ; $4ac0: $88
	adc  b                                           ; $4ac1: $88
	adc  b                                           ; $4ac2: $88
	adc  b                                           ; $4ac3: $88
	adc  b                                           ; $4ac4: $88
	adc  b                                           ; $4ac5: $88
	adc  b                                           ; $4ac6: $88
	adc  b                                           ; $4ac7: $88
	adc  b                                           ; $4ac8: $88
	adc  b                                           ; $4ac9: $88
	adc  b                                           ; $4aca: $88
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	adc  b                                           ; $4acd: $88
	adc  b                                           ; $4ace: $88
	adc  b                                           ; $4acf: $88
	adc  b                                           ; $4ad0: $88
	adc  b                                           ; $4ad1: $88
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	adc  b                                           ; $4ad6: $88
	adc  b                                           ; $4ad7: $88
	adc  b                                           ; $4ad8: $88
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  b                                           ; $4adb: $88
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	adc  b                                           ; $4ae3: $88
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	adc  b                                           ; $4af0: $88
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	adc  b                                           ; $4af7: $88
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
	adc  b                                           ; $4c90: $88
	adc  b                                           ; $4c91: $88
	adc  b                                           ; $4c92: $88
	adc  b                                           ; $4c93: $88
	adc  b                                           ; $4c94: $88
	adc  b                                           ; $4c95: $88
	adc  b                                           ; $4c96: $88
	adc  b                                           ; $4c97: $88
	adc  b                                           ; $4c98: $88
	adc  b                                           ; $4c99: $88
	adc  b                                           ; $4c9a: $88
	adc  b                                           ; $4c9b: $88
	adc  b                                           ; $4c9c: $88
	adc  b                                           ; $4c9d: $88
	sbc  b                                           ; $4c9e: $98
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	sbc  c                                           ; $4ca1: $99
	adc  b                                           ; $4ca2: $88
	adc  b                                           ; $4ca3: $88
	adc  b                                           ; $4ca4: $88
	adc  c                                           ; $4ca5: $89
	adc  b                                           ; $4ca6: $88
	adc  b                                           ; $4ca7: $88
	adc  b                                           ; $4ca8: $88
	adc  b                                           ; $4ca9: $88
	adc  b                                           ; $4caa: $88
	adc  b                                           ; $4cab: $88
	adc  b                                           ; $4cac: $88
	adc  b                                           ; $4cad: $88
	adc  b                                           ; $4cae: $88
	adc  b                                           ; $4caf: $88
	adc  b                                           ; $4cb0: $88
	adc  b                                           ; $4cb1: $88
	adc  b                                           ; $4cb2: $88
	adc  b                                           ; $4cb3: $88
	adc  b                                           ; $4cb4: $88
	adc  b                                           ; $4cb5: $88
	adc  b                                           ; $4cb6: $88
	adc  b                                           ; $4cb7: $88
	adc  b                                           ; $4cb8: $88
	adc  b                                           ; $4cb9: $88
	adc  b                                           ; $4cba: $88
	adc  b                                           ; $4cbb: $88
	adc  b                                           ; $4cbc: $88
	adc  b                                           ; $4cbd: $88
	adc  b                                           ; $4cbe: $88
	sbc  b                                           ; $4cbf: $98
	adc  b                                           ; $4cc0: $88
	adc  b                                           ; $4cc1: $88
	adc  b                                           ; $4cc2: $88
	adc  b                                           ; $4cc3: $88
	adc  b                                           ; $4cc4: $88
	sbc  b                                           ; $4cc5: $98
	adc  b                                           ; $4cc6: $88
	adc  b                                           ; $4cc7: $88
	adc  b                                           ; $4cc8: $88
	adc  b                                           ; $4cc9: $88
	adc  c                                           ; $4cca: $89
	adc  b                                           ; $4ccb: $88
	adc  c                                           ; $4ccc: $89
	sbc  b                                           ; $4ccd: $98
	adc  b                                           ; $4cce: $88
	sbc  b                                           ; $4ccf: $98
	adc  c                                           ; $4cd0: $89
	adc  b                                           ; $4cd1: $88
	sbc  b                                           ; $4cd2: $98
	ld   a, b                                        ; $4cd3: $78
	adc  c                                           ; $4cd4: $89
	adc  b                                           ; $4cd5: $88
	adc  b                                           ; $4cd6: $88
	adc  b                                           ; $4cd7: $88
	halt                                             ; $4cd8: $76
	sbc  l                                           ; $4cd9: $9d
	and  [hl]                                        ; $4cda: $a6
	adc  c                                           ; $4cdb: $89
	adc  b                                           ; $4cdc: $88
	sbc  c                                           ; $4cdd: $99
	sbc  b                                           ; $4cde: $98
	add  a                                           ; $4cdf: $87
	adc  b                                           ; $4ce0: $88
	add  a                                           ; $4ce1: $87
	ld   a, c                                        ; $4ce2: $79
	sbc  c                                           ; $4ce3: $99
	adc  b                                           ; $4ce4: $88
	adc  b                                           ; $4ce5: $88
	sub  a                                           ; $4ce6: $97
	sbc  b                                           ; $4ce7: $98
	adc  b                                           ; $4ce8: $88
	sbc  c                                           ; $4ce9: $99
	adc  c                                           ; $4cea: $89
	adc  c                                           ; $4ceb: $89
	ld   a, c                                        ; $4cec: $79
	sbc  b                                           ; $4ced: $98
	sub  a                                           ; $4cee: $97
	adc  c                                           ; $4cef: $89
	adc  c                                           ; $4cf0: $89
	sbc  b                                           ; $4cf1: $98
	sbc  b                                           ; $4cf2: $98
	adc  c                                           ; $4cf3: $89
	ld   a, b                                        ; $4cf4: $78
	sbc  c                                           ; $4cf5: $99
	adc  b                                           ; $4cf6: $88
	sbc  b                                           ; $4cf7: $98
	adc  c                                           ; $4cf8: $89
	adc  c                                           ; $4cf9: $89
	xor  c                                           ; $4cfa: $a9
	adc  b                                           ; $4cfb: $88
	sbc  b                                           ; $4cfc: $98
	halt                                             ; $4cfd: $76
	add  a                                           ; $4cfe: $87
	ld   [hl], a                                     ; $4cff: $77
	ld   [hl], a                                     ; $4d00: $77
	ld   a, b                                        ; $4d01: $78
	ld   [hl], a                                     ; $4d02: $77
	adc  b                                           ; $4d03: $88
	sbc  b                                           ; $4d04: $98
	adc  b                                           ; $4d05: $88
	sbc  b                                           ; $4d06: $98
	sbc  c                                           ; $4d07: $99
	ld   a, b                                        ; $4d08: $78
	adc  d                                           ; $4d09: $8a
	ld   [hl], a                                     ; $4d0a: $77
	add  a                                           ; $4d0b: $87
	add  a                                           ; $4d0c: $87
	add  a                                           ; $4d0d: $87
	sbc  c                                           ; $4d0e: $99
	ld   [hl], a                                     ; $4d0f: $77
	adc  c                                           ; $4d10: $89
	ld   a, b                                        ; $4d11: $78
	ld   a, c                                        ; $4d12: $79
	add  a                                           ; $4d13: $87
	add  a                                           ; $4d14: $87
	adc  b                                           ; $4d15: $88
	sub  l                                           ; $4d16: $95
	ld   a, b                                        ; $4d17: $78
	adc  b                                           ; $4d18: $88
	ld   a, b                                        ; $4d19: $78
	ld   a, c                                        ; $4d1a: $79
	xor  d                                           ; $4d1b: $aa
	ld   a, c                                        ; $4d1c: $79
	and  [hl]                                        ; $4d1d: $a6
	sub  a                                           ; $4d1e: $97
	ld   a, b                                        ; $4d1f: $78
	add  a                                           ; $4d20: $87
	ld   a, b                                        ; $4d21: $78
	ld   [hl], a                                     ; $4d22: $77
	ld   l, b                                        ; $4d23: $68
	halt                                             ; $4d24: $76
	ld   a, c                                        ; $4d25: $79
	sub  [hl]                                        ; $4d26: $96
	sub  [hl]                                        ; $4d27: $96
	adc  c                                           ; $4d28: $89
	adc  b                                           ; $4d29: $88
	adc  c                                           ; $4d2a: $89
	ld   a, c                                        ; $4d2b: $79
	adc  c                                           ; $4d2c: $89
	adc  d                                           ; $4d2d: $8a
	sub  [hl]                                        ; $4d2e: $96
	ld   [hl], a                                     ; $4d2f: $77
	ld   h, d                                        ; $4d30: $62
	ld   h, l                                        ; $4d31: $65
	ld   d, a                                        ; $4d32: $57
	ld   b, [hl]                                     ; $4d33: $46
	ld   b, a                                        ; $4d34: $47
	ld   [hl], a                                     ; $4d35: $77
	adc  e                                           ; $4d36: $8b
	call z, $ddfe                                    ; $4d37: $cc $fe $dd
	db   $fc                                         ; $4d3a: $fc
	xor  e                                           ; $4d3b: $ab
	and  a                                           ; $4d3c: $a7
	ld   d, l                                        ; $4d3d: $55
	ld   de, $1111                                   ; $4d3e: $11 $11 $11
	ld   hl, $6924                                   ; $4d41: $21 $24 $69
	call $ffef                                       ; $4d44: $cd $ef $ff
	rst  $38                                         ; $4d47: $ff
	rst  $38                                         ; $4d48: $ff
	db   $fd                                         ; $4d49: $fd
	cp   b                                           ; $4d4a: $b8
	ld   h, e                                        ; $4d4b: $63
	ld   de, $1111                                   ; $4d4c: $11 $11 $11
	ld   de, $3511                                   ; $4d4f: $11 $11 $35
	xor  l                                           ; $4d52: $ad
	rst  $38                                         ; $4d53: $ff
	rst  $38                                         ; $4d54: $ff
	rst  $38                                         ; $4d55: $ff
	rst  $38                                         ; $4d56: $ff
	rst  $38                                         ; $4d57: $ff
	jp   c, $1151                                    ; $4d58: $da $51 $11

	ld   de, $1111                                   ; $4d5b: $11 $11 $11
	ld   de, $7b25                                   ; $4d5e: $11 $25 $7b
	rst  $38                                         ; $4d61: $ff
	rst  $38                                         ; $4d62: $ff
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	db   $fd                                         ; $4d66: $fd
	ld   hl, $1111                                   ; $4d67: $21 $11 $11
	ld   de, $1111                                   ; $4d6a: $11 $11 $11
	add  hl, hl                                      ; $4d6d: $29
	cp   [hl]                                        ; $4d6e: $be
	rst  $38                                         ; $4d6f: $ff
	rst  $38                                         ; $4d70: $ff
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	jp   hl                                          ; $4d74: $e9


	ld   hl, $1111                                   ; $4d75: $21 $11 $11
	ld   de, $1111                                   ; $4d78: $11 $11 $11
	inc  a                                           ; $4d7b: $3c
	rst  $38                                         ; $4d7c: $ff
	rst  $38                                         ; $4d7d: $ff
	rst  $38                                         ; $4d7e: $ff
	rst  $38                                         ; $4d7f: $ff
	rst  $38                                         ; $4d80: $ff
	cp   $61                                         ; $4d81: $fe $61
	ld   de, $1111                                   ; $4d83: $11 $11 $11
	ld   de, $1a11                                   ; $4d86: $11 $11 $1a
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	rst  $38                                         ; $4d8b: $ff
	rst  $38                                         ; $4d8c: $ff
	rst  $38                                         ; $4d8d: $ff
	rst  $38                                         ; $4d8e: $ff
	ld   d, c                                        ; $4d8f: $51
	ld   de, $1111                                   ; $4d90: $11 $11 $11
	ld   de, $8e11                                   ; $4d93: $11 $11 $8e
	rst  $38                                         ; $4d96: $ff
	rst  $38                                         ; $4d97: $ff
	rst  $38                                         ; $4d98: $ff
	rst  $38                                         ; $4d99: $ff
	rst  $38                                         ; $4d9a: $ff
	ei                                               ; $4d9b: $fb
	ld   hl, $1111                                   ; $4d9c: $21 $11 $11
	ld   de, $1511                                   ; $4d9f: $11 $11 $15
	rst  $38                                         ; $4da2: $ff
	rst  $38                                         ; $4da3: $ff
	rst  $38                                         ; $4da4: $ff
	rst  $38                                         ; $4da5: $ff
	rst  $38                                         ; $4da6: $ff
	db   $fc                                         ; $4da7: $fc
	ld   [hl], c                                     ; $4da8: $71
	ld   de, $1111                                   ; $4da9: $11 $11 $11
	ld   de, $bf11                                   ; $4dac: $11 $11 $bf
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	rst  $38                                         ; $4db2: $ff
	rst  $38                                         ; $4db3: $ff
	ld   d, c                                        ; $4db4: $51
	ld   de, $1111                                   ; $4db5: $11 $11 $11
	ld   de, $9f11                                   ; $4db8: $11 $11 $9f
	rst  $38                                         ; $4dbb: $ff
	rst  $38                                         ; $4dbc: $ff
	rst  $38                                         ; $4dbd: $ff
	rst  $38                                         ; $4dbe: $ff
	rst  $38                                         ; $4dbf: $ff
	ld   b, c                                        ; $4dc0: $41
	ld   de, $1111                                   ; $4dc1: $11 $11 $11
	ld   de, $af11                                   ; $4dc4: $11 $11 $af
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	rst  $38                                         ; $4dca: $ff
	rst  $38                                         ; $4dcb: $ff
	ld   bc, $1111                                   ; $4dcc: $01 $11 $11
	ld   de, $1111                                   ; $4dcf: $11 $11 $11
	rst  $38                                         ; $4dd2: $ff
	rst  $38                                         ; $4dd3: $ff
	rst  $38                                         ; $4dd4: $ff
	rst  $38                                         ; $4dd5: $ff
	rst  $38                                         ; $4dd6: $ff
	ld   sp, hl                                      ; $4dd7: $f9
	ld   de, $1111                                   ; $4dd8: $11 $11 $11
	ld   de, $1911                                   ; $4ddb: $11 $11 $19
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	xor  a                                           ; $4de2: $af
	pop  hl                                          ; $4de3: $e1
	ld   de, $1111                                   ; $4de4: $11 $11 $11
	ld   [de], a                                     ; $4de7: $12
	ld   d, c                                        ; $4de8: $51
	ld   l, a                                        ; $4de9: $6f
	rst  $38                                         ; $4dea: $ff
	rst  $38                                         ; $4deb: $ff
	rst  $38                                         ; $4dec: $ff
	push af                                          ; $4ded: $f5
	db   $ed                                         ; $4dee: $ed
	ld   de, $1111                                   ; $4def: $11 $11 $11
	ld   de, $1b66                                   ; $4df2: $11 $66 $1b
	rst  $38                                         ; $4df5: $ff
	rst  $38                                         ; $4df6: $ff
	rst  $38                                         ; $4df7: $ff
	db   $fc                                         ; $4df8: $fc
	ld   c, e                                        ; $4df9: $4b
	and  c                                           ; $4dfa: $a1
	ld   de, $1111                                   ; $4dfb: $11 $11 $11
	jr   jr_0cc_4e63                                 ; $4dfe: $18 $63

	rst  $38                                         ; $4e00: $ff
	rst  $38                                         ; $4e01: $ff
	rst  $38                                         ; $4e02: $ff
	rst  $38                                         ; $4e03: $ff
	halt                                             ; $4e04: $76
	or   h                                           ; $4e05: $b4
	ld   de, $1111                                   ; $4e06: $11 $11 $11
	ld   de, $af94                                   ; $4e09: $11 $94 $af
	rst  $38                                         ; $4e0c: $ff
	rst  $38                                         ; $4e0d: $ff
	rst  $38                                         ; $4e0e: $ff
	push af                                          ; $4e0f: $f5
	xor  b                                           ; $4e10: $a8
	ld   de, $1111                                   ; $4e11: $11 $11 $11
	ld   de, $7f75                                   ; $4e14: $11 $75 $7f
	rst  $38                                         ; $4e17: $ff
	rst  $38                                         ; $4e18: $ff
	rst  $38                                         ; $4e19: $ff
	or   $99                                         ; $4e1a: $f6 $99
	ld   hl, $1111                                   ; $4e1c: $21 $11 $11
	ld   de, $df48                                   ; $4e1f: $11 $48 $df
	rst  $38                                         ; $4e22: $ff
	rst  $38                                         ; $4e23: $ff
	rst  $38                                         ; $4e24: $ff
	or   $78                                         ; $4e25: $f6 $78
	ld   bc, $1111                                   ; $4e27: $01 $11 $11
	ld   de, $ff68                                   ; $4e2a: $11 $68 $ff
	rst  $38                                         ; $4e2d: $ff
	rst  $38                                         ; $4e2e: $ff
	rst  $38                                         ; $4e2f: $ff
	db   $e4                                         ; $4e30: $e4
	ld   h, [hl]                                     ; $4e31: $66
	ld   de, $1111                                   ; $4e32: $11 $11 $11
	ld   de, $ff8d                                   ; $4e35: $11 $8d $ff
	rst  $38                                         ; $4e38: $ff
	rst  $38                                         ; $4e39: $ff
	rst  $38                                         ; $4e3a: $ff
	and  h                                           ; $4e3b: $a4
	ld   h, h                                        ; $4e3c: $64
	ld   de, $1111                                   ; $4e3d: $11 $11 $11
	ld   de, $ffbf                                   ; $4e40: $11 $bf $ff
	rst  $38                                         ; $4e43: $ff
	rst  $38                                         ; $4e44: $ff
	rst  $38                                         ; $4e45: $ff
	ld   d, [hl]                                     ; $4e46: $56
	ld   h, c                                        ; $4e47: $61
	ld   de, $1111                                   ; $4e48: $11 $11 $11
	rla                                              ; $4e4b: $17
	rst  $38                                         ; $4e4c: $ff
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	rst  $38                                         ; $4e4f: $ff
	rst  $30                                         ; $4e50: $f7
	ld   h, $31                                      ; $4e51: $26 $31
	ld   de, $1111                                   ; $4e53: $11 $11 $11
	ld   l, a                                        ; $4e56: $6f
	rst  $38                                         ; $4e57: $ff
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	or   c                                           ; $4e5b: $b1
	ld   d, l                                        ; $4e5c: $55
	ld   de, $1111                                   ; $4e5d: $11 $11 $11
	ld   [de], a                                     ; $4e60: $12
	rst  $38                                         ; $4e61: $ff
	rst  $38                                         ; $4e62: $ff

jr_0cc_4e63:
	rst  $38                                         ; $4e63: $ff
	rst  $38                                         ; $4e64: $ff
	db   $fc                                         ; $4e65: $fc
	inc  d                                           ; $4e66: $14
	ld   d, c                                        ; $4e67: $51
	ld   de, $1111                                   ; $4e68: $11 $11 $11
	ld   l, $ff                                      ; $4e6b: $2e $ff
	rst  $38                                         ; $4e6d: $ff
	rst  $38                                         ; $4e6e: $ff
	rst  $38                                         ; $4e6f: $ff
	pop  bc                                          ; $4e70: $c1
	dec  [hl]                                        ; $4e71: $35
	ld   hl, $1111                                   ; $4e72: $21 $11 $11
	ld   [de], a                                     ; $4e75: $12
	rst  JumpTable                                         ; $4e76: $df
	rst  $38                                         ; $4e77: $ff
	rst  $38                                         ; $4e78: $ff
	rst  $38                                         ; $4e79: $ff
	ld   a, [$6314]                                  ; $4e7a: $fa $14 $63
	ld   de, $1111                                   ; $4e7d: $11 $11 $11
	dec  l                                           ; $4e80: $2d
	rst  $38                                         ; $4e81: $ff
	rst  $38                                         ; $4e82: $ff
	rst  $38                                         ; $4e83: $ff
	rst  $38                                         ; $4e84: $ff
	ld   d, c                                        ; $4e85: $51
	ld   d, [hl]                                     ; $4e86: $56
	ld   de, $1111                                   ; $4e87: $11 $11 $11
	dec  d                                           ; $4e8a: $15
	rst  $38                                         ; $4e8b: $ff
	rst  $38                                         ; $4e8c: $ff
	rst  $38                                         ; $4e8d: $ff
	rst  $38                                         ; $4e8e: $ff
	pop  af                                          ; $4e8f: $f1
	daa                                              ; $4e90: $27
	ld   h, c                                        ; $4e91: $61
	ld   de, $1111                                   ; $4e92: $11 $11 $11
	ld   l, a                                        ; $4e95: $6f
	rst  $38                                         ; $4e96: $ff
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	rst  $30                                         ; $4e99: $f7
	inc  d                                           ; $4e9a: $14
	ld   [hl], e                                     ; $4e9b: $73
	ld   de, $1111                                   ; $4e9c: $11 $11 $11
	rra                                              ; $4e9f: $1f
	rst  $38                                         ; $4ea0: $ff
	rst  $38                                         ; $4ea1: $ff
	rst  $38                                         ; $4ea2: $ff
	rst  $38                                         ; $4ea3: $ff
	ld   de, $1165                                   ; $4ea4: $11 $65 $11
	ld   de, $1611                                   ; $4ea7: $11 $11 $16
	rst  $38                                         ; $4eaa: $ff
	rst  $38                                         ; $4eab: $ff
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	ld   b, c                                        ; $4eae: $41
	ld   b, l                                        ; $4eaf: $45
	ld   hl, $1111                                   ; $4eb0: $21 $11 $11
	ld   de, $ffff                                   ; $4eb3: $11 $ff $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	and  c                                           ; $4eb8: $a1
	ld   h, $31                                      ; $4eb9: $26 $31
	ld   de, $1111                                   ; $4ebb: $11 $11 $11
	ld   l, a                                        ; $4ebe: $6f
	rst  $38                                         ; $4ebf: $ff
	rst  $38                                         ; $4ec0: $ff
	rst  $38                                         ; $4ec1: $ff
	pop  af                                          ; $4ec2: $f1
	dec  d                                           ; $4ec3: $15
	ld   d, c                                        ; $4ec4: $51
	ld   de, $1111                                   ; $4ec5: $11 $11 $11
	rra                                              ; $4ec8: $1f
	rst  $38                                         ; $4ec9: $ff
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	ldh  a, [c]                                      ; $4ecc: $f2
	inc  de                                          ; $4ecd: $13
	ld   h, c                                        ; $4ece: $61
	ld   de, $1111                                   ; $4ecf: $11 $11 $11
	rra                                              ; $4ed2: $1f
	rst  $38                                         ; $4ed3: $ff
	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	push af                                          ; $4ed6: $f5
	inc  d                                           ; $4ed7: $14
	add  c                                           ; $4ed8: $81
	ld   de, $1111                                   ; $4ed9: $11 $11 $11
	rra                                              ; $4edc: $1f
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	push af                                          ; $4ee0: $f5
	inc  d                                           ; $4ee1: $14
	ld   h, c                                        ; $4ee2: $61
	ld   de, $1111                                   ; $4ee3: $11 $11 $11
	rra                                              ; $4ee6: $1f
	rst  $38                                         ; $4ee7: $ff
	rst  $38                                         ; $4ee8: $ff
	rst  $38                                         ; $4ee9: $ff
	or   $15                                         ; $4eea: $f6 $15
	add  c                                           ; $4eec: $81
	ld   de, $1111                                   ; $4eed: $11 $11 $11
	inc  e                                           ; $4ef0: $1c
	rst  $38                                         ; $4ef1: $ff
	rst  $38                                         ; $4ef2: $ff
	rst  $38                                         ; $4ef3: $ff
	ld   hl, sp+$25                                  ; $4ef4: $f8 $25
	ld   [hl], d                                     ; $4ef6: $72
	ld   de, $1111                                   ; $4ef7: $11 $11 $11
	ld   a, [de]                                     ; $4efa: $1a
	rst  $38                                         ; $4efb: $ff
	rst  $38                                         ; $4efc: $ff
	rst  $38                                         ; $4efd: $ff
	ei                                               ; $4efe: $fb
	ld   b, a                                        ; $4eff: $47
	sub  c                                           ; $4f00: $91
	ld   de, $1111                                   ; $4f01: $11 $11 $11
	rla                                              ; $4f04: $17
	rst  $38                                         ; $4f05: $ff
	rst  $38                                         ; $4f06: $ff
	rst  $38                                         ; $4f07: $ff
	rst  $38                                         ; $4f08: $ff
	ld   h, a                                        ; $4f09: $67
	sub  d                                           ; $4f0a: $92
	ld   de, $1111                                   ; $4f0b: $11 $11 $11
	inc  de                                          ; $4f0e: $13
	rst  $38                                         ; $4f0f: $ff
	rst  $38                                         ; $4f10: $ff
	rst  $38                                         ; $4f11: $ff
	cp   $79                                         ; $4f12: $fe $79
	add  e                                           ; $4f14: $83
	ld   de, $1111                                   ; $4f15: $11 $11 $11
	inc  de                                          ; $4f18: $13
	rst  $38                                         ; $4f19: $ff
	rst  $38                                         ; $4f1a: $ff
	rst  $38                                         ; $4f1b: $ff
	rst  $38                                         ; $4f1c: $ff
	sbc  d                                           ; $4f1d: $9a
	ld   [hl], d                                     ; $4f1e: $72
	ld   de, $1111                                   ; $4f1f: $11 $11 $11
	ld   de, $ffff                                   ; $4f22: $11 $ff $ff
	rst  $38                                         ; $4f25: $ff
	rst  $38                                         ; $4f26: $ff
	cp   h                                           ; $4f27: $bc
	and  d                                           ; $4f28: $a2
	ld   de, $1111                                   ; $4f29: $11 $11 $11
	ld   de, $ffcf                                   ; $4f2c: $11 $cf $ff
	rst  $38                                         ; $4f2f: $ff
	rst  $38                                         ; $4f30: $ff
	db   $fd                                         ; $4f31: $fd
	ld   [hl], c                                     ; $4f32: $71
	ld   de, $1111                                   ; $4f33: $11 $11 $11
	ld   de, $ffaf                                   ; $4f36: $11 $af $ff
	rst  $38                                         ; $4f39: $ff
	rst  $38                                         ; $4f3a: $ff
	db   $fd                                         ; $4f3b: $fd
	ld   [hl], c                                     ; $4f3c: $71
	ld   de, $1111                                   ; $4f3d: $11 $11 $11
	ld   de, $ff6f                                   ; $4f40: $11 $6f $ff
	rst  $38                                         ; $4f43: $ff
	rst  $38                                         ; $4f44: $ff
	cp   $82                                         ; $4f45: $fe $82
	ld   de, $1111                                   ; $4f47: $11 $11 $11
	ld   de, $ff3c                                   ; $4f4a: $11 $3c $ff
	rst  $38                                         ; $4f4d: $ff
	rst  $38                                         ; $4f4e: $ff
	rst  $38                                         ; $4f4f: $ff
	or   h                                           ; $4f50: $b4
	inc  hl                                          ; $4f51: $23
	ld   de, $1111                                   ; $4f52: $11 $11 $11
	rla                                              ; $4f55: $17
	cp   l                                           ; $4f56: $bd
	rst  $38                                         ; $4f57: $ff
	rst  $38                                         ; $4f58: $ff
	db   $fd                                         ; $4f59: $fd
	cp   c                                           ; $4f5a: $b9
	ld   d, [hl]                                     ; $4f5b: $56
	add  [hl]                                        ; $4f5c: $86
	ld   hl, $1212                                   ; $4f5d: $21 $12 $12
	ld   h, a                                        ; $4f60: $67
	ld   a, b                                        ; $4f61: $78
	sbc  c                                           ; $4f62: $99
	cp   d                                           ; $4f63: $ba
	adc  c                                           ; $4f64: $89
	sbc  c                                           ; $4f65: $99
	sbc  c                                           ; $4f66: $99
	cp   e                                           ; $4f67: $bb
	cp   e                                           ; $4f68: $bb
	call z, $97ba                                    ; $4f69: $cc $ba $97
	ld   h, l                                        ; $4f6c: $65
	inc  sp                                          ; $4f6d: $33
	ld   [hl+], a                                    ; $4f6e: $22
	inc  hl                                          ; $4f6f: $23
	ld   b, a                                        ; $4f70: $47
	adc  d                                           ; $4f71: $8a
	cp   h                                           ; $4f72: $bc
	rst  $28                                         ; $4f73: $ef
	rst  $38                                         ; $4f74: $ff
	cp   $db                                         ; $4f75: $fe $db
	add  a                                           ; $4f77: $87
	ld   d, e                                        ; $4f78: $53
	ld   [hl+], a                                    ; $4f79: $22
	ld   [hl+], a                                    ; $4f7a: $22
	inc  sp                                          ; $4f7b: $33
	ld   b, [hl]                                     ; $4f7c: $46
	adc  e                                           ; $4f7d: $8b
	xor  h                                           ; $4f7e: $ac
	call z, $cbdd                                    ; $4f7f: $cc $dd $cb
	xor  c                                           ; $4f82: $a9
	add  a                                           ; $4f83: $87
	halt                                             ; $4f84: $76
	ld   d, l                                        ; $4f85: $55
	ld   d, l                                        ; $4f86: $55
	ld   h, a                                        ; $4f87: $67
	ld   a, b                                        ; $4f88: $78
	adc  b                                           ; $4f89: $88
	adc  b                                           ; $4f8a: $88
	adc  c                                           ; $4f8b: $89
	sbc  c                                           ; $4f8c: $99
	adc  b                                           ; $4f8d: $88
	sbc  c                                           ; $4f8e: $99
	sbc  b                                           ; $4f8f: $98
	sbc  c                                           ; $4f90: $99
	sbc  b                                           ; $4f91: $98
	sbc  b                                           ; $4f92: $98
	adc  b                                           ; $4f93: $88
	add  a                                           ; $4f94: $87
	ld   h, a                                        ; $4f95: $67
	ld   h, [hl]                                     ; $4f96: $66
	ld   h, [hl]                                     ; $4f97: $66
	ld   a, b                                        ; $4f98: $78
	sbc  b                                           ; $4f99: $98
	sbc  c                                           ; $4f9a: $99
	sbc  d                                           ; $4f9b: $9a
	cp   d                                           ; $4f9c: $ba
	sbc  d                                           ; $4f9d: $9a
	adc  b                                           ; $4f9e: $88
	ld   [hl], a                                     ; $4f9f: $77
	ld   h, [hl]                                     ; $4fa0: $66
	ld   h, [hl]                                     ; $4fa1: $66
	ld   h, a                                        ; $4fa2: $67
	adc  b                                           ; $4fa3: $88
	sbc  c                                           ; $4fa4: $99
	sbc  d                                           ; $4fa5: $9a
	sbc  c                                           ; $4fa6: $99
	xor  d                                           ; $4fa7: $aa
	sbc  c                                           ; $4fa8: $99
	ld   [hl], a                                     ; $4fa9: $77
	ld   [hl], a                                     ; $4faa: $77
	ld   h, [hl]                                     ; $4fab: $66
	ld   [hl], a                                     ; $4fac: $77
	adc  b                                           ; $4fad: $88
	adc  c                                           ; $4fae: $89
	adc  c                                           ; $4faf: $89
	sbc  d                                           ; $4fb0: $9a
	sbc  c                                           ; $4fb1: $99
	sbc  c                                           ; $4fb2: $99
	ld   [hl], a                                     ; $4fb3: $77
	ld   [hl], a                                     ; $4fb4: $77
	ld   [hl], a                                     ; $4fb5: $77
	ld   [hl], a                                     ; $4fb6: $77
	adc  c                                           ; $4fb7: $89
	sbc  c                                           ; $4fb8: $99
	adc  c                                           ; $4fb9: $89
	sbc  c                                           ; $4fba: $99
	sbc  c                                           ; $4fbb: $99
	sbc  b                                           ; $4fbc: $98
	add  a                                           ; $4fbd: $87
	ld   [hl], a                                     ; $4fbe: $77
	ld   [hl], a                                     ; $4fbf: $77
	ld   [hl], a                                     ; $4fc0: $77
	adc  b                                           ; $4fc1: $88
	sbc  b                                           ; $4fc2: $98
	adc  c                                           ; $4fc3: $89
	sbc  c                                           ; $4fc4: $99
	sbc  c                                           ; $4fc5: $99
	adc  c                                           ; $4fc6: $89
	add  a                                           ; $4fc7: $87
	ld   [hl], a                                     ; $4fc8: $77
	ld   [hl], a                                     ; $4fc9: $77
	ld   [hl], a                                     ; $4fca: $77
	adc  b                                           ; $4fcb: $88
	adc  c                                           ; $4fcc: $89
	sbc  b                                           ; $4fcd: $98
	adc  b                                           ; $4fce: $88
	adc  b                                           ; $4fcf: $88
	adc  c                                           ; $4fd0: $89
	adc  b                                           ; $4fd1: $88
	add  a                                           ; $4fd2: $87
	ld   [hl], a                                     ; $4fd3: $77
	ld   [hl], a                                     ; $4fd4: $77
	adc  b                                           ; $4fd5: $88
	adc  b                                           ; $4fd6: $88
	adc  c                                           ; $4fd7: $89
	sbc  c                                           ; $4fd8: $99
	sbc  c                                           ; $4fd9: $99
	sbc  b                                           ; $4fda: $98
	adc  b                                           ; $4fdb: $88
	adc  b                                           ; $4fdc: $88
	ld   [hl], a                                     ; $4fdd: $77
	ld   a, b                                        ; $4fde: $78
	adc  b                                           ; $4fdf: $88
	adc  b                                           ; $4fe0: $88
	adc  c                                           ; $4fe1: $89
	sbc  c                                           ; $4fe2: $99
	sbc  b                                           ; $4fe3: $98
	adc  b                                           ; $4fe4: $88
	adc  b                                           ; $4fe5: $88
	adc  b                                           ; $4fe6: $88
	ld   [hl], a                                     ; $4fe7: $77
	ld   a, b                                        ; $4fe8: $78
	adc  b                                           ; $4fe9: $88
	adc  b                                           ; $4fea: $88
	sbc  c                                           ; $4feb: $99
	sbc  c                                           ; $4fec: $99
	sbc  b                                           ; $4fed: $98
	adc  b                                           ; $4fee: $88
	adc  b                                           ; $4fef: $88
	add  a                                           ; $4ff0: $87
	ld   [hl], a                                     ; $4ff1: $77
	ld   [hl], a                                     ; $4ff2: $77
	adc  b                                           ; $4ff3: $88
	adc  b                                           ; $4ff4: $88
	adc  c                                           ; $4ff5: $89
	sbc  c                                           ; $4ff6: $99
	adc  c                                           ; $4ff7: $89
	sbc  b                                           ; $4ff8: $98
	adc  b                                           ; $4ff9: $88
	adc  b                                           ; $4ffa: $88
	ld   [hl], a                                     ; $4ffb: $77
	ld   [hl], a                                     ; $4ffc: $77
	ld   a, b                                        ; $4ffd: $78
	adc  b                                           ; $4ffe: $88
	adc  b                                           ; $4fff: $88
	adc  c                                           ; $5000: $89
	sbc  c                                           ; $5001: $99
	adc  b                                           ; $5002: $88
	adc  b                                           ; $5003: $88
	adc  b                                           ; $5004: $88
	add  a                                           ; $5005: $87
	ld   a, b                                        ; $5006: $78
	adc  b                                           ; $5007: $88
	adc  b                                           ; $5008: $88
	adc  b                                           ; $5009: $88
	adc  b                                           ; $500a: $88
	adc  b                                           ; $500b: $88
	adc  b                                           ; $500c: $88
	adc  b                                           ; $500d: $88
	adc  b                                           ; $500e: $88
	adc  b                                           ; $500f: $88
	adc  b                                           ; $5010: $88
	adc  b                                           ; $5011: $88
	adc  b                                           ; $5012: $88
	adc  b                                           ; $5013: $88
	adc  b                                           ; $5014: $88
	adc  b                                           ; $5015: $88
	adc  b                                           ; $5016: $88
	adc  b                                           ; $5017: $88
	adc  b                                           ; $5018: $88
	adc  b                                           ; $5019: $88
	adc  b                                           ; $501a: $88
	adc  b                                           ; $501b: $88
	adc  b                                           ; $501c: $88
	adc  b                                           ; $501d: $88
	adc  b                                           ; $501e: $88
	adc  b                                           ; $501f: $88
	adc  b                                           ; $5020: $88
	adc  b                                           ; $5021: $88
	adc  b                                           ; $5022: $88
	adc  b                                           ; $5023: $88
	adc  b                                           ; $5024: $88
	adc  b                                           ; $5025: $88
	adc  b                                           ; $5026: $88
	adc  b                                           ; $5027: $88
	adc  b                                           ; $5028: $88
	adc  b                                           ; $5029: $88
	adc  b                                           ; $502a: $88
	adc  b                                           ; $502b: $88
	adc  b                                           ; $502c: $88
	adc  b                                           ; $502d: $88
	adc  b                                           ; $502e: $88
	adc  b                                           ; $502f: $88
	adc  b                                           ; $5030: $88
	adc  b                                           ; $5031: $88
	adc  b                                           ; $5032: $88
	adc  b                                           ; $5033: $88
	adc  b                                           ; $5034: $88
	adc  b                                           ; $5035: $88
	adc  b                                           ; $5036: $88
	adc  b                                           ; $5037: $88
	adc  b                                           ; $5038: $88
	adc  b                                           ; $5039: $88
	adc  b                                           ; $503a: $88
	adc  b                                           ; $503b: $88
	adc  b                                           ; $503c: $88
	adc  b                                           ; $503d: $88
	adc  b                                           ; $503e: $88
	adc  b                                           ; $503f: $88
	adc  b                                           ; $5040: $88
	adc  b                                           ; $5041: $88
	adc  b                                           ; $5042: $88
	adc  b                                           ; $5043: $88
	adc  b                                           ; $5044: $88
	adc  b                                           ; $5045: $88
	adc  b                                           ; $5046: $88
	adc  b                                           ; $5047: $88
	adc  b                                           ; $5048: $88
	adc  b                                           ; $5049: $88
	adc  b                                           ; $504a: $88
	adc  b                                           ; $504b: $88
	adc  b                                           ; $504c: $88
	adc  b                                           ; $504d: $88
	adc  b                                           ; $504e: $88
	adc  b                                           ; $504f: $88
	adc  b                                           ; $5050: $88
	adc  b                                           ; $5051: $88
	adc  b                                           ; $5052: $88
	adc  b                                           ; $5053: $88
	adc  b                                           ; $5054: $88
	adc  b                                           ; $5055: $88
	adc  b                                           ; $5056: $88
	adc  b                                           ; $5057: $88
	adc  b                                           ; $5058: $88
	adc  b                                           ; $5059: $88
	adc  b                                           ; $505a: $88
	adc  b                                           ; $505b: $88
	adc  b                                           ; $505c: $88
	adc  b                                           ; $505d: $88
	adc  b                                           ; $505e: $88
	adc  b                                           ; $505f: $88
	adc  b                                           ; $5060: $88
	adc  b                                           ; $5061: $88
	adc  b                                           ; $5062: $88
	adc  b                                           ; $5063: $88
	adc  b                                           ; $5064: $88
	adc  b                                           ; $5065: $88
	adc  b                                           ; $5066: $88
	adc  b                                           ; $5067: $88
	adc  b                                           ; $5068: $88
	adc  b                                           ; $5069: $88
	adc  b                                           ; $506a: $88
	adc  b                                           ; $506b: $88
	adc  b                                           ; $506c: $88
	adc  b                                           ; $506d: $88
	adc  b                                           ; $506e: $88
	adc  b                                           ; $506f: $88
	adc  b                                           ; $5070: $88
	adc  b                                           ; $5071: $88
	adc  b                                           ; $5072: $88
	adc  b                                           ; $5073: $88
	adc  b                                           ; $5074: $88
	adc  b                                           ; $5075: $88
	adc  b                                           ; $5076: $88
	adc  b                                           ; $5077: $88
	adc  b                                           ; $5078: $88
	adc  b                                           ; $5079: $88
	adc  b                                           ; $507a: $88
	adc  b                                           ; $507b: $88
	adc  b                                           ; $507c: $88
	adc  b                                           ; $507d: $88
	adc  b                                           ; $507e: $88
	adc  b                                           ; $507f: $88
	adc  b                                           ; $5080: $88
	adc  b                                           ; $5081: $88
	adc  b                                           ; $5082: $88
	adc  b                                           ; $5083: $88
	adc  b                                           ; $5084: $88
	adc  b                                           ; $5085: $88
	adc  b                                           ; $5086: $88
	adc  b                                           ; $5087: $88
	adc  b                                           ; $5088: $88
	adc  b                                           ; $5089: $88
	adc  b                                           ; $508a: $88
	adc  b                                           ; $508b: $88
	adc  b                                           ; $508c: $88
	adc  b                                           ; $508d: $88
	adc  b                                           ; $508e: $88
	adc  b                                           ; $508f: $88
	adc  b                                           ; $5090: $88
	adc  b                                           ; $5091: $88
	adc  b                                           ; $5092: $88
	adc  b                                           ; $5093: $88
	adc  b                                           ; $5094: $88
	adc  b                                           ; $5095: $88
	adc  b                                           ; $5096: $88
	adc  b                                           ; $5097: $88
	adc  b                                           ; $5098: $88
	adc  b                                           ; $5099: $88
	adc  b                                           ; $509a: $88
	adc  b                                           ; $509b: $88
	adc  b                                           ; $509c: $88
	adc  b                                           ; $509d: $88
	adc  b                                           ; $509e: $88
	adc  b                                           ; $509f: $88
	adc  b                                           ; $50a0: $88
	adc  b                                           ; $50a1: $88
	adc  b                                           ; $50a2: $88
	adc  b                                           ; $50a3: $88
	adc  b                                           ; $50a4: $88
	adc  b                                           ; $50a5: $88
	adc  b                                           ; $50a6: $88
	adc  b                                           ; $50a7: $88
	adc  b                                           ; $50a8: $88
	adc  b                                           ; $50a9: $88
	adc  b                                           ; $50aa: $88
	adc  b                                           ; $50ab: $88
	adc  b                                           ; $50ac: $88
	adc  b                                           ; $50ad: $88
	adc  b                                           ; $50ae: $88
	adc  b                                           ; $50af: $88
	adc  b                                           ; $50b0: $88
	adc  b                                           ; $50b1: $88
	adc  b                                           ; $50b2: $88
	adc  b                                           ; $50b3: $88
	adc  b                                           ; $50b4: $88
	adc  b                                           ; $50b5: $88
	adc  b                                           ; $50b6: $88
	adc  b                                           ; $50b7: $88
	adc  b                                           ; $50b8: $88
	adc  b                                           ; $50b9: $88
	adc  b                                           ; $50ba: $88
	adc  b                                           ; $50bb: $88
	adc  b                                           ; $50bc: $88
	adc  b                                           ; $50bd: $88
	adc  b                                           ; $50be: $88
	adc  b                                           ; $50bf: $88
	adc  b                                           ; $50c0: $88
	adc  b                                           ; $50c1: $88
	adc  b                                           ; $50c2: $88
	adc  b                                           ; $50c3: $88
	adc  b                                           ; $50c4: $88
	adc  b                                           ; $50c5: $88
	adc  b                                           ; $50c6: $88
	adc  b                                           ; $50c7: $88
	adc  b                                           ; $50c8: $88
	adc  b                                           ; $50c9: $88
	adc  b                                           ; $50ca: $88
	adc  b                                           ; $50cb: $88
	adc  b                                           ; $50cc: $88
	adc  b                                           ; $50cd: $88
	adc  b                                           ; $50ce: $88
	adc  b                                           ; $50cf: $88
	adc  b                                           ; $50d0: $88
	adc  b                                           ; $50d1: $88
	adc  b                                           ; $50d2: $88
	adc  b                                           ; $50d3: $88
	adc  b                                           ; $50d4: $88
	adc  b                                           ; $50d5: $88
	adc  b                                           ; $50d6: $88
	adc  b                                           ; $50d7: $88
	adc  b                                           ; $50d8: $88
	adc  b                                           ; $50d9: $88
	adc  b                                           ; $50da: $88
	adc  b                                           ; $50db: $88
	adc  b                                           ; $50dc: $88
	adc  b                                           ; $50dd: $88
	adc  b                                           ; $50de: $88
	adc  b                                           ; $50df: $88
	adc  b                                           ; $50e0: $88
	adc  b                                           ; $50e1: $88
	adc  b                                           ; $50e2: $88
	adc  b                                           ; $50e3: $88
	adc  b                                           ; $50e4: $88
	adc  b                                           ; $50e5: $88
	adc  b                                           ; $50e6: $88
	adc  b                                           ; $50e7: $88
	adc  b                                           ; $50e8: $88
	adc  b                                           ; $50e9: $88
	adc  b                                           ; $50ea: $88
	adc  b                                           ; $50eb: $88
	adc  b                                           ; $50ec: $88
	adc  b                                           ; $50ed: $88
	adc  b                                           ; $50ee: $88
	adc  b                                           ; $50ef: $88
	adc  b                                           ; $50f0: $88
	adc  b                                           ; $50f1: $88
	adc  b                                           ; $50f2: $88
	adc  b                                           ; $50f3: $88
	adc  b                                           ; $50f4: $88
	adc  b                                           ; $50f5: $88
	adc  b                                           ; $50f6: $88
	adc  b                                           ; $50f7: $88
	adc  b                                           ; $50f8: $88
	adc  b                                           ; $50f9: $88
	adc  b                                           ; $50fa: $88
	adc  b                                           ; $50fb: $88
	adc  b                                           ; $50fc: $88
	adc  b                                           ; $50fd: $88
	adc  b                                           ; $50fe: $88
	adc  b                                           ; $50ff: $88
	adc  b                                           ; $5100: $88
	adc  b                                           ; $5101: $88
	adc  b                                           ; $5102: $88
	adc  b                                           ; $5103: $88
	adc  b                                           ; $5104: $88
	adc  b                                           ; $5105: $88
	adc  b                                           ; $5106: $88
	adc  b                                           ; $5107: $88
	adc  b                                           ; $5108: $88
	adc  b                                           ; $5109: $88
	adc  b                                           ; $510a: $88
	adc  b                                           ; $510b: $88
	adc  b                                           ; $510c: $88
	adc  b                                           ; $510d: $88
	adc  b                                           ; $510e: $88
	adc  b                                           ; $510f: $88
	adc  b                                           ; $5110: $88
	adc  b                                           ; $5111: $88
	adc  b                                           ; $5112: $88
	adc  b                                           ; $5113: $88
	adc  b                                           ; $5114: $88
	adc  b                                           ; $5115: $88
	adc  b                                           ; $5116: $88
	adc  b                                           ; $5117: $88
	adc  b                                           ; $5118: $88
	adc  b                                           ; $5119: $88
	adc  b                                           ; $511a: $88
	adc  b                                           ; $511b: $88
	adc  b                                           ; $511c: $88
	adc  b                                           ; $511d: $88
	adc  b                                           ; $511e: $88
	adc  b                                           ; $511f: $88
	adc  b                                           ; $5120: $88
	adc  b                                           ; $5121: $88
	adc  b                                           ; $5122: $88
	adc  b                                           ; $5123: $88
	adc  b                                           ; $5124: $88
	adc  b                                           ; $5125: $88
	adc  b                                           ; $5126: $88
	adc  b                                           ; $5127: $88
	adc  b                                           ; $5128: $88
	adc  b                                           ; $5129: $88
	adc  b                                           ; $512a: $88
	adc  b                                           ; $512b: $88
	adc  b                                           ; $512c: $88
	adc  b                                           ; $512d: $88
	adc  b                                           ; $512e: $88
	adc  b                                           ; $512f: $88
	adc  b                                           ; $5130: $88
	adc  b                                           ; $5131: $88
	adc  b                                           ; $5132: $88
	adc  b                                           ; $5133: $88
	adc  b                                           ; $5134: $88
	adc  b                                           ; $5135: $88
	adc  b                                           ; $5136: $88
	adc  b                                           ; $5137: $88
	adc  b                                           ; $5138: $88
	adc  b                                           ; $5139: $88
	adc  b                                           ; $513a: $88
	adc  b                                           ; $513b: $88
	adc  b                                           ; $513c: $88
	adc  b                                           ; $513d: $88
	adc  b                                           ; $513e: $88
	adc  b                                           ; $513f: $88
	adc  b                                           ; $5140: $88
	adc  b                                           ; $5141: $88
	adc  b                                           ; $5142: $88
	adc  b                                           ; $5143: $88
	adc  b                                           ; $5144: $88
	adc  b                                           ; $5145: $88
	adc  b                                           ; $5146: $88
	adc  b                                           ; $5147: $88
	adc  b                                           ; $5148: $88
	adc  b                                           ; $5149: $88
	adc  b                                           ; $514a: $88
	adc  b                                           ; $514b: $88
	adc  b                                           ; $514c: $88
	adc  b                                           ; $514d: $88
	adc  b                                           ; $514e: $88
	adc  b                                           ; $514f: $88
	adc  b                                           ; $5150: $88
	adc  b                                           ; $5151: $88
	adc  b                                           ; $5152: $88
	adc  b                                           ; $5153: $88
	adc  b                                           ; $5154: $88
	adc  b                                           ; $5155: $88
	adc  b                                           ; $5156: $88
	adc  b                                           ; $5157: $88
	adc  b                                           ; $5158: $88
	adc  b                                           ; $5159: $88
	adc  b                                           ; $515a: $88
	adc  b                                           ; $515b: $88
	adc  b                                           ; $515c: $88
	adc  b                                           ; $515d: $88
	adc  b                                           ; $515e: $88
	adc  b                                           ; $515f: $88
	adc  b                                           ; $5160: $88
	adc  b                                           ; $5161: $88
	adc  b                                           ; $5162: $88
	adc  b                                           ; $5163: $88
	adc  b                                           ; $5164: $88
	adc  b                                           ; $5165: $88
	adc  b                                           ; $5166: $88
	adc  b                                           ; $5167: $88
	adc  b                                           ; $5168: $88
	adc  b                                           ; $5169: $88
	adc  b                                           ; $516a: $88
	adc  b                                           ; $516b: $88
	adc  b                                           ; $516c: $88
	adc  b                                           ; $516d: $88
	adc  b                                           ; $516e: $88
	adc  b                                           ; $516f: $88
	adc  b                                           ; $5170: $88
	adc  b                                           ; $5171: $88
	adc  b                                           ; $5172: $88
	adc  b                                           ; $5173: $88
	adc  b                                           ; $5174: $88
	adc  b                                           ; $5175: $88
	adc  b                                           ; $5176: $88
	adc  b                                           ; $5177: $88
	adc  b                                           ; $5178: $88
	adc  b                                           ; $5179: $88
	adc  b                                           ; $517a: $88
	adc  b                                           ; $517b: $88
	adc  b                                           ; $517c: $88
	adc  b                                           ; $517d: $88
	adc  b                                           ; $517e: $88
	adc  b                                           ; $517f: $88
	adc  b                                           ; $5180: $88
	adc  b                                           ; $5181: $88
	adc  b                                           ; $5182: $88
	adc  b                                           ; $5183: $88
	adc  b                                           ; $5184: $88
	adc  b                                           ; $5185: $88
	adc  b                                           ; $5186: $88
	adc  b                                           ; $5187: $88
	adc  b                                           ; $5188: $88
	adc  b                                           ; $5189: $88
	adc  b                                           ; $518a: $88
	adc  b                                           ; $518b: $88
	adc  b                                           ; $518c: $88
	adc  b                                           ; $518d: $88
	adc  b                                           ; $518e: $88
	adc  b                                           ; $518f: $88
	adc  b                                           ; $5190: $88
	adc  b                                           ; $5191: $88
	adc  b                                           ; $5192: $88
	adc  b                                           ; $5193: $88
	adc  b                                           ; $5194: $88
	adc  b                                           ; $5195: $88
	adc  b                                           ; $5196: $88
	adc  b                                           ; $5197: $88
	adc  b                                           ; $5198: $88
	adc  b                                           ; $5199: $88
	adc  b                                           ; $519a: $88
	adc  b                                           ; $519b: $88
	adc  b                                           ; $519c: $88
	adc  b                                           ; $519d: $88
	adc  b                                           ; $519e: $88
	adc  b                                           ; $519f: $88
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	adc  b                                           ; $51a3: $88
	adc  b                                           ; $51a4: $88
	adc  b                                           ; $51a5: $88
	adc  b                                           ; $51a6: $88
	adc  b                                           ; $51a7: $88
	adc  b                                           ; $51a8: $88
	adc  b                                           ; $51a9: $88
	adc  b                                           ; $51aa: $88
	adc  b                                           ; $51ab: $88
	adc  b                                           ; $51ac: $88
	adc  b                                           ; $51ad: $88
	adc  b                                           ; $51ae: $88
	adc  b                                           ; $51af: $88
	adc  b                                           ; $51b0: $88
	adc  b                                           ; $51b1: $88
	adc  b                                           ; $51b2: $88
	adc  b                                           ; $51b3: $88
	adc  b                                           ; $51b4: $88
	adc  b                                           ; $51b5: $88
	adc  b                                           ; $51b6: $88
	adc  b                                           ; $51b7: $88
	adc  b                                           ; $51b8: $88
	adc  b                                           ; $51b9: $88
	adc  b                                           ; $51ba: $88
	adc  b                                           ; $51bb: $88
	adc  b                                           ; $51bc: $88
	adc  b                                           ; $51bd: $88
	adc  b                                           ; $51be: $88
	adc  b                                           ; $51bf: $88
	adc  b                                           ; $51c0: $88
	adc  b                                           ; $51c1: $88
	adc  b                                           ; $51c2: $88
	adc  b                                           ; $51c3: $88
	adc  b                                           ; $51c4: $88
	adc  b                                           ; $51c5: $88
	adc  b                                           ; $51c6: $88
	adc  b                                           ; $51c7: $88
	adc  b                                           ; $51c8: $88
	adc  b                                           ; $51c9: $88
	adc  b                                           ; $51ca: $88
	adc  b                                           ; $51cb: $88
	adc  b                                           ; $51cc: $88
	adc  b                                           ; $51cd: $88
	adc  b                                           ; $51ce: $88
	adc  b                                           ; $51cf: $88
	adc  b                                           ; $51d0: $88
	adc  b                                           ; $51d1: $88
	adc  b                                           ; $51d2: $88
	adc  b                                           ; $51d3: $88
	adc  b                                           ; $51d4: $88
	adc  b                                           ; $51d5: $88
	adc  b                                           ; $51d6: $88
	adc  b                                           ; $51d7: $88
	adc  b                                           ; $51d8: $88
	adc  b                                           ; $51d9: $88
	adc  b                                           ; $51da: $88
	adc  b                                           ; $51db: $88
	adc  b                                           ; $51dc: $88
	adc  b                                           ; $51dd: $88
	adc  b                                           ; $51de: $88
	adc  b                                           ; $51df: $88
	adc  b                                           ; $51e0: $88
	adc  b                                           ; $51e1: $88
	adc  b                                           ; $51e2: $88
	adc  b                                           ; $51e3: $88
	adc  b                                           ; $51e4: $88
	adc  b                                           ; $51e5: $88
	adc  b                                           ; $51e6: $88
	adc  b                                           ; $51e7: $88
	adc  b                                           ; $51e8: $88
	adc  b                                           ; $51e9: $88
	adc  b                                           ; $51ea: $88
	adc  b                                           ; $51eb: $88
	adc  b                                           ; $51ec: $88
	adc  b                                           ; $51ed: $88
	adc  b                                           ; $51ee: $88
	adc  b                                           ; $51ef: $88
	adc  b                                           ; $51f0: $88
	adc  b                                           ; $51f1: $88
	adc  c                                           ; $51f2: $89
	sbc  c                                           ; $51f3: $99
	ld   a, b                                        ; $51f4: $78
	sbc  c                                           ; $51f5: $99
	add  a                                           ; $51f6: $87
	xor  d                                           ; $51f7: $aa
	ld   [hl], a                                     ; $51f8: $77
	xor  e                                           ; $51f9: $ab
	ld   a, b                                        ; $51fa: $78
	and  a                                           ; $51fb: $a7
	ld   a, c                                        ; $51fc: $79
	xor  c                                           ; $51fd: $a9
	ld   h, a                                        ; $51fe: $67
	cp   c                                           ; $51ff: $b9
	adc  l                                           ; $5200: $8d
	or   a                                           ; $5201: $b7
	ld   l, b                                        ; $5202: $68
	add  l                                           ; $5203: $85
	jr   c, @+$76                                    ; $5204: $38 $74

	ld   e, c                                        ; $5206: $59
	add  l                                           ; $5207: $85
	adc  e                                           ; $5208: $8b
	and  [hl]                                        ; $5209: $a6
	adc  c                                           ; $520a: $89
	halt                                             ; $520b: $76
	adc  d                                           ; $520c: $8a
	ld   [hl], a                                     ; $520d: $77
	ld   [hl], l                                     ; $520e: $75
	dec  [hl]                                        ; $520f: $35
	ld   d, l                                        ; $5210: $55
	ld   d, l                                        ; $5211: $55
	adc  c                                           ; $5212: $89
	xor  h                                           ; $5213: $ac

jr_0cc_5214:
	db   $db                                         ; $5214: $db
	set  1, e                                        ; $5215: $cb $cb
	ld   h, d                                        ; $5217: $62
	ld   de, $1111                                   ; $5218: $11 $11 $11
	ld   b, [hl]                                     ; $521b: $46
	ld   a, e                                        ; $521c: $7b
	rst  $38                                         ; $521d: $ff
	rst  $38                                         ; $521e: $ff
	rst  $38                                         ; $521f: $ff
	ei                                               ; $5220: $fb
	ld   sp, $1111                                   ; $5221: $31 $11 $11
	ld   de, $bf68                                   ; $5224: $11 $68 $bf
	rst  $38                                         ; $5227: $ff
	rst  $38                                         ; $5228: $ff
	rst  $38                                         ; $5229: $ff
	rst  $38                                         ; $522a: $ff
	ld   d, c                                        ; $522b: $51
	ld   de, $1111                                   ; $522c: $11 $11 $11
	sbc  a                                           ; $522f: $9f
	rst  $38                                         ; $5230: $ff
	rst  $38                                         ; $5231: $ff
	rst  $38                                         ; $5232: $ff
	call c, $11ff                                    ; $5233: $dc $ff $11
	ld   de, $1111                                   ; $5236: $11 $11 $11
	rst  $38                                         ; $5239: $ff
	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	rst  $38                                         ; $523c: $ff
	dec  h                                           ; $523d: $25
	rst  $38                                         ; $523e: $ff
	ld   de, $1111                                   ; $523f: $11 $11 $11
	ld   a, [de]                                     ; $5242: $1a
	rst  $38                                         ; $5243: $ff
	rst  $38                                         ; $5244: $ff
	rst  $38                                         ; $5245: $ff
	ld   sp, hl                                      ; $5246: $f9
	inc  de                                          ; $5247: $13
	jp   c, $1111                                    ; $5248: $da $11 $11

	ld   a, [de]                                     ; $524b: $1a
	cp   a                                           ; $524c: $bf
	rst  $38                                         ; $524d: $ff
	rst  $38                                         ; $524e: $ff
	cp   $e2                                         ; $524f: $fe $e2
	jr   jr_0cc_5214                                 ; $5251: $18 $c1

	ld   de, rAUD1LEN                                   ; $5253: $11 $11 $ff
	rst  $28                                         ; $5256: $ef
	rst  $38                                         ; $5257: $ff
	rst  $38                                         ; $5258: $ff
	sbc  e                                           ; $5259: $9b
	add  d                                           ; $525a: $82
	ld   a, e                                        ; $525b: $7b
	ld   de, $1f11                                   ; $525c: $11 $11 $1f
	rst  $38                                         ; $525f: $ff
	rst  $38                                         ; $5260: $ff
	rst  $38                                         ; $5261: $ff
	or   $88                                         ; $5262: $f6 $88
	ld   a, [hl-]                                    ; $5264: $3a
	pop  bc                                          ; $5265: $c1
	ld   de, rAUD1LEN                                   ; $5266: $11 $11 $ff
	rst  $38                                         ; $5269: $ff
	rst  $38                                         ; $526a: $ff
	cp   $16                                         ; $526b: $fe $16
	and  a                                           ; $526d: $a7
	adc  $11                                         ; $526e: $ce $11
	ld   de, $ff1f                                   ; $5270: $11 $1f $ff
	rst  $38                                         ; $5273: $ff
	rst  $38                                         ; $5274: $ff
	pop  hl                                          ; $5275: $e1
	ld   e, e                                        ; $5276: $5b
	ld   a, a                                        ; $5277: $7f
	pop  af                                          ; $5278: $f1
	ld   de, rAUD1LEN                                   ; $5279: $11 $11 $ff
	rst  $38                                         ; $527c: $ff
	rst  $38                                         ; $527d: $ff
	or   $13                                         ; $527e: $f6 $13
	call $11ff                                       ; $5280: $cd $ff $11
	ld   de, $ff1f                                   ; $5283: $11 $1f $ff
	rst  $38                                         ; $5286: $ff
	rst  $38                                         ; $5287: $ff
	ld   b, c                                        ; $5288: $41
	inc  l                                           ; $5289: $2c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $528a: $cf
	pop  af                                          ; $528b: $f1
	ld   de, rAUD1HIGH                                   ; $528c: $11 $14 $ff
	rst  $38                                         ; $528f: $ff
	rst  $38                                         ; $5290: $ff
	pop  af                                          ; $5291: $f1
	ld   [de], a                                     ; $5292: $12
	cp   a                                           ; $5293: $bf
	rst  $38                                         ; $5294: $ff
	ld   sp, $1f11                                   ; $5295: $31 $11 $1f
	rst  $38                                         ; $5298: $ff
	rst  $38                                         ; $5299: $ff
	rst  $38                                         ; $529a: $ff
	ld   de, $cf1a                                   ; $529b: $11 $1a $cf
	di                                               ; $529e: $f3
	ld   de, $ff16                                   ; $529f: $11 $16 $ff
	rst  $38                                         ; $52a2: $ff
	rst  $38                                         ; $52a3: $ff
	pop  af                                          ; $52a4: $f1
	ld   de, $ffef                                   ; $52a5: $11 $ef $ff

Jump_0cc_52a8:
	ld   sp, $2f11                                   ; $52a8: $31 $11 $2f
	rst  $38                                         ; $52ab: $ff
	rst  $38                                         ; $52ac: $ff
	cp   $11                                         ; $52ad: $fe $11
	dec  de                                          ; $52af: $1b
	rst  $38                                         ; $52b0: $ff
	db   $f4                                         ; $52b1: $f4
	ld   de, $ff15                                   ; $52b2: $11 $15 $ff
	rst  $38                                         ; $52b5: $ff
	rst  $38                                         ; $52b6: $ff
	or   c                                           ; $52b7: $b1
	ld   de, $ffcf                                   ; $52b8: $11 $cf $ff
	ld   sp, $6f11                                   ; $52bb: $31 $11 $6f
	rst  $38                                         ; $52be: $ff
	rst  $38                                         ; $52bf: $ff
	ld   hl, sp+$11                                  ; $52c0: $f8 $11
	inc  e                                           ; $52c2: $1c
	rst  $38                                         ; $52c3: $ff
	ldh  a, [c]                                      ; $52c4: $f2
	ld   de, $ff17                                   ; $52c5: $11 $17 $ff
	rst  $38                                         ; $52c8: $ff
	rst  $38                                         ; $52c9: $ff
	ld   [hl], c                                     ; $52ca: $71
	ld   de, $ffef                                   ; $52cb: $11 $ef $ff
	ld   de, $bf11                                   ; $52ce: $11 $11 $bf
	rst  $38                                         ; $52d1: $ff
	rst  $38                                         ; $52d2: $ff
	or   $11                                         ; $52d3: $f6 $11
	rra                                              ; $52d5: $1f
	rst  $38                                         ; $52d6: $ff
	pop  af                                          ; $52d7: $f1
	ld   de, $ff1a                                   ; $52d8: $11 $1a $ff
	rst  $38                                         ; $52db: $ff
	rst  $38                                         ; $52dc: $ff
	ld   de, rAUD1LEN                                   ; $52dd: $11 $11 $ff
	rst  $38                                         ; $52e0: $ff
	ld   de, $ef11                                   ; $52e1: $11 $11 $ef
	rst  $38                                         ; $52e4: $ff
	rst  $38                                         ; $52e5: $ff
	ldh  a, [c]                                      ; $52e6: $f2
	ld   de, $ff3f                                   ; $52e7: $11 $3f $ff
	pop  af                                          ; $52ea: $f1
	ld   de, $ff1e                                   ; $52eb: $11 $1e $ff
	rst  $38                                         ; $52ee: $ff
	rst  $38                                         ; $52ef: $ff
	ld   de, rAUD1ENV                                   ; $52f0: $11 $12 $ff
	rst  $38                                         ; $52f3: $ff
	ld   de, rAUD1LEN                                   ; $52f4: $11 $11 $ff
	rst  $38                                         ; $52f7: $ff
	rst  $38                                         ; $52f8: $ff
	pop  af                                          ; $52f9: $f1
	ld   de, $ff5f                                   ; $52fa: $11 $5f $ff
	pop  af                                          ; $52fd: $f1
	ld   de, $ff1f                                   ; $52fe: $11 $1f $ff
	rst  $38                                         ; $5301: $ff
	rst  $38                                         ; $5302: $ff
	ld   de, rAUD1HIGH                                   ; $5303: $11 $14 $ff
	rst  $38                                         ; $5306: $ff
	ld   de, rAUD1LEN                                   ; $5307: $11 $11 $ff
	rst  $38                                         ; $530a: $ff
	rst  $38                                         ; $530b: $ff
	pop  af                                          ; $530c: $f1
	ld   de, $ff7f                                   ; $530d: $11 $7f $ff
	pop  af                                          ; $5310: $f1
	ld   de, $ff1f                                   ; $5311: $11 $1f $ff
	rst  $38                                         ; $5314: $ff
	rst  $38                                         ; $5315: $ff
	ld   de, $ff15                                   ; $5316: $11 $15 $ff
	rst  $38                                         ; $5319: $ff
	ld   de, rAUD1LEN                                   ; $531a: $11 $11 $ff
	rst  $38                                         ; $531d: $ff
	rst  $38                                         ; $531e: $ff
	pop  af                                          ; $531f: $f1
	ld   de, $ff4f                                   ; $5320: $11 $4f $ff
	pop  af                                          ; $5323: $f1
	ld   de, $ff1e                                   ; $5324: $11 $1e $ff
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	ld   de, rAUD1LOW                                   ; $5329: $11 $13 $ff
	rst  $38                                         ; $532c: $ff
	ld   de, $cf11                                   ; $532d: $11 $11 $cf
	rst  $38                                         ; $5330: $ff
	rst  $38                                         ; $5331: $ff
	pop  af                                          ; $5332: $f1
	ld   de, $ff1f                                   ; $5333: $11 $1f $ff
	pop  af                                          ; $5336: $f1
	ld   de, $ff17                                   ; $5337: $11 $17 $ff
	rst  $38                                         ; $533a: $ff
	rst  $38                                         ; $533b: $ff
	ld   hl, rAUD1LEN                                   ; $533c: $21 $11 $ff
	rst  $38                                         ; $533f: $ff
	ld   d, c                                        ; $5340: $51
	ld   de, $ff5f                                   ; $5341: $11 $5f $ff
	rst  $38                                         ; $5344: $ff
	rst  $30                                         ; $5345: $f7
	ld   de, $ff1f                                   ; $5346: $11 $1f $ff
	ld   sp, hl                                      ; $5349: $f9
	ld   de, rAUD1LEN                                   ; $534a: $11 $11 $ff
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	and  c                                           ; $534f: $a1
	ld   de, $ffdf                                   ; $5350: $11 $df $ff
	pop  de                                          ; $5353: $d1
	ld   de, $ff1f                                   ; $5354: $11 $1f $ff
	rst  $38                                         ; $5357: $ff
	cp   $11                                         ; $5358: $fe $11
	add  hl, de                                      ; $535a: $19
	rst  $38                                         ; $535b: $ff
	rst  $38                                         ; $535c: $ff
	ld   de, rAUD1LEN                                   ; $535d: $11 $11 $ff
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	pop  af                                          ; $5362: $f1
	ld   de, $ff7f                                   ; $5363: $11 $7f $ff
	pop  af                                          ; $5366: $f1
	ld   de, $ff1e                                   ; $5367: $11 $1e $ff
	rst  $38                                         ; $536a: $ff
	rst  $38                                         ; $536b: $ff
	ld   hl, $ff15                                   ; $536c: $21 $15 $ff
	rst  $38                                         ; $536f: $ff
	ld   de, $9f11                                   ; $5370: $11 $11 $9f
	rst  $38                                         ; $5373: $ff
	rst  $38                                         ; $5374: $ff
	push af                                          ; $5375: $f5
	ld   de, $ff1f                                   ; $5376: $11 $1f $ff
	pop  af                                          ; $5379: $f1
	ld   de, $ff18                                   ; $537a: $11 $18 $ff
	rst  $38                                         ; $537d: $ff
	rst  $38                                         ; $537e: $ff
	sub  c                                           ; $537f: $91
	ld   de, $ffff                                   ; $5380: $11 $ff $ff
	ld   de, $5f11                                   ; $5383: $11 $11 $5f
	rst  $38                                         ; $5386: $ff
	rst  $38                                         ; $5387: $ff
	ld   a, [$1f11]                                  ; $5388: $fa $11 $1f
	rst  $38                                         ; $538b: $ff
	pop  af                                          ; $538c: $f1
	ld   de, rAUD1LOW                                   ; $538d: $11 $13 $ff
	rst  $38                                         ; $5390: $ff
	rst  $38                                         ; $5391: $ff
	or   c                                           ; $5392: $b1
	ld   de, $ffff                                   ; $5393: $11 $ff $ff
	ld   de, $1f11                                   ; $5396: $11 $11 $1f

Jump_0cc_5399:
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	cp   $11                                         ; $539b: $fe $11
	rra                                              ; $539d: $1f
	rst  $38                                         ; $539e: $ff
	pop  af                                          ; $539f: $f1
	ld   de, rAUD1HIGH                                   ; $53a0: $11 $14 $ff
	rst  $38                                         ; $53a3: $ff
	rst  $38                                         ; $53a4: $ff
	pop  af                                          ; $53a5: $f1
	ld   de, $ffff                                   ; $53a6: $11 $ff $ff
	ld   de, $3f11                                   ; $53a9: $11 $11 $3f
	rst  $38                                         ; $53ac: $ff
	rst  $38                                         ; $53ad: $ff
	rst  $38                                         ; $53ae: $ff
	ld   de, $ff1f                                   ; $53af: $11 $1f $ff
	pop  af                                          ; $53b2: $f1
	ld   de, $ff15                                   ; $53b3: $11 $15 $ff
	rst  $38                                         ; $53b6: $ff
	rst  $38                                         ; $53b7: $ff
	pop  af                                          ; $53b8: $f1
	ld   [de], a                                     ; $53b9: $12
	rst  $38                                         ; $53ba: $ff
	rst  $38                                         ; $53bb: $ff
	ld   de, $6f11                                   ; $53bc: $11 $11 $6f
	rst  $38                                         ; $53bf: $ff
	rst  $38                                         ; $53c0: $ff
	rst  $38                                         ; $53c1: $ff
	ld   de, $ff3f                                   ; $53c2: $11 $3f $ff
	pop  af                                          ; $53c5: $f1
	ld   de, $ff19                                   ; $53c6: $11 $19 $ff
	rst  $38                                         ; $53c9: $ff
	rst  $38                                         ; $53ca: $ff
	or   c                                           ; $53cb: $b1
	inc  d                                           ; $53cc: $14
	rst  $38                                         ; $53cd: $ff
	ei                                               ; $53ce: $fb
	ld   de, $8f11                                   ; $53cf: $11 $11 $8f
	rst  $38                                         ; $53d2: $ff
	rst  $38                                         ; $53d3: $ff
	db   $fd                                         ; $53d4: $fd
	ld   de, $ff4f                                   ; $53d5: $11 $4f $ff
	sub  c                                           ; $53d8: $91
	ld   de, $ff1b                                   ; $53d9: $11 $1b $ff
	rst  $38                                         ; $53dc: $ff
	rst  $38                                         ; $53dd: $ff
	pop  de                                          ; $53de: $d1
	jr   @+$01                                       ; $53df: $18 $ff

	or   $11                                         ; $53e1: $f6 $11
	ld   de, $ffcf                                   ; $53e3: $11 $cf $ff
	rst  $38                                         ; $53e6: $ff
	db   $fc                                         ; $53e7: $fc
	ld   de, $ffaf                                   ; $53e8: $11 $af $ff
	ld   hl, $1b11                                   ; $53eb: $21 $11 $1b
	rst  $38                                         ; $53ee: $ff
	rst  $38                                         ; $53ef: $ff
	rst  $38                                         ; $53f0: $ff
	pop  de                                          ; $53f1: $d1
	ld   a, [de]                                     ; $53f2: $1a
	rst  $38                                         ; $53f3: $ff
	pop  af                                          ; $53f4: $f1
	ld   de, $cf11                                   ; $53f5: $11 $11 $cf
	rst  $38                                         ; $53f8: $ff
	rst  $38                                         ; $53f9: $ff
	ei                                               ; $53fa: $fb
	ld   de, $ffcf                                   ; $53fb: $11 $cf $ff
	ld   de, $1c11                                   ; $53fe: $11 $11 $1c
	rst  $38                                         ; $5401: $ff
	rst  $38                                         ; $5402: $ff
	rst  $38                                         ; $5403: $ff
	pop  bc                                          ; $5404: $c1
	dec  de                                          ; $5405: $1b
	rst  $38                                         ; $5406: $ff
	pop  af                                          ; $5407: $f1
	ld   de, $bf11                                   ; $5408: $11 $11 $bf
	rst  $38                                         ; $540b: $ff
	rst  $38                                         ; $540c: $ff
	db   $fc                                         ; $540d: $fc
	ld   de, $ffbd                                   ; $540e: $11 $bd $ff
	ld   de, $1b11                                   ; $5411: $11 $11 $1b
	rst  $38                                         ; $5414: $ff
	rst  $38                                         ; $5415: $ff
	rst  $38                                         ; $5416: $ff
	or   c                                           ; $5417: $b1
	inc  l                                           ; $5418: $2c
	rst  JumpTable                                         ; $5419: $df
	pop  af                                          ; $541a: $f1
	ld   de, $bf11                                   ; $541b: $11 $11 $bf
	rst  $38                                         ; $541e: $ff
	rst  $38                                         ; $541f: $ff
	cp   $13                                         ; $5420: $fe $13
	call z, $11fe                                    ; $5422: $cc $fe $11
	ld   de, $ff1c                                   ; $5425: $11 $1c $ff
	rst  $38                                         ; $5428: $ff
	rst  $38                                         ; $5429: $ff
	pop  af                                          ; $542a: $f1
	dec  sp                                          ; $542b: $3b
	sbc  $e1                                         ; $542c: $de $e1
	ld   de, $8f11                                   ; $542e: $11 $11 $8f
	rst  $38                                         ; $5431: $ff
	rst  $38                                         ; $5432: $ff
	rst  $38                                         ; $5433: $ff
	inc  h                                           ; $5434: $24
	cp   d                                           ; $5435: $ba
	call z, $1111                                    ; $5436: $cc $11 $11
	ld   d, $ff                                      ; $5439: $16 $ff
	rst  $38                                         ; $543b: $ff
	rst  $38                                         ; $543c: $ff
	db   $f4                                         ; $543d: $f4
	ld   c, h                                        ; $543e: $4c
	xor  d                                           ; $543f: $aa
	pop  bc                                          ; $5440: $c1
	ld   de, $7f11                                   ; $5441: $11 $11 $7f
	rst  $38                                         ; $5444: $ff
	rst  $38                                         ; $5445: $ff
	rst  $38                                         ; $5446: $ff
	ld   h, [hl]                                     ; $5447: $66
	cp   c                                           ; $5448: $b9
	sbc  e                                           ; $5449: $9b
	ld   de, $1411                                   ; $544a: $11 $11 $14
	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	rst  $38                                         ; $544f: $ff
	ld   sp, hl                                      ; $5450: $f9
	ld   l, h                                        ; $5451: $6c
	adc  c                                           ; $5452: $89
	and  c                                           ; $5453: $a1
	ld   de, $2e11                                   ; $5454: $11 $11 $2e
	rst  $38                                         ; $5457: $ff
	rst  $38                                         ; $5458: $ff
	rst  $38                                         ; $5459: $ff
	rst  $10                                         ; $545a: $d7
	jp   z, $1178                                    ; $545b: $ca $78 $11

	ld   de, $bf11                                   ; $545e: $11 $11 $bf
	rst  $38                                         ; $5461: $ff
	rst  $38                                         ; $5462: $ff
	rst  $38                                         ; $5463: $ff
	adc  e                                           ; $5464: $8b
	or   [hl]                                        ; $5465: $b6
	sub  e                                           ; $5466: $93
	ld   de, $1811                                   ; $5467: $11 $11 $18
	rst  $38                                         ; $546a: $ff
	rst  $38                                         ; $546b: $ff
	rst  $38                                         ; $546c: $ff
	ld   a, [$86cb]                                  ; $546d: $fa $cb $86
	ld   b, c                                        ; $5470: $41
	ld   de, $5f11                                   ; $5471: $11 $11 $5f
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	rst  $38                                         ; $5476: $ff
	cp   l                                           ; $5477: $bd
	cp   b                                           ; $5478: $b8
	ld   [hl], l                                     ; $5479: $75
	ld   de, $1111                                   ; $547a: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $547d: $cf
	rst  $38                                         ; $547e: $ff
	rst  $38                                         ; $547f: $ff
	rst  $38                                         ; $5480: $ff
	db   $ed                                         ; $5481: $ed
	add  [hl]                                        ; $5482: $86
	ld   h, c                                        ; $5483: $61
	ld   de, $1711                                   ; $5484: $11 $11 $17
	rst  $28                                         ; $5487: $ef
	rst  $38                                         ; $5488: $ff
	rst  $38                                         ; $5489: $ff
	cp   $ea                                         ; $548a: $fe $ea
	halt                                             ; $548c: $76
	ld   de, $1111                                   ; $548d: $11 $11 $11
	ld   c, e                                        ; $5490: $4b
	rst  $38                                         ; $5491: $ff
	rst  $38                                         ; $5492: $ff
	rst  $38                                         ; $5493: $ff
	rst  $38                                         ; $5494: $ff
	cp   b                                           ; $5495: $b8
	ld   h, e                                        ; $5496: $63
	ld   de, $1111                                   ; $5497: $11 $11 $11
	adc  a                                           ; $549a: $8f
	rst  $38                                         ; $549b: $ff
	rst  $38                                         ; $549c: $ff
	rst  $38                                         ; $549d: $ff
	cp   $a8                                         ; $549e: $fe $a8
	ld   d, c                                        ; $54a0: $51
	ld   de, $1211                                   ; $54a1: $11 $11 $12
	xor  a                                           ; $54a4: $af
	rst  $38                                         ; $54a5: $ff
	rst  $38                                         ; $54a6: $ff
	rst  $38                                         ; $54a7: $ff
	db   $fd                                         ; $54a8: $fd
	and  a                                           ; $54a9: $a7
	ld   hl, $1111                                   ; $54aa: $21 $11 $11
	ld   d, $df                                      ; $54ad: $16 $df
	rst  $38                                         ; $54af: $ff
	rst  $38                                         ; $54b0: $ff
	rst  $38                                         ; $54b1: $ff
	ei                                               ; $54b2: $fb
	or   a                                           ; $54b3: $b7
	ld   de, $1111                                   ; $54b4: $11 $11 $11
	rla                                              ; $54b7: $17
	rst  $38                                         ; $54b8: $ff
	rst  $38                                         ; $54b9: $ff
	rst  $38                                         ; $54ba: $ff
	rst  $38                                         ; $54bb: $ff
	db   $fc                                         ; $54bc: $fc
	and  l                                           ; $54bd: $a5
	ld   de, $1111                                   ; $54be: $11 $11 $11
	add  hl, de                                      ; $54c1: $19
	rst  $38                                         ; $54c2: $ff
	rst  $38                                         ; $54c3: $ff
	rst  $38                                         ; $54c4: $ff
	rst  $38                                         ; $54c5: $ff
	db   $fd                                         ; $54c6: $fd
	sub  d                                           ; $54c7: $92
	ld   de, $1111                                   ; $54c8: $11 $11 $11
	dec  de                                          ; $54cb: $1b
	rst  $38                                         ; $54cc: $ff
	rst  $38                                         ; $54cd: $ff
	rst  $38                                         ; $54ce: $ff
	rst  $38                                         ; $54cf: $ff
	db   $fd                                         ; $54d0: $fd
	sub  e                                           ; $54d1: $93
	ld   de, $1111                                   ; $54d2: $11 $11 $11
	jr   @+$01                                       ; $54d5: $18 $ff

	rst  $38                                         ; $54d7: $ff

Call_0cc_54d8:
	rst  $38                                         ; $54d8: $ff
	rst  $38                                         ; $54d9: $ff
	rst  $38                                         ; $54da: $ff
	and  h                                           ; $54db: $a4
	ld   de, $1111                                   ; $54dc: $11 $11 $11
	ld   d, $ff                                      ; $54df: $16 $ff
	rst  $38                                         ; $54e1: $ff
	rst  $38                                         ; $54e2: $ff
	rst  $38                                         ; $54e3: $ff
	rst  $38                                         ; $54e4: $ff
	rst  ToBoot                                         ; $54e5: $c7
	ld   de, $1111                                   ; $54e6: $11 $11 $11
	inc  de                                          ; $54e9: $13
	rst  $28                                         ; $54ea: $ef
	rst  $38                                         ; $54eb: $ff
	rst  $38                                         ; $54ec: $ff
	rst  $38                                         ; $54ed: $ff
	rst  $38                                         ; $54ee: $ff
	jp   c, $1111                                    ; $54ef: $da $11 $11

	ld   de, $5f11                                   ; $54f2: $11 $11 $5f
	rst  $38                                         ; $54f5: $ff
	rst  $38                                         ; $54f6: $ff
	rst  $38                                         ; $54f7: $ff
	rst  $38                                         ; $54f8: $ff
	db   $fd                                         ; $54f9: $fd
	sub  c                                           ; $54fa: $91
	ld   de, $1111                                   ; $54fb: $11 $11 $11
	inc  d                                           ; $54fe: $14
	rst  JumpTable                                         ; $54ff: $df
	rst  $38                                         ; $5500: $ff
	rst  $38                                         ; $5501: $ff
	rst  $38                                         ; $5502: $ff
	rst  $38                                         ; $5503: $ff
	rst  ToBoot                                         ; $5504: $c7
	ld   de, $1111                                   ; $5505: $11 $11 $11
	ld   de, $ff1b                                   ; $5508: $11 $1b $ff
	rst  $38                                         ; $550b: $ff
	rst  $38                                         ; $550c: $ff
	rst  $38                                         ; $550d: $ff
	db   $fd                                         ; $550e: $fd
	or   d                                           ; $550f: $b2
	ld   de, $1111                                   ; $5510: $11 $11 $11
	ld   de, $ef38                                   ; $5513: $11 $38 $ef
	rst  $38                                         ; $5516: $ff
	rst  $38                                         ; $5517: $ff
	rst  $38                                         ; $5518: $ff
	rst  $38                                         ; $5519: $ff
	and  [hl]                                        ; $551a: $a6
	ld   hl, $3412                                   ; $551b: $21 $12 $34
	ld   b, e                                        ; $551e: $43
	ld   de, $4712                                   ; $551f: $11 $12 $47
	sbc  d                                           ; $5522: $9a
	sbc  h                                           ; $5523: $9c
	xor  $ff                                         ; $5524: $ee $ff
	rst  $38                                         ; $5526: $ff
	rst  $38                                         ; $5527: $ff
	call c, $1184                                    ; $5528: $dc $84 $11
	ld   de, $1111                                   ; $552b: $11 $11 $11
	dec  [hl]                                        ; $552e: $35
	ld   a, h                                        ; $552f: $7c
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	rst  $38                                         ; $5532: $ff
	rst  $38                                         ; $5533: $ff
	jp   c, $1162                                    ; $5534: $da $62 $11

	ld   de, $1111                                   ; $5537: $11 $11 $11
	ld   e, b                                        ; $553a: $58
	cp   a                                           ; $553b: $bf
	rst  $38                                         ; $553c: $ff
	rst  $38                                         ; $553d: $ff
	rst  $38                                         ; $553e: $ff
	rst  $38                                         ; $553f: $ff
	cp   b                                           ; $5540: $b8
	ld   b, c                                        ; $5541: $41
	ld   de, $1111                                   ; $5542: $11 $11 $11
	inc  de                                          ; $5545: $13
	ld   l, c                                        ; $5546: $69
	cp   a                                           ; $5547: $bf
	rst  $38                                         ; $5548: $ff
	rst  $38                                         ; $5549: $ff
	rst  $38                                         ; $554a: $ff
	ld   a, [$4186]                                  ; $554b: $fa $86 $41
	ld   de, $1111                                   ; $554e: $11 $11 $11
	inc  d                                           ; $5551: $14
	adc  d                                           ; $5552: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5553: $cf
	rst  $38                                         ; $5554: $ff
	rst  $38                                         ; $5555: $ff
	rst  $38                                         ; $5556: $ff
	ld   [$1185], a                                  ; $5557: $ea $85 $11
	ld   de, $1111                                   ; $555a: $11 $11 $11
	ld   h, $8b                                      ; $555d: $26 $8b
	rst  $38                                         ; $555f: $ff
	rst  $38                                         ; $5560: $ff
	rst  $38                                         ; $5561: $ff
	db   $fc                                         ; $5562: $fc
	sub  [hl]                                        ; $5563: $96
	ld   sp, $1111                                   ; $5564: $31 $11 $11
	ld   de, $6813                                   ; $5567: $11 $13 $68
	rst  JumpTable                                         ; $556a: $df
	rst  $38                                         ; $556b: $ff
	rst  $38                                         ; $556c: $ff
	rst  $38                                         ; $556d: $ff
	jp   hl                                          ; $556e: $e9


	ld   d, d                                        ; $556f: $52
	ld   de, $1111                                   ; $5570: $11 $11 $11
	ld   de, $af47                                   ; $5573: $11 $47 $af
	rst  $38                                         ; $5576: $ff
	rst  $38                                         ; $5577: $ff
	rst  $38                                         ; $5578: $ff
	db   $fd                                         ; $5579: $fd

Jump_0cc_557a:
	add  h                                           ; $557a: $84
	ld   de, $1111                                   ; $557b: $11 $11 $11
	ld   de, $7b14                                   ; $557e: $11 $14 $7b
	rst  $38                                         ; $5581: $ff
	rst  $38                                         ; $5582: $ff
	rst  $38                                         ; $5583: $ff
	rst  $38                                         ; $5584: $ff
	ret  z                                           ; $5585: $c8

	ld   b, c                                        ; $5586: $41
	ld   de, $1111                                   ; $5587: $11 $11 $11
	ld   de, $bf57                                   ; $558a: $11 $57 $bf
	rst  $38                                         ; $558d: $ff
	rst  $38                                         ; $558e: $ff
	rst  $38                                         ; $558f: $ff
	db   $fd                                         ; $5590: $fd
	add  h                                           ; $5591: $84
	ld   de, $1111                                   ; $5592: $11 $11 $11
	ld   de, $6a14                                   ; $5595: $11 $14 $6a
	rst  $28                                         ; $5598: $ef
	rst  $38                                         ; $5599: $ff
	rst  $38                                         ; $559a: $ff
	rst  $38                                         ; $559b: $ff
	ld   sp, hl                                      ; $559c: $f9
	ld   d, c                                        ; $559d: $51
	ld   de, $1111                                   ; $559e: $11 $11 $11
	ld   de, $8e36                                   ; $55a1: $11 $36 $8e
	rst  $38                                         ; $55a4: $ff
	rst  $38                                         ; $55a5: $ff
	rst  $38                                         ; $55a6: $ff
	rst  $38                                         ; $55a7: $ff
	or   [hl]                                        ; $55a8: $b6
	ld   sp, $1111                                   ; $55a9: $31 $11 $11
	ld   de, $4712                                   ; $55ac: $11 $12 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55af: $cf
	rst  $38                                         ; $55b0: $ff
	rst  $38                                         ; $55b1: $ff
	rst  $38                                         ; $55b2: $ff
	db   $fc                                         ; $55b3: $fc
	ld   [hl], e                                     ; $55b4: $73
	ld   de, $1111                                   ; $55b5: $11 $11 $11
	ld   de, $6b14                                   ; $55b8: $11 $14 $6b
	rst  $38                                         ; $55bb: $ff
	rst  $38                                         ; $55bc: $ff
	rst  $38                                         ; $55bd: $ff
	rst  $38                                         ; $55be: $ff
	add  sp, $41                                     ; $55bf: $e8 $41
	ld   de, $1111                                   ; $55c1: $11 $11 $11
	ld   de, $bf46                                   ; $55c4: $11 $46 $bf
	rst  $38                                         ; $55c7: $ff
	rst  $38                                         ; $55c8: $ff
	rst  $38                                         ; $55c9: $ff
	cp   $a4                                         ; $55ca: $fe $a4
	ld   de, $1111                                   ; $55cc: $11 $11 $11
	ld   de, $5913                                   ; $55cf: $11 $13 $59
	rst  $28                                         ; $55d2: $ef
	rst  $38                                         ; $55d3: $ff
	rst  $38                                         ; $55d4: $ff
	rst  $38                                         ; $55d5: $ff
	ld   a, [$1161]                                  ; $55d6: $fa $61 $11
	ld   de, $1111                                   ; $55d9: $11 $11 $11
	dec  d                                           ; $55dc: $15
	adc  h                                           ; $55dd: $8c
	rst  $38                                         ; $55de: $ff
	rst  $38                                         ; $55df: $ff
	rst  $38                                         ; $55e0: $ff
	rst  $38                                         ; $55e1: $ff
	rst  ToBoot                                         ; $55e2: $c7
	ld   hl, $1111                                   ; $55e3: $21 $11 $11
	ld   de, $4611                                   ; $55e6: $11 $11 $46
	xor  a                                           ; $55e9: $af
	rst  $38                                         ; $55ea: $ff
	rst  $38                                         ; $55eb: $ff
	rst  $38                                         ; $55ec: $ff
	rst  $38                                         ; $55ed: $ff
	sub  h                                           ; $55ee: $94
	ld   de, $1111                                   ; $55ef: $11 $11 $11
	ld   de, $5812                                   ; $55f2: $11 $12 $58
	rst  JumpTable                                         ; $55f5: $df
	rst  $38                                         ; $55f6: $ff
	rst  $38                                         ; $55f7: $ff
	rst  $38                                         ; $55f8: $ff
	ei                                               ; $55f9: $fb
	ld   h, d                                        ; $55fa: $62
	ld   de, $1111                                   ; $55fb: $11 $11 $11
	ld   de, $6b13                                   ; $55fe: $11 $13 $6b
	rst  $38                                         ; $5601: $ff
	rst  $38                                         ; $5602: $ff
	rst  $38                                         ; $5603: $ff
	rst  $38                                         ; $5604: $ff
	add  sp, $41                                     ; $5605: $e8 $41
	ld   de, $1111                                   ; $5607: $11 $11 $11
	ld   de, $9e25                                   ; $560a: $11 $25 $9e
	rst  $38                                         ; $560d: $ff
	rst  $38                                         ; $560e: $ff
	rst  $38                                         ; $560f: $ff
	rst  $38                                         ; $5610: $ff

Jump_0cc_5611:
	or   l                                           ; $5611: $b5
	ld   de, $1111                                   ; $5612: $11 $11 $11
	ld   de, $4811                                   ; $5615: $11 $11 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5618: $cf
	rst  $38                                         ; $5619: $ff
	rst  $38                                         ; $561a: $ff
	rst  $38                                         ; $561b: $ff
	db   $fd                                         ; $561c: $fd
	ld   [hl], d                                     ; $561d: $72
	ld   de, $1111                                   ; $561e: $11 $11 $11
	ld   de, $6b13                                   ; $5621: $11 $13 $6b
	rst  $38                                         ; $5624: $ff
	rst  $38                                         ; $5625: $ff
	rst  $38                                         ; $5626: $ff
	rst  $38                                         ; $5627: $ff
	ld   a, [$1141]                                  ; $5628: $fa $41 $11
	ld   de, $1111                                   ; $562b: $11 $11 $11
	inc  d                                           ; $562e: $14
	adc  l                                           ; $562f: $8d
	rst  $38                                         ; $5630: $ff
	rst  $38                                         ; $5631: $ff
	rst  $38                                         ; $5632: $ff
	rst  $38                                         ; $5633: $ff
	add  $21                                         ; $5634: $c6 $21
	ld   de, $1111                                   ; $5636: $11 $11 $11
	ld   de, $cf36                                   ; $5639: $11 $36 $cf
	rst  $38                                         ; $563c: $ff
	rst  $38                                         ; $563d: $ff
	rst  $38                                         ; $563e: $ff
	rst  $38                                         ; $563f: $ff
	and  h                                           ; $5640: $a4
	ld   de, $1111                                   ; $5641: $11 $11 $11
	ld   de, $4911                                   ; $5644: $11 $11 $49
	rst  $28                                         ; $5647: $ef
	rst  $38                                         ; $5648: $ff
	rst  $38                                         ; $5649: $ff
	rst  $38                                         ; $564a: $ff
	db   $fc                                         ; $564b: $fc
	ld   h, d                                        ; $564c: $62
	ld   de, $1111                                   ; $564d: $11 $11 $11
	ld   de, $7c13                                   ; $5650: $11 $13 $7c
	rst  $38                                         ; $5653: $ff
	rst  $38                                         ; $5654: $ff
	rst  $38                                         ; $5655: $ff
	rst  $38                                         ; $5656: $ff
	rst  $20                                         ; $5657: $e7
	ld   hl, $1111                                   ; $5658: $21 $11 $11
	ld   de, $3611                                   ; $565b: $11 $11 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $565e: $cf
	rst  $38                                         ; $565f: $ff
	rst  $38                                         ; $5660: $ff
	rst  $38                                         ; $5661: $ff
	ld   a, [$1131]                                  ; $5662: $fa $31 $11
	ld   de, $1111                                   ; $5665: $11 $11 $11
	jr   z, @-$3f                                    ; $5668: $28 $bf

	rst  $38                                         ; $566a: $ff
	rst  $38                                         ; $566b: $ff
	rst  $38                                         ; $566c: $ff
	ld   sp, hl                                      ; $566d: $f9
	ld   sp, $1111                                   ; $566e: $31 $11 $11
	ld   de, $2711                                   ; $5671: $11 $11 $27
	cp   a                                           ; $5674: $bf
	rst  $38                                         ; $5675: $ff
	rst  $38                                         ; $5676: $ff
	rst  $38                                         ; $5677: $ff
	cp   $61                                         ; $5678: $fe $61
	ld   de, $1111                                   ; $567a: $11 $11 $11
	ld   de, $6e25                                   ; $567d: $11 $25 $6e
	rst  $38                                         ; $5680: $ff
	rst  $38                                         ; $5681: $ff
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	or   e                                           ; $5684: $b3
	ld   de, $1111                                   ; $5685: $11 $11 $11
	ld   de, $3614                                   ; $5688: $11 $14 $36
	rst  $38                                         ; $568b: $ff
	rst  $38                                         ; $568c: $ff
	rst  $38                                         ; $568d: $ff
	rst  $38                                         ; $568e: $ff
	ei                                               ; $568f: $fb
	ld   hl, $1111                                   ; $5690: $21 $11 $11
	ld   de, $3311                                   ; $5693: $11 $11 $33
	xor  a                                           ; $5696: $af
	rst  $38                                         ; $5697: $ff
	rst  $38                                         ; $5698: $ff
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	sub  c                                           ; $569b: $91
	ld   de, $1111                                   ; $569c: $11 $11 $11
	ld   de, $6c13                                   ; $569f: $11 $13 $6c
	rst  $38                                         ; $56a2: $ff
	rst  $38                                         ; $56a3: $ff
	rst  $38                                         ; $56a4: $ff
	rst  $38                                         ; $56a5: $ff
	or   $11                                         ; $56a6: $f6 $11
	ld   de, $1111                                   ; $56a8: $11 $11 $11
	ld   de, $bf38                                   ; $56ab: $11 $38 $bf
	rst  $38                                         ; $56ae: $ff
	rst  $38                                         ; $56af: $ff
	rst  $38                                         ; $56b0: $ff
	rst  $38                                         ; $56b1: $ff
	ld   b, c                                        ; $56b2: $41
	ld   de, $1111                                   ; $56b3: $11 $11 $11
	ld   de, $8d13                                   ; $56b6: $11 $13 $8d
	rst  $38                                         ; $56b9: $ff
	rst  $38                                         ; $56ba: $ff
	rst  $38                                         ; $56bb: $ff
	rst  $38                                         ; $56bc: $ff
	di                                               ; $56bd: $f3
	ld   de, $1111                                   ; $56be: $11 $11 $11
	ld   de, $4712                                   ; $56c1: $11 $12 $47
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	rst  $38                                         ; $56c6: $ff
	rst  $38                                         ; $56c7: $ff
	rst  $38                                         ; $56c8: $ff
	ld   hl, $1111                                   ; $56c9: $21 $11 $11
	ld   de, $1611                                   ; $56cc: $11 $11 $16
	ld   a, l                                        ; $56cf: $7d
	rst  $38                                         ; $56d0: $ff
	rst  $38                                         ; $56d1: $ff
	rst  $38                                         ; $56d2: $ff
	rst  $38                                         ; $56d3: $ff
	ldh  a, [c]                                      ; $56d4: $f2
	ld   de, $1111                                   ; $56d5: $11 $11 $11
	ld   de, $4613                                   ; $56d8: $11 $13 $46
	rst  $38                                         ; $56db: $ff
	rst  $38                                         ; $56dc: $ff
	rst  $38                                         ; $56dd: $ff
	rst  $38                                         ; $56de: $ff
	rst  $38                                         ; $56df: $ff
	ld   hl, $1111                                   ; $56e0: $21 $11 $11
	ld   de, $2411                                   ; $56e3: $11 $11 $24
	ld   a, a                                        ; $56e6: $7f
	rst  $38                                         ; $56e7: $ff
	rst  $38                                         ; $56e8: $ff
	rst  $38                                         ; $56e9: $ff
	rst  $38                                         ; $56ea: $ff
	pop  hl                                          ; $56eb: $e1
	ld   de, $1111                                   ; $56ec: $11 $11 $11
	ld   de, $3812                                   ; $56ef: $11 $12 $38
	rst  $38                                         ; $56f2: $ff
	rst  $38                                         ; $56f3: $ff
	rst  $38                                         ; $56f4: $ff
	rst  $38                                         ; $56f5: $ff
	rst  $38                                         ; $56f6: $ff
	ld   hl, $1111                                   ; $56f7: $21 $11 $11
	ld   de, $2511                                   ; $56fa: $11 $11 $25
	ld   a, a                                        ; $56fd: $7f
	rst  $38                                         ; $56fe: $ff
	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	rst  $38                                         ; $5701: $ff
	or   d                                           ; $5702: $b2
	ld   sp, $1111                                   ; $5703: $31 $11 $11
	ld   de, $6811                                   ; $5706: $11 $11 $68
	rst  $38                                         ; $5709: $ff
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	rst  $38                                         ; $570c: $ff
	ld   sp, hl                                      ; $570d: $f9
	ld   hl, $1111                                   ; $570e: $21 $11 $11
	ld   de, $3511                                   ; $5711: $11 $11 $35
	ld   a, a                                        ; $5714: $7f
	cp   $ff                                         ; $5715: $fe $ff
	rst  $38                                         ; $5717: $ff
	rst  $38                                         ; $5718: $ff
	and  d                                           ; $5719: $a2
	ld   de, $1111                                   ; $571a: $11 $11 $11
	ld   de, $6614                                   ; $571d: $11 $14 $66
	rst  $38                                         ; $5720: $ff
	rst  JumpTable                                         ; $5721: $df
	rst  $38                                         ; $5722: $ff
	rst  $38                                         ; $5723: $ff
	ld   a, [$1121]                                  ; $5724: $fa $21 $11
	ld   de, $1111                                   ; $5727: $11 $11 $11
	ld   b, [hl]                                     ; $572a: $46
	ld   l, a                                        ; $572b: $6f
	db   $fd                                         ; $572c: $fd
	rst  $38                                         ; $572d: $ff
	rst  $38                                         ; $572e: $ff
	rst  $38                                         ; $572f: $ff
	sub  e                                           ; $5730: $93
	ld   de, $1111                                   ; $5731: $11 $11 $11
	ld   de, $5714                                   ; $5734: $11 $14 $57
	rst  $38                                         ; $5737: $ff
	rst  JumpTable                                         ; $5738: $df
	rst  $38                                         ; $5739: $ff
	rst  $38                                         ; $573a: $ff
	ld   sp, hl                                      ; $573b: $f9
	ld   sp, $1111                                   ; $573c: $31 $11 $11
	ld   de, $4511                                   ; $573f: $11 $11 $45
	ld   l, a                                        ; $5742: $6f
	cp   $ff                                         ; $5743: $fe $ff
	rst  $38                                         ; $5745: $ff
	rst  $38                                         ; $5746: $ff
	sub  e                                           ; $5747: $93
	ld   de, $1111                                   ; $5748: $11 $11 $11
	ld   de, $5714                                   ; $574b: $11 $14 $57
	rst  $38                                         ; $574e: $ff
	rst  JumpTable                                         ; $574f: $df
	rst  $38                                         ; $5750: $ff
	rst  $38                                         ; $5751: $ff
	ld   a, [$1141]                                  ; $5752: $fa $41 $11
	ld   de, $1111                                   ; $5755: $11 $11 $11
	inc  [hl]                                        ; $5758: $34
	adc  a                                           ; $5759: $8f
	cp   $ff                                         ; $575a: $fe $ff
	rst  $38                                         ; $575c: $ff
	rst  $38                                         ; $575d: $ff
	sub  h                                           ; $575e: $94
	ld   sp, $1111                                   ; $575f: $31 $11 $11
	ld   de, $3812                                   ; $5762: $11 $12 $38
	rst  $38                                         ; $5765: $ff
	rst  JumpTable                                         ; $5766: $df
	rst  $38                                         ; $5767: $ff
	rst  $38                                         ; $5768: $ff
	ei                                               ; $5769: $fb
	ld   b, d                                        ; $576a: $42
	ld   de, $1111                                   ; $576b: $11 $11 $11
	ld   de, $7f42                                   ; $576e: $11 $42 $7f
	db   $fd                                         ; $5771: $fd
	rst  $38                                         ; $5772: $ff
	rst  $38                                         ; $5773: $ff
	rst  $38                                         ; $5774: $ff
	db   $e3                                         ; $5775: $e3
	ld   sp, $1111                                   ; $5776: $31 $11 $11
	ld   de, $1712                                   ; $5779: $11 $12 $17
	rst  $38                                         ; $577c: $ff
	rst  $28                                         ; $577d: $ef
	rst  $38                                         ; $577e: $ff
	rst  $38                                         ; $577f: $ff
	rst  $38                                         ; $5780: $ff
	ld   b, e                                        ; $5781: $43
	ld   de, $1111                                   ; $5782: $11 $11 $11
	ld   de, $5f31                                   ; $5785: $11 $31 $5f
	cp   $ff                                         ; $5788: $fe $ff
	rst  $38                                         ; $578a: $ff
	rst  $38                                         ; $578b: $ff
	rst  $30                                         ; $578c: $f7
	ld   hl, $1111                                   ; $578d: $21 $11 $11
	ld   de, $2411                                   ; $5790: $11 $11 $24
	rst  JumpTable                                         ; $5793: $df
	rst  $38                                         ; $5794: $ff
	rst  $38                                         ; $5795: $ff
	rst  $38                                         ; $5796: $ff
	rst  $38                                         ; $5797: $ff
	and  h                                           ; $5798: $a4
	ld   de, $1111                                   ; $5799: $11 $11 $11
	ld   de, $3b11                                   ; $579c: $11 $11 $3b
	rst  $38                                         ; $579f: $ff
	rst  $38                                         ; $57a0: $ff
	rst  $38                                         ; $57a1: $ff
	rst  $38                                         ; $57a2: $ff
	db   $fd                                         ; $57a3: $fd
	ld   d, d                                        ; $57a4: $52
	ld   de, $1111                                   ; $57a5: $11 $11 $11
	ld   de, $7f21                                   ; $57a8: $11 $21 $7f
	rst  $38                                         ; $57ab: $ff
	rst  $38                                         ; $57ac: $ff
	rst  $38                                         ; $57ad: $ff
	rst  $38                                         ; $57ae: $ff
	rst  $30                                         ; $57af: $f7
	ld   sp, $1111                                   ; $57b0: $31 $11 $11
	ld   de, $1512                                   ; $57b3: $11 $12 $15
	rst  $38                                         ; $57b6: $ff
	rst  $38                                         ; $57b7: $ff
	rst  $38                                         ; $57b8: $ff
	rst  $38                                         ; $57b9: $ff
	rst  $38                                         ; $57ba: $ff
	and  [hl]                                        ; $57bb: $a6
	ld   de, $1111                                   ; $57bc: $11 $11 $11
	ld   de, $4c11                                   ; $57bf: $11 $11 $4c
	rst  $38                                         ; $57c2: $ff
	rst  $38                                         ; $57c3: $ff
	rst  $38                                         ; $57c4: $ff
	rst  $38                                         ; $57c5: $ff
	db   $fd                                         ; $57c6: $fd
	ld   [hl], c                                     ; $57c7: $71
	ld   de, $1111                                   ; $57c8: $11 $11 $11
	ld   de, $af11                                   ; $57cb: $11 $11 $af
	rst  $38                                         ; $57ce: $ff
	rst  $38                                         ; $57cf: $ff
	rst  $38                                         ; $57d0: $ff
	rst  $38                                         ; $57d1: $ff
	ld   sp, hl                                      ; $57d2: $f9
	ld   b, c                                        ; $57d3: $41
	ld   de, $1111                                   ; $57d4: $11 $11 $11
	ld   de, $ff16                                   ; $57d7: $11 $16 $ff
	rst  $38                                         ; $57da: $ff
	rst  $38                                         ; $57db: $ff
	rst  $38                                         ; $57dc: $ff
	rst  $38                                         ; $57dd: $ff
	rst  ToBoot                                         ; $57de: $c7
	ld   de, $1111                                   ; $57df: $11 $11 $11
	ld   de, $3a11                                   ; $57e2: $11 $11 $3a
	cp   $ff                                         ; $57e5: $fe $ff
	rst  $38                                         ; $57e7: $ff
	rst  $38                                         ; $57e8: $ff
	rst  $38                                         ; $57e9: $ff
	or   l                                           ; $57ea: $b5
	ld   de, $1111                                   ; $57eb: $11 $11 $11
	ld   de, $5a11                                   ; $57ee: $11 $11 $5a
	sbc  $ff                                         ; $57f1: $de $ff
	rst  $38                                         ; $57f3: $ff
	rst  $38                                         ; $57f4: $ff
	rst  $38                                         ; $57f5: $ff
	add  $11                                         ; $57f6: $c6 $11
	ld   de, $1111                                   ; $57f8: $11 $11 $11
	ld   de, $ad57                                   ; $57fb: $11 $57 $ad
	rst  $38                                         ; $57fe: $ff
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	rst  $38                                         ; $5801: $ff
	rst  $20                                         ; $5802: $e7
	ld   de, $1111                                   ; $5803: $11 $11 $11
	ld   de, $2511                                   ; $5806: $11 $11 $25
	adc  l                                           ; $5809: $8d
	rst  $38                                         ; $580a: $ff
	rst  $38                                         ; $580b: $ff
	rst  $38                                         ; $580c: $ff
	rst  $38                                         ; $580d: $ff
	rst  $20                                         ; $580e: $e7
	ld   de, $1111                                   ; $580f: $11 $11 $11
	ld   de, $2411                                   ; $5812: $11 $11 $24
	adc  [hl]                                        ; $5815: $8e
	rst  $38                                         ; $5816: $ff
	rst  $38                                         ; $5817: $ff
	rst  $38                                         ; $5818: $ff
	rst  $38                                         ; $5819: $ff
	add  $11                                         ; $581a: $c6 $11
	ld   de, $1111                                   ; $581c: $11 $11 $11
	ld   de, $ae25                                   ; $581f: $11 $25 $ae
	rst  $38                                         ; $5822: $ff
	rst  $38                                         ; $5823: $ff
	rst  $38                                         ; $5824: $ff
	rst  $38                                         ; $5825: $ff
	or   h                                           ; $5826: $b4
	ld   de, $1111                                   ; $5827: $11 $11 $11
	ld   de, $3611                                   ; $582a: $11 $11 $36
	cp   a                                           ; $582d: $bf
	rst  $38                                         ; $582e: $ff
	rst  $38                                         ; $582f: $ff
	rst  $38                                         ; $5830: $ff
	rst  $38                                         ; $5831: $ff
	and  e                                           ; $5832: $a3
	ld   de, $1111                                   ; $5833: $11 $11 $11
	ld   de, $3711                                   ; $5836: $11 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5839: $cf
	rst  $38                                         ; $583a: $ff
	rst  $38                                         ; $583b: $ff
	rst  $38                                         ; $583c: $ff
	cp   $71                                         ; $583d: $fe $71
	ld   de, $1111                                   ; $583f: $11 $11 $11
	ld   de, $4812                                   ; $5842: $11 $12 $48
	rst  JumpTable                                         ; $5845: $df
	rst  $38                                         ; $5846: $ff
	rst  $38                                         ; $5847: $ff
	rst  $38                                         ; $5848: $ff
	cp   $61                                         ; $5849: $fe $61
	ld   de, $1111                                   ; $584b: $11 $11 $11
	ld   de, $5a12                                   ; $584e: $11 $12 $5a
	rst  $38                                         ; $5851: $ff
	rst  $38                                         ; $5852: $ff
	rst  $38                                         ; $5853: $ff
	rst  $38                                         ; $5854: $ff
	db   $fc                                         ; $5855: $fc
	ld   d, c                                        ; $5856: $51
	ld   de, $1111                                   ; $5857: $11 $11 $11
	ld   de, $6a13                                   ; $585a: $11 $13 $6a
	rst  $38                                         ; $585d: $ff
	rst  $38                                         ; $585e: $ff
	rst  $38                                         ; $585f: $ff
	rst  $38                                         ; $5860: $ff
	ei                                               ; $5861: $fb
	ld   b, c                                        ; $5862: $41
	ld   de, $1111                                   ; $5863: $11 $11 $11
	ld   de, $7b13                                   ; $5866: $11 $13 $7b
	rst  $38                                         ; $5869: $ff
	rst  $38                                         ; $586a: $ff
	rst  $38                                         ; $586b: $ff
	rst  $38                                         ; $586c: $ff
	ld   sp, hl                                      ; $586d: $f9
	ld   hl, $1111                                   ; $586e: $21 $11 $11
	ld   de, $2411                                   ; $5871: $11 $11 $24
	adc  h                                           ; $5874: $8c
	rst  $38                                         ; $5875: $ff
	rst  $38                                         ; $5876: $ff
	rst  $38                                         ; $5877: $ff
	rst  $38                                         ; $5878: $ff
	and  $11                                         ; $5879: $e6 $11
	ld   de, $1111                                   ; $587b: $11 $11 $11
	ld   de, $9e25                                   ; $587e: $11 $25 $9e
	rst  $38                                         ; $5881: $ff
	rst  $38                                         ; $5882: $ff
	rst  $38                                         ; $5883: $ff
	rst  $38                                         ; $5884: $ff
	push bc                                          ; $5885: $c5
	ld   de, $1111                                   ; $5886: $11 $11 $11
	ld   de, $3611                                   ; $5889: $11 $11 $36
	cp   a                                           ; $588c: $bf
	rst  $38                                         ; $588d: $ff
	rst  $38                                         ; $588e: $ff
	rst  $38                                         ; $588f: $ff
	rst  $38                                         ; $5890: $ff
	sub  e                                           ; $5891: $93
	ld   de, $1111                                   ; $5892: $11 $11 $11
	ld   de, $4711                                   ; $5895: $11 $11 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5898: $cf
	rst  $38                                         ; $5899: $ff
	rst  $38                                         ; $589a: $ff
	rst  $38                                         ; $589b: $ff
	cp   $71                                         ; $589c: $fe $71
	ld   de, $1111                                   ; $589e: $11 $11 $11
	ld   de, $5912                                   ; $58a1: $11 $12 $59
	rst  $28                                         ; $58a4: $ef
	rst  $38                                         ; $58a5: $ff
	rst  $38                                         ; $58a6: $ff
	rst  $38                                         ; $58a7: $ff
	ei                                               ; $58a8: $fb
	ld   d, c                                        ; $58a9: $51
	ld   de, $1111                                   ; $58aa: $11 $11 $11
	ld   de, $6a13                                   ; $58ad: $11 $13 $6a
	rst  $28                                         ; $58b0: $ef
	rst  $38                                         ; $58b1: $ff
	rst  $38                                         ; $58b2: $ff
	rst  $38                                         ; $58b3: $ff
	ld   a, [$1131]                                  ; $58b4: $fa $31 $11
	ld   de, $1111                                   ; $58b7: $11 $11 $11
	inc  d                                           ; $58ba: $14
	ld   a, h                                        ; $58bb: $7c
	rst  $38                                         ; $58bc: $ff
	rst  $38                                         ; $58bd: $ff
	rst  $38                                         ; $58be: $ff
	rst  $38                                         ; $58bf: $ff
	add  sp, $11                                     ; $58c0: $e8 $11
	ld   de, $1111                                   ; $58c2: $11 $11 $11
	ld   de, $8e25                                   ; $58c5: $11 $25 $8e
	rst  $38                                         ; $58c8: $ff
	rst  $38                                         ; $58c9: $ff
	rst  $38                                         ; $58ca: $ff
	rst  $38                                         ; $58cb: $ff
	push bc                                          ; $58cc: $c5
	ld   de, $1111                                   ; $58cd: $11 $11 $11
	ld   de, $3611                                   ; $58d0: $11 $11 $36
	cp   a                                           ; $58d3: $bf
	rst  $38                                         ; $58d4: $ff
	rst  $38                                         ; $58d5: $ff
	rst  $38                                         ; $58d6: $ff
	rst  $38                                         ; $58d7: $ff
	sub  e                                           ; $58d8: $93
	ld   de, $1111                                   ; $58d9: $11 $11 $11
	ld   de, $4812                                   ; $58dc: $11 $12 $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58df: $cf
	rst  $38                                         ; $58e0: $ff
	rst  $38                                         ; $58e1: $ff
	rst  $38                                         ; $58e2: $ff
	cp   $71                                         ; $58e3: $fe $71
	ld   de, $1111                                   ; $58e5: $11 $11 $11
	ld   de, $5913                                   ; $58e8: $11 $13 $59
	rst  $38                                         ; $58eb: $ff
	rst  $38                                         ; $58ec: $ff
	rst  $38                                         ; $58ed: $ff
	rst  $38                                         ; $58ee: $ff
	ld   sp, hl                                      ; $58ef: $f9
	ld   sp, $1111                                   ; $58f0: $31 $11 $11
	ld   de, $3611                                   ; $58f3: $11 $11 $36
	sbc  a                                           ; $58f6: $9f
	rst  $38                                         ; $58f7: $ff
	rst  $38                                         ; $58f8: $ff
	rst  $38                                         ; $58f9: $ff
	rst  $38                                         ; $58fa: $ff
	and  e                                           ; $58fb: $a3
	ld   de, $1111                                   ; $58fc: $11 $11 $11
	ld   de, $ab15                                   ; $58ff: $11 $15 $ab
	rst  $38                                         ; $5902: $ff
	rst  $38                                         ; $5903: $ff
	rst  $38                                         ; $5904: $ff
	rst  $38                                         ; $5905: $ff
	jp   hl                                          ; $5906: $e9


	ld   de, $1111                                   ; $5907: $11 $11 $11
	ld   de, $6c11                                   ; $590a: $11 $11 $6c
	rst  $28                                         ; $590d: $ef
	rst  $38                                         ; $590e: $ff
	rst  $38                                         ; $590f: $ff
	rst  $38                                         ; $5910: $ff
	cp   $71                                         ; $5911: $fe $71
	ld   de, $1111                                   ; $5913: $11 $11 $11
	ld   de, $df16                                   ; $5916: $11 $16 $df
	rst  $38                                         ; $5919: $ff
	rst  $38                                         ; $591a: $ff
	rst  $38                                         ; $591b: $ff
	rst  $38                                         ; $591c: $ff
	rst  $10                                         ; $591d: $d7
	ld   de, $1111                                   ; $591e: $11 $11 $11
	ld   de, $6e11                                   ; $5921: $11 $11 $6e
	rst  $38                                         ; $5924: $ff
	rst  $38                                         ; $5925: $ff
	rst  $38                                         ; $5926: $ff
	rst  $38                                         ; $5927: $ff
	ei                                               ; $5928: $fb
	ld   h, c                                        ; $5929: $61
	ld   de, $1111                                   ; $592a: $11 $11 $11
	ld   de, $ef18                                   ; $592d: $11 $18 $ef
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	rst  $38                                         ; $5932: $ff
	rst  $38                                         ; $5933: $ff
	or   l                                           ; $5934: $b5
	ld   de, $1111                                   ; $5935: $11 $11 $11
	ld   de, $8f11                                   ; $5938: $11 $11 $8f
	rst  $38                                         ; $593b: $ff
	rst  $38                                         ; $593c: $ff
	rst  $38                                         ; $593d: $ff
	rst  $38                                         ; $593e: $ff
	ld   sp, hl                                      ; $593f: $f9
	ld   d, c                                        ; $5940: $51
	ld   de, $1111                                   ; $5941: $11 $11 $11
	ld   de, $ff19                                   ; $5944: $11 $19 $ff
	rst  $38                                         ; $5947: $ff
	rst  $38                                         ; $5948: $ff
	rst  $38                                         ; $5949: $ff
	rst  $38                                         ; $594a: $ff
	add  d                                           ; $594b: $82
	ld   de, $1111                                   ; $594c: $11 $11 $11
	ld   de, $9f12                                   ; $594f: $11 $12 $9f
	rst  $38                                         ; $5952: $ff
	rst  $38                                         ; $5953: $ff
	rst  $38                                         ; $5954: $ff
	rst  $38                                         ; $5955: $ff
	rst  $20                                         ; $5956: $e7
	ld   de, $1111                                   ; $5957: $11 $11 $11
	ld   de, $4b11                                   ; $595a: $11 $11 $4b
	rst  $38                                         ; $595d: $ff
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	db   $fc                                         ; $5961: $fc
	ld   h, c                                        ; $5962: $61
	ld   de, $1111                                   ; $5963: $11 $11 $11
	ld   de, $cf15                                   ; $5966: $11 $15 $cf
	rst  $38                                         ; $5969: $ff
	rst  $38                                         ; $596a: $ff
	rst  $38                                         ; $596b: $ff
	rst  $38                                         ; $596c: $ff
	and  l                                           ; $596d: $a5
	ld   de, $1111                                   ; $596e: $11 $11 $11
	ld   de, $8e21                                   ; $5971: $11 $21 $8e
	rst  $38                                         ; $5974: $ff
	rst  $38                                         ; $5975: $ff
	rst  $38                                         ; $5976: $ff
	rst  $38                                         ; $5977: $ff
	jp   hl                                          ; $5978: $e9


	ld   de, $1111                                   ; $5979: $11 $11 $11
	ld   de, $4913                                   ; $597c: $11 $13 $49
	rst  $38                                         ; $597f: $ff
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	rst  $38                                         ; $5982: $ff
	db   $fc                                         ; $5983: $fc
	ld   [hl], c                                     ; $5984: $71
	ld   de, $1111                                   ; $5985: $11 $11 $11
	ld   de, $cf45                                   ; $5988: $11 $45 $cf
	rst  $38                                         ; $598b: $ff
	rst  $38                                         ; $598c: $ff
	rst  $38                                         ; $598d: $ff
	rst  $38                                         ; $598e: $ff
	sub  l                                           ; $598f: $95
	ld   de, $1111                                   ; $5990: $11 $11 $11
	ld   de, $7f35                                   ; $5993: $11 $35 $7f
	rst  $38                                         ; $5996: $ff
	rst  $38                                         ; $5997: $ff
	rst  $38                                         ; $5998: $ff
	rst  $38                                         ; $5999: $ff
	cp   b                                           ; $599a: $b8
	ld   de, $1111                                   ; $599b: $11 $11 $11
	ld   de, $7a14                                   ; $599e: $11 $14 $7a
	rst  $38                                         ; $59a1: $ff
	rst  $38                                         ; $59a2: $ff
	rst  $38                                         ; $59a3: $ff
	rst  $38                                         ; $59a4: $ff
	rst  $30                                         ; $59a5: $f7
	ld   h, c                                        ; $59a6: $61
	ld   de, $1111                                   ; $59a7: $11 $11 $11
	ld   de, $ff48                                   ; $59aa: $11 $48 $ff
	rst  $38                                         ; $59ad: $ff
	rst  $38                                         ; $59ae: $ff
	rst  $38                                         ; $59af: $ff
	db   $fc                                         ; $59b0: $fc
	ld   h, e                                        ; $59b1: $63
	ld   de, $1111                                   ; $59b2: $11 $11 $11
	ld   de, $af46                                   ; $59b5: $11 $46 $af
	rst  $38                                         ; $59b8: $ff
	rst  $38                                         ; $59b9: $ff
	rst  $38                                         ; $59ba: $ff
	rst  $38                                         ; $59bb: $ff
	ld   [hl], l                                     ; $59bc: $75
	ld   de, $1111                                   ; $59bd: $11 $11 $11
	ld   de, $7e16                                   ; $59c0: $11 $16 $7e
	rst  $38                                         ; $59c3: $ff
	rst  $38                                         ; $59c4: $ff
	rst  $38                                         ; $59c5: $ff
	rst  $38                                         ; $59c6: $ff
	push bc                                          ; $59c7: $c5
	ld   d, c                                        ; $59c8: $51
	ld   de, $1111                                   ; $59c9: $11 $11 $11
	dec  d                                           ; $59cc: $15
	ld   a, e                                        ; $59cd: $7b
	rst  $38                                         ; $59ce: $ff
	rst  $38                                         ; $59cf: $ff
	rst  $38                                         ; $59d0: $ff
	rst  $38                                         ; $59d1: $ff
	push af                                          ; $59d2: $f5
	ld   h, c                                        ; $59d3: $61
	ld   de, $1111                                   ; $59d4: $11 $11 $11
	ld   de, $ef69                                   ; $59d7: $11 $69 $ef
	rst  $38                                         ; $59da: $ff
	rst  $38                                         ; $59db: $ff
	rst  $38                                         ; $59dc: $ff
	db   $fc                                         ; $59dd: $fc
	ld   d, h                                        ; $59de: $54
	ld   de, $1111                                   ; $59df: $11 $11 $11
	ld   de, $af78                                   ; $59e2: $11 $78 $af
	rst  $38                                         ; $59e5: $ff
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	rst  $38                                         ; $59e8: $ff
	ld   d, [hl]                                     ; $59e9: $56
	ld   de, $1111                                   ; $59ea: $11 $11 $11
	ld   de, $ad19                                   ; $59ed: $11 $19 $ad
	rst  $38                                         ; $59f0: $ff
	rst  $38                                         ; $59f1: $ff
	rst  $38                                         ; $59f2: $ff
	rst  $38                                         ; $59f3: $ff
	sub  l                                           ; $59f4: $95
	ld   sp, $1111                                   ; $59f5: $31 $11 $11
	ld   de, $9a18                                   ; $59f8: $11 $18 $9a
	rst  $38                                         ; $59fb: $ff
	rst  $38                                         ; $59fc: $ff
	rst  $38                                         ; $59fd: $ff
	rst  $38                                         ; $59fe: $ff
	ldh  [c], a                                      ; $59ff: $e2
	ld   h, c                                        ; $5a00: $61
	ld   de, $1111                                   ; $5a01: $11 $11 $11
	ld   [de], a                                     ; $5a04: $12
	xor  b                                           ; $5a05: $a8
	rst  $38                                         ; $5a06: $ff
	rst  $38                                         ; $5a07: $ff
	rst  $38                                         ; $5a08: $ff
	rst  $38                                         ; $5a09: $ff
	di                                               ; $5a0a: $f3
	ld   d, e                                        ; $5a0b: $53
	ld   de, $1111                                   ; $5a0c: $11 $11 $11
	ld   de, $bfa7                                   ; $5a0f: $11 $a7 $bf
	rst  $38                                         ; $5a12: $ff
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	ld   a, [$1118]                                  ; $5a15: $fa $18 $11
	ld   de, $1111                                   ; $5a18: $11 $11 $11
	ld   e, h                                        ; $5a1b: $5c
	ld   l, a                                        ; $5a1c: $6f
	rst  $38                                         ; $5a1d: $ff
	rst  $38                                         ; $5a1e: $ff
	rst  $38                                         ; $5a1f: $ff
	rst  $38                                         ; $5a20: $ff
	rla                                              ; $5a21: $17
	ld   hl, $1111                                   ; $5a22: $21 $11 $11
	ld   de, $791b                                   ; $5a25: $11 $1b $79
	rst  $38                                         ; $5a28: $ff
	rst  $38                                         ; $5a29: $ff
	rst  $38                                         ; $5a2a: $ff
	rst  $38                                         ; $5a2b: $ff
	ld   [hl], c                                     ; $5a2c: $71
	and  c                                           ; $5a2d: $a1
	ld   de, $1111                                   ; $5a2e: $11 $11 $11
	dec  d                                           ; $5a31: $15
	or   h                                           ; $5a32: $b4
	rst  $38                                         ; $5a33: $ff
	rst  $38                                         ; $5a34: $ff
	rst  $38                                         ; $5a35: $ff
	rst  $38                                         ; $5a36: $ff
	ldh  a, [c]                                      ; $5a37: $f2
	add  l                                           ; $5a38: $85
	ld   de, $1111                                   ; $5a39: $11 $11 $11
	ld   de, $7f96                                   ; $5a3c: $11 $96 $7f
	cp   $ff                                         ; $5a3f: $fe $ff
	rst  $38                                         ; $5a41: $ff
	ld   hl, sp+$5a                                  ; $5a42: $f8 $5a
	ld   de, $1111                                   ; $5a44: $11 $11 $11
	ld   de, $3b18                                   ; $5a47: $11 $18 $3b
	rst  $38                                         ; $5a4a: $ff
	rst  $38                                         ; $5a4b: $ff
	rst  $38                                         ; $5a4c: $ff
	rst  $38                                         ; $5a4d: $ff
	ld   l, d                                        ; $5a4e: $6a
	and  c                                           ; $5a4f: $a1
	ld   de, $1111                                   ; $5a50: $11 $11 $11
	dec  d                                           ; $5a53: $15
	ld   b, e                                        ; $5a54: $43
	rst  $28                                         ; $5a55: $ef
	rst  $28                                         ; $5a56: $ef
	rst  $38                                         ; $5a57: $ff
	rst  $38                                         ; $5a58: $ff
	ei                                               ; $5a59: $fb
	cp   e                                           ; $5a5a: $bb
	ld   de, $1101                                   ; $5a5b: $11 $01 $11
	ld   de, $3c32                                   ; $5a5e: $11 $32 $3c
	rst  $38                                         ; $5a61: $ff
	rst  $38                                         ; $5a62: $ff
	rst  $38                                         ; $5a63: $ff
	rst  $38                                         ; $5a64: $ff
	call c, $12b6                                    ; $5a65: $dc $b6 $12
	ld   de, $1111                                   ; $5a68: $11 $11 $11
	ld   de, $bf69                                   ; $5a6b: $11 $69 $bf
	rst  $38                                         ; $5a6e: $ff
	rst  $38                                         ; $5a6f: $ff
	rst  $38                                         ; $5a70: $ff
	db   $ed                                         ; $5a71: $ed
	or   a                                           ; $5a72: $b7
	ld   b, h                                        ; $5a73: $44
	ld   bc, $1111                                   ; $5a74: $01 $11 $11
	ld   de, $9d46                                   ; $5a77: $11 $46 $9d
	rst  $28                                         ; $5a7a: $ef
	rst  $38                                         ; $5a7b: $ff
	rst  $38                                         ; $5a7c: $ff
	rst  $28                                         ; $5a7d: $ef
	jp   c, Jump_0cc_5399                            ; $5a7e: $da $99 $53

	ld   de, $1111                                   ; $5a81: $11 $11 $11
	ld   [de], a                                     ; $5a84: $12
	ld   b, [hl]                                     ; $5a85: $46
	cp   e                                           ; $5a86: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a87: $cf
	rst  $38                                         ; $5a88: $ff
	rst  $38                                         ; $5a89: $ff
	rst  $38                                         ; $5a8a: $ff
	db   $fd                                         ; $5a8b: $fd
	xor  d                                           ; $5a8c: $aa
	ld   [hl], e                                     ; $5a8d: $73
	ld   hl, $1111                                   ; $5a8e: $21 $11 $11
	ld   de, $ab36                                   ; $5a91: $11 $36 $ab
	rst  JumpTable                                         ; $5a94: $df
	rst  $38                                         ; $5a95: $ff
	rst  $38                                         ; $5a96: $ff
	rst  $38                                         ; $5a97: $ff
	db   $ec                                         ; $5a98: $ec
	xor  c                                           ; $5a99: $a9
	ld   h, e                                        ; $5a9a: $63
	ld   hl, $1111                                   ; $5a9b: $21 $11 $11
	ld   de, $7925                                   ; $5a9e: $11 $25 $79
	cp   l                                           ; $5aa1: $bd
	sbc  $fe                                         ; $5aa2: $de $fe
	rst  $38                                         ; $5aa4: $ff
	rst  $38                                         ; $5aa5: $ff
	call c, Call_0cc_6497                            ; $5aa6: $dc $97 $64
	ld   [hl+], a                                    ; $5aa9: $22
	ld   de, $2311                                   ; $5aaa: $11 $11 $23
	ld   d, [hl]                                     ; $5aad: $56
	sbc  d                                           ; $5aae: $9a
	xor  h                                           ; $5aaf: $ac
	call $dfdd                                       ; $5ab0: $cd $dd $df
	db   $db                                         ; $5ab3: $db
	cp   e                                           ; $5ab4: $bb
	sub  l                                           ; $5ab5: $95
	ld   h, l                                        ; $5ab6: $65
	inc  sp                                          ; $5ab7: $33
	ld   [hl-], a                                    ; $5ab8: $32
	inc  hl                                          ; $5ab9: $23
	ld   b, h                                        ; $5aba: $44
	ld   d, a                                        ; $5abb: $57
	adc  c                                           ; $5abc: $89
	sbc  e                                           ; $5abd: $9b
	call z, $cdcc                                    ; $5abe: $cc $cc $cd
	db   $db                                         ; $5ac1: $db
	cp   e                                           ; $5ac2: $bb
	adc  b                                           ; $5ac3: $88
	sub  a                                           ; $5ac4: $97
	ld   b, l                                        ; $5ac5: $45
	ld   d, h                                        ; $5ac6: $54
	ld   b, h                                        ; $5ac7: $44
	ld   b, l                                        ; $5ac8: $45
	ld   d, [hl]                                     ; $5ac9: $56
	adc  c                                           ; $5aca: $89
	adc  d                                           ; $5acb: $8a
	sbc  d                                           ; $5acc: $9a
	xor  h                                           ; $5acd: $ac
	xor  d                                           ; $5ace: $aa
	cp   e                                           ; $5acf: $bb
	cp   c                                           ; $5ad0: $b9
	sbc  c                                           ; $5ad1: $99
	ld   [hl], a                                     ; $5ad2: $77
	ld   h, l                                        ; $5ad3: $65
	ld   d, h                                        ; $5ad4: $54
	ld   b, h                                        ; $5ad5: $44
	ld   b, h                                        ; $5ad6: $44
	ld   d, [hl]                                     ; $5ad7: $56
	ld   a, b                                        ; $5ad8: $78
	adc  d                                           ; $5ad9: $8a
	cp   d                                           ; $5ada: $ba
	cp   e                                           ; $5adb: $bb
	cp   d                                           ; $5adc: $ba
	cp   d                                           ; $5add: $ba
	xor  c                                           ; $5ade: $a9
	add  a                                           ; $5adf: $87
	halt                                             ; $5ae0: $76
	ld   h, [hl]                                     ; $5ae1: $66
	ld   h, [hl]                                     ; $5ae2: $66
	ld   h, a                                        ; $5ae3: $67
	ld   [hl], a                                     ; $5ae4: $77
	adc  b                                           ; $5ae5: $88
	sbc  c                                           ; $5ae6: $99
	sbc  c                                           ; $5ae7: $99
	sbc  b                                           ; $5ae8: $98
	sbc  c                                           ; $5ae9: $99
	xor  c                                           ; $5aea: $a9
	sbc  c                                           ; $5aeb: $99
	sbc  b                                           ; $5aec: $98
	adc  b                                           ; $5aed: $88
	ld   [hl], a                                     ; $5aee: $77
	halt                                             ; $5aef: $76
	halt                                             ; $5af0: $76
	ld   [hl], a                                     ; $5af1: $77
	ld   h, a                                        ; $5af2: $67
	sbc  c                                           ; $5af3: $99
	adc  c                                           ; $5af4: $89
	adc  c                                           ; $5af5: $89
	sub  a                                           ; $5af6: $97
	sbc  d                                           ; $5af7: $9a
	ld   a, b                                        ; $5af8: $78
	adc  b                                           ; $5af9: $88
	adc  b                                           ; $5afa: $88
	adc  c                                           ; $5afb: $89
	adc  b                                           ; $5afc: $88
	adc  b                                           ; $5afd: $88
	add  a                                           ; $5afe: $87
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
	ld   a, b                                        ; $5b0b: $78
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
	adc  b                                           ; $5b5e: $88
	adc  b                                           ; $5b5f: $88
	adc  b                                           ; $5b60: $88
	adc  b                                           ; $5b61: $88
	adc  b                                           ; $5b62: $88
	adc  b                                           ; $5b63: $88
	adc  b                                           ; $5b64: $88
	adc  b                                           ; $5b65: $88
	adc  b                                           ; $5b66: $88
	adc  b                                           ; $5b67: $88
	adc  b                                           ; $5b68: $88
	adc  b                                           ; $5b69: $88
	adc  b                                           ; $5b6a: $88
	adc  b                                           ; $5b6b: $88
	adc  b                                           ; $5b6c: $88
	adc  b                                           ; $5b6d: $88
	adc  b                                           ; $5b6e: $88
	adc  b                                           ; $5b6f: $88
	adc  b                                           ; $5b70: $88
	adc  b                                           ; $5b71: $88
	adc  b                                           ; $5b72: $88
	adc  b                                           ; $5b73: $88
	adc  b                                           ; $5b74: $88
	adc  b                                           ; $5b75: $88
	adc  b                                           ; $5b76: $88
	adc  b                                           ; $5b77: $88
	adc  b                                           ; $5b78: $88
	adc  b                                           ; $5b79: $88
	adc  b                                           ; $5b7a: $88
	adc  b                                           ; $5b7b: $88
	adc  b                                           ; $5b7c: $88
	adc  b                                           ; $5b7d: $88
	adc  b                                           ; $5b7e: $88
	adc  b                                           ; $5b7f: $88
	adc  b                                           ; $5b80: $88
	adc  b                                           ; $5b81: $88
	adc  b                                           ; $5b82: $88
	adc  b                                           ; $5b83: $88
	adc  b                                           ; $5b84: $88
	adc  b                                           ; $5b85: $88
	adc  b                                           ; $5b86: $88
	adc  b                                           ; $5b87: $88
	adc  b                                           ; $5b88: $88
	adc  b                                           ; $5b89: $88
	adc  b                                           ; $5b8a: $88
	adc  b                                           ; $5b8b: $88
	adc  b                                           ; $5b8c: $88
	adc  b                                           ; $5b8d: $88
	adc  b                                           ; $5b8e: $88
	adc  b                                           ; $5b8f: $88
	adc  b                                           ; $5b90: $88
	adc  b                                           ; $5b91: $88
	adc  b                                           ; $5b92: $88
	adc  b                                           ; $5b93: $88
	adc  b                                           ; $5b94: $88
	adc  b                                           ; $5b95: $88
	adc  b                                           ; $5b96: $88
	adc  b                                           ; $5b97: $88
	adc  b                                           ; $5b98: $88
	adc  b                                           ; $5b99: $88
	adc  b                                           ; $5b9a: $88
	adc  b                                           ; $5b9b: $88
	adc  b                                           ; $5b9c: $88
	adc  b                                           ; $5b9d: $88
	adc  b                                           ; $5b9e: $88
	adc  b                                           ; $5b9f: $88
	adc  b                                           ; $5ba0: $88
	adc  b                                           ; $5ba1: $88
	adc  b                                           ; $5ba2: $88
	adc  b                                           ; $5ba3: $88
	adc  b                                           ; $5ba4: $88
	adc  b                                           ; $5ba5: $88
	adc  b                                           ; $5ba6: $88
	adc  b                                           ; $5ba7: $88
	adc  b                                           ; $5ba8: $88
	adc  b                                           ; $5ba9: $88
	adc  b                                           ; $5baa: $88
	adc  b                                           ; $5bab: $88
	adc  b                                           ; $5bac: $88
	adc  b                                           ; $5bad: $88
	adc  b                                           ; $5bae: $88
	adc  b                                           ; $5baf: $88
	adc  b                                           ; $5bb0: $88
	adc  b                                           ; $5bb1: $88
	adc  b                                           ; $5bb2: $88
	adc  b                                           ; $5bb3: $88
	adc  b                                           ; $5bb4: $88
	adc  b                                           ; $5bb5: $88
	adc  b                                           ; $5bb6: $88
	adc  b                                           ; $5bb7: $88
	adc  b                                           ; $5bb8: $88
	adc  b                                           ; $5bb9: $88
	adc  b                                           ; $5bba: $88
	adc  b                                           ; $5bbb: $88
	adc  b                                           ; $5bbc: $88
	adc  b                                           ; $5bbd: $88
	adc  b                                           ; $5bbe: $88
	adc  b                                           ; $5bbf: $88
	adc  b                                           ; $5bc0: $88
	adc  b                                           ; $5bc1: $88
	adc  b                                           ; $5bc2: $88
	adc  b                                           ; $5bc3: $88
	adc  b                                           ; $5bc4: $88
	adc  b                                           ; $5bc5: $88
	adc  b                                           ; $5bc6: $88
	adc  b                                           ; $5bc7: $88
	adc  b                                           ; $5bc8: $88
	adc  b                                           ; $5bc9: $88
	adc  b                                           ; $5bca: $88
	adc  b                                           ; $5bcb: $88
	adc  b                                           ; $5bcc: $88
	adc  b                                           ; $5bcd: $88
	adc  b                                           ; $5bce: $88
	adc  b                                           ; $5bcf: $88
	adc  b                                           ; $5bd0: $88
	adc  b                                           ; $5bd1: $88
	adc  b                                           ; $5bd2: $88
	adc  b                                           ; $5bd3: $88
	adc  b                                           ; $5bd4: $88
	adc  b                                           ; $5bd5: $88
	adc  b                                           ; $5bd6: $88
	adc  b                                           ; $5bd7: $88
	adc  b                                           ; $5bd8: $88
	adc  b                                           ; $5bd9: $88
	adc  b                                           ; $5bda: $88
	adc  b                                           ; $5bdb: $88
	adc  b                                           ; $5bdc: $88
	adc  b                                           ; $5bdd: $88
	adc  b                                           ; $5bde: $88
	adc  b                                           ; $5bdf: $88
	adc  b                                           ; $5be0: $88
	adc  b                                           ; $5be1: $88
	adc  b                                           ; $5be2: $88
	adc  b                                           ; $5be3: $88
	adc  b                                           ; $5be4: $88
	adc  b                                           ; $5be5: $88
	adc  b                                           ; $5be6: $88
	adc  b                                           ; $5be7: $88
	adc  b                                           ; $5be8: $88
	adc  b                                           ; $5be9: $88
	adc  b                                           ; $5bea: $88
	adc  b                                           ; $5beb: $88
	adc  b                                           ; $5bec: $88
	adc  b                                           ; $5bed: $88
	adc  b                                           ; $5bee: $88
	adc  b                                           ; $5bef: $88
	adc  b                                           ; $5bf0: $88
	adc  b                                           ; $5bf1: $88
	adc  b                                           ; $5bf2: $88
	adc  b                                           ; $5bf3: $88
	adc  b                                           ; $5bf4: $88
	adc  b                                           ; $5bf5: $88
	adc  b                                           ; $5bf6: $88
	adc  b                                           ; $5bf7: $88
	adc  b                                           ; $5bf8: $88
	adc  b                                           ; $5bf9: $88
	adc  b                                           ; $5bfa: $88
	adc  b                                           ; $5bfb: $88
	adc  b                                           ; $5bfc: $88
	adc  b                                           ; $5bfd: $88
	adc  b                                           ; $5bfe: $88
	adc  b                                           ; $5bff: $88
	adc  b                                           ; $5c00: $88
	adc  b                                           ; $5c01: $88
	adc  b                                           ; $5c02: $88
	adc  b                                           ; $5c03: $88
	adc  b                                           ; $5c04: $88
	adc  b                                           ; $5c05: $88
	adc  b                                           ; $5c06: $88
	adc  b                                           ; $5c07: $88
	adc  b                                           ; $5c08: $88
	adc  b                                           ; $5c09: $88
	adc  b                                           ; $5c0a: $88
	adc  b                                           ; $5c0b: $88
	adc  b                                           ; $5c0c: $88
	adc  b                                           ; $5c0d: $88
	adc  b                                           ; $5c0e: $88
	adc  b                                           ; $5c0f: $88
	adc  b                                           ; $5c10: $88
	adc  b                                           ; $5c11: $88
	adc  b                                           ; $5c12: $88
	adc  b                                           ; $5c13: $88
	adc  b                                           ; $5c14: $88
	adc  b                                           ; $5c15: $88
	adc  b                                           ; $5c16: $88
	adc  b                                           ; $5c17: $88
	sbc  c                                           ; $5c18: $99
	add  [hl]                                        ; $5c19: $86
	ld   a, c                                        ; $5c1a: $79
	add  a                                           ; $5c1b: $87
	ld   [hl], a                                     ; $5c1c: $77
	sbc  c                                           ; $5c1d: $99
	ld   [hl], a                                     ; $5c1e: $77
	sbc  d                                           ; $5c1f: $9a
	add  a                                           ; $5c20: $87
	ld   a, c                                        ; $5c21: $79
	sub  a                                           ; $5c22: $97
	ld   l, b                                        ; $5c23: $68
	sbc  c                                           ; $5c24: $99
	ld   [hl], a                                     ; $5c25: $77
	adc  d                                           ; $5c26: $8a
	add  [hl]                                        ; $5c27: $86
	ld   l, c                                        ; $5c28: $69
	cp   b                                           ; $5c29: $b8
	ld   h, [hl]                                     ; $5c2a: $66
	sbc  d                                           ; $5c2b: $9a
	halt                                             ; $5c2c: $76
	adc  d                                           ; $5c2d: $8a
	sub  a                                           ; $5c2e: $97
	ld   l, b                                        ; $5c2f: $68
	xor  c                                           ; $5c30: $a9
	ld   a, c                                        ; $5c31: $79
	and  a                                           ; $5c32: $a7
	ld   l, d                                        ; $5c33: $6a
	and  [hl]                                        ; $5c34: $a6
	ld   l, b                                        ; $5c35: $68
	sbc  c                                           ; $5c36: $99
	add  [hl]                                        ; $5c37: $86
	ld   a, c                                        ; $5c38: $79
	adc  c                                           ; $5c39: $89
	sub  a                                           ; $5c3a: $97
	ld   a, d                                        ; $5c3b: $7a
	sub  [hl]                                        ; $5c3c: $96
	ld   d, [hl]                                     ; $5c3d: $56
	sbc  c                                           ; $5c3e: $99
	sub  a                                           ; $5c3f: $97
	ld   a, c                                        ; $5c40: $79
	sbc  c                                           ; $5c41: $99
	ld   a, b                                        ; $5c42: $78
	sbc  d                                           ; $5c43: $9a
	add  l                                           ; $5c44: $85
	ld   d, a                                        ; $5c45: $57
	sbc  d                                           ; $5c46: $9a
	add  a                                           ; $5c47: $87
	ld   a, d                                        ; $5c48: $7a
	sub  [hl]                                        ; $5c49: $96
	ld   l, c                                        ; $5c4a: $69
	xor  b                                           ; $5c4b: $a8
	halt                                             ; $5c4c: $76
	adc  h                                           ; $5c4d: $8c
	sub  h                                           ; $5c4e: $94
	scf                                              ; $5c4f: $37
	cp   h                                           ; $5c50: $bc
	and  [hl]                                        ; $5c51: $a6
	ld   e, b                                        ; $5c52: $58
	cp   c                                           ; $5c53: $b9
	ld   b, h                                        ; $5c54: $44
	ld   h, h                                        ; $5c55: $64
	adc  a                                           ; $5c56: $8f
	ret  z                                           ; $5c57: $c8

	cp   l                                           ; $5c58: $bd
	sub  h                                           ; $5c59: $94
	ld   h, $ee                                      ; $5c5a: $26 $ee
	ld   [hl], h                                     ; $5c5c: $74
	inc  [hl]                                        ; $5c5d: $34
	ld   b, [hl]                                     ; $5c5e: $46
	ld   a, c                                        ; $5c5f: $79
	ld   d, h                                        ; $5c60: $54
	adc  h                                           ; $5c61: $8c
	db   $db                                         ; $5c62: $db
	ld   h, c                                        ; $5c63: $61
	adc  a                                           ; $5c64: $8f
	ld   a, [$2711]                                  ; $5c65: $fa $11 $27
	and  a                                           ; $5c68: $a7
	adc  d                                           ; $5c69: $8a
	ld   [hl], h                                     ; $5c6a: $74
	ld   b, [hl]                                     ; $5c6b: $46
	ld   h, a                                        ; $5c6c: $67
	xor  l                                           ; $5c6d: $ad
	rst  $30                                         ; $5c6e: $f7
	ld   l, [hl]                                     ; $5c6f: $6e
	rst  $30                                         ; $5c70: $f7
	dec  d                                           ; $5c71: $15
	db   $dd                                         ; $5c72: $dd
	ld   [hl], h                                     ; $5c73: $74
	xor  c                                           ; $5c74: $a9
	ld   de, $e55d                                   ; $5c75: $11 $5d $e5
	ld   e, d                                        ; $5c78: $5a
	cp   e                                           ; $5c79: $bb
	ld   b, d                                        ; $5c7a: $42
	xor  a                                           ; $5c7b: $af
	db   $fd                                         ; $5c7c: $fd
	ld   [hl], e                                     ; $5c7d: $73
	ld   [hl-], a                                    ; $5c7e: $32
	ld   c, l                                        ; $5c7f: $4d
	ld   sp, hl                                      ; $5c80: $f9
	ld   [hl+], a                                    ; $5c81: $22
	adc  [hl]                                        ; $5c82: $8e
	db   $db                                         ; $5c83: $db
	cp   d                                           ; $5c84: $ba
	and  l                                           ; $5c85: $a5
	dec  [hl]                                        ; $5c86: $35
	ld   d, e                                        ; $5c87: $53
	ld   d, a                                        ; $5c88: $57
	ld   b, c                                        ; $5c89: $41
	inc  d                                           ; $5c8a: $14
	ld   l, b                                        ; $5c8b: $68
	ld   b, c                                        ; $5c8c: $41
	adc  l                                           ; $5c8d: $8d
	xor  d                                           ; $5c8e: $aa
	sbc  e                                           ; $5c8f: $9b
	db   $fd                                         ; $5c90: $fd
	scf                                              ; $5c91: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c92: $cf
	sub  $47                                         ; $5c93: $d6 $47
	cp   d                                           ; $5c95: $ba
	ld   [hl], h                                     ; $5c96: $74
	ld   [hl+], a                                    ; $5c97: $22
	inc  de                                          ; $5c98: $13
	add  a                                           ; $5c99: $87
	ld   b, a                                        ; $5c9a: $47
	cp   c                                           ; $5c9b: $b9
	ld   d, h                                        ; $5c9c: $54
	adc  h                                           ; $5c9d: $8c
	db   $ed                                         ; $5c9e: $ed
	cp   b                                           ; $5c9f: $b8
	adc  l                                           ; $5ca0: $8d
	bit  6, [hl]                                     ; $5ca1: $cb $76
	adc  d                                           ; $5ca3: $8a
	and  h                                           ; $5ca4: $a4
	dec  d                                           ; $5ca5: $15
	sbc  b                                           ; $5ca6: $98
	ld   l, c                                        ; $5ca7: $69
	xor  $a8                                         ; $5ca8: $ee $a8
	ld   b, c                                        ; $5caa: $41
	inc  sp                                          ; $5cab: $33
	ld   de, $fbaf                                   ; $5cac: $11 $af $fb
	inc  sp                                          ; $5caf: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cb0: $cf
	set  5, a                                        ; $5cb1: $cb $ef
	cp   $d9                                         ; $5cb3: $fe $d9
	ld   hl, $6633                                   ; $5cb5: $21 $33 $66
	sub  a                                           ; $5cb8: $97
	ld   [hl+], a                                    ; $5cb9: $22
	ld   de, $7539                                   ; $5cba: $11 $39 $75
	sub  l                                           ; $5cbd: $95
	scf                                              ; $5cbe: $37
	and  a                                           ; $5cbf: $a7
	ld   a, e                                        ; $5cc0: $7b
	rst  $38                                         ; $5cc1: $ff
	cp   l                                           ; $5cc2: $bd
	rst  $38                                         ; $5cc3: $ff
	ei                                               ; $5cc4: $fb
	call z, $13d5                                    ; $5cc5: $cc $d5 $13
	adc  b                                           ; $5cc8: $88
	ld   sp, $1111                                   ; $5cc9: $31 $11 $11
	ld   de, $8417                                   ; $5ccc: $11 $17 $84
	xor  a                                           ; $5ccf: $af
	rst  $38                                         ; $5cd0: $ff
	rst  $38                                         ; $5cd1: $ff
	rst  $38                                         ; $5cd2: $ff
	rst  $38                                         ; $5cd3: $ff
	rst  $38                                         ; $5cd4: $ff
	cp   c                                           ; $5cd5: $b9
	ld   b, l                                        ; $5cd6: $45
	ld   d, c                                        ; $5cd7: $51
	ld   de, $1111                                   ; $5cd8: $11 $11 $11
	ld   de, $1111                                   ; $5cdb: $11 $11 $11
	ld   c, l                                        ; $5cde: $4d
	cp   $ff                                         ; $5cdf: $fe $ff
	rst  $38                                         ; $5ce1: $ff
	rst  $38                                         ; $5ce2: $ff
	rst  $38                                         ; $5ce3: $ff
	rst  $38                                         ; $5ce4: $ff
	ei                                               ; $5ce5: $fb
	ld   d, d                                        ; $5ce6: $52
	ld   de, $1111                                   ; $5ce7: $11 $11 $11
	ld   de, $1111                                   ; $5cea: $11 $11 $11
	ld   de, $ff18                                   ; $5ced: $11 $18 $ff
	rst  $38                                         ; $5cf0: $ff
	rst  $38                                         ; $5cf1: $ff
	rst  $38                                         ; $5cf2: $ff
	rst  $38                                         ; $5cf3: $ff
	rst  $38                                         ; $5cf4: $ff
	rst  $38                                         ; $5cf5: $ff
	push af                                          ; $5cf6: $f5
	ld   de, $1111                                   ; $5cf7: $11 $11 $11
	ld   de, $1111                                   ; $5cfa: $11 $11 $11
	ld   de, $ef24                                   ; $5cfd: $11 $24 $ef
	rst  $38                                         ; $5d00: $ff
	rst  $38                                         ; $5d01: $ff
	rst  $38                                         ; $5d02: $ff
	rst  $38                                         ; $5d03: $ff
	rst  $38                                         ; $5d04: $ff
	rst  $38                                         ; $5d05: $ff
	ret  z                                           ; $5d06: $c8

	ld   de, $1111                                   ; $5d07: $11 $11 $11
	ld   de, $1111                                   ; $5d0a: $11 $11 $11
	ld   de, $8e15                                   ; $5d0d: $11 $15 $8e
	rst  $38                                         ; $5d10: $ff
	rst  $38                                         ; $5d11: $ff
	rst  $38                                         ; $5d12: $ff
	rst  $38                                         ; $5d13: $ff
	rst  $38                                         ; $5d14: $ff
	rst  $38                                         ; $5d15: $ff
	ld   a, [$1121]                                  ; $5d16: $fa $21 $11
	ld   de, $1111                                   ; $5d19: $11 $11 $11
	ld   de, $1611                                   ; $5d1c: $11 $11 $16
	rst  $38                                         ; $5d1f: $ff
	rst  $38                                         ; $5d20: $ff
	rst  $38                                         ; $5d21: $ff
	rst  $38                                         ; $5d22: $ff
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	rst  $38                                         ; $5d25: $ff
	rst  $20                                         ; $5d26: $e7
	ld   hl, $1111                                   ; $5d27: $21 $11 $11
	ld   de, $1111                                   ; $5d2a: $11 $11 $11
	ld   de, $ff17                                   ; $5d2d: $11 $17 $ff
	rst  $38                                         ; $5d30: $ff
	rst  $38                                         ; $5d31: $ff
	rst  $38                                         ; $5d32: $ff
	rst  $38                                         ; $5d33: $ff
	rst  $38                                         ; $5d34: $ff
	rst  $38                                         ; $5d35: $ff
	and  d                                           ; $5d36: $a2
	ld   de, $1111                                   ; $5d37: $11 $11 $11
	ld   de, $1111                                   ; $5d3a: $11 $11 $11
	inc  d                                           ; $5d3d: $14
	xor  h                                           ; $5d3e: $ac
	rst  $38                                         ; $5d3f: $ff
	rst  $38                                         ; $5d40: $ff
	rst  $38                                         ; $5d41: $ff
	rst  $38                                         ; $5d42: $ff
	rst  $38                                         ; $5d43: $ff
	rst  $38                                         ; $5d44: $ff
	db   $fc                                         ; $5d45: $fc
	ld   d, c                                        ; $5d46: $51
	ld   de, $1111                                   ; $5d47: $11 $11 $11
	ld   de, $1111                                   ; $5d4a: $11 $11 $11
	add  hl, de                                      ; $5d4d: $19
	rst  $38                                         ; $5d4e: $ff
	rst  $38                                         ; $5d4f: $ff
	rst  $38                                         ; $5d50: $ff
	rst  $38                                         ; $5d51: $ff
	rst  $38                                         ; $5d52: $ff
	rst  $38                                         ; $5d53: $ff
	rst  $38                                         ; $5d54: $ff
	and  c                                           ; $5d55: $a1
	ld   de, $1111                                   ; $5d56: $11 $11 $11
	ld   de, $1111                                   ; $5d59: $11 $11 $11
	inc  e                                           ; $5d5c: $1c
	rst  $38                                         ; $5d5d: $ff
	rst  $38                                         ; $5d5e: $ff
	rst  $38                                         ; $5d5f: $ff
	rst  $38                                         ; $5d60: $ff
	rst  $38                                         ; $5d61: $ff
	rst  $38                                         ; $5d62: $ff
	rst  $38                                         ; $5d63: $ff
	ld   h, c                                        ; $5d64: $61
	ld   de, $1111                                   ; $5d65: $11 $11 $11
	ld   de, $1111                                   ; $5d68: $11 $11 $11
	ld   l, a                                        ; $5d6b: $6f
	rst  $38                                         ; $5d6c: $ff
	rst  $38                                         ; $5d6d: $ff
	rst  $38                                         ; $5d6e: $ff
	rst  $38                                         ; $5d6f: $ff
	rst  $38                                         ; $5d70: $ff
	rst  $38                                         ; $5d71: $ff
	db   $fd                                         ; $5d72: $fd
	ld   de, $1111                                   ; $5d73: $11 $11 $11
	ld   de, $1111                                   ; $5d76: $11 $11 $11
	inc  de                                          ; $5d79: $13
	rst  $38                                         ; $5d7a: $ff
	rst  $38                                         ; $5d7b: $ff
	rst  $38                                         ; $5d7c: $ff
	rst  $38                                         ; $5d7d: $ff
	rst  $38                                         ; $5d7e: $ff
	rst  $38                                         ; $5d7f: $ff
	rst  $38                                         ; $5d80: $ff
	and  c                                           ; $5d81: $a1
	ld   de, $1111                                   ; $5d82: $11 $11 $11
	ld   de, $1411                                   ; $5d85: $11 $11 $14
	rst  JumpTable                                         ; $5d88: $df
	rst  $38                                         ; $5d89: $ff
	rst  $38                                         ; $5d8a: $ff
	rst  $38                                         ; $5d8b: $ff
	rst  $38                                         ; $5d8c: $ff
	rst  $38                                         ; $5d8d: $ff
	rst  $38                                         ; $5d8e: $ff
	push bc                                          ; $5d8f: $c5
	ld   de, $1111                                   ; $5d90: $11 $11 $11
	ld   de, $1111                                   ; $5d93: $11 $11 $11
	ld   a, a                                        ; $5d96: $7f
	rst  $38                                         ; $5d97: $ff
	rst  $38                                         ; $5d98: $ff
	rst  $38                                         ; $5d99: $ff
	rst  $38                                         ; $5d9a: $ff
	rst  $38                                         ; $5d9b: $ff
	rst  $38                                         ; $5d9c: $ff
	ld   hl, sp+$11                                  ; $5d9d: $f8 $11
	ld   de, $1111                                   ; $5d9f: $11 $11 $11
	ld   de, $5f11                                   ; $5da2: $11 $11 $5f
	rst  $38                                         ; $5da5: $ff
	rst  $38                                         ; $5da6: $ff
	rst  $38                                         ; $5da7: $ff
	rst  $38                                         ; $5da8: $ff
	rst  $38                                         ; $5da9: $ff
	rst  $38                                         ; $5daa: $ff
	ld   hl, sp+$11                                  ; $5dab: $f8 $11
	ld   de, $1111                                   ; $5dad: $11 $11 $11
	ld   de, $4c11                                   ; $5db0: $11 $11 $4c
	rst  $38                                         ; $5db3: $ff
	rst  $38                                         ; $5db4: $ff
	rst  $38                                         ; $5db5: $ff
	rst  $38                                         ; $5db6: $ff
	rst  $38                                         ; $5db7: $ff
	rst  $38                                         ; $5db8: $ff
	ei                                               ; $5db9: $fb
	ld   de, $1111                                   ; $5dba: $11 $11 $11
	ld   de, $1111                                   ; $5dbd: $11 $11 $11
	dec  de                                          ; $5dc0: $1b
	rst  $38                                         ; $5dc1: $ff
	rst  $38                                         ; $5dc2: $ff
	rst  $38                                         ; $5dc3: $ff
	rst  $38                                         ; $5dc4: $ff
	rst  $38                                         ; $5dc5: $ff
	rst  $38                                         ; $5dc6: $ff
	ei                                               ; $5dc7: $fb
	ld   de, $1111                                   ; $5dc8: $11 $11 $11
	ld   de, $1111                                   ; $5dcb: $11 $11 $11
	ld   a, $ff                                      ; $5dce: $3e $ff
	rst  $38                                         ; $5dd0: $ff
	rst  $38                                         ; $5dd1: $ff
	rst  $38                                         ; $5dd2: $ff
	rst  $38                                         ; $5dd3: $ff
	rst  $38                                         ; $5dd4: $ff
	jp   hl                                          ; $5dd5: $e9


	ld   de, $1111                                   ; $5dd6: $11 $11 $11
	ld   de, $1111                                   ; $5dd9: $11 $11 $11
	ld   c, a                                        ; $5ddc: $4f
	rst  $38                                         ; $5ddd: $ff
	rst  $38                                         ; $5dde: $ff
	rst  $38                                         ; $5ddf: $ff
	rst  $38                                         ; $5de0: $ff
	rst  $38                                         ; $5de1: $ff
	rst  $38                                         ; $5de2: $ff
	rst  $20                                         ; $5de3: $e7
	ld   de, $1111                                   ; $5de4: $11 $11 $11
	ld   de, $1111                                   ; $5de7: $11 $11 $11
	ld   l, a                                        ; $5dea: $6f
	rst  $38                                         ; $5deb: $ff
	rst  $38                                         ; $5dec: $ff
	rst  $38                                         ; $5ded: $ff
	rst  $38                                         ; $5dee: $ff
	rst  $38                                         ; $5def: $ff
	rst  $38                                         ; $5df0: $ff
	ldh  [c], a                                      ; $5df1: $e2
	ld   de, $1111                                   ; $5df2: $11 $11 $11
	ld   de, $1311                                   ; $5df5: $11 $11 $13
	rst  $28                                         ; $5df8: $ef
	rst  $38                                         ; $5df9: $ff
	rst  $38                                         ; $5dfa: $ff
	rst  $38                                         ; $5dfb: $ff
	rst  $38                                         ; $5dfc: $ff
	rst  $38                                         ; $5dfd: $ff
	cp   $91                                         ; $5dfe: $fe $91
	ld   de, $1111                                   ; $5e00: $11 $11 $11
	ld   de, $1811                                   ; $5e03: $11 $11 $18
	rst  $38                                         ; $5e06: $ff
	rst  $38                                         ; $5e07: $ff
	rst  $38                                         ; $5e08: $ff
	rst  $38                                         ; $5e09: $ff
	rst  $38                                         ; $5e0a: $ff
	rst  $38                                         ; $5e0b: $ff
	jp   hl                                          ; $5e0c: $e9


	ld   de, $1111                                   ; $5e0d: $11 $11 $11
	ld   de, $1311                                   ; $5e10: $11 $11 $13
	ld   a, a                                        ; $5e13: $7f
	rst  $38                                         ; $5e14: $ff
	rst  $38                                         ; $5e15: $ff
	rst  $38                                         ; $5e16: $ff
	rst  $38                                         ; $5e17: $ff
	rst  $38                                         ; $5e18: $ff
	db   $fd                                         ; $5e19: $fd
	and  e                                           ; $5e1a: $a3
	ld   de, $1111                                   ; $5e1b: $11 $11 $11
	ld   de, $3911                                   ; $5e1e: $11 $11 $39
	rst  $38                                         ; $5e21: $ff
	rst  $38                                         ; $5e22: $ff
	rst  $38                                         ; $5e23: $ff
	rst  $38                                         ; $5e24: $ff
	rst  $38                                         ; $5e25: $ff
	rst  $38                                         ; $5e26: $ff
	jp   z, $1141                                    ; $5e27: $ca $41 $11

	ld   de, $1111                                   ; $5e2a: $11 $11 $11
	ld   [de], a                                     ; $5e2d: $12
	adc  a                                           ; $5e2e: $8f
	rst  $38                                         ; $5e2f: $ff
	rst  $38                                         ; $5e30: $ff
	rst  $38                                         ; $5e31: $ff
	rst  $38                                         ; $5e32: $ff
	rst  $38                                         ; $5e33: $ff
	ld   a, [$1185]                                  ; $5e34: $fa $85 $11
	ld   de, $1111                                   ; $5e37: $11 $11 $11
	ld   de, $ff49                                   ; $5e3a: $11 $49 $ff
	rst  $38                                         ; $5e3d: $ff
	rst  $38                                         ; $5e3e: $ff
	rst  $38                                         ; $5e3f: $ff
	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	and  a                                           ; $5e42: $a7
	ld   d, c                                        ; $5e43: $51
	ld   de, $1111                                   ; $5e44: $11 $11 $11
	ld   de, $af14                                   ; $5e47: $11 $14 $af
	rst  $38                                         ; $5e4a: $ff
	rst  $38                                         ; $5e4b: $ff
	rst  $38                                         ; $5e4c: $ff
	rst  $38                                         ; $5e4d: $ff
	rst  $38                                         ; $5e4e: $ff
	ei                                               ; $5e4f: $fb
	ld   h, h                                        ; $5e50: $64
	ld   de, $1111                                   ; $5e51: $11 $11 $11
	ld   de, $2a11                                   ; $5e54: $11 $11 $2a
	rst  $38                                         ; $5e57: $ff
	rst  $38                                         ; $5e58: $ff
	rst  $38                                         ; $5e59: $ff
	rst  $38                                         ; $5e5a: $ff
	rst  $38                                         ; $5e5b: $ff
	rst  $38                                         ; $5e5c: $ff
	or   a                                           ; $5e5d: $b7
	ld   b, c                                        ; $5e5e: $41
	ld   de, $1111                                   ; $5e5f: $11 $11 $11
	ld   de, $af14                                   ; $5e62: $11 $14 $af
	rst  $38                                         ; $5e65: $ff
	rst  $38                                         ; $5e66: $ff
	rst  $38                                         ; $5e67: $ff
	rst  $38                                         ; $5e68: $ff
	rst  $38                                         ; $5e69: $ff
	ei                                               ; $5e6a: $fb
	ld   h, h                                        ; $5e6b: $64
	ld   de, $1111                                   ; $5e6c: $11 $11 $11
	ld   de, $2811                                   ; $5e6f: $11 $11 $28
	rst  $28                                         ; $5e72: $ef
	rst  $38                                         ; $5e73: $ff
	rst  $38                                         ; $5e74: $ff
	rst  $38                                         ; $5e75: $ff
	rst  $38                                         ; $5e76: $ff
	rst  $38                                         ; $5e77: $ff
	sub  $41                                         ; $5e78: $d6 $41
	ld   de, $1111                                   ; $5e7a: $11 $11 $11
	ld   de, $3611                                   ; $5e7d: $11 $11 $36
	rst  $28                                         ; $5e80: $ef
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	rst  $38                                         ; $5e83: $ff
	rst  $38                                         ; $5e84: $ff
	rst  $38                                         ; $5e85: $ff
	xor  c                                           ; $5e86: $a9
	ld   b, c                                        ; $5e87: $41
	ld   de, $1111                                   ; $5e88: $11 $11 $11
	ld   de, $1311                                   ; $5e8b: $11 $11 $13
	adc  h                                           ; $5e8e: $8c
	rst  $38                                         ; $5e8f: $ff
	rst  $38                                         ; $5e90: $ff
	rst  $38                                         ; $5e91: $ff
	rst  $38                                         ; $5e92: $ff
	rst  $38                                         ; $5e93: $ff
	jp   hl                                          ; $5e94: $e9


	ld   h, l                                        ; $5e95: $65
	ld   b, e                                        ; $5e96: $43
	inc  sp                                          ; $5e97: $33
	ld   sp, $3312                                   ; $5e98: $31 $12 $33
	ld   [hl-], a                                    ; $5e9b: $32
	ld   de, $3423                                   ; $5e9c: $11 $23 $34
	ld   l, h                                        ; $5e9f: $6c
	rst  $38                                         ; $5ea0: $ff
	rst  $38                                         ; $5ea1: $ff
	rst  $38                                         ; $5ea2: $ff
	db   $fd                                         ; $5ea3: $fd
	xor  b                                           ; $5ea4: $a8
	xor  e                                           ; $5ea5: $ab
	adc  e                                           ; $5ea6: $8b
	and  a                                           ; $5ea7: $a7
	ld   h, d                                        ; $5ea8: $62
	inc  hl                                          ; $5ea9: $23
	ld   de, $1111                                   ; $5eaa: $11 $11 $11
	ld   de, $9e14                                   ; $5ead: $11 $14 $9e
	rst  $38                                         ; $5eb0: $ff
	rst  $38                                         ; $5eb1: $ff
	rst  $38                                         ; $5eb2: $ff
	rst  $38                                         ; $5eb3: $ff
	db   $db                                         ; $5eb4: $db
	rst  ToBoot                                         ; $5eb5: $c7
	ld   b, l                                        ; $5eb6: $45
	ld   sp, $1111                                   ; $5eb7: $31 $11 $11
	ld   de, $1111                                   ; $5eba: $11 $11 $11
	ld   b, [hl]                                     ; $5ebd: $46
	sbc  a                                           ; $5ebe: $9f
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	cp   $b6                                         ; $5ec3: $fe $b6
	ld   de, $1111                                   ; $5ec5: $11 $11 $11
	ld   de, $1111                                   ; $5ec8: $11 $11 $11
	ld   [hl], $9d                                   ; $5ecb: $36 $9d
	rst  $38                                         ; $5ecd: $ff
	rst  $38                                         ; $5ece: $ff
	rst  $38                                         ; $5ecf: $ff
	rst  $38                                         ; $5ed0: $ff
	rst  $38                                         ; $5ed1: $ff
	jp   z, $1181                                    ; $5ed2: $ca $81 $11

	ld   de, $1111                                   ; $5ed5: $11 $11 $11
	ld   de, $9c15                                   ; $5ed8: $11 $15 $9c
	rst  $38                                         ; $5edb: $ff
	rst  $38                                         ; $5edc: $ff
	rst  $38                                         ; $5edd: $ff
	rst  $38                                         ; $5ede: $ff
	rst  $38                                         ; $5edf: $ff
	ei                                               ; $5ee0: $fb
	ld   [hl], d                                     ; $5ee1: $72
	ld   de, $1111                                   ; $5ee2: $11 $11 $11
	ld   de, $1211                                   ; $5ee5: $11 $11 $12
	xor  [hl]                                        ; $5ee8: $ae
	rst  $38                                         ; $5ee9: $ff
	rst  $38                                         ; $5eea: $ff
	rst  $38                                         ; $5eeb: $ff
	rst  $38                                         ; $5eec: $ff
	rst  $38                                         ; $5eed: $ff
	db   $fc                                         ; $5eee: $fc
	add  e                                           ; $5eef: $83
	ld   de, $1111                                   ; $5ef0: $11 $11 $11
	ld   de, $1411                                   ; $5ef3: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ef6: $cf
	rst  $38                                         ; $5ef7: $ff
	rst  $38                                         ; $5ef8: $ff
	rst  $38                                         ; $5ef9: $ff
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	ld   a, [$1151]                                  ; $5efc: $fa $51 $11
	ld   de, $1111                                   ; $5eff: $11 $11 $11
	ld   de, $ff28                                   ; $5f02: $11 $28 $ff
	rst  $38                                         ; $5f05: $ff
	rst  $38                                         ; $5f06: $ff
	rst  $38                                         ; $5f07: $ff
	rst  $38                                         ; $5f08: $ff
	rst  $38                                         ; $5f09: $ff
	and  $41                                         ; $5f0a: $e6 $41
	ld   de, $1111                                   ; $5f0c: $11 $11 $11
	ld   de, $6e11                                   ; $5f0f: $11 $11 $6e
	rst  $38                                         ; $5f12: $ff
	rst  $38                                         ; $5f13: $ff
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	rst  $38                                         ; $5f16: $ff
	rst  $38                                         ; $5f17: $ff
	ld   [hl], e                                     ; $5f18: $73
	ld   de, $1111                                   ; $5f19: $11 $11 $11
	ld   de, $1611                                   ; $5f1c: $11 $11 $16
	rst  JumpTable                                         ; $5f1f: $df
	rst  $38                                         ; $5f20: $ff
	rst  $38                                         ; $5f21: $ff
	rst  $38                                         ; $5f22: $ff
	rst  $38                                         ; $5f23: $ff
	rst  $38                                         ; $5f24: $ff
	ld   sp, hl                                      ; $5f25: $f9
	ld   sp, $1111                                   ; $5f26: $31 $11 $11
	ld   de, $1111                                   ; $5f29: $11 $11 $11
	ld   a, a                                        ; $5f2c: $7f
	rst  $38                                         ; $5f2d: $ff
	rst  $38                                         ; $5f2e: $ff
	rst  $38                                         ; $5f2f: $ff
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
	rst  $38                                         ; $5f32: $ff
	sub  e                                           ; $5f33: $93
	ld   de, $1111                                   ; $5f34: $11 $11 $11
	ld   de, $1711                                   ; $5f37: $11 $11 $17
	rst  $38                                         ; $5f3a: $ff
	rst  $38                                         ; $5f3b: $ff
	rst  $38                                         ; $5f3c: $ff
	rst  $38                                         ; $5f3d: $ff
	rst  $38                                         ; $5f3e: $ff
	rst  $38                                         ; $5f3f: $ff
	ld   hl, sp+$11                                  ; $5f40: $f8 $11
	ld   de, $1111                                   ; $5f42: $11 $11 $11
	ld   de, $af11                                   ; $5f45: $11 $11 $af
	rst  $38                                         ; $5f48: $ff
	rst  $38                                         ; $5f49: $ff
	rst  $38                                         ; $5f4a: $ff
	rst  $38                                         ; $5f4b: $ff
	rst  $38                                         ; $5f4c: $ff
	rst  $38                                         ; $5f4d: $ff
	ld   b, c                                        ; $5f4e: $41
	ld   de, $1111                                   ; $5f4f: $11 $11 $11
	ld   de, $3f11                                   ; $5f52: $11 $11 $3f
	rst  $38                                         ; $5f55: $ff
	rst  $38                                         ; $5f56: $ff
	rst  $38                                         ; $5f57: $ff
	rst  $38                                         ; $5f58: $ff
	rst  $38                                         ; $5f59: $ff
	rst  $38                                         ; $5f5a: $ff
	and  c                                           ; $5f5b: $a1
	ld   de, $1111                                   ; $5f5c: $11 $11 $11
	ld   de, $1811                                   ; $5f5f: $11 $11 $18
	rst  $38                                         ; $5f62: $ff
	rst  $38                                         ; $5f63: $ff
	rst  $38                                         ; $5f64: $ff
	rst  $38                                         ; $5f65: $ff
	rst  $38                                         ; $5f66: $ff
	rst  $38                                         ; $5f67: $ff
	di                                               ; $5f68: $f3
	ld   de, $1111                                   ; $5f69: $11 $11 $11
	ld   de, $1611                                   ; $5f6c: $11 $11 $16
	rst  $38                                         ; $5f6f: $ff
	rst  $38                                         ; $5f70: $ff
	rst  $38                                         ; $5f71: $ff
	rst  $38                                         ; $5f72: $ff
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	rst  $30                                         ; $5f75: $f7
	ld   de, $1111                                   ; $5f76: $11 $11 $11
	ld   de, $1211                                   ; $5f79: $11 $11 $12
	rst  $38                                         ; $5f7c: $ff
	rst  $38                                         ; $5f7d: $ff
	rst  $38                                         ; $5f7e: $ff
	rst  $38                                         ; $5f7f: $ff
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	ei                                               ; $5f82: $fb
	ld   de, $1111                                   ; $5f83: $11 $11 $11
	ld   de, $1111                                   ; $5f86: $11 $11 $11
	rst  JumpTable                                         ; $5f89: $df
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	ld   b, c                                        ; $5f90: $41
	ld   de, $1111                                   ; $5f91: $11 $11 $11
	ld   de, $8f11                                   ; $5f94: $11 $11 $8f
	rst  $38                                         ; $5f97: $ff
	rst  $38                                         ; $5f98: $ff
	rst  $38                                         ; $5f99: $ff
	rst  $38                                         ; $5f9a: $ff
	rst  $38                                         ; $5f9b: $ff
	rst  $38                                         ; $5f9c: $ff
	sub  c                                           ; $5f9d: $91
	ld   de, $1111                                   ; $5f9e: $11 $11 $11
	ld   de, $7f11                                   ; $5fa1: $11 $11 $7f
	rst  $38                                         ; $5fa4: $ff
	rst  $38                                         ; $5fa5: $ff
	rst  $38                                         ; $5fa6: $ff
	rst  $38                                         ; $5fa7: $ff
	rst  $38                                         ; $5fa8: $ff
	rst  $38                                         ; $5fa9: $ff
	pop  de                                          ; $5faa: $d1
	ld   de, $1111                                   ; $5fab: $11 $11 $11
	ld   de, $5f11                                   ; $5fae: $11 $11 $5f
	rst  $38                                         ; $5fb1: $ff
	rst  $38                                         ; $5fb2: $ff
	rst  $38                                         ; $5fb3: $ff
	rst  $38                                         ; $5fb4: $ff
	rst  $38                                         ; $5fb5: $ff
	rst  $38                                         ; $5fb6: $ff
	db   $e3                                         ; $5fb7: $e3
	ld   de, $1111                                   ; $5fb8: $11 $11 $11
	ld   de, $6f11                                   ; $5fbb: $11 $11 $6f
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	rst  $38                                         ; $5fc0: $ff
	rst  $38                                         ; $5fc1: $ff
	rst  $38                                         ; $5fc2: $ff
	rst  $38                                         ; $5fc3: $ff
	db   $f4                                         ; $5fc4: $f4
	ld   de, $1111                                   ; $5fc5: $11 $11 $11
	ld   de, $5f11                                   ; $5fc8: $11 $11 $5f
	rst  $38                                         ; $5fcb: $ff
	rst  $38                                         ; $5fcc: $ff
	rst  $38                                         ; $5fcd: $ff
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	rst  $38                                         ; $5fd0: $ff
	or   $11                                         ; $5fd1: $f6 $11
	ld   de, $1111                                   ; $5fd3: $11 $11 $11
	ld   de, $ff4f                                   ; $5fd6: $11 $4f $ff
	rst  $38                                         ; $5fd9: $ff
	rst  $38                                         ; $5fda: $ff
	rst  $38                                         ; $5fdb: $ff
	rst  $38                                         ; $5fdc: $ff
	rst  $38                                         ; $5fdd: $ff
	rst  $30                                         ; $5fde: $f7
	ld   de, $1111                                   ; $5fdf: $11 $11 $11
	ld   de, $4f11                                   ; $5fe2: $11 $11 $4f
	rst  $38                                         ; $5fe5: $ff
	rst  $38                                         ; $5fe6: $ff
	rst  $38                                         ; $5fe7: $ff
	rst  $38                                         ; $5fe8: $ff
	rst  $28                                         ; $5fe9: $ef
	rst  $38                                         ; $5fea: $ff
	rst  $30                                         ; $5feb: $f7
	ld   de, $1111                                   ; $5fec: $11 $11 $11
	ld   de, $5f11                                   ; $5fef: $11 $11 $5f
	rst  $38                                         ; $5ff2: $ff
	rst  $38                                         ; $5ff3: $ff
	rst  $38                                         ; $5ff4: $ff
	rst  $38                                         ; $5ff5: $ff
	rst  $28                                         ; $5ff6: $ef
	rst  $38                                         ; $5ff7: $ff
	push af                                          ; $5ff8: $f5
	ld   de, $1111                                   ; $5ff9: $11 $11 $11
	ld   de, $9f11                                   ; $5ffc: $11 $11 $9f
	rst  $38                                         ; $5fff: $ff
	rst  $38                                         ; $6000: $ff
	rst  $38                                         ; $6001: $ff
	rst  $38                                         ; $6002: $ff
	rst  $28                                         ; $6003: $ef
	rst  $38                                         ; $6004: $ff
	di                                               ; $6005: $f3
	ld   de, $1111                                   ; $6006: $11 $11 $11
	ld   de, $cf11                                   ; $6009: $11 $11 $cf
	rst  $38                                         ; $600c: $ff
	rst  $38                                         ; $600d: $ff
	rst  $38                                         ; $600e: $ff
	rst  $38                                         ; $600f: $ff
	rst  $38                                         ; $6010: $ff
	rst  $38                                         ; $6011: $ff
	ldh  [c], a                                      ; $6012: $e2
	ld   de, $1111                                   ; $6013: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $6016: $11 $13 $ff
	rst  $38                                         ; $6019: $ff
	rst  $38                                         ; $601a: $ff
	rst  $38                                         ; $601b: $ff
	cp   $ff                                         ; $601c: $fe $ff
	rst  $38                                         ; $601e: $ff
	or   c                                           ; $601f: $b1
	ld   de, $1111                                   ; $6020: $11 $11 $11
	ld   de, $ff07                                   ; $6023: $11 $07 $ff
	rst  $38                                         ; $6026: $ff
	rst  $38                                         ; $6027: $ff
	rst  $38                                         ; $6028: $ff
	cp   $ff                                         ; $6029: $fe $ff
	rst  $38                                         ; $602b: $ff
	ld   d, c                                        ; $602c: $51
	ld   de, $1111                                   ; $602d: $11 $11 $11
	ld   de, $ff1e                                   ; $6030: $11 $1e $ff
	rst  $28                                         ; $6033: $ef
	rst  $38                                         ; $6034: $ff
	rst  $38                                         ; $6035: $ff
	rst  JumpTable                                         ; $6036: $df
	rst  $38                                         ; $6037: $ff
	db   $fc                                         ; $6038: $fc
	ld   de, $1111                                   ; $6039: $11 $11 $11
	ld   de, $5f11                                   ; $603c: $11 $11 $5f
	rst  $38                                         ; $603f: $ff
	rst  JumpTable                                         ; $6040: $df
	rst  $38                                         ; $6041: $ff
	rst  $38                                         ; $6042: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6043: $cf
	rst  $38                                         ; $6044: $ff
	or   $11                                         ; $6045: $f6 $11
	ld   de, $1111                                   ; $6047: $11 $11 $11
	ld   de, $fdff                                   ; $604a: $11 $ff $fd
	rst  $38                                         ; $604d: $ff
	rst  $38                                         ; $604e: $ff
	db   $fd                                         ; $604f: $fd
	rst  $38                                         ; $6050: $ff
	rst  $38                                         ; $6051: $ff
	sub  c                                           ; $6052: $91
	ld   de, $1111                                   ; $6053: $11 $11 $11
	ld   de, $ff1c                                   ; $6056: $11 $1c $ff
	xor  $ff                                         ; $6059: $ee $ff
	rst  $38                                         ; $605b: $ff
	xor  $ff                                         ; $605c: $ee $ff
	db   $fc                                         ; $605e: $fc
	ld   de, $1111                                   ; $605f: $11 $11 $11
	ld   de, $8f11                                   ; $6062: $11 $11 $8f
	cp   $ef                                         ; $6065: $fe $ef
	rst  $38                                         ; $6067: $ff
	rst  $38                                         ; $6068: $ff
	rst  JumpTable                                         ; $6069: $df
	rst  $38                                         ; $606a: $ff
	jp   $1111                                       ; $606b: $c3 $11 $11


	ld   de, $1911                                   ; $606e: $11 $11 $19
	rst  $38                                         ; $6071: $ff
	cp   $ff                                         ; $6072: $fe $ff
	rst  $38                                         ; $6074: $ff
	rst  $38                                         ; $6075: $ff
	rst  $38                                         ; $6076: $ff
	ei                                               ; $6077: $fb
	ld   sp, $1111                                   ; $6078: $31 $11 $11
	ld   de, $cf12                                   ; $607b: $11 $12 $cf
	cp   $ff                                         ; $607e: $fe $ff
	rst  $38                                         ; $6080: $ff
	rst  $38                                         ; $6081: $ff
	rst  $38                                         ; $6082: $ff
	cp   $81                                         ; $6083: $fe $81
	ld   de, $1111                                   ; $6085: $11 $11 $11
	ld   de, $ff4f                                   ; $6088: $11 $4f $ff
	rst  $38                                         ; $608b: $ff
	rst  $38                                         ; $608c: $ff
	rst  $38                                         ; $608d: $ff
	rst  $28                                         ; $608e: $ef
	rst  $38                                         ; $608f: $ff
	push bc                                          ; $6090: $c5
	ld   de, $1111                                   ; $6091: $11 $11 $11
	ld   de, $ff19                                   ; $6094: $11 $19 $ff
	rst  $38                                         ; $6097: $ff
	rst  $38                                         ; $6098: $ff
	rst  $38                                         ; $6099: $ff
	rst  $38                                         ; $609a: $ff
	rst  $38                                         ; $609b: $ff
	ld   sp, hl                                      ; $609c: $f9
	ld   de, $1111                                   ; $609d: $11 $11 $11
	ld   de, $ff16                                   ; $60a0: $11 $16 $ff
	rst  $38                                         ; $60a3: $ff
	rst  $38                                         ; $60a4: $ff
	rst  $38                                         ; $60a5: $ff
	rst  $38                                         ; $60a6: $ff
	rst  $38                                         ; $60a7: $ff
	ld   a, [$1121]                                  ; $60a8: $fa $21 $11
	ld   de, $1211                                   ; $60ab: $11 $11 $12
	rst  $38                                         ; $60ae: $ff
	cp   $ff                                         ; $60af: $fe $ff
	rst  $38                                         ; $60b1: $ff
	rst  $38                                         ; $60b2: $ff
	rst  $38                                         ; $60b3: $ff
	db   $fc                                         ; $60b4: $fc
	ld   sp, $1111                                   ; $60b5: $31 $11 $11
	ld   de, $df11                                   ; $60b8: $11 $11 $df
	cp   $ff                                         ; $60bb: $fe $ff
	rst  $38                                         ; $60bd: $ff
	rst  $38                                         ; $60be: $ff
	rst  $38                                         ; $60bf: $ff
	db   $fd                                         ; $60c0: $fd
	ld   b, c                                        ; $60c1: $41
	ld   de, $1111                                   ; $60c2: $11 $11 $11
	ld   de, $fccf                                   ; $60c5: $11 $cf $fc
	rst  $38                                         ; $60c8: $ff
	rst  $38                                         ; $60c9: $ff
	rst  $38                                         ; $60ca: $ff
	rst  $38                                         ; $60cb: $ff
	db   $fc                                         ; $60cc: $fc
	ld   b, c                                        ; $60cd: $41
	ld   de, $1111                                   ; $60ce: $11 $11 $11
	ld   de, $fdcf                                   ; $60d1: $11 $cf $fd
	rst  $38                                         ; $60d4: $ff
	rst  $38                                         ; $60d5: $ff
	rst  $38                                         ; $60d6: $ff
	rst  $38                                         ; $60d7: $ff
	db   $fd                                         ; $60d8: $fd
	ld   b, c                                        ; $60d9: $41
	ld   de, $1111                                   ; $60da: $11 $11 $11
	ld   de, $fcff                                   ; $60dd: $11 $ff $fc
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	rst  $38                                         ; $60e2: $ff
	rst  $38                                         ; $60e3: $ff
	ei                                               ; $60e4: $fb
	ld   b, c                                        ; $60e5: $41
	ld   de, $1111                                   ; $60e6: $11 $11 $11
	ld   de, $fcff                                   ; $60e9: $11 $ff $fc
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	rst  $38                                         ; $60ee: $ff
	rst  $38                                         ; $60ef: $ff
	ld   a, [$1141]                                  ; $60f0: $fa $41 $11
	ld   de, $1411                                   ; $60f3: $11 $11 $14
	rst  $38                                         ; $60f6: $ff
	db   $dd                                         ; $60f7: $dd
	rst  $38                                         ; $60f8: $ff
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	rst  $38                                         ; $60fb: $ff
	ld   [$1141], a                                  ; $60fc: $ea $41 $11
	ld   de, $1911                                   ; $60ff: $11 $11 $19
	rst  $38                                         ; $6102: $ff
	xor  a                                           ; $6103: $af
	rst  $38                                         ; $6104: $ff
	rst  $38                                         ; $6105: $ff
	rst  $38                                         ; $6106: $ff
	rst  $38                                         ; $6107: $ff
	jp   c, $1151                                    ; $6108: $da $51 $11

	ld   de, $1f11                                   ; $610b: $11 $11 $1f
	ei                                               ; $610e: $fb
	xor  a                                           ; $610f: $af
	rst  $38                                         ; $6110: $ff
	rst  $38                                         ; $6111: $ff
	rst  $38                                         ; $6112: $ff
	rst  $38                                         ; $6113: $ff
	jp   c, $1121                                    ; $6114: $da $21 $11

	ld   de, $5f11                                   ; $6117: $11 $11 $5f
	rst  $30                                         ; $611a: $f7
	rst  $38                                         ; $611b: $ff
	rst  $38                                         ; $611c: $ff
	rst  $38                                         ; $611d: $ff
	rst  $38                                         ; $611e: $ff
	rst  $38                                         ; $611f: $ff
	jp   hl                                          ; $6120: $e9


	ld   de, $1111                                   ; $6121: $11 $11 $11
	ld   de, $79ef                                   ; $6124: $11 $ef $79
	rst  $38                                         ; $6127: $ff
	rst  $38                                         ; $6128: $ff
	rst  $38                                         ; $6129: $ff
	rst  $38                                         ; $612a: $ff
	rst  $38                                         ; $612b: $ff
	db   $e3                                         ; $612c: $e3
	ld   de, $1111                                   ; $612d: $11 $11 $11
	add  hl, de                                      ; $6130: $19
	ld   sp, hl                                      ; $6131: $f9
	ld   l, a                                        ; $6132: $6f
	rst  $38                                         ; $6133: $ff
	rst  $38                                         ; $6134: $ff
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	rst  $38                                         ; $6137: $ff
	ld   [hl], c                                     ; $6138: $71
	ld   de, $1111                                   ; $6139: $11 $11 $11
	ld   c, l                                        ; $613c: $4d
	or   h                                           ; $613d: $b4
	rst  $38                                         ; $613e: $ff
	db   $fd                                         ; $613f: $fd
	rst  $38                                         ; $6140: $ff
	rst  $38                                         ; $6141: $ff
	rst  $38                                         ; $6142: $ff
	ld   a, [$1111]                                  ; $6143: $fa $11 $11
	ld   de, $7911                                   ; $6146: $11 $11 $79
	ld   l, l                                        ; $6149: $6d
	rst  $38                                         ; $614a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $614b: $cf
	rst  $38                                         ; $614c: $ff
	rst  $38                                         ; $614d: $ff
	rst  $38                                         ; $614e: $ff
	pop  hl                                          ; $614f: $e1
	ld   de, $1111                                   ; $6150: $11 $11 $11
	inc  de                                          ; $6153: $13
	ld   [hl], a                                     ; $6154: $77
	cp   a                                           ; $6155: $bf
	db   $fd                                         ; $6156: $fd
	rst  $38                                         ; $6157: $ff
	rst  $38                                         ; $6158: $ff
	rst  $38                                         ; $6159: $ff
	rst  $38                                         ; $615a: $ff
	ld   d, c                                        ; $615b: $51
	ld   de, $1111                                   ; $615c: $11 $11 $11
	inc  d                                           ; $615f: $14
	ld   a, c                                        ; $6160: $79
	rst  $38                                         ; $6161: $ff
	rst  $38                                         ; $6162: $ff
	rst  $38                                         ; $6163: $ff
	rst  $38                                         ; $6164: $ff
	rst  $38                                         ; $6165: $ff
	ld   sp, hl                                      ; $6166: $f9
	ld   de, $1111                                   ; $6167: $11 $11 $11
	ld   de, $8e26                                   ; $616a: $11 $26 $8e
	rst  $38                                         ; $616d: $ff
	rst  JumpTable                                         ; $616e: $df
	rst  $38                                         ; $616f: $ff
	rst  $38                                         ; $6170: $ff
	rst  $38                                         ; $6171: $ff
	jp   $1111                                       ; $6172: $c3 $11 $11


	ld   de, $3611                                   ; $6175: $11 $11 $36
	rst  JumpTable                                         ; $6178: $df
	cp   $ff                                         ; $6179: $fe $ff
	rst  $38                                         ; $617b: $ff
	rst  $38                                         ; $617c: $ff
	db   $fd                                         ; $617d: $fd
	add  c                                           ; $617e: $81
	ld   de, $1111                                   ; $617f: $11 $11 $11
	ld   [de], a                                     ; $6182: $12
	ld   c, c                                        ; $6183: $49
	rst  $38                                         ; $6184: $ff
	rst  JumpTable                                         ; $6185: $df
	rst  $38                                         ; $6186: $ff
	rst  $38                                         ; $6187: $ff
	rst  $38                                         ; $6188: $ff
	ei                                               ; $6189: $fb
	ld   de, $1111                                   ; $618a: $11 $11 $11
	ld   de, $7f12                                   ; $618d: $11 $12 $7f
	rst  $38                                         ; $6190: $ff
	rst  $38                                         ; $6191: $ff
	rst  $38                                         ; $6192: $ff
	rst  $38                                         ; $6193: $ff
	rst  $38                                         ; $6194: $ff
	db   $f4                                         ; $6195: $f4
	ld   de, $1111                                   ; $6196: $11 $11 $11
	ld   de, $df15                                   ; $6199: $11 $15 $df
	rst  $38                                         ; $619c: $ff
	rst  $38                                         ; $619d: $ff
	rst  $38                                         ; $619e: $ff
	rst  $38                                         ; $619f: $ff
	rst  $38                                         ; $61a0: $ff
	and  c                                           ; $61a1: $a1
	ld   de, $1111                                   ; $61a2: $11 $11 $11
	ld   de, $df1b                                   ; $61a5: $11 $1b $df
	rst  $28                                         ; $61a8: $ef
	rst  $38                                         ; $61a9: $ff
	rst  $38                                         ; $61aa: $ff
	rst  $38                                         ; $61ab: $ff
	cp   $01                                         ; $61ac: $fe $01
	ld   de, $1111                                   ; $61ae: $11 $11 $11
	ld   de, $ce9c                                   ; $61b1: $11 $9c $ce
	rst  $38                                         ; $61b4: $ff
	rst  $38                                         ; $61b5: $ff
	rst  $38                                         ; $61b6: $ff
	rst  $38                                         ; $61b7: $ff
	or   $11                                         ; $61b8: $f6 $11
	ld   de, $1111                                   ; $61ba: $11 $11 $11
	inc  d                                           ; $61bd: $14
	ret                                              ; $61be: $c9


	rst  JumpTable                                         ; $61bf: $df
	rst  $38                                         ; $61c0: $ff
	rst  $38                                         ; $61c1: $ff
	rst  $38                                         ; $61c2: $ff
	rst  $38                                         ; $61c3: $ff
	pop  de                                          ; $61c4: $d1
	ld   de, $1111                                   ; $61c5: $11 $11 $11
	ld   de, $990a                                   ; $61c8: $11 $0a $99
	rst  $38                                         ; $61cb: $ff
	rst  $38                                         ; $61cc: $ff
	rst  $38                                         ; $61cd: $ff
	rst  $38                                         ; $61ce: $ff
	rst  $38                                         ; $61cf: $ff
	ld   b, c                                        ; $61d0: $41
	ld   de, $1111                                   ; $61d1: $11 $11 $11
	ld   de, $5d78                                   ; $61d4: $11 $78 $5d
	rst  $38                                         ; $61d7: $ff
	rst  $38                                         ; $61d8: $ff
	rst  $38                                         ; $61d9: $ff
	rst  $38                                         ; $61da: $ff
	ei                                               ; $61db: $fb
	inc  d                                           ; $61dc: $14
	ld   de, $1111                                   ; $61dd: $11 $11 $11
	ld   [de], a                                     ; $61e0: $12
	ld   [hl], h                                     ; $61e1: $74
	adc  a                                           ; $61e2: $8f
	rst  $38                                         ; $61e3: $ff
	rst  $38                                         ; $61e4: $ff
	rst  $38                                         ; $61e5: $ff
	rst  $38                                         ; $61e6: $ff
	or   $63                                         ; $61e7: $f6 $63
	ld   de, $1111                                   ; $61e9: $11 $11 $11
	inc  d                                           ; $61ec: $14
	ld   b, h                                        ; $61ed: $44
	xor  $ff                                         ; $61ee: $ee $ff
	rst  $38                                         ; $61f0: $ff
	rst  $38                                         ; $61f1: $ff
	rst  $38                                         ; $61f2: $ff
	or   $71                                         ; $61f3: $f6 $71
	ld   de, $1111                                   ; $61f5: $11 $11 $11
	inc  d                                           ; $61f8: $14
	ld   b, [hl]                                     ; $61f9: $46
	xor  $ff                                         ; $61fa: $ee $ff
	rst  $38                                         ; $61fc: $ff
	rst  $38                                         ; $61fd: $ff
	rst  $38                                         ; $61fe: $ff
	ret  c                                           ; $61ff: $d8

	ld   [hl], c                                     ; $6200: $71
	ld   de, $1111                                   ; $6201: $11 $11 $11
	inc  de                                          ; $6204: $13
	ld   c, b                                        ; $6205: $48
	db   $dd                                         ; $6206: $dd
	rst  $38                                         ; $6207: $ff
	rst  $38                                         ; $6208: $ff
	rst  $38                                         ; $6209: $ff
	rst  $38                                         ; $620a: $ff
	ret  z                                           ; $620b: $c8

	ld   d, c                                        ; $620c: $51
	ld   de, $1111                                   ; $620d: $11 $11 $11
	inc  d                                           ; $6210: $14
	ld   c, b                                        ; $6211: $48
	rst  JumpTable                                         ; $6212: $df
	rst  $38                                         ; $6213: $ff
	rst  $38                                         ; $6214: $ff
	rst  $38                                         ; $6215: $ff
	rst  $38                                         ; $6216: $ff
	jp   z, $1151                                    ; $6217: $ca $51 $11

	ld   de, $1311                                   ; $621a: $11 $11 $13
	ld   c, c                                        ; $621d: $49
	adc  $ff                                         ; $621e: $ce $ff
	rst  $38                                         ; $6220: $ff
	rst  $38                                         ; $6221: $ff
	rst  $38                                         ; $6222: $ff
	ret  z                                           ; $6223: $c8

	ld   d, c                                        ; $6224: $51
	ld   de, $1111                                   ; $6225: $11 $11 $11
	inc  de                                          ; $6228: $13
	ld   e, c                                        ; $6229: $59
	sbc  $ff                                         ; $622a: $de $ff
	rst  $38                                         ; $622c: $ff
	rst  $38                                         ; $622d: $ff
	rst  $38                                         ; $622e: $ff
	db   $db                                         ; $622f: $db
	ld   h, c                                        ; $6230: $61
	ld   de, $1111                                   ; $6231: $11 $11 $11
	ld   [de], a                                     ; $6234: $12
	ld   e, c                                        ; $6235: $59
	adc  $ff                                         ; $6236: $ce $ff
	rst  $38                                         ; $6238: $ff
	rst  $38                                         ; $6239: $ff
	rst  $38                                         ; $623a: $ff
	ld   [$1171], a                                  ; $623b: $ea $71 $11
	ld   de, $1311                                   ; $623e: $11 $11 $13
	ld   c, b                                        ; $6241: $48
	adc  $ff                                         ; $6242: $ce $ff
	rst  $38                                         ; $6244: $ff
	rst  $38                                         ; $6245: $ff
	rst  $38                                         ; $6246: $ff
	ld   a, [$1181]                                  ; $6247: $fa $81 $11
	ld   de, $1211                                   ; $624a: $11 $11 $12
	ld   b, a                                        ; $624d: $47
	xor  l                                           ; $624e: $ad
	rst  $38                                         ; $624f: $ff
	rst  $38                                         ; $6250: $ff
	rst  $38                                         ; $6251: $ff
	rst  $38                                         ; $6252: $ff
	ld   a, [$11a2]                                  ; $6253: $fa $a2 $11
	ld   de, $1111                                   ; $6256: $11 $11 $11
	ld   [hl], $ac                                   ; $6259: $36 $ac
	rst  $38                                         ; $625b: $ff
	rst  $38                                         ; $625c: $ff
	rst  $38                                         ; $625d: $ff
	rst  $38                                         ; $625e: $ff
	db   $fd                                         ; $625f: $fd
	or   [hl]                                        ; $6260: $b6
	ld   de, $1111                                   ; $6261: $11 $11 $11
	ld   de, $8b35                                   ; $6264: $11 $35 $8b
	rst  $28                                         ; $6267: $ef
	rst  $38                                         ; $6268: $ff
	rst  $38                                         ; $6269: $ff
	rst  $38                                         ; $626a: $ff
	rst  $38                                         ; $626b: $ff
	cp   c                                           ; $626c: $b9
	ld   de, $1111                                   ; $626d: $11 $11 $11
	ld   de, $6a24                                   ; $6270: $11 $24 $6a
	rst  JumpTable                                         ; $6273: $df
	rst  $38                                         ; $6274: $ff
	rst  $38                                         ; $6275: $ff
	rst  $38                                         ; $6276: $ff
	rst  $38                                         ; $6277: $ff
	jp   c, $1161                                    ; $6278: $da $61 $11

	ld   de, $1311                                   ; $627b: $11 $11 $13
	ld   e, b                                        ; $627e: $58
	cp   [hl]                                        ; $627f: $be
	rst  $38                                         ; $6280: $ff
	rst  $38                                         ; $6281: $ff
	rst  $38                                         ; $6282: $ff
	rst  $38                                         ; $6283: $ff
	ei                                               ; $6284: $fb
	sub  e                                           ; $6285: $93
	ld   de, $1111                                   ; $6286: $11 $11 $11
	ld   de, $9b46                                   ; $6289: $11 $46 $9b
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	rst  $38                                         ; $628e: $ff
	rst  $38                                         ; $628f: $ff
	rst  $38                                         ; $6290: $ff
	cp   d                                           ; $6291: $ba
	ld   de, $1111                                   ; $6292: $11 $11 $11
	ld   de, $7914                                   ; $6295: $11 $14 $79
	rst  JumpTable                                         ; $6298: $df
	rst  $38                                         ; $6299: $ff
	rst  $38                                         ; $629a: $ff
	rst  $38                                         ; $629b: $ff
	rst  $38                                         ; $629c: $ff
	db   $eb                                         ; $629d: $eb
	add  c                                           ; $629e: $81
	ld   de, $1111                                   ; $629f: $11 $11 $11
	ld   [de], a                                     ; $62a2: $12
	ld   d, a                                        ; $62a3: $57
	xor  l                                           ; $62a4: $ad
	rst  $38                                         ; $62a5: $ff
	rst  $38                                         ; $62a6: $ff
	rst  $38                                         ; $62a7: $ff
	rst  $38                                         ; $62a8: $ff
	db   $fd                                         ; $62a9: $fd
	and  a                                           ; $62aa: $a7
	ld   de, $1111                                   ; $62ab: $11 $11 $11
	ld   de, $7a35                                   ; $62ae: $11 $35 $7a
	rst  $28                                         ; $62b1: $ef
	rst  $38                                         ; $62b2: $ff
	rst  $38                                         ; $62b3: $ff
	rst  $38                                         ; $62b4: $ff
	rst  $38                                         ; $62b5: $ff
	jp   c, $1171                                    ; $62b6: $da $71 $11

	ld   de, $1211                                   ; $62b9: $11 $11 $12
	ld   l, b                                        ; $62bc: $68
	sbc  l                                           ; $62bd: $9d
	rst  $38                                         ; $62be: $ff
	rst  $38                                         ; $62bf: $ff
	rst  $38                                         ; $62c0: $ff
	rst  $38                                         ; $62c1: $ff
	cp   $a7                                         ; $62c2: $fe $a7
	ld   de, $1111                                   ; $62c4: $11 $11 $11
	ld   de, $8916                                   ; $62c7: $11 $16 $89
	rst  JumpTable                                         ; $62ca: $df
	rst  $38                                         ; $62cb: $ff
	rst  $38                                         ; $62cc: $ff
	rst  $38                                         ; $62cd: $ff
	rst  $38                                         ; $62ce: $ff
	ld   a, [$1181]                                  ; $62cf: $fa $81 $11
	ld   de, $1111                                   ; $62d2: $11 $11 $11
	ld   e, b                                        ; $62d5: $58
	xor  l                                           ; $62d6: $ad
	rst  $38                                         ; $62d7: $ff
	rst  $38                                         ; $62d8: $ff
	rst  $38                                         ; $62d9: $ff
	rst  $38                                         ; $62da: $ff
	rst  $38                                         ; $62db: $ff
	ret  z                                           ; $62dc: $c8

	ld   sp, $1111                                   ; $62dd: $31 $11 $11
	ld   de, $9a12                                   ; $62e0: $11 $12 $9a
	cp   a                                           ; $62e3: $bf
	rst  $38                                         ; $62e4: $ff
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	rst  $38                                         ; $62e7: $ff
	db   $fc                                         ; $62e8: $fc
	sub  h                                           ; $62e9: $94
	ld   de, $1111                                   ; $62ea: $11 $11 $11
	ld   de, $aa16                                   ; $62ed: $11 $16 $aa
	rst  $28                                         ; $62f0: $ef
	rst  $38                                         ; $62f1: $ff
	rst  $38                                         ; $62f2: $ff
	rst  $38                                         ; $62f3: $ff
	rst  $38                                         ; $62f4: $ff
	ld   sp, hl                                      ; $62f5: $f9
	ld   d, c                                        ; $62f6: $51
	ld   de, $1111                                   ; $62f7: $11 $11 $11
	ld   de, $cd2b                                   ; $62fa: $11 $2b $cd
	rst  $38                                         ; $62fd: $ff
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	rst  $38                                         ; $6301: $ff
	or   h                                           ; $6302: $b4
	ld   hl, $1111                                   ; $6303: $21 $11 $11
	ld   de, $7b11                                   ; $6306: $11 $11 $7b
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	rst  $38                                         ; $630d: $ff
	rst  $38                                         ; $630e: $ff
	ld   h, c                                        ; $630f: $61
	ld   de, $1111                                   ; $6310: $11 $11 $11
	ld   de, $bd14                                   ; $6313: $11 $14 $bd
	rst  $38                                         ; $6316: $ff
	rst  $38                                         ; $6317: $ff
	rst  $38                                         ; $6318: $ff
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	ld   a, [$1111]                                  ; $631b: $fa $11 $11
	ld   de, $1111                                   ; $631e: $11 $11 $11
	ld   c, d                                        ; $6321: $4a
	rst  JumpTable                                         ; $6322: $df
	rst  $38                                         ; $6323: $ff
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	rst  $38                                         ; $6326: $ff
	rst  $38                                         ; $6327: $ff
	or   e                                           ; $6328: $b3
	ld   de, $1111                                   ; $6329: $11 $11 $11
	ld   de, $ad14                                   ; $632c: $11 $14 $ad
	rst  $38                                         ; $632f: $ff
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	rst  $38                                         ; $6332: $ff
	rst  $38                                         ; $6333: $ff
	ei                                               ; $6334: $fb
	ld   b, c                                        ; $6335: $41
	ld   de, $1111                                   ; $6336: $11 $11 $11
	ld   de, $ef5c                                   ; $6339: $11 $5c $ef
	rst  $38                                         ; $633c: $ff
	rst  $38                                         ; $633d: $ff
	rst  $38                                         ; $633e: $ff
	rst  $38                                         ; $633f: $ff
	rst  $38                                         ; $6340: $ff
	and  h                                           ; $6341: $a4
	ld   de, $1111                                   ; $6342: $11 $11 $11
	ld   de, $cf16                                   ; $6345: $11 $16 $cf
	rst  $38                                         ; $6348: $ff
	rst  $38                                         ; $6349: $ff
	rst  $38                                         ; $634a: $ff
	rst  $38                                         ; $634b: $ff
	rst  $38                                         ; $634c: $ff
	add  sp, $41                                     ; $634d: $e8 $41
	ld   de, $1111                                   ; $634f: $11 $11 $11
	ld   de, $ff7f                                   ; $6352: $11 $7f $ff
	rst  $38                                         ; $6355: $ff
	rst  $38                                         ; $6356: $ff
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	db   $fd                                         ; $6359: $fd
	add  d                                           ; $635a: $82
	ld   de, $1111                                   ; $635b: $11 $11 $11
	ld   de, $ff29                                   ; $635e: $11 $29 $ff
	rst  $38                                         ; $6361: $ff
	rst  $38                                         ; $6362: $ff
	rst  $38                                         ; $6363: $ff
	rst  $38                                         ; $6364: $ff
	rst  $38                                         ; $6365: $ff
	ret  z                                           ; $6366: $c8

	ld   hl, $1111                                   ; $6367: $21 $11 $11
	ld   de, $af12                                   ; $636a: $11 $12 $af
	rst  $38                                         ; $636d: $ff
	rst  $38                                         ; $636e: $ff
	rst  $38                                         ; $636f: $ff
	rst  $38                                         ; $6370: $ff
	rst  $38                                         ; $6371: $ff
	db   $ed                                         ; $6372: $ed
	sub  c                                           ; $6373: $91
	ld   de, $1111                                   ; $6374: $11 $11 $11
	ld   [de], a                                     ; $6377: $12
	ld   c, e                                        ; $6378: $4b
	rst  $38                                         ; $6379: $ff
	rst  $38                                         ; $637a: $ff
	rst  $38                                         ; $637b: $ff
	rst  $38                                         ; $637c: $ff
	rst  $38                                         ; $637d: $ff
	cp   $b8                                         ; $637e: $fe $b8
	ld   sp, $1111                                   ; $6380: $31 $11 $11
	ld   de, $bf26                                   ; $6383: $11 $26 $bf
	rst  $38                                         ; $6386: $ff
	rst  $38                                         ; $6387: $ff
	rst  $38                                         ; $6388: $ff
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	db   $fc                                         ; $638b: $fc
	sub  l                                           ; $638c: $95
	ld   de, $1111                                   ; $638d: $11 $11 $11
	ld   [de], a                                     ; $6390: $12
	sbc  e                                           ; $6391: $9b
	rst  $28                                         ; $6392: $ef
	rst  $38                                         ; $6393: $ff
	rst  $38                                         ; $6394: $ff
	rst  $38                                         ; $6395: $ff
	rst  $38                                         ; $6396: $ff
	rst  $38                                         ; $6397: $ff
	ret  c                                           ; $6398: $d8

	ld   h, c                                        ; $6399: $61
	ld   de, $1111                                   ; $639a: $11 $11 $11
	rla                                              ; $639d: $17
	cp   [hl]                                        ; $639e: $be
	rst  $38                                         ; $639f: $ff
	rst  $38                                         ; $63a0: $ff
	rst  $38                                         ; $63a1: $ff
	rst  $38                                         ; $63a2: $ff
	rst  $38                                         ; $63a3: $ff
	rst  $38                                         ; $63a4: $ff
	add  $11                                         ; $63a5: $c6 $11
	ld   de, $1111                                   ; $63a7: $11 $11 $11
	inc  a                                           ; $63aa: $3c
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	rst  $38                                         ; $63ad: $ff
	rst  $38                                         ; $63ae: $ff
	rst  $38                                         ; $63af: $ff
	rst  $38                                         ; $63b0: $ff
	rst  $38                                         ; $63b1: $ff
	ld   h, c                                        ; $63b2: $61
	ld   de, $1111                                   ; $63b3: $11 $11 $11
	ld   de, $ff8f                                   ; $63b6: $11 $8f $ff
	rst  $38                                         ; $63b9: $ff
	rst  $38                                         ; $63ba: $ff
	rst  $38                                         ; $63bb: $ff
	rst  $38                                         ; $63bc: $ff
	rst  $38                                         ; $63bd: $ff
	cp   $81                                         ; $63be: $fe $81
	ld   de, $1111                                   ; $63c0: $11 $11 $11
	inc  de                                          ; $63c3: $13
	cp   a                                           ; $63c4: $bf
	rst  $38                                         ; $63c5: $ff
	rst  $38                                         ; $63c6: $ff
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	rst  $38                                         ; $63c9: $ff
	rst  $38                                         ; $63ca: $ff
	db   $fc                                         ; $63cb: $fc
	ld   [hl], d                                     ; $63cc: $72
	ld   de, $1111                                   ; $63cd: $11 $11 $11
	dec  d                                           ; $63d0: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63d1: $cf
	rst  $38                                         ; $63d2: $ff
	rst  $38                                         ; $63d3: $ff
	rst  $38                                         ; $63d4: $ff
	rst  $38                                         ; $63d5: $ff
	rst  $38                                         ; $63d6: $ff
	rst  $38                                         ; $63d7: $ff
	db   $fd                                         ; $63d8: $fd
	add  c                                           ; $63d9: $81
	ld   de, $1111                                   ; $63da: $11 $11 $11
	inc  d                                           ; $63dd: $14
	rst  $28                                         ; $63de: $ef
	rst  $38                                         ; $63df: $ff
	rst  $38                                         ; $63e0: $ff
	cp   $ff                                         ; $63e1: $fe $ff
	rst  $38                                         ; $63e3: $ff
	rst  $38                                         ; $63e4: $ff
	db   $ec                                         ; $63e5: $ec
	and  c                                           ; $63e6: $a1
	ld   de, $1111                                   ; $63e7: $11 $11 $11
	ld   d, $ff                                      ; $63ea: $16 $ff
	rst  $38                                         ; $63ec: $ff
	rst  $38                                         ; $63ed: $ff
	cp   $df                                         ; $63ee: $fe $df
	rst  $38                                         ; $63f0: $ff
	cp   $dc                                         ; $63f1: $fe $dc
	sub  h                                           ; $63f3: $94
	ld   de, $1111                                   ; $63f4: $11 $11 $11
	inc  hl                                          ; $63f7: $23
	xor  a                                           ; $63f8: $af
	rst  $38                                         ; $63f9: $ff
	db   $fc                                         ; $63fa: $fc
	rst  JumpTable                                         ; $63fb: $df
	rst  $38                                         ; $63fc: $ff
	rst  $38                                         ; $63fd: $ff
	rst  $38                                         ; $63fe: $ff
	db   $db                                         ; $63ff: $db
	cp   d                                           ; $6400: $ba
	ld   hl, $1111                                   ; $6401: $21 $11 $11
	inc  d                                           ; $6404: $14
	sbc  a                                           ; $6405: $9f
	rst  $38                                         ; $6406: $ff
	rst  $38                                         ; $6407: $ff
	xor  l                                           ; $6408: $ad
	cp   l                                           ; $6409: $bd
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	db   $fd                                         ; $640c: $fd
	cp   e                                           ; $640d: $bb
	ld   h, d                                        ; $640e: $62
	ld   de, $1111                                   ; $640f: $11 $11 $11
	adc  d                                           ; $6412: $8a
	rst  $38                                         ; $6413: $ff
	rst  $38                                         ; $6414: $ff
	add  sp, -$43                                    ; $6415: $e8 $bd
	rst  $28                                         ; $6417: $ef
	rst  $38                                         ; $6418: $ff
	rst  $38                                         ; $6419: $ff
	xor  c                                           ; $641a: $a9
	add  [hl]                                        ; $641b: $86
	ld   de, $1111                                   ; $641c: $11 $11 $11
	dec  de                                          ; $641f: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6420: $cf
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	add  a                                           ; $6423: $87
	rst  JumpTable                                         ; $6424: $df
	rst  $38                                         ; $6425: $ff
	rst  $38                                         ; $6426: $ff
	ei                                               ; $6427: $fb
	ld   h, [hl]                                     ; $6428: $66
	ld   h, c                                        ; $6429: $61
	ld   de, $1111                                   ; $642a: $11 $11 $11
	xor  a                                           ; $642d: $af
	rst  $38                                         ; $642e: $ff
	rst  $38                                         ; $642f: $ff
	ld   a, [$ff4a]                                  ; $6430: $fa $4a $ff
	rst  $38                                         ; $6433: $ff
	rst  $38                                         ; $6434: $ff
	or   l                                           ; $6435: $b5
	dec  h                                           ; $6436: $25
	ld   sp, $1111                                   ; $6437: $31 $11 $11
	ld   d, $ff                                      ; $643a: $16 $ff
	rst  $38                                         ; $643c: $ff
	rst  $38                                         ; $643d: $ff
	rst  ToBoot                                         ; $643e: $c7
	adc  a                                           ; $643f: $8f
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	cp   $83                                         ; $6442: $fe $83
	ld   b, e                                        ; $6444: $43
	ld   de, $1111                                   ; $6445: $11 $11 $11
	add  hl, de                                      ; $6448: $19
	rst  $38                                         ; $6449: $ff
	rst  $38                                         ; $644a: $ff
	db   $fc                                         ; $644b: $fc
	jp   z, $ffbf                                    ; $644c: $ca $bf $ff

	rst  $38                                         ; $644f: $ff
	cp   b                                           ; $6450: $b8
	ld   [hl], l                                     ; $6451: $75
	ld   b, l                                        ; $6452: $45
	ld   de, $1111                                   ; $6453: $11 $11 $11
	dec  sp                                          ; $6456: $3b
	rst  $38                                         ; $6457: $ff
	rst  $38                                         ; $6458: $ff
	db   $fc                                         ; $6459: $fc
	sbc  c                                           ; $645a: $99
	rst  $28                                         ; $645b: $ef
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	xor  c                                           ; $645e: $a9
	ld   h, h                                        ; $645f: $64
	add  [hl]                                        ; $6460: $86
	ld   de, $1111                                   ; $6461: $11 $11 $11
	ld   a, [de]                                     ; $6464: $1a
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	cp   $c5                                         ; $6467: $fe $c5
	adc  a                                           ; $6469: $8f
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	jp   c, $7a74                                    ; $646c: $da $74 $7a

	ld   d, c                                        ; $646f: $51
	ld   de, $1211                                   ; $6470: $11 $11 $12
	rst  $28                                         ; $6473: $ef
	rst  $38                                         ; $6474: $ff
	ld   hl, sp-$12                                  ; $6475: $f8 $ee
	adc  e                                           ; $6477: $8b
	rst  $38                                         ; $6478: $ff
	rst  $38                                         ; $6479: $ff
	jp   hl                                          ; $647a: $e9


	sbc  e                                           ; $647b: $9b
	sbc  e                                           ; $647c: $9b
	add  sp, $31                                     ; $647d: $e8 $31
	ld   de, $1511                                   ; $647f: $11 $11 $15
	rst  $38                                         ; $6482: $ff
	rst  $38                                         ; $6483: $ff
	cp   h                                           ; $6484: $bc
	ld   hl, sp+$5b                                  ; $6485: $f8 $5b
	rst  $38                                         ; $6487: $ff
	rst  $38                                         ; $6488: $ff
	call c, $68d9                                    ; $6489: $dc $d9 $68
	xor  b                                           ; $648c: $a8
	ld   de, $1111                                   ; $648d: $11 $11 $11
	dec  d                                           ; $6490: $15
	rst  $38                                         ; $6491: $ff
	rst  $38                                         ; $6492: $ff
	ld   h, a                                        ; $6493: $67
	jp   z, $ff89                                    ; $6494: $ca $89 $ff

Call_0cc_6497:
	rst  $38                                         ; $6497: $ff
	call $aaeb                                       ; $6498: $cd $eb $aa
	sbc  d                                           ; $649b: $9a
	ld   [hl], c                                     ; $649c: $71
	ld   de, $1211                                   ; $649d: $11 $11 $12
	sbc  a                                           ; $64a0: $9f
	rst  $38                                         ; $64a1: $ff
	rst  $20                                         ; $64a2: $e7
	ld   a, b                                        ; $64a3: $78
	add  [hl]                                        ; $64a4: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64a5: $cf
	rst  $38                                         ; $64a6: $ff
	db   $fc                                         ; $64a7: $fc
	sbc  h                                           ; $64a8: $9c
	sub  a                                           ; $64a9: $97
	xor  h                                           ; $64aa: $ac
	add  c                                           ; $64ab: $81
	ld   de, $1111                                   ; $64ac: $11 $11 $11
	ccf                                              ; $64af: $3f
	rst  $38                                         ; $64b0: $ff
	ld   sp, hl                                      ; $64b1: $f9
	cp   d                                           ; $64b2: $ba
	sbc  e                                           ; $64b3: $9b
	adc  [hl]                                        ; $64b4: $8e
	rst  $38                                         ; $64b5: $ff
	rst  $38                                         ; $64b6: $ff
	call z, $98bb                                    ; $64b7: $cc $bb $98
	and  a                                           ; $64ba: $a7
	ld   de, $1111                                   ; $64bb: $11 $11 $11
	ld   de, $ffdf                                   ; $64be: $11 $df $ff
	ld   c, a                                        ; $64c1: $4f
	db   $f4                                         ; $64c2: $f4
	ld   c, h                                        ; $64c3: $4c
	rst  $28                                         ; $64c4: $ef
	rst  $38                                         ; $64c5: $ff
	rst  JumpTable                                         ; $64c6: $df
	rst  $30                                         ; $64c7: $f7
	ld   l, d                                        ; $64c8: $6a
	cp   l                                           ; $64c9: $bd
	push de                                          ; $64ca: $d5
	ld   de, $1111                                   ; $64cb: $11 $11 $11
	inc  d                                           ; $64ce: $14
	rst  $38                                         ; $64cf: $ff
	db   $fc                                         ; $64d0: $fc
	rst  $28                                         ; $64d1: $ef
	push af                                          ; $64d2: $f5
	ld   e, e                                        ; $64d3: $5b
	rst  $38                                         ; $64d4: $ff
	rst  $38                                         ; $64d5: $ff
	rst  $28                                         ; $64d6: $ef
	ld   sp, hl                                      ; $64d7: $f9
	adc  l                                           ; $64d8: $8d
	call z, $11b4                                    ; $64d9: $cc $b4 $11
	ld   de, $1211                                   ; $64dc: $11 $11 $12
	cp   a                                           ; $64df: $bf
	rst  $38                                         ; $64e0: $ff
	ei                                               ; $64e1: $fb
	cp   [hl]                                        ; $64e2: $be
	add  [hl]                                        ; $64e3: $86
	rst  JumpTable                                         ; $64e4: $df
	rst  $38                                         ; $64e5: $ff
	ei                                               ; $64e6: $fb
	adc  $da                                         ; $64e7: $ce $da
	db   $dd                                         ; $64e9: $dd
	xor  e                                           ; $64ea: $ab
	ld   d, c                                        ; $64eb: $51
	ld   de, $1111                                   ; $64ec: $11 $11 $11
	add  hl, bc                                      ; $64ef: $09
	rst  $38                                         ; $64f0: $ff
	rst  $38                                         ; $64f1: $ff
	db   $fc                                         ; $64f2: $fc
	cp   e                                           ; $64f3: $bb
	ld   a, b                                        ; $64f4: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64f5: $cf
	rst  $38                                         ; $64f6: $ff
	cp   $cf                                         ; $64f7: $fe $cf
	ret  c                                           ; $64f9: $d8

	xor  c                                           ; $64fa: $a9
	add  l                                           ; $64fb: $85
	ld   de, $1111                                   ; $64fc: $11 $11 $11
	ld   [de], a                                     ; $64ff: $12
	ld   c, l                                        ; $6500: $4d
	rst  $38                                         ; $6501: $ff
	rst  $28                                         ; $6502: $ef
	ld   a, [$9b69]                                  ; $6503: $fa $69 $9b
	rst  $38                                         ; $6506: $ff
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	xor  $ab                                         ; $6509: $ee $ab
	add  sp, $34                                     ; $650b: $e8 $34
	ld   de, $1111                                   ; $650d: $11 $11 $11
	ld   de, $df27                                   ; $6510: $11 $27 $df
	rst  $38                                         ; $6513: $ff
	rst  $38                                         ; $6514: $ff
	call c, $bdcb                                    ; $6515: $dc $cb $bd
	rst  $38                                         ; $6518: $ff
	xor  $fc                                         ; $6519: $ee $fc
	xor  c                                           ; $651b: $a9
	ld   [hl], l                                     ; $651c: $75
	ld   b, e                                        ; $651d: $43
	ld   de, $1111                                   ; $651e: $11 $11 $11
	ld   de, $ab15                                   ; $6521: $11 $15 $ab
	adc  $ff                                         ; $6524: $ce $ff
	rst  $38                                         ; $6526: $ff
	call $cccc                                       ; $6527: $cd $cc $cc
	sbc  $cd                                         ; $652a: $de $cd
	xor  b                                           ; $652c: $a8
	halt                                             ; $652d: $76
	ld   d, l                                        ; $652e: $55
	ld   b, e                                        ; $652f: $43
	ld   b, e                                        ; $6530: $43
	ld   de, $1111                                   ; $6531: $11 $11 $11
	ld   [hl], $79                                   ; $6534: $36 $79
	adc  c                                           ; $6536: $89
	cp   h                                           ; $6537: $bc
	xor  d                                           ; $6538: $aa
	cp   e                                           ; $6539: $bb
	db   $dd                                         ; $653a: $dd
	xor  d                                           ; $653b: $aa
	cp   h                                           ; $653c: $bc
	res  5, d                                        ; $653d: $cb $aa
	cp   d                                           ; $653f: $ba
	adc  c                                           ; $6540: $89
	xor  d                                           ; $6541: $aa
	xor  c                                           ; $6542: $a9
	xor  b                                           ; $6543: $a8
	adc  c                                           ; $6544: $89
	halt                                             ; $6545: $76
	ld   h, [hl]                                     ; $6546: $66
	ld   d, l                                        ; $6547: $55
	ld   d, l                                        ; $6548: $55
	ld   b, l                                        ; $6549: $45
	ld   d, l                                        ; $654a: $55
	ld   d, [hl]                                     ; $654b: $56
	ld   [hl], a                                     ; $654c: $77
	ld   a, b                                        ; $654d: $78
	adc  c                                           ; $654e: $89
	sbc  c                                           ; $654f: $99
	xor  d                                           ; $6550: $aa
	xor  e                                           ; $6551: $ab
	call z, $bccb                                    ; $6552: $cc $cb $bc
	cp   d                                           ; $6555: $ba
	xor  c                                           ; $6556: $a9
	sbc  c                                           ; $6557: $99
	sbc  c                                           ; $6558: $99
	adc  b                                           ; $6559: $88
	add  a                                           ; $655a: $87
	ld   [hl], a                                     ; $655b: $77
	halt                                             ; $655c: $76
	ld   h, [hl]                                     ; $655d: $66
	ld   d, l                                        ; $655e: $55
	ld   d, l                                        ; $655f: $55
	ld   d, [hl]                                     ; $6560: $56
	ld   h, a                                        ; $6561: $67
	adc  c                                           ; $6562: $89
	adc  c                                           ; $6563: $89
	adc  b                                           ; $6564: $88
	sbc  b                                           ; $6565: $98
	adc  c                                           ; $6566: $89
	xor  d                                           ; $6567: $aa
	sbc  d                                           ; $6568: $9a
	xor  d                                           ; $6569: $aa
	sbc  e                                           ; $656a: $9b
	xor  d                                           ; $656b: $aa
	xor  d                                           ; $656c: $aa
	xor  c                                           ; $656d: $a9
	sub  a                                           ; $656e: $97
	ld   [hl], a                                     ; $656f: $77
	ld   [hl], a                                     ; $6570: $77
	add  a                                           ; $6571: $87
	ld   [hl], a                                     ; $6572: $77
	ld   [hl], a                                     ; $6573: $77
	halt                                             ; $6574: $76
	ld   h, [hl]                                     ; $6575: $66
	ld   h, [hl]                                     ; $6576: $66
	ld   h, a                                        ; $6577: $67
	ld   [hl], a                                     ; $6578: $77
	ld   [hl], a                                     ; $6579: $77
	ld   [hl], a                                     ; $657a: $77
	ld   [hl], a                                     ; $657b: $77
	ld   [hl], a                                     ; $657c: $77
	ld   a, c                                        ; $657d: $79
	xor  b                                           ; $657e: $a8
	xor  c                                           ; $657f: $a9
	adc  c                                           ; $6580: $89
	sbc  c                                           ; $6581: $99
	xor  c                                           ; $6582: $a9
	xor  d                                           ; $6583: $aa
	sbc  c                                           ; $6584: $99
	adc  b                                           ; $6585: $88
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	ld   a, b                                        ; $6588: $78
	ld   [hl], a                                     ; $6589: $77
	ld   h, [hl]                                     ; $658a: $66
	ld   h, [hl]                                     ; $658b: $66
	ld   [hl], a                                     ; $658c: $77
	ld   [hl], a                                     ; $658d: $77
	ld   [hl], a                                     ; $658e: $77
	ld   [hl], a                                     ; $658f: $77
	ld   [hl], a                                     ; $6590: $77
	ld   [hl], a                                     ; $6591: $77
	ld   a, b                                        ; $6592: $78
	adc  c                                           ; $6593: $89
	xor  c                                           ; $6594: $a9
	xor  c                                           ; $6595: $a9
	adc  d                                           ; $6596: $8a
	sbc  c                                           ; $6597: $99
	sbc  c                                           ; $6598: $99
	sbc  b                                           ; $6599: $98
	sbc  b                                           ; $659a: $98
	sbc  c                                           ; $659b: $99
	adc  b                                           ; $659c: $88
	sbc  b                                           ; $659d: $98
	ld   [hl], a                                     ; $659e: $77
	ld   [hl], a                                     ; $659f: $77
	ld   [hl], a                                     ; $65a0: $77
	ld   [hl], a                                     ; $65a1: $77
	ld   a, b                                        ; $65a2: $78
	add  a                                           ; $65a3: $87
	adc  c                                           ; $65a4: $89
	sbc  b                                           ; $65a5: $98
	ld   h, a                                        ; $65a6: $67
	add  a                                           ; $65a7: $87
	adc  c                                           ; $65a8: $89
	add  a                                           ; $65a9: $87
	ld   h, [hl]                                     ; $65aa: $66
	ld   [hl], a                                     ; $65ab: $77
	ld   a, c                                        ; $65ac: $79
	add  a                                           ; $65ad: $87
	ld   a, c                                        ; $65ae: $79
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	sbc  d                                           ; $65b1: $9a
	and  a                                           ; $65b2: $a7
	adc  c                                           ; $65b3: $89
	adc  b                                           ; $65b4: $88
	sbc  b                                           ; $65b5: $98
	sbc  b                                           ; $65b6: $98
	sbc  c                                           ; $65b7: $99

Call_0cc_65b8:
	sub  a                                           ; $65b8: $97
	ld   a, b                                        ; $65b9: $78
	ld   a, c                                        ; $65ba: $79
	add  a                                           ; $65bb: $87
	ld   h, [hl]                                     ; $65bc: $66
	ld   h, l                                        ; $65bd: $65
	ld   d, l                                        ; $65be: $55
	ld   d, l                                        ; $65bf: $55
	ld   d, [hl]                                     ; $65c0: $56
	ld   h, [hl]                                     ; $65c1: $66
	ld   [hl], a                                     ; $65c2: $77
	ld   [hl], a                                     ; $65c3: $77
	adc  b                                           ; $65c4: $88
	sbc  e                                           ; $65c5: $9b
	call z, $b9cd                                    ; $65c6: $cc $cd $b9
	sbc  d                                           ; $65c9: $9a
	sbc  c                                           ; $65ca: $99
	sbc  d                                           ; $65cb: $9a
	xor  c                                           ; $65cc: $a9
	adc  b                                           ; $65cd: $88
	add  a                                           ; $65ce: $87
	halt                                             ; $65cf: $76
	ld   h, a                                        ; $65d0: $67
	ld   h, [hl]                                     ; $65d1: $66
	ld   h, l                                        ; $65d2: $65
	ld   d, h                                        ; $65d3: $54
	ld   [hl+], a                                    ; $65d4: $22
	ld   de, $4434                                   ; $65d5: $11 $34 $44
	ld   d, a                                        ; $65d8: $57
	ld   a, b                                        ; $65d9: $78
	xor  d                                           ; $65da: $aa
	cp   l                                           ; $65db: $bd
	db   $dd                                         ; $65dc: $dd
	db   $ed                                         ; $65dd: $ed
	db   $dd                                         ; $65de: $dd
	call $bcdb                                       ; $65df: $cd $db $bc
	cp   d                                           ; $65e2: $ba
	xor  c                                           ; $65e3: $a9
	adc  b                                           ; $65e4: $88
	halt                                             ; $65e5: $76
	ld   d, l                                        ; $65e6: $55
	ld   b, e                                        ; $65e7: $43
	ld   hl, $1111                                   ; $65e8: $21 $11 $11
	ld   de, $2612                                   ; $65eb: $11 $12 $26
	sbc  d                                           ; $65ee: $9a
	adc  $ff                                         ; $65ef: $ce $ff
	rst  $38                                         ; $65f1: $ff
	rst  $38                                         ; $65f2: $ff
	cp   $df                                         ; $65f3: $fe $df
	call z, $bcba                                    ; $65f5: $cc $ba $bc
	xor  c                                           ; $65f8: $a9
	sbc  c                                           ; $65f9: $99
	sub  a                                           ; $65fa: $97
	ld   d, h                                        ; $65fb: $54
	ld   b, d                                        ; $65fc: $42
	ld   de, $1111                                   ; $65fd: $11 $11 $11
	ld   de, $6712                                   ; $6600: $11 $12 $67
	adc  $ff                                         ; $6603: $ce $ff
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	cp   $db                                         ; $6608: $fe $db
	res  7, d                                        ; $660a: $cb $ba
	cp   e                                           ; $660c: $bb
	cp   d                                           ; $660d: $ba
	xor  c                                           ; $660e: $a9
	add  [hl]                                        ; $660f: $86
	ld   sp, $1111                                   ; $6610: $31 $11 $11
	ld   de, $1211                                   ; $6613: $11 $11 $12
	ld   b, a                                        ; $6616: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6617: $cf
	rst  $38                                         ; $6618: $ff
	rst  $38                                         ; $6619: $ff
	rst  $38                                         ; $661a: $ff
	rst  $38                                         ; $661b: $ff
	db   $fc                                         ; $661c: $fc
	db   $db                                         ; $661d: $db
	xor  d                                           ; $661e: $aa
	xor  d                                           ; $661f: $aa
	xor  e                                           ; $6620: $ab
	xor  d                                           ; $6621: $aa
	sub  a                                           ; $6622: $97
	ld   d, l                                        ; $6623: $55
	ld   de, $1111                                   ; $6624: $11 $11 $11
	ld   de, $3a11                                   ; $6627: $11 $11 $3a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $662a: $cf
	rst  $38                                         ; $662b: $ff
	rst  $38                                         ; $662c: $ff
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	db   $db                                         ; $662f: $db
	cp   e                                           ; $6630: $bb
	sbc  c                                           ; $6631: $99
	sbc  d                                           ; $6632: $9a
	sbc  d                                           ; $6633: $9a
	sbc  c                                           ; $6634: $99
	sub  [hl]                                        ; $6635: $96
	ld   b, d                                        ; $6636: $42
	ld   de, $1111                                   ; $6637: $11 $11 $11
	ld   de, $ad14                                   ; $663a: $11 $14 $ad
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	call c, $8aca                                    ; $6641: $dc $ca $8a
	sbc  c                                           ; $6644: $99
	xor  b                                           ; $6645: $a8
	sbc  c                                           ; $6646: $99
	add  [hl]                                        ; $6647: $86
	ld   d, e                                        ; $6648: $53
	ld   bc, $1111                                   ; $6649: $01 $11 $11
	ld   de, $af15                                   ; $664c: $11 $15 $af
	rst  $38                                         ; $664f: $ff
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	rst  $38                                         ; $6652: $ff
	call c, $9aba                                    ; $6653: $dc $ba $9a
	xor  d                                           ; $6656: $aa
	xor  c                                           ; $6657: $a9
	xor  d                                           ; $6658: $aa
	add  l                                           ; $6659: $85
	ld   b, d                                        ; $665a: $42
	ld   de, $1111                                   ; $665b: $11 $11 $11
	ld   de, $cf37                                   ; $665e: $11 $37 $cf
	rst  $38                                         ; $6661: $ff
	rst  $38                                         ; $6662: $ff
	rst  $38                                         ; $6663: $ff
	db   $fc                                         ; $6664: $fc
	call z, $8a89                                    ; $6665: $cc $89 $8a
	ret                                              ; $6668: $c9


	cp   e                                           ; $6669: $bb
	cp   e                                           ; $666a: $bb
	ld   [hl], l                                     ; $666b: $75
	ld   b, c                                        ; $666c: $41
	ld   de, $1111                                   ; $666d: $11 $11 $11
	ld   de, $ff67                                   ; $6670: $11 $67 $ff
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff

Jump_0cc_6675:
	rst  $38                                         ; $6675: $ff
	db   $fc                                         ; $6676: $fc
	xor  d                                           ; $6677: $aa
	cp   d                                           ; $6678: $ba
	adc  d                                           ; $6679: $8a
	ld   [$979c], a                                  ; $667a: $ea $9c $97
	ld   h, e                                        ; $667d: $63
	ld   de, $1111                                   ; $667e: $11 $11 $11
	ld   de, $7d11                                   ; $6681: $11 $11 $7d
	rst  $38                                         ; $6684: $ff
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	ei                                               ; $6688: $fb
	cp   e                                           ; $6689: $bb
	xor  h                                           ; $668a: $ac
	set  1, h                                        ; $668b: $cb $cc
	jp   z, Jump_0cc_52a8                            ; $668d: $ca $a8 $52

	ld   de, $1111                                   ; $6690: $11 $11 $11
	ld   de, $9f16                                   ; $6693: $11 $16 $9f
	rst  $38                                         ; $6696: $ff
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	db   $fc                                         ; $6699: $fc
	db   $eb                                         ; $669a: $eb
	xor  h                                           ; $669b: $ac
	set  3, l                                        ; $669c: $cb $dd
	call z, Call_0cc_75ba                            ; $669e: $cc $ba $75
	ld   sp, $1111                                   ; $66a1: $31 $11 $11
	ld   de, $4c11                                   ; $66a4: $11 $11 $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66a7: $cf
	rst  $38                                         ; $66a8: $ff
	rst  $38                                         ; $66a9: $ff
	rst  $38                                         ; $66aa: $ff
	db   $fc                                         ; $66ab: $fc
	xor  l                                           ; $66ac: $ad
	call c, $dfee                                    ; $66ad: $dc $ee $df
	jp   z, $32b7                                    ; $66b0: $ca $b7 $32

	ld   de, $1111                                   ; $66b3: $11 $11 $11
	ld   de, $9f15                                   ; $66b6: $11 $15 $9f
	rst  $38                                         ; $66b9: $ff
	rst  $38                                         ; $66ba: $ff
	rst  $38                                         ; $66bb: $ff
	call c, $cccb                                    ; $66bc: $dc $cb $cc
	xor  $ff                                         ; $66bf: $ee $ff
	call c, Call_0cc_54d8                            ; $66c1: $dc $d8 $54
	ld   de, $1111                                   ; $66c4: $11 $11 $11
	ld   de, $9f11                                   ; $66c7: $11 $11 $9f
	rst  $38                                         ; $66ca: $ff
	rst  $38                                         ; $66cb: $ff
	rst  $38                                         ; $66cc: $ff
	cp   l                                           ; $66cd: $bd
	rst  $30                                         ; $66ce: $f7
	adc  $df                                         ; $66cf: $ce $df
	rst  $38                                         ; $66d1: $ff
	xor  $b7                                         ; $66d2: $ee $b7
	add  e                                           ; $66d4: $83
	ld   de, $1111                                   ; $66d5: $11 $11 $11
	ld   de, $9f11                                   ; $66d8: $11 $11 $9f
	rst  JumpTable                                         ; $66db: $df
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	call c, $bfc8                                    ; $66de: $dc $c8 $bf
	xor  $ff                                         ; $66e1: $ee $ff
	rst  $38                                         ; $66e3: $ff
	ret  z                                           ; $66e4: $c8

	sub  e                                           ; $66e5: $93
	ld   de, $1111                                   ; $66e6: $11 $11 $11
	ld   de, $5d11                                   ; $66e9: $11 $11 $5d
	rst  $38                                         ; $66ec: $ff
	rst  $38                                         ; $66ed: $ff
	rst  $38                                         ; $66ee: $ff
	cp   d                                           ; $66ef: $ba
	rst  $20                                         ; $66f0: $e7
	cp   [hl]                                        ; $66f1: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66f2: $cf
	rst  $38                                         ; $66f3: $ff
	rst  $38                                         ; $66f4: $ff
	rst  $10                                         ; $66f5: $d7
	add  d                                           ; $66f6: $82
	ld   de, $1111                                   ; $66f7: $11 $11 $11
	ld   de, $cf11                                   ; $66fa: $11 $11 $cf
	rst  $38                                         ; $66fd: $ff
	rst  $38                                         ; $66fe: $ff
	rst  $38                                         ; $66ff: $ff
	adc  d                                           ; $6700: $8a
	ld   hl, sp-$61                                  ; $6701: $f8 $9f
	cp   $ff                                         ; $6703: $fe $ff
	rst  $38                                         ; $6705: $ff
	ret  c                                           ; $6706: $d8

	sub  h                                           ; $6707: $94
	ld   de, $1111                                   ; $6708: $11 $11 $11
	ld   de, $ff15                                   ; $670b: $11 $15 $ff
	rst  $38                                         ; $670e: $ff
	rst  $38                                         ; $670f: $ff
	cp   $ba                                         ; $6710: $fe $ba
	sbc  d                                           ; $6712: $9a
	rst  $38                                         ; $6713: $ff
	rst  $28                                         ; $6714: $ef
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	cp   h                                           ; $6717: $bc
	ld   sp, $1111                                   ; $6718: $31 $11 $11
	ld   de, $5f11                                   ; $671b: $11 $11 $5f
	rst  $28                                         ; $671e: $ef
	rst  $38                                         ; $671f: $ff
	rst  $38                                         ; $6720: $ff
	call c, Call_0cc_6ec9                            ; $6721: $dc $c9 $6e
	rst  $38                                         ; $6724: $ff
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	ei                                               ; $6727: $fb
	sub  l                                           ; $6728: $95
	ld   de, $1111                                   ; $6729: $11 $11 $11
	ld   de, $8f11                                   ; $672c: $11 $11 $8f
	rst  $38                                         ; $672f: $ff
	rst  $38                                         ; $6730: $ff
	rst  $38                                         ; $6731: $ff
	xor  b                                           ; $6732: $a8
	sbc  c                                           ; $6733: $99
	cp   [hl]                                        ; $6734: $be
	rst  $38                                         ; $6735: $ff
	rst  $38                                         ; $6736: $ff
	rst  $38                                         ; $6737: $ff
	ret                                              ; $6738: $c9


	ld   d, d                                        ; $6739: $52
	ld   de, $1111                                   ; $673a: $11 $11 $11
	ld   de, $ff59                                   ; $673d: $11 $59 $ff
	rst  $38                                         ; $6740: $ff
	rst  $38                                         ; $6741: $ff
	db   $fd                                         ; $6742: $fd
	ld   c, d                                        ; $6743: $4a
	db   $eb                                         ; $6744: $eb
	rst  $38                                         ; $6745: $ff
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	rst  $38                                         ; $6748: $ff
	sub  d                                           ; $6749: $92
	ld   de, $1111                                   ; $674a: $11 $11 $11
	ld   de, $ff1b                                   ; $674d: $11 $1b $ff
	rst  $38                                         ; $6750: $ff
	rst  $38                                         ; $6751: $ff
	call c, $bdea                                    ; $6752: $dc $ea $bd
	rst  JumpTable                                         ; $6755: $df
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	cp   $c6                                         ; $6758: $fe $c6
	ld   de, $1111                                   ; $675a: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $675d: $11 $13 $ff
	rst  $38                                         ; $6760: $ff
	rst  $38                                         ; $6761: $ff
	cp   $5e                                         ; $6762: $fe $5e
	jp   c, $fffe                                    ; $6764: $da $fe $ff

	rst  $38                                         ; $6767: $ff
	rst  $38                                         ; $6768: $ff
	jp   c, $1151                                    ; $6769: $da $51 $11

	ld   de, $1111                                   ; $676c: $11 $11 $11
	ld   c, a                                        ; $676f: $4f
	rst  $38                                         ; $6770: $ff
	rst  $38                                         ; $6771: $ff
	rst  $38                                         ; $6772: $ff
	and  h                                           ; $6773: $a4
	rst  JumpTable                                         ; $6774: $df
	xor  a                                           ; $6775: $af
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	rst  $38                                         ; $6778: $ff
	ld   hl, sp+$34                                  ; $6779: $f8 $34
	ld   de, $1111                                   ; $677b: $11 $11 $11
	ld   de, $ffcf                                   ; $677e: $11 $cf $ff
	cp   $ff                                         ; $6781: $fe $ff
	ld   l, b                                        ; $6783: $68
	jp   c, $efff                                    ; $6784: $da $ff $ef

	rst  $38                                         ; $6787: $ff
	rst  $38                                         ; $6788: $ff
	ei                                               ; $6789: $fb
	sub  c                                           ; $678a: $91
	ld   de, $1111                                   ; $678b: $11 $11 $11
	ld   de, $ff7f                                   ; $678e: $11 $7f $ff
	rst  $38                                         ; $6791: $ff
	rst  JumpTable                                         ; $6792: $df
	jp   c, $ffab                                    ; $6793: $da $ab $ff

	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	rst  $38                                         ; $6798: $ff
	rst  $38                                         ; $6799: $ff
	push bc                                          ; $679a: $c5
	ld   de, $1111                                   ; $679b: $11 $11 $11
	ld   de, $ff7c                                   ; $679e: $11 $7c $ff
	rst  $38                                         ; $67a1: $ff
	reti                                             ; $67a2: $d9


	db   $ec                                         ; $67a3: $ec
	ld   h, a                                        ; $67a4: $67
	rst  JumpTable                                         ; $67a5: $df
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	rst  $38                                         ; $67a8: $ff
	rst  $38                                         ; $67a9: $ff
	rst  ToBoot                                         ; $67aa: $c7
	ld   de, $1111                                   ; $67ab: $11 $11 $11
	ld   de, $ff3e                                   ; $67ae: $11 $3e $ff
	rst  $38                                         ; $67b1: $ff
	db   $eb                                         ; $67b2: $eb
	ld   e, b                                        ; $67b3: $58
	sub  l                                           ; $67b4: $95
	cp   a                                           ; $67b5: $bf
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	rst  $38                                         ; $67b8: $ff
	rst  $38                                         ; $67b9: $ff
	db   $fd                                         ; $67ba: $fd
	ld   b, c                                        ; $67bb: $41
	ld   de, $1111                                   ; $67bc: $11 $11 $11
	inc  e                                           ; $67bf: $1c
	rst  $38                                         ; $67c0: $ff
	rst  $38                                         ; $67c1: $ff
	ld   a, [$6445]                                  ; $67c2: $fa $45 $64
	ld   l, [hl]                                     ; $67c5: $6e
	rst  $38                                         ; $67c6: $ff
	rst  $38                                         ; $67c7: $ff
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	ld   sp, hl                                      ; $67ca: $f9
	and  l                                           ; $67cb: $a5
	ld   de, $1111                                   ; $67cc: $11 $11 $11
	add  hl, de                                      ; $67cf: $19
	rst  $38                                         ; $67d0: $ff
	rst  $38                                         ; $67d1: $ff
	ei                                               ; $67d2: $fb
	ld   b, e                                        ; $67d3: $43
	daa                                              ; $67d4: $27
	ld   [hl], a                                     ; $67d5: $77
	rst  $38                                         ; $67d6: $ff
	rst  $38                                         ; $67d7: $ff
	rst  $38                                         ; $67d8: $ff
	rst  $38                                         ; $67d9: $ff
	db   $fc                                         ; $67da: $fc
	sub  d                                           ; $67db: $92
	ld   de, $1111                                   ; $67dc: $11 $11 $11
	add  hl, de                                      ; $67df: $19
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	ld   a, [$3741]                                  ; $67e2: $fa $41 $37
	ld   c, d                                        ; $67e5: $4a
	rst  $38                                         ; $67e6: $ff
	rst  $38                                         ; $67e7: $ff
	rst  $38                                         ; $67e8: $ff
	rst  $38                                         ; $67e9: $ff
	call c, $1171                                    ; $67ea: $dc $71 $11
	ld   de, $1f11                                   ; $67ed: $11 $11 $1f
	rst  $38                                         ; $67f0: $ff
	rst  $38                                         ; $67f1: $ff
	or   $11                                         ; $67f2: $f6 $11
	ld   d, [hl]                                     ; $67f4: $56
	ld   e, a                                        ; $67f5: $5f
	rst  $38                                         ; $67f6: $ff
	rst  $38                                         ; $67f7: $ff
	rst  $38                                         ; $67f8: $ff
	cp   $c9                                         ; $67f9: $fe $c9
	ld   de, $1111                                   ; $67fb: $11 $11 $11
	ld   de, $ffff                                   ; $67fe: $11 $ff $ff
	rst  $38                                         ; $6801: $ff
	ld   d, c                                        ; $6802: $51
	ld   d, $68                                      ; $6803: $16 $68
	rst  $38                                         ; $6805: $ff
	rst  $38                                         ; $6806: $ff
	rst  $38                                         ; $6807: $ff
	rst  $38                                         ; $6808: $ff
	db   $db                                         ; $6809: $db
	sub  e                                           ; $680a: $93
	ld   de, $1111                                   ; $680b: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $680e: $cf
	rst  $38                                         ; $680f: $ff
	rst  $38                                         ; $6810: $ff
	pop  de                                          ; $6811: $d1
	inc  d                                           ; $6812: $14
	ld   l, d                                        ; $6813: $6a
	rst  $38                                         ; $6814: $ff
	rst  $38                                         ; $6815: $ff
	rst  $38                                         ; $6816: $ff
	db   $fd                                         ; $6817: $fd
	db   $ec                                         ; $6818: $ec
	ld   [hl], e                                     ; $6819: $73
	ld   de, $1111                                   ; $681a: $11 $11 $11
	rst  JumpTable                                         ; $681d: $df
	rst  $38                                         ; $681e: $ff
	rst  $38                                         ; $681f: $ff
	or   c                                           ; $6820: $b1
	ld   a, [de]                                     ; $6821: $1a
	ld   h, a                                        ; $6822: $67
	rst  $38                                         ; $6823: $ff
	rst  $38                                         ; $6824: $ff
	rst  $38                                         ; $6825: $ff
	ei                                               ; $6826: $fb
	ld   l, b                                        ; $6827: $68
	sub  c                                           ; $6828: $91
	ld   de, $1611                                   ; $6829: $11 $11 $16
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	ei                                               ; $682e: $fb
	ld   de, $8f27                                   ; $682f: $11 $27 $8f
	rst  $38                                         ; $6832: $ff
	rst  $38                                         ; $6833: $ff
	rst  $38                                         ; $6834: $ff
	or   l                                           ; $6835: $b5
	ld   h, l                                        ; $6836: $65
	ld   de, $1111                                   ; $6837: $11 $11 $11
	ld   a, a                                        ; $683a: $7f
	rst  $38                                         ; $683b: $ff
	rst  $38                                         ; $683c: $ff
	add  c                                           ; $683d: $81
	ld   de, $ff64                                   ; $683e: $11 $64 $ff
	rst  $38                                         ; $6841: $ff
	rst  $38                                         ; $6842: $ff
	ei                                               ; $6843: $fb
	ld   [hl], h                                     ; $6844: $74
	ld   de, $1111                                   ; $6845: $11 $11 $11
	rra                                              ; $6848: $1f
	rst  $38                                         ; $6849: $ff
	rst  $38                                         ; $684a: $ff
	di                                               ; $684b: $f3
	ld   de, $af33                                   ; $684c: $11 $33 $af
	rst  $38                                         ; $684f: $ff
	rst  $38                                         ; $6850: $ff
	db   $fc                                         ; $6851: $fc
	sbc  c                                           ; $6852: $99
	ld   b, c                                        ; $6853: $41
	ld   de, $1f11                                   ; $6854: $11 $11 $1f
	rst  $38                                         ; $6857: $ff
	rst  $38                                         ; $6858: $ff
	db   $f4                                         ; $6859: $f4
	ld   de, $6f45                                   ; $685a: $11 $45 $6f
	rst  $38                                         ; $685d: $ff
	rst  $38                                         ; $685e: $ff
	ld   a, [$6185]                                  ; $685f: $fa $85 $61
	ld   de, $5f11                                   ; $6862: $11 $11 $5f
	rst  $38                                         ; $6865: $ff
	rst  $38                                         ; $6866: $ff
	pop  af                                          ; $6867: $f1
	inc  de                                          ; $6868: $13
	ld   h, c                                        ; $6869: $61
	rst  $38                                         ; $686a: $ff
	rst  $38                                         ; $686b: $ff
	rst  $38                                         ; $686c: $ff
	add  l                                           ; $686d: $85
	ld   d, l                                        ; $686e: $55
	ld   de, $1111                                   ; $686f: $11 $11 $11
	rst  $38                                         ; $6872: $ff
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	ld   de, $4f27                                   ; $6875: $11 $27 $4f
	rst  $38                                         ; $6878: $ff
	rst  $38                                         ; $6879: $ff
	db   $e4                                         ; $687a: $e4
	inc  d                                           ; $687b: $14
	ld   h, c                                        ; $687c: $61
	ld   de, $ef11                                   ; $687d: $11 $11 $ef
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	sub  c                                           ; $6882: $91
	ld   d, $6c                                      ; $6883: $16 $6c
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	db   $f4                                         ; $6887: $f4
	ld   de, $1111                                   ; $6888: $11 $11 $11
	ld   de, $ffaf                                   ; $688b: $11 $af $ff
	rst  $38                                         ; $688e: $ff
	ld   [hl], c                                     ; $688f: $71
	ld   de, $ff6f                                   ; $6890: $11 $6f $ff
	rst  $38                                         ; $6893: $ff
	pop  af                                          ; $6894: $f1
	ld   de, $1111                                   ; $6895: $11 $11 $11
	ld   de, $ffff                                   ; $6898: $11 $ff $ff
	rst  $38                                         ; $689b: $ff
	ld   de, $5f11                                   ; $689c: $11 $11 $5f
	rst  $38                                         ; $689f: $ff
	rst  $38                                         ; $68a0: $ff
	sub  c                                           ; $68a1: $91
	ld   de, $1111                                   ; $68a2: $11 $11 $11
	rra                                              ; $68a5: $1f
	rst  $38                                         ; $68a6: $ff
	rst  $38                                         ; $68a7: $ff
	pop  af                                          ; $68a8: $f1
	ld   de, $ff17                                   ; $68a9: $11 $17 $ff
	rst  $38                                         ; $68ac: $ff
	push af                                          ; $68ad: $f5
	ld   de, $1111                                   ; $68ae: $11 $11 $11
	ld   de, $ffff                                   ; $68b1: $11 $ff $ff
	or   $31                                         ; $68b4: $f6 $31
	inc  de                                          ; $68b6: $13
	rst  $38                                         ; $68b7: $ff
	rst  $38                                         ; $68b8: $ff
	ld   sp, hl                                      ; $68b9: $f9
	ld   de, $1111                                   ; $68ba: $11 $11 $11
	ld   d, $ff                                      ; $68bd: $16 $ff
	rst  $38                                         ; $68bf: $ff
	sub  $11                                         ; $68c0: $d6 $11
	rra                                              ; $68c2: $1f
	rst  $38                                         ; $68c3: $ff
	rst  $38                                         ; $68c4: $ff
	pop  af                                          ; $68c5: $f1
	ld   de, $1111                                   ; $68c6: $11 $11 $11
	rst  JumpTable                                         ; $68c9: $df
	rst  $38                                         ; $68ca: $ff
	db   $fc                                         ; $68cb: $fc
	ld   b, c                                        ; $68cc: $41
	ld   [de], a                                     ; $68cd: $12
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	pop  af                                          ; $68d0: $f1
	ld   de, $3f11                                   ; $68d1: $11 $11 $3f
	rst  $38                                         ; $68d4: $ff
	rst  $38                                         ; $68d5: $ff
	di                                               ; $68d6: $f3
	ld   de, $ff1c                                   ; $68d7: $11 $1c $ff
	pop  af                                          ; $68da: $f1
	ld   de, $5d11                                   ; $68db: $11 $11 $5d
	rst  $38                                         ; $68de: $ff
	rst  $38                                         ; $68df: $ff
	ei                                               ; $68e0: $fb
	ld   de, $ff6d                                   ; $68e1: $11 $6d $ff
	pop  af                                          ; $68e4: $f1
	ld   de, $7f11                                   ; $68e5: $11 $11 $7f
	rst  $38                                         ; $68e8: $ff
	rst  $38                                         ; $68e9: $ff
	and  a                                           ; $68ea: $a7
	ld   de, $ff5f                                   ; $68eb: $11 $5f $ff
	ld   sp, hl                                      ; $68ee: $f9
	ld   de, $1611                                   ; $68ef: $11 $11 $16
	rst  $38                                         ; $68f2: $ff
	rst  $38                                         ; $68f3: $ff
	ld   a, [$1411]                                  ; $68f4: $fa $11 $14
	rst  $38                                         ; $68f7: $ff
	rst  $38                                         ; $68f8: $ff
	ld   de, $1311                                   ; $68f9: $11 $11 $13
	rst  $38                                         ; $68fc: $ff
	rst  $38                                         ; $68fd: $ff
	rst  $38                                         ; $68fe: $ff
	ld   h, c                                        ; $68ff: $61
	ld   [de], a                                     ; $6900: $12
	rst  $38                                         ; $6901: $ff
	rst  $38                                         ; $6902: $ff
	ld   de, $1611                                   ; $6903: $11 $11 $16
	rst  $38                                         ; $6906: $ff
	rst  $38                                         ; $6907: $ff
	rst  $38                                         ; $6908: $ff
	ld   h, c                                        ; $6909: $61
	ld   de, $ffff                                   ; $690a: $11 $ff $ff
	ld   de, $1311                                   ; $690d: $11 $11 $13
	rst  $38                                         ; $6910: $ff
	rst  $38                                         ; $6911: $ff
	rst  $38                                         ; $6912: $ff
	ld   b, c                                        ; $6913: $41
	inc  d                                           ; $6914: $14
	rst  $38                                         ; $6915: $ff
	rst  $38                                         ; $6916: $ff
	ld   de, $1a11                                   ; $6917: $11 $11 $1a
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	cp   $11                                         ; $691c: $fe $11
	rla                                              ; $691e: $17
	rst  $38                                         ; $691f: $ff
	db   $fd                                         ; $6920: $fd
	ld   de, $1b11                                   ; $6921: $11 $11 $1b
	rst  $38                                         ; $6924: $ff
	rst  $38                                         ; $6925: $ff
	ld   sp, hl                                      ; $6926: $f9
	ld   de, $ff1f                                   ; $6927: $11 $1f $ff
	pop  af                                          ; $692a: $f1
	ld   de, $7f11                                   ; $692b: $11 $11 $7f
	rst  $38                                         ; $692e: $ff
	rst  $38                                         ; $692f: $ff
	pop  af                                          ; $6930: $f1
	ld   de, $ff8f                                   ; $6931: $11 $8f $ff
	ld   b, c                                        ; $6934: $41
	ld   de, $ff18                                   ; $6935: $11 $18 $ff
	rst  $38                                         ; $6938: $ff
	rst  $38                                         ; $6939: $ff
	ld   b, c                                        ; $693a: $41
	rla                                              ; $693b: $17
	rst  $38                                         ; $693c: $ff
	or   $11                                         ; $693d: $f6 $11
	ld   de, $ff9f                                   ; $693f: $11 $9f $ff
	rst  $38                                         ; $6942: $ff
	di                                               ; $6943: $f3
	inc  de                                          ; $6944: $13
	ld   a, a                                        ; $6945: $7f
	rst  $38                                         ; $6946: $ff
	ld   d, c                                        ; $6947: $51
	ld   de, $ff15                                   ; $6948: $11 $15 $ff
	rst  $38                                         ; $694b: $ff
	rst  $38                                         ; $694c: $ff
	ld   b, c                                        ; $694d: $41
	ld   e, b                                        ; $694e: $58
	rst  $38                                         ; $694f: $ff
	ldh  a, [c]                                      ; $6950: $f2
	ld   de, $df11                                   ; $6951: $11 $11 $df
	rst  $38                                         ; $6954: $ff
	rst  $38                                         ; $6955: $ff
	pop  af                                          ; $6956: $f1
	dec  d                                           ; $6957: $15
	rst  $38                                         ; $6958: $ff
	rst  $38                                         ; $6959: $ff
	ld   de, $5f11                                   ; $695a: $11 $11 $5f
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	ld   sp, hl                                      ; $695f: $f9
	ld   de, $ffaf                                   ; $6960: $11 $af $ff
	sub  c                                           ; $6963: $91
	ld   de, $ff1f                                   ; $6964: $11 $1f $ff
	rst  $38                                         ; $6967: $ff
	db   $fd                                         ; $6968: $fd
	ld   de, $ff6f                                   ; $6969: $11 $6f $ff
	pop  af                                          ; $696c: $f1
	ld   de, $ff1c                                   ; $696d: $11 $1c $ff
	rst  $38                                         ; $6970: $ff
	rst  $38                                         ; $6971: $ff
	ld   de, $ff3e                                   ; $6972: $11 $3e $ff
	pop  de                                          ; $6975: $d1
	ld   de, $ff1c                                   ; $6976: $11 $1c $ff
	rst  $38                                         ; $6979: $ff
	rst  $38                                         ; $697a: $ff
	ld   de, $ff3f                                   ; $697b: $11 $3f $ff
	pop  hl                                          ; $697e: $e1
	ld   de, $ff1d                                   ; $697f: $11 $1d $ff
	rst  $38                                         ; $6982: $ff
	db   $fd                                         ; $6983: $fd
	ld   de, $ff3f                                   ; $6984: $11 $3f $ff
	add  c                                           ; $6987: $81
	ld   de, $ff3f                                   ; $6988: $11 $3f $ff
	rst  $38                                         ; $698b: $ff
	db   $fd                                         ; $698c: $fd
	ld   de, $ff4f                                   ; $698d: $11 $4f $ff
	ld   de, $cf11                                   ; $6990: $11 $11 $cf
	rst  $38                                         ; $6993: $ff
	rst  $38                                         ; $6994: $ff
	ld   hl, sp+$11                                  ; $6995: $f8 $11
	rst  $38                                         ; $6997: $ff
	rst  $30                                         ; $6998: $f7
	ld   de, $cf14                                   ; $6999: $11 $14 $cf
	rst  $38                                         ; $699c: $ff
	rst  $38                                         ; $699d: $ff
	db   $e3                                         ; $699e: $e3
	ld   d, $ff                                      ; $699f: $16 $ff
	pop  hl                                          ; $69a1: $e1
	ld   de, $ff3c                                   ; $69a2: $11 $3c $ff
	rst  $38                                         ; $69a5: $ff
	rst  $38                                         ; $69a6: $ff
	add  c                                           ; $69a7: $81
	ld   c, a                                        ; $69a8: $4f
	rst  $38                                         ; $69a9: $ff
	ld   de, $df12                                   ; $69aa: $11 $12 $df
	rst  $38                                         ; $69ad: $ff
	rst  $38                                         ; $69ae: $ff
	jp   z, $ff57                                    ; $69af: $ca $57 $ff

	pop  af                                          ; $69b2: $f1
	ld   de, $ff3e                                   ; $69b3: $11 $3e $ff
	rst  $38                                         ; $69b6: $ff
	ld   sp, hl                                      ; $69b7: $f9
	ld   c, b                                        ; $69b8: $48
	ld   a, a                                        ; $69b9: $7f
	ei                                               ; $69ba: $fb
	ld   de, $cf18                                   ; $69bb: $11 $18 $cf
	rst  $38                                         ; $69be: $ff
	rst  $38                                         ; $69bf: $ff
	ld   d, [hl]                                     ; $69c0: $56
	ld   a, d                                        ; $69c1: $7a
	rst  $38                                         ; $69c2: $ff
	ld   d, c                                        ; $69c3: $51
	ld   de, $ffef                                   ; $69c4: $11 $ef $ff
	rst  $38                                         ; $69c7: $ff
	ld   [hl], l                                     ; $69c8: $75
	or   [hl]                                        ; $69c9: $b6
	rst  $38                                         ; $69ca: $ff
	pop  af                                          ; $69cb: $f1
	ld   de, $ffaf                                   ; $69cc: $11 $af $ff
	rst  $38                                         ; $69cf: $ff
	call nz, $df8c                                   ; $69d0: $c4 $8c $df
	pop  af                                          ; $69d3: $f1
	ld   de, $ff2f                                   ; $69d4: $11 $2f $ff
	rst  $38                                         ; $69d7: $ff
	di                                               ; $69d8: $f3
	ld   e, e                                        ; $69d9: $5b
	cp   a                                           ; $69da: $bf
	db   $f4                                         ; $69db: $f4
	ld   de, $ff1c                                   ; $69dc: $11 $1c $ff
	rst  $38                                         ; $69df: $ff
	rst  $30                                         ; $69e0: $f7
	ld   e, e                                        ; $69e1: $5b
	call $11f9                                       ; $69e2: $cd $f9 $11
	dec  e                                           ; $69e5: $1d
	rst  $38                                         ; $69e6: $ff
	rst  $38                                         ; $69e7: $ff
	or   $5a                                         ; $69e8: $f6 $5a
	rst  JumpTable                                         ; $69ea: $df
	or   $11                                         ; $69eb: $f6 $11
	ld   a, [de]                                     ; $69ed: $1a
	cp   $ff                                         ; $69ee: $fe $ff
	ld   hl, sp-$61                                  ; $69f0: $f8 $9f
	ld   [$11f1], a                                  ; $69f2: $ea $f1 $11
	dec  e                                           ; $69f5: $1d
	cp   $ff                                         ; $69f6: $fe $ff
	or   $9f                                         ; $69f8: $f6 $9f
	db   $fd                                         ; $69fa: $fd
	pop  af                                          ; $69fb: $f1
	ld   de, $ff4d                                   ; $69fc: $11 $4d $ff
	rst  $38                                         ; $69ff: $ff
	ld   hl, sp-$01                                  ; $6a00: $f8 $ff
	sbc  $a1                                         ; $6a02: $de $a1
	ld   de, $ff4f                                   ; $6a04: $11 $4f $ff
	rst  $38                                         ; $6a07: $ff
	ld   [hl], a                                     ; $6a08: $77
	rst  $38                                         ; $6a09: $ff
	db   $fd                                         ; $6a0a: $fd
	ld   de, $8f11                                   ; $6a0b: $11 $11 $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a0e: $cf
	rst  $38                                         ; $6a0f: $ff
	xor  [hl]                                        ; $6a10: $ae
	cp   $e5                                         ; $6a11: $fe $e5
	ld   de, $ec18                                   ; $6a13: $11 $18 $ec
	rst  $38                                         ; $6a16: $ff
	ld   hl, sp-$31                                  ; $6a17: $f8 $cf
	db   $fc                                         ; $6a19: $fc
	or   c                                           ; $6a1a: $b1
	ld   de, $ef1c                                   ; $6a1b: $11 $1c $ef
	rst  $38                                         ; $6a1e: $ff
	jp   z, $bdff                                    ; $6a1f: $ca $ff $bd

	ld   de, $bc11                                   ; $6a22: $11 $11 $bc
	adc  a                                           ; $6a25: $8f
	rst  $38                                         ; $6a26: $ff
	xor  a                                           ; $6a27: $af
	cp   $d1                                         ; $6a28: $fe $d1
	ld   de, $c815                                   ; $6a2a: $11 $15 $c8
	rst  $38                                         ; $6a2d: $ff
	db   $fd                                         ; $6a2e: $fd
	rst  $38                                         ; $6a2f: $ff
	db   $ed                                         ; $6a30: $ed
	ld   b, c                                        ; $6a31: $41
	ld   de, $8d8d                                   ; $6a32: $11 $8d $8d
	rst  $38                                         ; $6a35: $ff
	db   $dd                                         ; $6a36: $dd
	rst  $38                                         ; $6a37: $ff
	push de                                          ; $6a38: $d5
	ld   de, $ba15                                   ; $6a39: $11 $15 $ba
	sbc  a                                           ; $6a3c: $9f
	ld   a, [$ffef]                                  ; $6a3d: $fa $ef $ff
	sub  c                                           ; $6a40: $91
	ld   de, $a84b                                   ; $6a41: $11 $4b $a8
	rst  $38                                         ; $6a44: $ff
	cp   [hl]                                        ; $6a45: $be
	rst  $38                                         ; $6a46: $ff
	db   $db                                         ; $6a47: $db
	ld   de, $ca15                                   ; $6a48: $11 $15 $ca
	ld   e, a                                        ; $6a4b: $5f
	ei                                               ; $6a4c: $fb
	xor  a                                           ; $6a4d: $af
	rst  $38                                         ; $6a4e: $ff
	or   c                                           ; $6a4f: $b1
	ld   de, $e819                                   ; $6a50: $11 $19 $e8
	rst  $28                                         ; $6a53: $ef
	db   $ec                                         ; $6a54: $ec
	rst  $38                                         ; $6a55: $ff
	cp   c                                           ; $6a56: $b9
	ld   de, $ae11                                   ; $6a57: $11 $11 $ae
	ld   l, l                                        ; $6a5a: $6d
	rst  $38                                         ; $6a5b: $ff
	cp   a                                           ; $6a5c: $bf
	db   $fc                                         ; $6a5d: $fc
	add  c                                           ; $6a5e: $81
	ld   de, $f71a                                   ; $6a5f: $11 $1a $f7
	sbc  a                                           ; $6a62: $9f
	db   $fd                                         ; $6a63: $fd
	rst  $38                                         ; $6a64: $ff
	ret                                              ; $6a65: $c9


	ld   de, $af11                                   ; $6a66: $11 $11 $af
	xor  h                                           ; $6a69: $ac
	db   $ec                                         ; $6a6a: $ec
	rst  JumpTable                                         ; $6a6b: $df
	cp   $b1                                         ; $6a6c: $fe $b1
	ld   de, $e817                                   ; $6a6e: $11 $17 $e8
	cp   a                                           ; $6a71: $bf
	cp   $ef                                         ; $6a72: $fe $ef
	jp   c, $1311                                    ; $6a74: $da $11 $13

	ld   l, a                                        ; $6a77: $6f
	sbc  b                                           ; $6a78: $98
	cp   $ee                                         ; $6a79: $fe $ee
	xor  $b1                                         ; $6a7b: $ee $b1
	ld   de, $fa16                                   ; $6a7d: $11 $16 $fa
	ld   a, l                                        ; $6a80: $7d
	call z, $fddf                                    ; $6a81: $cc $df $fd
	ld   de, $5f11                                   ; $6a84: $11 $11 $5f
	ld   [$ceb9], a                                  ; $6a87: $ea $b9 $ce
	rst  $28                                         ; $6a8a: $ef
	jp   Jump_0cc_5611                               ; $6a8b: $c3 $11 $56


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a8e: $cf
	xor  b                                           ; $6a8f: $a8
	cp   e                                           ; $6a90: $bb
	xor  e                                           ; $6a91: $ab
	rst  $28                                         ; $6a92: $ef
	ld   b, c                                        ; $6a93: $41
	inc  de                                          ; $6a94: $13
	ld   c, b                                        ; $6a95: $48
	cp   $88                                         ; $6a96: $fe $88
	call z, $f98a                                    ; $6a98: $cc $8a $f9
	ld   de, $6b27                                   ; $6a9b: $11 $27 $6b
	db   $fc                                         ; $6a9e: $fc
	adc  b                                           ; $6a9f: $88
	cp   d                                           ; $6aa0: $ba
	cp   l                                           ; $6aa1: $bd
	and  h                                           ; $6aa2: $a4
	ld   [de], a                                     ; $6aa3: $12
	ld   [hl], a                                     ; $6aa4: $77
	cp   l                                           ; $6aa5: $bd
	or   [hl]                                        ; $6aa6: $b6
	ld   e, c                                        ; $6aa7: $59
	set  7, a                                        ; $6aa8: $cb $ff
	ld   sp, $ab17                                   ; $6aaa: $31 $17 $ab
	call z, Call_0cc_4893                            ; $6aad: $cc $93 $48
	sbc  h                                           ; $6ab0: $9c
	db   $fd                                         ; $6ab1: $fd
	ld   de, $9b27                                   ; $6ab2: $11 $27 $9b
	cp   $61                                         ; $6ab5: $fe $61
	ld   b, a                                        ; $6ab7: $47
	sbc  l                                           ; $6ab8: $9d
	add  sp, $32                                     ; $6ab9: $e8 $32
	ld   e, b                                        ; $6abb: $58
	sbc  b                                           ; $6abc: $98
	xor  d                                           ; $6abd: $aa
	adc  c                                           ; $6abe: $89
	ld   l, d                                        ; $6abf: $6a
	xor  c                                           ; $6ac0: $a9
	ld   b, e                                        ; $6ac1: $43
	ld   c, d                                        ; $6ac2: $4a
	reti                                             ; $6ac3: $d9


	and  a                                           ; $6ac4: $a7
	ld   [hl], l                                     ; $6ac5: $75
	ld   d, [hl]                                     ; $6ac6: $56
	sbc  l                                           ; $6ac7: $9d
	rst  ToBoot                                         ; $6ac8: $c7
	dec  [hl]                                        ; $6ac9: $35
	ld   h, a                                        ; $6aca: $67
	cp   e                                           ; $6acb: $bb
	cp   b                                           ; $6acc: $b8
	ld   e, b                                        ; $6acd: $58
	halt                                             ; $6ace: $76
	ld   a, d                                        ; $6acf: $7a
	sub  a                                           ; $6ad0: $97
	ld   [hl], a                                     ; $6ad1: $77
	xor  d                                           ; $6ad2: $aa
	ld   [hl], a                                     ; $6ad3: $77
	add  a                                           ; $6ad4: $87
	ld   h, [hl]                                     ; $6ad5: $66
	sbc  c                                           ; $6ad6: $99
	halt                                             ; $6ad7: $76
	ld   a, d                                        ; $6ad8: $7a
	halt                                             ; $6ad9: $76
	xor  e                                           ; $6ada: $ab
	halt                                             ; $6adb: $76
	halt                                             ; $6adc: $76
	ld   a, b                                        ; $6add: $78
	and  a                                           ; $6ade: $a7
	ld   h, a                                        ; $6adf: $67
	add  a                                           ; $6ae0: $87
	sbc  d                                           ; $6ae1: $9a
	add  a                                           ; $6ae2: $87
	ld   a, e                                        ; $6ae3: $7b
	sub  l                                           ; $6ae4: $95
	ld   b, [hl]                                     ; $6ae5: $46
	xor  e                                           ; $6ae6: $ab
	sbc  b                                           ; $6ae7: $98
	sub  a                                           ; $6ae8: $97
	ld   l, b                                        ; $6ae9: $68
	sbc  b                                           ; $6aea: $98
	ld   a, b                                        ; $6aeb: $78
	sub  a                                           ; $6aec: $97
	ld   h, a                                        ; $6aed: $67
	ld   a, b                                        ; $6aee: $78
	sbc  b                                           ; $6aef: $98
	sbc  d                                           ; $6af0: $9a
	sub  [hl]                                        ; $6af1: $96
	ld   d, l                                        ; $6af2: $55
	ld   [hl], a                                     ; $6af3: $77
	sbc  e                                           ; $6af4: $9b
	xor  b                                           ; $6af5: $a8
	ld   d, a                                        ; $6af6: $57
	add  a                                           ; $6af7: $87
	sbc  d                                           ; $6af8: $9a
	cp   b                                           ; $6af9: $b8
	ld   h, [hl]                                     ; $6afa: $66
	ld   a, b                                        ; $6afb: $78
	adc  b                                           ; $6afc: $88
	ld   a, e                                        ; $6afd: $7b
	cp   b                                           ; $6afe: $b8
	halt                                             ; $6aff: $76
	ld   h, [hl]                                     ; $6b00: $66
	adc  d                                           ; $6b01: $8a
	adc  b                                           ; $6b02: $88
	ld   h, l                                        ; $6b03: $65
	ld   l, b                                        ; $6b04: $68
	xor  d                                           ; $6b05: $aa
	adc  b                                           ; $6b06: $88
	add  [hl]                                        ; $6b07: $86
	ld   a, b                                        ; $6b08: $78
	ld   [hl], a                                     ; $6b09: $77
	ld   a, d                                        ; $6b0a: $7a
	xor  b                                           ; $6b0b: $a8
	ld   a, b                                        ; $6b0c: $78
	adc  b                                           ; $6b0d: $88
	adc  c                                           ; $6b0e: $89
	xor  c                                           ; $6b0f: $a9
	ld   [hl], a                                     ; $6b10: $77
	ld   l, b                                        ; $6b11: $68
	adc  c                                           ; $6b12: $89
	sbc  b                                           ; $6b13: $98
	adc  b                                           ; $6b14: $88
	ld   [hl], a                                     ; $6b15: $77
	sbc  c                                           ; $6b16: $99
	sbc  c                                           ; $6b17: $99
	add  a                                           ; $6b18: $87
	ld   [hl], a                                     ; $6b19: $77
	adc  b                                           ; $6b1a: $88
	adc  c                                           ; $6b1b: $89
	sbc  b                                           ; $6b1c: $98
	adc  b                                           ; $6b1d: $88
	sbc  b                                           ; $6b1e: $98
	adc  c                                           ; $6b1f: $89
	ld   [hl], a                                     ; $6b20: $77
	adc  b                                           ; $6b21: $88
	sub  a                                           ; $6b22: $97
	ld   [hl], a                                     ; $6b23: $77
	adc  c                                           ; $6b24: $89
	sbc  c                                           ; $6b25: $99
	ld   [hl], a                                     ; $6b26: $77
	ld   [hl], a                                     ; $6b27: $77
	adc  b                                           ; $6b28: $88
	sbc  b                                           ; $6b29: $98
	sub  a                                           ; $6b2a: $97
	adc  b                                           ; $6b2b: $88
	adc  c                                           ; $6b2c: $89
	adc  b                                           ; $6b2d: $88
	adc  b                                           ; $6b2e: $88
	ld   [hl], a                                     ; $6b2f: $77
	adc  b                                           ; $6b30: $88
	sbc  c                                           ; $6b31: $99
	sbc  c                                           ; $6b32: $99
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  c                                           ; $6b35: $89
	adc  c                                           ; $6b36: $89
	add  a                                           ; $6b37: $87
	ld   a, b                                        ; $6b38: $78
	sbc  b                                           ; $6b39: $98
	adc  c                                           ; $6b3a: $89
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	adc  c                                           ; $6b3d: $89
	adc  b                                           ; $6b3e: $88
	adc  b                                           ; $6b3f: $88
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	adc  b                                           ; $6b42: $88
	sbc  c                                           ; $6b43: $99
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	sbc  c                                           ; $6b47: $99
	adc  b                                           ; $6b48: $88
	adc  b                                           ; $6b49: $88
	adc  c                                           ; $6b4a: $89
	adc  b                                           ; $6b4b: $88
	adc  b                                           ; $6b4c: $88
	adc  b                                           ; $6b4d: $88
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	adc  b                                           ; $6b50: $88
	adc  b                                           ; $6b51: $88
	adc  b                                           ; $6b52: $88
	adc  b                                           ; $6b53: $88
	adc  b                                           ; $6b54: $88
	adc  b                                           ; $6b55: $88
	adc  b                                           ; $6b56: $88
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	adc  b                                           ; $6b59: $88
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	adc  b                                           ; $6b5c: $88
	adc  b                                           ; $6b5d: $88
	adc  b                                           ; $6b5e: $88
	adc  b                                           ; $6b5f: $88
	adc  b                                           ; $6b60: $88
	adc  b                                           ; $6b61: $88
	adc  b                                           ; $6b62: $88
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	adc  b                                           ; $6b65: $88
	adc  b                                           ; $6b66: $88
	adc  b                                           ; $6b67: $88
	adc  b                                           ; $6b68: $88
	adc  b                                           ; $6b69: $88
	adc  b                                           ; $6b6a: $88
	adc  b                                           ; $6b6b: $88
	adc  b                                           ; $6b6c: $88
	adc  b                                           ; $6b6d: $88
	adc  b                                           ; $6b6e: $88
	adc  b                                           ; $6b6f: $88
	adc  b                                           ; $6b70: $88
	adc  b                                           ; $6b71: $88
	adc  b                                           ; $6b72: $88
	adc  b                                           ; $6b73: $88
	adc  b                                           ; $6b74: $88
	adc  b                                           ; $6b75: $88
	adc  b                                           ; $6b76: $88
	adc  b                                           ; $6b77: $88
	adc  b                                           ; $6b78: $88
	adc  b                                           ; $6b79: $88
	adc  b                                           ; $6b7a: $88
	adc  b                                           ; $6b7b: $88
	adc  b                                           ; $6b7c: $88
	adc  b                                           ; $6b7d: $88
	adc  b                                           ; $6b7e: $88
	adc  b                                           ; $6b7f: $88
	adc  b                                           ; $6b80: $88
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  b                                           ; $6b83: $88
	adc  b                                           ; $6b84: $88
	adc  b                                           ; $6b85: $88
	adc  b                                           ; $6b86: $88
	adc  b                                           ; $6b87: $88
	adc  b                                           ; $6b88: $88
	adc  b                                           ; $6b89: $88
	adc  b                                           ; $6b8a: $88
	adc  b                                           ; $6b8b: $88
	adc  b                                           ; $6b8c: $88
	adc  b                                           ; $6b8d: $88
	adc  b                                           ; $6b8e: $88
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  b                                           ; $6b91: $88
	adc  b                                           ; $6b92: $88
	adc  b                                           ; $6b93: $88
	adc  b                                           ; $6b94: $88
	adc  b                                           ; $6b95: $88
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	adc  b                                           ; $6b99: $88
	adc  b                                           ; $6b9a: $88
	adc  b                                           ; $6b9b: $88
	adc  b                                           ; $6b9c: $88
	adc  b                                           ; $6b9d: $88
	adc  b                                           ; $6b9e: $88
	adc  b                                           ; $6b9f: $88
	adc  b                                           ; $6ba0: $88
	adc  b                                           ; $6ba1: $88
	adc  b                                           ; $6ba2: $88
	adc  b                                           ; $6ba3: $88
	adc  b                                           ; $6ba4: $88
	adc  b                                           ; $6ba5: $88
	adc  b                                           ; $6ba6: $88
	adc  b                                           ; $6ba7: $88
	adc  b                                           ; $6ba8: $88
	adc  b                                           ; $6ba9: $88
	adc  b                                           ; $6baa: $88
	adc  b                                           ; $6bab: $88
	adc  b                                           ; $6bac: $88
	adc  b                                           ; $6bad: $88
	adc  b                                           ; $6bae: $88
	adc  b                                           ; $6baf: $88
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	adc  b                                           ; $6bb2: $88
	adc  b                                           ; $6bb3: $88
	adc  b                                           ; $6bb4: $88
	adc  b                                           ; $6bb5: $88
	adc  b                                           ; $6bb6: $88
	adc  b                                           ; $6bb7: $88
	adc  b                                           ; $6bb8: $88
	adc  b                                           ; $6bb9: $88
	adc  b                                           ; $6bba: $88
	adc  b                                           ; $6bbb: $88
	adc  b                                           ; $6bbc: $88
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	adc  b                                           ; $6bbf: $88
	adc  b                                           ; $6bc0: $88
	adc  b                                           ; $6bc1: $88
	adc  b                                           ; $6bc2: $88
	adc  b                                           ; $6bc3: $88
	adc  b                                           ; $6bc4: $88
	adc  b                                           ; $6bc5: $88
	adc  b                                           ; $6bc6: $88
	adc  b                                           ; $6bc7: $88
	adc  b                                           ; $6bc8: $88
	adc  b                                           ; $6bc9: $88
	adc  b                                           ; $6bca: $88
	adc  b                                           ; $6bcb: $88
	adc  b                                           ; $6bcc: $88
	adc  b                                           ; $6bcd: $88
	adc  b                                           ; $6bce: $88
	adc  b                                           ; $6bcf: $88
	adc  b                                           ; $6bd0: $88
	adc  b                                           ; $6bd1: $88
	adc  b                                           ; $6bd2: $88
	adc  b                                           ; $6bd3: $88
	adc  b                                           ; $6bd4: $88
	adc  b                                           ; $6bd5: $88
	adc  b                                           ; $6bd6: $88
	adc  b                                           ; $6bd7: $88
	adc  b                                           ; $6bd8: $88
	adc  b                                           ; $6bd9: $88
	adc  b                                           ; $6bda: $88
	adc  b                                           ; $6bdb: $88
	adc  b                                           ; $6bdc: $88
	adc  b                                           ; $6bdd: $88
	adc  b                                           ; $6bde: $88
	adc  b                                           ; $6bdf: $88
	adc  b                                           ; $6be0: $88
	adc  b                                           ; $6be1: $88
	adc  b                                           ; $6be2: $88
	adc  b                                           ; $6be3: $88
	adc  b                                           ; $6be4: $88
	adc  b                                           ; $6be5: $88
	adc  b                                           ; $6be6: $88
	adc  b                                           ; $6be7: $88
	adc  b                                           ; $6be8: $88
	adc  b                                           ; $6be9: $88
	adc  b                                           ; $6bea: $88
	adc  b                                           ; $6beb: $88
	adc  b                                           ; $6bec: $88
	adc  b                                           ; $6bed: $88
	adc  b                                           ; $6bee: $88
	adc  b                                           ; $6bef: $88
	adc  b                                           ; $6bf0: $88
	adc  b                                           ; $6bf1: $88
	adc  b                                           ; $6bf2: $88
	adc  b                                           ; $6bf3: $88
	adc  b                                           ; $6bf4: $88
	adc  b                                           ; $6bf5: $88
	adc  b                                           ; $6bf6: $88
	adc  b                                           ; $6bf7: $88
	adc  b                                           ; $6bf8: $88
	adc  b                                           ; $6bf9: $88
	adc  b                                           ; $6bfa: $88
	adc  b                                           ; $6bfb: $88
	adc  b                                           ; $6bfc: $88
	adc  b                                           ; $6bfd: $88
	adc  b                                           ; $6bfe: $88
	adc  b                                           ; $6bff: $88
	adc  b                                           ; $6c00: $88
	adc  b                                           ; $6c01: $88
	adc  b                                           ; $6c02: $88
	adc  b                                           ; $6c03: $88
	adc  b                                           ; $6c04: $88
	adc  b                                           ; $6c05: $88
	adc  b                                           ; $6c06: $88
	adc  b                                           ; $6c07: $88
	adc  b                                           ; $6c08: $88
	adc  b                                           ; $6c09: $88
	adc  b                                           ; $6c0a: $88
	adc  b                                           ; $6c0b: $88
	adc  b                                           ; $6c0c: $88
	adc  b                                           ; $6c0d: $88
	adc  b                                           ; $6c0e: $88
	adc  b                                           ; $6c0f: $88
	adc  b                                           ; $6c10: $88
	adc  b                                           ; $6c11: $88
	adc  b                                           ; $6c12: $88
	adc  b                                           ; $6c13: $88
	adc  b                                           ; $6c14: $88
	adc  b                                           ; $6c15: $88
	adc  b                                           ; $6c16: $88
	adc  b                                           ; $6c17: $88
	adc  b                                           ; $6c18: $88
	adc  b                                           ; $6c19: $88
	adc  b                                           ; $6c1a: $88
	adc  b                                           ; $6c1b: $88
	adc  b                                           ; $6c1c: $88
	adc  b                                           ; $6c1d: $88
	adc  b                                           ; $6c1e: $88
	adc  b                                           ; $6c1f: $88
	adc  b                                           ; $6c20: $88
	adc  b                                           ; $6c21: $88
	adc  b                                           ; $6c22: $88
	adc  b                                           ; $6c23: $88
	adc  b                                           ; $6c24: $88
	adc  b                                           ; $6c25: $88
	adc  b                                           ; $6c26: $88
	adc  b                                           ; $6c27: $88
	adc  b                                           ; $6c28: $88
	adc  b                                           ; $6c29: $88
	adc  b                                           ; $6c2a: $88
	adc  b                                           ; $6c2b: $88
	adc  b                                           ; $6c2c: $88
	adc  b                                           ; $6c2d: $88
	adc  b                                           ; $6c2e: $88
	adc  b                                           ; $6c2f: $88
	adc  b                                           ; $6c30: $88
	adc  b                                           ; $6c31: $88
	adc  b                                           ; $6c32: $88
	adc  b                                           ; $6c33: $88
	adc  b                                           ; $6c34: $88
	adc  b                                           ; $6c35: $88
	adc  b                                           ; $6c36: $88
	adc  b                                           ; $6c37: $88
	adc  b                                           ; $6c38: $88
	adc  b                                           ; $6c39: $88
	adc  b                                           ; $6c3a: $88
	adc  b                                           ; $6c3b: $88
	adc  b                                           ; $6c3c: $88
	adc  b                                           ; $6c3d: $88
	adc  b                                           ; $6c3e: $88
	adc  b                                           ; $6c3f: $88
	adc  b                                           ; $6c40: $88
	adc  b                                           ; $6c41: $88
	adc  b                                           ; $6c42: $88
	adc  b                                           ; $6c43: $88
	adc  b                                           ; $6c44: $88
	adc  b                                           ; $6c45: $88
	adc  b                                           ; $6c46: $88
	adc  b                                           ; $6c47: $88
	adc  b                                           ; $6c48: $88
	adc  b                                           ; $6c49: $88
	adc  b                                           ; $6c4a: $88
	adc  b                                           ; $6c4b: $88
	adc  b                                           ; $6c4c: $88
	adc  b                                           ; $6c4d: $88
	adc  b                                           ; $6c4e: $88
	adc  b                                           ; $6c4f: $88
	adc  b                                           ; $6c50: $88
	adc  b                                           ; $6c51: $88
	adc  b                                           ; $6c52: $88
	adc  b                                           ; $6c53: $88
	adc  b                                           ; $6c54: $88
	adc  b                                           ; $6c55: $88
	adc  b                                           ; $6c56: $88
	adc  b                                           ; $6c57: $88
	adc  b                                           ; $6c58: $88
	adc  b                                           ; $6c59: $88
	adc  b                                           ; $6c5a: $88
	adc  b                                           ; $6c5b: $88
	adc  b                                           ; $6c5c: $88
	adc  b                                           ; $6c5d: $88
	adc  b                                           ; $6c5e: $88
	adc  b                                           ; $6c5f: $88
	adc  b                                           ; $6c60: $88
	adc  b                                           ; $6c61: $88
	adc  b                                           ; $6c62: $88
	adc  b                                           ; $6c63: $88
	adc  b                                           ; $6c64: $88
	adc  b                                           ; $6c65: $88
	adc  b                                           ; $6c66: $88
	adc  b                                           ; $6c67: $88
	adc  b                                           ; $6c68: $88
	adc  b                                           ; $6c69: $88
	adc  b                                           ; $6c6a: $88
	adc  b                                           ; $6c6b: $88
	adc  b                                           ; $6c6c: $88
	adc  b                                           ; $6c6d: $88
	adc  b                                           ; $6c6e: $88
	adc  b                                           ; $6c6f: $88
	adc  b                                           ; $6c70: $88
	adc  b                                           ; $6c71: $88
	adc  b                                           ; $6c72: $88
	adc  b                                           ; $6c73: $88
	adc  b                                           ; $6c74: $88
	adc  b                                           ; $6c75: $88
	adc  b                                           ; $6c76: $88
	adc  b                                           ; $6c77: $88
	adc  b                                           ; $6c78: $88
	adc  b                                           ; $6c79: $88
	adc  b                                           ; $6c7a: $88
	adc  b                                           ; $6c7b: $88
	adc  b                                           ; $6c7c: $88
	adc  b                                           ; $6c7d: $88
	adc  b                                           ; $6c7e: $88
	adc  b                                           ; $6c7f: $88
	adc  b                                           ; $6c80: $88
	adc  b                                           ; $6c81: $88
	adc  b                                           ; $6c82: $88
	adc  b                                           ; $6c83: $88
	adc  b                                           ; $6c84: $88
	adc  b                                           ; $6c85: $88
	adc  b                                           ; $6c86: $88
	adc  b                                           ; $6c87: $88
	adc  b                                           ; $6c88: $88
	adc  b                                           ; $6c89: $88
	adc  b                                           ; $6c8a: $88
	adc  b                                           ; $6c8b: $88
	adc  b                                           ; $6c8c: $88
	adc  b                                           ; $6c8d: $88
	adc  b                                           ; $6c8e: $88
	adc  b                                           ; $6c8f: $88
	adc  b                                           ; $6c90: $88
	adc  b                                           ; $6c91: $88
	adc  b                                           ; $6c92: $88
	adc  b                                           ; $6c93: $88
	adc  b                                           ; $6c94: $88
	adc  b                                           ; $6c95: $88
	adc  b                                           ; $6c96: $88
	adc  b                                           ; $6c97: $88
	adc  b                                           ; $6c98: $88
	adc  b                                           ; $6c99: $88
	adc  b                                           ; $6c9a: $88
	adc  b                                           ; $6c9b: $88
	adc  b                                           ; $6c9c: $88
	adc  b                                           ; $6c9d: $88
	adc  b                                           ; $6c9e: $88
	adc  b                                           ; $6c9f: $88
	adc  b                                           ; $6ca0: $88
	adc  b                                           ; $6ca1: $88
	adc  b                                           ; $6ca2: $88
	adc  b                                           ; $6ca3: $88
	adc  b                                           ; $6ca4: $88
	adc  b                                           ; $6ca5: $88
	adc  b                                           ; $6ca6: $88
	adc  b                                           ; $6ca7: $88
	adc  b                                           ; $6ca8: $88
	adc  b                                           ; $6ca9: $88
	adc  b                                           ; $6caa: $88
	adc  b                                           ; $6cab: $88
	adc  b                                           ; $6cac: $88
	adc  b                                           ; $6cad: $88
	adc  b                                           ; $6cae: $88
	adc  b                                           ; $6caf: $88
	adc  b                                           ; $6cb0: $88
	adc  b                                           ; $6cb1: $88
	adc  b                                           ; $6cb2: $88
	adc  b                                           ; $6cb3: $88
	adc  b                                           ; $6cb4: $88
	adc  b                                           ; $6cb5: $88
	adc  b                                           ; $6cb6: $88
	adc  b                                           ; $6cb7: $88
	adc  b                                           ; $6cb8: $88
	adc  b                                           ; $6cb9: $88
	adc  b                                           ; $6cba: $88
	adc  b                                           ; $6cbb: $88
	adc  b                                           ; $6cbc: $88
	adc  b                                           ; $6cbd: $88
	adc  b                                           ; $6cbe: $88
	adc  b                                           ; $6cbf: $88
	adc  b                                           ; $6cc0: $88
	adc  b                                           ; $6cc1: $88
	adc  b                                           ; $6cc2: $88
	adc  b                                           ; $6cc3: $88
	adc  b                                           ; $6cc4: $88
	adc  b                                           ; $6cc5: $88
	adc  b                                           ; $6cc6: $88
	adc  b                                           ; $6cc7: $88
	adc  b                                           ; $6cc8: $88
	adc  b                                           ; $6cc9: $88
	adc  b                                           ; $6cca: $88
	adc  b                                           ; $6ccb: $88
	adc  b                                           ; $6ccc: $88
	adc  b                                           ; $6ccd: $88
	adc  b                                           ; $6cce: $88
	adc  b                                           ; $6ccf: $88
	adc  b                                           ; $6cd0: $88
	adc  b                                           ; $6cd1: $88
	adc  b                                           ; $6cd2: $88
	adc  b                                           ; $6cd3: $88
	adc  b                                           ; $6cd4: $88
	adc  b                                           ; $6cd5: $88
	adc  b                                           ; $6cd6: $88
	adc  b                                           ; $6cd7: $88
	adc  b                                           ; $6cd8: $88
	adc  b                                           ; $6cd9: $88
	adc  b                                           ; $6cda: $88
	adc  b                                           ; $6cdb: $88
	adc  b                                           ; $6cdc: $88
	adc  b                                           ; $6cdd: $88
	adc  b                                           ; $6cde: $88
	adc  b                                           ; $6cdf: $88
	adc  b                                           ; $6ce0: $88
	adc  b                                           ; $6ce1: $88
	adc  b                                           ; $6ce2: $88
	adc  b                                           ; $6ce3: $88
	adc  b                                           ; $6ce4: $88
	adc  b                                           ; $6ce5: $88
	adc  b                                           ; $6ce6: $88
	adc  b                                           ; $6ce7: $88
	adc  b                                           ; $6ce8: $88
	adc  b                                           ; $6ce9: $88
	adc  b                                           ; $6cea: $88
	adc  b                                           ; $6ceb: $88
	adc  b                                           ; $6cec: $88
	adc  b                                           ; $6ced: $88
	adc  b                                           ; $6cee: $88
	adc  b                                           ; $6cef: $88
	adc  b                                           ; $6cf0: $88
	adc  b                                           ; $6cf1: $88
	adc  b                                           ; $6cf2: $88
	adc  b                                           ; $6cf3: $88
	adc  b                                           ; $6cf4: $88
	adc  b                                           ; $6cf5: $88
	adc  b                                           ; $6cf6: $88
	adc  b                                           ; $6cf7: $88
	adc  b                                           ; $6cf8: $88
	adc  b                                           ; $6cf9: $88
	adc  b                                           ; $6cfa: $88
	adc  b                                           ; $6cfb: $88
	adc  b                                           ; $6cfc: $88
	adc  b                                           ; $6cfd: $88
	adc  b                                           ; $6cfe: $88
	adc  b                                           ; $6cff: $88
	adc  b                                           ; $6d00: $88
	adc  b                                           ; $6d01: $88
	adc  b                                           ; $6d02: $88
	adc  b                                           ; $6d03: $88
	adc  b                                           ; $6d04: $88
	adc  b                                           ; $6d05: $88
	adc  b                                           ; $6d06: $88
	adc  b                                           ; $6d07: $88
	adc  b                                           ; $6d08: $88
	adc  b                                           ; $6d09: $88
	adc  b                                           ; $6d0a: $88
	adc  b                                           ; $6d0b: $88
	adc  b                                           ; $6d0c: $88
	adc  b                                           ; $6d0d: $88
	adc  b                                           ; $6d0e: $88
	adc  b                                           ; $6d0f: $88
	adc  b                                           ; $6d10: $88
	adc  b                                           ; $6d11: $88
	adc  b                                           ; $6d12: $88
	adc  b                                           ; $6d13: $88
	adc  b                                           ; $6d14: $88
	adc  b                                           ; $6d15: $88
	adc  b                                           ; $6d16: $88
	adc  b                                           ; $6d17: $88
	adc  b                                           ; $6d18: $88
	adc  b                                           ; $6d19: $88
	adc  b                                           ; $6d1a: $88
	adc  b                                           ; $6d1b: $88
	adc  b                                           ; $6d1c: $88
	adc  b                                           ; $6d1d: $88
	adc  b                                           ; $6d1e: $88
	adc  b                                           ; $6d1f: $88
	adc  b                                           ; $6d20: $88
	adc  b                                           ; $6d21: $88
	adc  b                                           ; $6d22: $88
	adc  b                                           ; $6d23: $88
	adc  b                                           ; $6d24: $88
	adc  b                                           ; $6d25: $88
	adc  b                                           ; $6d26: $88
	adc  b                                           ; $6d27: $88
	adc  b                                           ; $6d28: $88
	adc  b                                           ; $6d29: $88
	adc  b                                           ; $6d2a: $88
	adc  b                                           ; $6d2b: $88
	adc  b                                           ; $6d2c: $88
	adc  b                                           ; $6d2d: $88
	adc  b                                           ; $6d2e: $88
	adc  b                                           ; $6d2f: $88
	adc  b                                           ; $6d30: $88
	adc  b                                           ; $6d31: $88
	adc  b                                           ; $6d32: $88
	adc  b                                           ; $6d33: $88
	adc  b                                           ; $6d34: $88
	adc  b                                           ; $6d35: $88
	adc  b                                           ; $6d36: $88
	adc  b                                           ; $6d37: $88
	adc  b                                           ; $6d38: $88
	adc  b                                           ; $6d39: $88
	adc  b                                           ; $6d3a: $88
	adc  b                                           ; $6d3b: $88
	adc  b                                           ; $6d3c: $88
	adc  b                                           ; $6d3d: $88
	adc  b                                           ; $6d3e: $88
	adc  b                                           ; $6d3f: $88
	adc  b                                           ; $6d40: $88
	adc  b                                           ; $6d41: $88
	adc  b                                           ; $6d42: $88
	adc  b                                           ; $6d43: $88
	adc  b                                           ; $6d44: $88
	adc  b                                           ; $6d45: $88
	adc  b                                           ; $6d46: $88
	adc  b                                           ; $6d47: $88
	adc  b                                           ; $6d48: $88
	adc  b                                           ; $6d49: $88
	adc  b                                           ; $6d4a: $88
	adc  b                                           ; $6d4b: $88
	adc  b                                           ; $6d4c: $88
	adc  b                                           ; $6d4d: $88
	adc  b                                           ; $6d4e: $88
	adc  b                                           ; $6d4f: $88
	adc  b                                           ; $6d50: $88
	adc  b                                           ; $6d51: $88
	adc  b                                           ; $6d52: $88
	adc  b                                           ; $6d53: $88
	adc  b                                           ; $6d54: $88
	adc  b                                           ; $6d55: $88
	adc  b                                           ; $6d56: $88
	adc  b                                           ; $6d57: $88
	adc  b                                           ; $6d58: $88
	adc  b                                           ; $6d59: $88
	adc  b                                           ; $6d5a: $88
	adc  b                                           ; $6d5b: $88
	adc  b                                           ; $6d5c: $88
	adc  b                                           ; $6d5d: $88
	adc  b                                           ; $6d5e: $88
	adc  b                                           ; $6d5f: $88
	adc  b                                           ; $6d60: $88
	adc  b                                           ; $6d61: $88
	adc  b                                           ; $6d62: $88
	adc  b                                           ; $6d63: $88
	adc  b                                           ; $6d64: $88
	adc  b                                           ; $6d65: $88
	adc  b                                           ; $6d66: $88
	adc  b                                           ; $6d67: $88
	adc  b                                           ; $6d68: $88
	adc  b                                           ; $6d69: $88
	adc  b                                           ; $6d6a: $88
	adc  b                                           ; $6d6b: $88
	adc  b                                           ; $6d6c: $88
	adc  b                                           ; $6d6d: $88
	adc  b                                           ; $6d6e: $88
	adc  b                                           ; $6d6f: $88
	adc  b                                           ; $6d70: $88
	adc  b                                           ; $6d71: $88
	adc  b                                           ; $6d72: $88
	adc  b                                           ; $6d73: $88
	adc  b                                           ; $6d74: $88
	adc  b                                           ; $6d75: $88
	adc  b                                           ; $6d76: $88
	adc  b                                           ; $6d77: $88
	adc  b                                           ; $6d78: $88
	adc  b                                           ; $6d79: $88
	adc  b                                           ; $6d7a: $88
	adc  b                                           ; $6d7b: $88
	adc  b                                           ; $6d7c: $88
	adc  b                                           ; $6d7d: $88
	adc  b                                           ; $6d7e: $88
	adc  b                                           ; $6d7f: $88
	adc  b                                           ; $6d80: $88
	adc  b                                           ; $6d81: $88
	adc  b                                           ; $6d82: $88
	adc  b                                           ; $6d83: $88
	adc  b                                           ; $6d84: $88
	adc  b                                           ; $6d85: $88
	adc  b                                           ; $6d86: $88
	adc  b                                           ; $6d87: $88
	adc  b                                           ; $6d88: $88
	adc  b                                           ; $6d89: $88
	adc  b                                           ; $6d8a: $88
	adc  b                                           ; $6d8b: $88
	adc  b                                           ; $6d8c: $88
	adc  b                                           ; $6d8d: $88
	adc  b                                           ; $6d8e: $88
	adc  b                                           ; $6d8f: $88
	adc  b                                           ; $6d90: $88
	adc  b                                           ; $6d91: $88
	adc  b                                           ; $6d92: $88
	adc  b                                           ; $6d93: $88
	adc  b                                           ; $6d94: $88
	adc  b                                           ; $6d95: $88
	adc  b                                           ; $6d96: $88
	adc  b                                           ; $6d97: $88
	adc  b                                           ; $6d98: $88
	adc  b                                           ; $6d99: $88
	adc  b                                           ; $6d9a: $88
	adc  b                                           ; $6d9b: $88
	adc  b                                           ; $6d9c: $88
	adc  b                                           ; $6d9d: $88
	adc  b                                           ; $6d9e: $88
	adc  b                                           ; $6d9f: $88
	adc  b                                           ; $6da0: $88
	adc  b                                           ; $6da1: $88
	adc  b                                           ; $6da2: $88
	adc  b                                           ; $6da3: $88
	adc  b                                           ; $6da4: $88
	adc  b                                           ; $6da5: $88
	adc  b                                           ; $6da6: $88
	adc  b                                           ; $6da7: $88
	adc  b                                           ; $6da8: $88
	adc  b                                           ; $6da9: $88
	adc  b                                           ; $6daa: $88
	adc  b                                           ; $6dab: $88
	adc  b                                           ; $6dac: $88
	adc  b                                           ; $6dad: $88
	adc  b                                           ; $6dae: $88
	adc  b                                           ; $6daf: $88
	adc  b                                           ; $6db0: $88
	adc  b                                           ; $6db1: $88
	adc  b                                           ; $6db2: $88
	adc  b                                           ; $6db3: $88
	adc  b                                           ; $6db4: $88
	adc  b                                           ; $6db5: $88
	adc  b                                           ; $6db6: $88
	adc  b                                           ; $6db7: $88
	adc  b                                           ; $6db8: $88
	adc  b                                           ; $6db9: $88
	adc  b                                           ; $6dba: $88
	adc  b                                           ; $6dbb: $88
	adc  b                                           ; $6dbc: $88
	adc  b                                           ; $6dbd: $88
	adc  b                                           ; $6dbe: $88
	adc  b                                           ; $6dbf: $88
	adc  b                                           ; $6dc0: $88
	adc  b                                           ; $6dc1: $88
	adc  b                                           ; $6dc2: $88
	adc  b                                           ; $6dc3: $88
	adc  b                                           ; $6dc4: $88
	adc  b                                           ; $6dc5: $88
	adc  b                                           ; $6dc6: $88
	adc  b                                           ; $6dc7: $88
	adc  b                                           ; $6dc8: $88
	adc  b                                           ; $6dc9: $88
	adc  b                                           ; $6dca: $88
	adc  b                                           ; $6dcb: $88
	adc  b                                           ; $6dcc: $88
	adc  b                                           ; $6dcd: $88
	adc  b                                           ; $6dce: $88
	adc  b                                           ; $6dcf: $88
	adc  b                                           ; $6dd0: $88
	adc  b                                           ; $6dd1: $88
	adc  b                                           ; $6dd2: $88
	adc  b                                           ; $6dd3: $88
	adc  b                                           ; $6dd4: $88
	adc  b                                           ; $6dd5: $88
	adc  b                                           ; $6dd6: $88
	adc  b                                           ; $6dd7: $88
	adc  b                                           ; $6dd8: $88
	adc  b                                           ; $6dd9: $88
	adc  b                                           ; $6dda: $88
	adc  b                                           ; $6ddb: $88
	adc  b                                           ; $6ddc: $88
	adc  b                                           ; $6ddd: $88
	adc  b                                           ; $6dde: $88
	adc  b                                           ; $6ddf: $88
	adc  b                                           ; $6de0: $88
	adc  b                                           ; $6de1: $88
	adc  b                                           ; $6de2: $88
	adc  b                                           ; $6de3: $88
	adc  b                                           ; $6de4: $88
	adc  b                                           ; $6de5: $88
	adc  b                                           ; $6de6: $88
	adc  b                                           ; $6de7: $88
	adc  b                                           ; $6de8: $88
	adc  b                                           ; $6de9: $88
	adc  b                                           ; $6dea: $88
	adc  b                                           ; $6deb: $88
	adc  b                                           ; $6dec: $88
	adc  b                                           ; $6ded: $88
	adc  b                                           ; $6dee: $88
	adc  b                                           ; $6def: $88
	adc  b                                           ; $6df0: $88
	adc  b                                           ; $6df1: $88
	adc  b                                           ; $6df2: $88
	adc  b                                           ; $6df3: $88
	adc  b                                           ; $6df4: $88
	adc  b                                           ; $6df5: $88
	adc  b                                           ; $6df6: $88
	adc  b                                           ; $6df7: $88
	adc  b                                           ; $6df8: $88
	adc  b                                           ; $6df9: $88
	adc  b                                           ; $6dfa: $88
	adc  b                                           ; $6dfb: $88
	adc  b                                           ; $6dfc: $88
	adc  b                                           ; $6dfd: $88
	adc  b                                           ; $6dfe: $88
	adc  b                                           ; $6dff: $88
	adc  b                                           ; $6e00: $88
	adc  b                                           ; $6e01: $88
	adc  b                                           ; $6e02: $88
	adc  b                                           ; $6e03: $88
	adc  b                                           ; $6e04: $88
	adc  b                                           ; $6e05: $88
	adc  b                                           ; $6e06: $88
	adc  b                                           ; $6e07: $88
	adc  b                                           ; $6e08: $88
	adc  b                                           ; $6e09: $88
	adc  b                                           ; $6e0a: $88
	adc  b                                           ; $6e0b: $88
	adc  b                                           ; $6e0c: $88
	adc  b                                           ; $6e0d: $88
	adc  b                                           ; $6e0e: $88
	adc  b                                           ; $6e0f: $88
	adc  b                                           ; $6e10: $88
	adc  b                                           ; $6e11: $88
	adc  b                                           ; $6e12: $88
	adc  b                                           ; $6e13: $88
	adc  b                                           ; $6e14: $88
	adc  b                                           ; $6e15: $88
	adc  b                                           ; $6e16: $88
	adc  b                                           ; $6e17: $88
	adc  b                                           ; $6e18: $88
	adc  b                                           ; $6e19: $88
	adc  b                                           ; $6e1a: $88
	adc  b                                           ; $6e1b: $88
	adc  b                                           ; $6e1c: $88
	adc  b                                           ; $6e1d: $88
	adc  b                                           ; $6e1e: $88
	adc  b                                           ; $6e1f: $88
	adc  b                                           ; $6e20: $88
	adc  b                                           ; $6e21: $88
	adc  b                                           ; $6e22: $88
	adc  b                                           ; $6e23: $88
	adc  b                                           ; $6e24: $88
	adc  b                                           ; $6e25: $88
	adc  b                                           ; $6e26: $88
	adc  b                                           ; $6e27: $88
	adc  b                                           ; $6e28: $88
	adc  b                                           ; $6e29: $88
	adc  b                                           ; $6e2a: $88
	adc  b                                           ; $6e2b: $88
	adc  b                                           ; $6e2c: $88
	adc  b                                           ; $6e2d: $88
	adc  b                                           ; $6e2e: $88
	adc  b                                           ; $6e2f: $88
	adc  b                                           ; $6e30: $88
	adc  b                                           ; $6e31: $88
	adc  b                                           ; $6e32: $88
	adc  b                                           ; $6e33: $88
	adc  b                                           ; $6e34: $88
	adc  b                                           ; $6e35: $88
	adc  b                                           ; $6e36: $88
	adc  b                                           ; $6e37: $88
	adc  b                                           ; $6e38: $88
	adc  b                                           ; $6e39: $88
	adc  b                                           ; $6e3a: $88
	adc  b                                           ; $6e3b: $88
	adc  b                                           ; $6e3c: $88
	adc  b                                           ; $6e3d: $88
	adc  b                                           ; $6e3e: $88
	adc  b                                           ; $6e3f: $88
	adc  b                                           ; $6e40: $88
	adc  b                                           ; $6e41: $88
	adc  b                                           ; $6e42: $88
	adc  b                                           ; $6e43: $88
	adc  b                                           ; $6e44: $88
	adc  b                                           ; $6e45: $88
	adc  b                                           ; $6e46: $88
	adc  b                                           ; $6e47: $88
	adc  b                                           ; $6e48: $88
	adc  b                                           ; $6e49: $88
	adc  b                                           ; $6e4a: $88
	adc  b                                           ; $6e4b: $88
	adc  b                                           ; $6e4c: $88
	adc  b                                           ; $6e4d: $88
	adc  b                                           ; $6e4e: $88
	adc  b                                           ; $6e4f: $88
	adc  b                                           ; $6e50: $88
	adc  b                                           ; $6e51: $88
	adc  b                                           ; $6e52: $88
	adc  b                                           ; $6e53: $88
	adc  b                                           ; $6e54: $88
	adc  b                                           ; $6e55: $88
	adc  b                                           ; $6e56: $88
	adc  b                                           ; $6e57: $88
	adc  b                                           ; $6e58: $88
	adc  b                                           ; $6e59: $88
	adc  b                                           ; $6e5a: $88
	adc  b                                           ; $6e5b: $88
	adc  b                                           ; $6e5c: $88
	adc  b                                           ; $6e5d: $88
	adc  b                                           ; $6e5e: $88
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	adc  b                                           ; $6e62: $88
	adc  b                                           ; $6e63: $88
	adc  b                                           ; $6e64: $88
	adc  b                                           ; $6e65: $88
	adc  b                                           ; $6e66: $88
	adc  b                                           ; $6e67: $88
	adc  b                                           ; $6e68: $88
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	adc  b                                           ; $6e6f: $88
	adc  b                                           ; $6e70: $88
	adc  b                                           ; $6e71: $88
	adc  b                                           ; $6e72: $88
	adc  b                                           ; $6e73: $88
	adc  b                                           ; $6e74: $88
	adc  b                                           ; $6e75: $88
	adc  b                                           ; $6e76: $88
	adc  b                                           ; $6e77: $88
	adc  b                                           ; $6e78: $88
	adc  b                                           ; $6e79: $88
	adc  b                                           ; $6e7a: $88
	adc  b                                           ; $6e7b: $88
	adc  b                                           ; $6e7c: $88
	adc  b                                           ; $6e7d: $88
	adc  b                                           ; $6e7e: $88
	adc  b                                           ; $6e7f: $88
	adc  b                                           ; $6e80: $88
	adc  b                                           ; $6e81: $88
	adc  b                                           ; $6e82: $88
	adc  b                                           ; $6e83: $88
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
	adc  b                                           ; $6e93: $88
	adc  b                                           ; $6e94: $88
	adc  b                                           ; $6e95: $88
	adc  b                                           ; $6e96: $88
	adc  b                                           ; $6e97: $88
	adc  b                                           ; $6e98: $88
	adc  b                                           ; $6e99: $88
	adc  b                                           ; $6e9a: $88
	adc  b                                           ; $6e9b: $88
	adc  b                                           ; $6e9c: $88
	adc  b                                           ; $6e9d: $88
	adc  b                                           ; $6e9e: $88
	adc  b                                           ; $6e9f: $88
	adc  b                                           ; $6ea0: $88
	adc  b                                           ; $6ea1: $88
	adc  b                                           ; $6ea2: $88
	adc  b                                           ; $6ea3: $88
	adc  b                                           ; $6ea4: $88
	adc  b                                           ; $6ea5: $88
	adc  b                                           ; $6ea6: $88
	adc  b                                           ; $6ea7: $88
	adc  b                                           ; $6ea8: $88
	adc  b                                           ; $6ea9: $88
	adc  b                                           ; $6eaa: $88
	adc  b                                           ; $6eab: $88
	adc  b                                           ; $6eac: $88
	adc  b                                           ; $6ead: $88
	adc  b                                           ; $6eae: $88
	adc  b                                           ; $6eaf: $88
	adc  b                                           ; $6eb0: $88
	adc  b                                           ; $6eb1: $88
	adc  b                                           ; $6eb2: $88
	adc  b                                           ; $6eb3: $88
	adc  b                                           ; $6eb4: $88
	adc  b                                           ; $6eb5: $88
	adc  b                                           ; $6eb6: $88
	adc  b                                           ; $6eb7: $88
	adc  b                                           ; $6eb8: $88
	adc  b                                           ; $6eb9: $88
	adc  b                                           ; $6eba: $88
	adc  b                                           ; $6ebb: $88
	adc  b                                           ; $6ebc: $88
	adc  b                                           ; $6ebd: $88
	adc  b                                           ; $6ebe: $88
	adc  b                                           ; $6ebf: $88
	adc  b                                           ; $6ec0: $88
	adc  b                                           ; $6ec1: $88
	adc  b                                           ; $6ec2: $88
	adc  b                                           ; $6ec3: $88
	adc  b                                           ; $6ec4: $88
	adc  b                                           ; $6ec5: $88
	adc  b                                           ; $6ec6: $88
	adc  b                                           ; $6ec7: $88
	adc  b                                           ; $6ec8: $88

Call_0cc_6ec9:
	adc  b                                           ; $6ec9: $88
	adc  b                                           ; $6eca: $88
	adc  b                                           ; $6ecb: $88
	adc  b                                           ; $6ecc: $88
	adc  b                                           ; $6ecd: $88
	adc  b                                           ; $6ece: $88
	adc  b                                           ; $6ecf: $88
	adc  b                                           ; $6ed0: $88
	adc  b                                           ; $6ed1: $88
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
	adc  b                                           ; $6ede: $88
	adc  b                                           ; $6edf: $88
	adc  b                                           ; $6ee0: $88
	adc  b                                           ; $6ee1: $88
	adc  b                                           ; $6ee2: $88
	adc  b                                           ; $6ee3: $88
	adc  b                                           ; $6ee4: $88
	adc  b                                           ; $6ee5: $88
	adc  b                                           ; $6ee6: $88
	adc  b                                           ; $6ee7: $88
	adc  b                                           ; $6ee8: $88
	adc  b                                           ; $6ee9: $88
	adc  b                                           ; $6eea: $88
	adc  b                                           ; $6eeb: $88
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
	adc  b                                           ; $6eee: $88
	adc  b                                           ; $6eef: $88
	adc  b                                           ; $6ef0: $88
	adc  b                                           ; $6ef1: $88
	adc  b                                           ; $6ef2: $88
	adc  b                                           ; $6ef3: $88
	adc  b                                           ; $6ef4: $88
	adc  b                                           ; $6ef5: $88
	adc  b                                           ; $6ef6: $88
	adc  b                                           ; $6ef7: $88
	adc  b                                           ; $6ef8: $88
	adc  b                                           ; $6ef9: $88
	adc  b                                           ; $6efa: $88
	adc  b                                           ; $6efb: $88
	adc  b                                           ; $6efc: $88
	adc  b                                           ; $6efd: $88
	adc  b                                           ; $6efe: $88
	adc  b                                           ; $6eff: $88
	adc  b                                           ; $6f00: $88
	adc  b                                           ; $6f01: $88
	adc  b                                           ; $6f02: $88
	adc  b                                           ; $6f03: $88
	adc  b                                           ; $6f04: $88
	adc  b                                           ; $6f05: $88
	adc  b                                           ; $6f06: $88
	adc  b                                           ; $6f07: $88
	adc  b                                           ; $6f08: $88
	adc  b                                           ; $6f09: $88
	adc  b                                           ; $6f0a: $88
	adc  b                                           ; $6f0b: $88
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
	adc  b                                           ; $6f3c: $88
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
	adc  b                                           ; $6f52: $88
	adc  b                                           ; $6f53: $88
	adc  b                                           ; $6f54: $88
	adc  b                                           ; $6f55: $88
	adc  b                                           ; $6f56: $88
	adc  b                                           ; $6f57: $88
	adc  b                                           ; $6f58: $88
	adc  b                                           ; $6f59: $88
	adc  b                                           ; $6f5a: $88
	adc  b                                           ; $6f5b: $88
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
	adc  b                                           ; $75a8: $88
	adc  b                                           ; $75a9: $88
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

Call_0cc_75ba:
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

Jump_0cc_75db:
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
	adc  c                                           ; $7630: $89
	adc  b                                           ; $7631: $88
	adc  b                                           ; $7632: $88
	adc  b                                           ; $7633: $88
	adc  b                                           ; $7634: $88
	adc  b                                           ; $7635: $88
	adc  b                                           ; $7636: $88
	adc  b                                           ; $7637: $88
	adc  b                                           ; $7638: $88
	adc  c                                           ; $7639: $89
	sbc  b                                           ; $763a: $98
	adc  b                                           ; $763b: $88
	adc  b                                           ; $763c: $88
	adc  c                                           ; $763d: $89
	sbc  b                                           ; $763e: $98
	adc  b                                           ; $763f: $88
	ld   a, b                                        ; $7640: $78
	adc  b                                           ; $7641: $88
	sbc  b                                           ; $7642: $98
	sbc  b                                           ; $7643: $98
	adc  b                                           ; $7644: $88
	adc  b                                           ; $7645: $88
	adc  b                                           ; $7646: $88
	adc  b                                           ; $7647: $88
	adc  b                                           ; $7648: $88
	adc  b                                           ; $7649: $88
	sbc  c                                           ; $764a: $99
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
	add  a                                           ; $7657: $87
	adc  b                                           ; $7658: $88
	adc  b                                           ; $7659: $88
	adc  c                                           ; $765a: $89
	add  a                                           ; $765b: $87
	ld   a, b                                        ; $765c: $78
	adc  c                                           ; $765d: $89
	sbc  c                                           ; $765e: $99
	add  a                                           ; $765f: $87
	ld   [hl], a                                     ; $7660: $77
	adc  c                                           ; $7661: $89
	adc  b                                           ; $7662: $88
	adc  b                                           ; $7663: $88
	adc  b                                           ; $7664: $88
	add  a                                           ; $7665: $87
	adc  b                                           ; $7666: $88
	adc  c                                           ; $7667: $89
	adc  c                                           ; $7668: $89
	adc  b                                           ; $7669: $88
	adc  b                                           ; $766a: $88
	adc  b                                           ; $766b: $88
	adc  b                                           ; $766c: $88
	adc  c                                           ; $766d: $89
	adc  b                                           ; $766e: $88
	adc  b                                           ; $766f: $88
	add  a                                           ; $7670: $87
	add  a                                           ; $7671: $87
	adc  b                                           ; $7672: $88
	adc  c                                           ; $7673: $89
	adc  b                                           ; $7674: $88
	ld   [hl], a                                     ; $7675: $77
	adc  b                                           ; $7676: $88
	adc  b                                           ; $7677: $88
	adc  b                                           ; $7678: $88
	ld   [hl], a                                     ; $7679: $77
	ld   a, b                                        ; $767a: $78
	adc  b                                           ; $767b: $88
	adc  c                                           ; $767c: $89
	adc  b                                           ; $767d: $88
	adc  b                                           ; $767e: $88
	adc  b                                           ; $767f: $88
	adc  c                                           ; $7680: $89
	adc  b                                           ; $7681: $88
	add  a                                           ; $7682: $87
	add  a                                           ; $7683: $87
	adc  b                                           ; $7684: $88
	adc  b                                           ; $7685: $88
	adc  c                                           ; $7686: $89
	sbc  b                                           ; $7687: $98
	add  a                                           ; $7688: $87
	adc  b                                           ; $7689: $88
	adc  b                                           ; $768a: $88
	adc  b                                           ; $768b: $88
	ld   [hl], a                                     ; $768c: $77
	ld   a, b                                        ; $768d: $78
	sbc  b                                           ; $768e: $98
	adc  b                                           ; $768f: $88
	add  a                                           ; $7690: $87
	add  a                                           ; $7691: $87
	adc  b                                           ; $7692: $88
	adc  c                                           ; $7693: $89
	adc  b                                           ; $7694: $88
	ld   a, b                                        ; $7695: $78
	sbc  c                                           ; $7696: $99
	adc  b                                           ; $7697: $88
	adc  b                                           ; $7698: $88
	adc  b                                           ; $7699: $88
	adc  b                                           ; $769a: $88
	ld   a, b                                        ; $769b: $78
	adc  b                                           ; $769c: $88
	adc  c                                           ; $769d: $89
	sbc  b                                           ; $769e: $98
	adc  b                                           ; $769f: $88
	sbc  c                                           ; $76a0: $99
	sbc  c                                           ; $76a1: $99
	adc  b                                           ; $76a2: $88
	ld   [hl], a                                     ; $76a3: $77
	ld   a, b                                        ; $76a4: $78
	sbc  b                                           ; $76a5: $98
	add  a                                           ; $76a6: $87
	adc  b                                           ; $76a7: $88
	adc  b                                           ; $76a8: $88
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  c                                           ; $76ab: $89
	add  a                                           ; $76ac: $87
	ld   [hl], a                                     ; $76ad: $77
	adc  b                                           ; $76ae: $88
	adc  c                                           ; $76af: $89
	add  a                                           ; $76b0: $87
	ld   [hl], a                                     ; $76b1: $77
	adc  d                                           ; $76b2: $8a
	sbc  b                                           ; $76b3: $98
	add  a                                           ; $76b4: $87
	ld   [hl], a                                     ; $76b5: $77
	adc  b                                           ; $76b6: $88
	sbc  c                                           ; $76b7: $99
	add  a                                           ; $76b8: $87
	ld   h, a                                        ; $76b9: $67
	ld   a, b                                        ; $76ba: $78
	xor  d                                           ; $76bb: $aa
	xor  c                                           ; $76bc: $a9
	ld   [hl], a                                     ; $76bd: $77
	ld   [hl], a                                     ; $76be: $77
	sbc  c                                           ; $76bf: $99
	xor  d                                           ; $76c0: $aa
	sub  a                                           ; $76c1: $97
	ld   l, b                                        ; $76c2: $68
	ld   a, b                                        ; $76c3: $78
	sbc  c                                           ; $76c4: $99
	xor  b                                           ; $76c5: $a8
	sub  a                                           ; $76c6: $97
	ld   a, b                                        ; $76c7: $78
	adc  d                                           ; $76c8: $8a
	adc  d                                           ; $76c9: $8a
	add  a                                           ; $76ca: $87
	add  [hl]                                        ; $76cb: $86
	add  a                                           ; $76cc: $87
	xor  c                                           ; $76cd: $a9
	sbc  b                                           ; $76ce: $98
	ld   l, b                                        ; $76cf: $68
	ld   l, b                                        ; $76d0: $68
	sbc  c                                           ; $76d1: $99
	xor  b                                           ; $76d2: $a8
	halt                                             ; $76d3: $76
	ld   h, a                                        ; $76d4: $67
	adc  c                                           ; $76d5: $89
	sbc  c                                           ; $76d6: $99
	ld   a, c                                        ; $76d7: $79
	ld   a, b                                        ; $76d8: $78
	adc  c                                           ; $76d9: $89
	and  a                                           ; $76da: $a7
	add  a                                           ; $76db: $87
	ld   [hl], a                                     ; $76dc: $77
	ld   [hl], a                                     ; $76dd: $77
	ld   a, c                                        ; $76de: $79
	adc  c                                           ; $76df: $89
	adc  b                                           ; $76e0: $88
	sub  [hl]                                        ; $76e1: $96
	ld   [hl], a                                     ; $76e2: $77
	adc  c                                           ; $76e3: $89
	ld   a, b                                        ; $76e4: $78
	ld   h, a                                        ; $76e5: $67
	ld   [hl], a                                     ; $76e6: $77
	add  a                                           ; $76e7: $87
	sbc  b                                           ; $76e8: $98
	sbc  c                                           ; $76e9: $99
	ld   a, c                                        ; $76ea: $79
	ld   a, b                                        ; $76eb: $78
	sub  a                                           ; $76ec: $97
	add  a                                           ; $76ed: $87
	adc  b                                           ; $76ee: $88
	sbc  c                                           ; $76ef: $99
	ld   a, b                                        ; $76f0: $78
	ld   l, b                                        ; $76f1: $68
	sbc  c                                           ; $76f2: $99
	xor  b                                           ; $76f3: $a8
	sub  a                                           ; $76f4: $97
	ld   [hl], a                                     ; $76f5: $77
	adc  c                                           ; $76f6: $89
	adc  c                                           ; $76f7: $89
	adc  b                                           ; $76f8: $88
	ld   [hl], a                                     ; $76f9: $77
	ld   [hl], a                                     ; $76fa: $77
	adc  c                                           ; $76fb: $89
	sbc  c                                           ; $76fc: $99
	sub  a                                           ; $76fd: $97
	ld   [hl], a                                     ; $76fe: $77
	ld   a, c                                        ; $76ff: $79
	sbc  c                                           ; $7700: $99
	sub  a                                           ; $7701: $97
	ld   [hl], a                                     ; $7702: $77
	ld   a, b                                        ; $7703: $78
	adc  b                                           ; $7704: $88
	add  a                                           ; $7705: $87
	add  a                                           ; $7706: $87
	adc  b                                           ; $7707: $88
	adc  c                                           ; $7708: $89
	adc  c                                           ; $7709: $89
	adc  b                                           ; $770a: $88
	ld   [hl], a                                     ; $770b: $77
	adc  b                                           ; $770c: $88
	adc  c                                           ; $770d: $89
	adc  b                                           ; $770e: $88
	adc  c                                           ; $770f: $89
	ld   [hl], a                                     ; $7710: $77
	ld   [hl], a                                     ; $7711: $77
	adc  b                                           ; $7712: $88
	sbc  c                                           ; $7713: $99
	sub  a                                           ; $7714: $97
	adc  b                                           ; $7715: $88
	sbc  d                                           ; $7716: $9a
	add  [hl]                                        ; $7717: $86
	ld   [hl], a                                     ; $7718: $77
	adc  b                                           ; $7719: $88
	sbc  c                                           ; $771a: $99
	ld   [hl], a                                     ; $771b: $77
	ld   h, [hl]                                     ; $771c: $66
	adc  b                                           ; $771d: $88
	sbc  c                                           ; $771e: $99
	add  a                                           ; $771f: $87
	ld   [hl], a                                     ; $7720: $77
	ld   a, b                                        ; $7721: $78
	ld   a, b                                        ; $7722: $78
	adc  c                                           ; $7723: $89
	xor  b                                           ; $7724: $a8
	sub  a                                           ; $7725: $97
	ld   [hl], a                                     ; $7726: $77
	ld   a, b                                        ; $7727: $78
	sbc  h                                           ; $7728: $9c
	cp   h                                           ; $7729: $bc
	xor  b                                           ; $772a: $a8
	add  [hl]                                        ; $772b: $86
	sbc  c                                           ; $772c: $99
	sbc  e                                           ; $772d: $9b
	sbc  b                                           ; $772e: $98
	ld   d, h                                        ; $772f: $54
	ld   c, b                                        ; $7730: $48
	xor  c                                           ; $7731: $a9
	sub  l                                           ; $7732: $95
	ld   d, l                                        ; $7733: $55
	ld   l, b                                        ; $7734: $68
	sbc  d                                           ; $7735: $9a
	adc  c                                           ; $7736: $89
	ld   [hl], a                                     ; $7737: $77
	add  a                                           ; $7738: $87
	halt                                             ; $7739: $76
	halt                                             ; $773a: $76
	ld   [hl], a                                     ; $773b: $77
	sbc  c                                           ; $773c: $99
	sbc  c                                           ; $773d: $99
	adc  c                                           ; $773e: $89
	ld   a, b                                        ; $773f: $78
	ld   h, l                                        ; $7740: $65
	ld   [hl], a                                     ; $7741: $77
	sbc  c                                           ; $7742: $99
	add  [hl]                                        ; $7743: $86
	ld   d, h                                        ; $7744: $54
	ld   e, b                                        ; $7745: $58
	adc  $ec                                         ; $7746: $ce $ec
	add  a                                           ; $7748: $87
	dec  [hl]                                        ; $7749: $35
	sbc  c                                           ; $774a: $99
	db   $fd                                         ; $774b: $fd
	cp   d                                           ; $774c: $ba
	ld   l, b                                        ; $774d: $68
	ld   e, d                                        ; $774e: $5a
	xor  l                                           ; $774f: $ad
	ret  z                                           ; $7750: $c8

	and  a                                           ; $7751: $a7
	add  a                                           ; $7752: $87
	ld   d, [hl]                                     ; $7753: $56
	ld   l, d                                        ; $7754: $6a
	sbc  d                                           ; $7755: $9a
	adc  b                                           ; $7756: $88
	add  [hl]                                        ; $7757: $86
	add  [hl]                                        ; $7758: $86
	ld   h, [hl]                                     ; $7759: $66
	ld   b, [hl]                                     ; $775a: $46
	ld   a, d                                        ; $775b: $7a
	cp   c                                           ; $775c: $b9
	ld   h, e                                        ; $775d: $63
	ld   hl, $dd58                                   ; $775e: $21 $58 $dd
	and  a                                           ; $7761: $a7
	inc  de                                          ; $7762: $13
	ld   b, a                                        ; $7763: $47
	db   $ec                                         ; $7764: $ec
	or   a                                           ; $7765: $b7
	inc  [hl]                                        ; $7766: $34
	ld   c, b                                        ; $7767: $48
	cp   d                                           ; $7768: $ba
	sub  l                                           ; $7769: $95
	inc  [hl]                                        ; $776a: $34
	ld   l, c                                        ; $776b: $69
	cp   e                                           ; $776c: $bb
	sbc  c                                           ; $776d: $99
	ld   l, c                                        ; $776e: $69
	sbc  e                                           ; $776f: $9b
	jp   z, Jump_0cc_6675                            ; $7770: $ca $75 $66

	sbc  e                                           ; $7773: $9b
	sbc  d                                           ; $7774: $9a
	ld   h, a                                        ; $7775: $67
	adc  h                                           ; $7776: $8c
	db   $fd                                         ; $7777: $fd
	rst  $10                                         ; $7778: $d7
	ld   d, h                                        ; $7779: $54
	ld   l, d                                        ; $777a: $6a
	sbc  d                                           ; $777b: $9a
	ld   [hl], l                                     ; $777c: $75
	ld   d, a                                        ; $777d: $57
	xor  $fc                                         ; $777e: $ee $fc
	ld   h, e                                        ; $7780: $63
	inc  de                                          ; $7781: $13
	ld   a, d                                        ; $7782: $7a
	cp   e                                           ; $7783: $bb
	ld   h, h                                        ; $7784: $64
	ld   b, h                                        ; $7785: $44
	sbc  c                                           ; $7786: $99
	xor  c                                           ; $7787: $a9
	ld   a, b                                        ; $7788: $78
	ld   a, b                                        ; $7789: $78
	adc  c                                           ; $778a: $89
	halt                                             ; $778b: $76
	ld   h, a                                        ; $778c: $67
	cp   h                                           ; $778d: $bc
	cp   d                                           ; $778e: $ba
	ld   h, a                                        ; $778f: $67
	adc  c                                           ; $7790: $89
	sbc  c                                           ; $7791: $99
	sub  a                                           ; $7792: $97
	ld   h, l                                        ; $7793: $65
	ld   l, b                                        ; $7794: $68
	adc  c                                           ; $7795: $89
	sbc  b                                           ; $7796: $98
	ld   h, h                                        ; $7797: $64
	ld   d, h                                        ; $7798: $54
	ld   h, l                                        ; $7799: $65
	ld   b, l                                        ; $779a: $45
	ld   d, a                                        ; $779b: $57
	sbc  d                                           ; $779c: $9a
	sub  [hl]                                        ; $779d: $96
	inc  sp                                          ; $779e: $33
	ld   a, d                                        ; $779f: $7a
	call c, $66c8                                    ; $77a0: $dc $c8 $66
	ld   e, l                                        ; $77a3: $5d
	cp   [hl]                                        ; $77a4: $be
	ret                                              ; $77a5: $c9


	sbc  c                                           ; $77a6: $99
	cp   e                                           ; $77a7: $bb
	rst  $38                                         ; $77a8: $ff
	ld   a, [$2945]                                  ; $77a9: $fa $45 $29
	ld   a, d                                        ; $77ac: $7a
	cp   b                                           ; $77ad: $b8
	and  e                                           ; $77ae: $a3
	ld   b, d                                        ; $77af: $42
	scf                                              ; $77b0: $37
	ld   l, d                                        ; $77b1: $6a
	ld   l, b                                        ; $77b2: $68
	ld   b, c                                        ; $77b3: $41
	ld   hl, $6655                                   ; $77b4: $21 $55 $66
	ld   a, e                                        ; $77b7: $7b
	cp   l                                           ; $77b8: $bd
	sbc  b                                           ; $77b9: $98
	ld   a, c                                        ; $77ba: $79
	sbc  $fd                                         ; $77bb: $de $fd
	cp   h                                           ; $77bd: $bc
	adc  c                                           ; $77be: $89
	sbc  d                                           ; $77bf: $9a
	xor  $fd                                         ; $77c0: $ee $fd
	ret  z                                           ; $77c2: $c8

	ld   d, e                                        ; $77c3: $53
	daa                                              ; $77c4: $27
	ld   a, c                                        ; $77c5: $79
	sub  [hl]                                        ; $77c6: $96
	ld   d, c                                        ; $77c7: $51
	ld   [de], a                                     ; $77c8: $12
	scf                                              ; $77c9: $37
	ld   d, l                                        ; $77ca: $55
	ld   sp, $1111                                   ; $77cb: $31 $11 $11
	ld   h, h                                        ; $77ce: $64
	ld   a, c                                        ; $77cf: $79
	adc  l                                           ; $77d0: $8d
	cp   [hl]                                        ; $77d1: $be
	jp   z, $cda9                                    ; $77d2: $ca $a9 $cd

	db   $fd                                         ; $77d5: $fd
	jp   c, $ae8d                                    ; $77d6: $da $8d $ae

	jp   z, $98ca                                    ; $77d9: $ca $ca $98

	ld   [hl], l                                     ; $77dc: $75
	ld   h, l                                        ; $77dd: $65
	ld   h, [hl]                                     ; $77de: $66
	ld   b, [hl]                                     ; $77df: $46
	ld   [hl-], a                                    ; $77e0: $32
	ld   sp, $3432                                   ; $77e1: $31 $32 $34
	dec  [hl]                                        ; $77e4: $35
	ld   d, a                                        ; $77e5: $57
	ld   a, e                                        ; $77e6: $7b
	cp   d                                           ; $77e7: $ba
	db   $fc                                         ; $77e8: $fc
	db   $fd                                         ; $77e9: $fd
	xor  e                                           ; $77ea: $ab
	cp   h                                           ; $77eb: $bc
	xor  $bb                                         ; $77ec: $ee $bb
	and  a                                           ; $77ee: $a7
	cp   d                                           ; $77ef: $ba
	db   $db                                         ; $77f0: $db
	add  l                                           ; $77f1: $85
	inc  sp                                          ; $77f2: $33
	ld   d, a                                        ; $77f3: $57
	halt                                             ; $77f4: $76
	ld   sp, $1111                                   ; $77f5: $31 $11 $11
	ld   h, [hl]                                     ; $77f8: $66
	ld   b, l                                        ; $77f9: $45
	ld   [de], a                                     ; $77fa: $12
	adc  b                                           ; $77fb: $88
	rst  JumpTable                                         ; $77fc: $df
	sbc  $db                                         ; $77fd: $de $db
	db   $ed                                         ; $77ff: $ed
	rst  $38                                         ; $7800: $ff
	cp   e                                           ; $7801: $bb
	xor  c                                           ; $7802: $a9
	call c, $daff                                    ; $7803: $dc $ff $da
	and  a                                           ; $7806: $a7
	ld   h, [hl]                                     ; $7807: $66
	ld   b, [hl]                                     ; $7808: $46
	ld   b, [hl]                                     ; $7809: $46
	ld   h, c                                        ; $780a: $61
	ld   de, $5611                                   ; $780b: $11 $11 $56
	ld   h, c                                        ; $780e: $61
	ld   [de], a                                     ; $780f: $12
	inc  a                                           ; $7810: $3c
	rst  $38                                         ; $7811: $ff
	ei                                               ; $7812: $fb
	ld   h, a                                        ; $7813: $67
	xor  a                                           ; $7814: $af
	rst  $38                                         ; $7815: $ff
	db   $eb                                         ; $7816: $eb
	db   $ed                                         ; $7817: $ed
	rst  $28                                         ; $7818: $ef
	reti                                             ; $7819: $d9


	sub  d                                           ; $781a: $92
	ld   d, a                                        ; $781b: $57
	ld   l, h                                        ; $781c: $6c
	add  [hl]                                        ; $781d: $86
	ld   hl, $2411                                   ; $781e: $21 $11 $24
	ld   h, d                                        ; $7821: $62
	ld   de, $cf14                                   ; $7822: $11 $14 $cf
	rst  $38                                         ; $7825: $ff
	sub  $7d                                         ; $7826: $d6 $7d
	rst  $38                                         ; $7828: $ff
	rst  $38                                         ; $7829: $ff
	and  $96                                         ; $782a: $e6 $96
	cp   a                                           ; $782c: $bf
	rst  JumpTable                                         ; $782d: $df
	and  a                                           ; $782e: $a7
	halt                                             ; $782f: $76
	ld   d, [hl]                                     ; $7830: $56
	ld   b, c                                        ; $7831: $41
	ld   hl, $1111                                   ; $7832: $21 $11 $11
	ld   de, $9c11                                   ; $7835: $11 $11 $9c
	rst  $38                                         ; $7838: $ff
	cp   $c8                                         ; $7839: $fe $c8
	xor  [hl]                                        ; $783b: $ae
	rst  $38                                         ; $783c: $ff
	rst  $38                                         ; $783d: $ff
	jp   hl                                          ; $783e: $e9


	adc  c                                           ; $783f: $89
	xor  h                                           ; $7840: $ac
	xor  c                                           ; $7841: $a9
	sbc  c                                           ; $7842: $99
	ld   [hl], h                                     ; $7843: $74
	ld   de, $1311                                   ; $7844: $11 $11 $13
	inc  sp                                          ; $7847: $33
	ld   de, $8e12                                   ; $7848: $11 $12 $8e
	rst  $38                                         ; $784b: $ff
	rst  $38                                         ; $784c: $ff
	cp   l                                           ; $784d: $bd
	xor  [hl]                                        ; $784e: $ae
	rst  $38                                         ; $784f: $ff
	rst  $38                                         ; $7850: $ff
	ret                                              ; $7851: $c9


	cp   e                                           ; $7852: $bb
	call z, Call_0cc_4466                            ; $7853: $cc $66 $44
	ld   h, [hl]                                     ; $7856: $66
	ld   hl, $1111                                   ; $7857: $21 $11 $11
	inc  hl                                          ; $785a: $23
	ld   b, l                                        ; $785b: $45
	ld   e, e                                        ; $785c: $5b
	rst  $28                                         ; $785d: $ef
	rst  $38                                         ; $785e: $ff
	xor  $cc                                         ; $785f: $ee $cc
	rst  $38                                         ; $7861: $ff
	rst  $38                                         ; $7862: $ff
	db   $fd                                         ; $7863: $fd
	add  [hl]                                        ; $7864: $86
	ld   e, b                                        ; $7865: $58
	call z, $11a5                                    ; $7866: $cc $a5 $11
	ld   de, $1111                                   ; $7869: $11 $11 $11
	ld   [de], a                                     ; $786c: $12
	ld   l, [hl]                                     ; $786d: $6e
	rst  $38                                         ; $786e: $ff
	rst  $38                                         ; $786f: $ff
	cp   a                                           ; $7870: $bf
	rst  $28                                         ; $7871: $ef
	ld   sp, hl                                      ; $7872: $f9
	db   $ec                                         ; $7873: $ec
	rst  $38                                         ; $7874: $ff
	xor  $88                                         ; $7875: $ee $88
	ld   h, l                                        ; $7877: $65
	halt                                             ; $7878: $76
	ld   sp, $1111                                   ; $7879: $31 $11 $11
	ld   de, $6b15                                   ; $787c: $11 $15 $6b
	rst  $38                                         ; $787f: $ff
	rst  $38                                         ; $7880: $ff
	db   $fd                                         ; $7881: $fd
	call $ffef                                       ; $7882: $cd $ef $ff
	cp   $c9                                         ; $7885: $fe $c9
	sub  l                                           ; $7887: $95
	halt                                             ; $7888: $76
	dec  h                                           ; $7889: $25
	ld   de, $1111                                   ; $788a: $11 $11 $11
	ld   de, $af16                                   ; $788d: $11 $16 $af
	rst  $38                                         ; $7890: $ff
	rst  $38                                         ; $7891: $ff
	rst  $38                                         ; $7892: $ff
	jp   z, $ffff                                    ; $7893: $ca $ff $ff

	rst  $38                                         ; $7896: $ff
	reti                                             ; $7897: $d9


	sub  [hl]                                        ; $7898: $96
	halt                                             ; $7899: $76
	ld   sp, $1111                                   ; $789a: $31 $11 $11
	ld   de, $6a11                                   ; $789d: $11 $11 $6a
	rst  $38                                         ; $78a0: $ff
	rst  $38                                         ; $78a1: $ff
	rst  $38                                         ; $78a2: $ff
	ld   sp, hl                                      ; $78a3: $f9
	cp   a                                           ; $78a4: $bf
	rst  $38                                         ; $78a5: $ff
	db   $fd                                         ; $78a6: $fd
	jp   c, Jump_0cc_557a                            ; $78a7: $da $7a $55

	ld   sp, $1111                                   ; $78aa: $31 $11 $11
	ld   de, $8f11                                   ; $78ad: $11 $11 $8f
	rst  $38                                         ; $78b0: $ff
	rst  $38                                         ; $78b1: $ff
	rst  $38                                         ; $78b2: $ff
	reti                                             ; $78b3: $d9


	rst  $38                                         ; $78b4: $ff
	rst  $38                                         ; $78b5: $ff
	rst  $38                                         ; $78b6: $ff
	xor  b                                           ; $78b7: $a8
	ld   d, l                                        ; $78b8: $55
	inc  sp                                          ; $78b9: $33
	ld   hl, $1111                                   ; $78ba: $21 $11 $11
	ld   de, $ef27                                   ; $78bd: $11 $27 $ef
	rst  $38                                         ; $78c0: $ff
	rst  $38                                         ; $78c1: $ff
	ld   sp, hl                                      ; $78c2: $f9
	set  7, a                                        ; $78c3: $cb $ff
	rst  $38                                         ; $78c5: $ff
	push bc                                          ; $78c6: $c5
	ld   h, c                                        ; $78c7: $61
	ld   b, d                                        ; $78c8: $42
	ld   de, $1111                                   ; $78c9: $11 $11 $11
	ld   de, $df15                                   ; $78cc: $11 $15 $df
	rst  $38                                         ; $78cf: $ff
	rst  $38                                         ; $78d0: $ff
	ei                                               ; $78d1: $fb
	ld   l, a                                        ; $78d2: $6f
	rst  $38                                         ; $78d3: $ff
	rst  $38                                         ; $78d4: $ff
	push hl                                          ; $78d5: $e5
	ld   [de], a                                     ; $78d6: $12
	ld   de, $1111                                   ; $78d7: $11 $11 $11
	ld   de, $1611                                   ; $78da: $11 $11 $16
	rst  $28                                         ; $78dd: $ef
	rst  $38                                         ; $78de: $ff
	rst  $38                                         ; $78df: $ff
	db   $db                                         ; $78e0: $db
	rst  $28                                         ; $78e1: $ef
	rst  $38                                         ; $78e2: $ff
	rst  $38                                         ; $78e3: $ff
	cp   b                                           ; $78e4: $b8
	ld   d, c                                        ; $78e5: $51
	ld   de, $1111                                   ; $78e6: $11 $11 $11
	ld   de, $4d11                                   ; $78e9: $11 $11 $4d
	rst  $38                                         ; $78ec: $ff
	rst  $38                                         ; $78ed: $ff
	rst  $38                                         ; $78ee: $ff
	cp   [hl]                                        ; $78ef: $be
	rst  $38                                         ; $78f0: $ff
	rst  $38                                         ; $78f1: $ff
	ei                                               ; $78f2: $fb
	and  h                                           ; $78f3: $a4
	ld   de, $1111                                   ; $78f4: $11 $11 $11
	ld   de, $5511                                   ; $78f7: $11 $11 $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78fa: $cf
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	ld   a, [$ffbd]                                  ; $78fd: $fa $bd $ff
	rst  $38                                         ; $7900: $ff
	sbc  c                                           ; $7901: $99
	ld   b, c                                        ; $7902: $41
	ld   de, $1111                                   ; $7903: $11 $11 $11
	ld   de, $8f33                                   ; $7906: $11 $33 $8f
	rst  $38                                         ; $7909: $ff
	rst  $38                                         ; $790a: $ff
	db   $fc                                         ; $790b: $fc
	cp   $ff                                         ; $790c: $fe $ff
	rst  $38                                         ; $790e: $ff
	reti                                             ; $790f: $d9


	sub  d                                           ; $7910: $92
	ld   de, $1111                                   ; $7911: $11 $11 $11
	ld   de, $7b15                                   ; $7914: $11 $15 $7b
	rst  JumpTable                                         ; $7917: $df
	rst  $38                                         ; $7918: $ff
	rst  $38                                         ; $7919: $ff
	db   $db                                         ; $791a: $db
	sbc  a                                           ; $791b: $9f
	rst  $38                                         ; $791c: $ff
	ld   a, [$1175]                                  ; $791d: $fa $75 $11
	ld   de, $1111                                   ; $7920: $11 $11 $11
	dec  d                                           ; $7923: $15
	ld   d, a                                        ; $7924: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7925: $cf
	rst  $38                                         ; $7926: $ff
	rst  $38                                         ; $7927: $ff
	rst  $38                                         ; $7928: $ff
	cp   a                                           ; $7929: $bf
	rst  $38                                         ; $792a: $ff
	db   $fc                                         ; $792b: $fc
	xor  c                                           ; $792c: $a9
	ld   sp, $1111                                   ; $792d: $31 $11 $11
	ld   de, $6712                                   ; $7930: $11 $12 $67
	cp   [hl]                                        ; $7933: $be
	rst  $38                                         ; $7934: $ff
	rst  $38                                         ; $7935: $ff
	rst  $38                                         ; $7936: $ff
	rst  $28                                         ; $7937: $ef
	rst  JumpTable                                         ; $7938: $df
	rst  $38                                         ; $7939: $ff
	ld   a, [$1182]                                  ; $793a: $fa $82 $11
	ld   de, $1111                                   ; $793d: $11 $11 $11
	add  hl, sp                                      ; $7940: $39
	xor  e                                           ; $7941: $ab
	rst  JumpTable                                         ; $7942: $df
	rst  $38                                         ; $7943: $ff
	rst  $38                                         ; $7944: $ff
	db   $fd                                         ; $7945: $fd
	cp   a                                           ; $7946: $bf
	rst  $38                                         ; $7947: $ff
	db   $fd                                         ; $7948: $fd
	and  a                                           ; $7949: $a7
	ld   de, $1111                                   ; $794a: $11 $11 $11
	ld   de, $8813                                   ; $794d: $11 $13 $88
	rst  $28                                         ; $7950: $ef
	rst  $38                                         ; $7951: $ff
	rst  $38                                         ; $7952: $ff
	rst  $38                                         ; $7953: $ff
	db   $fd                                         ; $7954: $fd
	rst  $28                                         ; $7955: $ef
	rst  $38                                         ; $7956: $ff
	ei                                               ; $7957: $fb
	ld   d, c                                        ; $7958: $51
	ld   de, $1111                                   ; $7959: $11 $11 $11
	ld   de, $ce7c                                   ; $795c: $11 $7c $ce
	rst  $38                                         ; $795f: $ff
	rst  $38                                         ; $7960: $ff
	rst  $38                                         ; $7961: $ff
	db   $fc                                         ; $7962: $fc
	rst  $28                                         ; $7963: $ef
	rst  $38                                         ; $7964: $ff
	db   $eb                                         ; $7965: $eb
	sub  d                                           ; $7966: $92
	ld   de, $1111                                   ; $7967: $11 $11 $11
	ld   de, $bd3a                                   ; $796a: $11 $3a $bd
	rst  $38                                         ; $796d: $ff
	rst  $38                                         ; $796e: $ff
	rst  $38                                         ; $796f: $ff
	rst  $38                                         ; $7970: $ff
	rst  $38                                         ; $7971: $ff
	rst  $38                                         ; $7972: $ff
	db   $fc                                         ; $7973: $fc
	sub  e                                           ; $7974: $93
	ld   de, $1111                                   ; $7975: $11 $11 $11
	ld   [de], a                                     ; $7978: $12
	ld   e, b                                        ; $7979: $58
	xor  [hl]                                        ; $797a: $ae
	rst  $38                                         ; $797b: $ff
	rst  $38                                         ; $797c: $ff
	rst  $38                                         ; $797d: $ff
	rst  $38                                         ; $797e: $ff
	rst  $38                                         ; $797f: $ff
	rst  $38                                         ; $7980: $ff
	db   $fd                                         ; $7981: $fd
	sub  d                                           ; $7982: $92
	ld   de, $1111                                   ; $7983: $11 $11 $11
	ld   [de], a                                     ; $7986: $12
	ld   e, d                                        ; $7987: $5a
	adc  $ff                                         ; $7988: $ce $ff
	rst  $38                                         ; $798a: $ff
	rst  $38                                         ; $798b: $ff
	rst  $38                                         ; $798c: $ff
	rst  $38                                         ; $798d: $ff
	rst  $38                                         ; $798e: $ff
	db   $ed                                         ; $798f: $ed
	ld   [hl], c                                     ; $7990: $71
	ld   de, $1111                                   ; $7991: $11 $11 $11
	inc  de                                          ; $7994: $13
	adc  d                                           ; $7995: $8a
	adc  $ff                                         ; $7996: $ce $ff
	rst  $38                                         ; $7998: $ff
	rst  $38                                         ; $7999: $ff
	rst  $38                                         ; $799a: $ff
	rst  $38                                         ; $799b: $ff
	cp   $db                                         ; $799c: $fe $db
	ld   de, $1111                                   ; $799e: $11 $11 $11
	ld   de, $cd27                                   ; $79a1: $11 $27 $cd
	rst  $28                                         ; $79a4: $ef
	rst  $38                                         ; $79a5: $ff
	rst  $38                                         ; $79a6: $ff
	rst  $38                                         ; $79a7: $ff
	rst  $38                                         ; $79a8: $ff
	rst  $38                                         ; $79a9: $ff
	call c, $11b2                                    ; $79aa: $dc $b2 $11
	ld   de, $1311                                   ; $79ad: $11 $11 $13
	ld   a, h                                        ; $79b0: $7c
	rst  $28                                         ; $79b1: $ef
	rst  $38                                         ; $79b2: $ff
	rst  $38                                         ; $79b3: $ff
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	cp   $dc                                         ; $79b6: $fe $dc
	rst  ToBoot                                         ; $79b8: $c7
	ld   de, $1111                                   ; $79b9: $11 $11 $11
	inc  d                                           ; $79bc: $14
	ld   l, d                                        ; $79bd: $6a
	sbc  $ff                                         ; $79be: $de $ff
	rst  $38                                         ; $79c0: $ff
	rst  $38                                         ; $79c1: $ff
	rst  $38                                         ; $79c2: $ff
	rst  $38                                         ; $79c3: $ff
	db   $db                                         ; $79c4: $db
	cp   d                                           ; $79c5: $ba
	ld   hl, $1111                                   ; $79c6: $21 $11 $11
	ld   [de], a                                     ; $79c9: $12
	ld   b, a                                        ; $79ca: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79cb: $cf
	rst  $38                                         ; $79cc: $ff
	rst  $38                                         ; $79cd: $ff
	rst  $38                                         ; $79ce: $ff
	rst  $38                                         ; $79cf: $ff
	rst  $38                                         ; $79d0: $ff
	db   $ec                                         ; $79d1: $ec
	cp   c                                           ; $79d2: $b9
	ld   hl, $1111                                   ; $79d3: $21 $11 $11
	ld   [de], a                                     ; $79d6: $12
	dec  [hl]                                        ; $79d7: $35
	cp   a                                           ; $79d8: $bf
	rst  $38                                         ; $79d9: $ff
	rst  $38                                         ; $79da: $ff
	rst  $38                                         ; $79db: $ff
	rst  $38                                         ; $79dc: $ff
	cp   $eb                                         ; $79dd: $fe $eb
	xor  c                                           ; $79df: $a9
	ld   de, $1111                                   ; $79e0: $11 $11 $11
	ld   [de], a                                     ; $79e3: $12
	ld   [hl], $cf                                   ; $79e4: $36 $cf
	rst  $38                                         ; $79e6: $ff
	rst  $38                                         ; $79e7: $ff
	rst  $38                                         ; $79e8: $ff
	rst  $38                                         ; $79e9: $ff
	cp   $cb                                         ; $79ea: $fe $cb
	and  a                                           ; $79ec: $a7
	ld   de, $1111                                   ; $79ed: $11 $11 $11
	ld   de, $cf26                                   ; $79f0: $11 $26 $cf
	rst  $38                                         ; $79f3: $ff
	rst  $38                                         ; $79f4: $ff
	rst  $38                                         ; $79f5: $ff
	rst  $38                                         ; $79f6: $ff
	cp   $cb                                         ; $79f7: $fe $cb
	and  h                                           ; $79f9: $a4
	ld   de, $1111                                   ; $79fa: $11 $11 $11
	ld   de, $bf26                                   ; $79fd: $11 $26 $bf
	rst  $38                                         ; $7a00: $ff
	rst  $38                                         ; $7a01: $ff
	rst  $38                                         ; $7a02: $ff
	rst  $38                                         ; $7a03: $ff
	rst  $38                                         ; $7a04: $ff
	call c, $11a4                                    ; $7a05: $dc $a4 $11
	ld   de, $1111                                   ; $7a08: $11 $11 $11
	inc  de                                          ; $7a0b: $13
	ld   a, e                                        ; $7a0c: $7b
	rst  JumpTable                                         ; $7a0d: $df
	rst  $38                                         ; $7a0e: $ff
	rst  $38                                         ; $7a0f: $ff
	rst  $38                                         ; $7a10: $ff
	rst  $38                                         ; $7a11: $ff
	cp   $b7                                         ; $7a12: $fe $b7
	ld   hl, $1111                                   ; $7a14: $21 $11 $11
	ld   de, $3711                                   ; $7a17: $11 $11 $37
	xor  e                                           ; $7a1a: $ab
	rst  JumpTable                                         ; $7a1b: $df
	rst  $38                                         ; $7a1c: $ff
	rst  $38                                         ; $7a1d: $ff
	rst  $38                                         ; $7a1e: $ff
	rst  $38                                         ; $7a1f: $ff
	db   $fd                                         ; $7a20: $fd
	and  l                                           ; $7a21: $a5
	ld   hl, $1111                                   ; $7a22: $21 $11 $11
	ld   de, $3511                                   ; $7a25: $11 $11 $35
	ld   a, e                                        ; $7a28: $7b
	rst  $28                                         ; $7a29: $ef
	rst  $38                                         ; $7a2a: $ff
	rst  $38                                         ; $7a2b: $ff
	rst  $38                                         ; $7a2c: $ff
	rst  $38                                         ; $7a2d: $ff
	ld   a, [$1151]                                  ; $7a2e: $fa $51 $11
	ld   de, $1111                                   ; $7a31: $11 $11 $11
	ld   [de], a                                     ; $7a34: $12
	ld   c, c                                        ; $7a35: $49
	cp   a                                           ; $7a36: $bf
	rst  $38                                         ; $7a37: $ff
	rst  $38                                         ; $7a38: $ff
	rst  $38                                         ; $7a39: $ff
	rst  $38                                         ; $7a3a: $ff
	db   $fd                                         ; $7a3b: $fd
	sub  h                                           ; $7a3c: $94
	ld   de, $1111                                   ; $7a3d: $11 $11 $11
	ld   de, $2511                                   ; $7a40: $11 $11 $25
	xor  h                                           ; $7a43: $ac
	rst  $38                                         ; $7a44: $ff
	rst  $38                                         ; $7a45: $ff
	rst  $38                                         ; $7a46: $ff
	rst  $38                                         ; $7a47: $ff
	rst  $38                                         ; $7a48: $ff
	or   [hl]                                        ; $7a49: $b6
	ld   hl, $1111                                   ; $7a4a: $21 $11 $11
	ld   de, $2311                                   ; $7a4d: $11 $11 $23
	adc  h                                           ; $7a50: $8c
	rst  $28                                         ; $7a51: $ef
	rst  $38                                         ; $7a52: $ff
	rst  $38                                         ; $7a53: $ff
	rst  $38                                         ; $7a54: $ff
	rst  $38                                         ; $7a55: $ff
	reti                                             ; $7a56: $d9


	ld   b, c                                        ; $7a57: $41
	ld   de, $1111                                   ; $7a58: $11 $11 $11
	ld   de, $6a13                                   ; $7a5b: $11 $13 $6a
	rst  JumpTable                                         ; $7a5e: $df
	rst  $38                                         ; $7a5f: $ff
	rst  $38                                         ; $7a60: $ff
	rst  $38                                         ; $7a61: $ff
	rst  $38                                         ; $7a62: $ff
	ld   [$1151], a                                  ; $7a63: $ea $51 $11
	ld   de, $1111                                   ; $7a66: $11 $11 $11
	inc  de                                          ; $7a69: $13
	ld   e, d                                        ; $7a6a: $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a6b: $cf
	rst  $38                                         ; $7a6c: $ff
	rst  $38                                         ; $7a6d: $ff
	rst  $38                                         ; $7a6e: $ff
	rst  $38                                         ; $7a6f: $ff
	ei                                               ; $7a70: $fb
	ld   h, c                                        ; $7a71: $61
	ld   de, $1111                                   ; $7a72: $11 $11 $11
	ld   de, $4913                                   ; $7a75: $11 $13 $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a78: $cf
	rst  $38                                         ; $7a79: $ff
	rst  $38                                         ; $7a7a: $ff
	rst  $38                                         ; $7a7b: $ff
	rst  $38                                         ; $7a7c: $ff
	ei                                               ; $7a7d: $fb
	ld   h, c                                        ; $7a7e: $61
	ld   de, $1111                                   ; $7a7f: $11 $11 $11
	ld   de, $5913                                   ; $7a82: $11 $13 $59
	adc  $ff                                         ; $7a85: $ce $ff
	rst  $38                                         ; $7a87: $ff
	rst  $38                                         ; $7a88: $ff
	rst  $38                                         ; $7a89: $ff
	jp   hl                                          ; $7a8a: $e9


	ld   d, c                                        ; $7a8b: $51
	ld   de, $1111                                   ; $7a8c: $11 $11 $11
	ld   de, $6a24                                   ; $7a8f: $11 $24 $6a
	rst  JumpTable                                         ; $7a92: $df
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	rst  $38                                         ; $7a95: $ff
	rst  $38                                         ; $7a96: $ff
	reti                                             ; $7a97: $d9


	ld   b, c                                        ; $7a98: $41
	ld   de, $1111                                   ; $7a99: $11 $11 $11
	ld   de, $7a34                                   ; $7a9c: $11 $34 $7a
	rst  JumpTable                                         ; $7a9f: $df
	rst  $38                                         ; $7aa0: $ff
	rst  $38                                         ; $7aa1: $ff
	rst  $38                                         ; $7aa2: $ff
	rst  $38                                         ; $7aa3: $ff
	or   [hl]                                        ; $7aa4: $b6
	ld   hl, $1111                                   ; $7aa5: $21 $11 $11
	ld   de, $3511                                   ; $7aa8: $11 $11 $35
	adc  h                                           ; $7aab: $8c
	rst  JumpTable                                         ; $7aac: $df
	rst  $38                                         ; $7aad: $ff
	rst  $38                                         ; $7aae: $ff
	rst  $38                                         ; $7aaf: $ff
	cp   $95                                         ; $7ab0: $fe $95
	ld   bc, $1111                                   ; $7ab2: $01 $11 $11
	ld   de, $4612                                   ; $7ab5: $11 $12 $46
	xor  h                                           ; $7ab8: $ac
	rst  $28                                         ; $7ab9: $ef
	rst  $38                                         ; $7aba: $ff
	rst  $38                                         ; $7abb: $ff
	rst  $38                                         ; $7abc: $ff
	ei                                               ; $7abd: $fb
	ld   [hl], e                                     ; $7abe: $73
	ld   de, $1111                                   ; $7abf: $11 $11 $11
	ld   de, $5913                                   ; $7ac2: $11 $13 $59
	cp   l                                           ; $7ac5: $bd
	rst  $38                                         ; $7ac6: $ff
	rst  $38                                         ; $7ac7: $ff
	rst  $38                                         ; $7ac8: $ff
	rst  $38                                         ; $7ac9: $ff
	ret  z                                           ; $7aca: $c8

	ld   b, c                                        ; $7acb: $41
	ld   de, $1111                                   ; $7acc: $11 $11 $11
	ld   de, $7a34                                   ; $7acf: $11 $34 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad2: $cf
	rst  $38                                         ; $7ad3: $ff
	rst  $38                                         ; $7ad4: $ff
	rst  $38                                         ; $7ad5: $ff
	db   $fd                                         ; $7ad6: $fd
	and  [hl]                                        ; $7ad7: $a6
	ld   hl, $1111                                   ; $7ad8: $21 $11 $11
	ld   de, $4613                                   ; $7adb: $11 $13 $46
	xor  h                                           ; $7ade: $ac
	rst  $28                                         ; $7adf: $ef
	rst  $38                                         ; $7ae0: $ff
	rst  $38                                         ; $7ae1: $ff
	rst  $38                                         ; $7ae2: $ff
	db   $eb                                         ; $7ae3: $eb
	ld   [hl], e                                     ; $7ae4: $73
	ld   de, $1111                                   ; $7ae5: $11 $11 $11
	ld   de, $5824                                   ; $7ae8: $11 $24 $58
	cp   h                                           ; $7aeb: $bc
	rst  $38                                         ; $7aec: $ff
	rst  $38                                         ; $7aed: $ff
	rst  $38                                         ; $7aee: $ff
	rst  $38                                         ; $7aef: $ff
	ret  z                                           ; $7af0: $c8

	ld   b, c                                        ; $7af1: $41
	ld   de, $1111                                   ; $7af2: $11 $11 $11
	ld   de, $7a45                                   ; $7af5: $11 $45 $7a
	adc  $ff                                         ; $7af8: $ce $ff
	rst  $38                                         ; $7afa: $ff
	rst  $38                                         ; $7afb: $ff
	db   $fd                                         ; $7afc: $fd
	and  l                                           ; $7afd: $a5
	ld   hl, $1111                                   ; $7afe: $21 $11 $11
	ld   [de], a                                     ; $7b01: $12
	inc  de                                          ; $7b02: $13
	ld   d, [hl]                                     ; $7b03: $56
	xor  h                                           ; $7b04: $ac
	rst  JumpTable                                         ; $7b05: $df
	rst  $38                                         ; $7b06: $ff
	rst  $38                                         ; $7b07: $ff
	rst  $38                                         ; $7b08: $ff
	db   $eb                                         ; $7b09: $eb
	ld   h, e                                        ; $7b0a: $63
	ld   de, $1111                                   ; $7b0b: $11 $11 $11
	ld   hl, $6935                                   ; $7b0e: $21 $35 $69
	xor  l                                           ; $7b11: $ad
	rst  $28                                         ; $7b12: $ef
	rst  $38                                         ; $7b13: $ff
	rst  $38                                         ; $7b14: $ff
	rst  $38                                         ; $7b15: $ff
	cp   b                                           ; $7b16: $b8
	ld   b, c                                        ; $7b17: $41
	ld   de, $1211                                   ; $7b18: $11 $11 $12
	ld   [de], a                                     ; $7b1b: $12
	ld   d, l                                        ; $7b1c: $55
	ld   a, d                                        ; $7b1d: $7a
	adc  $ff                                         ; $7b1e: $ce $ff
	rst  $38                                         ; $7b20: $ff
	rst  $38                                         ; $7b21: $ff
	db   $fc                                         ; $7b22: $fc
	sub  l                                           ; $7b23: $95
	ld   hl, $1111                                   ; $7b24: $21 $11 $11
	ld   [de], a                                     ; $7b27: $12
	inc  d                                           ; $7b28: $14
	ld   d, a                                        ; $7b29: $57
	xor  e                                           ; $7b2a: $ab
	rst  JumpTable                                         ; $7b2b: $df
	rst  $38                                         ; $7b2c: $ff
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	jp   c, $1163                                    ; $7b2f: $da $63 $11

	ld   de, $2111                                   ; $7b32: $11 $11 $21
	dec  [hl]                                        ; $7b35: $35
	ld   l, c                                        ; $7b36: $69
	xor  l                                           ; $7b37: $ad
	rst  $28                                         ; $7b38: $ef
	rst  $38                                         ; $7b39: $ff
	rst  $38                                         ; $7b3a: $ff
	cp   $c8                                         ; $7b3b: $fe $c8
	ld   b, c                                        ; $7b3d: $41
	ld   de, $1211                                   ; $7b3e: $11 $11 $12
	ld   [hl+], a                                    ; $7b41: $22
	ld   d, [hl]                                     ; $7b42: $56
	ld   a, d                                        ; $7b43: $7a
	cp   l                                           ; $7b44: $bd
	rst  $38                                         ; $7b45: $ff
	rst  $38                                         ; $7b46: $ff
	rst  $38                                         ; $7b47: $ff
	db   $fc                                         ; $7b48: $fc
	and  l                                           ; $7b49: $a5
	ld   hl, $1111                                   ; $7b4a: $21 $11 $11
	ld   [de], a                                     ; $7b4d: $12
	inc  h                                           ; $7b4e: $24
	ld   h, a                                        ; $7b4f: $67
	sbc  e                                           ; $7b50: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b51: $cf
	rst  $38                                         ; $7b52: $ff
	rst  $38                                         ; $7b53: $ff
	rst  $38                                         ; $7b54: $ff
	db   $eb                                         ; $7b55: $eb
	ld   [hl], e                                     ; $7b56: $73
	ld   de, $1111                                   ; $7b57: $11 $11 $11
	ld   [hl+], a                                    ; $7b5a: $22
	dec  [hl]                                        ; $7b5b: $35
	ld   l, b                                        ; $7b5c: $68
	xor  h                                           ; $7b5d: $ac
	rst  JumpTable                                         ; $7b5e: $df
	rst  $38                                         ; $7b5f: $ff
	rst  $38                                         ; $7b60: $ff
	rst  $38                                         ; $7b61: $ff
	reti                                             ; $7b62: $d9


	ld   d, d                                        ; $7b63: $52
	ld   de, $1111                                   ; $7b64: $11 $11 $11
	ld   [hl+], a                                    ; $7b67: $22
	ld   b, [hl]                                     ; $7b68: $46
	ld   a, c                                        ; $7b69: $79
	cp   h                                           ; $7b6a: $bc
	rst  $28                                         ; $7b6b: $ef
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	cp   $b7                                         ; $7b6e: $fe $b7
	ld   b, c                                        ; $7b70: $41
	ld   de, $1211                                   ; $7b71: $11 $11 $12
	inc  hl                                          ; $7b74: $23
	ld   d, [hl]                                     ; $7b75: $56
	adc  d                                           ; $7b76: $8a
	cp   l                                           ; $7b77: $bd
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	rst  $38                                         ; $7b7a: $ff
	db   $fd                                         ; $7b7b: $fd
	and  [hl]                                        ; $7b7c: $a6
	ld   sp, $1111                                   ; $7b7d: $31 $11 $11
	inc  de                                          ; $7b80: $13
	inc  h                                           ; $7b81: $24
	ld   h, [hl]                                     ; $7b82: $66
	adc  e                                           ; $7b83: $8b
	cp   l                                           ; $7b84: $bd
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	rst  $38                                         ; $7b87: $ff
	db   $fd                                         ; $7b88: $fd
	sub  l                                           ; $7b89: $95
	ld   hl, $1111                                   ; $7b8a: $21 $11 $11
	ld   [hl+], a                                    ; $7b8d: $22
	dec  h                                           ; $7b8e: $25
	ld   h, a                                        ; $7b8f: $67
	xor  d                                           ; $7b90: $aa
	adc  $ff                                         ; $7b91: $ce $ff
	rst  $38                                         ; $7b93: $ff
	rst  $38                                         ; $7b94: $ff
	db   $ec                                         ; $7b95: $ec
	sub  l                                           ; $7b96: $95
	ld   hl, $1111                                   ; $7b97: $21 $11 $11
	ld   [hl+], a                                    ; $7b9a: $22
	dec  [hl]                                        ; $7b9b: $35
	ld   h, a                                        ; $7b9c: $67
	xor  d                                           ; $7b9d: $aa
	sbc  $ff                                         ; $7b9e: $de $ff
	rst  $38                                         ; $7ba0: $ff
	rst  $38                                         ; $7ba1: $ff
	ei                                               ; $7ba2: $fb
	add  h                                           ; $7ba3: $84
	ld   hl, $1111                                   ; $7ba4: $21 $11 $11
	ld   [hl+], a                                    ; $7ba7: $22
	dec  [hl]                                        ; $7ba8: $35
	ld   l, b                                        ; $7ba9: $68
	sbc  e                                           ; $7baa: $9b
	sbc  $ff                                         ; $7bab: $de $ff
	rst  $38                                         ; $7bad: $ff
	rst  $38                                         ; $7bae: $ff
	ei                                               ; $7baf: $fb
	add  h                                           ; $7bb0: $84
	ld   hl, $1111                                   ; $7bb1: $21 $11 $11
	inc  hl                                          ; $7bb4: $23
	dec  [hl]                                        ; $7bb5: $35
	ld   l, b                                        ; $7bb6: $68
	sbc  d                                           ; $7bb7: $9a
	db   $dd                                         ; $7bb8: $dd
	rst  $38                                         ; $7bb9: $ff
	rst  $38                                         ; $7bba: $ff
	rst  $38                                         ; $7bbb: $ff
	db   $ec                                         ; $7bbc: $ec
	add  l                                           ; $7bbd: $85
	ld   hl, $1111                                   ; $7bbe: $21 $11 $11
	inc  hl                                          ; $7bc1: $23
	dec  [hl]                                        ; $7bc2: $35
	ld   h, a                                        ; $7bc3: $67
	xor  e                                           ; $7bc4: $ab
	adc  $ff                                         ; $7bc5: $ce $ff
	rst  $38                                         ; $7bc7: $ff
	rst  $38                                         ; $7bc8: $ff
	db   $fd                                         ; $7bc9: $fd
	sub  [hl]                                        ; $7bca: $96
	ld   sp, $1111                                   ; $7bcb: $31 $11 $11
	inc  de                                          ; $7bce: $13
	dec  [hl]                                        ; $7bcf: $35
	ld   h, a                                        ; $7bd0: $67
	sbc  e                                           ; $7bd1: $9b
	cp   l                                           ; $7bd2: $bd
	rst  $28                                         ; $7bd3: $ef
	rst  $38                                         ; $7bd4: $ff
	rst  $38                                         ; $7bd5: $ff
	db   $fd                                         ; $7bd6: $fd
	and  a                                           ; $7bd7: $a7
	ld   b, c                                        ; $7bd8: $41
	ld   de, $1211                                   ; $7bd9: $11 $11 $12
	inc  [hl]                                        ; $7bdc: $34
	ld   h, a                                        ; $7bdd: $67
	sbc  d                                           ; $7bde: $9a
	cp   h                                           ; $7bdf: $bc
	rst  $28                                         ; $7be0: $ef
	rst  $38                                         ; $7be1: $ff
	rst  $38                                         ; $7be2: $ff
	rst  $38                                         ; $7be3: $ff
	ret  z                                           ; $7be4: $c8

	ld   d, d                                        ; $7be5: $52
	ld   de, $1111                                   ; $7be6: $11 $11 $11
	inc  hl                                          ; $7be9: $23
	ld   d, [hl]                                     ; $7bea: $56
	ld   a, d                                        ; $7beb: $7a
	cp   h                                           ; $7bec: $bc
	rst  $28                                         ; $7bed: $ef
	rst  $38                                         ; $7bee: $ff
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	db   $eb                                         ; $7bf1: $eb
	ld   [hl], h                                     ; $7bf2: $74
	ld   de, $1111                                   ; $7bf3: $11 $11 $11
	ld   [hl+], a                                    ; $7bf6: $22
	ld   b, [hl]                                     ; $7bf7: $46
	ld   a, b                                        ; $7bf8: $78
	cp   h                                           ; $7bf9: $bc
	sbc  $ff                                         ; $7bfa: $de $ff
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	db   $fd                                         ; $7bfe: $fd
	sub  [hl]                                        ; $7bff: $96
	ld   sp, $1111                                   ; $7c00: $31 $11 $11
	ld   [de], a                                     ; $7c03: $12
	dec  h                                           ; $7c04: $25
	ld   h, a                                        ; $7c05: $67
	sbc  e                                           ; $7c06: $9b
	sbc  $ef                                         ; $7c07: $de $ef
	rst  $38                                         ; $7c09: $ff
	rst  $38                                         ; $7c0a: $ff
	db   $fd                                         ; $7c0b: $fd
	ret  z                                           ; $7c0c: $c8

	ld   d, d                                        ; $7c0d: $52
	ld   de, $1111                                   ; $7c0e: $11 $11 $11
	inc  hl                                          ; $7c11: $23
	ld   d, a                                        ; $7c12: $57
	adc  d                                           ; $7c13: $8a
	call $ffff                                       ; $7c14: $cd $ff $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	db   $db                                         ; $7c19: $db
	ld   [hl], h                                     ; $7c1a: $74
	ld   hl, $1111                                   ; $7c1b: $21 $11 $11
	ld   [de], a                                     ; $7c1e: $12
	ld   [hl], $78                                   ; $7c1f: $36 $78
	xor  e                                           ; $7c21: $ab
	sbc  $ff                                         ; $7c22: $de $ff
	rst  $38                                         ; $7c24: $ff
	rst  $38                                         ; $7c25: $ff
	db   $fd                                         ; $7c26: $fd
	and  a                                           ; $7c27: $a7
	ld   b, c                                        ; $7c28: $41
	ld   de, $1111                                   ; $7c29: $11 $11 $11
	inc  h                                           ; $7c2c: $24
	ld   h, a                                        ; $7c2d: $67
	sbc  h                                           ; $7c2e: $9c
	rst  $28                                         ; $7c2f: $ef
	rst  $38                                         ; $7c30: $ff
	rst  $38                                         ; $7c31: $ff
	rst  $38                                         ; $7c32: $ff
	ld   [$1172], a                                  ; $7c33: $ea $72 $11
	ld   de, $1311                                   ; $7c36: $11 $11 $13
	sbc  h                                           ; $7c39: $9c
	res  5, [hl]                                     ; $7c3a: $cb $ae
	rst  $38                                         ; $7c3c: $ff
	cp   $ef                                         ; $7c3d: $fe $ef
	db   $ed                                         ; $7c3f: $ed
	xor  b                                           ; $7c40: $a8
	ld   h, d                                        ; $7c41: $62
	ld   de, $8711                                   ; $7c42: $11 $11 $87
	inc  sp                                          ; $7c45: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c46: $cf
	ei                                               ; $7c47: $fb
	ld   l, c                                        ; $7c48: $69
	rst  $38                                         ; $7c49: $ff
	ld   sp, hl                                      ; $7c4a: $f9
	sbc  l                                           ; $7c4b: $9d
	db   $fc                                         ; $7c4c: $fc
	halt                                             ; $7c4d: $76
	sub  a                                           ; $7c4e: $97
	ld   de, $fe15                                   ; $7c4f: $11 $15 $fe
	ld   [hl-], a                                    ; $7c52: $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c53: $cf
	di                                               ; $7c54: $f3
	jr   @+$01                                       ; $7c55: $18 $ff

	rst  $10                                         ; $7c57: $d7
	xor  a                                           ; $7c58: $af
	ld   hl, sp+$59                                  ; $7c59: $f8 $59
	ld   [$1911], a                                  ; $7c5b: $ea $11 $19
	cp   $11                                         ; $7c5e: $fe $11
	rst  $28                                         ; $7c60: $ef
	pop  de                                          ; $7c61: $d1
	dec  e                                           ; $7c62: $1d
	rst  $38                                         ; $7c63: $ff
	or   [hl]                                        ; $7c64: $b6
	rst  JumpTable                                         ; $7c65: $df
	call nc, $f64c                                   ; $7c66: $d4 $4c $f6
	ld   de, $fa1f                                   ; $7c69: $11 $1f $fa
	ld   d, $ff                                      ; $7c6c: $16 $ff
	ld   d, c                                        ; $7c6e: $51
	ccf                                              ; $7c6f: $3f
	rst  $38                                         ; $7c70: $ff
	adc  c                                           ; $7c71: $89
	rst  $38                                         ; $7c72: $ff
	ld   [hl], e                                     ; $7c73: $73
	sbc  a                                           ; $7c74: $9f
	ldh  a, [c]                                      ; $7c75: $f2
	ld   de, $f91f                                   ; $7c76: $11 $1f $f9
	ld   a, [de]                                     ; $7c79: $1a
	rst  $38                                         ; $7c7a: $ff
	ld   hl, $ff6f                                   ; $7c7b: $21 $6f $ff
	cp   e                                           ; $7c7e: $bb
	ei                                               ; $7c7f: $fb
	ld   h, l                                        ; $7c80: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c81: $cf
	jp   nc, $1f11                                   ; $7c82: $d2 $11 $1f

	ei                                               ; $7c85: $fb
	add  hl, sp                                      ; $7c86: $39
	db   $fd                                         ; $7c87: $fd
	ld   sp, $ff5f                                   ; $7c88: $31 $5f $ff
	jp   z, Jump_0cc_75db                            ; $7c8b: $ca $db $75

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c8e: $cf
	push hl                                          ; $7c8f: $e5
	ld   de, $ff1c                                   ; $7c90: $11 $1c $ff
	ld   d, a                                        ; $7c93: $57
	rst  $28                                         ; $7c94: $ef
	ld   d, c                                        ; $7c95: $51
	rra                                              ; $7c96: $1f
	rst  $38                                         ; $7c97: $ff
	db   $eb                                         ; $7c98: $eb
	jp   z, $bf76                                    ; $7c99: $ca $76 $bf

	ld   hl, sp+$11                                  ; $7c9c: $f8 $11
	ld   de, $b7ff                                   ; $7c9e: $11 $ff $b7
	xor  l                                           ; $7ca1: $ad
	sub  c                                           ; $7ca2: $91
	ld   a, [de]                                     ; $7ca3: $1a
	rst  $38                                         ; $7ca4: $ff
	db   $fd                                         ; $7ca5: $fd
	sbc  c                                           ; $7ca6: $99
	sub  a                                           ; $7ca7: $97
	sbc  a                                           ; $7ca8: $9f
	db   $fd                                         ; $7ca9: $fd
	ld   hl, $df11                                   ; $7caa: $21 $11 $df
	ld   sp, hl                                      ; $7cad: $f9
	adc  h                                           ; $7cae: $8c
	or   e                                           ; $7caf: $b3
	ld   [de], a                                     ; $7cb0: $12
	rst  $38                                         ; $7cb1: $ff
	rst  $38                                         ; $7cb2: $ff
	xor  b                                           ; $7cb3: $a8
	adc  b                                           ; $7cb4: $88
	ld   a, h                                        ; $7cb5: $7c
	rst  $38                                         ; $7cb6: $ff
	and  c                                           ; $7cb7: $a1
	ld   de, $ff1f                                   ; $7cb8: $11 $1f $ff
	sbc  c                                           ; $7cbb: $99
	ret                                              ; $7cbc: $c9


	ld   de, $ff6f                                   ; $7cbd: $11 $6f $ff
	rst  $10                                         ; $7cc0: $d7
	ld   [hl], a                                     ; $7cc1: $77
	ld   a, b                                        ; $7cc2: $78
	rst  $28                                         ; $7cc3: $ef
	rst  $30                                         ; $7cc4: $f7
	ld   de, rAUD1LEN                                   ; $7cc5: $11 $11 $ff
	ld   sp, hl                                      ; $7cc8: $f9
	sbc  e                                           ; $7cc9: $9b
	ld   [hl], c                                     ; $7cca: $71
	add  hl, de                                      ; $7ccb: $19
	rst  $38                                         ; $7ccc: $ff
	db   $fc                                         ; $7ccd: $fc
	ld   h, [hl]                                     ; $7cce: $66
	ld   [hl], a                                     ; $7ccf: $77
	xor  a                                           ; $7cd0: $af
	rst  $38                                         ; $7cd1: $ff
	ld   d, c                                        ; $7cd2: $51
	ld   de, $ff1f                                   ; $7cd3: $11 $1f $ff
	cp   b                                           ; $7cd6: $b8
	and  l                                           ; $7cd7: $a5
	ld   de, $ffaf                                   ; $7cd8: $11 $af $ff
	add  $45                                         ; $7cdb: $c6 $45
	ld   l, d                                        ; $7cdd: $6a
	rst  $38                                         ; $7cde: $ff
	push af                                          ; $7cdf: $f5
	ld   de, rAUD1LEN                                   ; $7ce0: $11 $11 $ff
	db   $fc                                         ; $7ce3: $fc
	adc  b                                           ; $7ce4: $88
	ld   d, c                                        ; $7ce5: $51
	rla                                              ; $7ce6: $17
	rst  $38                                         ; $7ce7: $ff
	rst  $38                                         ; $7ce8: $ff
	ld   d, e                                        ; $7ce9: $53
	ld   d, [hl]                                     ; $7cea: $56
	xor  a                                           ; $7ceb: $af
	rst  $38                                         ; $7cec: $ff
	sub  c                                           ; $7ced: $91
	ld   de, $ff1e                                   ; $7cee: $11 $1e $ff
	ld   sp, hl                                      ; $7cf1: $f9
	halt                                             ; $7cf2: $76
	ld   de, $ff2f                                   ; $7cf3: $11 $2f $ff
	ld   hl, sp+$43                                  ; $7cf6: $f8 $43
	ld   d, a                                        ; $7cf8: $57
	rst  JumpTable                                         ; $7cf9: $df
	rst  $38                                         ; $7cfa: $ff
	ld   sp, $1f11                                   ; $7cfb: $31 $11 $1f
	rst  $38                                         ; $7cfe: $ff
	rst  ToBoot                                         ; $7cff: $c7
	ld   h, h                                        ; $7d00: $64
	ld   de, $ff9f                                   ; $7d01: $11 $9f $ff
	or   $33                                         ; $7d04: $f6 $33
	ld   c, b                                        ; $7d06: $48
	rst  $38                                         ; $7d07: $ff
	ld   a, [$1111]                                  ; $7d08: $fa $11 $11
	rra                                              ; $7d0b: $1f
	rst  $38                                         ; $7d0c: $ff
	add  $53                                         ; $7d0d: $c6 $53
	ld   de, $ffbf                                   ; $7d0f: $11 $bf $ff
	or   $22                                         ; $7d12: $f6 $22
	ld   c, d                                        ; $7d14: $4a
	rst  $38                                         ; $7d15: $ff
	ld   a, [$1111]                                  ; $7d16: $fa $11 $11
	rra                                              ; $7d19: $1f
	rst  $38                                         ; $7d1a: $ff
	push de                                          ; $7d1b: $d5
	ld   d, h                                        ; $7d1c: $54
	ld   de, $ff7f                                   ; $7d1d: $11 $7f $ff
	rst  $30                                         ; $7d20: $f7
	ld   hl, $ff28                                   ; $7d21: $21 $28 $ff
	db   $fd                                         ; $7d24: $fd
	ld   sp, $1a11                                   ; $7d25: $31 $11 $1a
	rst  $38                                         ; $7d28: $ff
	ld   hl, sp+$45                                  ; $7d29: $f8 $45
	ld   de, $ff1d                                   ; $7d2b: $11 $1d $ff
	db   $fd                                         ; $7d2e: $fd
	ld   b, c                                        ; $7d2f: $41
	inc  de                                          ; $7d30: $13
	cp   a                                           ; $7d31: $bf
	rst  $38                                         ; $7d32: $ff
	sub  c                                           ; $7d33: $91
	ld   de, rAUD1LEN                                   ; $7d34: $11 $11 $ff
	rst  $38                                         ; $7d37: $ff
	halt                                             ; $7d38: $76
	ld   h, c                                        ; $7d39: $61
	ld   de, $ffff                                   ; $7d3a: $11 $ff $ff
	or   h                                           ; $7d3d: $b4
	ld   de, $ff4d                                   ; $7d3e: $11 $4d $ff
	ld   a, [$1131]                                  ; $7d41: $fa $31 $11
	dec  de                                          ; $7d44: $1b
	rst  $38                                         ; $7d45: $ff
	ld   sp, hl                                      ; $7d46: $f9
	ld   h, a                                        ; $7d47: $67
	ld   de, $ff1c                                   ; $7d48: $11 $1c $ff
	rst  $38                                         ; $7d4b: $ff
	ld   [hl], d                                     ; $7d4c: $72
	ld   [de], a                                     ; $7d4d: $12
	xor  a                                           ; $7d4e: $af
	rst  $38                                         ; $7d4f: $ff
	or   l                                           ; $7d50: $b5
	ld   de, $1f11                                   ; $7d51: $11 $11 $1f
	rst  $38                                         ; $7d54: $ff
	add  sp, -$7b                                    ; $7d55: $e8 $85
	ld   de, $ff1f                                   ; $7d57: $11 $1f $ff
	ei                                               ; $7d5a: $fb
	ld   h, d                                        ; $7d5b: $62
	inc  d                                           ; $7d5c: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d5d: $cf
	rst  $38                                         ; $7d5e: $ff
	or   [hl]                                        ; $7d5f: $b6
	ld   de, $1f11                                   ; $7d60: $11 $11 $1f
	rst  $38                                         ; $7d63: $ff
	ld   a, [$1182]                                  ; $7d64: $fa $82 $11
	ccf                                              ; $7d67: $3f
	rst  $38                                         ; $7d68: $ff
	db   $fd                                         ; $7d69: $fd
	ld   h, c                                        ; $7d6a: $61
	inc  de                                          ; $7d6b: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d6c: $cf
	rst  $38                                         ; $7d6d: $ff
	sub  $11                                         ; $7d6e: $d6 $11
	ld   de, $ff1f                                   ; $7d70: $11 $1f $ff
	db   $fc                                         ; $7d73: $fc
	add  e                                           ; $7d74: $83
	ld   de, $ff1e                                   ; $7d75: $11 $1e $ff
	rst  $38                                         ; $7d78: $ff
	and  d                                           ; $7d79: $a2
	ld   de, $ff7f                                   ; $7d7a: $11 $7f $ff
	db   $fc                                         ; $7d7d: $fc
	ld   sp, $1111                                   ; $7d7e: $31 $11 $11
	rst  $38                                         ; $7d81: $ff
	rst  $38                                         ; $7d82: $ff
	rst  ToBoot                                         ; $7d83: $c7
	ld   de, rAUD1LEN                                   ; $7d84: $11 $11 $ff
	rst  $38                                         ; $7d87: $ff
	ld   sp, hl                                      ; $7d88: $f9
	ld   de, $ff18                                   ; $7d89: $11 $18 $ff
	rst  $38                                         ; $7d8c: $ff
	or   l                                           ; $7d8d: $b5
	ld   de, $1c11                                   ; $7d8e: $11 $11 $1c
	rst  $38                                         ; $7d91: $ff
	rst  $38                                         ; $7d92: $ff
	add  e                                           ; $7d93: $83
	ld   de, $ff1a                                   ; $7d94: $11 $1a $ff
	rst  $38                                         ; $7d97: $ff
	call nc, $3c11                                   ; $7d98: $d4 $11 $3c
	rst  $38                                         ; $7d9b: $ff
	rst  $38                                         ; $7d9c: $ff
	sub  d                                           ; $7d9d: $92
	ld   de, $1f11                                   ; $7d9e: $11 $11 $1f
	rst  $38                                         ; $7da1: $ff
	db   $fd                                         ; $7da2: $fd
	sub  h                                           ; $7da3: $94
	ld   de, $ff1b                                   ; $7da4: $11 $1b $ff
	rst  $38                                         ; $7da7: $ff
	or   h                                           ; $7da8: $b4
	ld   de, $ff5e                                   ; $7da9: $11 $5e $ff
	rst  $38                                         ; $7dac: $ff
	or   d                                           ; $7dad: $b2
	ld   de, $1611                                   ; $7dae: $11 $11 $16
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	cp   b                                           ; $7db3: $b8
	ld   sp, $ef13                                   ; $7db4: $31 $13 $ef
	rst  $38                                         ; $7db7: $ff
	ld   sp, hl                                      ; $7db8: $f9
	ld   b, c                                        ; $7db9: $41
	ld   a, [hl+]                                    ; $7dba: $2a
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	jp   hl                                          ; $7dbd: $e9


	ld   sp, $1111                                   ; $7dbe: $31 $11 $11
	cpl                                              ; $7dc1: $2f
	rst  $38                                         ; $7dc2: $ff
	rst  $38                                         ; $7dc3: $ff
	sub  $11                                         ; $7dc4: $d6 $11
	jr   @+$01                                       ; $7dc6: $18 $ff

	rst  $38                                         ; $7dc8: $ff
	ei                                               ; $7dc9: $fb
	ld   b, d                                        ; $7dca: $42
	ld   l, e                                        ; $7dcb: $6b
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	ld   sp, hl                                      ; $7dce: $f9
	ld   bc, $1111                                   ; $7dcf: $01 $11 $11
	ld   l, a                                        ; $7dd2: $6f
	rst  $38                                         ; $7dd3: $ff
	rst  $38                                         ; $7dd4: $ff
	or   $11                                         ; $7dd5: $f6 $11
	rla                                              ; $7dd7: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dd8: $cf
	rst  $38                                         ; $7dd9: $ff
	db   $fd                                         ; $7dda: $fd
	halt                                             ; $7ddb: $76
	sbc  h                                           ; $7ddc: $9c
	call z, $fcdf                                    ; $7ddd: $cc $df $fc
	ld   h, c                                        ; $7de0: $61
	ld   de, $1711                                   ; $7de1: $11 $11 $17
	rst  $38                                         ; $7de4: $ff
	rst  $38                                         ; $7de5: $ff
	rst  $38                                         ; $7de6: $ff
	and  c                                           ; $7de7: $a1
	ld   de, $ae47                                   ; $7de8: $11 $47 $ae
	rst  $38                                         ; $7deb: $ff
	db   $fc                                         ; $7dec: $fc
	xor  e                                           ; $7ded: $ab
	cp   c                                           ; $7dee: $b9
	adc  e                                           ; $7def: $8b
	rst  JumpTable                                         ; $7df0: $df
	ret  c                                           ; $7df1: $d8

	ld   h, e                                        ; $7df2: $63
	ld   de, $1a11                                   ; $7df3: $11 $11 $1a
	db   $fd                                         ; $7df6: $fd
	rst  $38                                         ; $7df7: $ff
	rst  $38                                         ; $7df8: $ff
	or   h                                           ; $7df9: $b4
	dec  [hl]                                        ; $7dfa: $35
	ld   h, l                                        ; $7dfb: $65
	ld   l, d                                        ; $7dfc: $6a
	sbc  $dc                                         ; $7dfd: $de $dc
	call $aada                                       ; $7dff: $cd $da $aa
	call Call_0cc_65b8                               ; $7e02: $cd $b8 $65
	ld   de, $1511                                   ; $7e05: $11 $11 $15
	xor  b                                           ; $7e08: $a8
	adc  h                                           ; $7e09: $8c
	rst  $38                                         ; $7e0a: $ff
	ld   a, [$b99a]                                  ; $7e0b: $fa $9a $b9
	ld   b, h                                        ; $7e0e: $44
	ld   a, d                                        ; $7e0f: $7a
	xor  b                                           ; $7e10: $a8
	adc  h                                           ; $7e11: $8c
	xor  $ca                                         ; $7e12: $ee $ca
	call $87db                                       ; $7e14: $cd $db $87
	ld   [hl], l                                     ; $7e17: $75
	ld   de, $2611                                   ; $7e18: $11 $11 $26
	ld   h, h                                        ; $7e1b: $64
	ld   c, b                                        ; $7e1c: $48
	call $ceca                                       ; $7e1d: $cd $ca $ce
	db   $db                                         ; $7e20: $db
	halt                                             ; $7e21: $76
	adc  d                                           ; $7e22: $8a
	adc  b                                           ; $7e23: $88
	adc  e                                           ; $7e24: $8b
	call z, $bcba                                    ; $7e25: $cc $ba $bc
	db   $db                                         ; $7e28: $db
	xor  c                                           ; $7e29: $a9
	xor  c                                           ; $7e2a: $a9
	ld   b, c                                        ; $7e2b: $41
	ld   de, $5313                                   ; $7e2c: $11 $13 $53
	inc  h                                           ; $7e2f: $24
	sbc  l                                           ; $7e30: $9d
	db   $db                                         ; $7e31: $db
	cp   l                                           ; $7e32: $bd
	db   $fd                                         ; $7e33: $fd
	sub  [hl]                                        ; $7e34: $96
	ld   a, d                                        ; $7e35: $7a
	and  a                                           ; $7e36: $a7
	ld   l, b                                        ; $7e37: $68
	cp   l                                           ; $7e38: $bd
	jp   c, $edac                                    ; $7e39: $da $ac $ed

	xor  c                                           ; $7e3c: $a9
	cp   d                                           ; $7e3d: $ba
	add  e                                           ; $7e3e: $83
	ld   de, $1411                                   ; $7e3f: $11 $11 $14
	inc  [hl]                                        ; $7e42: $34
	sbc  a                                           ; $7e43: $9f
	rst  $38                                         ; $7e44: $ff
	db   $fc                                         ; $7e45: $fc
	call $1293                                       ; $7e46: $cd $93 $12
	ld   l, d                                        ; $7e49: $6a
	xor  d                                           ; $7e4a: $aa
	cp   [hl]                                        ; $7e4b: $be
	cp   $cb                                         ; $7e4c: $fe $cb
	db   $dd                                         ; $7e4e: $dd
	cp   d                                           ; $7e4f: $ba
	xor  d                                           ; $7e50: $aa
	ret                                              ; $7e51: $c9


	ld   sp, $1111                                   ; $7e52: $31 $11 $11
	ld   l, c                                        ; $7e55: $69
	sbc  l                                           ; $7e56: $9d
	rst  $38                                         ; $7e57: $ff
	rst  $38                                         ; $7e58: $ff
	sub  a                                           ; $7e59: $97
	add  l                                           ; $7e5a: $85
	ld   de, $bd14                                   ; $7e5b: $11 $14 $bd
	rst  $38                                         ; $7e5e: $ff
	rst  $38                                         ; $7e5f: $ff
	ld   a, [$9988]                                  ; $7e60: $fa $88 $99
	sbc  e                                           ; $7e63: $9b
	sbc  $d9                                         ; $7e64: $de $d9
	ld   sp, $1111                                   ; $7e66: $31 $11 $11
	adc  l                                           ; $7e69: $8d
	rst  JumpTable                                         ; $7e6a: $df
	rst  $38                                         ; $7e6b: $ff
	db   $fd                                         ; $7e6c: $fd
	ld   sp, $1121                                   ; $7e6d: $31 $21 $11
	rla                                              ; $7e70: $17
	rst  $28                                         ; $7e71: $ef
	rst  $38                                         ; $7e72: $ff
	rst  $38                                         ; $7e73: $ff
	add  $56                                         ; $7e74: $c6 $56
	ld   h, [hl]                                     ; $7e76: $66
	adc  l                                           ; $7e77: $8d
	rst  $38                                         ; $7e78: $ff
	db   $fc                                         ; $7e79: $fc
	add  h                                           ; $7e7a: $84
	ld   de, $1c11                                   ; $7e7b: $11 $11 $1c
	rst  $38                                         ; $7e7e: $ff
	rst  $38                                         ; $7e7f: $ff
	rst  $38                                         ; $7e80: $ff
	sub  c                                           ; $7e81: $91
	ld   de, $1411                                   ; $7e82: $11 $11 $14
	rst  $38                                         ; $7e85: $ff
	rst  $38                                         ; $7e86: $ff
	rst  $38                                         ; $7e87: $ff
	or   $11                                         ; $7e88: $f6 $11
	ld   e, c                                        ; $7e8a: $59
	adc  c                                           ; $7e8b: $89
	rst  $28                                         ; $7e8c: $ef
	rst  $38                                         ; $7e8d: $ff
	sub  [hl]                                        ; $7e8e: $96
	ld   h, c                                        ; $7e8f: $61
	ld   de, $1f11                                   ; $7e90: $11 $11 $1f
	rst  $38                                         ; $7e93: $ff
	rst  $38                                         ; $7e94: $ff
	rst  $38                                         ; $7e95: $ff
	ld   de, $2211                                   ; $7e96: $11 $11 $22
	ld   c, h                                        ; $7e99: $4c
	rst  $38                                         ; $7e9a: $ff
	ei                                               ; $7e9b: $fb
	adc  d                                           ; $7e9c: $8a
	or   a                                           ; $7e9d: $b7
	ld   [de], a                                     ; $7e9e: $12
	xor  a                                           ; $7e9f: $af
	db   $fc                                         ; $7ea0: $fc
	adc  $ff                                         ; $7ea1: $ce $ff
	ld   h, l                                        ; $7ea3: $65
	sbc  c                                           ; $7ea4: $99
	ld   sp, $1611                                   ; $7ea5: $31 $11 $16
	rst  $38                                         ; $7ea8: $ff
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	add  c                                           ; $7eab: $81
	ld   de, $5a46                                   ; $7eac: $11 $46 $5a
	rst  $38                                         ; $7eaf: $ff
	db   $fc                                         ; $7eb0: $fc
	ld   d, l                                        ; $7eb1: $55
	halt                                             ; $7eb2: $76
	ld   e, d                                        ; $7eb3: $5a
	rst  JumpTable                                         ; $7eb4: $df
	rst  $38                                         ; $7eb5: $ff
	jp   z, $6a85                                    ; $7eb6: $ca $85 $6a

	sbc  $b6                                         ; $7eb9: $de $b6
	ld   de, $1f11                                   ; $7ebb: $11 $11 $1f
	rst  $38                                         ; $7ebe: $ff
	rst  $38                                         ; $7ebf: $ff
	rst  $38                                         ; $7ec0: $ff
	ld   de, $9711                                   ; $7ec1: $11 $11 $97
	ld   a, [hl]                                     ; $7ec4: $7e
	rst  $38                                         ; $7ec5: $ff
	or   $26                                         ; $7ec6: $f6 $26
	add  h                                           ; $7ec8: $84
	ld   e, e                                        ; $7ec9: $5b
	rst  $38                                         ; $7eca: $ff
	ei                                               ; $7ecb: $fb
	add  a                                           ; $7ecc: $87
	ld   h, l                                        ; $7ecd: $65
	ld   l, e                                        ; $7ece: $6b
	rst  $38                                         ; $7ecf: $ff
	rst  $10                                         ; $7ed0: $d7
	ld   de, $1f11                                   ; $7ed1: $11 $11 $1f
	rst  $38                                         ; $7ed4: $ff
	rst  $38                                         ; $7ed5: $ff
	rst  $38                                         ; $7ed6: $ff
	ld   de, $ba11                                   ; $7ed7: $11 $11 $ba
	xor  a                                           ; $7eda: $af
	rst  $38                                         ; $7edb: $ff
	db   $f4                                         ; $7edc: $f4
	ld   de, $1a42                                   ; $7edd: $11 $42 $1a
	rst  $38                                         ; $7ee0: $ff
	ei                                               ; $7ee1: $fb
	ld   d, [hl]                                     ; $7ee2: $56
	ld   d, d                                        ; $7ee3: $52
	ld   a, [de]                                     ; $7ee4: $1a
	rst  $38                                         ; $7ee5: $ff
	ld   a, [$1121]                                  ; $7ee6: $fa $21 $11
	ld   de, $ffff                                   ; $7ee9: $11 $ff $ff
	rst  $38                                         ; $7eec: $ff
	ld   [hl], c                                     ; $7eed: $71
	ld   de, $df5d                                   ; $7eee: $11 $5d $df
	rst  $38                                         ; $7ef1: $ff
	ld   hl, sp+$11                                  ; $7ef2: $f8 $11
	ld   [de], a                                     ; $7ef4: $12
	add  hl, hl                                      ; $7ef5: $29
	rst  $38                                         ; $7ef6: $ff
	rst  $38                                         ; $7ef7: $ff
	ld   [hl], h                                     ; $7ef8: $74
	ld   b, d                                        ; $7ef9: $42
	inc  d                                           ; $7efa: $14
	rst  $28                                         ; $7efb: $ef
	rst  $38                                         ; $7efc: $ff
	add  c                                           ; $7efd: $81
	ld   de, $1f11                                   ; $7efe: $11 $11 $1f
	rst  $38                                         ; $7f01: $ff
	rst  $38                                         ; $7f02: $ff
	jp   hl                                          ; $7f03: $e9


	ld   de, rAUD1LEN                                   ; $7f04: $11 $11 $ff
	rst  $38                                         ; $7f07: $ff
	rst  $38                                         ; $7f08: $ff
	or   c                                           ; $7f09: $b1
	ld   de, $9f27                                   ; $7f0a: $11 $27 $9f
	rst  $38                                         ; $7f0d: $ff
	or   $11                                         ; $7f0e: $f6 $11
	ld   de, $ff3a                                   ; $7f10: $11 $3a $ff
	ld   a, [$1111]                                  ; $7f13: $fa $11 $11
	ld   de, $ff2f                                   ; $7f16: $11 $2f $ff
	ld   sp, hl                                      ; $7f19: $f9
	ld   d, c                                        ; $7f1a: $51
	ld   de, $ff1f                                   ; $7f1b: $11 $1f $ff
	rst  $38                                         ; $7f1e: $ff
	ei                                               ; $7f1f: $fb
	ld   de, $cf11                                   ; $7f20: $11 $11 $cf
	rst  $38                                         ; $7f23: $ff
	rst  $38                                         ; $7f24: $ff
	sub  c                                           ; $7f25: $91
	ld   de, $df39                                   ; $7f26: $11 $39 $df
	rst  $38                                         ; $7f29: $ff
	ldh  a, [c]                                      ; $7f2a: $f2
	ld   de, $1111                                   ; $7f2b: $11 $11 $11
	rra                                              ; $7f2e: $1f
	rst  $38                                         ; $7f2f: $ff
	di                                               ; $7f30: $f3
	ld   de, $1b11                                   ; $7f31: $11 $11 $1b
	rst  $38                                         ; $7f34: $ff
	rst  $38                                         ; $7f35: $ff
	sub  h                                           ; $7f36: $94
	ld   de, rAUD1LEN                                   ; $7f37: $11 $11 $ff
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	ld   [hl], c                                     ; $7f3c: $71
	ld   de, $ff4d                                   ; $7f3d: $11 $4d $ff
	rst  $38                                         ; $7f40: $ff
	db   $e4                                         ; $7f41: $e4
	ld   de, $1111                                   ; $7f42: $11 $11 $11
	ld   de, $f8ff                                   ; $7f45: $11 $ff $f8
	ld   de, $1131                                   ; $7f48: $11 $31 $11
	rst  $38                                         ; $7f4b: $ff
	rst  $38                                         ; $7f4c: $ff
	ld   h, d                                        ; $7f4d: $62
	ld   de, $9f11                                   ; $7f4e: $11 $11 $9f
	rst  $38                                         ; $7f51: $ff
	db   $fd                                         ; $7f52: $fd
	add  c                                           ; $7f53: $81
	ld   de, $ff8f                                   ; $7f54: $11 $8f $ff
	rst  $28                                         ; $7f57: $ef
	rst  $30                                         ; $7f58: $f7
	ld   de, $c39f                                   ; $7f59: $11 $9f $c3
	ld   de, rAUD1LEN                                   ; $7f5c: $11 $11 $ff
	db   $fd                                         ; $7f5f: $fd
	ld   [hl+], a                                    ; $7f60: $22
	ld   sp, rAUD1LEN                                   ; $7f61: $31 $11 $ff
	rst  $38                                         ; $7f64: $ff
	ld   [hl], d                                     ; $7f65: $72
	ld   de, $af11                                   ; $7f66: $11 $11 $af
	rst  $38                                         ; $7f69: $ff
	ld   [$1151], a                                  ; $7f6a: $ea $51 $11
	xor  a                                           ; $7f6d: $af
	rst  $38                                         ; $7f6e: $ff
	db   $ec                                         ; $7f6f: $ec
	and  l                                           ; $7f70: $a5
	ld   [de], a                                     ; $7f71: $12
	xor  a                                           ; $7f72: $af
	ld   hl, sp+$11                                  ; $7f73: $f8 $11
	ld   de, $ffff                                   ; $7f75: $11 $ff $ff
	and  c                                           ; $7f78: $a1
	ld   de, $7f11                                   ; $7f79: $11 $11 $7f
	rst  $38                                         ; $7f7c: $ff
	call nz, $1111                                   ; $7f7d: $c4 $11 $11
	rra                                              ; $7f80: $1f
	rst  $38                                         ; $7f81: $ff
	ld   a, [$1151]                                  ; $7f82: $fa $51 $11
	jr   @+$01                                       ; $7f85: $18 $ff

	db   $fd                                         ; $7f87: $fd
	ld   b, c                                        ; $7f88: $41
	ld   de, $ff5c                                   ; $7f89: $11 $5c $ff
	pop  af                                          ; $7f8c: $f1
	ld   de, rAUD1LEN                                   ; $7f8d: $11 $11 $ff
	rst  $38                                         ; $7f90: $ff
	ld   sp, $1111                                   ; $7f91: $31 $11 $11
	rst  $38                                         ; $7f94: $ff
	rst  $38                                         ; $7f95: $ff
	and  c                                           ; $7f96: $a1
	ld   de, $cf11                                   ; $7f97: $11 $11 $cf
	rst  $38                                         ; $7f9a: $ff
	rst  $30                                         ; $7f9b: $f7
	ld   de, $1f11                                   ; $7f9c: $11 $11 $1f
	rst  $38                                         ; $7f9f: $ff
	ei                                               ; $7fa0: $fb
	ld   de, $7f11                                   ; $7fa1: $11 $11 $7f
	rst  $38                                         ; $7fa4: $ff
	pop  de                                          ; $7fa5: $d1
	ld   de, rAUD1LEN                                   ; $7fa6: $11 $11 $ff
	rst  $38                                         ; $7fa9: $ff
	add  c                                           ; $7faa: $81
	ld   de, $cf11                                   ; $7fab: $11 $11 $cf
	rst  $38                                         ; $7fae: $ff
	pop  de                                          ; $7faf: $d1
	ld   de, $6f11                                   ; $7fb0: $11 $11 $6f
	rst  $38                                         ; $7fb3: $ff
	push af                                          ; $7fb4: $f5
	ld   de, $1f11                                   ; $7fb5: $11 $11 $1f
	rst  $38                                         ; $7fb8: $ff
	rst  $38                                         ; $7fb9: $ff
	ld   de, $7f11                                   ; $7fba: $11 $11 $7f
	rst  $38                                         ; $7fbd: $ff
	db   $f4                                         ; $7fbe: $f4
	ld   de, $1f11                                   ; $7fbf: $11 $11 $1f
	rst  $38                                         ; $7fc2: $ff
	pop  af                                          ; $7fc3: $f1
	ld   de, $1f11                                   ; $7fc4: $11 $11 $1f
	rst  $38                                         ; $7fc7: $ff
	rst  $30                                         ; $7fc8: $f7
	ld   de, $1e11                                   ; $7fc9: $11 $11 $1e
	rst  $38                                         ; $7fcc: $ff
	cp   $11                                         ; $7fcd: $fe $11
	ld   de, $ff18                                   ; $7fcf: $11 $18 $ff
	rst  $38                                         ; $7fd2: $ff
	pop  de                                          ; $7fd3: $d1
	ld   de, $ff1a                                   ; $7fd4: $11 $1a $ff
	cp   $21                                         ; $7fd7: $fe $21
	ld   de, rAUD1LEN                                   ; $7fd9: $11 $11 $ff
	rst  $38                                         ; $7fdc: $ff
	ld   b, c                                        ; $7fdd: $41
	ld   de, $af11                                   ; $7fde: $11 $11 $af
	rst  $38                                         ; $7fe1: $ff
	pop  bc                                          ; $7fe2: $c1
	ld   de, $9f11                                   ; $7fe3: $11 $11 $9f
	rst  $38                                         ; $7fe6: $ff
	pop  af                                          ; $7fe7: $f1
	ld   de, $bf11                                   ; $7fe8: $11 $11 $bf
	rst  $38                                         ; $7feb: $ff
	or   $11                                         ; $7fec: $f6 $11
	inc  d                                           ; $7fee: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fef: $cf
	rst  $38                                         ; $7ff0: $ff
	di                                               ; $7ff1: $f3
	ld   de, $1111                                   ; $7ff2: $11 $11 $11
	rra                                              ; $7ff5: $1f
	rst  $38                                         ; $7ff6: $ff
	ld   hl, $a111                                   ; $7ff7: $21 $11 $a1
	ld   l, a                                        ; $7ffa: $6f
	rst  $38                                         ; $7ffb: $ff
	or   c                                           ; $7ffc: $b1
	ld   de, $df5c                                   ; $7ffd: $11 $5c $df
