; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0b0", ROMX[$4000], BANK[$b0]

	sbc  b                                           ; $4000: $98
	add  a                                           ; $4001: $87
	ld   [hl], a                                     ; $4002: $77
	sbc  b                                           ; $4003: $98
	sbc  b                                           ; $4004: $98
	ld   a, b                                        ; $4005: $78
	adc  b                                           ; $4006: $88
	sbc  b                                           ; $4007: $98
	adc  b                                           ; $4008: $88
	adc  b                                           ; $4009: $88
	add  a                                           ; $400a: $87
	ld   [hl], a                                     ; $400b: $77
	adc  b                                           ; $400c: $88
	adc  b                                           ; $400d: $88
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	add  a                                           ; $4010: $87
	ld   a, b                                        ; $4011: $78
	adc  b                                           ; $4012: $88
	add  a                                           ; $4013: $87
	adc  b                                           ; $4014: $88
	adc  c                                           ; $4015: $89
	adc  c                                           ; $4016: $89
	add  a                                           ; $4017: $87
	ld   a, b                                        ; $4018: $78
	adc  b                                           ; $4019: $88
	add  a                                           ; $401a: $87
	adc  b                                           ; $401b: $88
	sbc  c                                           ; $401c: $99
	add  a                                           ; $401d: $87
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	ld   [hl], a                                     ; $4020: $77
	ld   a, b                                        ; $4021: $78
	adc  c                                           ; $4022: $89
	add  a                                           ; $4023: $87
	ld   a, b                                        ; $4024: $78
	adc  b                                           ; $4025: $88
	ld   a, b                                        ; $4026: $78
	adc  b                                           ; $4027: $88
	sbc  b                                           ; $4028: $98
	add  a                                           ; $4029: $87
	ld   [hl], a                                     ; $402a: $77
	adc  b                                           ; $402b: $88
	add  a                                           ; $402c: $87
	ld   [hl], a                                     ; $402d: $77
	adc  c                                           ; $402e: $89
	adc  b                                           ; $402f: $88
	ld   [hl], a                                     ; $4030: $77
	adc  b                                           ; $4031: $88
	add  a                                           ; $4032: $87
	ld   a, b                                        ; $4033: $78
	adc  c                                           ; $4034: $89
	adc  b                                           ; $4035: $88
	ld   [hl], a                                     ; $4036: $77
	adc  c                                           ; $4037: $89
	adc  b                                           ; $4038: $88
	ld   [hl], a                                     ; $4039: $77
	adc  c                                           ; $403a: $89
	adc  b                                           ; $403b: $88
	ld   a, b                                        ; $403c: $78
	ld   a, c                                        ; $403d: $79
	sub  a                                           ; $403e: $97
	ld   [hl], a                                     ; $403f: $77
	adc  c                                           ; $4040: $89
	adc  b                                           ; $4041: $88
	ld   [hl], a                                     ; $4042: $77
	ld   a, b                                        ; $4043: $78
	adc  b                                           ; $4044: $88
	ld   [hl], a                                     ; $4045: $77
	adc  b                                           ; $4046: $88
	adc  c                                           ; $4047: $89
	adc  b                                           ; $4048: $88
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	adc  b                                           ; $404b: $88
	adc  b                                           ; $404c: $88
	sbc  c                                           ; $404d: $99
	add  a                                           ; $404e: $87
	ld   a, b                                        ; $404f: $78
	adc  b                                           ; $4050: $88
	sub  a                                           ; $4051: $97
	ld   h, a                                        ; $4052: $67
	adc  b                                           ; $4053: $88
	add  a                                           ; $4054: $87
	ld   [hl], a                                     ; $4055: $77
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	ld   a, b                                        ; $4058: $78
	sbc  b                                           ; $4059: $98
	sbc  b                                           ; $405a: $98
	ld   [hl], a                                     ; $405b: $77
	adc  b                                           ; $405c: $88
	sbc  b                                           ; $405d: $98
	add  a                                           ; $405e: $87
	ld   a, b                                        ; $405f: $78
	sbc  b                                           ; $4060: $98
	ld   [hl], a                                     ; $4061: $77
	adc  b                                           ; $4062: $88
	adc  b                                           ; $4063: $88
	ld   [hl], a                                     ; $4064: $77
	adc  b                                           ; $4065: $88
	adc  c                                           ; $4066: $89
	adc  b                                           ; $4067: $88
	ld   a, b                                        ; $4068: $78
	adc  b                                           ; $4069: $88
	adc  b                                           ; $406a: $88
	add  a                                           ; $406b: $87
	adc  b                                           ; $406c: $88
	adc  c                                           ; $406d: $89
	adc  b                                           ; $406e: $88
	ld   a, b                                        ; $406f: $78
	adc  c                                           ; $4070: $89
	adc  b                                           ; $4071: $88
	ld   a, b                                        ; $4072: $78
	sbc  c                                           ; $4073: $99
	sub  a                                           ; $4074: $97
	ld   [hl], a                                     ; $4075: $77
	sbc  c                                           ; $4076: $99
	adc  b                                           ; $4077: $88
	ld   a, b                                        ; $4078: $78
	adc  c                                           ; $4079: $89
	sbc  b                                           ; $407a: $98
	ld   [hl], a                                     ; $407b: $77
	adc  c                                           ; $407c: $89
	adc  c                                           ; $407d: $89
	add  a                                           ; $407e: $87
	ld   a, b                                        ; $407f: $78
	sbc  c                                           ; $4080: $99
	ld   [hl], a                                     ; $4081: $77
	adc  b                                           ; $4082: $88
	sbc  b                                           ; $4083: $98
	ld   [hl], a                                     ; $4084: $77
	adc  b                                           ; $4085: $88
	adc  b                                           ; $4086: $88
	adc  b                                           ; $4087: $88
	adc  b                                           ; $4088: $88
	ld   a, c                                        ; $4089: $79
	sbc  b                                           ; $408a: $98
	ld   a, c                                        ; $408b: $79
	ld   a, b                                        ; $408c: $78
	sbc  b                                           ; $408d: $98
	ld   a, b                                        ; $408e: $78
	adc  b                                           ; $408f: $88
	adc  b                                           ; $4090: $88
	ld   a, b                                        ; $4091: $78
	sbc  b                                           ; $4092: $98
	adc  b                                           ; $4093: $88
	ld   a, b                                        ; $4094: $78
	sbc  b                                           ; $4095: $98
	adc  b                                           ; $4096: $88
	ld   a, c                                        ; $4097: $79
	sbc  b                                           ; $4098: $98
	sbc  b                                           ; $4099: $98
	ld   [hl], a                                     ; $409a: $77
	ld   a, b                                        ; $409b: $78
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	adc  b                                           ; $409f: $88
	add  a                                           ; $40a0: $87
	ld   a, b                                        ; $40a1: $78
	sbc  c                                           ; $40a2: $99
	add  a                                           ; $40a3: $87
	ld   a, b                                        ; $40a4: $78
	adc  b                                           ; $40a5: $88
	sbc  b                                           ; $40a6: $98
	ld   a, b                                        ; $40a7: $78
	adc  c                                           ; $40a8: $89
	add  a                                           ; $40a9: $87
	ld   a, b                                        ; $40aa: $78
	sbc  b                                           ; $40ab: $98
	ld   [hl], a                                     ; $40ac: $77
	ld   a, b                                        ; $40ad: $78
	adc  b                                           ; $40ae: $88
	add  a                                           ; $40af: $87
	adc  b                                           ; $40b0: $88
	sbc  b                                           ; $40b1: $98
	adc  b                                           ; $40b2: $88
	adc  b                                           ; $40b3: $88
	adc  b                                           ; $40b4: $88
	add  a                                           ; $40b5: $87
	ld   a, b                                        ; $40b6: $78
	adc  b                                           ; $40b7: $88
	adc  b                                           ; $40b8: $88
	adc  b                                           ; $40b9: $88
	sbc  c                                           ; $40ba: $99
	adc  b                                           ; $40bb: $88
	adc  b                                           ; $40bc: $88
	adc  c                                           ; $40bd: $89
	add  a                                           ; $40be: $87
	ld   a, b                                        ; $40bf: $78
	adc  c                                           ; $40c0: $89
	adc  b                                           ; $40c1: $88
	add  a                                           ; $40c2: $87
	adc  c                                           ; $40c3: $89
	adc  b                                           ; $40c4: $88
	ld   a, b                                        ; $40c5: $78
	adc  c                                           ; $40c6: $89
	add  a                                           ; $40c7: $87
	ld   a, b                                        ; $40c8: $78
	adc  b                                           ; $40c9: $88
	sbc  b                                           ; $40ca: $98
	add  a                                           ; $40cb: $87
	ld   a, b                                        ; $40cc: $78
	adc  c                                           ; $40cd: $89
	sub  a                                           ; $40ce: $97
	ld   a, b                                        ; $40cf: $78
	adc  c                                           ; $40d0: $89
	add  a                                           ; $40d1: $87
	ld   a, b                                        ; $40d2: $78
	adc  c                                           ; $40d3: $89
	add  a                                           ; $40d4: $87
	adc  c                                           ; $40d5: $89
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
	sbc  c                                           ; $40e7: $99
	add  a                                           ; $40e8: $87
	adc  c                                           ; $40e9: $89
	sbc  b                                           ; $40ea: $98
	ld   [hl], a                                     ; $40eb: $77
	sbc  c                                           ; $40ec: $99
	add  a                                           ; $40ed: $87
	ld   a, c                                        ; $40ee: $79
	adc  b                                           ; $40ef: $88
	add  a                                           ; $40f0: $87
	ld   a, b                                        ; $40f1: $78
	sbc  c                                           ; $40f2: $99
	ld   [hl], a                                     ; $40f3: $77
	adc  c                                           ; $40f4: $89
	sbc  b                                           ; $40f5: $98
	ld   [hl], a                                     ; $40f6: $77
	adc  c                                           ; $40f7: $89
	adc  b                                           ; $40f8: $88
	adc  b                                           ; $40f9: $88
	adc  c                                           ; $40fa: $89
	adc  b                                           ; $40fb: $88
	ld   a, b                                        ; $40fc: $78
	sbc  b                                           ; $40fd: $98
	adc  b                                           ; $40fe: $88
	add  a                                           ; $40ff: $87
	adc  b                                           ; $4100: $88
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	adc  b                                           ; $4103: $88
	add  a                                           ; $4104: $87
	adc  b                                           ; $4105: $88
	adc  c                                           ; $4106: $89
	adc  b                                           ; $4107: $88
	ld   a, b                                        ; $4108: $78
	adc  b                                           ; $4109: $88
	sbc  b                                           ; $410a: $98
	ld   a, b                                        ; $410b: $78
	adc  c                                           ; $410c: $89
	sbc  b                                           ; $410d: $98
	add  a                                           ; $410e: $87
	adc  c                                           ; $410f: $89
	adc  b                                           ; $4110: $88
	adc  b                                           ; $4111: $88
	adc  b                                           ; $4112: $88
	adc  b                                           ; $4113: $88
	adc  b                                           ; $4114: $88
	add  a                                           ; $4115: $87
	adc  b                                           ; $4116: $88
	adc  b                                           ; $4117: $88
	adc  b                                           ; $4118: $88
	ld   a, b                                        ; $4119: $78
	sbc  b                                           ; $411a: $98
	adc  b                                           ; $411b: $88
	adc  c                                           ; $411c: $89
	adc  b                                           ; $411d: $88
	adc  b                                           ; $411e: $88
	adc  b                                           ; $411f: $88
	adc  b                                           ; $4120: $88
	adc  b                                           ; $4121: $88
	adc  b                                           ; $4122: $88
	adc  b                                           ; $4123: $88
	adc  b                                           ; $4124: $88
	add  a                                           ; $4125: $87
	adc  c                                           ; $4126: $89
	sbc  b                                           ; $4127: $98
	add  a                                           ; $4128: $87
	adc  b                                           ; $4129: $88
	adc  b                                           ; $412a: $88
	sbc  b                                           ; $412b: $98
	add  a                                           ; $412c: $87
	adc  b                                           ; $412d: $88
	sbc  b                                           ; $412e: $98
	ld   [hl], a                                     ; $412f: $77
	adc  b                                           ; $4130: $88
	sbc  b                                           ; $4131: $98
	ld   [hl], a                                     ; $4132: $77
	adc  c                                           ; $4133: $89
	adc  b                                           ; $4134: $88
	ld   [hl], a                                     ; $4135: $77
	adc  c                                           ; $4136: $89
	adc  b                                           ; $4137: $88
	ld   a, b                                        ; $4138: $78
	sbc  b                                           ; $4139: $98
	adc  b                                           ; $413a: $88
	adc  b                                           ; $413b: $88
	adc  c                                           ; $413c: $89
	add  a                                           ; $413d: $87
	adc  b                                           ; $413e: $88
	adc  b                                           ; $413f: $88
	add  a                                           ; $4140: $87
	adc  b                                           ; $4141: $88
	adc  c                                           ; $4142: $89
	adc  b                                           ; $4143: $88
	add  a                                           ; $4144: $87
	adc  b                                           ; $4145: $88
	adc  b                                           ; $4146: $88
	adc  b                                           ; $4147: $88
	adc  b                                           ; $4148: $88
	adc  b                                           ; $4149: $88
	adc  b                                           ; $414a: $88
	adc  b                                           ; $414b: $88
	adc  b                                           ; $414c: $88
	ld   a, b                                        ; $414d: $78
	adc  b                                           ; $414e: $88
	adc  b                                           ; $414f: $88
	adc  b                                           ; $4150: $88
	adc  c                                           ; $4151: $89
	adc  b                                           ; $4152: $88
	adc  b                                           ; $4153: $88
	adc  c                                           ; $4154: $89
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
	ld   a, b                                        ; $4161: $78
	adc  c                                           ; $4162: $89
	add  a                                           ; $4163: $87
	adc  b                                           ; $4164: $88
	sbc  b                                           ; $4165: $98
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
	sbc  b                                           ; $4170: $98
	ld   a, b                                        ; $4171: $78
	adc  c                                           ; $4172: $89
	adc  b                                           ; $4173: $88
	ld   a, b                                        ; $4174: $78
	adc  c                                           ; $4175: $89
	add  a                                           ; $4176: $87
	adc  b                                           ; $4177: $88
	adc  b                                           ; $4178: $88
	ld   [hl], a                                     ; $4179: $77
	adc  c                                           ; $417a: $89
	sbc  b                                           ; $417b: $98
	adc  b                                           ; $417c: $88
	adc  b                                           ; $417d: $88
	adc  b                                           ; $417e: $88
	adc  b                                           ; $417f: $88
	add  a                                           ; $4180: $87
	ld   a, b                                        ; $4181: $78
	sbc  b                                           ; $4182: $98
	adc  b                                           ; $4183: $88
	adc  b                                           ; $4184: $88
	sbc  c                                           ; $4185: $99
	adc  b                                           ; $4186: $88
	adc  c                                           ; $4187: $89
	add  a                                           ; $4188: $87
	ld   a, b                                        ; $4189: $78
	adc  c                                           ; $418a: $89
	adc  b                                           ; $418b: $88
	ld   a, b                                        ; $418c: $78
	sbc  c                                           ; $418d: $99
	adc  b                                           ; $418e: $88
	adc  b                                           ; $418f: $88
	adc  b                                           ; $4190: $88
	ld   [hl], a                                     ; $4191: $77
	adc  b                                           ; $4192: $88
	sbc  b                                           ; $4193: $98
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
	sbc  b                                           ; $41a2: $98
	adc  b                                           ; $41a3: $88
	adc  b                                           ; $41a4: $88
	sbc  c                                           ; $41a5: $99
	adc  b                                           ; $41a6: $88

Call_0b0_41a7:
	adc  b                                           ; $41a7: $88
	adc  b                                           ; $41a8: $88
	adc  b                                           ; $41a9: $88
	ld   [hl], a                                     ; $41aa: $77
	ld   a, b                                        ; $41ab: $78
	sbc  b                                           ; $41ac: $98
	add  a                                           ; $41ad: $87
	adc  b                                           ; $41ae: $88
	sbc  b                                           ; $41af: $98
	adc  b                                           ; $41b0: $88
	adc  b                                           ; $41b1: $88
	sbc  b                                           ; $41b2: $98
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	adc  b                                           ; $41b5: $88
	adc  b                                           ; $41b6: $88
	adc  b                                           ; $41b7: $88
	adc  c                                           ; $41b8: $89
	adc  b                                           ; $41b9: $88
	adc  b                                           ; $41ba: $88
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	add  a                                           ; $41bd: $87
	adc  b                                           ; $41be: $88
	adc  b                                           ; $41bf: $88
	add  a                                           ; $41c0: $87
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
	sbc  b                                           ; $41d4: $98
	add  a                                           ; $41d5: $87
	adc  c                                           ; $41d6: $89
	sbc  b                                           ; $41d7: $98
	adc  b                                           ; $41d8: $88
	adc  c                                           ; $41d9: $89
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
	adc  c                                           ; $41e6: $89
	adc  b                                           ; $41e7: $88
	adc  b                                           ; $41e8: $88
	sbc  b                                           ; $41e9: $98
	adc  b                                           ; $41ea: $88
	adc  c                                           ; $41eb: $89
	adc  b                                           ; $41ec: $88
	adc  b                                           ; $41ed: $88
	adc  b                                           ; $41ee: $88
	adc  b                                           ; $41ef: $88
	adc  b                                           ; $41f0: $88
	adc  b                                           ; $41f1: $88
	adc  b                                           ; $41f2: $88
	sbc  b                                           ; $41f3: $98
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
	sbc  b                                           ; $41ff: $98
	adc  b                                           ; $4200: $88
	adc  b                                           ; $4201: $88
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  c                                           ; $4204: $89
	adc  b                                           ; $4205: $88
	ld   a, b                                        ; $4206: $78
	adc  c                                           ; $4207: $89
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
	adc  c                                           ; $4214: $89
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
	adc  c                                           ; $4217: $89
	sbc  b                                           ; $4218: $98
	adc  b                                           ; $4219: $88
	adc  b                                           ; $421a: $88
	sbc  c                                           ; $421b: $99
	adc  b                                           ; $421c: $88
	adc  c                                           ; $421d: $89
	adc  b                                           ; $421e: $88
	adc  b                                           ; $421f: $88
	adc  b                                           ; $4220: $88
	adc  b                                           ; $4221: $88
	adc  b                                           ; $4222: $88
	adc  b                                           ; $4223: $88
	adc  b                                           ; $4224: $88
	adc  b                                           ; $4225: $88
	adc  b                                           ; $4226: $88
	adc  c                                           ; $4227: $89
	adc  b                                           ; $4228: $88
	adc  b                                           ; $4229: $88
	sbc  c                                           ; $422a: $99
	adc  b                                           ; $422b: $88
	adc  b                                           ; $422c: $88
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  b                                           ; $4230: $88
	adc  b                                           ; $4231: $88
	adc  b                                           ; $4232: $88
	adc  b                                           ; $4233: $88
	adc  c                                           ; $4234: $89
	adc  b                                           ; $4235: $88
	adc  b                                           ; $4236: $88
	adc  b                                           ; $4237: $88
	adc  b                                           ; $4238: $88
	adc  b                                           ; $4239: $88
	sbc  b                                           ; $423a: $98
	adc  b                                           ; $423b: $88
	adc  c                                           ; $423c: $89
	adc  b                                           ; $423d: $88
	adc  b                                           ; $423e: $88
	sbc  b                                           ; $423f: $98
	adc  b                                           ; $4240: $88
	adc  c                                           ; $4241: $89
	sbc  b                                           ; $4242: $98
	adc  b                                           ; $4243: $88
	adc  c                                           ; $4244: $89
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
	adc  c                                           ; $4257: $89
	adc  b                                           ; $4258: $88
	adc  b                                           ; $4259: $88
	sbc  b                                           ; $425a: $98
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
	adc  c                                           ; $4274: $89
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
	ld   de, $1111                                   ; $42ce: $11 $11 $11
	ld   de, $1111                                   ; $42d1: $11 $11 $11
	ld   de, $1111                                   ; $42d4: $11 $11 $11
	ld   de, $1111                                   ; $42d7: $11 $11 $11
	ld   de, $1111                                   ; $42da: $11 $11 $11
	ld   de, $1111                                   ; $42dd: $11 $11 $11
	ld   de, $1111                                   ; $42e0: $11 $11 $11
	ld   de, $1111                                   ; $42e3: $11 $11 $11
	ld   de, $1111                                   ; $42e6: $11 $11 $11
	ld   de, $1111                                   ; $42e9: $11 $11 $11
	ld   de, $1111                                   ; $42ec: $11 $11 $11
	ld   de, $1111                                   ; $42ef: $11 $11 $11
	ld   de, $1111                                   ; $42f2: $11 $11 $11
	ld   de, $1111                                   ; $42f5: $11 $11 $11
	ld   de, $1111                                   ; $42f8: $11 $11 $11
	ld   de, $1111                                   ; $42fb: $11 $11 $11
	ld   de, $1111                                   ; $42fe: $11 $11 $11
	ld   de, $1111                                   ; $4301: $11 $11 $11
	ld   de, $0011                                   ; $4304: $11 $11 $00
	ld   c, b                                        ; $4307: $48
	ld   de, $1111                                   ; $4308: $11 $11 $11
	ld   de, $1111                                   ; $430b: $11 $11 $11
	ld   de, $1111                                   ; $430e: $11 $11 $11
	ld   de, $5413                                   ; $4311: $11 $13 $54
	ld   d, h                                        ; $4314: $54
	ld   d, h                                        ; $4315: $54
	ld   b, c                                        ; $4316: $41
	rra                                              ; $4317: $1f
	rst  $38                                         ; $4318: $ff
	pop  af                                          ; $4319: $f1
	ld   de, $1711                                   ; $431a: $11 $11 $17
	sub  c                                           ; $431d: $91
	ld   de, $de1c                                   ; $431e: $11 $1c $de
	call z, $d1de                                    ; $4321: $cc $de $d1
	ld   de, $1111                                   ; $4324: $11 $11 $11
	ld   de, $1111                                   ; $4327: $11 $11 $11
	ld   de, $1111                                   ; $432a: $11 $11 $11
	ld   de, $1111                                   ; $432d: $11 $11 $11
	ld   de, $5411                                   ; $4330: $11 $11 $54
	ld   b, h                                        ; $4333: $44
	add  a                                           ; $4334: $87
	ld   de, $5454                                   ; $4335: $11 $54 $54
	ld   h, a                                        ; $4338: $67
	ld   [hl], d                                     ; $4339: $72
	ld   de, $1111                                   ; $433a: $11 $11 $11
	ld   de, $1112                                   ; $433d: $11 $12 $11
	ld   [de], a                                     ; $4340: $12
	ld   de, $1111                                   ; $4341: $11 $11 $11
	ld   h, [hl]                                     ; $4344: $66
	halt                                             ; $4345: $76
	ld   d, a                                        ; $4346: $57
	ld   de, $8888                                   ; $4347: $11 $88 $88
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
	adc  c                                           ; $4355: $89
	adc  b                                           ; $4356: $88
	adc  b                                           ; $4357: $88
	ld   a, b                                        ; $4358: $78
	adc  b                                           ; $4359: $88
	adc  b                                           ; $435a: $88
	adc  b                                           ; $435b: $88
	adc  b                                           ; $435c: $88
	adc  b                                           ; $435d: $88
	add  a                                           ; $435e: $87
	adc  b                                           ; $435f: $88
	ld   a, b                                        ; $4360: $78
	ld   a, b                                        ; $4361: $78
	adc  b                                           ; $4362: $88
	adc  b                                           ; $4363: $88
	adc  b                                           ; $4364: $88
	adc  b                                           ; $4365: $88
	sbc  b                                           ; $4366: $98
	sbc  b                                           ; $4367: $98
	sbc  b                                           ; $4368: $98
	sbc  b                                           ; $4369: $98
	adc  c                                           ; $436a: $89
	sbc  c                                           ; $436b: $99
	adc  b                                           ; $436c: $88
	adc  b                                           ; $436d: $88
	adc  b                                           ; $436e: $88
	add  a                                           ; $436f: $87
	add  a                                           ; $4370: $87
	sub  a                                           ; $4371: $97
	add  a                                           ; $4372: $87
	ld   a, b                                        ; $4373: $78
	ld   a, c                                        ; $4374: $79
	ld   a, c                                        ; $4375: $79
	ld   a, b                                        ; $4376: $78
	adc  b                                           ; $4377: $88
	add  a                                           ; $4378: $87
	ld   [hl], a                                     ; $4379: $77
	add  a                                           ; $437a: $87
	add  a                                           ; $437b: $87
	adc  b                                           ; $437c: $88
	ld   a, b                                        ; $437d: $78
	adc  b                                           ; $437e: $88
	adc  c                                           ; $437f: $89
	adc  b                                           ; $4380: $88
	adc  c                                           ; $4381: $89
	sbc  c                                           ; $4382: $99
	adc  c                                           ; $4383: $89
	sbc  b                                           ; $4384: $98
	adc  c                                           ; $4385: $89
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
	adc  b                                           ; $438b: $88
	adc  b                                           ; $438c: $88
	ld   a, b                                        ; $438d: $78
	ld   [hl], a                                     ; $438e: $77
	ld   [hl], a                                     ; $438f: $77
	ld   [hl], a                                     ; $4390: $77
	halt                                             ; $4391: $76
	halt                                             ; $4392: $76
	ld   h, [hl]                                     ; $4393: $66
	ld   d, [hl]                                     ; $4394: $56
	ld   d, [hl]                                     ; $4395: $56
	halt                                             ; $4396: $76
	ld   h, a                                        ; $4397: $67
	ld   a, c                                        ; $4398: $79
	adc  c                                           ; $4399: $89
	xor  c                                           ; $439a: $a9
	cp   d                                           ; $439b: $ba
	cp   e                                           ; $439c: $bb
	cp   e                                           ; $439d: $bb
	cp   h                                           ; $439e: $bc
	xor  d                                           ; $439f: $aa
	cp   e                                           ; $43a0: $bb
	cp   c                                           ; $43a1: $b9
	sbc  c                                           ; $43a2: $99
	sbc  c                                           ; $43a3: $99
	adc  b                                           ; $43a4: $88
	ld   a, c                                        ; $43a5: $79
	ld   d, l                                        ; $43a6: $55
	ld   d, e                                        ; $43a7: $53
	ld   b, c                                        ; $43a8: $41
	ld   b, [hl]                                     ; $43a9: $46
	ld   de, $4435                                   ; $43aa: $11 $35 $44
	ld   d, [hl]                                     ; $43ad: $56
	adc  d                                           ; $43ae: $8a
	xor  c                                           ; $43af: $a9
	sbc  l                                           ; $43b0: $9d
	call c, $daad                                    ; $43b1: $dc $ad $da
	jp   c, $cbcd                                    ; $43b4: $da $cd $cb

	xor  [hl]                                        ; $43b7: $ae
	xor  e                                           ; $43b8: $ab
	sbc  c                                           ; $43b9: $99
	sbc  c                                           ; $43ba: $99
	sub  [hl]                                        ; $43bb: $96
	ld   h, [hl]                                     ; $43bc: $66
	ld   d, d                                        ; $43bd: $52
	ld   de, $6111                                   ; $43be: $11 $11 $61
	ld   de, $2636                                   ; $43c1: $11 $36 $26
	ld   l, c                                        ; $43c4: $69
	db   $dd                                         ; $43c5: $dd
	call $dcff                                       ; $43c6: $cd $ff $dc
	rst  $38                                         ; $43c9: $ff
	cp   h                                           ; $43ca: $bc
	xor  h                                           ; $43cb: $ac
	call c, $db99                                    ; $43cc: $dc $99 $db
	xor  c                                           ; $43cf: $a9
	sub  a                                           ; $43d0: $97
	ld   [hl], l                                     ; $43d1: $75
	ld   hl, $1111                                   ; $43d2: $21 $11 $11
	ld   h, c                                        ; $43d5: $61
	ld   de, $6856                                   ; $43d6: $11 $56 $68
	adc  a                                           ; $43d9: $8f
	rst  $38                                         ; $43da: $ff
	cp   a                                           ; $43db: $bf
	rst  $38                                         ; $43dc: $ff
	xor  e                                           ; $43dd: $ab
	res  7, c                                        ; $43de: $cb $b9
	ld   e, c                                        ; $43e0: $59
	db   $dd                                         ; $43e1: $dd
	ld   e, c                                        ; $43e2: $59
	ei                                               ; $43e3: $fb
	and  [hl]                                        ; $43e4: $a6
	ld   d, [hl]                                     ; $43e5: $56
	ld   d, c                                        ; $43e6: $51
	ld   de, $1116                                   ; $43e7: $11 $16 $11
	ld   d, $db                                      ; $43ea: $16 $db
	xor  $ff                                         ; $43ec: $ee $ff
	rst  $38                                         ; $43ee: $ff
	rst  $38                                         ; $43ef: $ff
	ld   hl, sp+$57                                  ; $43f0: $f8 $57
	ld   h, e                                        ; $43f2: $63
	ld   bc, $a679                                   ; $43f3: $01 $79 $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f6: $cf
	db   $ec                                         ; $43f7: $ec
	xor  c                                           ; $43f8: $a9
	ld   hl, $1411                                   ; $43f9: $21 $11 $14
	ld   de, $fe1f                                   ; $43fc: $11 $1f $fe
	rst  $38                                         ; $43ff: $ff
	rst  $38                                         ; $4400: $ff
	cp   $ff                                         ; $4401: $fe $ff
	ld   d, c                                        ; $4403: $51
	ld   de, $1111                                   ; $4404: $11 $11 $11
	sbc  a                                           ; $4407: $9f
	db   $eb                                         ; $4408: $eb
	rst  $38                                         ; $4409: $ff
	rst  $38                                         ; $440a: $ff
	cp   $73                                         ; $440b: $fe $73
	ld   de, $1211                                   ; $440d: $11 $11 $12
	ld   de, $ffff                                   ; $4410: $11 $ff $ff
	rst  $38                                         ; $4413: $ff
	rst  $38                                         ; $4414: $ff
	sub  d                                           ; $4415: $92
	ld   hl, $1111                                   ; $4416: $21 $11 $11
	scf                                              ; $4419: $37
	ld   e, e                                        ; $441a: $5b
	rst  $38                                         ; $441b: $ff
	rst  $38                                         ; $441c: $ff
	rst  $38                                         ; $441d: $ff
	ld   hl, sp+$11                                  ; $441e: $f8 $11
	ld   de, $1111                                   ; $4420: $11 $11 $11
	ld   de, $7eff                                   ; $4423: $11 $ff $7e
	rst  $38                                         ; $4426: $ff
	rst  $38                                         ; $4427: $ff
	ld   a, e                                        ; $4428: $7b
	di                                               ; $4429: $f3
	ld   de, $1111                                   ; $442a: $11 $11 $11
	ccf                                              ; $442d: $3f
	rst  $38                                         ; $442e: $ff
	rst  $38                                         ; $442f: $ff
	rst  $38                                         ; $4430: $ff
	sub  c                                           ; $4431: $91
	ld   de, $1111                                   ; $4432: $11 $11 $11
	and  a                                           ; $4435: $a7
	ld   a, [hl-]                                    ; $4436: $3a
	rst  $38                                         ; $4437: $ff
	sub  c                                           ; $4438: $91
	ld   de, $11fe                                   ; $4439: $11 $fe $11
	rst  $38                                         ; $443c: $ff
	or   $bf                                         ; $443d: $f6 $bf
	ei                                               ; $443f: $fb
	ld   [de], a                                     ; $4440: $12
	reti                                             ; $4441: $d9


	ld   de, $fc1c                                   ; $4442: $11 $1c $fc
	ld   c, a                                        ; $4445: $4f
	rst  $38                                         ; $4446: $ff
	sub  [hl]                                        ; $4447: $96
	sub  [hl]                                        ; $4448: $96
	add  c                                           ; $4449: $81
	ld   de, $1247                                   ; $444a: $11 $47 $12
	ld   e, d                                        ; $444d: $5a
	add  c                                           ; $444e: $81
	ld   de, $11ff                                   ; $444f: $11 $ff $11
	rst  $38                                         ; $4452: $ff

jr_0b0_4453:
	push af                                          ; $4453: $f5
	jr   jr_0b0_4453                                 ; $4454: $18 $fd

	ld   de, $d9af                                   ; $4456: $11 $af $d9
	add  hl, de                                      ; $4459: $19
	rst  $38                                         ; $445a: $ff
	ld   hl, $c1ff                                   ; $445b: $21 $ff $c1
	ld   de, $11bf                                   ; $445e: $11 $bf $11
	ld   a, $93                                      ; $4461: $3e $93
	ld   d, [hl]                                     ; $4463: $56
	ld   [hl], a                                     ; $4464: $77
	ld   de, rAUD1LEN                                   ; $4465: $11 $11 $ff
	ld   de, $f1ff                                   ; $4468: $11 $ff $f1
	ld   [de], a                                     ; $446b: $12
	ld   a, [$5d21]                                  ; $446c: $fa $21 $5d
	rst  $38                                         ; $446f: $ff
	inc  de                                          ; $4470: $13
	rst  $38                                         ; $4471: $ff
	ld   de, $e5af                                   ; $4472: $11 $af $e5
	ld   sp, $91bf                                   ; $4475: $31 $bf $91
	ld   d, $8a                                      ; $4478: $16 $8a
	ld   h, d                                        ; $447a: $62
	ld   e, b                                        ; $447b: $58
	ld   h, e                                        ; $447c: $63
	ld   de, $f91f                                   ; $447d: $11 $1f $f9
	rla                                              ; $4480: $17
	rst  $38                                         ; $4481: $ff
	ld   h, c                                        ; $4482: $61
	dec  d                                           ; $4483: $15
	ld   a, [$9f52]                                  ; $4484: $fa $52 $9f
	rst  $30                                         ; $4487: $f7
	dec  d                                           ; $4488: $15
	ld   hl, sp+$17                                  ; $4489: $f8 $17
	db   $fd                                         ; $448b: $fd
	cp   d                                           ; $448c: $ba
	ld   de, $31ac                                   ; $448d: $11 $ac $31
	scf                                              ; $4490: $37
	xor  c                                           ; $4491: $a9
	ld   l, c                                        ; $4492: $69
	ld   [$1121], a                                  ; $4493: $ea $21 $11
	rst  $38                                         ; $4496: $ff
	pop  hl                                          ; $4497: $e1
	rra                                              ; $4498: $1f
	ld   hl, sp+$11                                  ; $4499: $f8 $11
	rra                                              ; $449b: $1f
	ei                                               ; $449c: $fb
	ld   d, $ff                                      ; $449d: $16 $ff
	add  c                                           ; $449f: $81
	rra                                              ; $44a0: $1f
	pop  af                                          ; $44a1: $f1
	dec  l                                           ; $44a2: $2d
	cp   $81                                         ; $44a3: $fe $81
	ld   c, $f1                                      ; $44a5: $0e $f1
	ld   de, $a1ff                                   ; $44a7: $11 $ff $a1
	ld   c, e                                        ; $44aa: $4b
	ld   [$1111], a                                  ; $44ab: $ea $11 $11
	sbc  a                                           ; $44ae: $9f
	pop  af                                          ; $44af: $f1
	rla                                              ; $44b0: $17
	rst  $38                                         ; $44b1: $ff
	ld   de, $ff1f                                   ; $44b2: $11 $1f $ff
	sub  h                                           ; $44b5: $94
	sbc  a                                           ; $44b6: $9f
	pop  af                                          ; $44b7: $f1
	dec  d                                           ; $44b8: $15
	db   $fd                                         ; $44b9: $fd
	sub  a                                           ; $44ba: $97
	xor  e                                           ; $44bb: $ab
	and  a                                           ; $44bc: $a7
	ld   de, $a45a                                   ; $44bd: $11 $5a $a4
	add  hl, de                                      ; $44c0: $19
	rst  $38                                         ; $44c1: $ff
	sub  c                                           ; $44c2: $91
	dec  d                                           ; $44c3: $15
	ld   h, c                                        ; $44c4: $61
	ld   de, $f1ff                                   ; $44c5: $11 $ff $f1
	ld   d, $fe                                      ; $44c8: $16 $fe
	ld   de, $ff2f                                   ; $44ca: $11 $2f $ff
	sub  c                                           ; $44cd: $91
	cpl                                              ; $44ce: $2f
	db   $e3                                         ; $44cf: $e3
	inc  de                                          ; $44d0: $13
	cp   a                                           ; $44d1: $bf
	cp   $62                                         ; $44d2: $fe $62
	ld   h, a                                        ; $44d4: $67
	ld   de, $dc29                                   ; $44d5: $11 $29 $dc
	adc  b                                           ; $44d8: $88
	rst  $38                                         ; $44d9: $ff
	ld   [hl], c                                     ; $44da: $71
	ld   de, $1d11                                   ; $44db: $11 $11 $1d
	rst  $38                                         ; $44de: $ff
	sub  c                                           ; $44df: $91
	dec  de                                          ; $44e0: $1b
	add  l                                           ; $44e1: $85
	ld   de, $ffdf                                   ; $44e2: $11 $df $ff
	ld   de, $415e                                   ; $44e5: $11 $5e $41
	dec  l                                           ; $44e8: $2d
	rst  $38                                         ; $44e9: $ff
	ei                                               ; $44ea: $fb
	ld   [hl-], a                                    ; $44eb: $32
	ld   de, $9e13                                   ; $44ec: $11 $13 $9e
	jp   c, $a1df                                    ; $44ef: $da $df $a1

	ld   de, $1131                                   ; $44f2: $11 $31 $11
	rst  $38                                         ; $44f5: $ff
	push af                                          ; $44f6: $f5
	ld   de, $1187                                   ; $44f7: $11 $87 $11
	rra                                              ; $44fa: $1f
	rst  $38                                         ; $44fb: $ff
	pop  af                                          ; $44fc: $f1
	rla                                              ; $44fd: $17
	call nz, $df11                                   ; $44fe: $c4 $11 $df
	rst  $38                                         ; $4501: $ff
	ld   b, c                                        ; $4502: $41
	inc  sp                                          ; $4503: $33
	ld   hl, $df27                                   ; $4504: $21 $27 $df
	db   $fc                                         ; $4507: $fc
	ld   [hl], c                                     ; $4508: $71
	dec  b                                           ; $4509: $05
	ld   [hl], d                                     ; $450a: $72
	ld   de, $ff1f                                   ; $450b: $11 $1f $ff
	ld   de, $e11d                                   ; $450e: $11 $1d $e1
	ld   de, $ffaf                                   ; $4511: $11 $af $ff
	ld   de, $914f                                   ; $4514: $11 $4f $91
	inc  l                                           ; $4517: $2c
	rst  $38                                         ; $4518: $ff
	db   $f4                                         ; $4519: $f4
	inc  de                                          ; $451a: $13
	ld   d, h                                        ; $451b: $54
	ld   [de], a                                     ; $451c: $12
	ld   a, a                                        ; $451d: $7f
	ld   sp, hl                                      ; $451e: $f9
	xor  c                                           ; $451f: $a9
	ld   h, e                                        ; $4520: $63
	ld   d, l                                        ; $4521: $55
	ld   de, rAUD1LOW                                   ; $4522: $11 $13 $ff
	pop  af                                          ; $4525: $f1
	dec  d                                           ; $4526: $15
	reti                                             ; $4527: $d9


	ld   de, $ff1f                                   ; $4528: $11 $1f $ff
	pop  hl                                          ; $452b: $e1
	ld   d, $c7                                      ; $452c: $16 $c7
	inc  d                                           ; $452e: $14
	rst  JumpTable                                         ; $452f: $df
	db   $fc                                         ; $4530: $fc
	ld   de, $813a                                   ; $4531: $11 $3a $81
	add  hl, hl                                      ; $4534: $29
	db   $fc                                         ; $4535: $fc
	cp   c                                           ; $4536: $b9
	halt                                             ; $4537: $76
	ld   d, l                                        ; $4538: $55
	ld   de, $1f11                                   ; $4539: $11 $11 $1f
	rst  $38                                         ; $453c: $ff
	ld   de, $b14d                                   ; $453d: $11 $4d $b1
	ld   de, $ffaf                                   ; $4540: $11 $af $ff
	ld   de, $9828                                   ; $4543: $11 $28 $98
	xor  l                                           ; $4546: $ad
	rst  $38                                         ; $4547: $ff
	add  e                                           ; $4548: $83
	dec  h                                           ; $4549: $25
	sub  [hl]                                        ; $454a: $96
	ld   b, a                                        ; $454b: $47
	xor  c                                           ; $454c: $a9
	ld   l, c                                        ; $454d: $69
	cp   c                                           ; $454e: $b9
	ld   d, l                                        ; $454f: $55
	ld   b, h                                        ; $4550: $44
	ld   sp, rAUD1LEN                                   ; $4551: $31 $11 $ff
	pop  af                                          ; $4554: $f1
	ld   [de], a                                     ; $4555: $12
	xor  h                                           ; $4556: $ac
	ld   hl, $ff18                                   ; $4557: $21 $18 $ff
	pop  bc                                          ; $455a: $c1
	rla                                              ; $455b: $17
	res  2, [hl]                                     ; $455c: $cb $96
	xor  a                                           ; $455e: $af
	db   $fc                                         ; $455f: $fc
	ld   sp, $c53c                                   ; $4560: $31 $3c $c5
	inc  de                                          ; $4563: $13
	rst  JumpTable                                         ; $4564: $df
	add  c                                           ; $4565: $81
	dec  hl                                          ; $4566: $2b
	reti                                             ; $4567: $d9


	ld   de, rAUD1LEN                                   ; $4568: $11 $11 $ff
	cp   $11                                         ; $456b: $fe $11
	ld   l, d                                        ; $456d: $6a
	and  e                                           ; $456e: $a3
	inc  hl                                          ; $456f: $23
	rst  $28                                         ; $4570: $ef
	ld   hl, sp+$11                                  ; $4571: $f8 $11
	ld   e, e                                        ; $4573: $5b
	cp   c                                           ; $4574: $b9
	ld   e, d                                        ; $4575: $5a
	rst  $38                                         ; $4576: $ff
	db   $e4                                         ; $4577: $e4
	dec  d                                           ; $4578: $15
	xor  c                                           ; $4579: $a9
	ld   sp, $fa5c                                   ; $457a: $31 $5c $fa
	ld   [de], a                                     ; $457d: $12
	sbc  e                                           ; $457e: $9b
	ld   [hl], c                                     ; $457f: $71
	ld   de, $ff6f                                   ; $4580: $11 $6f $ff
	ld   de, $c72b                                   ; $4583: $11 $2b $c7
	ld   hl, $fb9f                                   ; $4586: $21 $9f $fb
	ld   de, $ec3c                                   ; $4589: $11 $3c $ec
	ld   b, h                                        ; $458c: $44
	rst  JumpTable                                         ; $458d: $df
	or   $11                                         ; $458e: $f6 $11
	xor  a                                           ; $4590: $af
	db   $d3                                         ; $4591: $d3
	ld   de, $f86e                                   ; $4592: $11 $6e $f8
	ld   de, $916e                                   ; $4595: $11 $6e $91
	dec  d                                           ; $4598: $15
	rst  $38                                         ; $4599: $ff
	pop  af                                          ; $459a: $f1
	ld   de, $a2be                                   ; $459b: $11 $be $a2
	jr   @+$01                                       ; $459e: $18 $ff

	db   $e4                                         ; $45a0: $e4
	ld   [de], a                                     ; $45a1: $12
	adc  l                                           ; $45a2: $8d
	ret  z                                           ; $45a3: $c8

	ld   b, l                                        ; $45a4: $45
	cp   a                                           ; $45a5: $bf
	ld   a, [$9b44]                                  ; $45a6: $fa $44 $9b
	ld   [hl], d                                     ; $45a9: $72
	inc  de                                          ; $45aa: $13
	adc  e                                           ; $45ab: $8b
	or   a                                           ; $45ac: $b7
	ld   hl, $1135                                   ; $45ad: $21 $35 $11
	rst  $28                                         ; $45b0: $ef
	ld   a, [$4c11]                                  ; $45b1: $fa $11 $4c
	ei                                               ; $45b4: $fb
	inc  sp                                          ; $45b5: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45b6: $cf
	ld   sp, hl                                      ; $45b7: $f9
	ld   de, $c95b                                   ; $45b8: $11 $5b $c9
	ld   h, [hl]                                     ; $45bb: $66
	xor  [hl]                                        ; $45bc: $ae
	ld   [$7964], a                                  ; $45bd: $ea $64 $79
	and  a                                           ; $45c0: $a7
	ld   sp, $a85b                                   ; $45c1: $31 $5b $a8
	ld   b, d                                        ; $45c4: $42
	ld   h, a                                        ; $45c5: $67
	ld   sp, $ff1e                                   ; $45c6: $31 $1e $ff
	and  c                                           ; $45c9: $a1
	dec  d                                           ; $45ca: $15
	sbc  $a3                                         ; $45cb: $de $a3
	ld   c, e                                        ; $45cd: $4b
	rst  $38                                         ; $45ce: $ff
	call nz, $ad35                                   ; $45cf: $c4 $35 $ad
	sub  l                                           ; $45d2: $95
	ld   d, a                                        ; $45d3: $57
	cp   [hl]                                        ; $45d4: $be
	ei                                               ; $45d5: $fb
	ld   h, e                                        ; $45d6: $63
	scf                                              ; $45d7: $37
	xor  d                                           ; $45d8: $aa
	ld   sp, $bc68                                   ; $45d9: $31 $68 $bc
	add  c                                           ; $45dc: $81
	ld   de, $ff1f                                   ; $45dd: $11 $1f $ff
	sub  c                                           ; $45e0: $91
	rla                                              ; $45e1: $17
	bit  4, e                                        ; $45e2: $cb $63
	ld   l, [hl]                                     ; $45e4: $6e
	cp   $74                                         ; $45e5: $fe $74
	ld   l, d                                        ; $45e7: $6a
	ret                                              ; $45e8: $c9


	ld   b, e                                        ; $45e9: $43
	adc  l                                           ; $45ea: $8d
	cp   $a5                                         ; $45eb: $fe $a5
	ld   c, c                                        ; $45ed: $49
	and  [hl]                                        ; $45ee: $a6
	inc  hl                                          ; $45ef: $23
	sbc  c                                           ; $45f0: $99
	ld   b, e                                        ; $45f1: $43
	ld   h, [hl]                                     ; $45f2: $66
	ld   l, b                                        ; $45f3: $68
	ld   [hl], c                                     ; $45f4: $71
	ld   de, $f8ff                                   ; $45f5: $11 $ff $f8
	inc  [hl]                                        ; $45f8: $34
	ld   l, c                                        ; $45f9: $69
	cp   c                                           ; $45fa: $b9
	ld   d, [hl]                                     ; $45fb: $56
	cp   l                                           ; $45fc: $bd
	xor  c                                           ; $45fd: $a9
	xor  d                                           ; $45fe: $aa
	adc  c                                           ; $45ff: $89
	sbc  b                                           ; $4600: $98
	ld   h, a                                        ; $4601: $67
	xor  h                                           ; $4602: $ac
	xor  d                                           ; $4603: $aa
	cp   h                                           ; $4604: $bc
	ret                                              ; $4605: $c9


	ld   d, e                                        ; $4606: $53
	dec  [hl]                                        ; $4607: $35
	adc  c                                           ; $4608: $89
	ld   [hl], e                                     ; $4609: $73
	ld   [hl], $96                                   ; $460a: $36 $96
	ld   de, $ff1f                                   ; $460c: $11 $1f $ff
	ld   [hl], c                                     ; $460f: $71
	inc  de                                          ; $4610: $13
	cp   a                                           ; $4611: $bf
	sub  $49                                         ; $4612: $d6 $49
	db   $ec                                         ; $4614: $ec
	xor  c                                           ; $4615: $a9
	add  a                                           ; $4616: $87
	sbc  e                                           ; $4617: $9b
	add  [hl]                                        ; $4618: $86
	ld   l, d                                        ; $4619: $6a
	adc  $eb                                         ; $461a: $ce $eb
	halt                                             ; $461c: $76
	ld   a, b                                        ; $461d: $78
	ld   d, h                                        ; $461e: $54
	ld   l, c                                        ; $461f: $69
	sub  a                                           ; $4620: $97
	ld   d, d                                        ; $4621: $52
	dec  h                                           ; $4622: $25
	ld   b, c                                        ; $4623: $41
	ld   e, $ff                                      ; $4624: $1e $ff
	add  c                                           ; $4626: $81
	ld   de, $e59f                                   ; $4627: $11 $9f $e5
	ld   c, c                                        ; $462a: $49
	db   $ed                                         ; $462b: $ed
	sub  a                                           ; $462c: $97
	ld   a, e                                        ; $462d: $7b
	bit  6, e                                        ; $462e: $cb $73
	ld   e, h                                        ; $4630: $5c
	rst  $38                                         ; $4631: $ff
	rst  $10                                         ; $4632: $d7
	ld   d, l                                        ; $4633: $55
	ld   a, c                                        ; $4634: $79
	sub  l                                           ; $4635: $95
	ld   d, [hl]                                     ; $4636: $56
	ld   h, [hl]                                     ; $4637: $66
	ld   h, [hl]                                     ; $4638: $66
	ld   hl, $bf11                                   ; $4639: $21 $11 $bf
	cp   $41                                         ; $463c: $fe $41
	rla                                              ; $463e: $17
	call $8a96                                       ; $463f: $cd $96 $8a
	jp   z, $9d76                                    ; $4642: $ca $76 $9d

	sub  $13                                         ; $4645: $d6 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4647: $cf
	db   $fc                                         ; $4648: $fc
	ld   d, d                                        ; $4649: $52
	ld   e, d                                        ; $464a: $5a
	cp   b                                           ; $464b: $b8
	ld   h, h                                        ; $464c: $64
	ld   h, a                                        ; $464d: $67
	ld   d, d                                        ; $464e: $52
	dec  h                                           ; $464f: $25
	ld   sp, $fb9f                                   ; $4650: $31 $9f $fb
	inc  hl                                          ; $4653: $23
	ld   h, $cd                                      ; $4654: $26 $cd
	sub  l                                           ; $4656: $95
	xor  l                                           ; $4657: $ad
	rst  ToBoot                                         ; $4658: $c7
	ld   [hl], a                                     ; $4659: $77
	ld   a, d                                        ; $465a: $7a
	rst  $38                                         ; $465b: $ff
	or   h                                           ; $465c: $b4
	ld   h, $ad                                      ; $465d: $26 $ad
	db   $ec                                         ; $465f: $ec
	sub  [hl]                                        ; $4660: $96

jr_0b0_4661:
	adc  d                                           ; $4661: $8a
	ld   [hl], e                                     ; $4662: $73
	dec  [hl]                                        ; $4663: $35
	sbc  e                                           ; $4664: $9b
	ld   h, c                                        ; $4665: $61
	ld   de, $ff1e                                   ; $4666: $11 $1e $ff
	sub  c                                           ; $4669: $91
	dec  d                                           ; $466a: $15
	xor  d                                           ; $466b: $aa
	and  a                                           ; $466c: $a7
	adc  e                                           ; $466d: $8b
	db   $eb                                         ; $466e: $eb
	ld   h, e                                        ; $466f: $63
	jr   c, jr_0b0_4661                              ; $4670: $38 $ef

	ld   sp, hl                                      ; $4672: $f9
	ld   hl, $cb6a                                   ; $4673: $21 $6a $cb
	xor  b                                           ; $4676: $a8
	sbc  d                                           ; $4677: $9a
	sub  l                                           ; $4678: $95
	inc  sp                                          ; $4679: $33
	ld   b, a                                        ; $467a: $47
	adc  c                                           ; $467b: $89
	ld   h, c                                        ; $467c: $61
	add  hl, de                                      ; $467d: $19
	rst  $38                                         ; $467e: $ff
	or   c                                           ; $467f: $b1
	inc  de                                          ; $4680: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4681: $cf
	or   l                                           ; $4682: $b5
	ld   c, b                                        ; $4683: $48
	db   $dd                                         ; $4684: $dd
	and  [hl]                                        ; $4685: $a6
	ld   [hl], $ad                                   ; $4686: $36 $ad
	db   $dd                                         ; $4688: $dd
	xor  b                                           ; $4689: $a8
	ld   h, [hl]                                     ; $468a: $66
	ld   a, c                                        ; $468b: $79
	adc  c                                           ; $468c: $89
	sbc  c                                           ; $468d: $99
	ld   a, b                                        ; $468e: $78
	sub  a                                           ; $468f: $97
	ld   d, l                                        ; $4690: $55
	ld   h, [hl]                                     ; $4691: $66
	ld   b, e                                        ; $4692: $43
	ld   de, $fb9f                                   ; $4693: $11 $9f $fb
	ld   sp, $cc38                                   ; $4696: $31 $38 $cc
	ld   [hl], l                                     ; $4699: $75
	adc  e                                           ; $469a: $8b
	jp   c, Jump_0b0_5964                            ; $469b: $da $64 $59

	sbc  $b9                                         ; $469e: $de $b9
	adc  c                                           ; $46a0: $89
	ld   [hl], a                                     ; $46a1: $77
	ld   a, b                                        ; $46a2: $78
	sbc  c                                           ; $46a3: $99
	sbc  b                                           ; $46a4: $98
	ld   h, [hl]                                     ; $46a5: $66
	ld   a, b                                        ; $46a6: $78
	add  l                                           ; $46a7: $85
	ld   b, h                                        ; $46a8: $44
	ld   d, [hl]                                     ; $46a9: $56
	sbc  c                                           ; $46aa: $99
	adc  b                                           ; $46ab: $88
	sbc  e                                           ; $46ac: $9b
	sub  a                                           ; $46ad: $97
	ld   h, [hl]                                     ; $46ae: $66
	ld   a, c                                        ; $46af: $79
	xor  c                                           ; $46b0: $a9
	adc  c                                           ; $46b1: $89
	sbc  b                                           ; $46b2: $98
	adc  c                                           ; $46b3: $89
	sbc  c                                           ; $46b4: $99
	cp   e                                           ; $46b5: $bb
	sbc  c                                           ; $46b6: $99
	halt                                             ; $46b7: $76
	ld   h, a                                        ; $46b8: $67
	sbc  d                                           ; $46b9: $9a
	and  a                                           ; $46ba: $a7
	ld   d, l                                        ; $46bb: $55
	ld   [hl], a                                     ; $46bc: $77
	halt                                             ; $46bd: $76
	ld   d, h                                        ; $46be: $54
	ld   e, c                                        ; $46bf: $59
	cp   d                                           ; $46c0: $ba
	xor  b                                           ; $46c1: $a8
	ld   [hl], a                                     ; $46c2: $77
	adc  c                                           ; $46c3: $89
	adc  b                                           ; $46c4: $88
	adc  b                                           ; $46c5: $88
	xor  d                                           ; $46c6: $aa
	adc  b                                           ; $46c7: $88
	ld   [hl], a                                     ; $46c8: $77
	adc  d                                           ; $46c9: $8a
	sbc  d                                           ; $46ca: $9a
	sbc  b                                           ; $46cb: $98
	adc  b                                           ; $46cc: $88
	adc  c                                           ; $46cd: $89
	adc  b                                           ; $46ce: $88
	add  a                                           ; $46cf: $87
	ld   [hl], a                                     ; $46d0: $77
	adc  c                                           ; $46d1: $89
	sbc  b                                           ; $46d2: $98
	ld   h, [hl]                                     ; $46d3: $66
	ld   [hl], a                                     ; $46d4: $77
	halt                                             ; $46d5: $76
	ld   d, l                                        ; $46d6: $55
	adc  e                                           ; $46d7: $8b
	cp   b                                           ; $46d8: $b8
	ld   h, a                                        ; $46d9: $67
	adc  c                                           ; $46da: $89
	sbc  c                                           ; $46db: $99
	ld   [hl], a                                     ; $46dc: $77
	sbc  d                                           ; $46dd: $9a
	xor  b                                           ; $46de: $a8
	ld   [hl], a                                     ; $46df: $77
	sbc  c                                           ; $46e0: $99
	sbc  b                                           ; $46e1: $98
	ld   [hl], a                                     ; $46e2: $77
	sbc  c                                           ; $46e3: $99
	adc  c                                           ; $46e4: $89
	adc  c                                           ; $46e5: $89
	add  a                                           ; $46e6: $87
	ld   h, [hl]                                     ; $46e7: $66
	ld   b, d                                        ; $46e8: $42
	ld   a, [hl-]                                    ; $46e9: $3a
	rst  $38                                         ; $46ea: $ff
	and  [hl]                                        ; $46eb: $a6
	ld   b, h                                        ; $46ec: $44
	ld   a, d                                        ; $46ed: $7a
	xor  b                                           ; $46ee: $a8
	ld   l, b                                        ; $46ef: $68
	xor  d                                           ; $46f0: $aa
	sub  a                                           ; $46f1: $97
	ld   d, l                                        ; $46f2: $55
	ld   a, d                                        ; $46f3: $7a
	xor  c                                           ; $46f4: $a9
	add  a                                           ; $46f5: $87
	ld   a, b                                        ; $46f6: $78
	adc  b                                           ; $46f7: $88
	ld   [hl], a                                     ; $46f8: $77
	adc  b                                           ; $46f9: $88
	sbc  b                                           ; $46fa: $98
	add  a                                           ; $46fb: $87
	ld   [hl], a                                     ; $46fc: $77
	adc  c                                           ; $46fd: $89
	adc  b                                           ; $46fe: $88
	ld   a, b                                        ; $46ff: $78
	adc  c                                           ; $4700: $89
	adc  b                                           ; $4701: $88
	adc  b                                           ; $4702: $88
	adc  c                                           ; $4703: $89
	sbc  c                                           ; $4704: $99
	adc  b                                           ; $4705: $88
	adc  b                                           ; $4706: $88
	adc  b                                           ; $4707: $88
	adc  b                                           ; $4708: $88
	adc  b                                           ; $4709: $88
	adc  b                                           ; $470a: $88
	adc  b                                           ; $470b: $88
	adc  b                                           ; $470c: $88
	adc  b                                           ; $470d: $88
	ld   [hl], a                                     ; $470e: $77
	adc  b                                           ; $470f: $88
	add  a                                           ; $4710: $87
	ld   h, [hl]                                     ; $4711: $66
	ld   a, d                                        ; $4712: $7a
	xor  c                                           ; $4713: $a9
	ld   [hl], a                                     ; $4714: $77
	ld   a, b                                        ; $4715: $78
	adc  b                                           ; $4716: $88
	add  a                                           ; $4717: $87
	adc  b                                           ; $4718: $88
	sbc  c                                           ; $4719: $99
	add  a                                           ; $471a: $87
	ld   [hl], a                                     ; $471b: $77
	adc  b                                           ; $471c: $88
	sbc  b                                           ; $471d: $98
	ld   a, b                                        ; $471e: $78
	adc  c                                           ; $471f: $89
	sbc  b                                           ; $4720: $98
	ld   [hl], a                                     ; $4721: $77
	adc  b                                           ; $4722: $88
	adc  b                                           ; $4723: $88
	add  a                                           ; $4724: $87
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
	ld   a, b                                        ; $473a: $78
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

Jump_0b0_4863:
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

Call_0b0_486d:
	adc  b                                           ; $486d: $88
	adc  b                                           ; $486e: $88
	adc  b                                           ; $486f: $88
	adc  b                                           ; $4870: $88
	adc  b                                           ; $4871: $88
	adc  b                                           ; $4872: $88
	adc  b                                           ; $4873: $88

Call_0b0_4874:
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
	adc  b                                           ; $4c9e: $88
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	adc  b                                           ; $4ca1: $88
	adc  b                                           ; $4ca2: $88
	adc  b                                           ; $4ca3: $88
	adc  b                                           ; $4ca4: $88
	adc  b                                           ; $4ca5: $88
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
	adc  b                                           ; $4cbf: $88
	adc  b                                           ; $4cc0: $88
	adc  b                                           ; $4cc1: $88
	adc  b                                           ; $4cc2: $88
	adc  b                                           ; $4cc3: $88
	adc  b                                           ; $4cc4: $88
	adc  b                                           ; $4cc5: $88
	adc  b                                           ; $4cc6: $88
	adc  b                                           ; $4cc7: $88
	adc  b                                           ; $4cc8: $88
	adc  b                                           ; $4cc9: $88
	adc  b                                           ; $4cca: $88
	adc  b                                           ; $4ccb: $88
	adc  b                                           ; $4ccc: $88
	adc  b                                           ; $4ccd: $88
	adc  b                                           ; $4cce: $88
	adc  b                                           ; $4ccf: $88
	adc  b                                           ; $4cd0: $88
	adc  b                                           ; $4cd1: $88
	adc  b                                           ; $4cd2: $88
	adc  b                                           ; $4cd3: $88
	adc  b                                           ; $4cd4: $88
	adc  b                                           ; $4cd5: $88
	adc  b                                           ; $4cd6: $88
	adc  b                                           ; $4cd7: $88
	adc  b                                           ; $4cd8: $88
	adc  b                                           ; $4cd9: $88
	adc  b                                           ; $4cda: $88
	adc  b                                           ; $4cdb: $88
	adc  b                                           ; $4cdc: $88
	adc  b                                           ; $4cdd: $88
	adc  b                                           ; $4cde: $88
	adc  b                                           ; $4cdf: $88
	adc  b                                           ; $4ce0: $88
	adc  b                                           ; $4ce1: $88
	adc  b                                           ; $4ce2: $88
	adc  b                                           ; $4ce3: $88
	adc  b                                           ; $4ce4: $88
	adc  b                                           ; $4ce5: $88
	adc  b                                           ; $4ce6: $88
	adc  b                                           ; $4ce7: $88
	ld   a, b                                        ; $4ce8: $78
	adc  b                                           ; $4ce9: $88
	ld   [hl], a                                     ; $4cea: $77
	ld   [hl], a                                     ; $4ceb: $77
	ld   a, b                                        ; $4cec: $78
	adc  b                                           ; $4ced: $88
	adc  b                                           ; $4cee: $88
	adc  b                                           ; $4cef: $88
	adc  b                                           ; $4cf0: $88
	adc  b                                           ; $4cf1: $88
	sbc  b                                           ; $4cf2: $98
	sbc  c                                           ; $4cf3: $99
	sbc  c                                           ; $4cf4: $99
	adc  b                                           ; $4cf5: $88
	adc  b                                           ; $4cf6: $88
	adc  b                                           ; $4cf7: $88
	adc  b                                           ; $4cf8: $88
	adc  b                                           ; $4cf9: $88
	adc  b                                           ; $4cfa: $88
	adc  b                                           ; $4cfb: $88
	adc  c                                           ; $4cfc: $89
	sbc  c                                           ; $4cfd: $99
	adc  b                                           ; $4cfe: $88
	adc  b                                           ; $4cff: $88
	ld   [hl], a                                     ; $4d00: $77
	ld   [hl], a                                     ; $4d01: $77
	ld   [hl], a                                     ; $4d02: $77
	ld   [hl], a                                     ; $4d03: $77
	ld   [hl], a                                     ; $4d04: $77
	ld   [hl], a                                     ; $4d05: $77
	ld   [hl], a                                     ; $4d06: $77
	adc  c                                           ; $4d07: $89
	sbc  c                                           ; $4d08: $99
	sbc  c                                           ; $4d09: $99
	sbc  c                                           ; $4d0a: $99
	adc  c                                           ; $4d0b: $89
	sbc  c                                           ; $4d0c: $99
	sbc  b                                           ; $4d0d: $98
	adc  b                                           ; $4d0e: $88
	sbc  b                                           ; $4d0f: $98
	sbc  b                                           ; $4d10: $98
	adc  b                                           ; $4d11: $88
	adc  b                                           ; $4d12: $88
	sbc  c                                           ; $4d13: $99
	adc  b                                           ; $4d14: $88
	adc  b                                           ; $4d15: $88
	adc  b                                           ; $4d16: $88
	ld   [hl], a                                     ; $4d17: $77
	halt                                             ; $4d18: $76
	ld   h, [hl]                                     ; $4d19: $66
	ld   [hl], a                                     ; $4d1a: $77
	ld   h, [hl]                                     ; $4d1b: $66
	ld   h, [hl]                                     ; $4d1c: $66
	ld   h, a                                        ; $4d1d: $67
	ld   a, b                                        ; $4d1e: $78
	adc  b                                           ; $4d1f: $88
	sbc  b                                           ; $4d20: $98
	adc  b                                           ; $4d21: $88
	sbc  d                                           ; $4d22: $9a
	xor  d                                           ; $4d23: $aa
	xor  d                                           ; $4d24: $aa
	xor  d                                           ; $4d25: $aa
	sbc  d                                           ; $4d26: $9a
	xor  d                                           ; $4d27: $aa
	xor  c                                           ; $4d28: $a9
	sbc  c                                           ; $4d29: $99
	sbc  b                                           ; $4d2a: $98
	sbc  b                                           ; $4d2b: $98
	adc  b                                           ; $4d2c: $88
	ld   [hl], a                                     ; $4d2d: $77
	ld   h, [hl]                                     ; $4d2e: $66
	ld   d, h                                        ; $4d2f: $54
	ld   d, [hl]                                     ; $4d30: $56
	ld   d, l                                        ; $4d31: $55
	ld   d, h                                        ; $4d32: $54
	ld   d, h                                        ; $4d33: $54
	ld   h, [hl]                                     ; $4d34: $66
	ld   a, d                                        ; $4d35: $7a
	sbc  c                                           ; $4d36: $99
	xor  d                                           ; $4d37: $aa
	sbc  c                                           ; $4d38: $99
	xor  h                                           ; $4d39: $ac
	call z, $aaba                                    ; $4d3a: $cc $ba $aa
	xor  d                                           ; $4d3d: $aa
	sbc  d                                           ; $4d3e: $9a
	xor  c                                           ; $4d3f: $a9
	sbc  c                                           ; $4d40: $99
	sbc  c                                           ; $4d41: $99
	add  a                                           ; $4d42: $87
	add  a                                           ; $4d43: $87
	ld   [hl], a                                     ; $4d44: $77
	ld   h, l                                        ; $4d45: $65
	ld   b, d                                        ; $4d46: $42
	dec  [hl]                                        ; $4d47: $35
	ld   b, h                                        ; $4d48: $44
	inc  sp                                          ; $4d49: $33
	ld   b, d                                        ; $4d4a: $42
	ld   d, [hl]                                     ; $4d4b: $56
	adc  e                                           ; $4d4c: $8b
	sbc  h                                           ; $4d4d: $9c
	jp   z, $cecb                                    ; $4d4e: $ca $cb $ce

	sbc  $dc                                         ; $4d51: $de $dc
	jp   c, $99ab                                    ; $4d53: $da $ab $99

	adc  b                                           ; $4d56: $88
	sbc  b                                           ; $4d57: $98
	adc  b                                           ; $4d58: $88
	ld   [hl], a                                     ; $4d59: $77
	ld   [hl], a                                     ; $4d5a: $77
	halt                                             ; $4d5b: $76
	ld   h, l                                        ; $4d5c: $65
	ld   hl, $5311                                   ; $4d5d: $21 $11 $53
	add  [hl]                                        ; $4d60: $86
	jr   c, jr_0b0_4d88                              ; $4d61: $38 $25

	ld   [hl], a                                     ; $4d63: $77
	db   $fd                                         ; $4d64: $fd
	rst  $38                                         ; $4d65: $ff
	sbc  $c9                                         ; $4d66: $de $c9
	reti                                             ; $4d68: $d9


	xor  e                                           ; $4d69: $ab
	ld   a, d                                        ; $4d6a: $7a
	halt                                             ; $4d6b: $76
	sub  [hl]                                        ; $4d6c: $96
	cp   h                                           ; $4d6d: $bc
	rst  JumpTable                                         ; $4d6e: $df
	jp   z, Jump_0b0_6473                            ; $4d6f: $ca $73 $64

	ld   d, a                                        ; $4d72: $57
	ld   b, h                                        ; $4d73: $44
	ld   de, $1111                                   ; $4d74: $11 $11 $11
	rst  JumpTable                                         ; $4d77: $df
	rst  $38                                         ; $4d78: $ff
	ret                                              ; $4d79: $c9


	dec  d                                           ; $4d7a: $15
	ld   e, d                                        ; $4d7b: $5a
	ei                                               ; $4d7c: $fb
	ret  c                                           ; $4d7d: $d8

	ld   e, d                                        ; $4d7e: $5a
	xor  [hl]                                        ; $4d7f: $ae
	db   $fc                                         ; $4d80: $fc
	and  e                                           ; $4d81: $a3
	inc  [hl]                                        ; $4d82: $34
	inc  a                                           ; $4d83: $3c
	rst  JumpTable                                         ; $4d84: $df
	db   $fd                                         ; $4d85: $fd
	rst  ToBoot                                         ; $4d86: $c7
	ld   d, [hl]                                     ; $4d87: $56

jr_0b0_4d88:
	dec  h                                           ; $4d88: $25
	ld   b, e                                        ; $4d89: $43
	ld   b, d                                        ; $4d8a: $42
	dec  [hl]                                        ; $4d8b: $35
	ld   b, l                                        ; $4d8c: $45
	ld   de, rAUD1ENV                                   ; $4d8d: $11 $12 $ff
	rst  $38                                         ; $4d90: $ff
	or   a                                           ; $4d91: $b7
	ld   [de], a                                     ; $4d92: $12
	ld   c, h                                        ; $4d93: $4c
	ei                                               ; $4d94: $fb
	rst  $10                                         ; $4d95: $d7
	ld   l, d                                        ; $4d96: $6a
	xor  [hl]                                        ; $4d97: $ae
	ei                                               ; $4d98: $fb
	ld   [hl], c                                     ; $4d99: $71
	dec  h                                           ; $4d9a: $25
	ld   l, a                                        ; $4d9b: $6f
	rst  $38                                         ; $4d9c: $ff
	ld   a, [$4674]                                  ; $4d9d: $fa $74 $46
	ld   d, [hl]                                     ; $4da0: $56
	ld   b, d                                        ; $4da1: $42
	inc  hl                                          ; $4da2: $23
	ld   a, c                                        ; $4da3: $79
	and  [hl]                                        ; $4da4: $a6
	ld   de, $ef11                                   ; $4da5: $11 $11 $ef
	rst  $38                                         ; $4da8: $ff
	call nc, Call_0b0_5c11                           ; $4da9: $d4 $11 $5c
	db   $fc                                         ; $4dac: $fc
	sub  [hl]                                        ; $4dad: $96
	dec  sp                                          ; $4dae: $3b
	rst  $38                                         ; $4daf: $ff
	ld   sp, hl                                      ; $4db0: $f9
	ld   b, c                                        ; $4db1: $41
	ld   d, $9f                                      ; $4db2: $16 $9f
	rst  $38                                         ; $4db4: $ff
	ret  c                                           ; $4db5: $d8

	halt                                             ; $4db6: $76
	ld   [hl], a                                     ; $4db7: $77
	ld   d, l                                        ; $4db8: $55
	ld   b, e                                        ; $4db9: $43
	ld   d, [hl]                                     ; $4dba: $56
	ld   h, [hl]                                     ; $4dbb: $66
	ld   d, e                                        ; $4dbc: $53
	ld   de, $5f11                                   ; $4dbd: $11 $11 $5f
	rst  $38                                         ; $4dc0: $ff
	ld   hl, sp+$11                                  ; $4dc1: $f8 $11
	ld   d, $ff                                      ; $4dc3: $16 $ff
	cp   e                                           ; $4dc5: $bb
	ld   e, b                                        ; $4dc6: $58
	db   $dd                                         ; $4dc7: $dd
	reti                                             ; $4dc8: $d9


	ld   [hl], e                                     ; $4dc9: $73
	ld   d, $8c                                      ; $4dca: $16 $8c
	rst  $38                                         ; $4dcc: $ff
	ei                                               ; $4dcd: $fb
	sub  a                                           ; $4dce: $97
	ld   l, b                                        ; $4dcf: $68
	ld   h, h                                        ; $4dd0: $64
	ld   hl, $aa36                                   ; $4dd1: $21 $36 $aa

jr_0b0_4dd4:
	ld   [hl], h                                     ; $4dd4: $74
	ld   de, $1111                                   ; $4dd5: $11 $11 $11
	rst  $38                                         ; $4dd8: $ff
	rst  $38                                         ; $4dd9: $ff
	ldh  [c], a                                      ; $4dda: $e2
	ld   de, $ff2a                                   ; $4ddb: $11 $2a $ff
	jp   c, $cc6b                                    ; $4dde: $da $6b $cc

	and  a                                           ; $4de1: $a7
	ld   b, c                                        ; $4de2: $41
	jr   c, jr_0b0_4dd4                              ; $4de3: $38 $ef

	rst  $38                                         ; $4de5: $ff
	push bc                                          ; $4de6: $c5
	ld   sp, $5445                                   ; $4de7: $31 $45 $54
	inc  h                                           ; $4dea: $24
	adc  h                                           ; $4deb: $8c
	add  h                                           ; $4dec: $84
	ld   de, $1111                                   ; $4ded: $11 $11 $11
	ccf                                              ; $4df0: $3f
	rst  $38                                         ; $4df1: $ff
	ld   sp, hl                                      ; $4df2: $f9
	ld   de, rAUD1LOW                                   ; $4df3: $11 $13 $ff
	rst  $28                                         ; $4df6: $ef
	adc  e                                           ; $4df7: $8b
	cp   h                                           ; $4df8: $bc
	and  l                                           ; $4df9: $a5
	ld   d, d                                        ; $4dfa: $52
	add  hl, sp                                      ; $4dfb: $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dfc: $cf
	rst  $38                                         ; $4dfd: $ff
	jp   hl                                          ; $4dfe: $e9


	ld   h, h                                        ; $4dff: $64
	ld   d, [hl]                                     ; $4e00: $56
	ld   d, h                                        ; $4e01: $54
	ld   [de], a                                     ; $4e02: $12
	ld   b, a                                        ; $4e03: $47
	sub  a                                           ; $4e04: $97
	ld   hl, $1111                                   ; $4e05: $21 $11 $11
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	or   c                                           ; $4e0a: $b1
	ld   de, $fb5e                                   ; $4e0b: $11 $5e $fb
	xor  c                                           ; $4e0e: $a9
	cp   a                                           ; $4e0f: $bf
	rst  $38                                         ; $4e10: $ff
	ld   h, d                                        ; $4e11: $62
	ld   [de], a                                     ; $4e12: $12
	ld   a, l                                        ; $4e13: $7d
	rst  $38                                         ; $4e14: $ff
	cp   $97                                         ; $4e15: $fe $97
	ld   h, [hl]                                     ; $4e17: $66
	ld   h, e                                        ; $4e18: $63
	ld   de, $8824                                   ; $4e19: $11 $24 $88
	ld   d, d                                        ; $4e1c: $52
	ld   de, $bf11                                   ; $4e1d: $11 $11 $bf
	rst  $38                                         ; $4e20: $ff
	pop  af                                          ; $4e21: $f1
	ld   de, $fd3a                                   ; $4e22: $11 $3a $fd
	sbc  d                                           ; $4e25: $9a
	cp   a                                           ; $4e26: $bf
	rst  $38                                         ; $4e27: $ff
	sub  c                                           ; $4e28: $91
	ld   de, $ff5b                                   ; $4e29: $11 $5b $ff
	db   $fc                                         ; $4e2c: $fc
	and  a                                           ; $4e2d: $a7
	ld   [hl], a                                     ; $4e2e: $77
	ld   h, l                                        ; $4e2f: $65
	ld   hl, $5512                                   ; $4e30: $21 $12 $55
	ld   d, c                                        ; $4e33: $51
	ld   de, $ff16                                   ; $4e34: $11 $16 $ff
	rst  $38                                         ; $4e37: $ff
	ld   de, $af13                                   ; $4e38: $11 $13 $af
	ld   hl, sp-$63                                  ; $4e3b: $f8 $9d
	rst  $38                                         ; $4e3d: $ff
	ld   sp, hl                                      ; $4e3e: $f9
	ld   de, $df17                                   ; $4e3f: $11 $17 $df
	rst  $38                                         ; $4e42: $ff
	or   l                                           ; $4e43: $b5
	dec  h                                           ; $4e44: $25
	sbc  c                                           ; $4e45: $99
	ld   h, d                                        ; $4e46: $62
	ld   de, $4114                                   ; $4e47: $11 $14 $41
	ld   de, $ff1f                                   ; $4e4a: $11 $1f $ff
	or   $11                                         ; $4e4d: $f6 $11
	ld   a, [de]                                     ; $4e4f: $1a
	rst  $28                                         ; $4e50: $ef
	add  a                                           ; $4e51: $87
	rst  $28                                         ; $4e52: $ef
	rst  $38                                         ; $4e53: $ff
	or   c                                           ; $4e54: $b1
	ld   de, $ff7e                                   ; $4e55: $11 $7e $ff
	db   $fc                                         ; $4e58: $fc
	sub  l                                           ; $4e59: $95
	inc  hl                                          ; $4e5a: $23
	ld   h, [hl]                                     ; $4e5b: $66
	ld   d, e                                        ; $4e5c: $53
	ld   de, $1111                                   ; $4e5d: $11 $11 $11
	rra                                              ; $4e60: $1f
	rst  $38                                         ; $4e61: $ff
	or   $11                                         ; $4e62: $f6 $11
	ld   a, [hl+]                                    ; $4e64: $2a
	rst  $28                                         ; $4e65: $ef
	ld   h, l                                        ; $4e66: $65
	rst  $28                                         ; $4e67: $ef
	rst  $38                                         ; $4e68: $ff
	or   c                                           ; $4e69: $b1
	ld   de, $ff4d                                   ; $4e6a: $11 $4d $ff
	rst  $38                                         ; $4e6d: $ff
	ei                                               ; $4e6e: $fb
	ld   d, c                                        ; $4e6f: $51
	ld   de, $5213                                   ; $4e70: $11 $13 $52
	ld   de, $1f11                                   ; $4e73: $11 $11 $1f
	rst  $38                                         ; $4e76: $ff
	or   $11                                         ; $4e77: $f6 $11
	ld   a, l                                        ; $4e79: $7d
	db   $fd                                         ; $4e7a: $fd
	ld   h, c                                        ; $4e7b: $61
	cp   a                                           ; $4e7c: $bf
	rst  $38                                         ; $4e7d: $ff
	pop  bc                                          ; $4e7e: $c1
	ld   de, $ff2a                                   ; $4e7f: $11 $2a $ff
	rst  $38                                         ; $4e82: $ff
	rst  $38                                         ; $4e83: $ff
	add  c                                           ; $4e84: $81
	ld   de, $1111                                   ; $4e85: $11 $11 $11
	ld   de, $9f11                                   ; $4e88: $11 $11 $9f
	rst  $38                                         ; $4e8b: $ff
	ld   [hl], c                                     ; $4e8c: $71
	ld   d, $ff                                      ; $4e8d: $16 $ff
	sub  $13                                         ; $4e8f: $d6 $13
	rst  $38                                         ; $4e91: $ff
	db   $fd                                         ; $4e92: $fd
	ld   de, $bf14                                   ; $4e93: $11 $14 $bf
	rst  $38                                         ; $4e96: $ff
	rst  $38                                         ; $4e97: $ff
	db   $fc                                         ; $4e98: $fc
	ld   d, c                                        ; $4e99: $51
	ld   de, $1112                                   ; $4e9a: $11 $12 $11
	ld   de, $ff1b                                   ; $4e9d: $11 $1b $ff
	ld   a, [$bf11]                                  ; $4ea0: $fa $11 $bf
	ei                                               ; $4ea3: $fb
	ld   hl, $ff1e                                   ; $4ea4: $21 $1e $ff
	ei                                               ; $4ea7: $fb
	ld   de, $da9d                                   ; $4ea8: $11 $9d $da
	adc  b                                           ; $4eab: $88
	rst  JumpTable                                         ; $4eac: $df
	cp   $41                                         ; $4ead: $fe $41
	ld   de, $1111                                   ; $4eaf: $11 $11 $11
	ld   de, $ffff                                   ; $4eb2: $11 $ff $ff
	sub  c                                           ; $4eb5: $91
	rra                                              ; $4eb6: $1f
	db   $fc                                         ; $4eb7: $fc
	ld   b, c                                        ; $4eb8: $41
	ld   de, $ffff                                   ; $4eb9: $11 $ff $ff
	or   c                                           ; $4ebc: $b1
	ld   e, h                                        ; $4ebd: $5c
	cp   c                                           ; $4ebe: $b9
	ld   d, [hl]                                     ; $4ebf: $56
	ld   e, l                                        ; $4ec0: $5d
	rst  $38                                         ; $4ec1: $ff
	or   h                                           ; $4ec2: $b4
	ld   de, $1111                                   ; $4ec3: $11 $11 $11
	ld   de, $ff5f                                   ; $4ec6: $11 $5f $ff
	ld   a, [$ff7f]                                  ; $4ec9: $fa $7f $ff
	pop  bc                                          ; $4ecc: $c1
	ld   de, $ff4e                                   ; $4ecd: $11 $4e $ff
	rst  $10                                         ; $4ed0: $d7
	ld   a, h                                        ; $4ed1: $7c
	rst  $38                                         ; $4ed2: $ff
	cp   $76                                         ; $4ed3: $fe $76
	adc  d                                           ; $4ed5: $8a
	sub  l                                           ; $4ed6: $95
	ld   de, $4113                                   ; $4ed7: $11 $13 $41
	ld   de, $aa37                                   ; $4eda: $11 $37 $aa
	halt                                             ; $4edd: $76
	ld   a, a                                        ; $4ede: $7f
	rst  $38                                         ; $4edf: $ff
	reti                                             ; $4ee0: $d9


	ld   d, l                                        ; $4ee1: $55
	sbc  h                                           ; $4ee2: $9c
	cp   c                                           ; $4ee3: $b9
	ld   [hl], a                                     ; $4ee4: $77
	sbc  h                                           ; $4ee5: $9c
	call c, $a9ab                                    ; $4ee6: $dc $ab $a9
	xor  e                                           ; $4ee9: $ab
	sbc  c                                           ; $4eea: $99
	xor  b                                           ; $4eeb: $a8
	sbc  c                                           ; $4eec: $99
	xor  d                                           ; $4eed: $aa
	add  [hl]                                        ; $4eee: $86
	ld   b, h                                        ; $4eef: $44
	ld   [hl-], a                                    ; $4ef0: $32
	ld   de, $2511                                   ; $4ef1: $11 $11 $25
	ld   h, a                                        ; $4ef4: $67
	ld   [hl], a                                     ; $4ef5: $77
	ld   a, c                                        ; $4ef6: $79
	sbc  e                                           ; $4ef7: $9b
	cp   h                                           ; $4ef8: $bc
	cp   h                                           ; $4ef9: $bc
	call $ccdd                                       ; $4efa: $cd $dd $cc
	call z, $babb                                    ; $4efd: $cc $bb $ba
	sbc  c                                           ; $4f00: $99
	xor  d                                           ; $4f01: $aa
	xor  c                                           ; $4f02: $a9
	add  a                                           ; $4f03: $87
	ld   d, h                                        ; $4f04: $54
	ld   [hl-], a                                    ; $4f05: $32
	ld   de, $2211                                   ; $4f06: $11 $11 $22
	dec  [hl]                                        ; $4f09: $35
	ld   h, [hl]                                     ; $4f0a: $66
	ld   h, a                                        ; $4f0b: $67
	ld   a, c                                        ; $4f0c: $79
	sbc  e                                           ; $4f0d: $9b
	call $cccd                                       ; $4f0e: $cd $cd $cc
	call c, $ccdc                                    ; $4f11: $dc $dc $cc
	cp   e                                           ; $4f14: $bb
	cp   c                                           ; $4f15: $b9
	sbc  b                                           ; $4f16: $98
	adc  c                                           ; $4f17: $89
	sbc  b                                           ; $4f18: $98
	halt                                             ; $4f19: $76
	ld   d, h                                        ; $4f1a: $54
	ld   b, e                                        ; $4f1b: $43
	inc  sp                                          ; $4f1c: $33
	inc  sp                                          ; $4f1d: $33
	inc  sp                                          ; $4f1e: $33
	inc  sp                                          ; $4f1f: $33
	ld   b, l                                        ; $4f20: $45
	ld   h, a                                        ; $4f21: $67
	ld   a, b                                        ; $4f22: $78
	sbc  d                                           ; $4f23: $9a
	cp   e                                           ; $4f24: $bb
	cp   e                                           ; $4f25: $bb
	cp   h                                           ; $4f26: $bc
	call $cbdb                                       ; $4f27: $cd $db $cb
	cp   e                                           ; $4f2a: $bb
	cp   e                                           ; $4f2b: $bb
	sbc  c                                           ; $4f2c: $99
	adc  b                                           ; $4f2d: $88
	add  a                                           ; $4f2e: $87
	halt                                             ; $4f2f: $76
	ld   h, [hl]                                     ; $4f30: $66
	ld   h, [hl]                                     ; $4f31: $66
	ld   h, [hl]                                     ; $4f32: $66
	ld   d, h                                        ; $4f33: $54
	ld   b, l                                        ; $4f34: $45
	ld   b, h                                        ; $4f35: $44
	ld   b, h                                        ; $4f36: $44
	ld   b, l                                        ; $4f37: $45
	ld   h, a                                        ; $4f38: $67
	ld   a, b                                        ; $4f39: $78
	sbc  b                                           ; $4f3a: $98
	xor  d                                           ; $4f3b: $aa
	xor  e                                           ; $4f3c: $ab
	xor  e                                           ; $4f3d: $ab
	xor  e                                           ; $4f3e: $ab
	xor  e                                           ; $4f3f: $ab
	cp   e                                           ; $4f40: $bb
	cp   d                                           ; $4f41: $ba
	cp   d                                           ; $4f42: $ba
	xor  c                                           ; $4f43: $a9
	add  a                                           ; $4f44: $87
	ld   [hl], a                                     ; $4f45: $77
	ld   a, b                                        ; $4f46: $78
	add  a                                           ; $4f47: $87
	ld   [hl], a                                     ; $4f48: $77
	ld   [hl], a                                     ; $4f49: $77
	halt                                             ; $4f4a: $76
	ld   h, [hl]                                     ; $4f4b: $66
	ld   h, [hl]                                     ; $4f4c: $66
	ld   h, [hl]                                     ; $4f4d: $66
	ld   h, [hl]                                     ; $4f4e: $66
	ld   h, l                                        ; $4f4f: $65
	ld   h, [hl]                                     ; $4f50: $66
	ld   h, a                                        ; $4f51: $67
	adc  b                                           ; $4f52: $88
	adc  c                                           ; $4f53: $89
	sbc  c                                           ; $4f54: $99
	xor  d                                           ; $4f55: $aa
	xor  d                                           ; $4f56: $aa
	xor  c                                           ; $4f57: $a9
	sbc  c                                           ; $4f58: $99
	sbc  c                                           ; $4f59: $99
	xor  c                                           ; $4f5a: $a9
	sbc  c                                           ; $4f5b: $99
	sbc  c                                           ; $4f5c: $99
	sbc  c                                           ; $4f5d: $99
	adc  c                                           ; $4f5e: $89
	adc  b                                           ; $4f5f: $88
	sbc  c                                           ; $4f60: $99
	adc  b                                           ; $4f61: $88
	ld   [hl], a                                     ; $4f62: $77
	ld   [hl], a                                     ; $4f63: $77
	adc  b                                           ; $4f64: $88
	ld   [hl], a                                     ; $4f65: $77
	ld   [hl], a                                     ; $4f66: $77
	halt                                             ; $4f67: $76
	ld   h, [hl]                                     ; $4f68: $66
	ld   d, l                                        ; $4f69: $55
	ld   h, [hl]                                     ; $4f6a: $66
	ld   [hl], a                                     ; $4f6b: $77
	ld   a, b                                        ; $4f6c: $78
	adc  c                                           ; $4f6d: $89
	adc  c                                           ; $4f6e: $89
	sbc  b                                           ; $4f6f: $98
	adc  b                                           ; $4f70: $88
	sbc  c                                           ; $4f71: $99
	sbc  c                                           ; $4f72: $99
	sbc  c                                           ; $4f73: $99
	sbc  d                                           ; $4f74: $9a
	xor  d                                           ; $4f75: $aa
	sbc  b                                           ; $4f76: $98
	adc  b                                           ; $4f77: $88
	sbc  c                                           ; $4f78: $99
	adc  b                                           ; $4f79: $88
	adc  b                                           ; $4f7a: $88
	sbc  b                                           ; $4f7b: $98
	sbc  b                                           ; $4f7c: $98
	ld   [hl], a                                     ; $4f7d: $77
	ld   a, b                                        ; $4f7e: $78
	add  a                                           ; $4f7f: $87
	ld   [hl], a                                     ; $4f80: $77
	ld   [hl], a                                     ; $4f81: $77
	ld   [hl], a                                     ; $4f82: $77
	ld   h, [hl]                                     ; $4f83: $66
	ld   h, [hl]                                     ; $4f84: $66
	ld   h, [hl]                                     ; $4f85: $66
	ld   h, [hl]                                     ; $4f86: $66
	ld   [hl], a                                     ; $4f87: $77
	adc  b                                           ; $4f88: $88
	adc  b                                           ; $4f89: $88
	adc  c                                           ; $4f8a: $89
	sbc  d                                           ; $4f8b: $9a
	sbc  c                                           ; $4f8c: $99
	sbc  c                                           ; $4f8d: $99
	sbc  d                                           ; $4f8e: $9a
	xor  d                                           ; $4f8f: $aa
	sbc  c                                           ; $4f90: $99
	adc  c                                           ; $4f91: $89
	sbc  b                                           ; $4f92: $98
	adc  b                                           ; $4f93: $88
	ld   [hl], a                                     ; $4f94: $77
	ld   a, b                                        ; $4f95: $78
	adc  b                                           ; $4f96: $88
	sbc  c                                           ; $4f97: $99
	sbc  c                                           ; $4f98: $99
	sbc  b                                           ; $4f99: $98
	add  a                                           ; $4f9a: $87
	ld   [hl], a                                     ; $4f9b: $77
	ld   [hl], a                                     ; $4f9c: $77
	ld   [hl], a                                     ; $4f9d: $77
	ld   h, [hl]                                     ; $4f9e: $66
	ld   h, [hl]                                     ; $4f9f: $66
	ld   [hl], a                                     ; $4fa0: $77
	ld   a, b                                        ; $4fa1: $78
	adc  c                                           ; $4fa2: $89
	adc  b                                           ; $4fa3: $88
	sbc  b                                           ; $4fa4: $98
	adc  b                                           ; $4fa5: $88
	adc  c                                           ; $4fa6: $89
	sbc  b                                           ; $4fa7: $98
	adc  b                                           ; $4fa8: $88
	adc  b                                           ; $4fa9: $88
	sbc  c                                           ; $4faa: $99
	sbc  c                                           ; $4fab: $99
	xor  c                                           ; $4fac: $a9
	adc  c                                           ; $4fad: $89
	adc  b                                           ; $4fae: $88
	add  a                                           ; $4faf: $87
	ld   [hl], a                                     ; $4fb0: $77
	ld   [hl], a                                     ; $4fb1: $77
	adc  b                                           ; $4fb2: $88
	adc  c                                           ; $4fb3: $89
	sbc  c                                           ; $4fb4: $99
	adc  b                                           ; $4fb5: $88
	adc  c                                           ; $4fb6: $89
	adc  b                                           ; $4fb7: $88
	adc  b                                           ; $4fb8: $88
	add  a                                           ; $4fb9: $87
	ld   h, [hl]                                     ; $4fba: $66
	ld   [hl], a                                     ; $4fbb: $77
	ld   [hl], a                                     ; $4fbc: $77
	ld   a, b                                        ; $4fbd: $78
	ld   [hl], a                                     ; $4fbe: $77
	ld   [hl], a                                     ; $4fbf: $77
	add  a                                           ; $4fc0: $87
	ld   [hl], a                                     ; $4fc1: $77
	ld   [hl], a                                     ; $4fc2: $77
	ld   [hl], a                                     ; $4fc3: $77
	ld   a, b                                        ; $4fc4: $78
	adc  c                                           ; $4fc5: $89
	adc  c                                           ; $4fc6: $89
	sbc  c                                           ; $4fc7: $99
	sbc  d                                           ; $4fc8: $9a
	sbc  c                                           ; $4fc9: $99
	adc  b                                           ; $4fca: $88
	adc  b                                           ; $4fcb: $88
	adc  b                                           ; $4fcc: $88
	ld   [hl], a                                     ; $4fcd: $77
	ld   a, b                                        ; $4fce: $78
	adc  b                                           ; $4fcf: $88
	adc  c                                           ; $4fd0: $89
	xor  c                                           ; $4fd1: $a9
	sbc  c                                           ; $4fd2: $99
	sbc  b                                           ; $4fd3: $98
	adc  b                                           ; $4fd4: $88
	add  a                                           ; $4fd5: $87
	halt                                             ; $4fd6: $76
	ld   h, [hl]                                     ; $4fd7: $66
	ld   h, [hl]                                     ; $4fd8: $66
	ld   [hl], a                                     ; $4fd9: $77
	ld   [hl], a                                     ; $4fda: $77
	ld   [hl], a                                     ; $4fdb: $77
	adc  b                                           ; $4fdc: $88
	add  a                                           ; $4fdd: $87
	ld   [hl], a                                     ; $4fde: $77
	ld   a, b                                        ; $4fdf: $78
	adc  b                                           ; $4fe0: $88
	adc  b                                           ; $4fe1: $88
	adc  b                                           ; $4fe2: $88
	adc  c                                           ; $4fe3: $89
	xor  d                                           ; $4fe4: $aa
	xor  c                                           ; $4fe5: $a9
	sbc  c                                           ; $4fe6: $99
	xor  c                                           ; $4fe7: $a9
	sbc  b                                           ; $4fe8: $98
	adc  b                                           ; $4fe9: $88
	add  a                                           ; $4fea: $87
	ld   [hl], a                                     ; $4feb: $77
	adc  b                                           ; $4fec: $88
	adc  d                                           ; $4fed: $8a
	sbc  c                                           ; $4fee: $99
	xor  d                                           ; $4fef: $aa
	xor  c                                           ; $4ff0: $a9
	xor  b                                           ; $4ff1: $a8
	halt                                             ; $4ff2: $76
	adc  d                                           ; $4ff3: $8a
	adc  b                                           ; $4ff4: $88
	ld   h, [hl]                                     ; $4ff5: $66
	ld   h, l                                        ; $4ff6: $65
	ld   d, l                                        ; $4ff7: $55
	ld   h, [hl]                                     ; $4ff8: $66
	halt                                             ; $4ff9: $76
	halt                                             ; $4ffa: $76
	adc  b                                           ; $4ffb: $88
	sbc  c                                           ; $4ffc: $99
	sbc  d                                           ; $4ffd: $9a
	adc  c                                           ; $4ffe: $89
	xor  e                                           ; $4fff: $ab
	sbc  d                                           ; $5000: $9a
	sbc  e                                           ; $5001: $9b
	cp   d                                           ; $5002: $ba
	cp   d                                           ; $5003: $ba
	cp   d                                           ; $5004: $ba
	sbc  b                                           ; $5005: $98
	adc  d                                           ; $5006: $8a
	add  [hl]                                        ; $5007: $86
	ld   b, e                                        ; $5008: $43
	ld   de, $7617                                   ; $5009: $11 $17 $76
	ld   h, e                                        ; $500c: $63
	ld   sp, $cc6a                                   ; $500d: $31 $6a $cc
	sbc  c                                           ; $5010: $99
	ld   h, a                                        ; $5011: $67
	call $a7ec                                       ; $5012: $cd $ec $a7
	ld   l, c                                        ; $5015: $69
	cp   l                                           ; $5016: $bd
	cp   d                                           ; $5017: $ba
	xor  d                                           ; $5018: $aa
	call Call_0b0_63d9                               ; $5019: $cd $d9 $63
	ld   de, $1411                                   ; $501c: $11 $11 $14
	ld   l, e                                        ; $501f: $6b
	cp   c                                           ; $5020: $b9
	ld   h, l                                        ; $5021: $65
	rst  $28                                         ; $5022: $ef
	rst  $38                                         ; $5023: $ff
	sub  l                                           ; $5024: $95
	dec  d                                           ; $5025: $15
	cp   l                                           ; $5026: $bd
	db   $eb                                         ; $5027: $eb
	sub  d                                           ; $5028: $92
	ld   c, b                                        ; $5029: $48
	rst  $38                                         ; $502a: $ff
	rst  $38                                         ; $502b: $ff
	cp   c                                           ; $502c: $b9
	adc  d                                           ; $502d: $8a
	add  d                                           ; $502e: $82
	ld   de, $1611                                   ; $502f: $11 $11 $16
	xor  a                                           ; $5032: $af
	rst  $38                                         ; $5033: $ff
	ld   a, [$ffff]                                  ; $5034: $fa $ff $ff
	ld   sp, $6b11                                   ; $5037: $31 $11 $6b
	cp   c                                           ; $503a: $b9
	sub  h                                           ; $503b: $94
	ld   l, a                                        ; $503c: $6f
	rst  $38                                         ; $503d: $ff
	rst  $38                                         ; $503e: $ff
	add  d                                           ; $503f: $82
	ld   d, $31                                      ; $5040: $16 $31
	ld   de, $1f11                                   ; $5042: $11 $11 $1f
	rst  $38                                         ; $5045: $ff
	rst  $38                                         ; $5046: $ff
	jp   z, $c1ff                                    ; $5047: $ca $ff $c1

	ld   de, $ff15                                   ; $504a: $11 $15 $ff
	cp   $a7                                         ; $504d: $fe $a7
	rst  $38                                         ; $504f: $ff
	rst  $38                                         ; $5050: $ff
	ld   [hl], e                                     ; $5051: $73
	inc  hl                                          ; $5052: $23
	ld   l, b                                        ; $5053: $68
	ld   de, $1111                                   ; $5054: $11 $11 $11
	rst  $38                                         ; $5057: $ff
	rst  $38                                         ; $5058: $ff
	rst  $38                                         ; $5059: $ff
	ld   l, [hl]                                     ; $505a: $6e
	ld   a, [$1121]                                  ; $505b: $fa $21 $11
	rra                                              ; $505e: $1f
	rst  $38                                         ; $505f: $ff
	db   $fc                                         ; $5060: $fc
	halt                                             ; $5061: $76
	rst  $38                                         ; $5062: $ff
	ld   sp, hl                                      ; $5063: $f9
	adc  b                                           ; $5064: $88
	ld   a, c                                        ; $5065: $79
	sub  l                                           ; $5066: $95
	ld   de, $1111                                   ; $5067: $11 $11 $11
	rst  JumpTable                                         ; $506a: $df
	rst  $38                                         ; $506b: $ff
	rst  $38                                         ; $506c: $ff
	dec  a                                           ; $506d: $3d
	rst  $30                                         ; $506e: $f7
	ld   hl, $1f11                                   ; $506f: $21 $11 $1f
	rst  $38                                         ; $5072: $ff
	ld   sp, hl                                      ; $5073: $f9
	inc  hl                                          ; $5074: $23
	rst  JumpTable                                         ; $5075: $df
	ld   [$8c78], a                                  ; $5076: $ea $78 $8c
	or   h                                           ; $5079: $b4
	ld   de, $1111                                   ; $507a: $11 $11 $11
	sbc  a                                           ; $507d: $9f
	rst  $38                                         ; $507e: $ff
	cp   $17                                         ; $507f: $fe $17
	db   $f4                                         ; $5081: $f4
	ld   sp, $4f11                                   ; $5082: $31 $11 $4f
	rst  $38                                         ; $5085: $ff
	db   $f4                                         ; $5086: $f4
	ld   de, $aa9b                                   ; $5087: $11 $9b $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $508a: $cf
	rst  $38                                         ; $508b: $ff
	add  c                                           ; $508c: $81
	ld   de, $1111                                   ; $508d: $11 $11 $11
	rra                                              ; $5090: $1f
	rst  $38                                         ; $5091: $ff
	db   $fc                                         ; $5092: $fc
	ld   de, $a1bb                                   ; $5093: $11 $bb $a1
	ld   de, $ff1f                                   ; $5096: $11 $1f $ff
	ldh  a, [c]                                      ; $5099: $f2
	ld   de, $957d                                   ; $509a: $11 $7d $95
	ld   e, h                                        ; $509d: $5c
	rst  $38                                         ; $509e: $ff
	ldh  a, [c]                                      ; $509f: $f2
	ld   de, $1131                                   ; $50a0: $11 $31 $11
	ld   de, $ffff                                   ; $50a3: $11 $ff $ff
	ld   de, $c91f                                   ; $50a6: $11 $1f $c9
	ld   de, $ff19                                   ; $50a9: $11 $19 $ff
	ei                                               ; $50ac: $fb
	ld   de, $b61a                                   ; $50ad: $11 $1a $b6
	ld   c, c                                        ; $50b0: $49
	rst  $38                                         ; $50b1: $ff
	ld   hl, sp+$11                                  ; $50b2: $f8 $11
	inc  d                                           ; $50b4: $14
	ld   de, rAUD1LEN                                   ; $50b5: $11 $11 $ff
	rst  $38                                         ; $50b8: $ff
	and  c                                           ; $50b9: $a1
	ld   de, $51fc                                   ; $50ba: $11 $fc $51
	ld   de, $ffff                                   ; $50bd: $11 $ff $ff
	ld   de, $d719                                   ; $50c0: $11 $19 $d7
	inc  sp                                          ; $50c3: $33
	rst  $38                                         ; $50c4: $ff
	rst  $38                                         ; $50c5: $ff
	ld   de, $8117                                   ; $50c6: $11 $17 $81
	ld   de, $ff1f                                   ; $50c9: $11 $1f $ff
	pop  af                                          ; $50cc: $f1
	ld   de, $d1ff                                   ; $50cd: $11 $ff $d1
	ld   de, $ffdf                                   ; $50d0: $11 $df $ff
	ld   hl, $fd18                                   ; $50d3: $21 $18 $fd
	ld   b, c                                        ; $50d6: $41
	ld   a, a                                        ; $50d7: $7f
	rst  $38                                         ; $50d8: $ff
	ld   sp, $8611                                   ; $50d9: $31 $11 $86
	ld   de, $ff1f                                   ; $50dc: $11 $1f $ff
	ldh  a, [c]                                      ; $50df: $f2
	ld   de, $c75f                                   ; $50e0: $11 $5f $c7
	ld   de, $ff4f                                   ; $50e3: $11 $4f $ff
	pop  de                                          ; $50e6: $d1
	ld   de, $82ff                                   ; $50e7: $11 $ff $82
	ld   c, a                                        ; $50ea: $4f
	rst  $38                                         ; $50eb: $ff
	sub  c                                           ; $50ec: $91
	ld   de, $1164                                   ; $50ed: $11 $64 $11
	ld   e, $ff                                      ; $50f0: $1e $ff
	rst  $30                                         ; $50f2: $f7
	ld   de, $882f                                   ; $50f3: $11 $2f $88
	ld   de, $ff6f                                   ; $50f6: $11 $6f $ff
	pop  af                                          ; $50f9: $f1
	inc  d                                           ; $50fa: $14
	cp   [hl]                                        ; $50fb: $be
	ld   d, h                                        ; $50fc: $54
	ld   e, a                                        ; $50fd: $5f
	rst  $38                                         ; $50fe: $ff
	or   c                                           ; $50ff: $b1
	ld   de, $1153                                   ; $5100: $11 $53 $11
	ld   e, $ff                                      ; $5103: $1e $ff
	ld   sp, hl                                      ; $5105: $f9
	ld   de, $692f                                   ; $5106: $11 $2f $69
	ld   de, $ff4f                                   ; $5109: $11 $4f $ff
	pop  af                                          ; $510c: $f1
	inc  de                                          ; $510d: $13
	cp   [hl]                                        ; $510e: $be
	ld   h, l                                        ; $510f: $65
	ld   c, a                                        ; $5110: $4f
	rst  $38                                         ; $5111: $ff
	pop  af                                          ; $5112: $f1
	ld   de, $1132                                   ; $5113: $11 $32 $11
	dec  de                                          ; $5116: $1b
	rst  $38                                         ; $5117: $ff
	db   $fc                                         ; $5118: $fc
	ld   de, $791f                                   ; $5119: $11 $1f $79
	ld   de, $ff4f                                   ; $511c: $11 $4f $ff
	pop  af                                          ; $511f: $f1
	dec  d                                           ; $5120: $15
	adc  [hl]                                        ; $5121: $8e
	ld   h, [hl]                                     ; $5122: $66
	ld   a, a                                        ; $5123: $7f
	rst  $38                                         ; $5124: $ff
	pop  af                                          ; $5125: $f1
	ld   de, $1111                                   ; $5126: $11 $11 $11
	rra                                              ; $5129: $1f
	rst  $38                                         ; $512a: $ff
	ld   hl, sp+$31                                  ; $512b: $f8 $31
	ld   a, a                                        ; $512d: $7f
	add  [hl]                                        ; $512e: $86
	ld   de, $ff3f                                   ; $512f: $11 $3f $ff
	ldh  a, [c]                                      ; $5132: $f2
	dec  d                                           ; $5133: $15
	xor  h                                           ; $5134: $ac
	ld   a, b                                        ; $5135: $78
	ld   a, [hl]                                     ; $5136: $7e
	rst  $38                                         ; $5137: $ff
	di                                               ; $5138: $f3
	ld   de, $1111                                   ; $5139: $11 $11 $11
	ld   c, a                                        ; $513c: $4f
	rst  $38                                         ; $513d: $ff
	add  $77                                         ; $513e: $c6 $77
	ei                                               ; $5140: $fb
	ld   h, c                                        ; $5141: $61
	ld   de, $ff6f                                   ; $5142: $11 $6f $ff
	sub  e                                           ; $5145: $93
	sbc  d                                           ; $5146: $9a
	db   $ec                                         ; $5147: $ec
	xor  c                                           ; $5148: $a9
	ld   a, h                                        ; $5149: $7c
	rst  $38                                         ; $514a: $ff
	sub  e                                           ; $514b: $93
	ld   hl, $1111                                   ; $514c: $21 $11 $11
	set  5, a                                        ; $514f: $cb $ef
	adc  d                                           ; $5151: $8a
	ld   l, a                                        ; $5152: $6f
	xor  $a2                                         ; $5153: $ee $a2
	ld   d, d                                        ; $5155: $52
	ld   a, b                                        ; $5156: $78
	xor  b                                           ; $5157: $a8
	ld   h, [hl]                                     ; $5158: $66
	ld   l, d                                        ; $5159: $6a
	xor  l                                           ; $515a: $ad
	res  5, h                                        ; $515b: $cb $ac
	db   $db                                         ; $515d: $db
	cp   c                                           ; $515e: $b9
	sbc  b                                           ; $515f: $98
	halt                                             ; $5160: $76
	ld   d, l                                        ; $5161: $55
	ld   h, l                                        ; $5162: $65
	ld   sp, $3511                                   ; $5163: $31 $11 $35
	ld   h, a                                        ; $5166: $67
	ld   a, b                                        ; $5167: $78
	sbc  e                                           ; $5168: $9b
	call z, $bbbb                                    ; $5169: $cc $bb $bb
	xor  e                                           ; $516c: $ab
	cp   d                                           ; $516d: $ba
	cp   e                                           ; $516e: $bb
	res  5, d                                        ; $516f: $cb $aa
	xor  d                                           ; $5171: $aa
	xor  c                                           ; $5172: $a9
	ld   [hl], l                                     ; $5173: $75
	ld   b, e                                        ; $5174: $43
	ld   h, h                                        ; $5175: $64
	ld   [hl-], a                                    ; $5176: $32
	ld   de, $6714                                   ; $5177: $11 $14 $67
	ld   [hl], a                                     ; $517a: $77
	sbc  c                                           ; $517b: $99
	cp   e                                           ; $517c: $bb
	call c, $badc                                    ; $517d: $dc $dc $ba
	cp   e                                           ; $5180: $bb
	cp   h                                           ; $5181: $bc
	cp   d                                           ; $5182: $ba
	xor  e                                           ; $5183: $ab
	xor  d                                           ; $5184: $aa
	xor  c                                           ; $5185: $a9
	ld   h, h                                        ; $5186: $64
	inc  hl                                          ; $5187: $23
	ld   b, d                                        ; $5188: $42
	ld   hl, $2511                                   ; $5189: $21 $11 $25
	ld   l, d                                        ; $518c: $6a
	adc  c                                           ; $518d: $89
	sbc  e                                           ; $518e: $9b
	db   $dd                                         ; $518f: $dd
	db   $dd                                         ; $5190: $dd
	db   $db                                         ; $5191: $db
	cp   d                                           ; $5192: $ba
	cp   e                                           ; $5193: $bb
	xor  e                                           ; $5194: $ab
	sbc  e                                           ; $5195: $9b
	xor  e                                           ; $5196: $ab
	xor  d                                           ; $5197: $aa
	add  [hl]                                        ; $5198: $86
	ld   b, c                                        ; $5199: $41
	inc  sp                                          ; $519a: $33
	inc  sp                                          ; $519b: $33
	ld   de, $6712                                   ; $519c: $11 $12 $67
	cp   b                                           ; $519f: $b8
	sub  a                                           ; $51a0: $97
	cp   l                                           ; $51a1: $bd
	rst  $28                                         ; $51a2: $ef
	call z, $bb9a                                    ; $51a3: $cc $9a $bb
	call c, $9ab8                                    ; $51a6: $dc $b8 $9a
	xor  h                                           ; $51a9: $ac
	add  a                                           ; $51aa: $87
	ld   de, $5217                                   ; $51ab: $11 $17 $52
	ld   hl, $7a21                                   ; $51ae: $21 $21 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51b1: $cf
	xor  e                                           ; $51b2: $ab
	ld   l, b                                        ; $51b3: $68
	xor  e                                           ; $51b4: $ab
	ei                                               ; $51b5: $fb
	add  e                                           ; $51b6: $83
	ld   e, c                                        ; $51b7: $59
	rst  $38                                         ; $51b8: $ff
	db   $fc                                         ; $51b9: $fc
	dec  [hl]                                        ; $51ba: $35
	ld   a, d                                        ; $51bb: $7a
	or   c                                           ; $51bc: $b1
	ld   de, $ff1e                                   ; $51bd: $11 $1e $ff
	pop  af                                          ; $51c0: $f1
	ld   de, $ffef                                   ; $51c1: $11 $ef $ff
	ld   de, rAUD1HIGH                                   ; $51c4: $11 $14 $ff
	push af                                          ; $51c7: $f5
	ld   de, $ff5f                                   ; $51c8: $11 $5f $ff
	add  d                                           ; $51cb: $82
	inc  d                                           ; $51cc: $14

jr_0b0_51cd:
	add  a                                           ; $51cd: $87
	ld   b, c                                        ; $51ce: $41
	ld   de, $ffff                                   ; $51cf: $11 $ff $ff
	ld   de, $ff16                                   ; $51d2: $11 $16 $ff
	pop  af                                          ; $51d5: $f1
	ld   de, $ffaf                                   ; $51d6: $11 $af $ff
	ld   de, $ff15                                   ; $51d9: $11 $15 $ff
	ldh  a, [c]                                      ; $51dc: $f2
	inc  de                                          ; $51dd: $13
	cp   a                                           ; $51de: $bf
	ld   sp, $1f11                                   ; $51df: $31 $11 $1f
	rst  $38                                         ; $51e2: $ff
	pop  af                                          ; $51e3: $f1
	ld   de, $9fff                                   ; $51e4: $11 $ff $9f
	ld   de, $ffbf                                   ; $51e7: $11 $bf $ff
	pop  hl                                          ; $51ea: $e1
	inc  d                                           ; $51eb: $14
	rst  $38                                         ; $51ec: $ff
	rst  $38                                         ; $51ed: $ff
	inc  de                                          ; $51ee: $13
	ld   l, h                                        ; $51ef: $6c
	sub  c                                           ; $51f0: $91
	ld   de, $ff1d                                   ; $51f1: $11 $1d $ff
	pop  af                                          ; $51f4: $f1
	ld   de, $af1f                                   ; $51f5: $11 $1f $af
	ld   de, $fffb                                   ; $51f8: $11 $fb $ff
	pop  bc                                          ; $51fb: $c1
	jr   jr_0b0_51cd                                 ; $51fc: $18 $cf

	cp   $11                                         ; $51fe: $fe $11
	ld   e, c                                        ; $5200: $59
	pop  af                                          ; $5201: $f1
	ld   de, $ff1f                                   ; $5202: $11 $1f $ff
	pop  af                                          ; $5205: $f1
	ld   de, $ff1f                                   ; $5206: $11 $1f $ff
	ld   de, $fffe                                   ; $5209: $11 $fe $ff
	ld   hl, $ff1d                                   ; $520c: $21 $1d $ff
	ld   hl, sp+$11                                  ; $520f: $f8 $11
	ld   e, e                                        ; $5211: $5b
	pop  af                                          ; $5212: $f1
	ld   de, $ff1f                                   ; $5213: $11 $1f $ff
	pop  af                                          ; $5216: $f1
	ld   de, $efff                                   ; $5217: $11 $ff $ef
	ld   de, $f3ff                                   ; $521a: $11 $ff $f3
	ld   de, $ff1f                                   ; $521d: $11 $1f $ff
	pop  bc                                          ; $5220: $c1
	ld   de, $518f                                   ; $5221: $11 $8f $51
	ld   de, $ffff                                   ; $5224: $11 $ff $ff
	ld   de, $ff1f                                   ; $5227: $11 $1f $ff
	pop  af                                          ; $522a: $f1
	rra                                              ; $522b: $1f
	rst  $38                                         ; $522c: $ff
	ld   de, rAUD1LEN                                   ; $522d: $11 $11 $ff
	or   $11                                         ; $5230: $f6 $11
	dec  e                                           ; $5232: $1d
	ldh  a, [c]                                      ; $5233: $f2
	ld   de, $ffaf                                   ; $5234: $11 $af $ff
	ld   de, rAUD1LEN                                   ; $5237: $11 $11 $ff
	pop  af                                          ; $523a: $f1
	rra                                              ; $523b: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $523c: $cf
	pop  af                                          ; $523d: $f1
	ld   de, $ffff                                   ; $523e: $11 $ff $ff
	ld   de, $f618                                   ; $5241: $11 $18 $f6
	ld   de, $ff7f                                   ; $5244: $11 $7f $ff
	ld   de, rAUD1LEN                                   ; $5247: $11 $11 $ff
	pop  af                                          ; $524a: $f1
	rra                                              ; $524b: $1f
	rst  $28                                         ; $524c: $ef
	pop  af                                          ; $524d: $f1
	ld   de, $feff                                   ; $524e: $11 $ff $fe
	ld   de, $d11a                                   ; $5251: $11 $1a $d1
	ld   de, $ffff                                   ; $5254: $11 $ff $ff
	ld   de, $ff18                                   ; $5257: $11 $18 $ff
	pop  af                                          ; $525a: $f1
	rra                                              ; $525b: $1f
	rst  $38                                         ; $525c: $ff
	ld   de, $ff15                                   ; $525d: $11 $15 $ff
	pop  af                                          ; $5260: $f1
	ld   de, $813f                                   ; $5261: $11 $3f $81
	rra                                              ; $5264: $1f
	rst  $38                                         ; $5265: $ff
	pop  af                                          ; $5266: $f1
	ld   de, $ff1f                                   ; $5267: $11 $1f $ff
	ld   de, $f6ff                                   ; $526a: $11 $ff $f6
	ld   de, $ff2f                                   ; $526d: $11 $2f $ff
	ld   de, $c612                                   ; $5270: $11 $12 $c6
	ld   de, $ffff                                   ; $5273: $11 $ff $ff
	ld   de, $ff19                                   ; $5276: $11 $19 $ff
	pop  af                                          ; $5279: $f1
	rra                                              ; $527a: $1f
	rst  $28                                         ; $527b: $ef
	ld   de, $ff17                                   ; $527c: $11 $17 $ff
	pop  af                                          ; $527f: $f1
	ld   de, $113c                                   ; $5280: $11 $3c $11
	adc  a                                           ; $5283: $8f
	rst  $38                                         ; $5284: $ff
	ld   sp, rAUD1LEN                                   ; $5285: $31 $11 $ff
	ld   sp, hl                                      ; $5288: $f9
	rra                                              ; $5289: $1f
	ld   a, a                                        ; $528a: $7f
	pop  af                                          ; $528b: $f1
	ld   de, $f6ff                                   ; $528c: $11 $ff $f6
	ld   de, $1117                                   ; $528f: $11 $17 $11
	ld   c, a                                        ; $5292: $4f
	rst  $38                                         ; $5293: $ff
	pop  de                                          ; $5294: $d1
	ld   de, $ffff                                   ; $5295: $11 $ff $ff
	rra                                              ; $5298: $1f
	rst  $38                                         ; $5299: $ff
	pop  af                                          ; $529a: $f1
	ld   de, $faff                                   ; $529b: $11 $ff $fa
	ld   de, $1114                                   ; $529e: $11 $14 $11
	rra                                              ; $52a1: $1f
	rst  $38                                         ; $52a2: $ff
	pop  af                                          ; $52a3: $f1
	ld   de, $ffff                                   ; $52a4: $11 $ff $ff
	rra                                              ; $52a7: $1f
	rst  JumpTable                                         ; $52a8: $df
	pop  af                                          ; $52a9: $f1
	ld   hl, $fdff                                   ; $52aa: $21 $ff $fd
	ld   de, $1111                                   ; $52ad: $11 $11 $11
	ccf                                              ; $52b0: $3f
	rst  $38                                         ; $52b1: $ff
	pop  af                                          ; $52b2: $f1
	ld   de, $dfff                                   ; $52b3: $11 $ff $df
	rra                                              ; $52b6: $1f
	rst  $38                                         ; $52b7: $ff
	pop  hl                                          ; $52b8: $e1
	dec  d                                           ; $52b9: $15
	rst  $38                                         ; $52ba: $ff
	pop  af                                          ; $52bb: $f1
	ld   de, $1111                                   ; $52bc: $11 $11 $11
	rst  JumpTable                                         ; $52bf: $df
	rst  $38                                         ; $52c0: $ff
	ld   de, rAUD1ENV                                   ; $52c1: $11 $12 $ff
	pop  af                                          ; $52c4: $f1
	rra                                              ; $52c5: $1f
	rst  $38                                         ; $52c6: $ff
	ld   [hl], c                                     ; $52c7: $71
	rra                                              ; $52c8: $1f
	rst  $38                                         ; $52c9: $ff
	pop  hl                                          ; $52ca: $e1
	ld   de, $117c                                   ; $52cb: $11 $7c $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52ce: $cf
	rst  $38                                         ; $52cf: $ff
	ld   de, $ff16                                   ; $52d0: $11 $16 $ff
	di                                               ; $52d3: $f3
	dec  de                                          ; $52d4: $1b
	xor  h                                           ; $52d5: $ac
	ld   b, c                                        ; $52d6: $41
	ld   l, a                                        ; $52d7: $6f
	rst  $38                                         ; $52d8: $ff
	ld   b, c                                        ; $52d9: $41
	ld   de, $116a                                   ; $52da: $11 $6a $11
	rst  $38                                         ; $52dd: $ff
	rst  $38                                         ; $52de: $ff
	ld   de, $ff1a                                   ; $52df: $11 $1a $ff
	pop  af                                          ; $52e2: $f1
	rra                                              ; $52e3: $1f
	rst  $38                                         ; $52e4: $ff
	ld   sp, $ff6f                                   ; $52e5: $31 $6f $ff
	ld   de, $f811                                   ; $52e8: $11 $11 $f8
	ld   de, $ffff                                   ; $52eb: $11 $ff $ff
	ld   de, $ff1d                                   ; $52ee: $11 $1d $ff
	pop  af                                          ; $52f1: $f1
	inc  e                                           ; $52f2: $1c
	db   $fc                                         ; $52f3: $fc
	ld   sp, $feff                                   ; $52f4: $31 $ff $fe
	ld   de, $f217                                   ; $52f7: $11 $17 $f2
	ld   de, $ffff                                   ; $52fa: $11 $ff $ff
	ld   de, $ff1f                                   ; $52fd: $11 $1f $ff
	pop  af                                          ; $5300: $f1
	rla                                              ; $5301: $17
	rst  $28                                         ; $5302: $ef
	db   $fc                                         ; $5303: $fc
	rst  $38                                         ; $5304: $ff
	di                                               ; $5305: $f3
	ld   de, $9119                                   ; $5306: $11 $19 $91
	ld   de, $f8ff                                   ; $5309: $11 $ff $f8
	ld   de, $ff1f                                   ; $530c: $11 $1f $ff
	ld   h, c                                        ; $530f: $61
	ccf                                              ; $5310: $3f
	cp   $67                                         ; $5311: $fe $67
	rst  $38                                         ; $5313: $ff
	pop  af                                          ; $5314: $f1
	ld   de, $e12f                                   ; $5315: $11 $2f $e1
	ld   de, $ff1f                                   ; $5318: $11 $1f $ff
	ld   de, $ff1c                                   ; $531b: $11 $1c $ff
	pop  af                                          ; $531e: $f1
	jr   @+$01                                       ; $531f: $18 $ff

	and  $8f                                         ; $5321: $e6 $8f
	rst  $38                                         ; $5323: $ff
	ld   de, $e816                                   ; $5324: $11 $16 $e8
	ld   de, $ff19                                   ; $5327: $11 $19 $ff
	pop  af                                          ; $532a: $f1
	ld   de, $f6ff                                   ; $532b: $11 $ff $f6
	ld   de, $f8ff                                   ; $532e: $11 $ff $f8
	dec  de                                          ; $5331: $1b
	rst  $38                                         ; $5332: $ff
	pop  af                                          ; $5333: $f1
	ld   de, $618e                                   ; $5334: $11 $8e $61
	ld   de, $ff1f                                   ; $5337: $11 $1f $ff
	ld   d, c                                        ; $533a: $51
	rla                                              ; $533b: $17
	rst  $38                                         ; $533c: $ff
	pop  de                                          ; $533d: $d1
	dec  de                                          ; $533e: $1b
	rst  $38                                         ; $533f: $ff
	ld   d, c                                        ; $5340: $51
	ld   l, a                                        ; $5341: $6f
	rst  $38                                         ; $5342: $ff
	ld   h, c                                        ; $5343: $61
	inc  de                                          ; $5344: $13
	sbc  b                                           ; $5345: $98
	ld   hl, $1c11                                   ; $5346: $21 $11 $1c
	rst  $38                                         ; $5349: $ff
	or   c                                           ; $534a: $b1
	inc  d                                           ; $534b: $14
	rst  $38                                         ; $534c: $ff
	or   $6b                                         ; $534d: $f6 $6b
	rst  $38                                         ; $534f: $ff
	add  e                                           ; $5350: $83
	ld   a, a                                        ; $5351: $7f
	rst  $38                                         ; $5352: $ff
	pop  bc                                          ; $5353: $c1
	dec  d                                           ; $5354: $15
	xor  c                                           ; $5355: $a9
	ld   h, c                                        ; $5356: $61
	ld   de, $cf11                                   ; $5357: $11 $11 $cf
	db   $fc                                         ; $535a: $fc
	ld   [de], a                                     ; $535b: $12
	sbc  [hl]                                        ; $535c: $9e
	db   $fd                                         ; $535d: $fd
	ld   a, b                                        ; $535e: $78
	rst  JumpTable                                         ; $535f: $df
	ld   sp, hl                                      ; $5360: $f9
	ld   l, c                                        ; $5361: $69
	rst  $38                                         ; $5362: $ff
	cp   $21                                         ; $5363: $fe $21
	ld   b, [hl]                                     ; $5365: $46
	sub  [hl]                                        ; $5366: $96
	ld   bc, $1411                                   ; $5367: $01 $11 $14
	sbc  a                                           ; $536a: $9f
	ld   a, [$7b33]                                  ; $536b: $fa $33 $7b
	cp   $ac                                         ; $536e: $fe $ac
	rst  JumpTable                                         ; $5370: $df
	ld   [$ff5d], a                                  ; $5371: $ea $5d $ff
	or   $11                                         ; $5374: $f6 $11
	ld   l, e                                        ; $5376: $6b
	ld   h, h                                        ; $5377: $64
	ld   hl, $1111                                   ; $5378: $21 $11 $11
	ld   b, [hl]                                     ; $537b: $46
	rst  $28                                         ; $537c: $ef
	ld   sp, $ff6c                                   ; $537d: $31 $6c $ff
	add  l                                           ; $5380: $85
	xor  [hl]                                        ; $5381: $ae
	rst  $38                                         ; $5382: $ff
	ld   d, [hl]                                     ; $5383: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5384: $cf
	rst  $38                                         ; $5385: $ff
	ld   [hl], $36                                   ; $5386: $36 $36
	add  $34                                         ; $5388: $c6 $34
	ld   [de], a                                     ; $538a: $12
	ld   de, $2b11                                   ; $538b: $11 $11 $2b
	ld   sp, hl                                      ; $538e: $f9
	ld   c, d                                        ; $538f: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5390: $cf
	ld   sp, hl                                      ; $5391: $f9
	ld   l, e                                        ; $5392: $6b
	rst  $38                                         ; $5393: $ff
	ld   hl, sp+$37                                  ; $5394: $f8 $37
	rst  $38                                         ; $5396: $ff
	ei                                               ; $5397: $fb
	ld   [hl], h                                     ; $5398: $74
	ld   a, c                                        ; $5399: $79
	ld   h, h                                        ; $539a: $64
	ld   b, d                                        ; $539b: $42
	ld   h, l                                        ; $539c: $65
	ld   de, $1611                                   ; $539d: $11 $11 $16
	add  [hl]                                        ; $53a0: $86
	cp   [hl]                                        ; $53a1: $be
	adc  l                                           ; $53a2: $8d
	rst  ToBoot                                         ; $53a3: $c7
	sbc  h                                           ; $53a4: $9c
	xor  $f8                                         ; $53a5: $ee $f8
	ld   a, [hl]                                     ; $53a7: $7e
	rst  JumpTable                                         ; $53a8: $df
	rst  $30                                         ; $53a9: $f7
	dec  sp                                          ; $53aa: $3b
	and  a                                           ; $53ab: $a7
	ld   [hl], h                                     ; $53ac: $74
	ld   a, c                                        ; $53ad: $79
	add  h                                           ; $53ae: $84
	ld   de, $1213                                   ; $53af: $11 $13 $12
	ld   sp, $8fa4                                   ; $53b2: $31 $a4 $8f
	ld   e, e                                        ; $53b5: $5b
	ei                                               ; $53b6: $fb
	ld   e, d                                        ; $53b7: $5a
	db   $fc                                         ; $53b8: $fc
	ld   a, [$ff6c]                                  ; $53b9: $fa $6c $ff
	jp   hl                                          ; $53bc: $e9


	ld   [hl], $9f                                   ; $53bd: $36 $9f
	add  h                                           ; $53bf: $84
	add  l                                           ; $53c0: $85
	ld   l, b                                        ; $53c1: $68
	ld   b, c                                        ; $53c2: $41
	ld   sp, $4714                                   ; $53c3: $31 $14 $47
	ld   sp, $df26                                   ; $53c6: $31 $26 $df
	rst  $30                                         ; $53c9: $f7
	add  hl, de                                      ; $53ca: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53cb: $cf
	ld   sp, hl                                      ; $53cc: $f9
	ld   c, e                                        ; $53cd: $4b
	adc  $fc                                         ; $53ce: $ce $fc
	add  a                                           ; $53d0: $87
	sub  a                                           ; $53d1: $97
	cp   e                                           ; $53d2: $bb
	ld   a, c                                        ; $53d3: $79
	ld   d, a                                        ; $53d4: $57
	halt                                             ; $53d5: $76
	ld   d, d                                        ; $53d6: $52
	ld   [hl], d                                     ; $53d7: $72
	inc  de                                          ; $53d8: $13
	inc  sp                                          ; $53d9: $33
	ld   c, b                                        ; $53da: $48
	ld   [de], a                                     ; $53db: $12
	xor  b                                           ; $53dc: $a8
	rst  $28                                         ; $53dd: $ef
	sub  [hl]                                        ; $53de: $96
	sub  a                                           ; $53df: $97
	adc  $be                                         ; $53e0: $ce $be
	adc  e                                           ; $53e2: $8b
	xor  d                                           ; $53e3: $aa
	db   $eb                                         ; $53e4: $eb
	cp   b                                           ; $53e5: $b8
	ld   e, c                                        ; $53e6: $59
	cp   e                                           ; $53e7: $bb
	and  l                                           ; $53e8: $a5
	ld   e, c                                        ; $53e9: $59
	and  [hl]                                        ; $53ea: $a6
	ld   b, h                                        ; $53eb: $44
	ld   [de], a                                     ; $53ec: $12
	ld   d, h                                        ; $53ed: $54
	ld   b, l                                        ; $53ee: $45
	ld   b, a                                        ; $53ef: $47

jr_0b0_53f0:
	ld   [hl], e                                     ; $53f0: $73
	dec  h                                           ; $53f1: $25
	adc  $bb                                         ; $53f2: $ce $bb
	ld   d, a                                        ; $53f4: $57
	cp   h                                           ; $53f5: $bc
	jp   c, $fe75                                    ; $53f6: $da $75 $fe

	cp   h                                           ; $53f9: $bc
	ld   h, a                                        ; $53fa: $67
	sbc  h                                           ; $53fb: $9c
	xor  c                                           ; $53fc: $a9
	sbc  b                                           ; $53fd: $98
	add  a                                           ; $53fe: $87
	ld   d, a                                        ; $53ff: $57
	ld   h, a                                        ; $5400: $67
	ld   d, h                                        ; $5401: $54
	ld   [hl], c                                     ; $5402: $71
	ld   c, b                                        ; $5403: $48
	ld   h, a                                        ; $5404: $67
	ld   l, c                                        ; $5405: $69
	add  a                                           ; $5406: $87
	ld   h, a                                        ; $5407: $67
	sbc  d                                           ; $5408: $9a
	add  $c8                                         ; $5409: $c6 $c8
	ld   l, [hl]                                     ; $540b: $6e
	ld   h, a                                        ; $540c: $67
	adc  b                                           ; $540d: $88
	xor  d                                           ; $540e: $aa
	and  [hl]                                        ; $540f: $a6
	and  a                                           ; $5410: $a7
	ld   a, e                                        ; $5411: $7b
	ld   h, h                                        ; $5412: $64
	ld   d, l                                        ; $5413: $55
	xor  e                                           ; $5414: $ab
	halt                                             ; $5415: $76
	jr   jr_0b0_53f0                                 ; $5416: $18 $d8

	and  l                                           ; $5418: $a5
	ld   e, d                                        ; $5419: $5a
	sbc  h                                           ; $541a: $9c
	adc  b                                           ; $541b: $88
	ld   b, [hl]                                     ; $541c: $46
	or   $aa                                         ; $541d: $f6 $aa
	add  hl, sp                                      ; $541f: $39
	sbc  e                                           ; $5420: $9b
	cp   e                                           ; $5421: $bb
	ld   d, h                                        ; $5422: $54
	xor  d                                           ; $5423: $aa
	xor  c                                           ; $5424: $a9
	ld   b, c                                        ; $5425: $41
	scf                                              ; $5426: $37
	ret                                              ; $5427: $c9


	halt                                             ; $5428: $76
	inc  e                                           ; $5429: $1c
	db   $e3                                         ; $542a: $e3
	halt                                             ; $542b: $76
	ld   e, l                                        ; $542c: $5d
	ret                                              ; $542d: $c9


	scf                                              ; $542e: $37
	ld   [hl], a                                     ; $542f: $77
	ld   sp, hl                                      ; $5430: $f9
	ld   a, b                                        ; $5431: $78
	ld   a, d                                        ; $5432: $7a
	xor  l                                           ; $5433: $ad
	sbc  c                                           ; $5434: $99
	or   a                                           ; $5435: $b7
	sbc  c                                           ; $5436: $99
	ld   l, c                                        ; $5437: $69
	ld   h, [hl]                                     ; $5438: $66
	ld   h, [hl]                                     ; $5439: $66
	halt                                             ; $543a: $76
	ld   [hl], a                                     ; $543b: $77
	ld   b, l                                        ; $543c: $45
	xor  c                                           ; $543d: $a9
	ld   [hl], a                                     ; $543e: $77
	ld   l, b                                        ; $543f: $68
	sub  a                                           ; $5440: $97
	ld   b, a                                        ; $5441: $47
	sbc  d                                           ; $5442: $9a
	push bc                                          ; $5443: $c5
	ld   c, h                                        ; $5444: $4c
	xor  e                                           ; $5445: $ab
	push bc                                          ; $5446: $c5
	adc  a                                           ; $5447: $8f
	cp   d                                           ; $5448: $ba
	add  l                                           ; $5449: $85
	ld   a, l                                        ; $544a: $7d
	or   a                                           ; $544b: $b7
	sub  [hl]                                        ; $544c: $96
	ld   a, c                                        ; $544d: $79
	halt                                             ; $544e: $76
	ld   b, [hl]                                     ; $544f: $46
	halt                                             ; $5450: $76
	and  l                                           ; $5451: $a5
	scf                                              ; $5452: $37
	ld   e, b                                        ; $5453: $58
	sub  [hl]                                        ; $5454: $96
	ld   c, c                                        ; $5455: $49
	add  d                                           ; $5456: $82
	cp   b                                           ; $5457: $b8
	ld   a, [hl]                                     ; $5458: $7e
	sbc  b                                           ; $5459: $98
	sbc  c                                           ; $545a: $99
	ld   a, h                                        ; $545b: $7c
	ret  z                                           ; $545c: $c8

	cp   b                                           ; $545d: $b8
	ld   a, e                                        ; $545e: $7b
	cp   b                                           ; $545f: $b8
	adc  d                                           ; $5460: $8a
	ld   l, c                                        ; $5461: $69
	sub  [hl]                                        ; $5462: $96
	ld   d, [hl]                                     ; $5463: $56
	ld   b, h                                        ; $5464: $44
	sub  [hl]                                        ; $5465: $96
	ld   d, a                                        ; $5466: $57
	halt                                             ; $5467: $76
	ld   [hl], l                                     ; $5468: $75
	ld   e, e                                        ; $5469: $5b
	and  a                                           ; $546a: $a7
	halt                                             ; $546b: $76
	ld   a, c                                        ; $546c: $79
	cp   d                                           ; $546d: $ba
	add  [hl]                                        ; $546e: $86
	ld   a, c                                        ; $546f: $79
	db   $dd                                         ; $5470: $dd
	sbc  c                                           ; $5471: $99
	halt                                             ; $5472: $76
	cp   l                                           ; $5473: $bd
	or   a                                           ; $5474: $b7
	ld   h, l                                        ; $5475: $65
	ld   a, d                                        ; $5476: $7a
	and  a                                           ; $5477: $a7
	ld   h, l                                        ; $5478: $65
	ld   l, c                                        ; $5479: $69
	adc  b                                           ; $547a: $88
	halt                                             ; $547b: $76
	ld   h, [hl]                                     ; $547c: $66
	sbc  d                                           ; $547d: $9a
	sub  a                                           ; $547e: $97
	halt                                             ; $547f: $76
	adc  c                                           ; $5480: $89
	sbc  c                                           ; $5481: $99
	ld   d, l                                        ; $5482: $55
	xor  c                                           ; $5483: $a9
	and  a                                           ; $5484: $a7
	ld   [hl], a                                     ; $5485: $77
	ld   a, e                                        ; $5486: $7b
	ld   [hl], a                                     ; $5487: $77
	sbc  b                                           ; $5488: $98
	adc  b                                           ; $5489: $88
	sbc  b                                           ; $548a: $98
	sbc  c                                           ; $548b: $99
	ld   a, b                                        ; $548c: $78
	add  a                                           ; $548d: $87
	adc  d                                           ; $548e: $8a
	sub  a                                           ; $548f: $97
	ld   a, c                                        ; $5490: $79
	sbc  d                                           ; $5491: $9a
	sub  a                                           ; $5492: $97
	ld   [hl], a                                     ; $5493: $77
	adc  d                                           ; $5494: $8a
	add  a                                           ; $5495: $87
	halt                                             ; $5496: $76
	adc  b                                           ; $5497: $88
	adc  b                                           ; $5498: $88
	ld   a, b                                        ; $5499: $78
	ld   a, b                                        ; $549a: $78
	sbc  c                                           ; $549b: $99
	ld   [hl], a                                     ; $549c: $77
	adc  b                                           ; $549d: $88
	sbc  d                                           ; $549e: $9a
	add  a                                           ; $549f: $87
	ld   [hl], a                                     ; $54a0: $77
	adc  d                                           ; $54a1: $8a
	sub  a                                           ; $54a2: $97
	adc  c                                           ; $54a3: $89
	adc  b                                           ; $54a4: $88
	adc  b                                           ; $54a5: $88
	adc  b                                           ; $54a6: $88
	ld   a, b                                        ; $54a7: $78
	sbc  c                                           ; $54a8: $99
	ld   [hl], a                                     ; $54a9: $77
	ld   a, b                                        ; $54aa: $78
	sbc  c                                           ; $54ab: $99
	halt                                             ; $54ac: $76
	ld   [hl], a                                     ; $54ad: $77
	sbc  b                                           ; $54ae: $98
	ld   [hl], a                                     ; $54af: $77
	ld   a, c                                        ; $54b0: $79
	sbc  c                                           ; $54b1: $99
	add  a                                           ; $54b2: $87
	ld   a, b                                        ; $54b3: $78
	adc  c                                           ; $54b4: $89
	adc  b                                           ; $54b5: $88
	ld   a, b                                        ; $54b6: $78
	adc  b                                           ; $54b7: $88
	sbc  c                                           ; $54b8: $99
	add  a                                           ; $54b9: $87
	adc  c                                           ; $54ba: $89
	sbc  b                                           ; $54bb: $98
	add  a                                           ; $54bc: $87
	ld   a, b                                        ; $54bd: $78
	adc  b                                           ; $54be: $88
	add  a                                           ; $54bf: $87
	ld   a, b                                        ; $54c0: $78
	ld   a, b                                        ; $54c1: $78
	sbc  b                                           ; $54c2: $98
	adc  b                                           ; $54c3: $88
	adc  c                                           ; $54c4: $89
	sbc  b                                           ; $54c5: $98
	adc  b                                           ; $54c6: $88
	adc  c                                           ; $54c7: $89
	adc  b                                           ; $54c8: $88
	adc  b                                           ; $54c9: $88
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	adc  b                                           ; $54cc: $88
	adc  b                                           ; $54cd: $88
	adc  b                                           ; $54ce: $88
	ld   a, b                                        ; $54cf: $78
	adc  b                                           ; $54d0: $88
	adc  b                                           ; $54d1: $88
	ld   a, b                                        ; $54d2: $78
	adc  b                                           ; $54d3: $88
	adc  b                                           ; $54d4: $88
	adc  c                                           ; $54d5: $89
	sbc  b                                           ; $54d6: $98
	adc  b                                           ; $54d7: $88
	adc  c                                           ; $54d8: $89
	sbc  b                                           ; $54d9: $98
	add  a                                           ; $54da: $87
	adc  c                                           ; $54db: $89
	sbc  b                                           ; $54dc: $98
	add  a                                           ; $54dd: $87
	adc  b                                           ; $54de: $88
	sbc  c                                           ; $54df: $99
	add  a                                           ; $54e0: $87
	adc  b                                           ; $54e1: $88
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	ld   a, b                                        ; $54e4: $78
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	adc  b                                           ; $54e7: $88
	sbc  b                                           ; $54e8: $98
	adc  b                                           ; $54e9: $88
	adc  b                                           ; $54ea: $88
	adc  b                                           ; $54eb: $88
	adc  b                                           ; $54ec: $88
	adc  b                                           ; $54ed: $88
	adc  b                                           ; $54ee: $88
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  b                                           ; $54f1: $88
	adc  b                                           ; $54f2: $88
	adc  b                                           ; $54f3: $88
	adc  b                                           ; $54f4: $88
	adc  c                                           ; $54f5: $89
	adc  b                                           ; $54f6: $88
	adc  b                                           ; $54f7: $88
	adc  b                                           ; $54f8: $88
	adc  b                                           ; $54f9: $88
	adc  b                                           ; $54fa: $88
	adc  b                                           ; $54fb: $88
	adc  b                                           ; $54fc: $88
	adc  b                                           ; $54fd: $88
	adc  b                                           ; $54fe: $88
	adc  b                                           ; $54ff: $88
	adc  b                                           ; $5500: $88
	adc  b                                           ; $5501: $88
	adc  b                                           ; $5502: $88
	adc  b                                           ; $5503: $88
	adc  b                                           ; $5504: $88
	adc  b                                           ; $5505: $88
	adc  b                                           ; $5506: $88
	adc  b                                           ; $5507: $88
	adc  b                                           ; $5508: $88
	adc  b                                           ; $5509: $88
	adc  b                                           ; $550a: $88
	adc  b                                           ; $550b: $88
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	adc  b                                           ; $550e: $88
	adc  b                                           ; $550f: $88
	adc  b                                           ; $5510: $88
	adc  b                                           ; $5511: $88
	adc  b                                           ; $5512: $88
	adc  b                                           ; $5513: $88
	adc  b                                           ; $5514: $88
	adc  b                                           ; $5515: $88
	adc  b                                           ; $5516: $88
	adc  b                                           ; $5517: $88
	adc  b                                           ; $5518: $88
	adc  b                                           ; $5519: $88
	adc  b                                           ; $551a: $88
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
	adc  b                                           ; $55c5: $88
	adc  b                                           ; $55c6: $88
	adc  b                                           ; $55c7: $88
	adc  b                                           ; $55c8: $88
	adc  b                                           ; $55c9: $88
	adc  b                                           ; $55ca: $88
	adc  b                                           ; $55cb: $88
	adc  b                                           ; $55cc: $88
	adc  b                                           ; $55cd: $88
	adc  b                                           ; $55ce: $88
	adc  b                                           ; $55cf: $88
	adc  b                                           ; $55d0: $88
	adc  b                                           ; $55d1: $88
	adc  b                                           ; $55d2: $88
	adc  b                                           ; $55d3: $88
	adc  b                                           ; $55d4: $88
	adc  b                                           ; $55d5: $88
	adc  b                                           ; $55d6: $88
	adc  b                                           ; $55d7: $88
	adc  b                                           ; $55d8: $88
	adc  b                                           ; $55d9: $88
	adc  b                                           ; $55da: $88
	adc  b                                           ; $55db: $88
	adc  b                                           ; $55dc: $88
	adc  b                                           ; $55dd: $88
	adc  b                                           ; $55de: $88
	adc  b                                           ; $55df: $88
	adc  b                                           ; $55e0: $88
	adc  b                                           ; $55e1: $88
	adc  b                                           ; $55e2: $88
	adc  b                                           ; $55e3: $88
	adc  b                                           ; $55e4: $88
	adc  b                                           ; $55e5: $88
	adc  b                                           ; $55e6: $88
	adc  b                                           ; $55e7: $88
	adc  b                                           ; $55e8: $88
	adc  b                                           ; $55e9: $88
	adc  b                                           ; $55ea: $88
	adc  b                                           ; $55eb: $88
	adc  b                                           ; $55ec: $88
	adc  b                                           ; $55ed: $88
	adc  b                                           ; $55ee: $88
	adc  b                                           ; $55ef: $88
	adc  b                                           ; $55f0: $88
	adc  b                                           ; $55f1: $88
	adc  b                                           ; $55f2: $88
	adc  b                                           ; $55f3: $88
	adc  b                                           ; $55f4: $88
	adc  b                                           ; $55f5: $88
	adc  b                                           ; $55f6: $88
	adc  b                                           ; $55f7: $88
	adc  b                                           ; $55f8: $88
	adc  b                                           ; $55f9: $88
	adc  b                                           ; $55fa: $88
	adc  b                                           ; $55fb: $88
	adc  b                                           ; $55fc: $88
	adc  b                                           ; $55fd: $88
	adc  b                                           ; $55fe: $88
	adc  b                                           ; $55ff: $88
	adc  b                                           ; $5600: $88
	adc  b                                           ; $5601: $88
	adc  b                                           ; $5602: $88
	adc  b                                           ; $5603: $88
	adc  b                                           ; $5604: $88
	adc  b                                           ; $5605: $88
	adc  b                                           ; $5606: $88
	adc  b                                           ; $5607: $88
	adc  b                                           ; $5608: $88
	adc  b                                           ; $5609: $88
	adc  b                                           ; $560a: $88
	adc  b                                           ; $560b: $88
	adc  b                                           ; $560c: $88
	adc  b                                           ; $560d: $88
	adc  b                                           ; $560e: $88
	adc  b                                           ; $560f: $88
	adc  b                                           ; $5610: $88
	adc  b                                           ; $5611: $88
	adc  b                                           ; $5612: $88
	adc  b                                           ; $5613: $88
	adc  b                                           ; $5614: $88
	adc  b                                           ; $5615: $88
	adc  b                                           ; $5616: $88
	adc  b                                           ; $5617: $88
	adc  b                                           ; $5618: $88
	adc  b                                           ; $5619: $88
	adc  b                                           ; $561a: $88
	adc  b                                           ; $561b: $88
	adc  b                                           ; $561c: $88
	adc  b                                           ; $561d: $88
	adc  b                                           ; $561e: $88
	adc  b                                           ; $561f: $88
	adc  b                                           ; $5620: $88
	adc  b                                           ; $5621: $88
	adc  b                                           ; $5622: $88
	adc  b                                           ; $5623: $88
	adc  b                                           ; $5624: $88
	adc  b                                           ; $5625: $88
	adc  b                                           ; $5626: $88
	adc  b                                           ; $5627: $88
	adc  b                                           ; $5628: $88
	adc  b                                           ; $5629: $88
	adc  b                                           ; $562a: $88
	adc  b                                           ; $562b: $88
	adc  b                                           ; $562c: $88
	adc  b                                           ; $562d: $88
	adc  b                                           ; $562e: $88
	adc  b                                           ; $562f: $88
	adc  b                                           ; $5630: $88
	adc  b                                           ; $5631: $88
	adc  b                                           ; $5632: $88
	adc  b                                           ; $5633: $88
	adc  b                                           ; $5634: $88
	adc  b                                           ; $5635: $88
	adc  b                                           ; $5636: $88
	adc  b                                           ; $5637: $88
	adc  b                                           ; $5638: $88
	adc  b                                           ; $5639: $88
	adc  b                                           ; $563a: $88
	adc  b                                           ; $563b: $88
	adc  b                                           ; $563c: $88
	adc  b                                           ; $563d: $88
	adc  b                                           ; $563e: $88
	adc  b                                           ; $563f: $88
	adc  b                                           ; $5640: $88
	adc  b                                           ; $5641: $88
	adc  b                                           ; $5642: $88
	adc  b                                           ; $5643: $88
	adc  b                                           ; $5644: $88
	adc  b                                           ; $5645: $88
	adc  b                                           ; $5646: $88
	adc  b                                           ; $5647: $88
	adc  b                                           ; $5648: $88
	adc  b                                           ; $5649: $88
	adc  b                                           ; $564a: $88
	adc  b                                           ; $564b: $88
	adc  b                                           ; $564c: $88
	adc  b                                           ; $564d: $88
	adc  b                                           ; $564e: $88
	adc  b                                           ; $564f: $88
	adc  b                                           ; $5650: $88
	adc  b                                           ; $5651: $88
	adc  b                                           ; $5652: $88
	adc  b                                           ; $5653: $88
	adc  b                                           ; $5654: $88
	adc  b                                           ; $5655: $88
	adc  b                                           ; $5656: $88
	adc  b                                           ; $5657: $88
	adc  b                                           ; $5658: $88
	adc  b                                           ; $5659: $88
	adc  b                                           ; $565a: $88
	adc  b                                           ; $565b: $88
	adc  b                                           ; $565c: $88
	adc  b                                           ; $565d: $88
	adc  b                                           ; $565e: $88
	adc  b                                           ; $565f: $88
	adc  b                                           ; $5660: $88
	adc  b                                           ; $5661: $88
	adc  b                                           ; $5662: $88
	adc  b                                           ; $5663: $88
	adc  b                                           ; $5664: $88
	adc  b                                           ; $5665: $88
	adc  b                                           ; $5666: $88
	adc  b                                           ; $5667: $88
	adc  b                                           ; $5668: $88
	adc  b                                           ; $5669: $88
	adc  b                                           ; $566a: $88
	adc  b                                           ; $566b: $88
	adc  b                                           ; $566c: $88
	adc  b                                           ; $566d: $88
	adc  b                                           ; $566e: $88
	adc  b                                           ; $566f: $88
	adc  b                                           ; $5670: $88
	adc  b                                           ; $5671: $88
	adc  b                                           ; $5672: $88
	adc  b                                           ; $5673: $88
	adc  b                                           ; $5674: $88
	adc  b                                           ; $5675: $88
	adc  b                                           ; $5676: $88
	adc  b                                           ; $5677: $88
	adc  b                                           ; $5678: $88
	adc  b                                           ; $5679: $88
	adc  b                                           ; $567a: $88
	adc  b                                           ; $567b: $88
	adc  b                                           ; $567c: $88
	adc  b                                           ; $567d: $88
	adc  b                                           ; $567e: $88
	adc  b                                           ; $567f: $88
	adc  b                                           ; $5680: $88
	adc  b                                           ; $5681: $88
	adc  b                                           ; $5682: $88
	adc  b                                           ; $5683: $88
	adc  b                                           ; $5684: $88
	adc  b                                           ; $5685: $88
	adc  b                                           ; $5686: $88
	adc  b                                           ; $5687: $88
	adc  b                                           ; $5688: $88
	adc  b                                           ; $5689: $88
	adc  b                                           ; $568a: $88
	adc  b                                           ; $568b: $88
	adc  b                                           ; $568c: $88
	adc  b                                           ; $568d: $88
	adc  b                                           ; $568e: $88
	adc  b                                           ; $568f: $88
	adc  b                                           ; $5690: $88
	adc  b                                           ; $5691: $88
	adc  b                                           ; $5692: $88
	adc  b                                           ; $5693: $88
	adc  b                                           ; $5694: $88

Call_0b0_5695:
	adc  b                                           ; $5695: $88
	adc  b                                           ; $5696: $88
	adc  b                                           ; $5697: $88
	adc  b                                           ; $5698: $88
	adc  b                                           ; $5699: $88
	adc  b                                           ; $569a: $88
	adc  b                                           ; $569b: $88
	adc  b                                           ; $569c: $88
	adc  b                                           ; $569d: $88
	adc  b                                           ; $569e: $88
	adc  b                                           ; $569f: $88
	adc  b                                           ; $56a0: $88
	adc  b                                           ; $56a1: $88
	adc  b                                           ; $56a2: $88
	adc  b                                           ; $56a3: $88
	adc  b                                           ; $56a4: $88
	adc  b                                           ; $56a5: $88
	adc  b                                           ; $56a6: $88
	adc  b                                           ; $56a7: $88
	adc  b                                           ; $56a8: $88
	adc  b                                           ; $56a9: $88
	adc  b                                           ; $56aa: $88
	adc  b                                           ; $56ab: $88
	adc  b                                           ; $56ac: $88
	adc  b                                           ; $56ad: $88
	adc  b                                           ; $56ae: $88
	adc  b                                           ; $56af: $88
	adc  b                                           ; $56b0: $88
	adc  b                                           ; $56b1: $88
	adc  b                                           ; $56b2: $88
	adc  b                                           ; $56b3: $88
	adc  b                                           ; $56b4: $88
	adc  b                                           ; $56b5: $88
	adc  b                                           ; $56b6: $88
	adc  b                                           ; $56b7: $88
	adc  b                                           ; $56b8: $88
	adc  b                                           ; $56b9: $88
	adc  b                                           ; $56ba: $88
	adc  b                                           ; $56bb: $88
	adc  b                                           ; $56bc: $88
	adc  b                                           ; $56bd: $88
	adc  b                                           ; $56be: $88
	adc  b                                           ; $56bf: $88
	adc  b                                           ; $56c0: $88
	adc  b                                           ; $56c1: $88
	adc  b                                           ; $56c2: $88
	adc  b                                           ; $56c3: $88
	adc  b                                           ; $56c4: $88
	adc  b                                           ; $56c5: $88
	adc  b                                           ; $56c6: $88
	adc  b                                           ; $56c7: $88
	adc  b                                           ; $56c8: $88
	adc  b                                           ; $56c9: $88
	adc  b                                           ; $56ca: $88
	adc  b                                           ; $56cb: $88
	adc  b                                           ; $56cc: $88
	adc  b                                           ; $56cd: $88
	adc  b                                           ; $56ce: $88
	adc  b                                           ; $56cf: $88
	adc  b                                           ; $56d0: $88
	adc  b                                           ; $56d1: $88
	adc  b                                           ; $56d2: $88
	adc  b                                           ; $56d3: $88
	adc  b                                           ; $56d4: $88
	adc  b                                           ; $56d5: $88
	adc  b                                           ; $56d6: $88
	adc  b                                           ; $56d7: $88
	adc  b                                           ; $56d8: $88
	adc  b                                           ; $56d9: $88
	adc  b                                           ; $56da: $88
	adc  b                                           ; $56db: $88
	adc  b                                           ; $56dc: $88
	adc  b                                           ; $56dd: $88
	adc  b                                           ; $56de: $88
	adc  b                                           ; $56df: $88
	adc  b                                           ; $56e0: $88
	adc  b                                           ; $56e1: $88
	adc  b                                           ; $56e2: $88
	adc  b                                           ; $56e3: $88
	adc  b                                           ; $56e4: $88
	adc  b                                           ; $56e5: $88
	adc  b                                           ; $56e6: $88
	adc  b                                           ; $56e7: $88
	adc  b                                           ; $56e8: $88
	adc  b                                           ; $56e9: $88
	adc  b                                           ; $56ea: $88
	adc  b                                           ; $56eb: $88
	adc  b                                           ; $56ec: $88
	adc  b                                           ; $56ed: $88
	adc  b                                           ; $56ee: $88
	adc  b                                           ; $56ef: $88
	adc  b                                           ; $56f0: $88
	adc  b                                           ; $56f1: $88
	adc  b                                           ; $56f2: $88
	adc  b                                           ; $56f3: $88
	adc  b                                           ; $56f4: $88
	adc  b                                           ; $56f5: $88
	adc  b                                           ; $56f6: $88
	adc  b                                           ; $56f7: $88
	adc  b                                           ; $56f8: $88
	adc  b                                           ; $56f9: $88
	adc  b                                           ; $56fa: $88
	adc  b                                           ; $56fb: $88
	adc  b                                           ; $56fc: $88
	adc  b                                           ; $56fd: $88
	adc  b                                           ; $56fe: $88
	adc  b                                           ; $56ff: $88
	adc  b                                           ; $5700: $88
	adc  b                                           ; $5701: $88
	adc  b                                           ; $5702: $88
	adc  b                                           ; $5703: $88
	adc  b                                           ; $5704: $88
	adc  b                                           ; $5705: $88
	adc  b                                           ; $5706: $88
	adc  b                                           ; $5707: $88
	adc  b                                           ; $5708: $88
	adc  b                                           ; $5709: $88
	adc  b                                           ; $570a: $88
	adc  b                                           ; $570b: $88
	adc  b                                           ; $570c: $88
	adc  b                                           ; $570d: $88
	adc  b                                           ; $570e: $88
	adc  b                                           ; $570f: $88
	adc  b                                           ; $5710: $88
	adc  b                                           ; $5711: $88
	adc  b                                           ; $5712: $88
	adc  b                                           ; $5713: $88
	adc  b                                           ; $5714: $88
	adc  b                                           ; $5715: $88
	adc  b                                           ; $5716: $88
	adc  b                                           ; $5717: $88
	adc  b                                           ; $5718: $88
	adc  b                                           ; $5719: $88
	adc  b                                           ; $571a: $88
	adc  b                                           ; $571b: $88
	adc  b                                           ; $571c: $88
	adc  b                                           ; $571d: $88
	adc  b                                           ; $571e: $88
	adc  b                                           ; $571f: $88
	adc  b                                           ; $5720: $88
	adc  b                                           ; $5721: $88
	adc  b                                           ; $5722: $88
	adc  b                                           ; $5723: $88
	adc  b                                           ; $5724: $88
	adc  b                                           ; $5725: $88
	adc  b                                           ; $5726: $88
	adc  b                                           ; $5727: $88
	adc  b                                           ; $5728: $88
	adc  b                                           ; $5729: $88
	adc  b                                           ; $572a: $88
	adc  b                                           ; $572b: $88
	adc  b                                           ; $572c: $88
	adc  b                                           ; $572d: $88
	adc  b                                           ; $572e: $88
	adc  b                                           ; $572f: $88
	adc  b                                           ; $5730: $88
	adc  b                                           ; $5731: $88
	adc  b                                           ; $5732: $88
	adc  b                                           ; $5733: $88
	adc  b                                           ; $5734: $88
	adc  b                                           ; $5735: $88
	adc  b                                           ; $5736: $88
	adc  b                                           ; $5737: $88
	adc  b                                           ; $5738: $88
	adc  b                                           ; $5739: $88
	adc  b                                           ; $573a: $88
	adc  b                                           ; $573b: $88
	adc  b                                           ; $573c: $88
	adc  b                                           ; $573d: $88
	adc  b                                           ; $573e: $88
	adc  b                                           ; $573f: $88
	adc  b                                           ; $5740: $88
	adc  b                                           ; $5741: $88
	adc  b                                           ; $5742: $88
	adc  b                                           ; $5743: $88
	adc  b                                           ; $5744: $88
	adc  b                                           ; $5745: $88
	adc  b                                           ; $5746: $88
	adc  b                                           ; $5747: $88
	adc  b                                           ; $5748: $88
	adc  b                                           ; $5749: $88
	adc  b                                           ; $574a: $88
	adc  b                                           ; $574b: $88
	adc  b                                           ; $574c: $88
	adc  b                                           ; $574d: $88
	adc  b                                           ; $574e: $88
	adc  b                                           ; $574f: $88
	adc  b                                           ; $5750: $88
	adc  b                                           ; $5751: $88
	adc  b                                           ; $5752: $88
	adc  b                                           ; $5753: $88
	adc  b                                           ; $5754: $88
	adc  b                                           ; $5755: $88
	adc  b                                           ; $5756: $88
	adc  b                                           ; $5757: $88
	adc  b                                           ; $5758: $88
	adc  b                                           ; $5759: $88
	adc  b                                           ; $575a: $88
	adc  b                                           ; $575b: $88
	adc  b                                           ; $575c: $88
	adc  b                                           ; $575d: $88
	adc  b                                           ; $575e: $88
	adc  b                                           ; $575f: $88
	adc  b                                           ; $5760: $88
	adc  b                                           ; $5761: $88
	adc  b                                           ; $5762: $88
	adc  b                                           ; $5763: $88
	adc  b                                           ; $5764: $88
	adc  b                                           ; $5765: $88
	adc  b                                           ; $5766: $88
	adc  b                                           ; $5767: $88
	adc  b                                           ; $5768: $88
	adc  b                                           ; $5769: $88
	adc  b                                           ; $576a: $88
	adc  b                                           ; $576b: $88
	adc  b                                           ; $576c: $88
	adc  b                                           ; $576d: $88
	adc  b                                           ; $576e: $88
	adc  b                                           ; $576f: $88
	adc  b                                           ; $5770: $88
	adc  b                                           ; $5771: $88
	adc  b                                           ; $5772: $88
	adc  b                                           ; $5773: $88
	adc  b                                           ; $5774: $88
	adc  b                                           ; $5775: $88
	adc  b                                           ; $5776: $88
	adc  b                                           ; $5777: $88
	adc  b                                           ; $5778: $88
	adc  b                                           ; $5779: $88
	adc  b                                           ; $577a: $88
	adc  b                                           ; $577b: $88
	adc  b                                           ; $577c: $88
	adc  b                                           ; $577d: $88
	adc  b                                           ; $577e: $88
	adc  b                                           ; $577f: $88
	adc  b                                           ; $5780: $88
	adc  b                                           ; $5781: $88
	adc  b                                           ; $5782: $88
	adc  b                                           ; $5783: $88
	adc  b                                           ; $5784: $88

Jump_0b0_5785:
	adc  b                                           ; $5785: $88
	adc  b                                           ; $5786: $88
	adc  b                                           ; $5787: $88
	adc  b                                           ; $5788: $88
	adc  b                                           ; $5789: $88
	adc  b                                           ; $578a: $88
	adc  b                                           ; $578b: $88
	adc  b                                           ; $578c: $88
	adc  b                                           ; $578d: $88
	adc  b                                           ; $578e: $88
	adc  b                                           ; $578f: $88
	adc  b                                           ; $5790: $88
	adc  b                                           ; $5791: $88
	adc  b                                           ; $5792: $88
	adc  b                                           ; $5793: $88
	adc  b                                           ; $5794: $88
	adc  b                                           ; $5795: $88
	adc  b                                           ; $5796: $88
	adc  b                                           ; $5797: $88
	adc  b                                           ; $5798: $88
	adc  b                                           ; $5799: $88
	adc  b                                           ; $579a: $88
	adc  b                                           ; $579b: $88
	adc  b                                           ; $579c: $88
	adc  b                                           ; $579d: $88
	adc  b                                           ; $579e: $88
	adc  b                                           ; $579f: $88
	adc  b                                           ; $57a0: $88
	adc  b                                           ; $57a1: $88
	adc  b                                           ; $57a2: $88
	adc  b                                           ; $57a3: $88
	adc  b                                           ; $57a4: $88
	adc  b                                           ; $57a5: $88
	adc  b                                           ; $57a6: $88
	adc  b                                           ; $57a7: $88
	adc  b                                           ; $57a8: $88
	adc  b                                           ; $57a9: $88
	adc  b                                           ; $57aa: $88
	adc  b                                           ; $57ab: $88
	adc  b                                           ; $57ac: $88
	adc  b                                           ; $57ad: $88
	adc  b                                           ; $57ae: $88
	adc  b                                           ; $57af: $88
	adc  b                                           ; $57b0: $88
	adc  b                                           ; $57b1: $88
	adc  b                                           ; $57b2: $88
	adc  b                                           ; $57b3: $88
	adc  b                                           ; $57b4: $88
	adc  b                                           ; $57b5: $88
	adc  b                                           ; $57b6: $88
	adc  b                                           ; $57b7: $88
	adc  b                                           ; $57b8: $88
	adc  b                                           ; $57b9: $88
	adc  b                                           ; $57ba: $88
	adc  b                                           ; $57bb: $88
	adc  b                                           ; $57bc: $88
	adc  b                                           ; $57bd: $88
	adc  b                                           ; $57be: $88
	adc  b                                           ; $57bf: $88
	adc  b                                           ; $57c0: $88
	adc  b                                           ; $57c1: $88
	adc  b                                           ; $57c2: $88
	adc  b                                           ; $57c3: $88
	adc  b                                           ; $57c4: $88
	adc  b                                           ; $57c5: $88
	adc  b                                           ; $57c6: $88
	adc  b                                           ; $57c7: $88
	adc  b                                           ; $57c8: $88
	adc  b                                           ; $57c9: $88
	adc  b                                           ; $57ca: $88
	adc  b                                           ; $57cb: $88
	adc  b                                           ; $57cc: $88
	adc  b                                           ; $57cd: $88
	adc  b                                           ; $57ce: $88
	adc  b                                           ; $57cf: $88
	adc  b                                           ; $57d0: $88
	adc  b                                           ; $57d1: $88
	adc  b                                           ; $57d2: $88
	adc  b                                           ; $57d3: $88
	adc  b                                           ; $57d4: $88
	adc  b                                           ; $57d5: $88
	adc  b                                           ; $57d6: $88
	adc  b                                           ; $57d7: $88
	adc  b                                           ; $57d8: $88
	adc  b                                           ; $57d9: $88
	adc  b                                           ; $57da: $88
	adc  b                                           ; $57db: $88
	adc  b                                           ; $57dc: $88
	adc  b                                           ; $57dd: $88
	adc  b                                           ; $57de: $88
	adc  b                                           ; $57df: $88
	adc  b                                           ; $57e0: $88
	adc  b                                           ; $57e1: $88
	adc  b                                           ; $57e2: $88
	adc  b                                           ; $57e3: $88
	adc  b                                           ; $57e4: $88
	adc  b                                           ; $57e5: $88
	adc  b                                           ; $57e6: $88
	adc  b                                           ; $57e7: $88
	adc  b                                           ; $57e8: $88
	adc  b                                           ; $57e9: $88
	adc  b                                           ; $57ea: $88
	adc  b                                           ; $57eb: $88
	adc  b                                           ; $57ec: $88
	adc  b                                           ; $57ed: $88
	adc  b                                           ; $57ee: $88
	adc  b                                           ; $57ef: $88
	adc  b                                           ; $57f0: $88
	adc  b                                           ; $57f1: $88
	adc  b                                           ; $57f2: $88
	adc  b                                           ; $57f3: $88
	adc  b                                           ; $57f4: $88
	adc  b                                           ; $57f5: $88
	adc  b                                           ; $57f6: $88
	adc  b                                           ; $57f7: $88
	adc  b                                           ; $57f8: $88
	adc  b                                           ; $57f9: $88
	adc  b                                           ; $57fa: $88
	adc  b                                           ; $57fb: $88
	adc  b                                           ; $57fc: $88
	adc  b                                           ; $57fd: $88
	adc  b                                           ; $57fe: $88
	adc  b                                           ; $57ff: $88
	adc  b                                           ; $5800: $88
	adc  b                                           ; $5801: $88
	adc  b                                           ; $5802: $88
	adc  b                                           ; $5803: $88
	adc  b                                           ; $5804: $88
	adc  b                                           ; $5805: $88
	adc  b                                           ; $5806: $88
	adc  b                                           ; $5807: $88
	adc  b                                           ; $5808: $88
	adc  b                                           ; $5809: $88
	adc  b                                           ; $580a: $88
	adc  b                                           ; $580b: $88
	adc  b                                           ; $580c: $88
	adc  b                                           ; $580d: $88
	adc  b                                           ; $580e: $88
	adc  b                                           ; $580f: $88
	adc  b                                           ; $5810: $88
	adc  b                                           ; $5811: $88
	adc  b                                           ; $5812: $88
	adc  b                                           ; $5813: $88
	adc  b                                           ; $5814: $88
	adc  b                                           ; $5815: $88
	adc  b                                           ; $5816: $88
	adc  b                                           ; $5817: $88
	adc  b                                           ; $5818: $88
	adc  b                                           ; $5819: $88
	adc  b                                           ; $581a: $88
	adc  b                                           ; $581b: $88
	adc  b                                           ; $581c: $88
	adc  b                                           ; $581d: $88
	adc  b                                           ; $581e: $88
	adc  b                                           ; $581f: $88
	adc  b                                           ; $5820: $88
	adc  b                                           ; $5821: $88
	adc  b                                           ; $5822: $88
	adc  b                                           ; $5823: $88
	adc  b                                           ; $5824: $88
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	adc  b                                           ; $5827: $88
	adc  b                                           ; $5828: $88
	adc  b                                           ; $5829: $88
	adc  b                                           ; $582a: $88
	adc  b                                           ; $582b: $88
	adc  b                                           ; $582c: $88
	adc  b                                           ; $582d: $88
	adc  b                                           ; $582e: $88
	adc  b                                           ; $582f: $88
	adc  b                                           ; $5830: $88
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  b                                           ; $5833: $88
	adc  b                                           ; $5834: $88
	adc  b                                           ; $5835: $88
	adc  b                                           ; $5836: $88
	adc  b                                           ; $5837: $88
	adc  b                                           ; $5838: $88
	adc  b                                           ; $5839: $88
	adc  b                                           ; $583a: $88
	adc  b                                           ; $583b: $88
	adc  b                                           ; $583c: $88
	adc  b                                           ; $583d: $88
	adc  b                                           ; $583e: $88
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	adc  b                                           ; $5842: $88
	adc  b                                           ; $5843: $88
	adc  b                                           ; $5844: $88
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	adc  b                                           ; $5849: $88
	adc  b                                           ; $584a: $88
	adc  b                                           ; $584b: $88
	adc  b                                           ; $584c: $88
	adc  b                                           ; $584d: $88
	adc  b                                           ; $584e: $88
	adc  b                                           ; $584f: $88
	adc  b                                           ; $5850: $88
	adc  b                                           ; $5851: $88
	adc  b                                           ; $5852: $88
	adc  b                                           ; $5853: $88
	adc  b                                           ; $5854: $88
	adc  b                                           ; $5855: $88
	adc  b                                           ; $5856: $88
	adc  b                                           ; $5857: $88
	adc  b                                           ; $5858: $88
	adc  b                                           ; $5859: $88
	adc  b                                           ; $585a: $88
	adc  b                                           ; $585b: $88
	adc  b                                           ; $585c: $88
	adc  b                                           ; $585d: $88
	adc  b                                           ; $585e: $88
	adc  b                                           ; $585f: $88
	adc  b                                           ; $5860: $88
	adc  b                                           ; $5861: $88
	adc  b                                           ; $5862: $88
	adc  b                                           ; $5863: $88
	adc  b                                           ; $5864: $88
	adc  b                                           ; $5865: $88
	adc  b                                           ; $5866: $88
	adc  b                                           ; $5867: $88
	adc  b                                           ; $5868: $88
	adc  b                                           ; $5869: $88
	adc  b                                           ; $586a: $88
	adc  b                                           ; $586b: $88
	adc  b                                           ; $586c: $88
	adc  b                                           ; $586d: $88
	adc  b                                           ; $586e: $88
	adc  b                                           ; $586f: $88
	adc  b                                           ; $5870: $88
	adc  b                                           ; $5871: $88
	adc  b                                           ; $5872: $88
	adc  b                                           ; $5873: $88
	adc  b                                           ; $5874: $88
	adc  b                                           ; $5875: $88
	adc  b                                           ; $5876: $88
	adc  b                                           ; $5877: $88
	adc  b                                           ; $5878: $88
	adc  b                                           ; $5879: $88
	adc  b                                           ; $587a: $88
	adc  b                                           ; $587b: $88
	adc  b                                           ; $587c: $88
	adc  b                                           ; $587d: $88
	adc  b                                           ; $587e: $88
	adc  b                                           ; $587f: $88
	adc  b                                           ; $5880: $88
	adc  b                                           ; $5881: $88
	adc  b                                           ; $5882: $88
	adc  b                                           ; $5883: $88
	adc  b                                           ; $5884: $88
	adc  b                                           ; $5885: $88
	adc  b                                           ; $5886: $88
	adc  b                                           ; $5887: $88
	adc  b                                           ; $5888: $88
	adc  b                                           ; $5889: $88
	adc  b                                           ; $588a: $88
	adc  b                                           ; $588b: $88
	adc  b                                           ; $588c: $88
	adc  b                                           ; $588d: $88
	adc  b                                           ; $588e: $88
	adc  b                                           ; $588f: $88
	adc  b                                           ; $5890: $88
	adc  b                                           ; $5891: $88
	adc  b                                           ; $5892: $88
	adc  b                                           ; $5893: $88
	adc  b                                           ; $5894: $88
	adc  b                                           ; $5895: $88
	adc  b                                           ; $5896: $88
	adc  b                                           ; $5897: $88
	adc  b                                           ; $5898: $88
	adc  b                                           ; $5899: $88
	adc  b                                           ; $589a: $88
	adc  b                                           ; $589b: $88
	adc  b                                           ; $589c: $88
	adc  b                                           ; $589d: $88
	adc  b                                           ; $589e: $88
	adc  b                                           ; $589f: $88
	adc  b                                           ; $58a0: $88
	adc  b                                           ; $58a1: $88
	adc  b                                           ; $58a2: $88
	adc  b                                           ; $58a3: $88
	adc  b                                           ; $58a4: $88
	adc  b                                           ; $58a5: $88
	adc  b                                           ; $58a6: $88
	adc  b                                           ; $58a7: $88
	adc  b                                           ; $58a8: $88
	adc  b                                           ; $58a9: $88
	adc  b                                           ; $58aa: $88
	adc  b                                           ; $58ab: $88
	adc  b                                           ; $58ac: $88
	adc  b                                           ; $58ad: $88
	adc  b                                           ; $58ae: $88
	adc  b                                           ; $58af: $88
	adc  b                                           ; $58b0: $88
	adc  b                                           ; $58b1: $88
	adc  b                                           ; $58b2: $88
	adc  b                                           ; $58b3: $88
	adc  b                                           ; $58b4: $88
	adc  b                                           ; $58b5: $88
	adc  b                                           ; $58b6: $88
	adc  b                                           ; $58b7: $88
	adc  b                                           ; $58b8: $88
	adc  b                                           ; $58b9: $88
	adc  b                                           ; $58ba: $88
	adc  b                                           ; $58bb: $88
	adc  b                                           ; $58bc: $88
	adc  b                                           ; $58bd: $88
	adc  b                                           ; $58be: $88
	adc  b                                           ; $58bf: $88
	adc  b                                           ; $58c0: $88
	adc  b                                           ; $58c1: $88
	adc  b                                           ; $58c2: $88
	adc  b                                           ; $58c3: $88
	adc  b                                           ; $58c4: $88
	adc  b                                           ; $58c5: $88
	adc  b                                           ; $58c6: $88
	adc  b                                           ; $58c7: $88
	adc  b                                           ; $58c8: $88
	adc  b                                           ; $58c9: $88
	adc  b                                           ; $58ca: $88
	adc  b                                           ; $58cb: $88
	adc  b                                           ; $58cc: $88
	adc  b                                           ; $58cd: $88
	adc  b                                           ; $58ce: $88
	adc  b                                           ; $58cf: $88
	adc  b                                           ; $58d0: $88
	adc  b                                           ; $58d1: $88
	adc  b                                           ; $58d2: $88
	adc  b                                           ; $58d3: $88
	adc  b                                           ; $58d4: $88
	adc  b                                           ; $58d5: $88
	adc  b                                           ; $58d6: $88
	adc  b                                           ; $58d7: $88
	adc  b                                           ; $58d8: $88
	adc  b                                           ; $58d9: $88
	adc  b                                           ; $58da: $88
	adc  b                                           ; $58db: $88
	adc  b                                           ; $58dc: $88
	adc  b                                           ; $58dd: $88
	adc  b                                           ; $58de: $88
	adc  b                                           ; $58df: $88
	adc  b                                           ; $58e0: $88
	adc  b                                           ; $58e1: $88
	adc  b                                           ; $58e2: $88
	adc  b                                           ; $58e3: $88
	adc  b                                           ; $58e4: $88
	adc  b                                           ; $58e5: $88
	adc  b                                           ; $58e6: $88
	adc  b                                           ; $58e7: $88
	adc  b                                           ; $58e8: $88
	adc  b                                           ; $58e9: $88
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	adc  b                                           ; $58ec: $88
	adc  b                                           ; $58ed: $88
	adc  b                                           ; $58ee: $88
	adc  b                                           ; $58ef: $88
	adc  b                                           ; $58f0: $88
	adc  b                                           ; $58f1: $88
	adc  b                                           ; $58f2: $88
	adc  b                                           ; $58f3: $88
	adc  b                                           ; $58f4: $88
	adc  b                                           ; $58f5: $88
	adc  b                                           ; $58f6: $88
	adc  b                                           ; $58f7: $88
	adc  b                                           ; $58f8: $88
	adc  b                                           ; $58f9: $88
	adc  b                                           ; $58fa: $88
	adc  b                                           ; $58fb: $88
	adc  b                                           ; $58fc: $88
	adc  b                                           ; $58fd: $88
	adc  b                                           ; $58fe: $88
	adc  b                                           ; $58ff: $88
	adc  b                                           ; $5900: $88
	adc  b                                           ; $5901: $88
	adc  b                                           ; $5902: $88
	adc  b                                           ; $5903: $88
	adc  b                                           ; $5904: $88
	adc  b                                           ; $5905: $88
	adc  b                                           ; $5906: $88
	adc  b                                           ; $5907: $88
	adc  b                                           ; $5908: $88
	adc  b                                           ; $5909: $88
	adc  b                                           ; $590a: $88
	adc  b                                           ; $590b: $88
	adc  b                                           ; $590c: $88
	adc  b                                           ; $590d: $88
	adc  b                                           ; $590e: $88
	adc  b                                           ; $590f: $88
	adc  b                                           ; $5910: $88
	adc  b                                           ; $5911: $88
	adc  b                                           ; $5912: $88
	adc  b                                           ; $5913: $88
	adc  b                                           ; $5914: $88
	adc  b                                           ; $5915: $88
	adc  b                                           ; $5916: $88
	adc  b                                           ; $5917: $88
	adc  b                                           ; $5918: $88
	adc  b                                           ; $5919: $88
	adc  b                                           ; $591a: $88
	adc  b                                           ; $591b: $88
	adc  b                                           ; $591c: $88
	adc  b                                           ; $591d: $88
	adc  b                                           ; $591e: $88
	adc  b                                           ; $591f: $88
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  b                                           ; $5922: $88
	adc  b                                           ; $5923: $88
	adc  b                                           ; $5924: $88
	adc  b                                           ; $5925: $88
	adc  b                                           ; $5926: $88
	adc  b                                           ; $5927: $88
	adc  b                                           ; $5928: $88
	adc  b                                           ; $5929: $88
	adc  b                                           ; $592a: $88
	adc  b                                           ; $592b: $88
	adc  b                                           ; $592c: $88
	adc  b                                           ; $592d: $88
	adc  b                                           ; $592e: $88
	adc  b                                           ; $592f: $88
	adc  b                                           ; $5930: $88
	adc  b                                           ; $5931: $88
	adc  b                                           ; $5932: $88
	adc  b                                           ; $5933: $88
	adc  b                                           ; $5934: $88
	adc  b                                           ; $5935: $88
	adc  b                                           ; $5936: $88
	adc  b                                           ; $5937: $88
	adc  b                                           ; $5938: $88
	adc  b                                           ; $5939: $88
	adc  b                                           ; $593a: $88
	adc  b                                           ; $593b: $88
	adc  b                                           ; $593c: $88
	adc  b                                           ; $593d: $88
	adc  b                                           ; $593e: $88
	adc  b                                           ; $593f: $88
	adc  b                                           ; $5940: $88
	adc  b                                           ; $5941: $88
	adc  b                                           ; $5942: $88
	adc  b                                           ; $5943: $88
	adc  b                                           ; $5944: $88
	adc  b                                           ; $5945: $88
	adc  b                                           ; $5946: $88
	adc  b                                           ; $5947: $88
	adc  b                                           ; $5948: $88
	adc  b                                           ; $5949: $88
	adc  b                                           ; $594a: $88
	adc  b                                           ; $594b: $88
	adc  b                                           ; $594c: $88
	adc  b                                           ; $594d: $88
	adc  b                                           ; $594e: $88
	adc  b                                           ; $594f: $88
	adc  b                                           ; $5950: $88
	adc  b                                           ; $5951: $88
	adc  b                                           ; $5952: $88
	adc  b                                           ; $5953: $88
	adc  b                                           ; $5954: $88
	adc  b                                           ; $5955: $88
	adc  b                                           ; $5956: $88
	adc  b                                           ; $5957: $88
	adc  b                                           ; $5958: $88
	adc  b                                           ; $5959: $88
	adc  b                                           ; $595a: $88
	adc  b                                           ; $595b: $88
	adc  b                                           ; $595c: $88
	adc  b                                           ; $595d: $88
	adc  b                                           ; $595e: $88
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	adc  b                                           ; $5961: $88
	adc  b                                           ; $5962: $88

Call_0b0_5963:
	adc  b                                           ; $5963: $88

Jump_0b0_5964:
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	adc  b                                           ; $5967: $88
	adc  b                                           ; $5968: $88
	adc  b                                           ; $5969: $88
	adc  b                                           ; $596a: $88
	adc  b                                           ; $596b: $88
	adc  b                                           ; $596c: $88
	adc  b                                           ; $596d: $88
	adc  b                                           ; $596e: $88
	adc  b                                           ; $596f: $88
	adc  b                                           ; $5970: $88
	adc  b                                           ; $5971: $88
	adc  b                                           ; $5972: $88
	adc  b                                           ; $5973: $88
	adc  b                                           ; $5974: $88
	adc  b                                           ; $5975: $88
	adc  b                                           ; $5976: $88
	adc  b                                           ; $5977: $88
	adc  b                                           ; $5978: $88
	adc  b                                           ; $5979: $88
	adc  b                                           ; $597a: $88
	adc  b                                           ; $597b: $88
	adc  b                                           ; $597c: $88
	adc  b                                           ; $597d: $88
	adc  b                                           ; $597e: $88
	adc  b                                           ; $597f: $88
	adc  b                                           ; $5980: $88
	adc  b                                           ; $5981: $88
	adc  b                                           ; $5982: $88
	adc  b                                           ; $5983: $88
	adc  b                                           ; $5984: $88
	adc  b                                           ; $5985: $88
	adc  b                                           ; $5986: $88
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	adc  b                                           ; $598d: $88
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	adc  b                                           ; $5992: $88
	adc  b                                           ; $5993: $88
	adc  b                                           ; $5994: $88
	adc  b                                           ; $5995: $88
	adc  b                                           ; $5996: $88
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  b                                           ; $5999: $88
	adc  b                                           ; $599a: $88
	adc  b                                           ; $599b: $88
	adc  b                                           ; $599c: $88
	adc  b                                           ; $599d: $88
	adc  b                                           ; $599e: $88
	adc  b                                           ; $599f: $88
	adc  b                                           ; $59a0: $88
	adc  b                                           ; $59a1: $88
	adc  b                                           ; $59a2: $88
	adc  b                                           ; $59a3: $88
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  b                                           ; $59a7: $88
	adc  b                                           ; $59a8: $88
	adc  b                                           ; $59a9: $88
	adc  b                                           ; $59aa: $88
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	adc  b                                           ; $59ad: $88
	adc  b                                           ; $59ae: $88
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	adc  b                                           ; $59b1: $88
	adc  b                                           ; $59b2: $88
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	adc  b                                           ; $59b5: $88
	adc  b                                           ; $59b6: $88
	adc  b                                           ; $59b7: $88
	adc  b                                           ; $59b8: $88
	adc  b                                           ; $59b9: $88
	adc  b                                           ; $59ba: $88
	adc  b                                           ; $59bb: $88
	adc  b                                           ; $59bc: $88
	adc  b                                           ; $59bd: $88
	adc  b                                           ; $59be: $88
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  b                                           ; $59c1: $88
	adc  b                                           ; $59c2: $88
	adc  b                                           ; $59c3: $88
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	adc  b                                           ; $59c6: $88
	adc  b                                           ; $59c7: $88
	adc  b                                           ; $59c8: $88
	adc  b                                           ; $59c9: $88
	adc  b                                           ; $59ca: $88
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  b                                           ; $59ce: $88
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

Call_0b0_5c11:
	adc  b                                           ; $5c11: $88
	adc  b                                           ; $5c12: $88
	adc  b                                           ; $5c13: $88
	adc  b                                           ; $5c14: $88
	adc  b                                           ; $5c15: $88
	adc  b                                           ; $5c16: $88
	adc  b                                           ; $5c17: $88
	adc  b                                           ; $5c18: $88
	adc  b                                           ; $5c19: $88
	adc  b                                           ; $5c1a: $88
	adc  b                                           ; $5c1b: $88
	adc  b                                           ; $5c1c: $88
	adc  b                                           ; $5c1d: $88
	adc  b                                           ; $5c1e: $88
	adc  b                                           ; $5c1f: $88
	adc  b                                           ; $5c20: $88
	adc  b                                           ; $5c21: $88
	adc  b                                           ; $5c22: $88
	adc  b                                           ; $5c23: $88
	adc  b                                           ; $5c24: $88
	adc  b                                           ; $5c25: $88
	adc  b                                           ; $5c26: $88
	adc  b                                           ; $5c27: $88
	adc  b                                           ; $5c28: $88
	adc  b                                           ; $5c29: $88
	adc  b                                           ; $5c2a: $88
	adc  b                                           ; $5c2b: $88
	adc  b                                           ; $5c2c: $88
	adc  b                                           ; $5c2d: $88
	adc  b                                           ; $5c2e: $88
	adc  b                                           ; $5c2f: $88
	adc  b                                           ; $5c30: $88
	adc  b                                           ; $5c31: $88
	adc  b                                           ; $5c32: $88
	adc  b                                           ; $5c33: $88
	adc  b                                           ; $5c34: $88
	adc  b                                           ; $5c35: $88
	adc  b                                           ; $5c36: $88
	adc  b                                           ; $5c37: $88
	adc  b                                           ; $5c38: $88
	adc  b                                           ; $5c39: $88
	adc  b                                           ; $5c3a: $88
	adc  b                                           ; $5c3b: $88
	adc  b                                           ; $5c3c: $88
	adc  b                                           ; $5c3d: $88
	adc  b                                           ; $5c3e: $88
	adc  b                                           ; $5c3f: $88
	adc  b                                           ; $5c40: $88
	adc  b                                           ; $5c41: $88
	adc  b                                           ; $5c42: $88
	adc  b                                           ; $5c43: $88
	adc  b                                           ; $5c44: $88
	adc  b                                           ; $5c45: $88
	adc  b                                           ; $5c46: $88
	adc  b                                           ; $5c47: $88
	adc  b                                           ; $5c48: $88
	adc  b                                           ; $5c49: $88
	adc  b                                           ; $5c4a: $88
	adc  b                                           ; $5c4b: $88
	adc  b                                           ; $5c4c: $88
	adc  b                                           ; $5c4d: $88
	adc  b                                           ; $5c4e: $88
	adc  b                                           ; $5c4f: $88
	adc  b                                           ; $5c50: $88
	adc  b                                           ; $5c51: $88
	adc  b                                           ; $5c52: $88
	adc  b                                           ; $5c53: $88
	adc  b                                           ; $5c54: $88
	adc  b                                           ; $5c55: $88
	adc  b                                           ; $5c56: $88
	adc  b                                           ; $5c57: $88
	adc  b                                           ; $5c58: $88
	adc  b                                           ; $5c59: $88
	adc  b                                           ; $5c5a: $88
	adc  b                                           ; $5c5b: $88
	adc  b                                           ; $5c5c: $88
	adc  b                                           ; $5c5d: $88
	adc  b                                           ; $5c5e: $88
	adc  b                                           ; $5c5f: $88
	adc  b                                           ; $5c60: $88
	adc  b                                           ; $5c61: $88
	adc  b                                           ; $5c62: $88
	adc  b                                           ; $5c63: $88
	adc  b                                           ; $5c64: $88
	adc  b                                           ; $5c65: $88
	adc  b                                           ; $5c66: $88
	adc  b                                           ; $5c67: $88
	adc  b                                           ; $5c68: $88
	adc  b                                           ; $5c69: $88
	adc  b                                           ; $5c6a: $88
	adc  b                                           ; $5c6b: $88
	adc  b                                           ; $5c6c: $88
	adc  b                                           ; $5c6d: $88
	adc  b                                           ; $5c6e: $88
	adc  b                                           ; $5c6f: $88
	adc  b                                           ; $5c70: $88
	adc  b                                           ; $5c71: $88
	adc  b                                           ; $5c72: $88
	adc  b                                           ; $5c73: $88
	adc  b                                           ; $5c74: $88
	adc  b                                           ; $5c75: $88
	adc  b                                           ; $5c76: $88
	adc  b                                           ; $5c77: $88
	adc  b                                           ; $5c78: $88
	adc  b                                           ; $5c79: $88
	adc  b                                           ; $5c7a: $88
	adc  b                                           ; $5c7b: $88
	adc  b                                           ; $5c7c: $88
	adc  b                                           ; $5c7d: $88
	adc  b                                           ; $5c7e: $88
	adc  b                                           ; $5c7f: $88
	adc  b                                           ; $5c80: $88
	adc  b                                           ; $5c81: $88
	adc  b                                           ; $5c82: $88
	adc  b                                           ; $5c83: $88
	adc  b                                           ; $5c84: $88
	adc  b                                           ; $5c85: $88
	adc  b                                           ; $5c86: $88
	adc  b                                           ; $5c87: $88
	adc  b                                           ; $5c88: $88
	adc  b                                           ; $5c89: $88
	adc  b                                           ; $5c8a: $88
	adc  b                                           ; $5c8b: $88
	adc  b                                           ; $5c8c: $88
	adc  b                                           ; $5c8d: $88
	adc  b                                           ; $5c8e: $88
	adc  b                                           ; $5c8f: $88
	adc  b                                           ; $5c90: $88
	adc  b                                           ; $5c91: $88
	adc  b                                           ; $5c92: $88
	adc  b                                           ; $5c93: $88
	adc  b                                           ; $5c94: $88
	adc  b                                           ; $5c95: $88
	adc  b                                           ; $5c96: $88
	adc  b                                           ; $5c97: $88
	adc  b                                           ; $5c98: $88
	adc  b                                           ; $5c99: $88
	adc  b                                           ; $5c9a: $88
	adc  b                                           ; $5c9b: $88
	adc  b                                           ; $5c9c: $88
	adc  b                                           ; $5c9d: $88
	adc  b                                           ; $5c9e: $88
	adc  b                                           ; $5c9f: $88
	adc  b                                           ; $5ca0: $88
	adc  b                                           ; $5ca1: $88
	adc  b                                           ; $5ca2: $88
	adc  b                                           ; $5ca3: $88
	adc  b                                           ; $5ca4: $88
	adc  b                                           ; $5ca5: $88
	adc  b                                           ; $5ca6: $88
	adc  b                                           ; $5ca7: $88
	adc  b                                           ; $5ca8: $88
	adc  b                                           ; $5ca9: $88
	adc  b                                           ; $5caa: $88
	adc  b                                           ; $5cab: $88
	adc  b                                           ; $5cac: $88
	adc  b                                           ; $5cad: $88
	adc  b                                           ; $5cae: $88
	adc  b                                           ; $5caf: $88
	adc  b                                           ; $5cb0: $88
	adc  b                                           ; $5cb1: $88
	adc  b                                           ; $5cb2: $88
	adc  b                                           ; $5cb3: $88
	adc  b                                           ; $5cb4: $88
	adc  b                                           ; $5cb5: $88
	adc  b                                           ; $5cb6: $88
	adc  b                                           ; $5cb7: $88
	adc  b                                           ; $5cb8: $88
	adc  b                                           ; $5cb9: $88
	adc  b                                           ; $5cba: $88
	adc  b                                           ; $5cbb: $88
	adc  b                                           ; $5cbc: $88
	adc  b                                           ; $5cbd: $88
	adc  b                                           ; $5cbe: $88
	adc  b                                           ; $5cbf: $88
	adc  b                                           ; $5cc0: $88
	adc  b                                           ; $5cc1: $88
	adc  b                                           ; $5cc2: $88
	adc  b                                           ; $5cc3: $88
	adc  b                                           ; $5cc4: $88
	adc  b                                           ; $5cc5: $88
	adc  b                                           ; $5cc6: $88
	adc  b                                           ; $5cc7: $88
	adc  b                                           ; $5cc8: $88
	adc  b                                           ; $5cc9: $88
	adc  b                                           ; $5cca: $88
	adc  b                                           ; $5ccb: $88
	adc  b                                           ; $5ccc: $88
	adc  b                                           ; $5ccd: $88
	adc  b                                           ; $5cce: $88
	adc  b                                           ; $5ccf: $88
	adc  b                                           ; $5cd0: $88
	adc  b                                           ; $5cd1: $88
	adc  b                                           ; $5cd2: $88
	adc  b                                           ; $5cd3: $88
	adc  b                                           ; $5cd4: $88
	adc  b                                           ; $5cd5: $88
	adc  b                                           ; $5cd6: $88
	adc  b                                           ; $5cd7: $88
	adc  b                                           ; $5cd8: $88
	adc  b                                           ; $5cd9: $88
	adc  b                                           ; $5cda: $88
	adc  b                                           ; $5cdb: $88
	adc  b                                           ; $5cdc: $88
	adc  b                                           ; $5cdd: $88
	adc  b                                           ; $5cde: $88
	adc  b                                           ; $5cdf: $88
	adc  b                                           ; $5ce0: $88
	adc  b                                           ; $5ce1: $88
	adc  b                                           ; $5ce2: $88
	adc  b                                           ; $5ce3: $88
	adc  b                                           ; $5ce4: $88
	adc  b                                           ; $5ce5: $88
	adc  b                                           ; $5ce6: $88
	adc  b                                           ; $5ce7: $88
	adc  b                                           ; $5ce8: $88
	adc  b                                           ; $5ce9: $88
	adc  b                                           ; $5cea: $88
	adc  b                                           ; $5ceb: $88
	adc  b                                           ; $5cec: $88
	adc  b                                           ; $5ced: $88
	adc  b                                           ; $5cee: $88
	adc  b                                           ; $5cef: $88
	adc  b                                           ; $5cf0: $88
	adc  b                                           ; $5cf1: $88
	adc  b                                           ; $5cf2: $88
	adc  b                                           ; $5cf3: $88
	adc  b                                           ; $5cf4: $88
	adc  b                                           ; $5cf5: $88
	adc  b                                           ; $5cf6: $88
	adc  b                                           ; $5cf7: $88
	adc  b                                           ; $5cf8: $88
	adc  b                                           ; $5cf9: $88
	adc  b                                           ; $5cfa: $88
	adc  b                                           ; $5cfb: $88
	adc  b                                           ; $5cfc: $88
	adc  b                                           ; $5cfd: $88
	adc  b                                           ; $5cfe: $88
	adc  b                                           ; $5cff: $88
	adc  b                                           ; $5d00: $88
	adc  b                                           ; $5d01: $88
	adc  b                                           ; $5d02: $88
	adc  b                                           ; $5d03: $88
	adc  b                                           ; $5d04: $88
	adc  b                                           ; $5d05: $88
	adc  b                                           ; $5d06: $88
	adc  b                                           ; $5d07: $88
	adc  b                                           ; $5d08: $88
	adc  b                                           ; $5d09: $88
	adc  b                                           ; $5d0a: $88
	adc  b                                           ; $5d0b: $88
	adc  b                                           ; $5d0c: $88
	adc  b                                           ; $5d0d: $88
	adc  b                                           ; $5d0e: $88
	adc  b                                           ; $5d0f: $88
	adc  b                                           ; $5d10: $88
	adc  b                                           ; $5d11: $88
	adc  b                                           ; $5d12: $88
	adc  b                                           ; $5d13: $88
	adc  b                                           ; $5d14: $88
	adc  b                                           ; $5d15: $88
	adc  b                                           ; $5d16: $88
	adc  b                                           ; $5d17: $88
	adc  b                                           ; $5d18: $88
	adc  b                                           ; $5d19: $88
	adc  b                                           ; $5d1a: $88
	adc  b                                           ; $5d1b: $88
	adc  b                                           ; $5d1c: $88
	adc  b                                           ; $5d1d: $88
	adc  b                                           ; $5d1e: $88
	adc  b                                           ; $5d1f: $88
	adc  b                                           ; $5d20: $88
	adc  b                                           ; $5d21: $88
	adc  b                                           ; $5d22: $88
	adc  b                                           ; $5d23: $88
	adc  b                                           ; $5d24: $88
	adc  b                                           ; $5d25: $88
	adc  b                                           ; $5d26: $88
	adc  b                                           ; $5d27: $88
	adc  b                                           ; $5d28: $88
	adc  b                                           ; $5d29: $88
	adc  b                                           ; $5d2a: $88
	adc  b                                           ; $5d2b: $88
	adc  b                                           ; $5d2c: $88
	adc  b                                           ; $5d2d: $88
	adc  b                                           ; $5d2e: $88
	adc  b                                           ; $5d2f: $88
	adc  b                                           ; $5d30: $88
	adc  b                                           ; $5d31: $88
	adc  b                                           ; $5d32: $88
	adc  b                                           ; $5d33: $88
	adc  b                                           ; $5d34: $88
	adc  b                                           ; $5d35: $88
	adc  b                                           ; $5d36: $88
	adc  b                                           ; $5d37: $88
	adc  b                                           ; $5d38: $88
	adc  b                                           ; $5d39: $88
	adc  b                                           ; $5d3a: $88
	adc  b                                           ; $5d3b: $88
	adc  b                                           ; $5d3c: $88
	adc  b                                           ; $5d3d: $88
	adc  b                                           ; $5d3e: $88
	adc  b                                           ; $5d3f: $88
	adc  b                                           ; $5d40: $88
	adc  b                                           ; $5d41: $88
	adc  b                                           ; $5d42: $88
	adc  b                                           ; $5d43: $88
	adc  b                                           ; $5d44: $88
	adc  b                                           ; $5d45: $88
	adc  b                                           ; $5d46: $88
	adc  b                                           ; $5d47: $88
	adc  b                                           ; $5d48: $88
	adc  b                                           ; $5d49: $88
	adc  b                                           ; $5d4a: $88
	adc  b                                           ; $5d4b: $88
	adc  b                                           ; $5d4c: $88
	adc  b                                           ; $5d4d: $88
	adc  b                                           ; $5d4e: $88
	adc  b                                           ; $5d4f: $88
	adc  b                                           ; $5d50: $88
	adc  b                                           ; $5d51: $88
	adc  b                                           ; $5d52: $88
	adc  b                                           ; $5d53: $88
	adc  b                                           ; $5d54: $88
	adc  b                                           ; $5d55: $88
	adc  b                                           ; $5d56: $88
	adc  b                                           ; $5d57: $88
	adc  b                                           ; $5d58: $88
	adc  b                                           ; $5d59: $88
	adc  b                                           ; $5d5a: $88
	adc  b                                           ; $5d5b: $88
	adc  b                                           ; $5d5c: $88
	adc  b                                           ; $5d5d: $88
	adc  b                                           ; $5d5e: $88
	adc  b                                           ; $5d5f: $88
	adc  b                                           ; $5d60: $88
	adc  b                                           ; $5d61: $88
	adc  b                                           ; $5d62: $88
	adc  b                                           ; $5d63: $88
	adc  b                                           ; $5d64: $88
	adc  b                                           ; $5d65: $88
	adc  b                                           ; $5d66: $88
	adc  b                                           ; $5d67: $88
	adc  b                                           ; $5d68: $88
	adc  b                                           ; $5d69: $88
	adc  b                                           ; $5d6a: $88
	adc  b                                           ; $5d6b: $88
	adc  b                                           ; $5d6c: $88
	adc  b                                           ; $5d6d: $88
	adc  b                                           ; $5d6e: $88
	adc  b                                           ; $5d6f: $88
	adc  b                                           ; $5d70: $88
	adc  b                                           ; $5d71: $88
	adc  b                                           ; $5d72: $88
	adc  b                                           ; $5d73: $88
	adc  b                                           ; $5d74: $88
	adc  b                                           ; $5d75: $88
	adc  b                                           ; $5d76: $88
	adc  b                                           ; $5d77: $88
	adc  b                                           ; $5d78: $88
	adc  b                                           ; $5d79: $88
	adc  b                                           ; $5d7a: $88
	adc  b                                           ; $5d7b: $88
	adc  b                                           ; $5d7c: $88
	adc  b                                           ; $5d7d: $88
	adc  b                                           ; $5d7e: $88
	adc  b                                           ; $5d7f: $88
	adc  b                                           ; $5d80: $88
	adc  b                                           ; $5d81: $88
	adc  b                                           ; $5d82: $88
	adc  b                                           ; $5d83: $88
	adc  b                                           ; $5d84: $88
	adc  b                                           ; $5d85: $88
	adc  b                                           ; $5d86: $88
	adc  b                                           ; $5d87: $88
	adc  b                                           ; $5d88: $88
	adc  b                                           ; $5d89: $88
	adc  b                                           ; $5d8a: $88
	adc  b                                           ; $5d8b: $88
	adc  b                                           ; $5d8c: $88
	adc  b                                           ; $5d8d: $88
	adc  b                                           ; $5d8e: $88
	adc  b                                           ; $5d8f: $88
	adc  b                                           ; $5d90: $88
	adc  b                                           ; $5d91: $88
	adc  b                                           ; $5d92: $88
	adc  b                                           ; $5d93: $88
	adc  b                                           ; $5d94: $88
	adc  b                                           ; $5d95: $88
	adc  b                                           ; $5d96: $88
	adc  b                                           ; $5d97: $88
	adc  b                                           ; $5d98: $88
	adc  b                                           ; $5d99: $88
	adc  b                                           ; $5d9a: $88
	adc  b                                           ; $5d9b: $88
	adc  b                                           ; $5d9c: $88
	adc  b                                           ; $5d9d: $88
	adc  b                                           ; $5d9e: $88
	adc  b                                           ; $5d9f: $88
	adc  b                                           ; $5da0: $88
	adc  b                                           ; $5da1: $88
	adc  b                                           ; $5da2: $88
	adc  b                                           ; $5da3: $88
	adc  b                                           ; $5da4: $88
	adc  b                                           ; $5da5: $88
	adc  b                                           ; $5da6: $88
	adc  b                                           ; $5da7: $88
	adc  b                                           ; $5da8: $88
	adc  b                                           ; $5da9: $88
	adc  b                                           ; $5daa: $88
	adc  b                                           ; $5dab: $88
	adc  b                                           ; $5dac: $88
	adc  b                                           ; $5dad: $88
	adc  b                                           ; $5dae: $88
	adc  b                                           ; $5daf: $88
	adc  b                                           ; $5db0: $88
	adc  b                                           ; $5db1: $88
	adc  b                                           ; $5db2: $88
	adc  b                                           ; $5db3: $88
	adc  b                                           ; $5db4: $88
	adc  b                                           ; $5db5: $88
	adc  b                                           ; $5db6: $88
	adc  b                                           ; $5db7: $88
	adc  b                                           ; $5db8: $88
	adc  b                                           ; $5db9: $88
	adc  b                                           ; $5dba: $88
	adc  b                                           ; $5dbb: $88
	adc  b                                           ; $5dbc: $88
	adc  b                                           ; $5dbd: $88
	adc  b                                           ; $5dbe: $88
	adc  b                                           ; $5dbf: $88
	adc  b                                           ; $5dc0: $88
	adc  b                                           ; $5dc1: $88
	adc  b                                           ; $5dc2: $88
	adc  b                                           ; $5dc3: $88
	adc  b                                           ; $5dc4: $88
	adc  b                                           ; $5dc5: $88
	adc  b                                           ; $5dc6: $88
	adc  b                                           ; $5dc7: $88
	adc  b                                           ; $5dc8: $88
	adc  b                                           ; $5dc9: $88
	adc  b                                           ; $5dca: $88
	adc  b                                           ; $5dcb: $88
	adc  b                                           ; $5dcc: $88
	adc  b                                           ; $5dcd: $88
	adc  b                                           ; $5dce: $88
	adc  b                                           ; $5dcf: $88
	adc  b                                           ; $5dd0: $88
	adc  b                                           ; $5dd1: $88
	adc  b                                           ; $5dd2: $88
	adc  b                                           ; $5dd3: $88
	adc  b                                           ; $5dd4: $88
	adc  b                                           ; $5dd5: $88
	adc  b                                           ; $5dd6: $88
	adc  b                                           ; $5dd7: $88
	adc  b                                           ; $5dd8: $88
	adc  b                                           ; $5dd9: $88
	adc  b                                           ; $5dda: $88
	adc  b                                           ; $5ddb: $88
	adc  b                                           ; $5ddc: $88
	adc  b                                           ; $5ddd: $88
	adc  b                                           ; $5dde: $88
	adc  b                                           ; $5ddf: $88
	adc  b                                           ; $5de0: $88
	adc  b                                           ; $5de1: $88
	adc  b                                           ; $5de2: $88
	adc  b                                           ; $5de3: $88
	adc  b                                           ; $5de4: $88
	adc  b                                           ; $5de5: $88
	adc  b                                           ; $5de6: $88
	adc  b                                           ; $5de7: $88
	adc  b                                           ; $5de8: $88
	adc  b                                           ; $5de9: $88
	adc  b                                           ; $5dea: $88
	adc  b                                           ; $5deb: $88
	adc  b                                           ; $5dec: $88
	adc  b                                           ; $5ded: $88
	adc  b                                           ; $5dee: $88
	adc  b                                           ; $5def: $88
	adc  b                                           ; $5df0: $88
	adc  b                                           ; $5df1: $88
	adc  b                                           ; $5df2: $88
	adc  b                                           ; $5df3: $88
	adc  b                                           ; $5df4: $88
	adc  b                                           ; $5df5: $88
	adc  b                                           ; $5df6: $88
	adc  b                                           ; $5df7: $88
	adc  b                                           ; $5df8: $88
	adc  b                                           ; $5df9: $88
	adc  b                                           ; $5dfa: $88
	adc  b                                           ; $5dfb: $88
	adc  b                                           ; $5dfc: $88
	adc  b                                           ; $5dfd: $88
	adc  b                                           ; $5dfe: $88
	adc  b                                           ; $5dff: $88
	adc  b                                           ; $5e00: $88
	adc  b                                           ; $5e01: $88
	adc  b                                           ; $5e02: $88
	adc  b                                           ; $5e03: $88
	adc  b                                           ; $5e04: $88
	adc  b                                           ; $5e05: $88
	adc  b                                           ; $5e06: $88
	adc  b                                           ; $5e07: $88
	adc  b                                           ; $5e08: $88
	adc  b                                           ; $5e09: $88
	adc  b                                           ; $5e0a: $88
	adc  b                                           ; $5e0b: $88
	adc  b                                           ; $5e0c: $88
	adc  b                                           ; $5e0d: $88
	adc  b                                           ; $5e0e: $88
	adc  b                                           ; $5e0f: $88
	adc  b                                           ; $5e10: $88
	adc  b                                           ; $5e11: $88
	adc  b                                           ; $5e12: $88
	adc  b                                           ; $5e13: $88
	adc  b                                           ; $5e14: $88
	adc  b                                           ; $5e15: $88
	adc  b                                           ; $5e16: $88
	adc  b                                           ; $5e17: $88
	adc  b                                           ; $5e18: $88
	adc  b                                           ; $5e19: $88
	adc  b                                           ; $5e1a: $88
	adc  b                                           ; $5e1b: $88
	adc  b                                           ; $5e1c: $88
	adc  b                                           ; $5e1d: $88
	adc  b                                           ; $5e1e: $88
	adc  b                                           ; $5e1f: $88
	adc  b                                           ; $5e20: $88
	adc  b                                           ; $5e21: $88
	adc  b                                           ; $5e22: $88
	adc  b                                           ; $5e23: $88
	adc  b                                           ; $5e24: $88
	adc  b                                           ; $5e25: $88
	adc  b                                           ; $5e26: $88
	adc  b                                           ; $5e27: $88
	adc  b                                           ; $5e28: $88
	adc  b                                           ; $5e29: $88
	adc  b                                           ; $5e2a: $88
	adc  b                                           ; $5e2b: $88
	adc  b                                           ; $5e2c: $88
	adc  b                                           ; $5e2d: $88
	adc  b                                           ; $5e2e: $88
	adc  b                                           ; $5e2f: $88
	adc  b                                           ; $5e30: $88
	adc  b                                           ; $5e31: $88
	adc  b                                           ; $5e32: $88
	adc  b                                           ; $5e33: $88
	adc  b                                           ; $5e34: $88
	adc  b                                           ; $5e35: $88
	adc  b                                           ; $5e36: $88
	adc  b                                           ; $5e37: $88
	adc  b                                           ; $5e38: $88
	adc  b                                           ; $5e39: $88
	adc  b                                           ; $5e3a: $88
	adc  b                                           ; $5e3b: $88
	adc  b                                           ; $5e3c: $88
	adc  b                                           ; $5e3d: $88
	adc  b                                           ; $5e3e: $88
	adc  b                                           ; $5e3f: $88
	adc  b                                           ; $5e40: $88
	adc  b                                           ; $5e41: $88
	adc  b                                           ; $5e42: $88
	adc  b                                           ; $5e43: $88
	adc  b                                           ; $5e44: $88
	adc  b                                           ; $5e45: $88
	adc  b                                           ; $5e46: $88
	adc  b                                           ; $5e47: $88
	adc  b                                           ; $5e48: $88
	adc  b                                           ; $5e49: $88
	adc  b                                           ; $5e4a: $88
	adc  b                                           ; $5e4b: $88
	adc  b                                           ; $5e4c: $88
	adc  b                                           ; $5e4d: $88
	adc  b                                           ; $5e4e: $88
	adc  b                                           ; $5e4f: $88
	adc  b                                           ; $5e50: $88
	adc  b                                           ; $5e51: $88
	adc  b                                           ; $5e52: $88
	adc  b                                           ; $5e53: $88
	adc  b                                           ; $5e54: $88
	adc  b                                           ; $5e55: $88
	adc  b                                           ; $5e56: $88
	adc  b                                           ; $5e57: $88
	adc  b                                           ; $5e58: $88
	adc  b                                           ; $5e59: $88
	adc  b                                           ; $5e5a: $88
	adc  b                                           ; $5e5b: $88
	adc  b                                           ; $5e5c: $88
	adc  b                                           ; $5e5d: $88
	adc  b                                           ; $5e5e: $88
	adc  b                                           ; $5e5f: $88
	adc  b                                           ; $5e60: $88
	adc  b                                           ; $5e61: $88
	adc  b                                           ; $5e62: $88
	adc  b                                           ; $5e63: $88
	adc  b                                           ; $5e64: $88
	adc  b                                           ; $5e65: $88
	adc  b                                           ; $5e66: $88
	adc  b                                           ; $5e67: $88
	adc  b                                           ; $5e68: $88
	adc  b                                           ; $5e69: $88
	adc  b                                           ; $5e6a: $88
	adc  b                                           ; $5e6b: $88
	adc  b                                           ; $5e6c: $88
	adc  b                                           ; $5e6d: $88
	adc  b                                           ; $5e6e: $88
	adc  b                                           ; $5e6f: $88
	adc  b                                           ; $5e70: $88
	adc  b                                           ; $5e71: $88
	adc  b                                           ; $5e72: $88
	adc  b                                           ; $5e73: $88
	adc  b                                           ; $5e74: $88
	adc  b                                           ; $5e75: $88
	adc  b                                           ; $5e76: $88
	adc  b                                           ; $5e77: $88
	adc  b                                           ; $5e78: $88
	adc  b                                           ; $5e79: $88
	adc  b                                           ; $5e7a: $88
	adc  b                                           ; $5e7b: $88
	adc  b                                           ; $5e7c: $88
	adc  b                                           ; $5e7d: $88
	adc  b                                           ; $5e7e: $88
	adc  b                                           ; $5e7f: $88
	adc  b                                           ; $5e80: $88
	adc  b                                           ; $5e81: $88
	adc  b                                           ; $5e82: $88
	adc  b                                           ; $5e83: $88
	adc  b                                           ; $5e84: $88
	adc  b                                           ; $5e85: $88
	adc  b                                           ; $5e86: $88
	adc  b                                           ; $5e87: $88
	adc  b                                           ; $5e88: $88
	adc  b                                           ; $5e89: $88
	adc  b                                           ; $5e8a: $88
	adc  b                                           ; $5e8b: $88
	adc  b                                           ; $5e8c: $88
	adc  b                                           ; $5e8d: $88
	adc  b                                           ; $5e8e: $88
	adc  b                                           ; $5e8f: $88
	adc  b                                           ; $5e90: $88
	adc  b                                           ; $5e91: $88
	adc  b                                           ; $5e92: $88
	adc  b                                           ; $5e93: $88
	adc  b                                           ; $5e94: $88
	adc  b                                           ; $5e95: $88
	adc  b                                           ; $5e96: $88
	adc  b                                           ; $5e97: $88
	adc  b                                           ; $5e98: $88
	adc  b                                           ; $5e99: $88
	adc  b                                           ; $5e9a: $88
	adc  b                                           ; $5e9b: $88
	adc  b                                           ; $5e9c: $88
	adc  b                                           ; $5e9d: $88
	adc  b                                           ; $5e9e: $88
	adc  b                                           ; $5e9f: $88
	adc  b                                           ; $5ea0: $88
	adc  b                                           ; $5ea1: $88
	adc  b                                           ; $5ea2: $88
	adc  b                                           ; $5ea3: $88
	adc  b                                           ; $5ea4: $88
	adc  b                                           ; $5ea5: $88
	adc  b                                           ; $5ea6: $88
	adc  b                                           ; $5ea7: $88
	adc  b                                           ; $5ea8: $88
	adc  b                                           ; $5ea9: $88
	adc  b                                           ; $5eaa: $88
	adc  b                                           ; $5eab: $88
	adc  b                                           ; $5eac: $88
	adc  b                                           ; $5ead: $88
	adc  b                                           ; $5eae: $88
	adc  b                                           ; $5eaf: $88
	adc  b                                           ; $5eb0: $88
	adc  b                                           ; $5eb1: $88
	adc  b                                           ; $5eb2: $88
	adc  b                                           ; $5eb3: $88
	adc  b                                           ; $5eb4: $88
	adc  b                                           ; $5eb5: $88
	adc  b                                           ; $5eb6: $88
	adc  b                                           ; $5eb7: $88
	adc  b                                           ; $5eb8: $88
	adc  b                                           ; $5eb9: $88
	adc  b                                           ; $5eba: $88
	adc  b                                           ; $5ebb: $88
	adc  b                                           ; $5ebc: $88
	adc  b                                           ; $5ebd: $88
	adc  b                                           ; $5ebe: $88
	adc  b                                           ; $5ebf: $88
	adc  b                                           ; $5ec0: $88
	adc  b                                           ; $5ec1: $88
	adc  b                                           ; $5ec2: $88
	adc  b                                           ; $5ec3: $88
	adc  b                                           ; $5ec4: $88
	adc  b                                           ; $5ec5: $88
	adc  b                                           ; $5ec6: $88
	adc  b                                           ; $5ec7: $88
	adc  b                                           ; $5ec8: $88
	adc  b                                           ; $5ec9: $88
	adc  b                                           ; $5eca: $88
	adc  b                                           ; $5ecb: $88
	adc  b                                           ; $5ecc: $88
	adc  b                                           ; $5ecd: $88
	adc  b                                           ; $5ece: $88
	adc  b                                           ; $5ecf: $88
	adc  b                                           ; $5ed0: $88
	adc  b                                           ; $5ed1: $88
	adc  b                                           ; $5ed2: $88
	adc  b                                           ; $5ed3: $88
	adc  b                                           ; $5ed4: $88
	adc  b                                           ; $5ed5: $88
	adc  b                                           ; $5ed6: $88
	adc  b                                           ; $5ed7: $88
	adc  b                                           ; $5ed8: $88
	adc  b                                           ; $5ed9: $88
	adc  b                                           ; $5eda: $88
	adc  b                                           ; $5edb: $88
	adc  b                                           ; $5edc: $88
	adc  b                                           ; $5edd: $88
	adc  b                                           ; $5ede: $88
	adc  b                                           ; $5edf: $88
	adc  b                                           ; $5ee0: $88
	adc  b                                           ; $5ee1: $88
	adc  b                                           ; $5ee2: $88
	adc  b                                           ; $5ee3: $88
	adc  b                                           ; $5ee4: $88
	adc  b                                           ; $5ee5: $88
	adc  b                                           ; $5ee6: $88
	adc  b                                           ; $5ee7: $88
	adc  b                                           ; $5ee8: $88
	adc  b                                           ; $5ee9: $88
	adc  b                                           ; $5eea: $88
	adc  b                                           ; $5eeb: $88
	adc  b                                           ; $5eec: $88
	adc  b                                           ; $5eed: $88
	adc  b                                           ; $5eee: $88
	adc  b                                           ; $5eef: $88
	adc  b                                           ; $5ef0: $88
	adc  b                                           ; $5ef1: $88
	adc  b                                           ; $5ef2: $88
	adc  b                                           ; $5ef3: $88
	adc  b                                           ; $5ef4: $88
	adc  b                                           ; $5ef5: $88
	adc  b                                           ; $5ef6: $88
	adc  b                                           ; $5ef7: $88
	adc  b                                           ; $5ef8: $88
	adc  b                                           ; $5ef9: $88
	adc  b                                           ; $5efa: $88
	adc  b                                           ; $5efb: $88
	adc  b                                           ; $5efc: $88
	adc  b                                           ; $5efd: $88
	adc  b                                           ; $5efe: $88
	adc  b                                           ; $5eff: $88
	adc  b                                           ; $5f00: $88
	adc  b                                           ; $5f01: $88
	adc  b                                           ; $5f02: $88
	adc  b                                           ; $5f03: $88
	adc  b                                           ; $5f04: $88
	adc  b                                           ; $5f05: $88
	adc  b                                           ; $5f06: $88
	adc  b                                           ; $5f07: $88
	adc  b                                           ; $5f08: $88
	adc  b                                           ; $5f09: $88
	adc  b                                           ; $5f0a: $88
	adc  b                                           ; $5f0b: $88
	adc  b                                           ; $5f0c: $88
	adc  b                                           ; $5f0d: $88
	adc  b                                           ; $5f0e: $88
	adc  b                                           ; $5f0f: $88
	adc  b                                           ; $5f10: $88
	adc  b                                           ; $5f11: $88
	adc  b                                           ; $5f12: $88
	adc  b                                           ; $5f13: $88
	adc  b                                           ; $5f14: $88
	adc  b                                           ; $5f15: $88
	adc  b                                           ; $5f16: $88
	adc  b                                           ; $5f17: $88
	adc  b                                           ; $5f18: $88
	adc  b                                           ; $5f19: $88
	adc  b                                           ; $5f1a: $88
	adc  b                                           ; $5f1b: $88
	adc  b                                           ; $5f1c: $88
	adc  b                                           ; $5f1d: $88
	adc  b                                           ; $5f1e: $88
	adc  b                                           ; $5f1f: $88
	adc  b                                           ; $5f20: $88
	adc  b                                           ; $5f21: $88
	adc  b                                           ; $5f22: $88
	adc  b                                           ; $5f23: $88
	adc  b                                           ; $5f24: $88
	adc  b                                           ; $5f25: $88
	adc  b                                           ; $5f26: $88
	adc  b                                           ; $5f27: $88
	adc  b                                           ; $5f28: $88
	adc  b                                           ; $5f29: $88
	adc  b                                           ; $5f2a: $88
	adc  b                                           ; $5f2b: $88
	adc  b                                           ; $5f2c: $88
	adc  b                                           ; $5f2d: $88
	adc  b                                           ; $5f2e: $88
	adc  b                                           ; $5f2f: $88
	adc  b                                           ; $5f30: $88
	adc  b                                           ; $5f31: $88
	adc  b                                           ; $5f32: $88
	adc  b                                           ; $5f33: $88
	adc  b                                           ; $5f34: $88
	adc  b                                           ; $5f35: $88
	adc  b                                           ; $5f36: $88
	adc  b                                           ; $5f37: $88
	adc  b                                           ; $5f38: $88
	adc  b                                           ; $5f39: $88
	adc  b                                           ; $5f3a: $88
	adc  b                                           ; $5f3b: $88
	adc  b                                           ; $5f3c: $88
	adc  b                                           ; $5f3d: $88
	adc  b                                           ; $5f3e: $88
	adc  b                                           ; $5f3f: $88
	adc  b                                           ; $5f40: $88
	adc  b                                           ; $5f41: $88
	adc  b                                           ; $5f42: $88
	adc  b                                           ; $5f43: $88
	adc  b                                           ; $5f44: $88
	adc  b                                           ; $5f45: $88
	adc  b                                           ; $5f46: $88
	adc  b                                           ; $5f47: $88
	adc  b                                           ; $5f48: $88
	adc  b                                           ; $5f49: $88
	adc  b                                           ; $5f4a: $88
	adc  b                                           ; $5f4b: $88
	adc  b                                           ; $5f4c: $88
	adc  b                                           ; $5f4d: $88
	adc  b                                           ; $5f4e: $88
	adc  b                                           ; $5f4f: $88
	adc  b                                           ; $5f50: $88
	adc  b                                           ; $5f51: $88
	adc  b                                           ; $5f52: $88
	adc  b                                           ; $5f53: $88
	adc  b                                           ; $5f54: $88
	adc  b                                           ; $5f55: $88
	adc  b                                           ; $5f56: $88
	adc  b                                           ; $5f57: $88
	adc  b                                           ; $5f58: $88
	adc  b                                           ; $5f59: $88
	adc  b                                           ; $5f5a: $88
	adc  b                                           ; $5f5b: $88
	adc  b                                           ; $5f5c: $88
	adc  b                                           ; $5f5d: $88
	adc  b                                           ; $5f5e: $88
	adc  b                                           ; $5f5f: $88
	adc  b                                           ; $5f60: $88
	adc  b                                           ; $5f61: $88
	adc  b                                           ; $5f62: $88
	adc  b                                           ; $5f63: $88
	adc  b                                           ; $5f64: $88
	adc  b                                           ; $5f65: $88
	adc  b                                           ; $5f66: $88
	adc  b                                           ; $5f67: $88
	adc  b                                           ; $5f68: $88
	adc  b                                           ; $5f69: $88
	adc  b                                           ; $5f6a: $88
	adc  b                                           ; $5f6b: $88
	adc  b                                           ; $5f6c: $88
	adc  b                                           ; $5f6d: $88
	adc  b                                           ; $5f6e: $88
	adc  b                                           ; $5f6f: $88
	adc  b                                           ; $5f70: $88
	adc  b                                           ; $5f71: $88
	adc  b                                           ; $5f72: $88
	adc  b                                           ; $5f73: $88
	adc  b                                           ; $5f74: $88
	adc  b                                           ; $5f75: $88
	adc  b                                           ; $5f76: $88
	adc  b                                           ; $5f77: $88
	adc  b                                           ; $5f78: $88
	adc  b                                           ; $5f79: $88
	adc  b                                           ; $5f7a: $88
	adc  b                                           ; $5f7b: $88
	adc  b                                           ; $5f7c: $88
	adc  b                                           ; $5f7d: $88
	adc  b                                           ; $5f7e: $88
	adc  b                                           ; $5f7f: $88
	adc  b                                           ; $5f80: $88
	adc  b                                           ; $5f81: $88
	adc  b                                           ; $5f82: $88
	adc  b                                           ; $5f83: $88
	adc  b                                           ; $5f84: $88
	adc  b                                           ; $5f85: $88
	adc  b                                           ; $5f86: $88
	adc  b                                           ; $5f87: $88
	adc  b                                           ; $5f88: $88
	adc  b                                           ; $5f89: $88
	adc  b                                           ; $5f8a: $88
	adc  b                                           ; $5f8b: $88
	adc  b                                           ; $5f8c: $88
	adc  b                                           ; $5f8d: $88
	adc  b                                           ; $5f8e: $88
	adc  b                                           ; $5f8f: $88
	adc  b                                           ; $5f90: $88
	adc  b                                           ; $5f91: $88
	adc  b                                           ; $5f92: $88
	adc  b                                           ; $5f93: $88
	adc  b                                           ; $5f94: $88
	adc  b                                           ; $5f95: $88
	adc  b                                           ; $5f96: $88
	adc  b                                           ; $5f97: $88
	adc  b                                           ; $5f98: $88
	adc  b                                           ; $5f99: $88
	adc  b                                           ; $5f9a: $88
	adc  b                                           ; $5f9b: $88
	adc  b                                           ; $5f9c: $88
	adc  b                                           ; $5f9d: $88
	adc  b                                           ; $5f9e: $88
	adc  b                                           ; $5f9f: $88
	adc  b                                           ; $5fa0: $88
	adc  b                                           ; $5fa1: $88
	adc  b                                           ; $5fa2: $88
	adc  b                                           ; $5fa3: $88
	adc  b                                           ; $5fa4: $88
	adc  b                                           ; $5fa5: $88
	adc  b                                           ; $5fa6: $88
	adc  b                                           ; $5fa7: $88
	adc  b                                           ; $5fa8: $88
	adc  b                                           ; $5fa9: $88
	adc  b                                           ; $5faa: $88
	adc  b                                           ; $5fab: $88
	adc  b                                           ; $5fac: $88
	adc  b                                           ; $5fad: $88
	adc  b                                           ; $5fae: $88
	adc  b                                           ; $5faf: $88
	adc  b                                           ; $5fb0: $88
	adc  b                                           ; $5fb1: $88
	adc  b                                           ; $5fb2: $88
	adc  b                                           ; $5fb3: $88
	adc  b                                           ; $5fb4: $88
	adc  b                                           ; $5fb5: $88
	adc  b                                           ; $5fb6: $88
	adc  b                                           ; $5fb7: $88
	adc  b                                           ; $5fb8: $88
	adc  b                                           ; $5fb9: $88
	adc  b                                           ; $5fba: $88
	adc  b                                           ; $5fbb: $88
	adc  b                                           ; $5fbc: $88
	adc  b                                           ; $5fbd: $88
	adc  b                                           ; $5fbe: $88
	adc  b                                           ; $5fbf: $88
	adc  b                                           ; $5fc0: $88
	adc  b                                           ; $5fc1: $88
	adc  b                                           ; $5fc2: $88
	adc  b                                           ; $5fc3: $88
	adc  b                                           ; $5fc4: $88
	adc  b                                           ; $5fc5: $88
	adc  b                                           ; $5fc6: $88
	adc  b                                           ; $5fc7: $88
	adc  b                                           ; $5fc8: $88
	adc  b                                           ; $5fc9: $88
	adc  b                                           ; $5fca: $88
	adc  b                                           ; $5fcb: $88
	adc  b                                           ; $5fcc: $88
	adc  b                                           ; $5fcd: $88
	adc  b                                           ; $5fce: $88
	adc  b                                           ; $5fcf: $88
	adc  b                                           ; $5fd0: $88
	adc  b                                           ; $5fd1: $88
	adc  b                                           ; $5fd2: $88
	adc  b                                           ; $5fd3: $88
	adc  b                                           ; $5fd4: $88
	adc  b                                           ; $5fd5: $88
	adc  b                                           ; $5fd6: $88
	adc  b                                           ; $5fd7: $88
	adc  b                                           ; $5fd8: $88
	adc  b                                           ; $5fd9: $88
	adc  b                                           ; $5fda: $88
	adc  b                                           ; $5fdb: $88
	adc  b                                           ; $5fdc: $88
	adc  b                                           ; $5fdd: $88
	adc  b                                           ; $5fde: $88
	adc  b                                           ; $5fdf: $88
	adc  b                                           ; $5fe0: $88
	adc  b                                           ; $5fe1: $88
	adc  b                                           ; $5fe2: $88
	adc  b                                           ; $5fe3: $88
	adc  b                                           ; $5fe4: $88
	adc  b                                           ; $5fe5: $88
	adc  b                                           ; $5fe6: $88
	adc  b                                           ; $5fe7: $88
	adc  b                                           ; $5fe8: $88
	adc  b                                           ; $5fe9: $88
	adc  b                                           ; $5fea: $88
	adc  b                                           ; $5feb: $88
	adc  b                                           ; $5fec: $88
	adc  b                                           ; $5fed: $88
	adc  b                                           ; $5fee: $88
	adc  b                                           ; $5fef: $88
	adc  b                                           ; $5ff0: $88
	adc  b                                           ; $5ff1: $88
	adc  b                                           ; $5ff2: $88
	adc  b                                           ; $5ff3: $88
	adc  b                                           ; $5ff4: $88
	adc  b                                           ; $5ff5: $88
	adc  b                                           ; $5ff6: $88
	adc  b                                           ; $5ff7: $88
	adc  b                                           ; $5ff8: $88
	adc  b                                           ; $5ff9: $88
	adc  b                                           ; $5ffa: $88
	adc  b                                           ; $5ffb: $88
	adc  b                                           ; $5ffc: $88
	adc  b                                           ; $5ffd: $88
	adc  b                                           ; $5ffe: $88
	adc  b                                           ; $5fff: $88
	adc  b                                           ; $6000: $88
	adc  b                                           ; $6001: $88
	adc  b                                           ; $6002: $88
	adc  b                                           ; $6003: $88
	adc  b                                           ; $6004: $88
	adc  b                                           ; $6005: $88
	adc  b                                           ; $6006: $88
	adc  b                                           ; $6007: $88
	adc  b                                           ; $6008: $88
	adc  b                                           ; $6009: $88
	adc  b                                           ; $600a: $88
	adc  b                                           ; $600b: $88
	adc  b                                           ; $600c: $88
	adc  b                                           ; $600d: $88
	adc  b                                           ; $600e: $88
	adc  b                                           ; $600f: $88
	adc  b                                           ; $6010: $88
	adc  b                                           ; $6011: $88
	adc  b                                           ; $6012: $88
	adc  b                                           ; $6013: $88
	adc  b                                           ; $6014: $88
	adc  b                                           ; $6015: $88
	adc  b                                           ; $6016: $88
	adc  b                                           ; $6017: $88
	adc  b                                           ; $6018: $88
	adc  b                                           ; $6019: $88
	adc  b                                           ; $601a: $88
	adc  b                                           ; $601b: $88
	adc  b                                           ; $601c: $88
	adc  b                                           ; $601d: $88
	adc  b                                           ; $601e: $88
	adc  b                                           ; $601f: $88
	adc  b                                           ; $6020: $88
	adc  b                                           ; $6021: $88
	adc  b                                           ; $6022: $88
	adc  b                                           ; $6023: $88
	adc  b                                           ; $6024: $88
	adc  b                                           ; $6025: $88
	adc  b                                           ; $6026: $88
	adc  b                                           ; $6027: $88
	adc  b                                           ; $6028: $88
	adc  b                                           ; $6029: $88
	adc  b                                           ; $602a: $88
	adc  b                                           ; $602b: $88
	adc  b                                           ; $602c: $88
	adc  b                                           ; $602d: $88
	adc  b                                           ; $602e: $88
	adc  b                                           ; $602f: $88
	adc  b                                           ; $6030: $88
	adc  b                                           ; $6031: $88
	adc  b                                           ; $6032: $88
	adc  b                                           ; $6033: $88
	adc  b                                           ; $6034: $88
	adc  b                                           ; $6035: $88
	adc  b                                           ; $6036: $88
	adc  b                                           ; $6037: $88
	adc  b                                           ; $6038: $88
	adc  b                                           ; $6039: $88
	adc  b                                           ; $603a: $88
	adc  b                                           ; $603b: $88
	adc  b                                           ; $603c: $88
	adc  b                                           ; $603d: $88
	adc  b                                           ; $603e: $88
	adc  b                                           ; $603f: $88
	adc  b                                           ; $6040: $88
	adc  b                                           ; $6041: $88
	adc  b                                           ; $6042: $88
	adc  b                                           ; $6043: $88
	adc  b                                           ; $6044: $88
	adc  b                                           ; $6045: $88
	adc  b                                           ; $6046: $88
	adc  b                                           ; $6047: $88
	adc  b                                           ; $6048: $88
	adc  b                                           ; $6049: $88
	adc  b                                           ; $604a: $88
	adc  b                                           ; $604b: $88
	adc  b                                           ; $604c: $88
	adc  b                                           ; $604d: $88
	adc  b                                           ; $604e: $88
	adc  b                                           ; $604f: $88
	adc  b                                           ; $6050: $88
	adc  b                                           ; $6051: $88
	adc  b                                           ; $6052: $88
	adc  b                                           ; $6053: $88
	adc  b                                           ; $6054: $88
	adc  b                                           ; $6055: $88
	adc  b                                           ; $6056: $88
	adc  b                                           ; $6057: $88
	adc  b                                           ; $6058: $88
	adc  b                                           ; $6059: $88
	adc  b                                           ; $605a: $88
	adc  b                                           ; $605b: $88
	adc  b                                           ; $605c: $88
	adc  b                                           ; $605d: $88
	adc  b                                           ; $605e: $88
	adc  b                                           ; $605f: $88
	adc  b                                           ; $6060: $88
	adc  b                                           ; $6061: $88
	adc  b                                           ; $6062: $88
	adc  b                                           ; $6063: $88
	adc  b                                           ; $6064: $88
	adc  b                                           ; $6065: $88
	adc  b                                           ; $6066: $88
	adc  b                                           ; $6067: $88
	adc  b                                           ; $6068: $88
	adc  b                                           ; $6069: $88
	adc  b                                           ; $606a: $88
	adc  b                                           ; $606b: $88
	adc  b                                           ; $606c: $88
	adc  b                                           ; $606d: $88
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	adc  b                                           ; $6072: $88
	adc  b                                           ; $6073: $88
	adc  b                                           ; $6074: $88
	adc  b                                           ; $6075: $88
	adc  b                                           ; $6076: $88
	adc  b                                           ; $6077: $88
	adc  b                                           ; $6078: $88
	adc  b                                           ; $6079: $88
	adc  b                                           ; $607a: $88
	adc  b                                           ; $607b: $88
	adc  b                                           ; $607c: $88
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  b                                           ; $607f: $88
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	adc  b                                           ; $6083: $88
	adc  b                                           ; $6084: $88
	adc  b                                           ; $6085: $88
	adc  b                                           ; $6086: $88
	adc  b                                           ; $6087: $88
	adc  b                                           ; $6088: $88
	adc  b                                           ; $6089: $88
	adc  b                                           ; $608a: $88
	adc  b                                           ; $608b: $88
	adc  b                                           ; $608c: $88
	adc  b                                           ; $608d: $88
	adc  b                                           ; $608e: $88
	adc  b                                           ; $608f: $88
	adc  b                                           ; $6090: $88
	adc  b                                           ; $6091: $88
	adc  b                                           ; $6092: $88
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	adc  b                                           ; $6095: $88
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	adc  b                                           ; $6099: $88
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	adc  b                                           ; $609c: $88
	adc  b                                           ; $609d: $88
	adc  b                                           ; $609e: $88
	adc  b                                           ; $609f: $88
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	adc  b                                           ; $60a4: $88
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  b                                           ; $60b8: $88
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	adc  b                                           ; $60bd: $88
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	adc  b                                           ; $60c0: $88
	adc  b                                           ; $60c1: $88
	adc  b                                           ; $60c2: $88
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  b                                           ; $60ce: $88
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	adc  b                                           ; $60d6: $88
	adc  b                                           ; $60d7: $88
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	adc  b                                           ; $60e0: $88
	adc  b                                           ; $60e1: $88
	adc  b                                           ; $60e2: $88
	adc  b                                           ; $60e3: $88
	adc  b                                           ; $60e4: $88
	adc  b                                           ; $60e5: $88
	adc  b                                           ; $60e6: $88
	adc  b                                           ; $60e7: $88
	adc  b                                           ; $60e8: $88
	adc  b                                           ; $60e9: $88
	adc  b                                           ; $60ea: $88
	adc  b                                           ; $60eb: $88
	adc  b                                           ; $60ec: $88
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	adc  b                                           ; $60f0: $88
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	adc  b                                           ; $60ff: $88
	adc  b                                           ; $6100: $88
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	adc  b                                           ; $6103: $88
	adc  b                                           ; $6104: $88
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	adc  b                                           ; $6108: $88
	adc  b                                           ; $6109: $88
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	adc  b                                           ; $610c: $88
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	adc  b                                           ; $610f: $88
	adc  b                                           ; $6110: $88
	adc  b                                           ; $6111: $88
	adc  b                                           ; $6112: $88
	adc  b                                           ; $6113: $88
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	adc  b                                           ; $6116: $88
	adc  b                                           ; $6117: $88
	adc  b                                           ; $6118: $88
	adc  b                                           ; $6119: $88
	adc  b                                           ; $611a: $88
	adc  b                                           ; $611b: $88
	adc  b                                           ; $611c: $88
	adc  b                                           ; $611d: $88
	adc  b                                           ; $611e: $88
	adc  b                                           ; $611f: $88
	adc  b                                           ; $6120: $88
	adc  b                                           ; $6121: $88
	adc  b                                           ; $6122: $88
	adc  b                                           ; $6123: $88
	adc  b                                           ; $6124: $88
	adc  b                                           ; $6125: $88
	adc  b                                           ; $6126: $88
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	adc  b                                           ; $6129: $88
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	adc  b                                           ; $612c: $88
	adc  b                                           ; $612d: $88
	adc  b                                           ; $612e: $88
	adc  b                                           ; $612f: $88
	adc  b                                           ; $6130: $88
	adc  b                                           ; $6131: $88
	adc  b                                           ; $6132: $88
	adc  b                                           ; $6133: $88
	adc  b                                           ; $6134: $88
	adc  b                                           ; $6135: $88
	adc  b                                           ; $6136: $88
	adc  b                                           ; $6137: $88
	adc  b                                           ; $6138: $88
	adc  b                                           ; $6139: $88
	adc  b                                           ; $613a: $88
	adc  b                                           ; $613b: $88
	adc  b                                           ; $613c: $88
	adc  b                                           ; $613d: $88
	adc  b                                           ; $613e: $88
	adc  b                                           ; $613f: $88
	adc  b                                           ; $6140: $88
	adc  b                                           ; $6141: $88
	adc  b                                           ; $6142: $88
	adc  b                                           ; $6143: $88
	adc  b                                           ; $6144: $88
	adc  b                                           ; $6145: $88
	adc  b                                           ; $6146: $88
	adc  b                                           ; $6147: $88
	adc  b                                           ; $6148: $88
	adc  b                                           ; $6149: $88
	adc  b                                           ; $614a: $88
	adc  b                                           ; $614b: $88
	adc  b                                           ; $614c: $88
	adc  b                                           ; $614d: $88
	adc  b                                           ; $614e: $88
	adc  b                                           ; $614f: $88
	adc  b                                           ; $6150: $88
	adc  b                                           ; $6151: $88
	adc  b                                           ; $6152: $88
	adc  b                                           ; $6153: $88
	adc  b                                           ; $6154: $88
	adc  b                                           ; $6155: $88
	adc  b                                           ; $6156: $88
	adc  b                                           ; $6157: $88
	adc  b                                           ; $6158: $88
	adc  b                                           ; $6159: $88
	adc  b                                           ; $615a: $88
	adc  b                                           ; $615b: $88
	adc  b                                           ; $615c: $88
	adc  b                                           ; $615d: $88
	adc  b                                           ; $615e: $88
	adc  b                                           ; $615f: $88
	adc  b                                           ; $6160: $88
	adc  b                                           ; $6161: $88
	adc  b                                           ; $6162: $88
	adc  b                                           ; $6163: $88
	adc  b                                           ; $6164: $88
	adc  b                                           ; $6165: $88
	adc  b                                           ; $6166: $88
	adc  b                                           ; $6167: $88
	adc  b                                           ; $6168: $88
	adc  b                                           ; $6169: $88
	adc  b                                           ; $616a: $88
	adc  b                                           ; $616b: $88
	adc  b                                           ; $616c: $88
	adc  b                                           ; $616d: $88
	adc  b                                           ; $616e: $88
	adc  b                                           ; $616f: $88
	adc  b                                           ; $6170: $88
	adc  b                                           ; $6171: $88
	adc  b                                           ; $6172: $88
	adc  b                                           ; $6173: $88
	adc  b                                           ; $6174: $88
	adc  b                                           ; $6175: $88
	adc  b                                           ; $6176: $88
	adc  b                                           ; $6177: $88
	adc  b                                           ; $6178: $88
	adc  b                                           ; $6179: $88
	adc  b                                           ; $617a: $88
	adc  b                                           ; $617b: $88
	adc  b                                           ; $617c: $88
	adc  b                                           ; $617d: $88
	adc  b                                           ; $617e: $88
	adc  b                                           ; $617f: $88
	adc  b                                           ; $6180: $88
	adc  b                                           ; $6181: $88
	adc  b                                           ; $6182: $88
	adc  b                                           ; $6183: $88
	adc  b                                           ; $6184: $88
	adc  b                                           ; $6185: $88
	adc  b                                           ; $6186: $88
	adc  b                                           ; $6187: $88
	adc  b                                           ; $6188: $88
	adc  b                                           ; $6189: $88
	adc  b                                           ; $618a: $88
	adc  b                                           ; $618b: $88
	adc  b                                           ; $618c: $88
	adc  b                                           ; $618d: $88
	adc  b                                           ; $618e: $88
	adc  b                                           ; $618f: $88
	adc  b                                           ; $6190: $88
	adc  b                                           ; $6191: $88
	adc  b                                           ; $6192: $88
	adc  b                                           ; $6193: $88
	adc  b                                           ; $6194: $88
	adc  b                                           ; $6195: $88
	adc  b                                           ; $6196: $88
	adc  b                                           ; $6197: $88
	adc  b                                           ; $6198: $88
	adc  b                                           ; $6199: $88
	adc  b                                           ; $619a: $88
	adc  b                                           ; $619b: $88
	adc  b                                           ; $619c: $88
	adc  b                                           ; $619d: $88
	adc  b                                           ; $619e: $88
	adc  b                                           ; $619f: $88
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	adc  b                                           ; $61a2: $88
	adc  b                                           ; $61a3: $88
	adc  b                                           ; $61a4: $88
	adc  b                                           ; $61a5: $88
	adc  b                                           ; $61a6: $88
	adc  b                                           ; $61a7: $88
	adc  b                                           ; $61a8: $88
	adc  b                                           ; $61a9: $88
	adc  b                                           ; $61aa: $88
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	adc  b                                           ; $61af: $88
	adc  b                                           ; $61b0: $88
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  b                                           ; $61b4: $88
	adc  b                                           ; $61b5: $88
	adc  b                                           ; $61b6: $88
	adc  b                                           ; $61b7: $88
	adc  b                                           ; $61b8: $88
	adc  b                                           ; $61b9: $88
	adc  b                                           ; $61ba: $88
	adc  b                                           ; $61bb: $88
	adc  b                                           ; $61bc: $88
	adc  b                                           ; $61bd: $88
	adc  b                                           ; $61be: $88
	adc  b                                           ; $61bf: $88
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	adc  b                                           ; $61c4: $88
	adc  b                                           ; $61c5: $88
	adc  b                                           ; $61c6: $88
	adc  b                                           ; $61c7: $88
	adc  b                                           ; $61c8: $88
	adc  b                                           ; $61c9: $88
	adc  b                                           ; $61ca: $88
	adc  b                                           ; $61cb: $88
	adc  b                                           ; $61cc: $88
	adc  b                                           ; $61cd: $88
	adc  b                                           ; $61ce: $88
	adc  b                                           ; $61cf: $88
	adc  b                                           ; $61d0: $88
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
	adc  b                                           ; $62de: $88
	adc  b                                           ; $62df: $88
	adc  b                                           ; $62e0: $88
	adc  b                                           ; $62e1: $88
	adc  b                                           ; $62e2: $88
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	adc  b                                           ; $62e5: $88
	adc  b                                           ; $62e6: $88
	adc  b                                           ; $62e7: $88
	adc  b                                           ; $62e8: $88
	adc  b                                           ; $62e9: $88
	adc  b                                           ; $62ea: $88
	adc  b                                           ; $62eb: $88
	adc  b                                           ; $62ec: $88
	adc  b                                           ; $62ed: $88
	adc  b                                           ; $62ee: $88
	adc  b                                           ; $62ef: $88
	adc  b                                           ; $62f0: $88
	adc  b                                           ; $62f1: $88
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  b                                           ; $62f4: $88
	adc  b                                           ; $62f5: $88
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  b                                           ; $62f8: $88
	adc  b                                           ; $62f9: $88
	adc  b                                           ; $62fa: $88
	adc  b                                           ; $62fb: $88
	adc  b                                           ; $62fc: $88
	adc  b                                           ; $62fd: $88
	adc  b                                           ; $62fe: $88
	adc  b                                           ; $62ff: $88
	adc  b                                           ; $6300: $88
	adc  b                                           ; $6301: $88
	adc  b                                           ; $6302: $88
	adc  b                                           ; $6303: $88
	adc  b                                           ; $6304: $88
	adc  b                                           ; $6305: $88
	adc  b                                           ; $6306: $88
	adc  b                                           ; $6307: $88
	adc  b                                           ; $6308: $88
	adc  b                                           ; $6309: $88
	adc  b                                           ; $630a: $88
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	adc  b                                           ; $630d: $88
	adc  b                                           ; $630e: $88
	adc  b                                           ; $630f: $88
	adc  b                                           ; $6310: $88
	adc  b                                           ; $6311: $88
	adc  b                                           ; $6312: $88
	adc  b                                           ; $6313: $88
	adc  b                                           ; $6314: $88
	adc  b                                           ; $6315: $88
	adc  b                                           ; $6316: $88
	adc  b                                           ; $6317: $88
	adc  b                                           ; $6318: $88
	adc  b                                           ; $6319: $88
	adc  b                                           ; $631a: $88
	adc  b                                           ; $631b: $88
	adc  b                                           ; $631c: $88
	adc  b                                           ; $631d: $88
	adc  b                                           ; $631e: $88
	adc  b                                           ; $631f: $88
	adc  b                                           ; $6320: $88
	adc  b                                           ; $6321: $88
	adc  b                                           ; $6322: $88
	adc  b                                           ; $6323: $88
	adc  b                                           ; $6324: $88
	adc  b                                           ; $6325: $88
	adc  b                                           ; $6326: $88
	adc  b                                           ; $6327: $88
	adc  b                                           ; $6328: $88
	adc  b                                           ; $6329: $88
	adc  b                                           ; $632a: $88
	adc  b                                           ; $632b: $88
	adc  b                                           ; $632c: $88
	adc  b                                           ; $632d: $88
	adc  b                                           ; $632e: $88
	adc  b                                           ; $632f: $88
	adc  b                                           ; $6330: $88
	adc  b                                           ; $6331: $88
	adc  b                                           ; $6332: $88
	adc  b                                           ; $6333: $88
	adc  b                                           ; $6334: $88
	adc  b                                           ; $6335: $88
	adc  b                                           ; $6336: $88
	adc  b                                           ; $6337: $88
	adc  b                                           ; $6338: $88
	adc  b                                           ; $6339: $88
	adc  b                                           ; $633a: $88

Call_0b0_633b:
	adc  b                                           ; $633b: $88
	adc  b                                           ; $633c: $88
	adc  b                                           ; $633d: $88
	adc  b                                           ; $633e: $88
	adc  b                                           ; $633f: $88
	adc  b                                           ; $6340: $88
	adc  b                                           ; $6341: $88
	adc  b                                           ; $6342: $88
	adc  b                                           ; $6343: $88
	adc  b                                           ; $6344: $88
	adc  b                                           ; $6345: $88
	adc  b                                           ; $6346: $88
	adc  b                                           ; $6347: $88
	adc  b                                           ; $6348: $88
	adc  b                                           ; $6349: $88
	adc  b                                           ; $634a: $88
	adc  b                                           ; $634b: $88
	adc  b                                           ; $634c: $88
	adc  b                                           ; $634d: $88
	adc  b                                           ; $634e: $88
	adc  b                                           ; $634f: $88
	adc  b                                           ; $6350: $88
	adc  b                                           ; $6351: $88
	adc  b                                           ; $6352: $88
	adc  b                                           ; $6353: $88
	adc  b                                           ; $6354: $88
	adc  b                                           ; $6355: $88
	adc  b                                           ; $6356: $88
	adc  b                                           ; $6357: $88
	adc  b                                           ; $6358: $88
	adc  b                                           ; $6359: $88
	adc  b                                           ; $635a: $88
	adc  b                                           ; $635b: $88
	adc  b                                           ; $635c: $88
	adc  b                                           ; $635d: $88
	adc  b                                           ; $635e: $88
	adc  b                                           ; $635f: $88
	adc  b                                           ; $6360: $88
	adc  b                                           ; $6361: $88
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	adc  b                                           ; $6364: $88
	adc  b                                           ; $6365: $88
	adc  b                                           ; $6366: $88
	adc  b                                           ; $6367: $88
	adc  b                                           ; $6368: $88
	adc  b                                           ; $6369: $88
	adc  b                                           ; $636a: $88
	adc  b                                           ; $636b: $88
	adc  b                                           ; $636c: $88
	adc  b                                           ; $636d: $88
	adc  b                                           ; $636e: $88
	adc  b                                           ; $636f: $88
	adc  b                                           ; $6370: $88
	adc  b                                           ; $6371: $88
	adc  b                                           ; $6372: $88
	adc  b                                           ; $6373: $88
	adc  b                                           ; $6374: $88
	adc  b                                           ; $6375: $88
	adc  b                                           ; $6376: $88
	adc  b                                           ; $6377: $88
	adc  b                                           ; $6378: $88
	adc  b                                           ; $6379: $88
	adc  b                                           ; $637a: $88
	adc  b                                           ; $637b: $88
	adc  b                                           ; $637c: $88
	adc  b                                           ; $637d: $88
	adc  b                                           ; $637e: $88
	adc  b                                           ; $637f: $88
	adc  b                                           ; $6380: $88
	adc  b                                           ; $6381: $88
	adc  b                                           ; $6382: $88
	adc  b                                           ; $6383: $88
	adc  b                                           ; $6384: $88
	adc  b                                           ; $6385: $88
	adc  b                                           ; $6386: $88
	adc  b                                           ; $6387: $88
	adc  b                                           ; $6388: $88
	adc  b                                           ; $6389: $88
	adc  b                                           ; $638a: $88
	adc  b                                           ; $638b: $88
	adc  b                                           ; $638c: $88
	adc  b                                           ; $638d: $88
	adc  b                                           ; $638e: $88
	adc  b                                           ; $638f: $88
	adc  b                                           ; $6390: $88
	adc  b                                           ; $6391: $88
	adc  b                                           ; $6392: $88
	adc  b                                           ; $6393: $88
	adc  b                                           ; $6394: $88
	adc  b                                           ; $6395: $88
	adc  b                                           ; $6396: $88
	adc  b                                           ; $6397: $88
	adc  b                                           ; $6398: $88
	adc  b                                           ; $6399: $88
	adc  b                                           ; $639a: $88
	adc  b                                           ; $639b: $88
	adc  b                                           ; $639c: $88
	adc  b                                           ; $639d: $88
	adc  b                                           ; $639e: $88
	adc  b                                           ; $639f: $88
	adc  b                                           ; $63a0: $88
	adc  b                                           ; $63a1: $88
	adc  b                                           ; $63a2: $88
	adc  b                                           ; $63a3: $88
	adc  b                                           ; $63a4: $88
	adc  b                                           ; $63a5: $88
	adc  b                                           ; $63a6: $88
	adc  b                                           ; $63a7: $88
	adc  b                                           ; $63a8: $88
	adc  b                                           ; $63a9: $88
	adc  b                                           ; $63aa: $88
	adc  b                                           ; $63ab: $88
	adc  b                                           ; $63ac: $88
	adc  b                                           ; $63ad: $88
	adc  b                                           ; $63ae: $88
	adc  b                                           ; $63af: $88
	adc  b                                           ; $63b0: $88
	adc  b                                           ; $63b1: $88
	adc  b                                           ; $63b2: $88
	adc  b                                           ; $63b3: $88
	adc  b                                           ; $63b4: $88
	adc  b                                           ; $63b5: $88
	adc  b                                           ; $63b6: $88
	adc  b                                           ; $63b7: $88
	adc  b                                           ; $63b8: $88
	adc  b                                           ; $63b9: $88
	adc  b                                           ; $63ba: $88
	adc  b                                           ; $63bb: $88
	adc  b                                           ; $63bc: $88
	adc  b                                           ; $63bd: $88
	adc  b                                           ; $63be: $88
	adc  b                                           ; $63bf: $88
	adc  b                                           ; $63c0: $88
	adc  b                                           ; $63c1: $88
	adc  b                                           ; $63c2: $88
	adc  b                                           ; $63c3: $88
	adc  b                                           ; $63c4: $88
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	adc  b                                           ; $63ca: $88
	adc  b                                           ; $63cb: $88
	adc  b                                           ; $63cc: $88
	adc  b                                           ; $63cd: $88
	adc  b                                           ; $63ce: $88
	adc  b                                           ; $63cf: $88
	adc  b                                           ; $63d0: $88
	adc  b                                           ; $63d1: $88
	adc  b                                           ; $63d2: $88
	adc  b                                           ; $63d3: $88
	adc  b                                           ; $63d4: $88
	adc  b                                           ; $63d5: $88
	adc  b                                           ; $63d6: $88
	adc  b                                           ; $63d7: $88
	adc  b                                           ; $63d8: $88

Call_0b0_63d9:
	adc  b                                           ; $63d9: $88
	adc  b                                           ; $63da: $88
	adc  b                                           ; $63db: $88
	adc  b                                           ; $63dc: $88
	adc  b                                           ; $63dd: $88
	adc  b                                           ; $63de: $88
	adc  b                                           ; $63df: $88
	adc  b                                           ; $63e0: $88
	adc  b                                           ; $63e1: $88
	adc  b                                           ; $63e2: $88
	adc  b                                           ; $63e3: $88
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	adc  b                                           ; $63e6: $88
	adc  b                                           ; $63e7: $88
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
	adc  b                                           ; $63ea: $88
	adc  b                                           ; $63eb: $88
	adc  b                                           ; $63ec: $88
	adc  b                                           ; $63ed: $88
	adc  b                                           ; $63ee: $88
	adc  b                                           ; $63ef: $88
	adc  b                                           ; $63f0: $88
	adc  b                                           ; $63f1: $88
	adc  b                                           ; $63f2: $88
	adc  b                                           ; $63f3: $88
	adc  b                                           ; $63f4: $88
	adc  b                                           ; $63f5: $88
	adc  b                                           ; $63f6: $88
	adc  b                                           ; $63f7: $88
	adc  b                                           ; $63f8: $88
	adc  b                                           ; $63f9: $88
	adc  b                                           ; $63fa: $88
	adc  b                                           ; $63fb: $88
	adc  b                                           ; $63fc: $88
	adc  b                                           ; $63fd: $88
	adc  b                                           ; $63fe: $88
	adc  b                                           ; $63ff: $88
	adc  b                                           ; $6400: $88
	adc  b                                           ; $6401: $88
	adc  b                                           ; $6402: $88
	adc  b                                           ; $6403: $88
	adc  b                                           ; $6404: $88
	adc  b                                           ; $6405: $88
	adc  b                                           ; $6406: $88
	adc  b                                           ; $6407: $88
	adc  b                                           ; $6408: $88
	adc  b                                           ; $6409: $88
	adc  b                                           ; $640a: $88
	adc  b                                           ; $640b: $88
	adc  b                                           ; $640c: $88
	adc  b                                           ; $640d: $88
	adc  b                                           ; $640e: $88
	adc  b                                           ; $640f: $88
	adc  b                                           ; $6410: $88
	adc  b                                           ; $6411: $88
	adc  b                                           ; $6412: $88
	adc  b                                           ; $6413: $88
	adc  b                                           ; $6414: $88
	adc  b                                           ; $6415: $88
	adc  b                                           ; $6416: $88
	adc  b                                           ; $6417: $88
	adc  b                                           ; $6418: $88
	adc  b                                           ; $6419: $88
	adc  b                                           ; $641a: $88
	adc  b                                           ; $641b: $88
	adc  b                                           ; $641c: $88
	adc  b                                           ; $641d: $88
	adc  b                                           ; $641e: $88
	adc  b                                           ; $641f: $88
	adc  b                                           ; $6420: $88
	adc  b                                           ; $6421: $88
	adc  b                                           ; $6422: $88
	adc  b                                           ; $6423: $88
	adc  b                                           ; $6424: $88
	adc  b                                           ; $6425: $88
	adc  b                                           ; $6426: $88
	adc  b                                           ; $6427: $88
	adc  b                                           ; $6428: $88
	adc  b                                           ; $6429: $88
	adc  b                                           ; $642a: $88
	adc  b                                           ; $642b: $88
	adc  b                                           ; $642c: $88
	adc  b                                           ; $642d: $88
	adc  b                                           ; $642e: $88
	adc  b                                           ; $642f: $88
	adc  b                                           ; $6430: $88
	adc  b                                           ; $6431: $88
	adc  b                                           ; $6432: $88
	adc  b                                           ; $6433: $88
	adc  b                                           ; $6434: $88
	adc  b                                           ; $6435: $88
	adc  b                                           ; $6436: $88
	adc  b                                           ; $6437: $88
	adc  b                                           ; $6438: $88
	adc  b                                           ; $6439: $88
	adc  b                                           ; $643a: $88
	adc  b                                           ; $643b: $88
	adc  b                                           ; $643c: $88
	adc  b                                           ; $643d: $88
	adc  b                                           ; $643e: $88
	adc  b                                           ; $643f: $88
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	adc  b                                           ; $6442: $88
	adc  b                                           ; $6443: $88
	adc  b                                           ; $6444: $88
	adc  b                                           ; $6445: $88
	adc  b                                           ; $6446: $88
	adc  b                                           ; $6447: $88
	adc  b                                           ; $6448: $88
	adc  b                                           ; $6449: $88
	adc  b                                           ; $644a: $88
	adc  b                                           ; $644b: $88
	adc  b                                           ; $644c: $88
	adc  b                                           ; $644d: $88
	adc  b                                           ; $644e: $88
	adc  b                                           ; $644f: $88
	adc  b                                           ; $6450: $88
	adc  b                                           ; $6451: $88
	adc  b                                           ; $6452: $88
	adc  b                                           ; $6453: $88
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	adc  b                                           ; $6456: $88
	adc  b                                           ; $6457: $88
	adc  b                                           ; $6458: $88
	adc  b                                           ; $6459: $88
	adc  b                                           ; $645a: $88
	adc  b                                           ; $645b: $88
	adc  b                                           ; $645c: $88
	adc  b                                           ; $645d: $88
	adc  b                                           ; $645e: $88
	adc  b                                           ; $645f: $88
	adc  b                                           ; $6460: $88
	adc  b                                           ; $6461: $88
	adc  b                                           ; $6462: $88
	adc  b                                           ; $6463: $88
	adc  b                                           ; $6464: $88
	adc  b                                           ; $6465: $88
	adc  b                                           ; $6466: $88
	adc  b                                           ; $6467: $88
	adc  b                                           ; $6468: $88
	adc  b                                           ; $6469: $88
	adc  b                                           ; $646a: $88
	adc  b                                           ; $646b: $88
	adc  b                                           ; $646c: $88
	adc  b                                           ; $646d: $88
	adc  b                                           ; $646e: $88
	adc  b                                           ; $646f: $88
	adc  b                                           ; $6470: $88
	adc  b                                           ; $6471: $88
	adc  b                                           ; $6472: $88

Jump_0b0_6473:
	adc  b                                           ; $6473: $88
	adc  b                                           ; $6474: $88
	adc  b                                           ; $6475: $88
	adc  b                                           ; $6476: $88
	adc  b                                           ; $6477: $88
	adc  b                                           ; $6478: $88
	adc  b                                           ; $6479: $88
	adc  b                                           ; $647a: $88
	adc  b                                           ; $647b: $88
	adc  b                                           ; $647c: $88
	adc  b                                           ; $647d: $88
	adc  b                                           ; $647e: $88
	adc  b                                           ; $647f: $88
	adc  b                                           ; $6480: $88
	adc  b                                           ; $6481: $88
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	adc  b                                           ; $6484: $88
	adc  b                                           ; $6485: $88
	adc  b                                           ; $6486: $88
	adc  b                                           ; $6487: $88
	adc  b                                           ; $6488: $88
	adc  b                                           ; $6489: $88
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	adc  b                                           ; $648c: $88
	adc  b                                           ; $648d: $88
	adc  b                                           ; $648e: $88
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	adc  b                                           ; $6492: $88
	adc  b                                           ; $6493: $88
	adc  b                                           ; $6494: $88
	adc  b                                           ; $6495: $88
	adc  b                                           ; $6496: $88
	adc  b                                           ; $6497: $88
	adc  b                                           ; $6498: $88
	adc  b                                           ; $6499: $88
	adc  b                                           ; $649a: $88
	adc  b                                           ; $649b: $88
	adc  b                                           ; $649c: $88
	adc  b                                           ; $649d: $88
	adc  b                                           ; $649e: $88
	adc  b                                           ; $649f: $88
	adc  b                                           ; $64a0: $88
	adc  b                                           ; $64a1: $88
	adc  b                                           ; $64a2: $88
	adc  b                                           ; $64a3: $88
	adc  b                                           ; $64a4: $88
	adc  b                                           ; $64a5: $88
	adc  b                                           ; $64a6: $88
	adc  b                                           ; $64a7: $88
	adc  b                                           ; $64a8: $88
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	adc  b                                           ; $64af: $88
	adc  b                                           ; $64b0: $88
	adc  b                                           ; $64b1: $88
	adc  b                                           ; $64b2: $88
	adc  b                                           ; $64b3: $88
	adc  b                                           ; $64b4: $88
	adc  b                                           ; $64b5: $88
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	adc  b                                           ; $64b8: $88
	adc  b                                           ; $64b9: $88
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  b                                           ; $64bc: $88
	adc  b                                           ; $64bd: $88
	adc  b                                           ; $64be: $88
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	adc  b                                           ; $64c1: $88
	adc  b                                           ; $64c2: $88
	adc  b                                           ; $64c3: $88
	adc  b                                           ; $64c4: $88
	adc  b                                           ; $64c5: $88
	adc  b                                           ; $64c6: $88
	adc  b                                           ; $64c7: $88
	adc  b                                           ; $64c8: $88
	adc  b                                           ; $64c9: $88
	adc  b                                           ; $64ca: $88
	adc  b                                           ; $64cb: $88
	adc  b                                           ; $64cc: $88
	adc  b                                           ; $64cd: $88
	adc  b                                           ; $64ce: $88
	adc  b                                           ; $64cf: $88
	adc  b                                           ; $64d0: $88
	adc  b                                           ; $64d1: $88
	adc  b                                           ; $64d2: $88
	adc  b                                           ; $64d3: $88
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	adc  b                                           ; $64d6: $88
	adc  b                                           ; $64d7: $88
	adc  b                                           ; $64d8: $88
	adc  b                                           ; $64d9: $88
	adc  b                                           ; $64da: $88
	adc  b                                           ; $64db: $88
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
	adc  b                                           ; $64f4: $88
	adc  b                                           ; $64f5: $88
	adc  b                                           ; $64f6: $88
	adc  b                                           ; $64f7: $88
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	adc  b                                           ; $64fa: $88
	adc  b                                           ; $64fb: $88
	adc  b                                           ; $64fc: $88
	adc  b                                           ; $64fd: $88
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	adc  b                                           ; $6500: $88
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	adc  b                                           ; $6503: $88
	adc  b                                           ; $6504: $88
	adc  b                                           ; $6505: $88
	adc  b                                           ; $6506: $88
	adc  b                                           ; $6507: $88
	adc  b                                           ; $6508: $88
	adc  b                                           ; $6509: $88
	adc  b                                           ; $650a: $88
	adc  b                                           ; $650b: $88
	adc  b                                           ; $650c: $88
	adc  b                                           ; $650d: $88
	adc  b                                           ; $650e: $88
	adc  b                                           ; $650f: $88
	adc  b                                           ; $6510: $88
	adc  b                                           ; $6511: $88
	adc  b                                           ; $6512: $88
	adc  b                                           ; $6513: $88
	adc  b                                           ; $6514: $88
	adc  b                                           ; $6515: $88
	adc  b                                           ; $6516: $88
	adc  b                                           ; $6517: $88
	adc  b                                           ; $6518: $88
	adc  b                                           ; $6519: $88
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	adc  b                                           ; $651d: $88
	adc  b                                           ; $651e: $88
	adc  b                                           ; $651f: $88
	adc  b                                           ; $6520: $88
	adc  b                                           ; $6521: $88
	adc  b                                           ; $6522: $88
	adc  b                                           ; $6523: $88
	adc  b                                           ; $6524: $88
	adc  b                                           ; $6525: $88
	adc  b                                           ; $6526: $88
	adc  b                                           ; $6527: $88
	adc  b                                           ; $6528: $88
	adc  b                                           ; $6529: $88
	adc  b                                           ; $652a: $88
	adc  b                                           ; $652b: $88
	adc  b                                           ; $652c: $88
	adc  b                                           ; $652d: $88
	adc  b                                           ; $652e: $88
	adc  b                                           ; $652f: $88
	adc  b                                           ; $6530: $88
	adc  b                                           ; $6531: $88
	adc  b                                           ; $6532: $88
	adc  b                                           ; $6533: $88
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	adc  b                                           ; $6537: $88
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	adc  b                                           ; $653b: $88
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	adc  b                                           ; $653f: $88
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	adc  b                                           ; $6542: $88
	adc  b                                           ; $6543: $88
	adc  b                                           ; $6544: $88
	adc  b                                           ; $6545: $88
	adc  b                                           ; $6546: $88
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	adc  b                                           ; $6549: $88
	adc  b                                           ; $654a: $88
	adc  b                                           ; $654b: $88
	adc  b                                           ; $654c: $88
	adc  b                                           ; $654d: $88
	adc  b                                           ; $654e: $88
	adc  b                                           ; $654f: $88
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	adc  b                                           ; $6552: $88
	adc  b                                           ; $6553: $88
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	adc  b                                           ; $6556: $88
	adc  b                                           ; $6557: $88
	adc  b                                           ; $6558: $88
	adc  b                                           ; $6559: $88
	adc  b                                           ; $655a: $88
	adc  b                                           ; $655b: $88
	adc  b                                           ; $655c: $88
	adc  b                                           ; $655d: $88
	adc  b                                           ; $655e: $88
	adc  b                                           ; $655f: $88
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	adc  b                                           ; $6562: $88
	adc  b                                           ; $6563: $88
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  b                                           ; $6569: $88
	adc  b                                           ; $656a: $88
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	adc  b                                           ; $6579: $88
	adc  b                                           ; $657a: $88
	adc  b                                           ; $657b: $88
	adc  b                                           ; $657c: $88
	adc  b                                           ; $657d: $88
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	adc  b                                           ; $6580: $88
	adc  b                                           ; $6581: $88
	adc  b                                           ; $6582: $88
	adc  b                                           ; $6583: $88
	adc  b                                           ; $6584: $88
	adc  b                                           ; $6585: $88
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	adc  b                                           ; $658a: $88
	adc  b                                           ; $658b: $88
	adc  b                                           ; $658c: $88
	adc  b                                           ; $658d: $88
	adc  b                                           ; $658e: $88
	adc  b                                           ; $658f: $88
	adc  b                                           ; $6590: $88
	adc  b                                           ; $6591: $88
	adc  b                                           ; $6592: $88
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	adc  b                                           ; $6596: $88
	adc  b                                           ; $6597: $88
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	adc  b                                           ; $659b: $88
	adc  b                                           ; $659c: $88
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	adc  b                                           ; $65a0: $88
	adc  b                                           ; $65a1: $88
	adc  b                                           ; $65a2: $88
	adc  b                                           ; $65a3: $88
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	adc  b                                           ; $65a6: $88
	adc  b                                           ; $65a7: $88
	adc  b                                           ; $65a8: $88
	adc  b                                           ; $65a9: $88
	adc  b                                           ; $65aa: $88
	adc  b                                           ; $65ab: $88
	adc  b                                           ; $65ac: $88
	adc  b                                           ; $65ad: $88
	adc  b                                           ; $65ae: $88
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	adc  b                                           ; $65b1: $88
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	adc  b                                           ; $65b4: $88
	adc  b                                           ; $65b5: $88
	adc  b                                           ; $65b6: $88
	adc  b                                           ; $65b7: $88
	adc  b                                           ; $65b8: $88
	adc  b                                           ; $65b9: $88
	adc  b                                           ; $65ba: $88
	adc  b                                           ; $65bb: $88
	adc  b                                           ; $65bc: $88
	adc  b                                           ; $65bd: $88
	adc  b                                           ; $65be: $88
	adc  b                                           ; $65bf: $88
	adc  b                                           ; $65c0: $88
	adc  b                                           ; $65c1: $88
	adc  b                                           ; $65c2: $88
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	adc  b                                           ; $65c5: $88
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	adc  b                                           ; $65c8: $88
	adc  b                                           ; $65c9: $88
	adc  b                                           ; $65ca: $88
	adc  b                                           ; $65cb: $88
	adc  b                                           ; $65cc: $88
	adc  b                                           ; $65cd: $88
	adc  b                                           ; $65ce: $88
	adc  b                                           ; $65cf: $88
	adc  b                                           ; $65d0: $88
	adc  b                                           ; $65d1: $88
	adc  b                                           ; $65d2: $88
	adc  b                                           ; $65d3: $88
	adc  b                                           ; $65d4: $88
	adc  b                                           ; $65d5: $88
	adc  b                                           ; $65d6: $88
	adc  b                                           ; $65d7: $88
	adc  b                                           ; $65d8: $88
	adc  b                                           ; $65d9: $88
	adc  b                                           ; $65da: $88
	adc  b                                           ; $65db: $88
	adc  b                                           ; $65dc: $88
	adc  b                                           ; $65dd: $88
	adc  b                                           ; $65de: $88
	adc  b                                           ; $65df: $88
	adc  b                                           ; $65e0: $88
	adc  b                                           ; $65e1: $88
	adc  b                                           ; $65e2: $88
	adc  b                                           ; $65e3: $88
	adc  b                                           ; $65e4: $88
	adc  b                                           ; $65e5: $88
	adc  b                                           ; $65e6: $88
	adc  b                                           ; $65e7: $88
	adc  b                                           ; $65e8: $88
	adc  b                                           ; $65e9: $88
	adc  b                                           ; $65ea: $88
	adc  b                                           ; $65eb: $88
	adc  b                                           ; $65ec: $88
	adc  b                                           ; $65ed: $88
	adc  b                                           ; $65ee: $88
	adc  b                                           ; $65ef: $88
	adc  b                                           ; $65f0: $88
	adc  b                                           ; $65f1: $88
	adc  b                                           ; $65f2: $88
	adc  b                                           ; $65f3: $88
	adc  b                                           ; $65f4: $88
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	adc  b                                           ; $65f7: $88
	adc  b                                           ; $65f8: $88
	adc  b                                           ; $65f9: $88
	adc  b                                           ; $65fa: $88
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	adc  b                                           ; $65fd: $88
	adc  b                                           ; $65fe: $88
	adc  b                                           ; $65ff: $88
	adc  b                                           ; $6600: $88
	adc  b                                           ; $6601: $88
	adc  b                                           ; $6602: $88
	adc  b                                           ; $6603: $88
	adc  b                                           ; $6604: $88
	adc  b                                           ; $6605: $88
	adc  b                                           ; $6606: $88
	adc  b                                           ; $6607: $88
	adc  b                                           ; $6608: $88
	adc  b                                           ; $6609: $88
	adc  b                                           ; $660a: $88
	adc  b                                           ; $660b: $88
	adc  b                                           ; $660c: $88
	adc  b                                           ; $660d: $88
	adc  b                                           ; $660e: $88
	adc  b                                           ; $660f: $88
	adc  b                                           ; $6610: $88
	adc  b                                           ; $6611: $88
	adc  b                                           ; $6612: $88
	adc  b                                           ; $6613: $88
	adc  b                                           ; $6614: $88
	adc  b                                           ; $6615: $88
	adc  b                                           ; $6616: $88
	adc  b                                           ; $6617: $88
	adc  b                                           ; $6618: $88
	adc  b                                           ; $6619: $88
	adc  b                                           ; $661a: $88
	adc  b                                           ; $661b: $88
	adc  b                                           ; $661c: $88
	adc  b                                           ; $661d: $88
	adc  b                                           ; $661e: $88
	adc  b                                           ; $661f: $88
	adc  b                                           ; $6620: $88
	adc  b                                           ; $6621: $88
	adc  b                                           ; $6622: $88
	adc  b                                           ; $6623: $88
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  b                                           ; $6628: $88
	adc  b                                           ; $6629: $88
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	adc  b                                           ; $662c: $88
	adc  b                                           ; $662d: $88
	adc  b                                           ; $662e: $88
	adc  b                                           ; $662f: $88
	adc  b                                           ; $6630: $88
	adc  b                                           ; $6631: $88
	adc  b                                           ; $6632: $88
	adc  b                                           ; $6633: $88
	adc  b                                           ; $6634: $88
	adc  b                                           ; $6635: $88
	adc  b                                           ; $6636: $88
	adc  b                                           ; $6637: $88
	adc  b                                           ; $6638: $88
	adc  b                                           ; $6639: $88
	adc  b                                           ; $663a: $88
	adc  b                                           ; $663b: $88
	adc  b                                           ; $663c: $88
	adc  b                                           ; $663d: $88
	adc  b                                           ; $663e: $88
	adc  b                                           ; $663f: $88
	adc  b                                           ; $6640: $88
	adc  b                                           ; $6641: $88
	adc  b                                           ; $6642: $88
	adc  b                                           ; $6643: $88
	adc  b                                           ; $6644: $88
	adc  b                                           ; $6645: $88
	adc  b                                           ; $6646: $88
	adc  b                                           ; $6647: $88
	adc  b                                           ; $6648: $88
	adc  b                                           ; $6649: $88
	adc  b                                           ; $664a: $88
	adc  b                                           ; $664b: $88
	adc  b                                           ; $664c: $88
	adc  b                                           ; $664d: $88
	adc  b                                           ; $664e: $88
	adc  b                                           ; $664f: $88
	adc  b                                           ; $6650: $88
	adc  b                                           ; $6651: $88
	adc  b                                           ; $6652: $88
	adc  b                                           ; $6653: $88
	adc  b                                           ; $6654: $88
	adc  b                                           ; $6655: $88
	adc  b                                           ; $6656: $88
	adc  b                                           ; $6657: $88
	adc  b                                           ; $6658: $88
	adc  b                                           ; $6659: $88
	adc  b                                           ; $665a: $88
	adc  b                                           ; $665b: $88
	adc  b                                           ; $665c: $88
	adc  b                                           ; $665d: $88
	adc  b                                           ; $665e: $88
	adc  b                                           ; $665f: $88
	adc  b                                           ; $6660: $88
	adc  b                                           ; $6661: $88
	adc  b                                           ; $6662: $88
	adc  b                                           ; $6663: $88
	adc  b                                           ; $6664: $88
	adc  b                                           ; $6665: $88
	adc  b                                           ; $6666: $88
	adc  b                                           ; $6667: $88
	adc  b                                           ; $6668: $88
	adc  b                                           ; $6669: $88
	adc  b                                           ; $666a: $88
	adc  b                                           ; $666b: $88
	adc  b                                           ; $666c: $88
	adc  b                                           ; $666d: $88
	adc  b                                           ; $666e: $88
	adc  b                                           ; $666f: $88
	adc  b                                           ; $6670: $88
	adc  b                                           ; $6671: $88
	adc  b                                           ; $6672: $88
	adc  b                                           ; $6673: $88
	adc  b                                           ; $6674: $88
	adc  b                                           ; $6675: $88
	adc  b                                           ; $6676: $88
	adc  b                                           ; $6677: $88
	adc  b                                           ; $6678: $88
	adc  b                                           ; $6679: $88
	adc  b                                           ; $667a: $88
	adc  b                                           ; $667b: $88
	adc  b                                           ; $667c: $88
	adc  b                                           ; $667d: $88
	adc  b                                           ; $667e: $88
	adc  b                                           ; $667f: $88
	adc  b                                           ; $6680: $88
	adc  b                                           ; $6681: $88
	adc  b                                           ; $6682: $88
	adc  b                                           ; $6683: $88
	adc  b                                           ; $6684: $88
	adc  b                                           ; $6685: $88
	adc  b                                           ; $6686: $88
	adc  b                                           ; $6687: $88
	adc  b                                           ; $6688: $88
	adc  b                                           ; $6689: $88
	adc  b                                           ; $668a: $88
	adc  b                                           ; $668b: $88
	adc  b                                           ; $668c: $88
	adc  b                                           ; $668d: $88
	adc  b                                           ; $668e: $88
	adc  b                                           ; $668f: $88
	adc  b                                           ; $6690: $88
	adc  b                                           ; $6691: $88
	adc  b                                           ; $6692: $88
	adc  b                                           ; $6693: $88
	adc  b                                           ; $6694: $88
	adc  b                                           ; $6695: $88
	adc  b                                           ; $6696: $88
	adc  b                                           ; $6697: $88

Jump_0b0_6698:
	adc  b                                           ; $6698: $88
	adc  b                                           ; $6699: $88
	adc  b                                           ; $669a: $88
	adc  b                                           ; $669b: $88
	adc  b                                           ; $669c: $88
	adc  b                                           ; $669d: $88
	adc  b                                           ; $669e: $88
	adc  b                                           ; $669f: $88
	adc  b                                           ; $66a0: $88
	adc  b                                           ; $66a1: $88
	adc  b                                           ; $66a2: $88
	adc  b                                           ; $66a3: $88
	adc  b                                           ; $66a4: $88
	adc  b                                           ; $66a5: $88
	adc  b                                           ; $66a6: $88
	adc  b                                           ; $66a7: $88
	adc  b                                           ; $66a8: $88
	adc  b                                           ; $66a9: $88
	adc  b                                           ; $66aa: $88
	adc  b                                           ; $66ab: $88
	adc  b                                           ; $66ac: $88
	adc  b                                           ; $66ad: $88
	adc  b                                           ; $66ae: $88
	adc  b                                           ; $66af: $88
	adc  b                                           ; $66b0: $88
	adc  b                                           ; $66b1: $88
	adc  b                                           ; $66b2: $88
	adc  b                                           ; $66b3: $88
	adc  b                                           ; $66b4: $88
	adc  b                                           ; $66b5: $88
	adc  b                                           ; $66b6: $88
	adc  b                                           ; $66b7: $88
	adc  b                                           ; $66b8: $88
	adc  b                                           ; $66b9: $88
	adc  b                                           ; $66ba: $88
	adc  b                                           ; $66bb: $88
	adc  b                                           ; $66bc: $88
	adc  b                                           ; $66bd: $88
	adc  b                                           ; $66be: $88
	adc  b                                           ; $66bf: $88
	adc  b                                           ; $66c0: $88
	adc  b                                           ; $66c1: $88
	adc  b                                           ; $66c2: $88
	adc  b                                           ; $66c3: $88
	adc  b                                           ; $66c4: $88
	adc  b                                           ; $66c5: $88
	adc  b                                           ; $66c6: $88
	adc  b                                           ; $66c7: $88
	adc  b                                           ; $66c8: $88
	adc  b                                           ; $66c9: $88
	adc  b                                           ; $66ca: $88
	adc  b                                           ; $66cb: $88
	adc  b                                           ; $66cc: $88
	adc  b                                           ; $66cd: $88
	adc  b                                           ; $66ce: $88
	adc  b                                           ; $66cf: $88
	adc  b                                           ; $66d0: $88
	adc  b                                           ; $66d1: $88
	adc  b                                           ; $66d2: $88
	adc  b                                           ; $66d3: $88
	adc  b                                           ; $66d4: $88
	adc  b                                           ; $66d5: $88
	adc  b                                           ; $66d6: $88
	adc  b                                           ; $66d7: $88
	adc  b                                           ; $66d8: $88
	adc  b                                           ; $66d9: $88
	adc  b                                           ; $66da: $88
	adc  b                                           ; $66db: $88
	adc  b                                           ; $66dc: $88
	adc  b                                           ; $66dd: $88
	adc  b                                           ; $66de: $88
	adc  b                                           ; $66df: $88
	adc  b                                           ; $66e0: $88
	adc  b                                           ; $66e1: $88
	adc  b                                           ; $66e2: $88
	adc  b                                           ; $66e3: $88
	adc  b                                           ; $66e4: $88
	adc  b                                           ; $66e5: $88
	adc  b                                           ; $66e6: $88
	adc  b                                           ; $66e7: $88
	adc  b                                           ; $66e8: $88
	adc  b                                           ; $66e9: $88
	adc  b                                           ; $66ea: $88
	adc  b                                           ; $66eb: $88
	adc  b                                           ; $66ec: $88
	adc  b                                           ; $66ed: $88
	adc  b                                           ; $66ee: $88
	adc  b                                           ; $66ef: $88
	adc  b                                           ; $66f0: $88
	adc  b                                           ; $66f1: $88
	adc  b                                           ; $66f2: $88
	adc  b                                           ; $66f3: $88
	adc  b                                           ; $66f4: $88
	adc  b                                           ; $66f5: $88
	adc  b                                           ; $66f6: $88
	adc  b                                           ; $66f7: $88
	adc  b                                           ; $66f8: $88
	adc  b                                           ; $66f9: $88
	adc  b                                           ; $66fa: $88
	adc  b                                           ; $66fb: $88
	adc  b                                           ; $66fc: $88
	adc  b                                           ; $66fd: $88
	adc  b                                           ; $66fe: $88
	adc  b                                           ; $66ff: $88
	adc  b                                           ; $6700: $88
	adc  b                                           ; $6701: $88
	adc  b                                           ; $6702: $88
	adc  b                                           ; $6703: $88
	adc  b                                           ; $6704: $88
	adc  b                                           ; $6705: $88
	adc  b                                           ; $6706: $88
	adc  b                                           ; $6707: $88
	adc  b                                           ; $6708: $88
	adc  b                                           ; $6709: $88
	adc  b                                           ; $670a: $88
	adc  b                                           ; $670b: $88
	adc  b                                           ; $670c: $88
	adc  b                                           ; $670d: $88
	adc  b                                           ; $670e: $88
	adc  b                                           ; $670f: $88
	adc  b                                           ; $6710: $88
	adc  b                                           ; $6711: $88
	adc  b                                           ; $6712: $88
	adc  b                                           ; $6713: $88
	adc  b                                           ; $6714: $88
	adc  b                                           ; $6715: $88
	adc  b                                           ; $6716: $88
	adc  b                                           ; $6717: $88
	adc  b                                           ; $6718: $88
	adc  b                                           ; $6719: $88
	adc  b                                           ; $671a: $88
	adc  b                                           ; $671b: $88
	adc  b                                           ; $671c: $88
	adc  b                                           ; $671d: $88
	adc  b                                           ; $671e: $88
	adc  b                                           ; $671f: $88
	adc  b                                           ; $6720: $88
	adc  b                                           ; $6721: $88
	adc  b                                           ; $6722: $88
	adc  b                                           ; $6723: $88
	adc  b                                           ; $6724: $88
	adc  b                                           ; $6725: $88
	adc  b                                           ; $6726: $88
	adc  b                                           ; $6727: $88
	adc  b                                           ; $6728: $88
	adc  b                                           ; $6729: $88
	adc  b                                           ; $672a: $88
	adc  b                                           ; $672b: $88
	adc  b                                           ; $672c: $88
	adc  b                                           ; $672d: $88
	adc  b                                           ; $672e: $88
	adc  b                                           ; $672f: $88
	adc  b                                           ; $6730: $88
	adc  b                                           ; $6731: $88
	adc  b                                           ; $6732: $88
	adc  b                                           ; $6733: $88
	adc  b                                           ; $6734: $88
	adc  b                                           ; $6735: $88
	adc  b                                           ; $6736: $88
	adc  b                                           ; $6737: $88
	adc  b                                           ; $6738: $88
	adc  c                                           ; $6739: $89
	add  a                                           ; $673a: $87
	sbc  b                                           ; $673b: $98
	adc  c                                           ; $673c: $89
	adc  b                                           ; $673d: $88
	adc  b                                           ; $673e: $88
	adc  b                                           ; $673f: $88
	adc  b                                           ; $6740: $88
	adc  b                                           ; $6741: $88
	adc  b                                           ; $6742: $88
	adc  b                                           ; $6743: $88
	adc  b                                           ; $6744: $88
	adc  b                                           ; $6745: $88
	adc  b                                           ; $6746: $88
	adc  b                                           ; $6747: $88
	adc  b                                           ; $6748: $88
	adc  b                                           ; $6749: $88
	adc  b                                           ; $674a: $88
	adc  b                                           ; $674b: $88
	adc  b                                           ; $674c: $88
	adc  b                                           ; $674d: $88
	adc  b                                           ; $674e: $88
	adc  b                                           ; $674f: $88
	adc  b                                           ; $6750: $88
	adc  b                                           ; $6751: $88
	adc  c                                           ; $6752: $89
	adc  b                                           ; $6753: $88
	add  a                                           ; $6754: $87
	adc  b                                           ; $6755: $88
	adc  c                                           ; $6756: $89
	adc  b                                           ; $6757: $88
	adc  b                                           ; $6758: $88
	adc  c                                           ; $6759: $89
	adc  c                                           ; $675a: $89
	add  a                                           ; $675b: $87
	adc  b                                           ; $675c: $88
	adc  b                                           ; $675d: $88
	adc  b                                           ; $675e: $88
	sbc  b                                           ; $675f: $98
	adc  c                                           ; $6760: $89
	adc  b                                           ; $6761: $88
	adc  b                                           ; $6762: $88
	adc  b                                           ; $6763: $88
	adc  b                                           ; $6764: $88
	adc  c                                           ; $6765: $89
	adc  b                                           ; $6766: $88
	sub  a                                           ; $6767: $97
	sbc  c                                           ; $6768: $99
	ld   a, c                                        ; $6769: $79
	add  a                                           ; $676a: $87
	adc  b                                           ; $676b: $88
	ld   a, b                                        ; $676c: $78
	adc  b                                           ; $676d: $88
	add  a                                           ; $676e: $87
	sbc  b                                           ; $676f: $98
	ld   a, c                                        ; $6770: $79
	ld   a, b                                        ; $6771: $78
	sub  a                                           ; $6772: $97
	adc  c                                           ; $6773: $89
	ld   l, c                                        ; $6774: $69
	sub  a                                           ; $6775: $97
	adc  b                                           ; $6776: $88
	ld   a, b                                        ; $6777: $78
	ld   a, b                                        ; $6778: $78
	add  a                                           ; $6779: $87
	sub  a                                           ; $677a: $97
	adc  c                                           ; $677b: $89
	ld   a, b                                        ; $677c: $78

Jump_0b0_677d:
	add  a                                           ; $677d: $87
	sub  a                                           ; $677e: $97
	adc  c                                           ; $677f: $89
	ld   l, b                                        ; $6780: $68
	add  a                                           ; $6781: $87
	adc  b                                           ; $6782: $88
	ld   l, c                                        ; $6783: $69
	add  l                                           ; $6784: $85
	and  a                                           ; $6785: $a7
	ld   l, d                                        ; $6786: $6a
	ld   h, a                                        ; $6787: $67
	sbc  b                                           ; $6788: $98
	ld   a, d                                        ; $6789: $7a
	ld   l, b                                        ; $678a: $68
	and  l                                           ; $678b: $a5
	sbc  b                                           ; $678c: $98
	ld   l, c                                        ; $678d: $69
	ld   [hl], a                                     ; $678e: $77
	ld   a, c                                        ; $678f: $79
	ld   a, b                                        ; $6790: $78
	sub  a                                           ; $6791: $97
	ld   a, c                                        ; $6792: $79
	adc  b                                           ; $6793: $88
	add  [hl]                                        ; $6794: $86
	and  a                                           ; $6795: $a7
	sbc  c                                           ; $6796: $99
	ld   l, c                                        ; $6797: $69
	ld   a, c                                        ; $6798: $79
	ld   a, b                                        ; $6799: $78
	ld   [hl], a                                     ; $679a: $77
	sub  a                                           ; $679b: $97
	add  l                                           ; $679c: $85
	xor  b                                           ; $679d: $a8
	ld   a, d                                        ; $679e: $7a
	ld   l, b                                        ; $679f: $68
	add  a                                           ; $67a0: $87
	add  a                                           ; $67a1: $87
	sbc  c                                           ; $67a2: $99
	adc  c                                           ; $67a3: $89
	ld   l, c                                        ; $67a4: $69
	add  [hl]                                        ; $67a5: $86
	or   a                                           ; $67a6: $b7
	ld   e, c                                        ; $67a7: $59
	ld   a, b                                        ; $67a8: $78
	and  h                                           ; $67a9: $a4
	sbc  c                                           ; $67aa: $99
	ld   l, c                                        ; $67ab: $69
	halt                                             ; $67ac: $76
	sbc  d                                           ; $67ad: $9a
	ld   e, d                                        ; $67ae: $5a
	ld   [hl], a                                     ; $67af: $77
	or   a                                           ; $67b0: $b7
	ld   a, c                                        ; $67b1: $79
	add  a                                           ; $67b2: $87
	and  l                                           ; $67b3: $a5
	ld   a, c                                        ; $67b4: $79
	ld   l, c                                        ; $67b5: $69
	and  l                                           ; $67b6: $a5
	sbc  d                                           ; $67b7: $9a
	ld   e, e                                        ; $67b8: $5b
	ld   [hl], a                                     ; $67b9: $77
	sub  [hl]                                        ; $67ba: $96
	sub  a                                           ; $67bb: $97
	ld   e, d                                        ; $67bc: $5a
	sub  l                                           ; $67bd: $95
	or   [hl]                                        ; $67be: $b6
	adc  c                                           ; $67bf: $89
	ld   a, c                                        ; $67c0: $79
	ld   l, b                                        ; $67c1: $68
	adc  b                                           ; $67c2: $88
	ld   l, b                                        ; $67c3: $68
	ld   [hl], a                                     ; $67c4: $77
	add  a                                           ; $67c5: $87
	add  [hl]                                        ; $67c6: $86
	sbc  c                                           ; $67c7: $99
	sbc  b                                           ; $67c8: $98
	ld   a, d                                        ; $67c9: $7a
	sbc  b                                           ; $67ca: $98
	add  a                                           ; $67cb: $87
	ld   l, c                                        ; $67cc: $69
	sbc  b                                           ; $67cd: $98
	ld   [hl], l                                     ; $67ce: $75
	adc  b                                           ; $67cf: $88
	ld   [hl], a                                     ; $67d0: $77
	ld   l, b                                        ; $67d1: $68
	adc  b                                           ; $67d2: $88
	sub  a                                           ; $67d3: $97
	ld   a, b                                        ; $67d4: $78
	ld   a, b                                        ; $67d5: $78
	add  [hl]                                        ; $67d6: $86
	ld   h, a                                        ; $67d7: $67
	add  a                                           ; $67d8: $87
	ld   d, a                                        ; $67d9: $57
	halt                                             ; $67da: $76
	add  a                                           ; $67db: $87
	ld   [hl], a                                     ; $67dc: $77
	ld   a, c                                        ; $67dd: $79
	sbc  b                                           ; $67de: $98
	adc  c                                           ; $67df: $89
	xor  d                                           ; $67e0: $aa
	cp   c                                           ; $67e1: $b9
	adc  b                                           ; $67e2: $88
	xor  d                                           ; $67e3: $aa
	xor  b                                           ; $67e4: $a8
	sbc  c                                           ; $67e5: $99
	adc  c                                           ; $67e6: $89
	add  a                                           ; $67e7: $87
	ld   a, b                                        ; $67e8: $78
	sub  a                                           ; $67e9: $97
	ld   h, a                                        ; $67ea: $67
	add  a                                           ; $67eb: $87
	ld   h, [hl]                                     ; $67ec: $66
	ld   h, [hl]                                     ; $67ed: $66
	ld   d, a                                        ; $67ee: $57
	ld   [hl], l                                     ; $67ef: $75
	ld   d, a                                        ; $67f0: $57
	ld   h, [hl]                                     ; $67f1: $66
	ld   h, [hl]                                     ; $67f2: $66
	ld   h, [hl]                                     ; $67f3: $66
	xor  e                                           ; $67f4: $ab
	res  7, h                                        ; $67f5: $cb $bc
	call $89b9                                       ; $67f7: $cd $b9 $89
	cp   e                                           ; $67fa: $bb
	adc  b                                           ; $67fb: $88
	sbc  e                                           ; $67fc: $9b
	cp   c                                           ; $67fd: $b9
	add  a                                           ; $67fe: $87
	ld   a, c                                        ; $67ff: $79
	add  a                                           ; $6800: $87
	ld   h, [hl]                                     ; $6801: $66
	ld   h, l                                        ; $6802: $65
	ld   b, h                                        ; $6803: $44
	ld   b, h                                        ; $6804: $44
	ld   b, e                                        ; $6805: $43
	dec  h                                           ; $6806: $25
	ld   b, h                                        ; $6807: $44
	ld   a, c                                        ; $6808: $79
	xor  d                                           ; $6809: $aa
	adc  e                                           ; $680a: $8b
	db   $db                                         ; $680b: $db
	call c, $9acb                                    ; $680c: $dc $cb $9a
	cp   c                                           ; $680f: $b9
	cp   d                                           ; $6810: $ba
	xor  e                                           ; $6811: $ab
	call $aaea                                       ; $6812: $cd $ea $aa
	sbc  d                                           ; $6815: $9a
	sbc  b                                           ; $6816: $98
	ld   h, h                                        ; $6817: $64
	ld   h, a                                        ; $6818: $67
	ld   h, l                                        ; $6819: $65
	ld   d, l                                        ; $681a: $55
	ld   h, [hl]                                     ; $681b: $66
	ld   b, h                                        ; $681c: $44
	ld   b, h                                        ; $681d: $44
	ld   b, e                                        ; $681e: $43
	dec  [hl]                                        ; $681f: $35
	ld   d, l                                        ; $6820: $55
	ld   d, [hl]                                     ; $6821: $56
	sbc  h                                           ; $6822: $9c
	db   $dd                                         ; $6823: $dd
	cp   e                                           ; $6824: $bb
	call $77c9                                       ; $6825: $cd $c9 $77
	ld   a, c                                        ; $6828: $79
	cp   d                                           ; $6829: $ba
	xor  d                                           ; $682a: $aa
	adc  $ec                                         ; $682b: $ce $ec
	sub  [hl]                                        ; $682d: $96
	ld   h, a                                        ; $682e: $67
	ld   [hl], a                                     ; $682f: $77
	ld   h, a                                        ; $6830: $67
	adc  c                                           ; $6831: $89
	adc  c                                           ; $6832: $89
	ld   d, l                                        ; $6833: $55
	ld   h, [hl]                                     ; $6834: $66
	halt                                             ; $6835: $76
	ld   b, l                                        ; $6836: $45
	ld   d, [hl]                                     ; $6837: $56
	add  a                                           ; $6838: $87
	ld   h, [hl]                                     ; $6839: $66
	ld   a, c                                        ; $683a: $79
	xor  d                                           ; $683b: $aa
	sbc  c                                           ; $683c: $99
	sbc  c                                           ; $683d: $99
	sbc  c                                           ; $683e: $99
	ld   h, [hl]                                     ; $683f: $66
	ld   h, a                                        ; $6840: $67
	sbc  e                                           ; $6841: $9b
	call z, $99aa                                    ; $6842: $cc $aa $99
	add  [hl]                                        ; $6845: $86
	ld   h, [hl]                                     ; $6846: $66
	ld   h, [hl]                                     ; $6847: $66
	ld   l, b                                        ; $6848: $68
	add  a                                           ; $6849: $87
	ld   a, b                                        ; $684a: $78
	ld   [hl], a                                     ; $684b: $77
	ld   [hl], a                                     ; $684c: $77
	ld   [hl], a                                     ; $684d: $77
	adc  c                                           ; $684e: $89
	sbc  c                                           ; $684f: $99
	sbc  c                                           ; $6850: $99
	xor  d                                           ; $6851: $aa
	cp   e                                           ; $6852: $bb
	sbc  c                                           ; $6853: $99
	sbc  c                                           ; $6854: $99
	sbc  d                                           ; $6855: $9a
	sbc  c                                           ; $6856: $99
	sbc  c                                           ; $6857: $99
	sbc  b                                           ; $6858: $98
	halt                                             ; $6859: $76
	ld   d, l                                        ; $685a: $55
	ld   h, l                                        ; $685b: $65
	ld   b, e                                        ; $685c: $43
	ld   hl, $3911                                   ; $685d: $21 $11 $39
	cp   [hl]                                        ; $6860: $be
	res  5, d                                        ; $6861: $cb $aa
	db   $dd                                         ; $6863: $dd
	jp   z, $9b98                                    ; $6864: $ca $98 $9b

	db   $ed                                         ; $6867: $ed
	db   $dd                                         ; $6868: $dd
	cp   e                                           ; $6869: $bb
	xor  c                                           ; $686a: $a9
	sub  a                                           ; $686b: $97
	ld   h, [hl]                                     ; $686c: $66
	ld   a, b                                        ; $686d: $78
	xor  c                                           ; $686e: $a9
	ld   [hl], l                                     ; $686f: $75
	inc  [hl]                                        ; $6870: $34
	ld   d, l                                        ; $6871: $55
	ld   d, h                                        ; $6872: $54
	ld   [hl+], a                                    ; $6873: $22
	ld   hl, $3632                                   ; $6874: $21 $32 $36
	ld   a, e                                        ; $6877: $7b
	xor  $fb                                         ; $6878: $ee $fb
	sbc  c                                           ; $687a: $99
	adc  d                                           ; $687b: $8a
	cp   d                                           ; $687c: $ba
	xor  b                                           ; $687d: $a8
	adc  c                                           ; $687e: $89
	sbc  e                                           ; $687f: $9b
	cp   h                                           ; $6880: $bc
	db   $db                                         ; $6881: $db
	xor  c                                           ; $6882: $a9
	ld   [hl], a                                     ; $6883: $77
	ld   h, [hl]                                     ; $6884: $66
	ld   h, l                                        ; $6885: $65
	ld   h, a                                        ; $6886: $67
	adc  b                                           ; $6887: $88
	sbc  b                                           ; $6888: $98
	ld   [hl], l                                     ; $6889: $75
	ld   d, l                                        ; $688a: $55
	ld   h, a                                        ; $688b: $67
	sbc  d                                           ; $688c: $9a
	cp   e                                           ; $688d: $bb
	xor  d                                           ; $688e: $aa
	sbc  c                                           ; $688f: $99
	sbc  b                                           ; $6890: $98
	sbc  d                                           ; $6891: $9a
	xor  c                                           ; $6892: $a9
	add  a                                           ; $6893: $87
	ld   h, [hl]                                     ; $6894: $66
	ld   d, l                                        ; $6895: $55
	ld   b, e                                        ; $6896: $43
	ld   [hl-], a                                    ; $6897: $32
	ld   de, $1911                                   ; $6898: $11 $11 $19
	rst  $38                                         ; $689b: $ff
	rst  $38                                         ; $689c: $ff
	and  c                                           ; $689d: $a1
	dec  d                                           ; $689e: $15
	ld   e, d                                        ; $689f: $5a
	jp   c, $ae97                                    ; $68a0: $da $97 $ae

	rst  JumpTable                                         ; $68a3: $df
	jp   hl                                          ; $68a4: $e9


	ld   h, e                                        ; $68a5: $63
	ld   a, e                                        ; $68a6: $7b
	rst  $28                                         ; $68a7: $ef
	jp   z, Jump_0b0_7885                            ; $68a8: $ca $85 $78

	sbc  c                                           ; $68ab: $99
	ld   d, l                                        ; $68ac: $55
	ld   [hl-], a                                    ; $68ad: $32
	ld   d, [hl]                                     ; $68ae: $56
	ld   [hl], a                                     ; $68af: $77
	ld   a, b                                        ; $68b0: $78
	adc  d                                           ; $68b1: $8a
	xor  b                                           ; $68b2: $a8
	add  [hl]                                        ; $68b3: $86
	ld   l, b                                        ; $68b4: $68
	sbc  d                                           ; $68b5: $9a
	cp   d                                           ; $68b6: $ba
	add  a                                           ; $68b7: $87
	halt                                             ; $68b8: $76
	ld   h, l                                        ; $68b9: $65
	ld   b, e                                        ; $68ba: $43
	ld   de, $1111                                   ; $68bb: $11 $11 $11
	rst  $38                                         ; $68be: $ff
	rst  $38                                         ; $68bf: $ff
	add  sp, $11                                     ; $68c0: $e8 $11
	dec  h                                           ; $68c2: $25
	jp   c, Jump_0b0_6a89                            ; $68c3: $da $89 $6a

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68c6: $cf
	db   $fc                                         ; $68c7: $fc
	add  e                                           ; $68c8: $83
	dec  d                                           ; $68c9: $15
	xor  a                                           ; $68ca: $af
	cp   $d9                                         ; $68cb: $fe $d9
	ld   l, b                                        ; $68cd: $68
	adc  d                                           ; $68ce: $8a
	sub  a                                           ; $68cf: $97
	ld   d, e                                        ; $68d0: $53
	ld   b, l                                        ; $68d1: $45
	ld   a, c                                        ; $68d2: $79
	xor  c                                           ; $68d3: $a9
	adc  b                                           ; $68d4: $88
	sbc  c                                           ; $68d5: $99
	sbc  b                                           ; $68d6: $98
	ld   [hl], a                                     ; $68d7: $77
	ld   d, [hl]                                     ; $68d8: $56
	ld   h, l                                        ; $68d9: $65
	ld   d, d                                        ; $68da: $52
	ld   de, $5f11                                   ; $68db: $11 $11 $5f
	rst  $38                                         ; $68de: $ff
	cp   $31                                         ; $68df: $fe $31
	inc  de                                          ; $68e1: $13
	cp   [hl]                                        ; $68e2: $be
	db   $db                                         ; $68e3: $db
	sbc  b                                           ; $68e4: $98
	cp   h                                           ; $68e5: $bc
	cp   $a6                                         ; $68e6: $fe $a6
	ld   [de], a                                     ; $68e8: $12
	ld   e, c                                        ; $68e9: $59
	rst  JumpTable                                         ; $68ea: $df
	rst  $38                                         ; $68eb: $ff
	cp   d                                           ; $68ec: $ba
	xor  b                                           ; $68ed: $a8
	halt                                             ; $68ee: $76
	ld   h, l                                        ; $68ef: $65
	ld   b, l                                        ; $68f0: $45
	ld   d, [hl]                                     ; $68f1: $56
	adc  b                                           ; $68f2: $88
	ld   [hl], l                                     ; $68f3: $75
	ld   d, [hl]                                     ; $68f4: $56
	ld   a, b                                        ; $68f5: $78
	ld   [hl], h                                     ; $68f6: $74
	ld   de, $2f11                                   ; $68f7: $11 $11 $2f
	rst  $38                                         ; $68fa: $ff
	rst  $38                                         ; $68fb: $ff
	ld   [hl], c                                     ; $68fc: $71
	ld   b, l                                        ; $68fd: $45
	xor  a                                           ; $68fe: $af
	add  a                                           ; $68ff: $87
	ld   d, e                                        ; $6900: $53
	sbc  e                                           ; $6901: $9b
	rst  $38                                         ; $6902: $ff
	ret                                              ; $6903: $c9


	ld   de, $8a13                                   ; $6904: $11 $13 $8a
	call $edce                                       ; $6907: $cd $ce $ed
	ld   [$4696], a                                  ; $690a: $ea $96 $46
	ld   l, b                                        ; $690d: $68
	xor  c                                           ; $690e: $a9
	add  a                                           ; $690f: $87
	ld   [hl], a                                     ; $6910: $77
	halt                                             ; $6911: $76
	ld   d, e                                        ; $6912: $53
	ld   hl, $1111                                   ; $6913: $21 $11 $11
	rra                                              ; $6916: $1f
	rst  $38                                         ; $6917: $ff
	rst  $38                                         ; $6918: $ff
	ld   [hl], c                                     ; $6919: $71
	ld   de, $a9af                                   ; $691a: $11 $af $a9
	ld   h, l                                        ; $691d: $65
	sbc  l                                           ; $691e: $9d
	rst  $38                                         ; $691f: $ff
	jp   c, $1311                                    ; $6920: $da $11 $13

	adc  h                                           ; $6923: $8c
	rst  $38                                         ; $6924: $ff
	rst  $38                                         ; $6925: $ff
	db   $ec                                         ; $6926: $ec
	cp   b                                           ; $6927: $b8
	ld   d, h                                        ; $6928: $54
	inc  [hl]                                        ; $6929: $34
	ld   d, a                                        ; $692a: $57
	adc  b                                           ; $692b: $88
	sbc  b                                           ; $692c: $98
	add  [hl]                                        ; $692d: $86
	ld   d, h                                        ; $692e: $54
	ld   de, $1111                                   ; $692f: $11 $11 $11
	inc  e                                           ; $6932: $1c
	rst  $38                                         ; $6933: $ff
	rst  $38                                         ; $6934: $ff
	pop  de                                          ; $6935: $d1
	ld   [de], a                                     ; $6936: $12
	ld   e, a                                        ; $6937: $5f
	ld   [$6b85], a                                  ; $6938: $ea $85 $6b
	rst  $28                                         ; $693b: $ef
	ei                                               ; $693c: $fb
	ld   d, c                                        ; $693d: $51
	ld   de, $ff7c                                   ; $693e: $11 $7c $ff
	rst  $38                                         ; $6941: $ff
	xor  $ba                                         ; $6942: $ee $ba
	ld   h, h                                        ; $6944: $64
	inc  h                                           ; $6945: $24
	ld   l, b                                        ; $6946: $68
	sbc  b                                           ; $6947: $98
	ld   h, e                                        ; $6948: $63
	ld   [hl-], a                                    ; $6949: $32
	ld   de, $1111                                   ; $694a: $11 $11 $11
	adc  a                                           ; $694d: $8f
	rst  $38                                         ; $694e: $ff
	rst  $38                                         ; $694f: $ff
	ld   de, $fb21                                   ; $6950: $11 $21 $fb
	xor  c                                           ; $6953: $a9
	ld   b, [hl]                                     ; $6954: $46
	cp   a                                           ; $6955: $bf
	rst  $38                                         ; $6956: $ff
	or   [hl]                                        ; $6957: $b6
	ld   de, $bf18                                   ; $6958: $11 $18 $bf
	cp   $ef                                         ; $695b: $fe $ef
	db   $dd                                         ; $695d: $dd
	ret                                              ; $695e: $c9


	ld   h, e                                        ; $695f: $63
	ld   b, l                                        ; $6960: $45
	ld   h, a                                        ; $6961: $67
	ld   h, h                                        ; $6962: $64
	ld   hl, $1111                                   ; $6963: $21 $11 $11
	ld   de, $ffff                                   ; $6966: $11 $ff $ff
	ld   sp, hl                                      ; $6969: $f9
	dec  de                                          ; $696a: $1b
	ccf                                              ; $696b: $3f
	and  h                                           ; $696c: $a4
	ld   sp, $ff8b                                   ; $696d: $31 $8b $ff
	ld   a, [$2371]                                  ; $6970: $fa $71 $23
	ld   a, c                                        ; $6973: $79
	sbc  l                                           ; $6974: $9d
	cp   a                                           ; $6975: $bf
	rst  $38                                         ; $6976: $ff
	db   $fd                                         ; $6977: $fd
	and  l                                           ; $6978: $a5
	dec  [hl]                                        ; $6979: $35
	ld   h, a                                        ; $697a: $67
	ld   [hl], l                                     ; $697b: $75
	ld   hl, $1111                                   ; $697c: $21 $11 $11
	ld   de, $ff1c                                   ; $697f: $11 $1c $ff
	rst  $38                                         ; $6982: $ff
	and  d                                           ; $6983: $a2
	or   $fb                                         ; $6984: $f6 $fb
	ld   b, c                                        ; $6986: $41
	dec  d                                           ; $6987: $15
	sbc  a                                           ; $6988: $9f
	rst  $38                                         ; $6989: $ff
	cp   b                                           ; $698a: $b8
	inc  h                                           ; $698b: $24
	ld   l, b                                        ; $698c: $68
	rst  ToBoot                                         ; $698d: $c7
	or   a                                           ; $698e: $b7
	adc  $ff                                         ; $698f: $ce $ff
	db   $fd                                         ; $6991: $fd
	ld   [hl], l                                     ; $6992: $75
	ld   b, [hl]                                     ; $6993: $46
	ld   h, [hl]                                     ; $6994: $66
	ld   b, d                                        ; $6995: $42
	ld   de, $1111                                   ; $6996: $11 $11 $11
	rla                                              ; $6999: $17
	cp   a                                           ; $699a: $bf
	db   $fc                                         ; $699b: $fc

Jump_0b0_699c:
	db   $f4                                         ; $699c: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $699d: $cf
	rst  JumpTable                                         ; $699e: $df
	ld   h, [hl]                                     ; $699f: $66
	ld   de, $ff47                                   ; $69a0: $11 $47 $ff
	ld   hl, sp+$75                                  ; $69a3: $f8 $75
	adc  e                                           ; $69a5: $8b
	db   $dd                                         ; $69a6: $dd
	ld   a, b                                        ; $69a7: $78
	ld   c, b                                        ; $69a8: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69a9: $cf
	cp   $e8                                         ; $69aa: $fe $e8
	ld   [hl], a                                     ; $69ac: $77
	adc  b                                           ; $69ad: $88
	ld   h, h                                        ; $69ae: $64
	ld   de, $1111                                   ; $69af: $11 $11 $11
	ld   [de], a                                     ; $69b2: $12
	sbc  c                                           ; $69b3: $99
	ld   sp, hl                                      ; $69b4: $f9
	ret                                              ; $69b5: $c9


	ld   a, a                                        ; $69b6: $7f
	rst  JumpTable                                         ; $69b7: $df
	ld   sp, hl                                      ; $69b8: $f9
	add  c                                           ; $69b9: $81
	sub  h                                           ; $69ba: $94
	cp   e                                           ; $69bb: $bb
	cp   b                                           ; $69bc: $b8
	ld   d, a                                        ; $69bd: $57
	ld   e, h                                        ; $69be: $5c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69bf: $cf
	jp   z, $bba6                                    ; $69c0: $ca $a6 $bb

	call c, $79bb                                    ; $69c3: $dc $bb $79
	sbc  e                                           ; $69c6: $9b
	sbc  b                                           ; $69c7: $98
	ld   [hl], h                                     ; $69c8: $74
	ld   b, d                                        ; $69c9: $42
	ld   de, $1311                                   ; $69ca: $11 $11 $13
	inc  [hl]                                        ; $69cd: $34
	ld   h, $39                                      ; $69ce: $26 $39
	xor  $fc                                         ; $69d0: $ee $fc
	ld   [$cecc], a                                  ; $69d2: $ea $cc $ce
	call z, $8979                                    ; $69d5: $cc $79 $89
	cp   e                                           ; $69d8: $bb
	rst  ToBoot                                         ; $69d9: $c7
	sub  a                                           ; $69da: $97
	sbc  d                                           ; $69db: $9a
	cp   h                                           ; $69dc: $bc
	xor  e                                           ; $69dd: $ab
	sbc  c                                           ; $69de: $99
	cp   e                                           ; $69df: $bb
	cp   b                                           ; $69e0: $b8
	ld   [hl], l                                     ; $69e1: $75
	ld   [hl-], a                                    ; $69e2: $32
	ld   hl, $1111                                   ; $69e3: $21 $11 $11
	ld   de, $2811                                   ; $69e6: $11 $11 $28
	sbc  h                                           ; $69e9: $9c
	call $ffde                                       ; $69ea: $cd $de $ff
	rst  $38                                         ; $69ed: $ff
	db   $fd                                         ; $69ee: $fd
	cp   [hl]                                        ; $69ef: $be
	cp   e                                           ; $69f0: $bb
	sbc  e                                           ; $69f1: $9b
	add  l                                           ; $69f2: $85
	ld   h, [hl]                                     ; $69f3: $66
	ld   [hl], a                                     ; $69f4: $77
	xor  b                                           ; $69f5: $a8
	ld   a, c                                        ; $69f6: $79
	sbc  c                                           ; $69f7: $99
	xor  e                                           ; $69f8: $ab
	sbc  b                                           ; $69f9: $98
	ld   [hl], l                                     ; $69fa: $75
	ld   b, d                                        ; $69fb: $42
	ld   de, $1111                                   ; $69fc: $11 $11 $11
	ld   [de], a                                     ; $69ff: $12
	inc  h                                           ; $6a00: $24
	adc  d                                           ; $6a01: $8a
	cp   h                                           ; $6a02: $bc
	call c, $ffff                                    ; $6a03: $dc $ff $ff
	rst  $38                                         ; $6a06: $ff
	call z, $c9dd                                    ; $6a07: $cc $dd $c9
	and  a                                           ; $6a0a: $a7
	ld   h, [hl]                                     ; $6a0b: $66
	ld   [hl], a                                     ; $6a0c: $77
	adc  c                                           ; $6a0d: $89
	ld   [hl], a                                     ; $6a0e: $77
	adc  c                                           ; $6a0f: $89
	sbc  c                                           ; $6a10: $99
	sub  a                                           ; $6a11: $97
	ld   h, l                                        ; $6a12: $65
	ld   d, e                                        ; $6a13: $53
	ld   hl, $1112                                   ; $6a14: $21 $12 $11
	ld   de, $6822                                   ; $6a17: $11 $22 $68
	xor  d                                           ; $6a1a: $aa
	call $ffef                                       ; $6a1b: $cd $ef $ff
	rst  $38                                         ; $6a1e: $ff
	db   $eb                                         ; $6a1f: $eb
	call z, $b9da                                    ; $6a20: $cc $da $b9
	adc  b                                           ; $6a23: $88
	adc  c                                           ; $6a24: $89
	adc  b                                           ; $6a25: $88
	halt                                             ; $6a26: $76
	ld   [hl], a                                     ; $6a27: $77
	adc  b                                           ; $6a28: $88
	add  a                                           ; $6a29: $87
	ld   h, l                                        ; $6a2a: $65
	ld   d, h                                        ; $6a2b: $54
	ld   b, e                                        ; $6a2c: $43
	ld   hl, $1121                                   ; $6a2d: $21 $21 $11
	inc  de                                          ; $6a30: $13
	ld   [hl], $89                                   ; $6a31: $36 $89
	sbc  h                                           ; $6a33: $9c
	db   $dd                                         ; $6a34: $dd
	rst  $28                                         ; $6a35: $ef
	cp   $ec                                         ; $6a36: $fe $ec
	call z, $bbcc                                    ; $6a38: $cc $cc $bb
	sbc  b                                           ; $6a3b: $98
	sbc  c                                           ; $6a3c: $99
	sbc  c                                           ; $6a3d: $99
	sbc  b                                           ; $6a3e: $98
	ld   [hl], a                                     ; $6a3f: $77
	ld   [hl], a                                     ; $6a40: $77
	ld   [hl], a                                     ; $6a41: $77
	ld   [hl], l                                     ; $6a42: $75
	ld   d, l                                        ; $6a43: $55
	ld   b, h                                        ; $6a44: $44
	ld   [hl-], a                                    ; $6a45: $32
	ld   [de], a                                     ; $6a46: $12
	ld   hl, $3312                                   ; $6a47: $21 $12 $33
	ld   e, b                                        ; $6a4a: $58
	xor  d                                           ; $6a4b: $aa
	cp   h                                           ; $6a4c: $bc
	sbc  $ee                                         ; $6a4d: $de $ee
	db   $dd                                         ; $6a4f: $dd
	set  1, h                                        ; $6a50: $cb $cc
	cp   e                                           ; $6a52: $bb
	xor  e                                           ; $6a53: $ab
	xor  c                                           ; $6a54: $a9
	xor  c                                           ; $6a55: $a9
	sbc  d                                           ; $6a56: $9a
	sbc  c                                           ; $6a57: $99
	adc  c                                           ; $6a58: $89
	add  a                                           ; $6a59: $87
	add  a                                           ; $6a5a: $87
	ld   h, l                                        ; $6a5b: $65
	ld   d, h                                        ; $6a5c: $54
	ld   b, e                                        ; $6a5d: $43
	ld   [hl-], a                                    ; $6a5e: $32
	inc  de                                          ; $6a5f: $13
	ld   sp, $4423                                   ; $6a60: $31 $23 $44
	ld   l, c                                        ; $6a63: $69
	xor  d                                           ; $6a64: $aa
	cp   e                                           ; $6a65: $bb
	cp   l                                           ; $6a66: $bd
	call c, $bacc                                    ; $6a67: $dc $cc $ba
	xor  h                                           ; $6a6a: $ac
	cp   e                                           ; $6a6b: $bb
	cp   d                                           ; $6a6c: $ba
	xor  c                                           ; $6a6d: $a9
	xor  c                                           ; $6a6e: $a9
	sbc  c                                           ; $6a6f: $99
	sbc  c                                           ; $6a70: $99
	sbc  c                                           ; $6a71: $99
	add  a                                           ; $6a72: $87
	ld   [hl], a                                     ; $6a73: $77
	ld   h, l                                        ; $6a74: $65
	ld   d, l                                        ; $6a75: $55
	ld   d, h                                        ; $6a76: $54
	ld   b, e                                        ; $6a77: $43
	ld   [hl-], a                                    ; $6a78: $32
	inc  [hl]                                        ; $6a79: $34
	inc  sp                                          ; $6a7a: $33
	inc  [hl]                                        ; $6a7b: $34
	ld   d, [hl]                                     ; $6a7c: $56
	adc  d                                           ; $6a7d: $8a
	sbc  d                                           ; $6a7e: $9a
	xor  d                                           ; $6a7f: $aa
	set  1, e                                        ; $6a80: $cb $cb
	cp   h                                           ; $6a82: $bc
	cp   d                                           ; $6a83: $ba
	cp   e                                           ; $6a84: $bb
	cp   e                                           ; $6a85: $bb
	cp   e                                           ; $6a86: $bb
	xor  d                                           ; $6a87: $aa
	xor  d                                           ; $6a88: $aa

Jump_0b0_6a89:
	xor  d                                           ; $6a89: $aa
	sbc  b                                           ; $6a8a: $98
	add  a                                           ; $6a8b: $87
	ld   [hl], a                                     ; $6a8c: $77
	halt                                             ; $6a8d: $76
	ld   h, [hl]                                     ; $6a8e: $66
	ld   h, [hl]                                     ; $6a8f: $66
	ld   h, [hl]                                     ; $6a90: $66
	ld   d, l                                        ; $6a91: $55
	ld   d, h                                        ; $6a92: $54
	ld   b, l                                        ; $6a93: $45
	ld   d, h                                        ; $6a94: $54
	ld   b, h                                        ; $6a95: $44
	ld   d, l                                        ; $6a96: $55
	ld   d, a                                        ; $6a97: $57
	adc  b                                           ; $6a98: $88
	xor  d                                           ; $6a99: $aa
	xor  e                                           ; $6a9a: $ab
	xor  e                                           ; $6a9b: $ab
	cp   e                                           ; $6a9c: $bb
	cp   d                                           ; $6a9d: $ba
	xor  e                                           ; $6a9e: $ab
	cp   e                                           ; $6a9f: $bb
	xor  d                                           ; $6aa0: $aa
	xor  c                                           ; $6aa1: $a9
	xor  d                                           ; $6aa2: $aa
	sbc  c                                           ; $6aa3: $99
	adc  c                                           ; $6aa4: $89
	adc  b                                           ; $6aa5: $88
	adc  b                                           ; $6aa6: $88
	ld   [hl], a                                     ; $6aa7: $77
	halt                                             ; $6aa8: $76
	ld   h, [hl]                                     ; $6aa9: $66
	ld   h, a                                        ; $6aaa: $67
	ld   [hl], a                                     ; $6aab: $77
	ld   h, [hl]                                     ; $6aac: $66
	ld   h, [hl]                                     ; $6aad: $66
	ld   h, [hl]                                     ; $6aae: $66
	ld   h, [hl]                                     ; $6aaf: $66
	ld   h, l                                        ; $6ab0: $65
	ld   d, l                                        ; $6ab1: $55
	ld   d, l                                        ; $6ab2: $55
	ld   h, a                                        ; $6ab3: $67
	adc  b                                           ; $6ab4: $88
	adc  c                                           ; $6ab5: $89
	sbc  d                                           ; $6ab6: $9a
	cp   d                                           ; $6ab7: $ba
	cp   e                                           ; $6ab8: $bb
	cp   c                                           ; $6ab9: $b9
	xor  d                                           ; $6aba: $aa
	xor  d                                           ; $6abb: $aa
	xor  c                                           ; $6abc: $a9
	xor  c                                           ; $6abd: $a9
	sbc  c                                           ; $6abe: $99
	adc  c                                           ; $6abf: $89
	adc  b                                           ; $6ac0: $88
	sbc  c                                           ; $6ac1: $99
	sbc  b                                           ; $6ac2: $98
	adc  b                                           ; $6ac3: $88
	add  a                                           ; $6ac4: $87
	ld   [hl], a                                     ; $6ac5: $77
	ld   a, b                                        ; $6ac6: $78
	adc  b                                           ; $6ac7: $88
	ld   [hl], a                                     ; $6ac8: $77
	ld   [hl], a                                     ; $6ac9: $77
	ld   [hl], a                                     ; $6aca: $77
	ld   [hl], a                                     ; $6acb: $77
	ld   h, [hl]                                     ; $6acc: $66
	ld   h, [hl]                                     ; $6acd: $66
	ld   d, l                                        ; $6ace: $55
	ld   d, l                                        ; $6acf: $55
	ld   d, [hl]                                     ; $6ad0: $56
	ld   a, b                                        ; $6ad1: $78
	adc  b                                           ; $6ad2: $88
	sbc  c                                           ; $6ad3: $99
	sbc  c                                           ; $6ad4: $99
	xor  d                                           ; $6ad5: $aa
	xor  d                                           ; $6ad6: $aa
	sbc  c                                           ; $6ad7: $99
	sbc  d                                           ; $6ad8: $9a
	xor  d                                           ; $6ad9: $aa
	xor  c                                           ; $6ada: $a9
	sbc  c                                           ; $6adb: $99
	sbc  c                                           ; $6adc: $99
	adc  b                                           ; $6add: $88
	adc  c                                           ; $6ade: $89
	sbc  c                                           ; $6adf: $99
	sbc  c                                           ; $6ae0: $99
	sbc  c                                           ; $6ae1: $99
	sbc  c                                           ; $6ae2: $99
	adc  b                                           ; $6ae3: $88
	adc  c                                           ; $6ae4: $89
	sbc  c                                           ; $6ae5: $99
	sbc  b                                           ; $6ae6: $98
	adc  b                                           ; $6ae7: $88
	add  a                                           ; $6ae8: $87
	ld   [hl], a                                     ; $6ae9: $77
	ld   [hl], a                                     ; $6aea: $77
	ld   [hl], a                                     ; $6aeb: $77
	ld   h, [hl]                                     ; $6aec: $66
	ld   h, [hl]                                     ; $6aed: $66
	ld   h, l                                        ; $6aee: $65
	ld   d, [hl]                                     ; $6aef: $56
	ld   h, [hl]                                     ; $6af0: $66
	ld   [hl], a                                     ; $6af1: $77
	ld   a, b                                        ; $6af2: $78
	sbc  c                                           ; $6af3: $99
	adc  c                                           ; $6af4: $89
	sbc  c                                           ; $6af5: $99
	sbc  d                                           ; $6af6: $9a
	xor  d                                           ; $6af7: $aa
	xor  d                                           ; $6af8: $aa
	xor  d                                           ; $6af9: $aa
	xor  d                                           ; $6afa: $aa
	xor  c                                           ; $6afb: $a9
	sbc  c                                           ; $6afc: $99
	adc  b                                           ; $6afd: $88
	sbc  c                                           ; $6afe: $99
	adc  b                                           ; $6aff: $88
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	adc  b                                           ; $6b03: $88
	adc  b                                           ; $6b04: $88
	adc  b                                           ; $6b05: $88
	adc  b                                           ; $6b06: $88
	adc  b                                           ; $6b07: $88
	adc  b                                           ; $6b08: $88
	adc  b                                           ; $6b09: $88
	ld   [hl], a                                     ; $6b0a: $77
	adc  b                                           ; $6b0b: $88
	adc  b                                           ; $6b0c: $88
	ld   [hl], a                                     ; $6b0d: $77
	ld   [hl], a                                     ; $6b0e: $77
	ld   [hl], a                                     ; $6b0f: $77
	ld   [hl], a                                     ; $6b10: $77
	ld   [hl], a                                     ; $6b11: $77
	halt                                             ; $6b12: $76
	ld   [hl], a                                     ; $6b13: $77
	ld   [hl], a                                     ; $6b14: $77
	ld   [hl], a                                     ; $6b15: $77
	adc  b                                           ; $6b16: $88
	sbc  b                                           ; $6b17: $98
	adc  b                                           ; $6b18: $88
	adc  b                                           ; $6b19: $88
	sbc  c                                           ; $6b1a: $99
	adc  c                                           ; $6b1b: $89
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	sbc  c                                           ; $6b20: $99
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
	add  a                                           ; $6b25: $87
	ld   [hl], a                                     ; $6b26: $77
	ld   a, b                                        ; $6b27: $78
	adc  b                                           ; $6b28: $88
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	adc  b                                           ; $6b2b: $88
	adc  b                                           ; $6b2c: $88
	sbc  c                                           ; $6b2d: $99
	sbc  c                                           ; $6b2e: $99
	adc  c                                           ; $6b2f: $89
	adc  b                                           ; $6b30: $88
	sbc  c                                           ; $6b31: $99
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  b                                           ; $6b35: $88
	adc  b                                           ; $6b36: $88
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	add  a                                           ; $6b3a: $87
	ld   [hl], a                                     ; $6b3b: $77
	ld   [hl], a                                     ; $6b3c: $77
	ld   [hl], a                                     ; $6b3d: $77
	ld   [hl], a                                     ; $6b3e: $77
	ld   [hl], a                                     ; $6b3f: $77
	ld   [hl], a                                     ; $6b40: $77
	ld   [hl], a                                     ; $6b41: $77
	ld   a, b                                        ; $6b42: $78
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  c                                           ; $6b46: $89
	sbc  c                                           ; $6b47: $99
	sbc  c                                           ; $6b48: $99
	sbc  c                                           ; $6b49: $99
	sbc  b                                           ; $6b4a: $98
	adc  c                                           ; $6b4b: $89
	sbc  c                                           ; $6b4c: $99
	adc  b                                           ; $6b4d: $88
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	adc  b                                           ; $6b50: $88
	adc  b                                           ; $6b51: $88
	adc  b                                           ; $6b52: $88
	adc  b                                           ; $6b53: $88
	adc  b                                           ; $6b54: $88
	ld   [hl], a                                     ; $6b55: $77
	ld   [hl], a                                     ; $6b56: $77
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	adc  b                                           ; $6b59: $88
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	adc  b                                           ; $6b5c: $88
	adc  b                                           ; $6b5d: $88
	adc  b                                           ; $6b5e: $88
	adc  c                                           ; $6b5f: $89
	sbc  c                                           ; $6b60: $99
	sbc  c                                           ; $6b61: $99
	sbc  c                                           ; $6b62: $99
	sbc  c                                           ; $6b63: $99
	sbc  c                                           ; $6b64: $99
	sbc  c                                           ; $6b65: $99
	adc  b                                           ; $6b66: $88
	adc  b                                           ; $6b67: $88
	adc  b                                           ; $6b68: $88
	adc  b                                           ; $6b69: $88
	adc  b                                           ; $6b6a: $88
	adc  b                                           ; $6b6b: $88
	adc  b                                           ; $6b6c: $88
	adc  b                                           ; $6b6d: $88
	add  a                                           ; $6b6e: $87
	ld   [hl], a                                     ; $6b6f: $77
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
	sbc  c                                           ; $6b7d: $99
	sbc  c                                           ; $6b7e: $99
	sbc  c                                           ; $6b7f: $99
	sbc  c                                           ; $6b80: $99
	sbc  c                                           ; $6b81: $99
	sbc  c                                           ; $6b82: $99
	sbc  c                                           ; $6b83: $99
	sbc  c                                           ; $6b84: $99
	sbc  c                                           ; $6b85: $99
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
	add  a                                           ; $6b90: $87
	ld   [hl], a                                     ; $6b91: $77
	adc  b                                           ; $6b92: $88
	adc  b                                           ; $6b93: $88
	adc  b                                           ; $6b94: $88
	adc  b                                           ; $6b95: $88
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	sbc  c                                           ; $6b99: $99
	sbc  b                                           ; $6b9a: $98
	adc  b                                           ; $6b9b: $88
	adc  b                                           ; $6b9c: $88
	adc  b                                           ; $6b9d: $88
	adc  b                                           ; $6b9e: $88
	adc  b                                           ; $6b9f: $88
	sbc  c                                           ; $6ba0: $99
	adc  b                                           ; $6ba1: $88
	adc  b                                           ; $6ba2: $88
	adc  b                                           ; $6ba3: $88
	adc  b                                           ; $6ba4: $88
	adc  b                                           ; $6ba5: $88
	adc  b                                           ; $6ba6: $88
	adc  b                                           ; $6ba7: $88
	adc  b                                           ; $6ba8: $88
	ld   [hl], a                                     ; $6ba9: $77
	ld   [hl], a                                     ; $6baa: $77
	adc  b                                           ; $6bab: $88
	ld   [hl], a                                     ; $6bac: $77
	ld   [hl], a                                     ; $6bad: $77
	ld   [hl], a                                     ; $6bae: $77
	ld   a, b                                        ; $6baf: $78
	adc  b                                           ; $6bb0: $88
	adc  b                                           ; $6bb1: $88
	adc  b                                           ; $6bb2: $88
	adc  b                                           ; $6bb3: $88
	adc  c                                           ; $6bb4: $89
	sbc  c                                           ; $6bb5: $99
	adc  b                                           ; $6bb6: $88
	sbc  c                                           ; $6bb7: $99
	sbc  c                                           ; $6bb8: $99
	adc  b                                           ; $6bb9: $88
	adc  c                                           ; $6bba: $89
	sbc  c                                           ; $6bbb: $99
	sbc  b                                           ; $6bbc: $98
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	adc  b                                           ; $6bbf: $88
	adc  b                                           ; $6bc0: $88
	add  a                                           ; $6bc1: $87
	ld   [hl], a                                     ; $6bc2: $77
	ld   a, b                                        ; $6bc3: $78
	adc  b                                           ; $6bc4: $88
	adc  b                                           ; $6bc5: $88
	adc  b                                           ; $6bc6: $88
	adc  b                                           ; $6bc7: $88
	adc  b                                           ; $6bc8: $88
	adc  b                                           ; $6bc9: $88
	adc  b                                           ; $6bca: $88
	adc  b                                           ; $6bcb: $88
	adc  b                                           ; $6bcc: $88
	sbc  c                                           ; $6bcd: $99
	ld   a, c                                        ; $6bce: $79
	adc  c                                           ; $6bcf: $89
	sbc  b                                           ; $6bd0: $98
	xor  b                                           ; $6bd1: $a8
	adc  c                                           ; $6bd2: $89
	xor  b                                           ; $6bd3: $a8
	sbc  b                                           ; $6bd4: $98
	ld   [hl], a                                     ; $6bd5: $77
	ld   [hl], a                                     ; $6bd6: $77
	ld   [hl], a                                     ; $6bd7: $77
	ld   h, a                                        ; $6bd8: $67
	ld   h, a                                        ; $6bd9: $67
	ld   a, b                                        ; $6bda: $78
	ld   [hl], a                                     ; $6bdb: $77
	sbc  c                                           ; $6bdc: $99
	res  1, b                                        ; $6bdd: $cb $88
	sbc  d                                           ; $6bdf: $9a
	xor  c                                           ; $6be0: $a9
	add  [hl]                                        ; $6be1: $86
	ld   h, a                                        ; $6be2: $67
	ld   l, c                                        ; $6be3: $69
	ld   a, d                                        ; $6be4: $7a
	ld   a, c                                        ; $6be5: $79
	add  [hl]                                        ; $6be6: $86
	add  a                                           ; $6be7: $87
	and  a                                           ; $6be8: $a7
	or   [hl]                                        ; $6be9: $b6
	halt                                             ; $6bea: $76
	ld   l, b                                        ; $6beb: $68
	ld   l, d                                        ; $6bec: $6a
	ld   l, b                                        ; $6bed: $68
	ld   d, a                                        ; $6bee: $57
	halt                                             ; $6bef: $76
	add  a                                           ; $6bf0: $87
	sub  a                                           ; $6bf1: $97
	adc  b                                           ; $6bf2: $88
	sbc  c                                           ; $6bf3: $99
	xor  c                                           ; $6bf4: $a9
	sbc  b                                           ; $6bf5: $98
	sbc  b                                           ; $6bf6: $98
	adc  c                                           ; $6bf7: $89
	sbc  c                                           ; $6bf8: $99
	sbc  c                                           ; $6bf9: $99
	adc  b                                           ; $6bfa: $88
	ld   a, b                                        ; $6bfb: $78
	ld   [hl], a                                     ; $6bfc: $77
	halt                                             ; $6bfd: $76
	ld   h, e                                        ; $6bfe: $63
	ld   hl, $1111                                   ; $6bff: $21 $11 $11
	inc  h                                           ; $6c02: $24
	ld   a, d                                        ; $6c03: $7a
	xor  h                                           ; $6c04: $ac
	cp   a                                           ; $6c05: $bf
	rst  $38                                         ; $6c06: $ff
	rst  $38                                         ; $6c07: $ff
	db   $fc                                         ; $6c08: $fc
	ret  z                                           ; $6c09: $c8

	sub  [hl]                                        ; $6c0a: $96
	ld   [hl], a                                     ; $6c0b: $77
	ld   h, [hl]                                     ; $6c0c: $66
	ld   d, a                                        ; $6c0d: $57
	ld   a, c                                        ; $6c0e: $79
	xor  l                                           ; $6c0f: $ad
	call z, Call_0b0_41a7                            ; $6c10: $cc $a7 $41
	ld   de, $1111                                   ; $6c13: $11 $11 $11
	scf                                              ; $6c16: $37
	sbc  l                                           ; $6c17: $9d
	sbc  a                                           ; $6c18: $9f
	rst  $38                                         ; $6c19: $ff
	rst  $38                                         ; $6c1a: $ff
	ei                                               ; $6c1b: $fb
	call nc, $2945                                   ; $6c1c: $d4 $45 $29
	dec  [hl]                                        ; $6c1f: $35
	inc  h                                           ; $6c20: $24
	ld   a, c                                        ; $6c21: $79
	rst  $38                                         ; $6c22: $ff
	rst  $38                                         ; $6c23: $ff
	rst  $38                                         ; $6c24: $ff
	set  1, b                                        ; $6c25: $cb $c8
	ld   [hl], c                                     ; $6c27: $71
	ld   de, $1111                                   ; $6c28: $11 $11 $11
	inc  d                                           ; $6c2b: $14
	db   $fc                                         ; $6c2c: $fc
	db   $fd                                         ; $6c2d: $fd
	rst  JumpTable                                         ; $6c2e: $df
	rst  $38                                         ; $6c2f: $ff
	rst  $38                                         ; $6c30: $ff
	pop  af                                          ; $6c31: $f1
	ld   sp, $5821                                   ; $6c32: $31 $21 $58
	ld   d, $16                                      ; $6c35: $16 $16
	xor  a                                           ; $6c37: $af
	rst  $38                                         ; $6c38: $ff
	rst  $38                                         ; $6c39: $ff
	cp   $8c                                         ; $6c3a: $fe $8c
	cp   c                                           ; $6c3c: $b9
	ld   [hl], c                                     ; $6c3d: $71
	ld   de, $1111                                   ; $6c3e: $11 $11 $11
	ld   de, $ff4f                                   ; $6c41: $11 $4f $ff
	db   $fc                                         ; $6c44: $fc
	rst  $38                                         ; $6c45: $ff
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	ld   de, $2111                                   ; $6c48: $11 $11 $21
	and  d                                           ; $6c4b: $a2
	ld   b, l                                        ; $6c4c: $45
	ld   l, a                                        ; $6c4d: $6f
	rst  $28                                         ; $6c4e: $ef
	rst  $38                                         ; $6c4f: $ff
	db   $fd                                         ; $6c50: $fd
	ld   [$659b], a                                  ; $6c51: $ea $9b $65
	ld   de, $1111                                   ; $6c54: $11 $11 $11
	ld   de, $ff15                                   ; $6c57: $11 $15 $ff
	rst  $38                                         ; $6c5a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c5b: $cf
	rst  $38                                         ; $6c5c: $ff
	rst  $38                                         ; $6c5d: $ff
	pop  af                                          ; $6c5e: $f1
	ld   de, $1911                                   ; $6c5f: $11 $11 $19
	ld   [hl], h                                     ; $6c62: $74
	ld   [hl], h                                     ; $6c63: $74
	sbc  $ff                                         ; $6c64: $de $ff
	rst  $38                                         ; $6c66: $ff
	db   $fd                                         ; $6c67: $fd
	sub  l                                           ; $6c68: $95
	and  a                                           ; $6c69: $a7
	ld   [hl], h                                     ; $6c6a: $74
	ld   de, $1111                                   ; $6c6b: $11 $11 $11
	ld   de, $ff59                                   ; $6c6e: $11 $59 $ff
	rst  $38                                         ; $6c71: $ff
	rst  $28                                         ; $6c72: $ef
	rst  $38                                         ; $6c73: $ff
	rst  $38                                         ; $6c74: $ff
	pop  de                                          ; $6c75: $d1
	ld   de, $1811                                   ; $6c76: $11 $11 $18
	ld   b, h                                        ; $6c79: $44
	ld   a, c                                        ; $6c7a: $79
	rst  $38                                         ; $6c7b: $ff
	rst  $38                                         ; $6c7c: $ff
	rst  $38                                         ; $6c7d: $ff
	db   $db                                         ; $6c7e: $db
	add  [hl]                                        ; $6c7f: $86
	add  [hl]                                        ; $6c80: $86
	ld   b, d                                        ; $6c81: $42
	ld   de, $1111                                   ; $6c82: $11 $11 $11
	ld   de, $ff6f                                   ; $6c85: $11 $6f $ff
	db   $fd                                         ; $6c88: $fd
	rst  $38                                         ; $6c89: $ff
	rst  $38                                         ; $6c8a: $ff
	rst  $38                                         ; $6c8b: $ff
	ld   hl, $1111                                   ; $6c8c: $21 $11 $11
	ld   h, a                                        ; $6c8f: $67
	ld   a, c                                        ; $6c90: $79
	xor  l                                           ; $6c91: $ad
	rst  $38                                         ; $6c92: $ff
	rst  $38                                         ; $6c93: $ff
	rst  $38                                         ; $6c94: $ff
	jp   c, $4455                                    ; $6c95: $da $55 $44

	ld   hl, $1111                                   ; $6c98: $21 $11 $11
	ld   de, $ff15                                   ; $6c9b: $11 $15 $ff
	rst  $38                                         ; $6c9e: $ff
	rst  JumpTable                                         ; $6c9f: $df
	rst  $38                                         ; $6ca0: $ff
	rst  $38                                         ; $6ca1: $ff
	push af                                          ; $6ca2: $f5
	ld   de, $1511                                   ; $6ca3: $11 $11 $15
	adc  c                                           ; $6ca6: $89
	xor  h                                           ; $6ca7: $ac
	rst  $28                                         ; $6ca8: $ef
	rst  $38                                         ; $6ca9: $ff
	rst  $38                                         ; $6caa: $ff
	cp   $a4                                         ; $6cab: $fe $a4
	ld   b, d                                        ; $6cad: $42
	inc  sp                                          ; $6cae: $33
	ld   de, $1111                                   ; $6caf: $11 $11 $11
	ld   de, $ff7f                                   ; $6cb2: $11 $7f $ff
	db   $fd                                         ; $6cb5: $fd
	rst  $38                                         ; $6cb6: $ff
	rst  $38                                         ; $6cb7: $ff
	rst  $38                                         ; $6cb8: $ff
	ld   b, c                                        ; $6cb9: $41
	ld   de, $5a11                                   ; $6cba: $11 $11 $5a
	cp   l                                           ; $6cbd: $bd
	db   $ed                                         ; $6cbe: $ed
	rst  $38                                         ; $6cbf: $ff
	rst  $38                                         ; $6cc0: $ff
	rst  $38                                         ; $6cc1: $ff
	add  sp, $22                                     ; $6cc2: $e8 $22
	ld   [bc], a                                     ; $6cc4: $02
	ld   hl, $1111                                   ; $6cc5: $21 $11 $11
	ld   de, $ff19                                   ; $6cc8: $11 $19 $ff
	rst  $38                                         ; $6ccb: $ff
	rst  JumpTable                                         ; $6ccc: $df
	rst  $38                                         ; $6ccd: $ff
	rst  $38                                         ; $6cce: $ff
	ldh  a, [c]                                      ; $6ccf: $f2
	ld   de, $1611                                   ; $6cd0: $11 $11 $16
	call $dfee                                       ; $6cd3: $cd $ee $df
	rst  $38                                         ; $6cd6: $ff
	rst  $38                                         ; $6cd7: $ff
	db   $fd                                         ; $6cd8: $fd
	ld   [hl], d                                     ; $6cd9: $72
	ld   de, $1121                                   ; $6cda: $11 $21 $11
	ld   de, $1111                                   ; $6cdd: $11 $11 $11
	cp   a                                           ; $6ce0: $bf
	rst  $38                                         ; $6ce1: $ff
	rst  $38                                         ; $6ce2: $ff
	rst  $38                                         ; $6ce3: $ff
	rst  $38                                         ; $6ce4: $ff
	rst  $38                                         ; $6ce5: $ff
	ld   hl, $1111                                   ; $6ce6: $21 $11 $11
	ld   e, e                                        ; $6ce9: $5b
	rst  $28                                         ; $6cea: $ef
	cp   $ff                                         ; $6ceb: $fe $ff
	rst  $38                                         ; $6ced: $ff
	rst  $38                                         ; $6cee: $ff
	rst  $30                                         ; $6cef: $f7
	ld   sp, $1211                                   ; $6cf0: $31 $11 $12
	ld   de, $1111                                   ; $6cf3: $11 $11 $11
	ld   a, [de]                                     ; $6cf6: $1a
	rst  $38                                         ; $6cf7: $ff
	rst  $38                                         ; $6cf8: $ff
	rst  $38                                         ; $6cf9: $ff
	rst  $38                                         ; $6cfa: $ff
	rst  $38                                         ; $6cfb: $ff
	di                                               ; $6cfc: $f3
	ld   de, $1411                                   ; $6cfd: $11 $11 $14
	xor  a                                           ; $6d00: $af
	rst  $38                                         ; $6d01: $ff
	rst  $38                                         ; $6d02: $ff
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	rst  $38                                         ; $6d05: $ff
	sub  l                                           ; $6d06: $95
	ld   de, $2111                                   ; $6d07: $11 $11 $21
	ld   de, $1111                                   ; $6d0a: $11 $11 $11
	xor  a                                           ; $6d0d: $af
	rst  $38                                         ; $6d0e: $ff
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	rst  $38                                         ; $6d11: $ff
	rst  $38                                         ; $6d12: $ff
	ld   b, c                                        ; $6d13: $41
	ld   de, $4b11                                   ; $6d14: $11 $11 $4b
	rst  $38                                         ; $6d17: $ff
	rst  $38                                         ; $6d18: $ff
	rst  $38                                         ; $6d19: $ff
	rst  $38                                         ; $6d1a: $ff
	rst  $38                                         ; $6d1b: $ff
	ld   sp, hl                                      ; $6d1c: $f9
	ld   d, c                                        ; $6d1d: $51
	ld   de, $1111                                   ; $6d1e: $11 $11 $11
	ld   de, $1c11                                   ; $6d21: $11 $11 $1c
	rst  $38                                         ; $6d24: $ff
	rst  $38                                         ; $6d25: $ff
	rst  $38                                         ; $6d26: $ff
	rst  $38                                         ; $6d27: $ff
	rst  $38                                         ; $6d28: $ff
	db   $e4                                         ; $6d29: $e4
	ld   de, $1411                                   ; $6d2a: $11 $11 $14
	cp   a                                           ; $6d2d: $bf
	rst  $38                                         ; $6d2e: $ff
	rst  $28                                         ; $6d2f: $ef
	rst  $38                                         ; $6d30: $ff
	rst  $38                                         ; $6d31: $ff
	rst  $38                                         ; $6d32: $ff
	or   [hl]                                        ; $6d33: $b6
	ld   de, $2111                                   ; $6d34: $11 $11 $21
	ld   de, $1111                                   ; $6d37: $11 $11 $11
	cp   a                                           ; $6d3a: $bf
	rst  $38                                         ; $6d3b: $ff
	rst  $38                                         ; $6d3c: $ff
	rst  $38                                         ; $6d3d: $ff
	rst  $38                                         ; $6d3e: $ff
	rst  $38                                         ; $6d3f: $ff
	ld   h, d                                        ; $6d40: $62
	ld   de, $6d11                                   ; $6d41: $11 $11 $6d
	rst  $38                                         ; $6d44: $ff
	db   $fc                                         ; $6d45: $fc
	db   $ec                                         ; $6d46: $ec
	rst  $28                                         ; $6d47: $ef
	rst  $38                                         ; $6d48: $ff
	ei                                               ; $6d49: $fb
	ld   h, c                                        ; $6d4a: $61
	ld   de, $1112                                   ; $6d4b: $11 $12 $11
	ld   de, $2f11                                   ; $6d4e: $11 $11 $2f
	rst  $38                                         ; $6d51: $ff
	cp   $ff                                         ; $6d52: $fe $ff
	rst  $38                                         ; $6d54: $ff
	rst  $38                                         ; $6d55: $ff
	or   [hl]                                        ; $6d56: $b6
	ld   de, $2911                                   ; $6d57: $11 $11 $29
	rst  $28                                         ; $6d5a: $ef
	db   $fd                                         ; $6d5b: $fd
	call z, $ffcf                                    ; $6d5c: $cc $cf $ff
	db   $fc                                         ; $6d5f: $fc
	and  h                                           ; $6d60: $a4
	ld   [de], a                                     ; $6d61: $12
	ld   [de], a                                     ; $6d62: $12
	ld   bc, $1111                                   ; $6d63: $01 $11 $11
	ld   d, $ff                                      ; $6d66: $16 $ff
	rst  $38                                         ; $6d68: $ff
	rst  JumpTable                                         ; $6d69: $df
	rst  JumpTable                                         ; $6d6a: $df
	rst  $38                                         ; $6d6b: $ff
	ld   sp, hl                                      ; $6d6c: $f9
	ld   h, c                                        ; $6d6d: $61
	ld   de, $df16                                   ; $6d6e: $11 $16 $df
	cp   $ac                                         ; $6d71: $fe $ac
	cp   h                                           ; $6d73: $bc
	rst  $38                                         ; $6d74: $ff
	rst  $38                                         ; $6d75: $ff
	xor  b                                           ; $6d76: $a8
	ld   [de], a                                     ; $6d77: $12
	ld   hl, $1131                                   ; $6d78: $21 $31 $11
	ld   de, $cf11                                   ; $6d7b: $11 $11 $cf
	rst  $38                                         ; $6d7e: $ff
	rst  $28                                         ; $6d7f: $ef
	cp   $ff                                         ; $6d80: $fe $ff
	cp   $73                                         ; $6d82: $fe $73
	ld   de, $af14                                   ; $6d84: $11 $14 $af
	rst  $28                                         ; $6d87: $ef
	cp   c                                           ; $6d88: $b9
	jp   z, $ffef                                    ; $6d89: $ca $ef $ff

	cp   c                                           ; $6d8c: $b9
	ld   d, d                                        ; $6d8d: $52
	ld   b, d                                        ; $6d8e: $42
	ld   sp, $1111                                   ; $6d8f: $31 $11 $11
	ld   de, $ff2e                                   ; $6d92: $11 $2e $ff
	db   $fd                                         ; $6d95: $fd
	cp   $ff                                         ; $6d96: $fe $ff
	rst  $38                                         ; $6d98: $ff
	ret  z                                           ; $6d99: $c8

	ld   hl, $5a11                                   ; $6d9a: $21 $11 $5a
	db   $dd                                         ; $6d9d: $dd
	ei                                               ; $6d9e: $fb
	cp   e                                           ; $6d9f: $bb
	cp   a                                           ; $6da0: $bf
	rst  $38                                         ; $6da1: $ff
	ei                                               ; $6da2: $fb
	sub  l                                           ; $6da3: $95
	inc  [hl]                                        ; $6da4: $34
	inc  hl                                          ; $6da5: $23
	ld   de, $1111                                   ; $6da6: $11 $11 $11
	inc  d                                           ; $6da9: $14
	rst  $38                                         ; $6daa: $ff
	rst  $38                                         ; $6dab: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dac: $cf
	rst  JumpTable                                         ; $6dad: $df
	rst  $38                                         ; $6dae: $ff
	ei                                               ; $6daf: $fb
	ld   [hl], c                                     ; $6db0: $71
	ld   de, $ac35                                   ; $6db1: $11 $35 $ac
	call z, $ac8a                                    ; $6db4: $cc $8a $ac
	rst  $38                                         ; $6db7: $ff
	db   $fd                                         ; $6db8: $fd
	sbc  b                                           ; $6db9: $98
	inc  [hl]                                        ; $6dba: $34
	ld   d, h                                        ; $6dbb: $54
	ld   d, c                                        ; $6dbc: $51
	ld   de, $1111                                   ; $6dbd: $11 $11 $11
	ld   c, a                                        ; $6dc0: $4f
	rst  JumpTable                                         ; $6dc1: $df
	ld   [$fffd], a                                  ; $6dc2: $ea $fd $ff
	rst  $38                                         ; $6dc5: $ff
	cp   b                                           ; $6dc6: $b8
	ld   sp, $6a13                                   ; $6dc7: $31 $13 $6a
	cp   d                                           ; $6dca: $ba
	and  a                                           ; $6dcb: $a7
	xor  e                                           ; $6dcc: $ab
	cp   a                                           ; $6dcd: $bf
	rst  $38                                         ; $6dce: $ff
	ld   a, [$5794]                                  ; $6dcf: $fa $94 $57
	ld   h, a                                        ; $6dd2: $67
	ld   sp, $1111                                   ; $6dd3: $31 $11 $11
	ld   de, $ad9b                                   ; $6dd6: $11 $9b $ad
	adc  e                                           ; $6dd9: $8b
	rst  $28                                         ; $6dda: $ef
	rst  $38                                         ; $6ddb: $ff
	rst  $38                                         ; $6ddc: $ff
	or   a                                           ; $6ddd: $b7
	ld   [hl-], a                                    ; $6dde: $32
	ld   b, a                                        ; $6ddf: $47
	ld   a, d                                        ; $6de0: $7a
	sbc  b                                           ; $6de1: $98
	halt                                             ; $6de2: $76
	cp   e                                           ; $6de3: $bb
	rst  $38                                         ; $6de4: $ff
	rst  $38                                         ; $6de5: $ff
	cp   c                                           ; $6de6: $b9
	halt                                             ; $6de7: $76
	sbc  b                                           ; $6de8: $98
	add  l                                           ; $6de9: $85
	ld   hl, $1111                                   ; $6dea: $21 $11 $11
	inc  de                                          ; $6ded: $13
	add  [hl]                                        ; $6dee: $86
	ld   [hl], a                                     ; $6def: $77
	ld   e, d                                        ; $6df0: $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6df1: $cf
	rst  $38                                         ; $6df2: $ff
	db   $fd                                         ; $6df3: $fd
	cp   d                                           ; $6df4: $ba
	add  a                                           ; $6df5: $87
	xor  d                                           ; $6df6: $aa
	adc  d                                           ; $6df7: $8a
	ld   a, c                                        ; $6df8: $79
	ld   [hl], a                                     ; $6df9: $77
	cp   d                                           ; $6dfa: $ba
	db   $dd                                         ; $6dfb: $dd
	db   $dd                                         ; $6dfc: $dd
	cp   e                                           ; $6dfd: $bb
	sbc  d                                           ; $6dfe: $9a
	xor  c                                           ; $6dff: $a9
	add  [hl]                                        ; $6e00: $86
	ld   b, c                                        ; $6e01: $41
	ld   de, $1211                                   ; $6e02: $11 $11 $12
	ld   de, $3722                                   ; $6e05: $11 $22 $37
	xor  h                                           ; $6e08: $ac
	rst  $38                                         ; $6e09: $ff
	rst  $38                                         ; $6e0a: $ff
	db   $ed                                         ; $6e0b: $ed
	set  3, h                                        ; $6e0c: $cb $dc
	jp   z, $8899                                    ; $6e0e: $ca $99 $88

	xor  d                                           ; $6e11: $aa
	xor  e                                           ; $6e12: $ab
	res  7, h                                        ; $6e13: $cb $bc
	cp   e                                           ; $6e15: $bb
	xor  d                                           ; $6e16: $aa
	sub  a                                           ; $6e17: $97
	ld   d, d                                        ; $6e18: $52
	ld   de, $1111                                   ; $6e19: $11 $11 $11
	ld   de, $2611                                   ; $6e1c: $11 $11 $26
	xor  l                                           ; $6e1f: $ad
	rst  $28                                         ; $6e20: $ef
	rst  $38                                         ; $6e21: $ff
	rst  $38                                         ; $6e22: $ff
	rst  $38                                         ; $6e23: $ff
	cp   $ec                                         ; $6e24: $fe $ec
	xor  c                                           ; $6e26: $a9
	adc  c                                           ; $6e27: $89
	sbc  c                                           ; $6e28: $99
	sbc  d                                           ; $6e29: $9a
	xor  d                                           ; $6e2a: $aa
	xor  c                                           ; $6e2b: $a9
	xor  d                                           ; $6e2c: $aa
	sbc  d                                           ; $6e2d: $9a
	halt                                             ; $6e2e: $76
	ld   b, c                                        ; $6e2f: $41
	ld   de, $1111                                   ; $6e30: $11 $11 $11
	ld   de, $6911                                   ; $6e33: $11 $11 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e36: $cf
	rst  $38                                         ; $6e37: $ff
	rst  $38                                         ; $6e38: $ff
	rst  $38                                         ; $6e39: $ff
	rst  $38                                         ; $6e3a: $ff
	cp   $da                                         ; $6e3b: $fe $da
	xor  c                                           ; $6e3d: $a9
	xor  d                                           ; $6e3e: $aa
	sbc  d                                           ; $6e3f: $9a
	sbc  c                                           ; $6e40: $99
	adc  c                                           ; $6e41: $89
	sbc  c                                           ; $6e42: $99
	sbc  c                                           ; $6e43: $99
	and  a                                           ; $6e44: $a7
	ld   h, h                                        ; $6e45: $64
	ld   de, $1111                                   ; $6e46: $11 $11 $11
	ld   de, $1411                                   ; $6e49: $11 $11 $14
	sbc  h                                           ; $6e4c: $9c
	rst  JumpTable                                         ; $6e4d: $df
	rst  $38                                         ; $6e4e: $ff
	rst  $38                                         ; $6e4f: $ff
	rst  $38                                         ; $6e50: $ff
	rst  $38                                         ; $6e51: $ff
	db   $ed                                         ; $6e52: $ed
	cp   d                                           ; $6e53: $ba
	sbc  c                                           ; $6e54: $99
	cp   c                                           ; $6e55: $b9
	sbc  c                                           ; $6e56: $99
	sub  a                                           ; $6e57: $97
	adc  c                                           ; $6e58: $89
	xor  d                                           ; $6e59: $aa
	xor  d                                           ; $6e5a: $aa
	add  a                                           ; $6e5b: $87
	ld   h, e                                        ; $6e5c: $63
	ld   hl, $1111                                   ; $6e5d: $21 $11 $11
	ld   de, $1711                                   ; $6e60: $11 $11 $17
	xor  l                                           ; $6e63: $ad
	xor  $ff                                         ; $6e64: $ee $ff
	rst  $38                                         ; $6e66: $ff
	rst  $38                                         ; $6e67: $ff
	rst  $38                                         ; $6e68: $ff
	db   $db                                         ; $6e69: $db
	sbc  c                                           ; $6e6a: $99
	xor  e                                           ; $6e6b: $ab
	cp   c                                           ; $6e6c: $b9
	ld   [hl], a                                     ; $6e6d: $77
	ld   [hl], a                                     ; $6e6e: $77
	sbc  d                                           ; $6e6f: $9a
	cp   d                                           ; $6e70: $ba
	xor  c                                           ; $6e71: $a9
	add  a                                           ; $6e72: $87
	ld   [hl], l                                     ; $6e73: $75
	ld   sp, $1111                                   ; $6e74: $31 $11 $11
	ld   de, $1611                                   ; $6e77: $11 $11 $16
	xor  h                                           ; $6e7a: $ac
	sbc  $ff                                         ; $6e7b: $de $ff
	rst  $38                                         ; $6e7d: $ff
	rst  $38                                         ; $6e7e: $ff
	rst  $38                                         ; $6e7f: $ff
	cp   h                                           ; $6e80: $bc
	sbc  d                                           ; $6e81: $9a
	xor  e                                           ; $6e82: $ab
	xor  c                                           ; $6e83: $a9
	halt                                             ; $6e84: $76
	adc  b                                           ; $6e85: $88
	xor  e                                           ; $6e86: $ab
	xor  d                                           ; $6e87: $aa
	sbc  d                                           ; $6e88: $9a
	adc  c                                           ; $6e89: $89
	sub  [hl]                                        ; $6e8a: $96
	ld   b, c                                        ; $6e8b: $41
	ld   de, $1111                                   ; $6e8c: $11 $11 $11
	ld   de, $9b14                                   ; $6e8f: $11 $14 $9b
	db   $ed                                         ; $6e92: $ed
	rst  $38                                         ; $6e93: $ff
	rst  $38                                         ; $6e94: $ff
	rst  $38                                         ; $6e95: $ff
	rst  $38                                         ; $6e96: $ff
	res  5, d                                        ; $6e97: $cb $aa
	cp   c                                           ; $6e99: $b9
	xor  b                                           ; $6e9a: $a8
	halt                                             ; $6e9b: $76
	ld   [hl], a                                     ; $6e9c: $77
	sbc  d                                           ; $6e9d: $9a
	xor  e                                           ; $6e9e: $ab
	sbc  c                                           ; $6e9f: $99
	xor  c                                           ; $6ea0: $a9
	xor  c                                           ; $6ea1: $a9
	ld   h, e                                        ; $6ea2: $63
	ld   de, $1111                                   ; $6ea3: $11 $11 $11
	ld   de, $7a11                                   ; $6ea6: $11 $11 $7a
	call $ffdf                                       ; $6ea9: $cd $df $ff
	rst  $38                                         ; $6eac: $ff
	rst  $38                                         ; $6ead: $ff
	db   $eb                                         ; $6eae: $eb
	cp   d                                           ; $6eaf: $ba
	xor  e                                           ; $6eb0: $ab
	sbc  c                                           ; $6eb1: $99
	add  [hl]                                        ; $6eb2: $86
	ld   l, b                                        ; $6eb3: $68
	adc  e                                           ; $6eb4: $8b
	cp   d                                           ; $6eb5: $ba
	cp   c                                           ; $6eb6: $b9
	cp   e                                           ; $6eb7: $bb
	xor  c                                           ; $6eb8: $a9
	add  l                                           ; $6eb9: $85
	ld   hl, $1111                                   ; $6eba: $21 $11 $11
	ld   de, $1711                                   ; $6ebd: $11 $11 $17
	xor  l                                           ; $6ec0: $ad
	call $ffff                                       ; $6ec1: $cd $ff $ff
	rst  $38                                         ; $6ec4: $ff
	db   $fd                                         ; $6ec5: $fd
	xor  e                                           ; $6ec6: $ab
	xor  e                                           ; $6ec7: $ab
	cp   d                                           ; $6ec8: $ba
	adc  b                                           ; $6ec9: $88
	ld   h, [hl]                                     ; $6eca: $66
	adc  c                                           ; $6ecb: $89
	cp   e                                           ; $6ecc: $bb
	cp   d                                           ; $6ecd: $ba
	sbc  e                                           ; $6ece: $9b
	cp   d                                           ; $6ecf: $ba
	xor  b                                           ; $6ed0: $a8
	ld   d, d                                        ; $6ed1: $52
	ld   de, $1111                                   ; $6ed2: $11 $11 $11
	ld   de, $7b11                                   ; $6ed5: $11 $11 $7b
	call c, $ffde                                    ; $6ed8: $dc $de $ff
	rst  $38                                         ; $6edb: $ff
	rst  $38                                         ; $6edc: $ff
	db   $db                                         ; $6edd: $db
	cp   d                                           ; $6ede: $ba
	cp   h                                           ; $6edf: $bc
	xor  b                                           ; $6ee0: $a8
	add  [hl]                                        ; $6ee1: $86
	ld   l, c                                        ; $6ee2: $69
	sbc  e                                           ; $6ee3: $9b
	cp   d                                           ; $6ee4: $ba
	xor  c                                           ; $6ee5: $a9
	xor  e                                           ; $6ee6: $ab
	xor  d                                           ; $6ee7: $aa
	add  l                                           ; $6ee8: $85
	ld   de, $1111                                   ; $6ee9: $11 $11 $11
	ld   de, $1811                                   ; $6eec: $11 $11 $18
	xor  l                                           ; $6eef: $ad
	db   $dd                                         ; $6ef0: $dd
	sbc  $ff                                         ; $6ef1: $de $ff
	rst  $38                                         ; $6ef3: $ff
	db   $fd                                         ; $6ef4: $fd
	xor  e                                           ; $6ef5: $ab
	cp   e                                           ; $6ef6: $bb
	jp   z, Jump_0b0_6698                            ; $6ef7: $ca $98 $66

	sbc  c                                           ; $6efa: $99
	xor  e                                           ; $6efb: $ab
	xor  d                                           ; $6efc: $aa
	xor  e                                           ; $6efd: $ab
	res  5, c                                        ; $6efe: $cb $a9
	ld   d, d                                        ; $6f00: $52
	ld   de, $1111                                   ; $6f01: $11 $11 $11
	ld   de, $6b11                                   ; $6f04: $11 $11 $6b
	call c, $ffce                                    ; $6f07: $dc $ce $ff
	rst  $38                                         ; $6f0a: $ff
	rst  $38                                         ; $6f0b: $ff
	jp   c, $bdcc                                    ; $6f0c: $da $cc $bd

	cp   b                                           ; $6f0f: $b8
	add  l                                           ; $6f10: $85
	ld   l, d                                        ; $6f11: $6a
	sbc  l                                           ; $6f12: $9d
	jp   z, $bca9                                    ; $6f13: $ca $a9 $bc

	sub  a                                           ; $6f16: $97
	ld   b, c                                        ; $6f17: $41
	ld   de, $1115                                   ; $6f18: $11 $15 $11
	ld   de, $df79                                   ; $6f1b: $11 $79 $df
	xor  h                                           ; $6f1e: $ac
	rst  $28                                         ; $6f1f: $ef
	rst  $38                                         ; $6f20: $ff
	bit  7, d                                        ; $6f21: $cb $7a
	ei                                               ; $6f23: $fb
	add  a                                           ; $6f24: $87
	ld   e, b                                        ; $6f25: $58
	cp   e                                           ; $6f26: $bb
	rst  ToBoot                                         ; $6f27: $c7
	ld   e, e                                        ; $6f28: $5b
	xor  [hl]                                        ; $6f29: $ae
	db   $dd                                         ; $6f2a: $dd
	call c, $a6fe                                    ; $6f2b: $dc $fe $a6
	ld   d, c                                        ; $6f2e: $51
	ld   de, $1111                                   ; $6f2f: $11 $11 $11
	ld   de, $fd1b                                   ; $6f32: $11 $1b $fd
	db   $fc                                         ; $6f35: $fc
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	ret  c                                           ; $6f38: $d8

	add  a                                           ; $6f39: $87
	ld   a, h                                        ; $6f3a: $7c
	ld   sp, $c937                                   ; $6f3b: $31 $37 $c9
	sbc  c                                           ; $6f3e: $99
	xor  e                                           ; $6f3f: $ab
	db   $fd                                         ; $6f40: $fd
	xor  h                                           ; $6f41: $ac
	rst  $28                                         ; $6f42: $ef
	xor  $a6                                         ; $6f43: $ee $a6
	halt                                             ; $6f45: $76
	ld   hl, $1511                                   ; $6f46: $21 $11 $15
	ld   de, rAUD1LEN                                   ; $6f49: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f4c: $cf
	cp   a                                           ; $6f4d: $bf
	rst  $38                                         ; $6f4e: $ff
	push de                                          ; $6f4f: $d5
	adc  l                                           ; $6f50: $8d
	ld   h, h                                        ; $6f51: $64
	ld   b, c                                        ; $6f52: $41
	ld   e, b                                        ; $6f53: $58
	sub  [hl]                                        ; $6f54: $96
	ld   c, h                                        ; $6f55: $4c
	cp   $be                                         ; $6f56: $fe $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f58: $cf
	rst  $38                                         ; $6f59: $ff
	ld   [$72fb], a                                  ; $6f5a: $ea $fb $72
	ld   de, $1111                                   ; $6f5d: $11 $11 $11
	ld   b, c                                        ; $6f60: $41
	inc  d                                           ; $6f61: $14
	ld   a, a                                        ; $6f62: $7f
	rst  $28                                         ; $6f63: $ef
	cp   $ff                                         ; $6f64: $fe $ff
	ld   [$817e], a                                  ; $6f66: $ea $7e $81
	ld   [hl-], a                                    ; $6f69: $32
	ld   [hl], $66                                   ; $6f6a: $36 $66
	ld   l, e                                        ; $6f6c: $6b
	db   $fd                                         ; $6f6d: $fd
	xor  [hl]                                        ; $6f6e: $ae
	rst  $38                                         ; $6f6f: $ff
	cp   $fe                                         ; $6f70: $fe $fe
	db   $ec                                         ; $6f72: $ec
	ld   b, h                                        ; $6f73: $44
	ld   de, $1111                                   ; $6f74: $11 $11 $11
	ld   de, $9f12                                   ; $6f77: $11 $12 $9f

jr_0b0_6f7a:
	rst  $38                                         ; $6f7a: $ff
	rst  $38                                         ; $6f7b: $ff
	rst  $38                                         ; $6f7c: $ff
	jp   c, $81ac                                    ; $6f7d: $da $ac $81

	inc  h                                           ; $6f80: $24
	ld   d, l                                        ; $6f81: $55
	dec  [hl]                                        ; $6f82: $35
	adc  [hl]                                        ; $6f83: $8e
	ld   [$ffcf], a                                  ; $6f84: $ea $cf $ff
	xor  $ff                                         ; $6f87: $ee $ff
	add  sp, $35                                     ; $6f89: $e8 $35
	ld   de, $1211                                   ; $6f8b: $11 $11 $12
	ld   h, c                                        ; $6f8e: $61
	inc  d                                           ; $6f8f: $14
	rst  $38                                         ; $6f90: $ff
	ld   a, a                                        ; $6f91: $7f
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	sbc  e                                           ; $6f94: $9b
	rst  $38                                         ; $6f95: $ff
	ld   de, $8176                                   ; $6f96: $11 $76 $81
	jr   z, jr_0b0_6f7a                              ; $6f99: $28 $df

	xor  c                                           ; $6f9b: $a9
	rst  $28                                         ; $6f9c: $ef
	db   $fd                                         ; $6f9d: $fd
	xor  a                                           ; $6f9e: $af
	cp   $a2                                         ; $6f9f: $fe $a2
	ld   h, d                                        ; $6fa1: $62
	ld   de, $1611                                   ; $6fa2: $11 $11 $16
	ld   de, $f57f                                   ; $6fa5: $11 $7f $f5
	rst  $38                                         ; $6fa8: $ff
	rst  $38                                         ; $6fa9: $ff
	ld   hl, sp-$01                                  ; $6faa: $f8 $ff
	pop  af                                          ; $6fac: $f1
	add  hl, de                                      ; $6fad: $19
	add  a                                           ; $6fae: $87
	ld   [de], a                                     ; $6faf: $12
	adc  [hl]                                        ; $6fb0: $8e
	rst  $30                                         ; $6fb1: $f7
	cp   a                                           ; $6fb2: $bf
	rst  $38                                         ; $6fb3: $ff
	cp   l                                           ; $6fb4: $bd
	rst  $38                                         ; $6fb5: $ff
	or   a                                           ; $6fb6: $b7
	dec  h                                           ; $6fb7: $25
	ld   de, $1911                                   ; $6fb8: $11 $11 $19
	ld   de, $fd2b                                   ; $6fbb: $11 $2b $fd
	ld   l, a                                        ; $6fbe: $6f
	rst  $38                                         ; $6fbf: $ff
	ld   a, [$f9cf]                                  ; $6fc0: $fa $cf $f9
	dec  d                                           ; $6fc3: $15
	rst  ToBoot                                         ; $6fc4: $c7
	ld   hl, $fa5b                                   ; $6fc5: $21 $5b $fa
	ld   e, a                                        ; $6fc8: $5f
	rst  $38                                         ; $6fc9: $ff
	set  7, a                                        ; $6fca: $cb $ff
	sub  $33                                         ; $6fcc: $d6 $33
	ld   hl, $1211                                   ; $6fce: $21 $11 $12
	ld   de, $df1c                                   ; $6fd1: $11 $1c $df
	ld   l, a                                        ; $6fd4: $6f
	rst  $38                                         ; $6fd5: $ff
	cp   $bf                                         ; $6fd6: $fe $bf
	ei                                               ; $6fd8: $fb
	dec  d                                           ; $6fd9: $15
	ld   hl, sp+$31                                  ; $6fda: $f8 $31
	ld   c, d                                        ; $6fdc: $4a
	cp   c                                           ; $6fdd: $b9
	ld   l, h                                        ; $6fde: $6c
	rst  $38                                         ; $6fdf: $ff
	xor  h                                           ; $6fe0: $ac
	rst  $38                                         ; $6fe1: $ff
	ret                                              ; $6fe2: $c9


	ld   [hl], a                                     ; $6fe3: $77
	ld   b, c                                        ; $6fe4: $41
	ld   de, $3111                                   ; $6fe5: $11 $11 $31
	ld   a, [de]                                     ; $6fe8: $1a
	ld   l, h                                        ; $6fe9: $6c
	sbc  a                                           ; $6fea: $9f
	rst  $38                                         ; $6feb: $ff
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	rst  $38                                         ; $6fee: $ff
	ld   [hl], a                                     ; $6fef: $77
	rst  $30                                         ; $6ff0: $f7
	ld   [hl], $47                                   ; $6ff1: $36 $47
	ld   l, c                                        ; $6ff3: $69
	adc  b                                           ; $6ff4: $88
	rst  $28                                         ; $6ff5: $ef
	cp   h                                           ; $6ff6: $bc
	rst  $38                                         ; $6ff7: $ff
	cp   c                                           ; $6ff8: $b9
	and  [hl]                                        ; $6ff9: $a6
	ld   sp, $1111                                   ; $6ffa: $31 $11 $11
	ld   de, $6811                                   ; $6ffd: $11 $11 $68
	adc  a                                           ; $7000: $8f
	rst  $38                                         ; $7001: $ff
	rst  $38                                         ; $7002: $ff
	rst  $38                                         ; $7003: $ff
	rst  $38                                         ; $7004: $ff
	db   $eb                                         ; $7005: $eb
	jp   z, $3464                                    ; $7006: $ca $64 $34

	adc  b                                           ; $7009: $88
	ld   l, c                                        ; $700a: $69
	db   $dd                                         ; $700b: $dd
	db   $dd                                         ; $700c: $dd
	sbc  $b9                                         ; $700d: $de $b9
	ld   h, e                                        ; $700f: $63
	ld   hl, $1111                                   ; $7010: $21 $11 $11
	ld   de, $6711                                   ; $7013: $11 $11 $67
	ld   a, a                                        ; $7016: $7f
	rst  $38                                         ; $7017: $ff
	rst  $38                                         ; $7018: $ff
	rst  $38                                         ; $7019: $ff
	rst  $38                                         ; $701a: $ff
	rst  $28                                         ; $701b: $ef
	db   $fc                                         ; $701c: $fc
	ld   [hl], l                                     ; $701d: $75
	ld   d, [hl]                                     ; $701e: $56
	halt                                             ; $701f: $76
	ld   a, c                                        ; $7020: $79
	res  7, e                                        ; $7021: $cb $bb
	cp   h                                           ; $7023: $bc
	add  [hl]                                        ; $7024: $86
	ld   h, h                                        ; $7025: $64
	ld   de, $1111                                   ; $7026: $11 $11 $11
	ld   de, $4513                                   ; $7029: $11 $13 $45
	adc  a                                           ; $702c: $8f
	rst  $38                                         ; $702d: $ff
	rst  $38                                         ; $702e: $ff
	rst  $38                                         ; $702f: $ff
	rst  $38                                         ; $7030: $ff
	rst  $38                                         ; $7031: $ff
	ei                                               ; $7032: $fb
	add  [hl]                                        ; $7033: $86
	ld   a, b                                        ; $7034: $78
	ld   h, [hl]                                     ; $7035: $66
	sbc  e                                           ; $7036: $9b
	xor  d                                           ; $7037: $aa
	cp   e                                           ; $7038: $bb
	cp   c                                           ; $7039: $b9
	add  [hl]                                        ; $703a: $86
	ld   h, l                                        ; $703b: $65
	ld   de, $1111                                   ; $703c: $11 $11 $11
	ld   de, $3411                                   ; $703f: $11 $11 $34
	adc  h                                           ; $7042: $8c
	rst  $38                                         ; $7043: $ff
	rst  $38                                         ; $7044: $ff
	rst  $38                                         ; $7045: $ff
	rst  $38                                         ; $7046: $ff
	rst  $38                                         ; $7047: $ff
	db   $fd                                         ; $7048: $fd
	xor  b                                           ; $7049: $a8
	ld   [hl], a                                     ; $704a: $77
	ld   h, [hl]                                     ; $704b: $66
	ld   a, d                                        ; $704c: $7a
	adc  b                                           ; $704d: $88
	xor  h                                           ; $704e: $ac
	and  a                                           ; $704f: $a7
	xor  b                                           ; $7050: $a8
	and  l                                           ; $7051: $a5
	inc  h                                           ; $7052: $24
	ld   de, $1111                                   ; $7053: $11 $11 $11
	ld   de, $4511                                   ; $7056: $11 $11 $45
	ld   a, d                                        ; $7059: $7a
	rst  JumpTable                                         ; $705a: $df
	rst  $38                                         ; $705b: $ff
	rst  $38                                         ; $705c: $ff
	rst  $38                                         ; $705d: $ff
	rst  $38                                         ; $705e: $ff
	db   $fd                                         ; $705f: $fd
	sbc  b                                           ; $7060: $98
	ld   a, b                                        ; $7061: $78
	ld   h, [hl]                                     ; $7062: $66
	ld   a, e                                        ; $7063: $7b
	add  a                                           ; $7064: $87
	xor  d                                           ; $7065: $aa
	xor  d                                           ; $7066: $aa
	adc  d                                           ; $7067: $8a
	add  a                                           ; $7068: $87
	sub  h                                           ; $7069: $94
	ld   b, h                                        ; $706a: $44
	ld   de, $1111                                   ; $706b: $11 $11 $11
	ld   de, $4411                                   ; $706e: $11 $11 $44
	ld   a, c                                        ; $7071: $79
	call c, $ffff                                    ; $7072: $dc $ff $ff
	rst  $38                                         ; $7075: $ff
	db   $fd                                         ; $7076: $fd
	res  1, d                                        ; $7077: $cb $8a
	add  [hl]                                        ; $7079: $86
	and  l                                           ; $707a: $a5
	adc  d                                           ; $707b: $8a
	ld   l, c                                        ; $707c: $69
	xor  d                                           ; $707d: $aa
	sbc  c                                           ; $707e: $99
	sbc  c                                           ; $707f: $99
	ret                                              ; $7080: $c9


	xor  b                                           ; $7081: $a8
	ld   a, d                                        ; $7082: $7a
	inc  [hl]                                        ; $7083: $34
	ld   [hl-], a                                    ; $7084: $32
	ld   hl, $1331                                   ; $7085: $21 $31 $13
	ld   [de], a                                     ; $7088: $12
	inc  [hl]                                        ; $7089: $34
	halt                                             ; $708a: $76
	xor  d                                           ; $708b: $aa
	cp   h                                           ; $708c: $bc
	xor  $dd                                         ; $708d: $ee $dd
	db   $dd                                         ; $708f: $dd
	cp   e                                           ; $7090: $bb
	xor  d                                           ; $7091: $aa
	sbc  d                                           ; $7092: $9a
	sbc  c                                           ; $7093: $99
	adc  d                                           ; $7094: $8a
	cp   c                                           ; $7095: $b9
	xor  d                                           ; $7096: $aa
	xor  h                                           ; $7097: $ac
	cp   e                                           ; $7098: $bb
	cp   h                                           ; $7099: $bc
	and  [hl]                                        ; $709a: $a6
	sub  $4b                                         ; $709b: $d6 $4b
	rla                                              ; $709d: $17
	ld   d, c                                        ; $709e: $51
	ld   b, c                                        ; $709f: $41
	ld   b, d                                        ; $70a0: $42
	inc  d                                           ; $70a1: $14
	ld   [hl+], a                                    ; $70a2: $22
	ld   b, d                                        ; $70a3: $42
	ld   d, [hl]                                     ; $70a4: $56
	ld   h, a                                        ; $70a5: $67
	ld   [hl], a                                     ; $70a6: $77
	xor  d                                           ; $70a7: $aa
	adc  h                                           ; $70a8: $8c
	cp   h                                           ; $70a9: $bc
	jp   c, $dcbc                                    ; $70aa: $da $bc $dc

	adc  h                                           ; $70ad: $8c
	reti                                             ; $70ae: $d9


	jp   z, $9aac                                    ; $70af: $ca $ac $9a

	adc  e                                           ; $70b2: $8b
	xor  c                                           ; $70b3: $a9
	ld   [hl], l                                     ; $70b4: $75
	and  [hl]                                        ; $70b5: $a6
	ld   a, [hl-]                                    ; $70b6: $3a
	add  h                                           ; $70b7: $84
	and  l                                           ; $70b8: $a5
	ld   d, a                                        ; $70b9: $57
	ld   d, [hl]                                     ; $70ba: $56
	ld   d, [hl]                                     ; $70bb: $56
	scf                                              ; $70bc: $37
	ld   h, $62                                      ; $70bd: $26 $62
	sub  c                                           ; $70bf: $91
	ld   h, [hl]                                     ; $70c0: $66
	scf                                              ; $70c1: $37
	ld   b, [hl]                                     ; $70c2: $46
	and  a                                           ; $70c3: $a7
	sbc  c                                           ; $70c4: $99
	adc  e                                           ; $70c5: $8b
	cp   c                                           ; $70c6: $b9
	call $caca                                       ; $70c7: $cd $ca $ca
	cp   e                                           ; $70ca: $bb
	sub  a                                           ; $70cb: $97
	cp   d                                           ; $70cc: $ba
	ld   e, e                                        ; $70cd: $5b
	ld   e, c                                        ; $70ce: $59
	add  h                                           ; $70cf: $84
	push bc                                          ; $70d0: $c5
	xor  b                                           ; $70d1: $a8
	ld   a, b                                        ; $70d2: $78
	adc  c                                           ; $70d3: $89
	ld   a, d                                        ; $70d4: $7a
	ld   [hl], a                                     ; $70d5: $77
	and  [hl]                                        ; $70d6: $a6
	ld   l, d                                        ; $70d7: $6a
	ld   a, c                                        ; $70d8: $79
	ld   h, l                                        ; $70d9: $65
	add  h                                           ; $70da: $84
	ld   [hl], h                                     ; $70db: $74
	ld   c, c                                        ; $70dc: $49
	ld   h, [hl]                                     ; $70dd: $66
	ld   d, l                                        ; $70de: $55
	ld   a, b                                        ; $70df: $78
	ld   b, [hl]                                     ; $70e0: $46
	sub  a                                           ; $70e1: $97
	sub  a                                           ; $70e2: $97
	ld   a, c                                        ; $70e3: $79
	and  a                                           ; $70e4: $a7
	sbc  c                                           ; $70e5: $99
	ld   a, h                                        ; $70e6: $7c
	ld   d, a                                        ; $70e7: $57
	or   a                                           ; $70e8: $b7
	cp   b                                           ; $70e9: $b8
	ld   a, [hl]                                     ; $70ea: $7e
	ld   a, b                                        ; $70eb: $78
	push de                                          ; $70ec: $d5
	cp   [hl]                                        ; $70ed: $be
	ld   e, d                                        ; $70ee: $5a
	or   a                                           ; $70ef: $b7
	cp   c                                           ; $70f0: $b9
	adc  e                                           ; $70f1: $8b
	ld   e, c                                        ; $70f2: $59
	sub  l                                           ; $70f3: $95
	sbc  c                                           ; $70f4: $99
	ld   a, c                                        ; $70f5: $79
	ld   [hl], a                                     ; $70f6: $77
	ld   l, c                                        ; $70f7: $69
	ld   a, d                                        ; $70f8: $7a
	ld   h, [hl]                                     ; $70f9: $66
	or   h                                           ; $70fa: $b4
	sbc  c                                           ; $70fb: $99
	ld   c, d                                        ; $70fc: $4a
	ld   d, h                                        ; $70fd: $54
	add  h                                           ; $70fe: $84
	ld   e, h                                        ; $70ff: $5c
	rla                                              ; $7100: $17
	and  c                                           ; $7101: $a1
	or   a                                           ; $7102: $b7
	ld   c, e                                        ; $7103: $4b
	halt                                             ; $7104: $76
	push bc                                          ; $7105: $c5
	sbc  [hl]                                        ; $7106: $9e
	dec  sp                                          ; $7107: $3b
	and  e                                           ; $7108: $a3
	cp   c                                           ; $7109: $b9
	ld   e, l                                        ; $710a: $5d
	ld   h, [hl]                                     ; $710b: $66
	rst  ToBoot                                         ; $710c: $c7
	ld   a, c                                        ; $710d: $79
	sbc  c                                           ; $710e: $99
	xor  c                                           ; $710f: $a9
	sbc  d                                           ; $7110: $9a
	xor  b                                           ; $7111: $a8
	or   [hl]                                        ; $7112: $b6
	sbc  b                                           ; $7113: $98
	ld   e, c                                        ; $7114: $59
	ld   a, c                                        ; $7115: $79
	ld   e, b                                        ; $7116: $58
	halt                                             ; $7117: $76
	add  a                                           ; $7118: $87
	ld   a, b                                        ; $7119: $78
	or   h                                           ; $711a: $b4
	jp   z, $7669                                    ; $711b: $ca $69 $76

	and  l                                           ; $711e: $a5
	ld   a, d                                        ; $711f: $7a
	inc  a                                           ; $7120: $3c
	ld   d, [hl]                                     ; $7121: $56
	or   e                                           ; $7122: $b3
	sbc  c                                           ; $7123: $99
	ld   l, b                                        ; $7124: $68
	add  $9c                                         ; $7125: $c6 $9c
	ld   l, b                                        ; $7127: $68
	halt                                             ; $7128: $76
	adc  b                                           ; $7129: $88
	ld   e, b                                        ; $712a: $58
	sub  h                                           ; $712b: $94
	call nz, Call_0b0_486d                           ; $712c: $c4 $6d $48
	add  $ab                                         ; $712f: $c6 $ab
	ld   l, e                                        ; $7131: $6b
	ld   [hl], l                                     ; $7132: $75
	add  a                                           ; $7133: $87
	halt                                             ; $7134: $76
	and  [hl]                                        ; $7135: $a6
	ld   a, c                                        ; $7136: $79
	add  [hl]                                        ; $7137: $86
	xor  c                                           ; $7138: $a9
	sbc  c                                           ; $7139: $99
	sbc  h                                           ; $713a: $9c
	sbc  e                                           ; $713b: $9b
	ld   l, e                                        ; $713c: $6b
	ld   [hl], a                                     ; $713d: $77
	sub  h                                           ; $713e: $94
	or   l                                           ; $713f: $b5
	ld   a, d                                        ; $7140: $7a
	ld   [hl], a                                     ; $7141: $77
	sub  [hl]                                        ; $7142: $96
	ld   a, b                                        ; $7143: $78
	ld   a, e                                        ; $7144: $7b
	ld   a, d                                        ; $7145: $7a
	sbc  b                                           ; $7146: $98
	ld   a, d                                        ; $7147: $7a
	ld   b, a                                        ; $7148: $47
	pop  de                                          ; $7149: $d1
	adc  c                                           ; $714a: $89
	ld   c, c                                        ; $714b: $49
	add  h                                           ; $714c: $84
	and  a                                           ; $714d: $a7
	ld   l, e                                        ; $714e: $6b
	ld   l, d                                        ; $714f: $6a
	xor  b                                           ; $7150: $a8
	sbc  b                                           ; $7151: $98
	add  a                                           ; $7152: $87
	ld   l, c                                        ; $7153: $69
	ld   e, b                                        ; $7154: $58
	and  h                                           ; $7155: $a4
	xor  b                                           ; $7156: $a8
	ld   l, c                                        ; $7157: $69
	adc  c                                           ; $7158: $89
	and  a                                           ; $7159: $a7
	rst  $10                                         ; $715a: $d7
	adc  h                                           ; $715b: $8c
	ld   l, c                                        ; $715c: $69
	ld   [hl], a                                     ; $715d: $77
	ld   a, b                                        ; $715e: $78
	add  a                                           ; $715f: $87
	halt                                             ; $7160: $76
	or   l                                           ; $7161: $b5
	ld   a, d                                        ; $7162: $7a
	ld   l, d                                        ; $7163: $6a
	sbc  b                                           ; $7164: $98
	or   a                                           ; $7165: $b7
	sbc  e                                           ; $7166: $9b
	inc  l                                           ; $7167: $2c
	and  c                                           ; $7168: $a1
	rst  ToBoot                                         ; $7169: $c7
	ld   c, l                                        ; $716a: $4d
	ld   h, h                                        ; $716b: $64
	db   $e4                                         ; $716c: $e4
	ld   l, [hl]                                     ; $716d: $6e
	ld   b, a                                        ; $716e: $47
	sub  $9b                                         ; $716f: $d6 $9b
	dec  sp                                          ; $7171: $3b
	add  e                                           ; $7172: $83
	add  $5b                                         ; $7173: $c6 $5b
	halt                                             ; $7175: $76
	push bc                                          ; $7176: $c5
	xor  c                                           ; $7177: $a9
	ld   c, l                                        ; $7178: $4d
	ld   d, a                                        ; $7179: $57
	db   $e4                                         ; $717a: $e4
	sbc  e                                           ; $717b: $9b
	inc  a                                           ; $717c: $3c
	ld   h, l                                        ; $717d: $65
	push bc                                          ; $717e: $c5
	ld   a, h                                        ; $717f: $7c
	ld   d, a                                        ; $7180: $57
	and  [hl]                                        ; $7181: $a6
	sbc  c                                           ; $7182: $99
	ld   l, d                                        ; $7183: $6a
	sbc  b                                           ; $7184: $98
	adc  b                                           ; $7185: $88
	add  a                                           ; $7186: $87
	sub  [hl]                                        ; $7187: $96
	ld   l, h                                        ; $7188: $6c
	halt                                             ; $7189: $76
	sbc  c                                           ; $718a: $99
	ld   a, c                                        ; $718b: $79
	ld   l, c                                        ; $718c: $69
	and  l                                           ; $718d: $a5
	ret  z                                           ; $718e: $c8

	sbc  e                                           ; $718f: $9b
	ld   c, d                                        ; $7190: $4a
	ld   l, b                                        ; $7191: $68

jr_0b0_7192:
	or   l                                           ; $7192: $b5
	adc  d                                           ; $7193: $8a
	ld   l, c                                        ; $7194: $69
	ld   h, a                                        ; $7195: $67
	call nz, Call_0b0_7aa8                           ; $7196: $c4 $a8 $7a
	adc  b                                           ; $7199: $88
	adc  d                                           ; $719a: $8a
	ld   h, a                                        ; $719b: $67
	ld   a, c                                        ; $719c: $79
	add  a                                           ; $719d: $87
	add  l                                           ; $719e: $85
	sub  $2e                                         ; $719f: $d6 $2e
	ld   [hl], e                                     ; $71a1: $73
	ldh  a, [c]                                      ; $71a2: $f2
	ld   l, a                                        ; $71a3: $6f
	inc  e                                           ; $71a4: $1c
	or   c                                           ; $71a5: $b1
	rst  $10                                         ; $71a6: $d7
	dec  l                                           ; $71a7: $2d
	and  e                                           ; $71a8: $a3
	sbc  d                                           ; $71a9: $9a
	ld   a, b                                        ; $71aa: $78
	sub  [hl]                                        ; $71ab: $96
	or   a                                           ; $71ac: $b7
	sbc  c                                           ; $71ad: $99
	ld   e, l                                        ; $71ae: $5d
	ld   l, c                                        ; $71af: $69
	sub  [hl]                                        ; $71b0: $96
	ld   [hl], a                                     ; $71b1: $77
	add  l                                           ; $71b2: $85
	and  a                                           ; $71b3: $a7
	ld   l, d                                        ; $71b4: $6a
	sub  [hl]                                        ; $71b5: $96
	sbc  c                                           ; $71b6: $99
	ld   a, d                                        ; $71b7: $7a
	ld   e, d                                        ; $71b8: $5a
	and  l                                           ; $71b9: $a5
	and  a                                           ; $71ba: $a7
	ld   a, c                                        ; $71bb: $79
	ld   h, [hl]                                     ; $71bc: $66
	or   l                                           ; $71bd: $b5
	ld   a, [hl]                                     ; $71be: $7e
	jr   z, jr_0b0_7192                              ; $71bf: $28 $d1

	cp   [hl]                                        ; $71c1: $be
	inc  e                                           ; $71c2: $1c
	pop  de                                          ; $71c3: $d1
	ret  z                                           ; $71c4: $c8

	ld   l, h                                        ; $71c5: $6c
	ld   [hl], a                                     ; $71c6: $77
	sbc  c                                           ; $71c7: $99
	ld   d, [hl]                                     ; $71c8: $56
	or   a                                           ; $71c9: $b7
	adc  b                                           ; $71ca: $88
	ld   a, c                                        ; $71cb: $79
	add  a                                           ; $71cc: $87
	ld   a, c                                        ; $71cd: $79
	sbc  b                                           ; $71ce: $98
	ld   a, c                                        ; $71cf: $79
	ld   l, c                                        ; $71d0: $69
	add  l                                           ; $71d1: $85
	sbc  b                                           ; $71d2: $98
	adc  b                                           ; $71d3: $88
	ld   [hl], l                                     ; $71d4: $75
	sbc  d                                           ; $71d5: $9a
	ld   h, a                                        ; $71d6: $67
	sbc  b                                           ; $71d7: $98
	and  l                                           ; $71d8: $a5
	ld   a, h                                        ; $71d9: $7c
	ld   a, b                                        ; $71da: $78
	and  [hl]                                        ; $71db: $a6
	ld   a, e                                        ; $71dc: $7b
	ld   d, a                                        ; $71dd: $57
	sbc  b                                           ; $71de: $98
	ld   [hl], a                                     ; $71df: $77
	adc  b                                           ; $71e0: $88
	and  d                                           ; $71e1: $a2
	xor  e                                           ; $71e2: $ab
	ld   d, a                                        ; $71e3: $57
	xor  b                                           ; $71e4: $a8
	ld   a, c                                        ; $71e5: $79
	adc  c                                           ; $71e6: $89
	xor  b                                           ; $71e7: $a8
	ld   e, $94                                      ; $71e8: $1e $94
	push bc                                          ; $71ea: $c5
	ld   l, e                                        ; $71eb: $6b
	ld   h, [hl]                                     ; $71ec: $66
	sub  a                                           ; $71ed: $97
	jp   Jump_0b0_699c                               ; $71ee: $c3 $9c $69


	sub  [hl]                                        ; $71f1: $96
	adc  l                                           ; $71f2: $8d
	ld   b, a                                        ; $71f3: $47
	sub  a                                           ; $71f4: $97
	sbc  d                                           ; $71f5: $9a
	ld   h, h                                        ; $71f6: $64
	xor  b                                           ; $71f7: $a8
	ld   h, a                                        ; $71f8: $67
	ld   a, b                                        ; $71f9: $78
	and  h                                           ; $71fa: $a4
	sbc  c                                           ; $71fb: $99
	adc  d                                           ; $71fc: $8a
	ld   c, d                                        ; $71fd: $4a
	or   [hl]                                        ; $71fe: $b6
	ld   a, b                                        ; $71ff: $78
	adc  d                                           ; $7200: $8a
	add  l                                           ; $7201: $85
	ld   a, d                                        ; $7202: $7a
	add  [hl]                                        ; $7203: $86
	add  a                                           ; $7204: $87
	xor  b                                           ; $7205: $a8
	ld   e, d                                        ; $7206: $5a
	ld   a, e                                        ; $7207: $7b
	ld   [hl], c                                     ; $7208: $71
	call c, Call_0b0_633b                            ; $7209: $dc $3b $63
	jp   hl                                          ; $720c: $e9


	ld   c, d                                        ; $720d: $4a
	ld   d, [hl]                                     ; $720e: $56
	sub  $5a                                         ; $720f: $d6 $5a
	ld   e, d                                        ; $7211: $5a
	jp   nz, Jump_0b0_677d                           ; $7212: $c2 $7d $67

	sub  [hl]                                        ; $7215: $96
	sbc  b                                           ; $7216: $98
	ld   a, b                                        ; $7217: $78
	ld   a, b                                        ; $7218: $78
	sbc  b                                           ; $7219: $98
	ld   [hl], a                                     ; $721a: $77
	ld   a, d                                        ; $721b: $7a
	sub  [hl]                                        ; $721c: $96
	ld   a, c                                        ; $721d: $79
	adc  c                                           ; $721e: $89
	ld   [hl], l                                     ; $721f: $75
	xor  d                                           ; $7220: $aa
	ld   a, b                                        ; $7221: $78
	add  a                                           ; $7222: $87
	xor  c                                           ; $7223: $a9
	ld   a, d                                        ; $7224: $7a
	sub  [hl]                                        ; $7225: $96
	sbc  b                                           ; $7226: $98
	ld   a, d                                        ; $7227: $7a
	halt                                             ; $7228: $76
	sub  a                                           ; $7229: $97
	ld   a, c                                        ; $722a: $79
	ld   a, c                                        ; $722b: $79
	and  a                                           ; $722c: $a7
	ld   l, d                                        ; $722d: $6a
	and  a                                           ; $722e: $a7
	ld   a, b                                        ; $722f: $78
	adc  c                                           ; $7230: $89
	ld   l, b                                        ; $7231: $68
	cp   e                                           ; $7232: $bb
	ld   [hl], l                                     ; $7233: $75
	ld   a, d                                        ; $7234: $7a
	cp   b                                           ; $7235: $b8
	ld   [hl], a                                     ; $7236: $77
	adc  c                                           ; $7237: $89
	adc  b                                           ; $7238: $88
	adc  b                                           ; $7239: $88
	adc  c                                           ; $723a: $89
	adc  b                                           ; $723b: $88
	sbc  b                                           ; $723c: $98
	sbc  b                                           ; $723d: $98
	adc  b                                           ; $723e: $88
	sbc  b                                           ; $723f: $98
	ld   [hl], a                                     ; $7240: $77
	adc  c                                           ; $7241: $89
	adc  b                                           ; $7242: $88
	adc  b                                           ; $7243: $88
	adc  b                                           ; $7244: $88
	adc  b                                           ; $7245: $88
	adc  b                                           ; $7246: $88
	ld   a, c                                        ; $7247: $79
	adc  b                                           ; $7248: $88
	add  a                                           ; $7249: $87
	adc  b                                           ; $724a: $88
	adc  c                                           ; $724b: $89
	adc  b                                           ; $724c: $88
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	sbc  b                                           ; $724f: $98
	adc  b                                           ; $7250: $88
	adc  c                                           ; $7251: $89
	sub  a                                           ; $7252: $97
	ld   a, b                                        ; $7253: $78
	adc  b                                           ; $7254: $88
	sub  a                                           ; $7255: $97
	ld   a, c                                        ; $7256: $79
	adc  b                                           ; $7257: $88
	add  a                                           ; $7258: $87
	sbc  b                                           ; $7259: $98
	add  a                                           ; $725a: $87
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	ld   a, b                                        ; $725d: $78
	adc  c                                           ; $725e: $89
	add  a                                           ; $725f: $87
	adc  c                                           ; $7260: $89
	sbc  c                                           ; $7261: $99
	ld   a, b                                        ; $7262: $78
	adc  b                                           ; $7263: $88
	add  a                                           ; $7264: $87
	adc  b                                           ; $7265: $88
	adc  b                                           ; $7266: $88
	ld   a, b                                        ; $7267: $78
	sbc  b                                           ; $7268: $98
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
	add  a                                           ; $7285: $87
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
	sub  a                                           ; $7325: $97
	ld   [hl], a                                     ; $7326: $77
	adc  b                                           ; $7327: $88
	sbc  c                                           ; $7328: $99
	add  a                                           ; $7329: $87
	adc  c                                           ; $732a: $89
	adc  b                                           ; $732b: $88
	adc  c                                           ; $732c: $89
	adc  b                                           ; $732d: $88
	ld   [hl], a                                     ; $732e: $77
	adc  b                                           ; $732f: $88
	sbc  d                                           ; $7330: $9a
	sbc  b                                           ; $7331: $98
	ld   [hl], a                                     ; $7332: $77
	ld   a, b                                        ; $7333: $78
	sbc  c                                           ; $7334: $99
	add  a                                           ; $7335: $87
	ld   [hl], a                                     ; $7336: $77
	ld   a, b                                        ; $7337: $78
	add  a                                           ; $7338: $87
	ld   [hl], a                                     ; $7339: $77
	sbc  d                                           ; $733a: $9a
	adc  b                                           ; $733b: $88
	halt                                             ; $733c: $76
	adc  c                                           ; $733d: $89
	sbc  c                                           ; $733e: $99
	halt                                             ; $733f: $76
	ld   a, c                                        ; $7340: $79
	sbc  d                                           ; $7341: $9a
	sbc  b                                           ; $7342: $98
	halt                                             ; $7343: $76
	ld   a, c                                        ; $7344: $79
	sbc  c                                           ; $7345: $99
	sbc  c                                           ; $7346: $99
	ld   [hl], a                                     ; $7347: $77
	ld   h, a                                        ; $7348: $67
	sbc  d                                           ; $7349: $9a
	sub  a                                           ; $734a: $97
	ld   h, [hl]                                     ; $734b: $66
	adc  c                                           ; $734c: $89
	sub  a                                           ; $734d: $97
	halt                                             ; $734e: $76
	ld   a, h                                        ; $734f: $7c
	call c, Call_0b0_5963                            ; $7350: $dc $63 $59
	jp   z, $3753                                    ; $7353: $ca $53 $37

	cp   h                                           ; $7356: $bc
	sub  [hl]                                        ; $7357: $96
	ld   d, [hl]                                     ; $7358: $56
	adc  c                                           ; $7359: $89
	sbc  b                                           ; $735a: $98
	ld   a, b                                        ; $735b: $78
	sbc  c                                           ; $735c: $99
	ld   [hl], l                                     ; $735d: $75
	ld   a, e                                        ; $735e: $7b
	db   $db                                         ; $735f: $db
	ld   h, e                                        ; $7360: $63
	scf                                              ; $7361: $37
	cp   l                                           ; $7362: $bd
	or   a                                           ; $7363: $b7
	inc  sp                                          ; $7364: $33
	ld   a, h                                        ; $7365: $7c
	jp   c, Jump_0b0_4863                            ; $7366: $da $63 $48

	call Call_0b0_5695                               ; $7369: $cd $95 $56
	sbc  e                                           ; $736c: $9b
	sbc  b                                           ; $736d: $98
	ld   h, [hl]                                     ; $736e: $66
	adc  c                                           ; $736f: $89
	sbc  b                                           ; $7370: $98
	ld   [hl], a                                     ; $7371: $77
	adc  c                                           ; $7372: $89
	adc  b                                           ; $7373: $88
	adc  b                                           ; $7374: $88
	adc  b                                           ; $7375: $88
	sbc  b                                           ; $7376: $98
	ld   [hl], a                                     ; $7377: $77
	ld   h, a                                        ; $7378: $67
	ld   a, b                                        ; $7379: $78
	cp   d                                           ; $737a: $ba
	cp   b                                           ; $737b: $b8
	ld   h, a                                        ; $737c: $67
	sbc  d                                           ; $737d: $9a
	adc  b                                           ; $737e: $88
	ld   h, [hl]                                     ; $737f: $66
	ld   a, b                                        ; $7380: $78
	add  a                                           ; $7381: $87
	ld   a, b                                        ; $7382: $78
	sbc  d                                           ; $7383: $9a
	sub  a                                           ; $7384: $97
	ld   h, [hl]                                     ; $7385: $66
	sbc  d                                           ; $7386: $9a
	xor  b                                           ; $7387: $a8
	ld   b, e                                        ; $7388: $43
	ld   l, e                                        ; $7389: $6b
	res  0, [hl]                                     ; $738a: $cb $86
	ld   a, c                                        ; $738c: $79
	cp   d                                           ; $738d: $ba
	sub  a                                           ; $738e: $97
	ld   h, a                                        ; $738f: $67
	adc  b                                           ; $7390: $88
	halt                                             ; $7391: $76
	ld   h, [hl]                                     ; $7392: $66
	ld   a, b                                        ; $7393: $78
	adc  b                                           ; $7394: $88
	ld   [hl], a                                     ; $7395: $77
	sbc  c                                           ; $7396: $99
	sbc  d                                           ; $7397: $9a
	sbc  d                                           ; $7398: $9a
	sbc  c                                           ; $7399: $99
	sub  a                                           ; $739a: $97
	ld   [hl], a                                     ; $739b: $77
	halt                                             ; $739c: $76
	ld   h, [hl]                                     ; $739d: $66
	ld   l, b                                        ; $739e: $68
	adc  b                                           ; $739f: $88
	sbc  c                                           ; $73a0: $99
	xor  c                                           ; $73a1: $a9
	adc  b                                           ; $73a2: $88
	adc  d                                           ; $73a3: $8a
	add  a                                           ; $73a4: $87
	ld   h, l                                        ; $73a5: $65
	ld   d, a                                        ; $73a6: $57
	adc  c                                           ; $73a7: $89
	add  a                                           ; $73a8: $87
	ld   a, b                                        ; $73a9: $78
	sbc  d                                           ; $73aa: $9a
	xor  b                                           ; $73ab: $a8
	sbc  b                                           ; $73ac: $98
	sbc  d                                           ; $73ad: $9a
	xor  c                                           ; $73ae: $a9
	adc  b                                           ; $73af: $88
	ld   a, c                                        ; $73b0: $79
	adc  b                                           ; $73b1: $88
	halt                                             ; $73b2: $76
	ld   h, a                                        ; $73b3: $67
	ld   a, b                                        ; $73b4: $78
	sub  a                                           ; $73b5: $97
	ld   h, a                                        ; $73b6: $67
	ld   [hl], a                                     ; $73b7: $77
	halt                                             ; $73b8: $76
	ld   h, [hl]                                     ; $73b9: $66
	ld   h, [hl]                                     ; $73ba: $66
	ld   d, [hl]                                     ; $73bb: $56
	ld   a, c                                        ; $73bc: $79
	add  a                                           ; $73bd: $87
	adc  c                                           ; $73be: $89
	sbc  e                                           ; $73bf: $9b
	cp   e                                           ; $73c0: $bb
	cp   e                                           ; $73c1: $bb
	cp   e                                           ; $73c2: $bb
	res  5, d                                        ; $73c3: $cb $aa
	xor  d                                           ; $73c5: $aa
	xor  c                                           ; $73c6: $a9
	sbc  c                                           ; $73c7: $99
	halt                                             ; $73c8: $76
	ld   h, e                                        ; $73c9: $63
	inc  h                                           ; $73ca: $24
	inc  sp                                          ; $73cb: $33
	ld   sp, $4623                                   ; $73cc: $31 $23 $46
	ld   a, b                                        ; $73cf: $78
	adc  b                                           ; $73d0: $88
	xor  e                                           ; $73d1: $ab
	call $cccc                                       ; $73d2: $cd $cc $cc
	call $cbcc                                       ; $73d5: $cd $cc $cb
	cp   e                                           ; $73d8: $bb
	xor  c                                           ; $73d9: $a9
	sbc  c                                           ; $73da: $99
	ld   [hl], l                                     ; $73db: $75
	inc  sp                                          ; $73dc: $33
	ld   [hl+], a                                    ; $73dd: $22
	ld   [hl-], a                                    ; $73de: $32
	ld   de, $4602                                   ; $73df: $11 $02 $46
	ld   h, a                                        ; $73e2: $67
	adc  c                                           ; $73e3: $89
	cp   h                                           ; $73e4: $bc
	sbc  $dd                                         ; $73e5: $de $dd
	sbc  $ed                                         ; $73e7: $de $ed
	xor  $dd                                         ; $73e9: $ee $dd
	cp   h                                           ; $73eb: $bc
	sbc  c                                           ; $73ec: $99
	add  a                                           ; $73ed: $87
	ld   d, d                                        ; $73ee: $52
	ld   de, $1112                                   ; $73ef: $11 $12 $11
	ld   de, $6733                                   ; $73f2: $11 $33 $67
	adc  d                                           ; $73f5: $8a
	xor  l                                           ; $73f6: $ad
	sbc  $fe                                         ; $73f7: $de $fe
	rst  $38                                         ; $73f9: $ff
	rst  $28                                         ; $73fa: $ef
	xor  $dd                                         ; $73fb: $ee $dd
	res  5, b                                        ; $73fd: $cb $a8
	ld   h, l                                        ; $73ff: $65
	ld   hl, $2111                                   ; $7400: $21 $11 $21
	ld   de, $1512                                   ; $7403: $11 $12 $15
	adc  c                                           ; $7406: $89
	xor  c                                           ; $7407: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7408: $cf
	rst  $38                                         ; $7409: $ff
	rst  $38                                         ; $740a: $ff
	rst  $38                                         ; $740b: $ff
	rst  $38                                         ; $740c: $ff
	cp   $bb                                         ; $740d: $fe $bb
	sbc  b                                           ; $740f: $98
	add  l                                           ; $7410: $85
	ld   hl, $1111                                   ; $7411: $21 $11 $11
	ld   de, $3311                                   ; $7414: $11 $11 $33
	ld   l, e                                        ; $7417: $6b
	sbc  h                                           ; $7418: $9c
	sbc  $ff                                         ; $7419: $de $ff
	rst  $38                                         ; $741b: $ff
	rst  $38                                         ; $741c: $ff
	rst  $28                                         ; $741d: $ef
	db   $fd                                         ; $741e: $fd
	jp   z, Jump_0b0_7899                            ; $741f: $ca $99 $78

	ld   d, c                                        ; $7422: $51
	ld   de, $1111                                   ; $7423: $11 $11 $11
	ld   de, $1b13                                   ; $7426: $11 $13 $1b
	ei                                               ; $7429: $fb
	db   $eb                                         ; $742a: $eb
	rst  $38                                         ; $742b: $ff
	rst  $38                                         ; $742c: $ff
	rst  $38                                         ; $742d: $ff
	ei                                               ; $742e: $fb
	rst  $38                                         ; $742f: $ff
	call z, Call_0b0_7577                            ; $7430: $cc $77 $75
	ld   [hl], e                                     ; $7433: $73
	ld   de, $1111                                   ; $7434: $11 $11 $11
	ld   de, $1611                                   ; $7437: $11 $11 $16
	cp   $ff                                         ; $743a: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $743c: $cf
	rst  $38                                         ; $743d: $ff
	rst  $38                                         ; $743e: $ff
	db   $fd                                         ; $743f: $fd
	cp   a                                           ; $7440: $bf
	call z, $7494                                    ; $7441: $cc $94 $74
	ld   [hl], a                                     ; $7444: $77
	ld   de, $2111                                   ; $7445: $11 $11 $21
	ld   de, $3411                                   ; $7448: $11 $11 $34
	rst  $38                                         ; $744b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $744c: $cf
	cp   a                                           ; $744d: $bf
	rst  $38                                         ; $744e: $ff
	rst  $38                                         ; $744f: $ff
	rst  $38                                         ; $7450: $ff
	xor  a                                           ; $7451: $af
	jp   hl                                          ; $7452: $e9


	sub  d                                           ; $7453: $92
	ld   [hl], l                                     ; $7454: $75
	ld   l, d                                        ; $7455: $6a
	ld   de, $1511                                   ; $7456: $11 $11 $15
	ld   de, $3211                                   ; $7459: $11 $11 $32

jr_0b0_745c:
	rst  $28                                         ; $745c: $ef
	xor  [hl]                                        ; $745d: $ae
	cp   a                                           ; $745e: $bf
	rst  $38                                         ; $745f: $ff
	rst  $38                                         ; $7460: $ff
	xor  a                                           ; $7461: $af
	cp   a                                           ; $7462: $bf
	or   $72                                         ; $7463: $f6 $72
	dec  sp                                          ; $7465: $3b
	ld   l, c                                        ; $7466: $69
	ld   h, c                                        ; $7467: $61
	ld   de, $5114                                   ; $7468: $11 $14 $51
	ld   de, $5f1a                                   ; $746b: $11 $1a $5f
	or   $fc                                         ; $746e: $f6 $fc
	rst  $38                                         ; $7470: $ff
	rst  $38                                         ; $7471: $ff
	ld   sp, hl                                      ; $7472: $f9
	ld   a, [$16ff]                                  ; $7473: $fa $ff $16
	jr   z, jr_0b0_745c                              ; $7476: $28 $e4

	add  c                                           ; $7478: $81
	ld   de, $7111                                   ; $7479: $11 $11 $71
	ld   de, $a417                                   ; $747c: $11 $17 $a4
	ld   hl, sp-$51                                  ; $747f: $f8 $af
	rst  $28                                         ; $7481: $ef
	ei                                               ; $7482: $fb
	ld   a, [$7fff]                                  ; $7483: $fa $ff $7f
	ld   hl, $e8a5                                   ; $7486: $21 $a5 $e8
	jr   jr_0b0_749c                                 ; $7489: $18 $11

	ld   de, $1146                                   ; $748b: $11 $46 $11
	ld   de, $eff1                                   ; $748e: $11 $f1 $ef
	rra                                              ; $7491: $1f
	rst  $38                                         ; $7492: $ff
	ld   hl, sp-$01                                  ; $7493: $f8 $ff
	ld   a, a                                        ; $7495: $7f
	adc  d                                           ; $7496: $8a
	pop  hl                                          ; $7497: $e1
	adc  d                                           ; $7498: $8a
	ld   a, [hl]                                     ; $7499: $7e
	inc  d                                           ; $749a: $14
	add  c                                           ; $749b: $81

jr_0b0_749c:
	ld   hl, $111c                                   ; $749c: $21 $1c $11
	ld   de, $4fd9                                   ; $749f: $11 $d9 $4f
	ld   e, l                                        ; $74a2: $5d
	cp   $ff                                         ; $74a3: $fe $ff
	adc  a                                           ; $74a5: $8f
	sbc  a                                           ; $74a6: $9f
	di                                               ; $74a7: $f3
	pop  hl                                          ; $74a8: $e1
	rra                                              ; $74a9: $1f
	ld   a, h                                        ; $74aa: $7c
	ld   b, c                                        ; $74ab: $41
	and  e                                           ; $74ac: $a3
	ld   de, $511a                                   ; $74ad: $11 $1a $51
	ld   de, $1f6f                                   ; $74b0: $11 $6f $1f
	or   l                                           ; $74b3: $b5
	db   $fd                                         ; $74b4: $fd
	rst  $38                                         ; $74b5: $ff
	rra                                              ; $74b6: $1f
	adc  $f1                                         ; $74b7: $ce $f1
	jp   nz, $a91f                                   ; $74b9: $c2 $1f $a9

	ld   h, c                                        ; $74bc: $61
	jp   z, $1211                                    ; $74bd: $ca $11 $12

	pop  af                                          ; $74c0: $f1
	ld   de, $1f1f                                   ; $74c1: $11 $1f $1f
	pop  af                                          ; $74c4: $f1
	rst  $38                                         ; $74c5: $ff
	rst  $38                                         ; $74c6: $ff
	dec  l                                           ; $74c7: $2d
	or   $f7                                         ; $74c8: $f6 $f7
	add  hl, de                                      ; $74ca: $19
	add  hl, de                                      ; $74cb: $19
	db   $f4                                         ; $74cc: $f4
	sub  c                                           ; $74cd: $91
	ld   l, a                                        ; $74ce: $6f
	ld   hl, $f211                                   ; $74cf: $21 $11 $f2
	ld   de, $f21f                                   ; $74d2: $11 $1f $f2
	ldh  a, [c]                                      ; $74d5: $f2
	sbc  a                                           ; $74d6: $9f
	rst  $38                                         ; $74d7: $ff
	pop  af                                          ; $74d8: $f1
	cp   $ff                                         ; $74d9: $fe $ff
	dec  d                                           ; $74db: $15
	ld   de, $14f8                                   ; $74dc: $11 $f8 $14
	cpl                                              ; $74df: $2f
	pop  hl                                          ; $74e0: $e1
	ld   de, $119f                                   ; $74e1: $11 $9f $11
	ld   de, $dff4                                   ; $74e4: $11 $f4 $df
	rra                                              ; $74e7: $1f
	rst  $38                                         ; $74e8: $ff
	pop  af                                          ; $74e9: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74ea: $cf
	rst  JumpTable                                         ; $74eb: $df
	ld   de, $df81                                   ; $74ec: $11 $81 $df
	ld   [de], a                                     ; $74ef: $12
	ld   e, a                                        ; $74f0: $5f
	pop  af                                          ; $74f1: $f1
	ld   de, $b11f                                   ; $74f2: $11 $1f $b1
	ld   de, $1fff                                   ; $74f5: $11 $ff $1f
	ld   a, [hl+]                                    ; $74f8: $2a
	rst  $38                                         ; $74f9: $ff
	cp   $1f                                         ; $74fa: $fe $1f
	cp   $91                                         ; $74fc: $fe $91
	dec  de                                          ; $74fe: $1b
	ccf                                              ; $74ff: $3f
	ld   sp, $ff8e                                   ; $7500: $31 $8e $ff
	ld   de, $f115                                   ; $7503: $11 $15 $f1
	ld   de, $e11f                                   ; $7506: $11 $1f $e1
	ldh  a, [c]                                      ; $7509: $f2
	rst  $38                                         ; $750a: $ff
	rst  $28                                         ; $750b: $ef
	inc  [hl]                                        ; $750c: $34
	rst  $38                                         ; $750d: $ff
	add  c                                           ; $750e: $81
	ld   e, $a2                                      ; $750f: $1e $a2
	sub  c                                           ; $7511: $91
	rra                                              ; $7512: $1f
	rst  $38                                         ; $7513: $ff
	ld   hl, rAUD1LEN                                   ; $7514: $21 $11 $ff
	ld   de, $f11a                                   ; $7517: $11 $1a $f1
	rra                                              ; $751a: $1f
	sbc  a                                           ; $751b: $9f
	ld   a, [$fff1]                                  ; $751c: $fa $f1 $ff
	ld   b, d                                        ; $751f: $42
	ld   de, $14f1                                   ; $7520: $11 $f1 $14
	ld   e, $ff                                      ; $7523: $1e $ff
	pop  af                                          ; $7525: $f1
	rla                                              ; $7526: $17
	dec  d                                           ; $7527: $15
	pop  af                                          ; $7528: $f1
	ld   de, $111f                                   ; $7529: $11 $1f $11
	ei                                               ; $752c: $fb
	rst  $38                                         ; $752d: $ff
	ld   l, a                                        ; $752e: $6f
	ld   a, a                                        ; $752f: $7f
	di                                               ; $7530: $f3
	ld   d, c                                        ; $7531: $51
	rra                                              ; $7532: $1f
	ld   de, $bf91                                   ; $7533: $11 $91 $bf
	cp   a                                           ; $7536: $bf
	ld   hl, rAUD1LEN                                   ; $7537: $21 $11 $ff
	ld   de, $f11f                                   ; $753a: $11 $1f $f1
	ld   e, a                                        ; $753d: $5f
	rst  $28                                         ; $753e: $ef
	db   $fd                                         ; $753f: $fd
	pop  af                                          ; $7540: $f1
	rst  $38                                         ; $7541: $ff
	ld   [de], a                                     ; $7542: $12
	inc  d                                           ; $7543: $14
	pop  af                                          ; $7544: $f1
	ld   h, $2f                                      ; $7545: $26 $2f
	rst  $38                                         ; $7547: $ff
	pop  hl                                          ; $7548: $e1
	ld   de, $411f                                   ; $7549: $11 $1f $41
	ld   de, $1fff                                   ; $754c: $11 $ff $1f
	rst  $38                                         ; $754f: $ff
	ld   sp, hl                                      ; $7550: $f9
	rst  $38                                         ; $7551: $ff
	rra                                              ; $7552: $1f
	pop  af                                          ; $7553: $f1
	ld   b, c                                        ; $7554: $41
	xor  [hl]                                        ; $7555: $ae
	inc  de                                          ; $7556: $13
	ld   d, l                                        ; $7557: $55
	db   $fd                                         ; $7558: $fd
	rst  $38                                         ; $7559: $ff
	ld   [de], a                                     ; $755a: $12
	ld   de, $11f1                                   ; $755b: $11 $f1 $11
	rra                                              ; $755e: $1f
	pop  af                                          ; $755f: $f1
	rst  $38                                         ; $7560: $ff
	rst  $38                                         ; $7561: $ff
	ld   l, a                                        ; $7562: $6f
	pop  af                                          ; $7563: $f1
	rst  $38                                         ; $7564: $ff
	inc  d                                           ; $7565: $14
	dec  e                                           ; $7566: $1d
	sub  c                                           ; $7567: $91
	ld   [hl], h                                     ; $7568: $74
	ld   l, a                                        ; $7569: $6f
	rst  JumpTable                                         ; $756a: $df
	pop  bc                                          ; $756b: $c1
	ld   b, c                                        ; $756c: $41
	rra                                              ; $756d: $1f
	ld   de, rAUD1LEN                                   ; $756e: $11 $11 $ff
	rra                                              ; $7571: $1f
	rst  $38                                         ; $7572: $ff
	ldh  a, [c]                                      ; $7573: $f2
	rst  $38                                         ; $7574: $ff
	ld   l, a                                        ; $7575: $6f
	sub  c                                           ; $7576: $91

Call_0b0_7577:
	ld   de, $14f6                                   ; $7577: $11 $f6 $14
	dec  a                                           ; $757a: $3d
	ei                                               ; $757b: $fb
	db   $fd                                         ; $757c: $fd
	ld   a, [hl-]                                    ; $757d: $3a
	ld   de, $11f1                                   ; $757e: $11 $f1 $11
	rra                                              ; $7581: $1f
	pop  af                                          ; $7582: $f1
	rst  $38                                         ; $7583: $ff
	rst  $38                                         ; $7584: $ff
	ld   a, a                                        ; $7585: $7f
	ldh  a, [c]                                      ; $7586: $f2
	rst  $38                                         ; $7587: $ff
	inc  b                                           ; $7588: $04
	rra                                              ; $7589: $1f
	add  c                                           ; $758a: $81
	ld   b, d                                        ; $758b: $42
	sbc  a                                           ; $758c: $9f
	sbc  a                                           ; $758d: $9f
	ldh  a, [c]                                      ; $758e: $f2
	ld   [hl], c                                     ; $758f: $71
	rra                                              ; $7590: $1f
	pop  bc                                          ; $7591: $c1
	ld   de, $14ff                                   ; $7592: $11 $ff $14
	rst  $38                                         ; $7595: $ff
	ei                                               ; $7596: $fb
	rst  JumpTable                                         ; $7597: $df
	rra                                              ; $7598: $1f
	pop  af                                          ; $7599: $f1
	ld   h, c                                        ; $759a: $61
	sbc  a                                           ; $759b: $9f
	ld   de, $fa48                                   ; $759c: $11 $48 $fa
	rst  $38                                         ; $759f: $ff
	ld   c, c                                        ; $75a0: $49
	ld   de, $112f                                   ; $75a1: $11 $2f $11
	ld   de, $1ff1                                   ; $75a4: $11 $f1 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75a7: $cf
	rst  $30                                         ; $75a8: $f7
	ld   sp, hl                                      ; $75a9: $f9
	rst  $38                                         ; $75aa: $ff
	ld   h, $11                                      ; $75ab: $26 $11
	pop  af                                          ; $75ad: $f1
	ld   [de], a                                     ; $75ae: $12
	ccf                                              ; $75af: $3f
	db   $dd                                         ; $75b0: $dd
	rst  $30                                         ; $75b1: $f7
	ld   [hl], h                                     ; $75b2: $74
	ld   de, $11f1                                   ; $75b3: $11 $f1 $11
	rra                                              ; $75b6: $1f
	pop  af                                          ; $75b7: $f1
	db   $fd                                         ; $75b8: $fd
	rst  $38                                         ; $75b9: $ff
	ld   l, a                                        ; $75ba: $6f
	push af                                          ; $75bb: $f5
	ld   a, [$1f32]                                  ; $75bc: $fa $32 $1f
	ld   b, c                                        ; $75bf: $41
	ld   d, c                                        ; $75c0: $51
	rst  JumpTable                                         ; $75c1: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75c2: $cf
	ret  z                                           ; $75c3: $c8

	and  c                                           ; $75c4: $a1
	inc  de                                          ; $75c5: $13
	pop  af                                          ; $75c6: $f1
	ld   de, $110f                                   ; $75c7: $11 $0f $11
	db   $fc                                         ; $75ca: $fc
	rst  $38                                         ; $75cb: $ff
	rst  JumpTable                                         ; $75cc: $df
	ld   e, a                                        ; $75cd: $5f
	di                                               ; $75ce: $f3
	ld   h, c                                        ; $75cf: $61
	rra                                              ; $75d0: $1f
	ld   de, $fd14                                   ; $75d1: $11 $14 $fd
	rst  $38                                         ; $75d4: $ff
	adc  $d1                                         ; $75d5: $ce $d1
	ld   de, $11f1                                   ; $75d7: $11 $f1 $11
	rra                                              ; $75da: $1f
	add  c                                           ; $75db: $81
	db   $fc                                         ; $75dc: $fc
	rst  $38                                         ; $75dd: $ff
	rst  $38                                         ; $75de: $ff
	sbc  a                                           ; $75df: $9f
	rst  $38                                         ; $75e0: $ff
	ld   h, c                                        ; $75e1: $61
	rra                                              ; $75e2: $1f
	ld   de, $ec11                                   ; $75e3: $11 $11 $ec
	rst  $38                                         ; $75e6: $ff
	ld   a, b                                        ; $75e7: $78
	add  c                                           ; $75e8: $81
	ld   de, $11f1                                   ; $75e9: $11 $f1 $11
	rra                                              ; $75ec: $1f
	ld   de, $fffd                                   ; $75ed: $11 $fd $ff
	rst  $38                                         ; $75f0: $ff
	ld   a, a                                        ; $75f1: $7f
	ld   hl, sp+$51                                  ; $75f2: $f8 $51
	rra                                              ; $75f4: $1f
	ld   de, $fd17                                   ; $75f5: $11 $17 $fd
	rst  $38                                         ; $75f8: $ff
	db   $dd                                         ; $75f9: $dd
	or   c                                           ; $75fa: $b1
	ld   de, $11f5                                   ; $75fb: $11 $f5 $11
	rra                                              ; $75fe: $1f
	pop  af                                          ; $75ff: $f1
	rst  $28                                         ; $7600: $ef
	rst  $38                                         ; $7601: $ff
	rst  $38                                         ; $7602: $ff
	ld   hl, sp-$01                                  ; $7603: $f8 $ff
	ld   d, c                                        ; $7605: $51
	rra                                              ; $7606: $1f
	ld   h, c                                        ; $7607: $61
	ld   de, $efcf                                   ; $7608: $11 $cf $ef
	rst  ToBoot                                         ; $760b: $c7
	and  $11                                         ; $760c: $e6 $11
	xor  d                                           ; $760e: $aa
	ld   de, $f11f                                   ; $760f: $11 $1f $f1
	cp   [hl]                                        ; $7612: $be
	rst  $38                                         ; $7613: $ff
	rst  $38                                         ; $7614: $ff
	ld   hl, sp-$01                                  ; $7615: $f8 $ff
	pop  bc                                          ; $7617: $c1
	add  hl, de                                      ; $7618: $19
	ld   d, c                                        ; $7619: $51
	ld   de, $ffce                                   ; $761a: $11 $ce $ff
	ld   sp, hl                                      ; $761d: $f9
	ret  z                                           ; $761e: $c8

	ld   de, $111f                                   ; $761f: $11 $1f $11
	ld   de, $1ff4                                   ; $7622: $11 $f4 $1f
	rst  $38                                         ; $7625: $ff
	rst  $38                                         ; $7626: $ff
	ld   hl, sp-$21                                  ; $7627: $f8 $df
	di                                               ; $7629: $f3
	ld   de, $11e1                                   ; $762a: $11 $e1 $11
	ld   e, $ff                                      ; $762d: $1e $ff
	or   $7c                                         ; $762f: $f6 $7c
	ld   d, c                                        ; $7631: $51
	inc  e                                           ; $7632: $1c
	ld   de, $fc11                                   ; $7633: $11 $11 $fc
	rra                                              ; $7636: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7637: $cf
	rst  $38                                         ; $7638: $ff
	db   $fc                                         ; $7639: $fc
	xor  a                                           ; $763a: $af
	db   $ec                                         ; $763b: $ec
	ld   de, $1191                                   ; $763c: $11 $91 $11
	cpl                                              ; $763f: $2f
	rst  JumpTable                                         ; $7640: $df
	rst  $38                                         ; $7641: $ff
	call z, $1181                                    ; $7642: $cc $81 $11
	pop  af                                          ; $7645: $f1
	ld   de, $611f                                   ; $7646: $11 $1f $61
	cp   $ff                                         ; $7649: $fe $ff
	rst  $38                                         ; $764b: $ff
	adc  e                                           ; $764c: $8b
	rst  $38                                         ; $764d: $ff
	add  c                                           ; $764e: $81
	rla                                              ; $764f: $17
	ld   de, $be11                                   ; $7650: $11 $11 $be
	rst  $38                                         ; $7653: $ff
	rst  ToBoot                                         ; $7654: $c7
	ld   h, e                                        ; $7655: $63
	ld   de, $1181                                   ; $7656: $11 $81 $11
	rra                                              ; $7659: $1f
	pop  af                                          ; $765a: $f1
	cp   $ff                                         ; $765b: $fe $ff
	rst  $38                                         ; $765d: $ff
	or   $fd                                         ; $765e: $f6 $fd
	pop  de                                          ; $7660: $d1
	inc  de                                          ; $7661: $13
	ld   de, $bc41                                   ; $7662: $11 $41 $bc
	rst  $38                                         ; $7665: $ff
	ei                                               ; $7666: $fb
	ld   h, c                                        ; $7667: $61
	ld   de, $111b                                   ; $7668: $11 $1b $11
	ld   de, $aff6                                   ; $766b: $11 $f6 $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $766e: $cf
	rst  $38                                         ; $766f: $ff
	rst  $30                                         ; $7670: $f7
	cp   a                                           ; $7671: $bf
	cp   h                                           ; $7672: $bc
	ld   de, $6121                                   ; $7673: $11 $21 $61
	ld   l, $af                                      ; $7676: $2e $af
	rst  $38                                         ; $7678: $ff
	and  c                                           ; $7679: $a1
	ld   de, $1118                                   ; $767a: $11 $18 $11
	ld   de, $3fff                                   ; $767d: $11 $ff $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7680: $cf
	rst  $38                                         ; $7681: $ff
	rst  $38                                         ; $7682: $ff
	cpl                                              ; $7683: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7684: $cf
	ld   de, $1811                                   ; $7685: $11 $11 $18
	add  hl, de                                      ; $7688: $19
	xor  a                                           ; $7689: $af
	rst  $38                                         ; $768a: $ff
	rst  $30                                         ; $768b: $f7
	ld   de, $c111                                   ; $768c: $11 $11 $c1
	ld   de, $f91f                                   ; $768f: $11 $1f $f9
	ld   a, [$ffff]                                  ; $7692: $fa $ff $ff
	db   $d3                                         ; $7695: $d3
	cp   h                                           ; $7696: $bc
	pop  af                                          ; $7697: $f1
	ld   de, $6713                                   ; $7698: $11 $13 $67
	or   $ff                                         ; $769b: $f6 $ff
	rst  $38                                         ; $769d: $ff
	ld   h, c                                        ; $769e: $61
	ld   de, $111d                                   ; $769f: $11 $1d $11
	ld   de, $ffff                                   ; $76a2: $11 $ff $ff
	ld   a, a                                        ; $76a5: $7f
	rst  $38                                         ; $76a6: $ff
	db   $fc                                         ; $76a7: $fc
	ld   b, e                                        ; $76a8: $43
	ld   l, a                                        ; $76a9: $6f
	ld   de, $1411                                   ; $76aa: $11 $11 $14
	rst  $38                                         ; $76ad: $ff
	ld   l, [hl]                                     ; $76ae: $6e
	rst  $38                                         ; $76af: $ff
	db   $fc                                         ; $76b0: $fc
	ld   de, $e111                                   ; $76b1: $11 $11 $e1
	ld   de, $ff1f                                   ; $76b4: $11 $1f $ff
	ei                                               ; $76b7: $fb
	rst  $38                                         ; $76b8: $ff
	rst  $38                                         ; $76b9: $ff
	or   $11                                         ; $76ba: $f6 $11
	pop  bc                                          ; $76bc: $c1
	ld   de, $1f11                                   ; $76bd: $11 $11 $1f
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	cp   $11                                         ; $76c3: $fe $11
	ld   de, $1121                                   ; $76c5: $11 $21 $11
	dec  de                                          ; $76c8: $1b
	rst  $38                                         ; $76c9: $ff
	rst  $38                                         ; $76ca: $ff
	rst  $38                                         ; $76cb: $ff
	rst  $38                                         ; $76cc: $ff
	db   $fc                                         ; $76cd: $fc
	ld   de, $5111                                   ; $76ce: $11 $11 $51
	ld   de, $ff1f                                   ; $76d1: $11 $1f $ff
	rst  $38                                         ; $76d4: $ff
	rst  $38                                         ; $76d5: $ff
	db   $ed                                         ; $76d6: $ed
	ld   de, $1111                                   ; $76d7: $11 $11 $11
	ld   de, $ff65                                   ; $76da: $11 $65 $ff
	rst  $38                                         ; $76dd: $ff
	rst  $38                                         ; $76de: $ff
	rst  $38                                         ; $76df: $ff
	db   $f4                                         ; $76e0: $f4
	ld   hl, $1111                                   ; $76e1: $21 $11 $11
	ld   de, $ffef                                   ; $76e4: $11 $ef $ff
	rst  $38                                         ; $76e7: $ff
	or   $31                                         ; $76e8: $f6 $31
	ld   de, $1111                                   ; $76ea: $11 $11 $11
	jr   @-$2f                                       ; $76ed: $18 $cf

	rst  $38                                         ; $76ef: $ff
	db   $fd                                         ; $76f0: $fd
	rst  $38                                         ; $76f1: $ff
	rst  $38                                         ; $76f2: $ff
	ld   de, $1111                                   ; $76f3: $11 $11 $11
	ld   de, $ff19                                   ; $76f6: $11 $19 $ff
	rst  $38                                         ; $76f9: $ff
	rst  $38                                         ; $76fa: $ff
	ld   h, h                                        ; $76fb: $64
	ld   de, $1111                                   ; $76fc: $11 $11 $11
	ld   de, $ff9c                                   ; $76ff: $11 $9c $ff
	rst  $38                                         ; $7702: $ff
	rst  $38                                         ; $7703: $ff
	rst  $38                                         ; $7704: $ff
	ld   hl, sp+$11                                  ; $7705: $f8 $11
	ld   de, $1111                                   ; $7707: $11 $11 $11
	ld   e, a                                        ; $770a: $5f
	rst  $38                                         ; $770b: $ff
	rst  $38                                         ; $770c: $ff
	cp   $51                                         ; $770d: $fe $51
	ld   de, $1111                                   ; $770f: $11 $11 $11
	ld   de, $ff5f                                   ; $7712: $11 $5f $ff
	rst  $38                                         ; $7715: $ff
	rst  $38                                         ; $7716: $ff
	rst  $38                                         ; $7717: $ff
	db   $f4                                         ; $7718: $f4
	ld   de, $1111                                   ; $7719: $11 $11 $11
	ld   d, a                                        ; $771c: $57
	rst  $38                                         ; $771d: $ff
	rst  $38                                         ; $771e: $ff
	rst  $38                                         ; $771f: $ff
	db   $fc                                         ; $7720: $fc
	ld   de, $1111                                   ; $7721: $11 $11 $11
	ld   de, $6f12                                   ; $7724: $11 $12 $6f
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	db   $fd                                         ; $7729: $fd
	sbc  e                                           ; $772a: $9b
	ld   h, e                                        ; $772b: $63
	ld   de, $1411                                   ; $772c: $11 $11 $14
	xor  a                                           ; $772f: $af
	rst  $38                                         ; $7730: $ff
	rst  $38                                         ; $7731: $ff
	rst  $38                                         ; $7732: $ff
	rst  $30                                         ; $7733: $f7
	ld   de, $1111                                   ; $7734: $11 $11 $11
	ld   de, $ff85                                   ; $7737: $11 $85 $ff
	rst  $38                                         ; $773a: $ff
	rst  $38                                         ; $773b: $ff
	push af                                          ; $773c: $f5
	ld   sp, $1111                                   ; $773d: $31 $11 $11
	ld   de, $ff16                                   ; $7740: $11 $16 $ff
	rst  $38                                         ; $7743: $ff
	rst  $38                                         ; $7744: $ff
	ld   a, [$1131]                                  ; $7745: $fa $31 $11
	ld   de, $1d11                                   ; $7748: $11 $11 $1d
	xor  a                                           ; $774b: $af
	rst  $38                                         ; $774c: $ff
	rst  $38                                         ; $774d: $ff
	rst  $38                                         ; $774e: $ff
	ld   h, e                                        ; $774f: $63
	ld   de, $1111                                   ; $7750: $11 $11 $11
	ld   [de], a                                     ; $7753: $12
	ld   a, a                                        ; $7754: $7f
	rst  $38                                         ; $7755: $ff
	rst  $38                                         ; $7756: $ff
	rst  $38                                         ; $7757: $ff
	or   c                                           ; $7758: $b1
	ld   de, $1111                                   ; $7759: $11 $11 $11
	ld   de, $fffb                                   ; $775c: $11 $fb $ff
	rst  $38                                         ; $775f: $ff
	rst  $38                                         ; $7760: $ff
	or   $11                                         ; $7761: $f6 $11
	ld   de, $1111                                   ; $7763: $11 $11 $11
	ld   e, c                                        ; $7766: $59
	rst  $38                                         ; $7767: $ff
	rst  $38                                         ; $7768: $ff
	rst  $38                                         ; $7769: $ff
	cp   $41                                         ; $776a: $fe $41
	ld   de, $1111                                   ; $776c: $11 $11 $11
	inc  c                                           ; $776f: $0c
	rst  $38                                         ; $7770: $ff
	rst  $38                                         ; $7771: $ff
	rst  $38                                         ; $7772: $ff
	rst  $38                                         ; $7773: $ff
	jp   nc, $1111                                   ; $7774: $d2 $11 $11

	ld   de, $be14                                   ; $7777: $11 $14 $be
	rst  $38                                         ; $777a: $ff
	rst  $38                                         ; $777b: $ff
	rst  $38                                         ; $777c: $ff
	di                                               ; $777d: $f3
	ld   de, $1111                                   ; $777e: $11 $11 $11
	inc  de                                          ; $7781: $13
	rst  $38                                         ; $7782: $ff
	rst  $38                                         ; $7783: $ff
	rst  $38                                         ; $7784: $ff
	rst  $38                                         ; $7785: $ff
	db   $fc                                         ; $7786: $fc
	ld   de, $1111                                   ; $7787: $11 $11 $11
	ld   [de], a                                     ; $778a: $12
	sbc  [hl]                                        ; $778b: $9e
	rst  $38                                         ; $778c: $ff
	rst  $38                                         ; $778d: $ff
	rst  $38                                         ; $778e: $ff
	rst  $38                                         ; $778f: $ff
	ld   hl, $1111                                   ; $7790: $21 $11 $11
	inc  de                                          ; $7793: $13
	xor  a                                           ; $7794: $af
	rst  $38                                         ; $7795: $ff
	rst  $38                                         ; $7796: $ff
	rst  $38                                         ; $7797: $ff
	rst  $38                                         ; $7798: $ff
	or   d                                           ; $7799: $b2
	ld   de, $1111                                   ; $779a: $11 $11 $11
	ld   a, $ff                                      ; $779d: $3e $ff
	rst  $38                                         ; $779f: $ff
	rst  $38                                         ; $77a0: $ff
	rst  $38                                         ; $77a1: $ff
	or   $11                                         ; $77a2: $f6 $11
	ld   de, $1a11                                   ; $77a4: $11 $11 $1a
	rst  $38                                         ; $77a7: $ff
	rst  $38                                         ; $77a8: $ff
	rst  $38                                         ; $77a9: $ff
	rst  $38                                         ; $77aa: $ff
	rst  $38                                         ; $77ab: $ff
	ld   h, c                                        ; $77ac: $61
	ld   de, $1111                                   ; $77ad: $11 $11 $11
	cp   a                                           ; $77b0: $bf
	rst  $38                                         ; $77b1: $ff
	rst  $38                                         ; $77b2: $ff
	rst  $38                                         ; $77b3: $ff
	db   $fc                                         ; $77b4: $fc
	ld   de, $1111                                   ; $77b5: $11 $11 $11
	ld   de, $ffdf                                   ; $77b8: $11 $df $ff
	rst  $38                                         ; $77bb: $ff
	rst  $38                                         ; $77bc: $ff
	rst  $38                                         ; $77bd: $ff
	ld   h, d                                        ; $77be: $62
	ld   de, $1111                                   ; $77bf: $11 $11 $11
	dec  e                                           ; $77c2: $1d
	rst  $38                                         ; $77c3: $ff
	rst  $38                                         ; $77c4: $ff
	rst  $38                                         ; $77c5: $ff
	cp   $21                                         ; $77c6: $fe $21
	ld   de, $1111                                   ; $77c8: $11 $11 $11
	ld   c, a                                        ; $77cb: $4f
	rst  $38                                         ; $77cc: $ff
	rst  $38                                         ; $77cd: $ff
	rst  $38                                         ; $77ce: $ff
	rst  $38                                         ; $77cf: $ff
	sub  e                                           ; $77d0: $93
	ld   de, $1111                                   ; $77d1: $11 $11 $11
	ld   a, [de]                                     ; $77d4: $1a
	rst  $38                                         ; $77d5: $ff
	rst  $38                                         ; $77d6: $ff
	rst  $38                                         ; $77d7: $ff
	rst  $38                                         ; $77d8: $ff
	ld   [hl], c                                     ; $77d9: $71
	ld   de, $1111                                   ; $77da: $11 $11 $11
	rra                                              ; $77dd: $1f
	rst  $38                                         ; $77de: $ff
	rst  $38                                         ; $77df: $ff
	rst  $38                                         ; $77e0: $ff
	rst  $38                                         ; $77e1: $ff
	push bc                                          ; $77e2: $c5
	ld   de, $1111                                   ; $77e3: $11 $11 $11
	dec  d                                           ; $77e6: $15
	rst  $38                                         ; $77e7: $ff
	rst  $38                                         ; $77e8: $ff
	rst  $38                                         ; $77e9: $ff
	rst  $38                                         ; $77ea: $ff
	sub  c                                           ; $77eb: $91
	ld   de, $1111                                   ; $77ec: $11 $11 $11
	rra                                              ; $77ef: $1f
	rst  $38                                         ; $77f0: $ff
	rst  $38                                         ; $77f1: $ff
	rst  $38                                         ; $77f2: $ff
	rst  $38                                         ; $77f3: $ff
	call nz, $1111                                   ; $77f4: $c4 $11 $11
	ld   de, $ff15                                   ; $77f7: $11 $15 $ff
	rst  $38                                         ; $77fa: $ff
	rst  $38                                         ; $77fb: $ff
	rst  $38                                         ; $77fc: $ff
	ld   h, c                                        ; $77fd: $61
	ld   de, $1111                                   ; $77fe: $11 $11 $11
	ld   a, a                                        ; $7801: $7f
	rst  $38                                         ; $7802: $ff
	rst  $38                                         ; $7803: $ff
	rst  $38                                         ; $7804: $ff
	rst  $38                                         ; $7805: $ff
	sub  h                                           ; $7806: $94
	ld   de, $1111                                   ; $7807: $11 $11 $11
	ld   a, [de]                                     ; $780a: $1a
	rst  $38                                         ; $780b: $ff
	rst  $38                                         ; $780c: $ff
	rst  $38                                         ; $780d: $ff
	ld   a, [$1111]                                  ; $780e: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $7811: $11 $11 $ff
	rst  $38                                         ; $7814: $ff
	rst  $38                                         ; $7815: $ff
	rst  $38                                         ; $7816: $ff
	ld   a, [$1161]                                  ; $7817: $fa $61 $11
	ld   de, $6f11                                   ; $781a: $11 $11 $6f
	rst  $38                                         ; $781d: $ff
	rst  $38                                         ; $781e: $ff
	rst  $38                                         ; $781f: $ff
	pop  bc                                          ; $7820: $c1
	ld   de, $1111                                   ; $7821: $11 $11 $11
	cpl                                              ; $7824: $2f
	rst  $38                                         ; $7825: $ff
	rst  $38                                         ; $7826: $ff
	rst  $38                                         ; $7827: $ff
	rst  $38                                         ; $7828: $ff
	and  a                                           ; $7829: $a7
	ld   de, $1111                                   ; $782a: $11 $11 $11
	jr   @+$01                                       ; $782d: $18 $ff

	rst  $38                                         ; $782f: $ff
	rst  $38                                         ; $7830: $ff
	or   $11                                         ; $7831: $f6 $11
	ld   de, $1c11                                   ; $7833: $11 $11 $1c
	rst  $38                                         ; $7836: $ff
	rst  $38                                         ; $7837: $ff
	rst  $38                                         ; $7838: $ff
	rst  $38                                         ; $7839: $ff
	add  sp, $61                                     ; $783a: $e8 $61
	ld   de, $1211                                   ; $783c: $11 $11 $12
	rst  $38                                         ; $783f: $ff
	rst  $38                                         ; $7840: $ff
	rst  $38                                         ; $7841: $ff
	ei                                               ; $7842: $fb
	ld   de, $1111                                   ; $7843: $11 $11 $11
	ld   d, $ff                                      ; $7846: $16 $ff
	rst  $38                                         ; $7848: $ff
	rst  $38                                         ; $7849: $ff
	rst  $38                                         ; $784a: $ff
	rst  $30                                         ; $784b: $f7
	add  c                                           ; $784c: $81
	ld   de, $1111                                   ; $784d: $11 $11 $11
	rst  $38                                         ; $7850: $ff
	rst  $38                                         ; $7851: $ff
	rst  $38                                         ; $7852: $ff
	or   $11                                         ; $7853: $f6 $11
	ld   de, $1c11                                   ; $7855: $11 $11 $1c
	rst  $38                                         ; $7858: $ff
	rst  $38                                         ; $7859: $ff
	rst  $38                                         ; $785a: $ff
	rst  JumpTable                                         ; $785b: $df
	and  $a1                                         ; $785c: $e6 $a1
	ld   de, $1211                                   ; $785e: $11 $11 $12
	rst  $38                                         ; $7861: $ff
	rst  $38                                         ; $7862: $ff
	rst  $38                                         ; $7863: $ff
	and  c                                           ; $7864: $a1
	ld   de, $1411                                   ; $7865: $11 $11 $14
	rra                                              ; $7868: $1f
	rst  $38                                         ; $7869: $ff
	rst  $38                                         ; $786a: $ff
	rst  $38                                         ; $786b: $ff
	rst  $28                                         ; $786c: $ef
	sbc  b                                           ; $786d: $98
	ld   h, c                                        ; $786e: $61
	ld   de, $1f11                                   ; $786f: $11 $11 $1f
	rst  $38                                         ; $7872: $ff
	rst  $38                                         ; $7873: $ff
	rst  $38                                         ; $7874: $ff
	ld   de, $1111                                   ; $7875: $11 $11 $11
	ld   b, a                                        ; $7878: $47
	rst  $38                                         ; $7879: $ff
	rst  $38                                         ; $787a: $ff
	rst  $38                                         ; $787b: $ff
	rst  $38                                         ; $787c: $ff
	ei                                               ; $787d: $fb
	and  [hl]                                        ; $787e: $a6
	ld   de, $1111                                   ; $787f: $11 $11 $11
	rst  $38                                         ; $7882: $ff
	rst  $38                                         ; $7883: $ff
	rst  $38                                         ; $7884: $ff

Jump_0b0_7885:
	or   c                                           ; $7885: $b1
	ld   de, $1611                                   ; $7886: $11 $11 $16
	rst  $38                                         ; $7889: $ff
	rst  $38                                         ; $788a: $ff
	db   $fd                                         ; $788b: $fd
	ld   a, [$ceff]                                  ; $788c: $fa $ff $ce
	ld   [hl], c                                     ; $788f: $71
	ld   de, $1f11                                   ; $7890: $11 $11 $1f
	rst  $38                                         ; $7893: $ff
	rst  $38                                         ; $7894: $ff
	di                                               ; $7895: $f3
	ld   de, $1311                                   ; $7896: $11 $11 $13

Jump_0b0_7899:
	cp   a                                           ; $7899: $bf
	rst  $38                                         ; $789a: $ff
	db   $fd                                         ; $789b: $fd
	db   $eb                                         ; $789c: $eb
	sbc  a                                           ; $789d: $9f
	rst  $28                                         ; $789e: $ef
	or   $11                                         ; $789f: $f6 $11
	ld   de, $ff18                                   ; $78a1: $11 $18 $ff
	rst  $38                                         ; $78a4: $ff
	ei                                               ; $78a5: $fb
	ld   de, $1311                                   ; $78a6: $11 $11 $13
	cp   a                                           ; $78a9: $bf
	rst  $38                                         ; $78aa: $ff
	ld   a, [$1da3]                                  ; $78ab: $fa $a3 $1d
	xor  a                                           ; $78ae: $af
	cp   $61                                         ; $78af: $fe $61
	ld   de, $ff15                                   ; $78b1: $11 $15 $ff
	rst  $38                                         ; $78b4: $ff
	ld   sp, hl                                      ; $78b5: $f9
	ld   de, $1611                                   ; $78b6: $11 $11 $16
	rst  $38                                         ; $78b9: $ff
	rst  $38                                         ; $78ba: $ff
	ld   hl, sp-$7f                                  ; $78bb: $f8 $81
	inc  d                                           ; $78bd: $14
	ld   l, a                                        ; $78be: $6f
	rst  $38                                         ; $78bf: $ff
	pop  bc                                          ; $78c0: $c1
	ld   de, $ff1d                                   ; $78c1: $11 $1d $ff
	rst  $38                                         ; $78c4: $ff
	pop  af                                          ; $78c5: $f1
	ld   de, $1c11                                   ; $78c6: $11 $11 $1c
	rst  $38                                         ; $78c9: $ff
	rst  $38                                         ; $78ca: $ff
	ld   a, [$1111]                                  ; $78cb: $fa $11 $11
	sbc  a                                           ; $78ce: $9f
	rst  $38                                         ; $78cf: $ff
	add  c                                           ; $78d0: $81
	ld   b, c                                        ; $78d1: $41
	rst  $38                                         ; $78d2: $ff
	rst  $38                                         ; $78d3: $ff
	push af                                          ; $78d4: $f5
	ld   de, $1111                                   ; $78d5: $11 $11 $11
	rst  $38                                         ; $78d8: $ff
	rst  $38                                         ; $78d9: $ff
	rst  $38                                         ; $78da: $ff
	ld   h, c                                        ; $78db: $61
	ld   de, $df15                                   ; $78dc: $11 $15 $df
	ei                                               ; $78df: $fb
	call nz, $ffbf                                   ; $78e0: $c4 $bf $ff
	db   $f4                                         ; $78e3: $f4
	ld   de, $1111                                   ; $78e4: $11 $11 $11
	rst  $38                                         ; $78e7: $ff
	rst  $38                                         ; $78e8: $ff
	rst  $38                                         ; $78e9: $ff
	di                                               ; $78ea: $f3
	ld   de, $1911                                   ; $78eb: $11 $11 $19
	db   $ec                                         ; $78ee: $ec
	db   $fc                                         ; $78ef: $fc
	rst  $38                                         ; $78f0: $ff
	rst  $38                                         ; $78f1: $ff
	add  c                                           ; $78f2: $81
	ld   de, $1111                                   ; $78f3: $11 $11 $11
	rst  $38                                         ; $78f6: $ff
	rst  $38                                         ; $78f7: $ff
	rst  $38                                         ; $78f8: $ff
	ld   a, [$1111]                                  ; $78f9: $fa $11 $11
	inc  de                                          ; $78fc: $13
	ld   [hl], a                                     ; $78fd: $77
	cp   $ff                                         ; $78fe: $fe $ff
	rst  $38                                         ; $7900: $ff
	ld   sp, $1111                                   ; $7901: $31 $11 $11
	rla                                              ; $7904: $17
	rst  $38                                         ; $7905: $ff
	rst  $38                                         ; $7906: $ff
	rst  $38                                         ; $7907: $ff
	cp   c                                           ; $7908: $b9
	ld   de, $1511                                   ; $7909: $11 $11 $15
	add  hl, hl                                      ; $790c: $29
	cp   a                                           ; $790d: $bf
	rst  $38                                         ; $790e: $ff
	ei                                               ; $790f: $fb
	ld   de, $1111                                   ; $7910: $11 $11 $11
	rra                                              ; $7913: $1f
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	ei                                               ; $7916: $fb
	sub  d                                           ; $7917: $92
	ld   de, $7523                                   ; $7918: $11 $23 $75
	adc  h                                           ; $791b: $8c
	rst  JumpTable                                         ; $791c: $df
	rst  $38                                         ; $791d: $ff
	or   c                                           ; $791e: $b1
	ld   de, $1111                                   ; $791f: $11 $11 $11
	rst  $38                                         ; $7922: $ff
	rst  $38                                         ; $7923: $ff
	rst  $38                                         ; $7924: $ff
	xor  c                                           ; $7925: $a9
	ld   hl, $3812                                   ; $7926: $21 $12 $38
	ld   l, c                                        ; $7929: $69
	xor  $ff                                         ; $792a: $ee $ff
	ld   sp, hl                                      ; $792c: $f9
	ld   de, $1111                                   ; $792d: $11 $11 $11
	ld   l, a                                        ; $7930: $6f
	rst  $38                                         ; $7931: $ff
	rst  $38                                         ; $7932: $ff
	or   $61                                         ; $7933: $f6 $61
	ld   [de], a                                     ; $7935: $12
	dec  [hl]                                        ; $7936: $35
	and  l                                           ; $7937: $a5
	sbc  l                                           ; $7938: $9d
	rst  JumpTable                                         ; $7939: $df
	rst  $38                                         ; $793a: $ff
	ld   h, c                                        ; $793b: $61
	ld   de, $1a11                                   ; $793c: $11 $11 $1a
	rst  $38                                         ; $793f: $ff
	rst  $38                                         ; $7940: $ff
	rst  $38                                         ; $7941: $ff
	ld   b, [hl]                                     ; $7942: $46
	ld   de, $6a12                                   ; $7943: $11 $12 $6a
	ld   a, [hl]                                     ; $7946: $7e
	rst  $28                                         ; $7947: $ef
	rst  $38                                         ; $7948: $ff
	pop  af                                          ; $7949: $f1
	ld   de, $1111                                   ; $794a: $11 $11 $11
	rst  $38                                         ; $794d: $ff
	rst  $38                                         ; $794e: $ff
	rst  $38                                         ; $794f: $ff
	call nz, $1341                                   ; $7950: $c4 $41 $13
	add  hl, de                                      ; $7953: $19
	ld   a, b                                        ; $7954: $78
	cp   $ff                                         ; $7955: $fe $ff
	db   $f4                                         ; $7957: $f4
	ld   de, $1111                                   ; $7958: $11 $11 $11
	rst  $38                                         ; $795b: $ff
	rst  $38                                         ; $795c: $ff
	rst  $38                                         ; $795d: $ff
	pop  af                                          ; $795e: $f1
	ld   sp, $2815                                   ; $795f: $31 $15 $28
	or   [hl]                                        ; $7962: $b6
	db   $fd                                         ; $7963: $fd
	rst  $38                                         ; $7964: $ff
	ld   a, [$1111]                                  ; $7965: $fa $11 $11
	ld   de, $ffaf                                   ; $7968: $11 $af $ff
	rst  $38                                         ; $796b: $ff
	db   $f4                                         ; $796c: $f4
	ld   sp, $2614                                   ; $796d: $31 $14 $26
	ret  c                                           ; $7970: $d8

	cp   $ff                                         ; $7971: $fe $ff
	call nc, $1111                                   ; $7973: $d4 $11 $11
	ld   de, $ffff                                   ; $7976: $11 $ff $ff
	rst  $38                                         ; $7979: $ff
	di                                               ; $797a: $f3
	ld   b, c                                        ; $797b: $41
	ld   d, $27                                      ; $797c: $16 $27
	set  7, a                                        ; $797e: $cb $ff
	rst  $38                                         ; $7980: $ff
	or   c                                           ; $7981: $b1
	ld   de, $1111                                   ; $7982: $11 $11 $11
	rst  $38                                         ; $7985: $ff
	rst  $38                                         ; $7986: $ff
	rst  $38                                         ; $7987: $ff
	pop  af                                          ; $7988: $f1
	ld   sp, $2b17                                   ; $7989: $31 $17 $2b
	call $ffff                                       ; $798c: $cd $ff $ff
	ld   h, c                                        ; $798f: $61
	ld   de, $1611                                   ; $7990: $11 $11 $16
	rst  $38                                         ; $7993: $ff
	rst  $38                                         ; $7994: $ff
	rst  $38                                         ; $7995: $ff
	add  c                                           ; $7996: $81
	ld   de, $4e46                                   ; $7997: $11 $46 $4e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $799a: $cf
	rst  $38                                         ; $799b: $ff
	ei                                               ; $799c: $fb
	ld   de, $1111                                   ; $799d: $11 $11 $11
	rra                                              ; $79a0: $1f
	rst  $38                                         ; $79a1: $ff
	rst  $38                                         ; $79a2: $ff
	rst  $38                                         ; $79a3: $ff
	ld   de, $7311                                   ; $79a4: $11 $11 $73
	xor  [hl]                                        ; $79a7: $ae
	rst  JumpTable                                         ; $79a8: $df
	rst  $38                                         ; $79a9: $ff
	or   $11                                         ; $79aa: $f6 $11
	ld   de, $6f11                                   ; $79ac: $11 $11 $6f
	rst  $38                                         ; $79af: $ff
	rst  $38                                         ; $79b0: $ff
	ld   hl, sp+$11                                  ; $79b1: $f8 $11
	dec  d                                           ; $79b3: $15
	ld   d, h                                        ; $79b4: $54
	call $ffff                                       ; $79b5: $cd $ff $ff
	pop  de                                          ; $79b8: $d1
	ld   de, $1211                                   ; $79b9: $11 $11 $12
	rst  $38                                         ; $79bc: $ff
	rst  $38                                         ; $79bd: $ff
	rst  $38                                         ; $79be: $ff
	pop  af                                          ; $79bf: $f1
	ld   de, $4819                                   ; $79c0: $11 $19 $48
	db   $ec                                         ; $79c3: $ec
	rst  $38                                         ; $79c4: $ff
	rst  $38                                         ; $79c5: $ff
	ld   h, c                                        ; $79c6: $61
	ld   de, $2711                                   ; $79c7: $11 $11 $27
	rst  $38                                         ; $79ca: $ff
	rst  $38                                         ; $79cb: $ff
	rst  $38                                         ; $79cc: $ff
	add  c                                           ; $79cd: $81
	ld   de, $5c58                                   ; $79ce: $11 $58 $5c
	db   $dd                                         ; $79d1: $dd
	rst  $38                                         ; $79d2: $ff
	rst  $38                                         ; $79d3: $ff
	ld   bc, $1111                                   ; $79d4: $01 $11 $11
	inc  a                                           ; $79d7: $3c
	rst  $38                                         ; $79d8: $ff
	rst  $38                                         ; $79d9: $ff
	rst  $38                                         ; $79da: $ff
	ld   de, $7811                                   ; $79db: $11 $11 $78
	ld   a, a                                        ; $79de: $7f
	rst  $28                                         ; $79df: $ef
	rst  $38                                         ; $79e0: $ff
	ei                                               ; $79e1: $fb
	ld   de, $1111                                   ; $79e2: $11 $11 $11
	ld   e, a                                        ; $79e5: $5f
	rst  $38                                         ; $79e6: $ff
	rst  $38                                         ; $79e7: $ff
	rst  $38                                         ; $79e8: $ff
	ld   de, $8811                                   ; $79e9: $11 $11 $88
	cp   a                                           ; $79ec: $bf
	rst  $38                                         ; $79ed: $ff
	rst  $38                                         ; $79ee: $ff
	ld   sp, hl                                      ; $79ef: $f9
	ld   de, $1111                                   ; $79f0: $11 $11 $11
	ld   l, a                                        ; $79f3: $6f
	rst  $38                                         ; $79f4: $ff
	rst  $38                                         ; $79f5: $ff
	db   $fd                                         ; $79f6: $fd
	ld   de, $9a11                                   ; $79f7: $11 $11 $9a
	xor  a                                           ; $79fa: $af
	rst  $28                                         ; $79fb: $ef
	rst  $38                                         ; $79fc: $ff
	ld   a, [$1111]                                  ; $79fd: $fa $11 $11
	ld   de, $ff9f                                   ; $7a00: $11 $9f $ff
	rst  $38                                         ; $7a03: $ff
	ld   hl, sp+$11                                  ; $7a04: $f8 $11
	ld   de, $ff9f                                   ; $7a06: $11 $9f $ff
	rst  $38                                         ; $7a09: $ff
	cp   $c8                                         ; $7a0a: $fe $c8
	ld   de, $1111                                   ; $7a0c: $11 $11 $11
	ld   l, a                                        ; $7a0f: $6f
	rst  $38                                         ; $7a10: $ff
	rst  $38                                         ; $7a11: $ff
	rst  $38                                         ; $7a12: $ff
	ld   b, c                                        ; $7a13: $41
	ld   de, $bf18                                   ; $7a14: $11 $18 $bf
	rst  $38                                         ; $7a17: $ff
	rst  $38                                         ; $7a18: $ff
	ei                                               ; $7a19: $fb
	ld   de, $1111                                   ; $7a1a: $11 $11 $11
	cpl                                              ; $7a1d: $2f
	rst  $38                                         ; $7a1e: $ff
	rst  $38                                         ; $7a1f: $ff
	or   $11                                         ; $7a20: $f6 $11
	ld   de, $ff7f                                   ; $7a22: $11 $7f $ff
	rst  $38                                         ; $7a25: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a26: $cf
	db   $ec                                         ; $7a27: $ec
	ld   h, c                                        ; $7a28: $61
	ld   de, $1711                                   ; $7a29: $11 $11 $17
	rst  $38                                         ; $7a2c: $ff
	rst  $38                                         ; $7a2d: $ff
	rst  $38                                         ; $7a2e: $ff
	ld   d, c                                        ; $7a2f: $51
	ld   de, $ff1c                                   ; $7a30: $11 $1c $ff
	rst  $38                                         ; $7a33: $ff
	rst  $38                                         ; $7a34: $ff
	reti                                             ; $7a35: $d9


	ld   b, c                                        ; $7a36: $41
	ld   de, $1311                                   ; $7a37: $11 $11 $13
	rst  $38                                         ; $7a3a: $ff
	rst  $38                                         ; $7a3b: $ff
	rst  $38                                         ; $7a3c: $ff
	sub  d                                           ; $7a3d: $92
	ld   de, $ff28                                   ; $7a3e: $11 $28 $ff
	rst  $38                                         ; $7a41: $ff
	rst  $38                                         ; $7a42: $ff
	db   $eb                                         ; $7a43: $eb
	and  h                                           ; $7a44: $a4
	ld   de, $1111                                   ; $7a45: $11 $11 $11
	ld   e, a                                        ; $7a48: $5f
	rst  $38                                         ; $7a49: $ff
	rst  $38                                         ; $7a4a: $ff
	pop  af                                          ; $7a4b: $f1
	ld   de, $df15                                   ; $7a4c: $11 $15 $df
	rst  $38                                         ; $7a4f: $ff
	rst  $38                                         ; $7a50: $ff
	cp   [hl]                                        ; $7a51: $be
	call z, $1181                                    ; $7a52: $cc $81 $11
	ld   de, $ef11                                   ; $7a55: $11 $11 $ef
	rst  $38                                         ; $7a58: $ff
	rst  $38                                         ; $7a59: $ff
	and  c                                           ; $7a5a: $a1
	ld   de, $ff1a                                   ; $7a5b: $11 $1a $ff
	rst  $38                                         ; $7a5e: $ff
	db   $fd                                         ; $7a5f: $fd
	adc  $a9                                         ; $7a60: $ce $a9
	ld   h, c                                        ; $7a62: $61
	ld   de, $1111                                   ; $7a63: $11 $11 $11
	rst  JumpTable                                         ; $7a66: $df
	rst  $38                                         ; $7a67: $ff
	rst  $38                                         ; $7a68: $ff
	and  c                                           ; $7a69: $a1
	ld   de, $ff1d                                   ; $7a6a: $11 $1d $ff
	rst  $38                                         ; $7a6d: $ff
	cp   $de                                         ; $7a6e: $fe $de
	xor  b                                           ; $7a70: $a8
	ld   b, c                                        ; $7a71: $41
	ld   de, $1111                                   ; $7a72: $11 $11 $11
	ld   c, a                                        ; $7a75: $4f
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff
	db   $f4                                         ; $7a78: $f4
	ld   de, $ff1a                                   ; $7a79: $11 $1a $ff
	rst  $38                                         ; $7a7c: $ff
	rst  $38                                         ; $7a7d: $ff
	sbc  $b9                                         ; $7a7e: $de $b9
	ld   [hl], d                                     ; $7a80: $72
	ld   de, $1111                                   ; $7a81: $11 $11 $11
	ld   de, $ffef                                   ; $7a84: $11 $ef $ff
	rst  $38                                         ; $7a87: $ff
	and  h                                           ; $7a88: $a4
	inc  h                                           ; $7a89: $24
	adc  [hl]                                        ; $7a8a: $8e
	rst  $38                                         ; $7a8b: $ff
	rst  $38                                         ; $7a8c: $ff
	cp   $b9                                         ; $7a8d: $fe $b9
	add  [hl]                                        ; $7a8f: $86
	ld   h, l                                        ; $7a90: $65
	ld   sp, $1111                                   ; $7a91: $31 $11 $11
	ld   de, $ffcf                                   ; $7a94: $11 $cf $ff
	rst  $38                                         ; $7a97: $ff
	and  e                                           ; $7a98: $a3
	inc  h                                           ; $7a99: $24
	sbc  a                                           ; $7a9a: $9f
	rst  $38                                         ; $7a9b: $ff
	rst  $38                                         ; $7a9c: $ff
	db   $fc                                         ; $7a9d: $fc
	xor  c                                           ; $7a9e: $a9
	adc  b                                           ; $7a9f: $88
	add  a                                           ; $7aa0: $87
	ld   sp, $1111                                   ; $7aa1: $31 $11 $11
	ld   de, $ff6f                                   ; $7aa4: $11 $6f $ff
	rst  $38                                         ; $7aa7: $ff

Call_0b0_7aa8:
	add  e                                           ; $7aa8: $83
	inc  de                                          ; $7aa9: $13
	adc  l                                           ; $7aaa: $8d
	rst  $38                                         ; $7aab: $ff
	rst  $38                                         ; $7aac: $ff
	cp   $c9                                         ; $7aad: $fe $c9
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	ld   [hl], h                                     ; $7ab1: $74
	ld   sp, $1111                                   ; $7ab2: $31 $11 $11
	ld   de, $ee59                                   ; $7ab5: $11 $59 $ee
	jp   c, $8c77                                    ; $7ab8: $da $77 $8c

	rst  $38                                         ; $7abb: $ff
	rst  $38                                         ; $7abc: $ff
	cp   $cb                                         ; $7abd: $fe $cb
	cp   d                                           ; $7abf: $ba
	cp   e                                           ; $7ac0: $bb
	cp   e                                           ; $7ac1: $bb
	cp   b                                           ; $7ac2: $b8
	ld   h, [hl]                                     ; $7ac3: $66
	ld   sp, $1111                                   ; $7ac4: $31 $11 $11
	ld   de, $a916                                   ; $7ac7: $11 $16 $a9
	call z, $cead                                    ; $7aca: $cc $ad $ce
	rst  $38                                         ; $7acd: $ff
	rst  $38                                         ; $7ace: $ff
	rst  $28                                         ; $7acf: $ef
	db   $dd                                         ; $7ad0: $dd
	db   $db                                         ; $7ad1: $db
	cp   d                                           ; $7ad2: $ba
	adc  b                                           ; $7ad3: $88
	adc  c                                           ; $7ad4: $89
	sbc  b                                           ; $7ad5: $98
	add  [hl]                                        ; $7ad6: $86
	ld   sp, $1111                                   ; $7ad7: $31 $11 $11
	ld   de, $cd39                                   ; $7ada: $11 $39 $cd
	db   $fd                                         ; $7add: $fd
	db   $db                                         ; $7ade: $db
	xor  h                                           ; $7adf: $ac
	call $dccc                                       ; $7ae0: $cd $cc $dc
	call c, $cbcc                                    ; $7ae3: $dc $cc $cb
	xor  d                                           ; $7ae6: $aa
	sbc  b                                           ; $7ae7: $98
	ld   [hl], l                                     ; $7ae8: $75
	ld   b, h                                        ; $7ae9: $44
	ld   [hl-], a                                    ; $7aea: $32
	ld   de, $1211                                   ; $7aeb: $11 $11 $12
	ld   [hl], $87                                   ; $7aee: $36 $87
	ld   [hl], a                                     ; $7af0: $77
	ld   l, c                                        ; $7af1: $69
	xor  h                                           ; $7af2: $ac
	rst  $38                                         ; $7af3: $ff
	rst  $28                                         ; $7af4: $ef
	call z, $bbda                                    ; $7af5: $cc $da $bb
	xor  e                                           ; $7af8: $ab
	cp   e                                           ; $7af9: $bb
	db   $db                                         ; $7afa: $db
	cp   e                                           ; $7afb: $bb
	adc  b                                           ; $7afc: $88
	ld   h, e                                        ; $7afd: $63
	ld   b, c                                        ; $7afe: $41
	ld   de, $1111                                   ; $7aff: $11 $11 $11
	ld   b, [hl]                                     ; $7b02: $46
	xor  d                                           ; $7b03: $aa
	xor  e                                           ; $7b04: $ab
	xor  e                                           ; $7b05: $ab
	cp   d                                           ; $7b06: $ba
	xor  e                                           ; $7b07: $ab
	call z, $eddd                                    ; $7b08: $cc $dd $ed
	call z, $baab                                    ; $7b0b: $cc $ab $ba
	res  5, c                                        ; $7b0e: $cb $a9
	ld   [hl], l                                     ; $7b10: $75
	ld   d, e                                        ; $7b11: $53
	dec  [hl]                                        ; $7b12: $35
	ld   b, e                                        ; $7b13: $43
	ld   hl, $1211                                   ; $7b14: $21 $11 $12
	ld   b, a                                        ; $7b17: $47
	adc  c                                           ; $7b18: $89
	xor  c                                           ; $7b19: $a9
	adc  b                                           ; $7b1a: $88
	sbc  c                                           ; $7b1b: $99
	call c, $bdcd                                    ; $7b1c: $dc $cd $bd
	cp   d                                           ; $7b1f: $ba
	xor  c                                           ; $7b20: $a9
	cp   l                                           ; $7b21: $bd
	cp   e                                           ; $7b22: $bb
	db   $db                                         ; $7b23: $db
	cp   d                                           ; $7b24: $ba
	ld   [hl], a                                     ; $7b25: $77
	ld   h, h                                        ; $7b26: $64
	ld   d, l                                        ; $7b27: $55
	ld   d, [hl]                                     ; $7b28: $56
	ld   [hl-], a                                    ; $7b29: $32
	ld   sp, $2611                                   ; $7b2a: $31 $11 $26
	ld   [hl], a                                     ; $7b2d: $77
	sbc  b                                           ; $7b2e: $98
	sbc  c                                           ; $7b2f: $99
	adc  c                                           ; $7b30: $89
	cp   e                                           ; $7b31: $bb
	call z, $bbab                                    ; $7b32: $cc $ab $bb
	cp   d                                           ; $7b35: $ba
	xor  e                                           ; $7b36: $ab
	xor  e                                           ; $7b37: $ab
	call z, $87ba                                    ; $7b38: $cc $ba $87
	ld   h, l                                        ; $7b3b: $65
	ld   d, [hl]                                     ; $7b3c: $56
	ld   h, [hl]                                     ; $7b3d: $66
	ld   d, h                                        ; $7b3e: $54
	ld   b, d                                        ; $7b3f: $42
	ld   [de], a                                     ; $7b40: $12
	inc  de                                          ; $7b41: $13
	ld   d, l                                        ; $7b42: $55
	ld   a, b                                        ; $7b43: $78
	ld   a, b                                        ; $7b44: $78
	xor  b                                           ; $7b45: $a8
	sbc  d                                           ; $7b46: $9a
	adc  e                                           ; $7b47: $8b
	set  1, h                                        ; $7b48: $cb $cc
	xor  h                                           ; $7b4a: $ac
	xor  d                                           ; $7b4b: $aa
	set  1, e                                        ; $7b4c: $cb $cb
	sbc  e                                           ; $7b4e: $9b
	cp   b                                           ; $7b4f: $b8
	add  [hl]                                        ; $7b50: $86
	ld   h, a                                        ; $7b51: $67
	ld   d, l                                        ; $7b52: $55
	ld   h, l                                        ; $7b53: $65
	ld   d, l                                        ; $7b54: $55
	inc  [hl]                                        ; $7b55: $34
	inc  sp                                          ; $7b56: $33
	ld   d, [hl]                                     ; $7b57: $56
	ld   h, a                                        ; $7b58: $67
	ld   h, [hl]                                     ; $7b59: $66
	ld   h, [hl]                                     ; $7b5a: $66
	ld   a, b                                        ; $7b5b: $78
	adc  d                                           ; $7b5c: $8a
	cp   d                                           ; $7b5d: $ba
	cp   e                                           ; $7b5e: $bb
	xor  e                                           ; $7b5f: $ab
	xor  d                                           ; $7b60: $aa
	xor  e                                           ; $7b61: $ab
	xor  d                                           ; $7b62: $aa
	xor  d                                           ; $7b63: $aa
	sbc  b                                           ; $7b64: $98
	adc  b                                           ; $7b65: $88
	adc  c                                           ; $7b66: $89
	adc  c                                           ; $7b67: $89
	sbc  b                                           ; $7b68: $98
	halt                                             ; $7b69: $76
	ld   d, l                                        ; $7b6a: $55
	ld   d, l                                        ; $7b6b: $55
	ld   d, l                                        ; $7b6c: $55
	ld   d, l                                        ; $7b6d: $55
	ld   d, [hl]                                     ; $7b6e: $56
	ld   [hl], a                                     ; $7b6f: $77
	add  a                                           ; $7b70: $87
	ld   a, b                                        ; $7b71: $78
	sbc  c                                           ; $7b72: $99
	sbc  c                                           ; $7b73: $99
	xor  d                                           ; $7b74: $aa
	xor  e                                           ; $7b75: $ab
	xor  d                                           ; $7b76: $aa
	sbc  d                                           ; $7b77: $9a
	sbc  d                                           ; $7b78: $9a
	sbc  b                                           ; $7b79: $98
	adc  b                                           ; $7b7a: $88
	adc  b                                           ; $7b7b: $88
	adc  c                                           ; $7b7c: $89
	sub  a                                           ; $7b7d: $97
	add  a                                           ; $7b7e: $87
	ld   [hl], a                                     ; $7b7f: $77
	ld   [hl], a                                     ; $7b80: $77
	halt                                             ; $7b81: $76
	halt                                             ; $7b82: $76
	ld   h, a                                        ; $7b83: $67
	ld   [hl], a                                     ; $7b84: $77
	ld   [hl], a                                     ; $7b85: $77
	adc  c                                           ; $7b86: $89
	adc  b                                           ; $7b87: $88
	add  a                                           ; $7b88: $87
	adc  b                                           ; $7b89: $88
	adc  c                                           ; $7b8a: $89
	xor  c                                           ; $7b8b: $a9
	adc  b                                           ; $7b8c: $88
	ld   a, b                                        ; $7b8d: $78
	adc  b                                           ; $7b8e: $88
	adc  c                                           ; $7b8f: $89
	adc  b                                           ; $7b90: $88
	adc  c                                           ; $7b91: $89
	sbc  b                                           ; $7b92: $98
	adc  b                                           ; $7b93: $88
	adc  b                                           ; $7b94: $88
	adc  b                                           ; $7b95: $88
	adc  b                                           ; $7b96: $88
	adc  b                                           ; $7b97: $88
	add  a                                           ; $7b98: $87
	ld   a, b                                        ; $7b99: $78
	adc  b                                           ; $7b9a: $88
	sbc  b                                           ; $7b9b: $98
	add  a                                           ; $7b9c: $87
	ld   [hl], a                                     ; $7b9d: $77
	ld   [hl], a                                     ; $7b9e: $77
	ld   [hl], a                                     ; $7b9f: $77
	adc  b                                           ; $7ba0: $88
	ld   a, b                                        ; $7ba1: $78
	adc  b                                           ; $7ba2: $88
	adc  c                                           ; $7ba3: $89
	adc  c                                           ; $7ba4: $89
	adc  b                                           ; $7ba5: $88
	adc  c                                           ; $7ba6: $89
	adc  c                                           ; $7ba7: $89
	sbc  b                                           ; $7ba8: $98
	sbc  b                                           ; $7ba9: $98
	adc  b                                           ; $7baa: $88
	adc  b                                           ; $7bab: $88
	adc  b                                           ; $7bac: $88
	adc  b                                           ; $7bad: $88
	adc  b                                           ; $7bae: $88
	adc  b                                           ; $7baf: $88
	adc  b                                           ; $7bb0: $88
	ld   a, b                                        ; $7bb1: $78
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	adc  b                                           ; $7bb4: $88
	sbc  c                                           ; $7bb5: $99
	sbc  c                                           ; $7bb6: $99
	adc  b                                           ; $7bb7: $88
	adc  b                                           ; $7bb8: $88
	adc  b                                           ; $7bb9: $88
	adc  b                                           ; $7bba: $88
	adc  b                                           ; $7bbb: $88
	adc  b                                           ; $7bbc: $88
	adc  b                                           ; $7bbd: $88
	adc  b                                           ; $7bbe: $88
	add  a                                           ; $7bbf: $87
	adc  b                                           ; $7bc0: $88
	adc  b                                           ; $7bc1: $88
	adc  b                                           ; $7bc2: $88
	adc  b                                           ; $7bc3: $88
	adc  b                                           ; $7bc4: $88
	adc  b                                           ; $7bc5: $88
	adc  b                                           ; $7bc6: $88
	adc  b                                           ; $7bc7: $88
	adc  b                                           ; $7bc8: $88
	adc  b                                           ; $7bc9: $88
	adc  b                                           ; $7bca: $88
	adc  b                                           ; $7bcb: $88
	adc  b                                           ; $7bcc: $88
	adc  b                                           ; $7bcd: $88
	adc  b                                           ; $7bce: $88
	adc  b                                           ; $7bcf: $88
	adc  b                                           ; $7bd0: $88
	adc  b                                           ; $7bd1: $88
	adc  b                                           ; $7bd2: $88
	adc  b                                           ; $7bd3: $88
	adc  b                                           ; $7bd4: $88
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	adc  b                                           ; $7bd7: $88
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	adc  b                                           ; $7bda: $88
	adc  b                                           ; $7bdb: $88
	adc  b                                           ; $7bdc: $88
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	adc  b                                           ; $7bdf: $88
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	adc  b                                           ; $7be3: $88
	adc  b                                           ; $7be4: $88
	adc  b                                           ; $7be5: $88
	adc  b                                           ; $7be6: $88
	adc  b                                           ; $7be7: $88
	adc  b                                           ; $7be8: $88
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	adc  b                                           ; $7beb: $88
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	adc  b                                           ; $7bee: $88
	adc  b                                           ; $7bef: $88
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	ld   de, $1111                                   ; $7bf5: $11 $11 $11
	ld   de, $1111                                   ; $7bf8: $11 $11 $11
	ld   de, $1111                                   ; $7bfb: $11 $11 $11
	ld   de, $1111                                   ; $7bfe: $11 $11 $11
	ld   de, $1111                                   ; $7c01: $11 $11 $11
	ld   de, $1111                                   ; $7c04: $11 $11 $11
	ld   de, $1111                                   ; $7c07: $11 $11 $11
	ld   de, $1111                                   ; $7c0a: $11 $11 $11
	ld   de, $1111                                   ; $7c0d: $11 $11 $11
	ld   de, $1111                                   ; $7c10: $11 $11 $11
	ld   de, $1111                                   ; $7c13: $11 $11 $11
	ld   de, $1111                                   ; $7c16: $11 $11 $11
	ld   de, $1111                                   ; $7c19: $11 $11 $11
	ld   de, $1111                                   ; $7c1c: $11 $11 $11
	ld   de, $1111                                   ; $7c1f: $11 $11 $11
	ld   de, $1111                                   ; $7c22: $11 $11 $11
	ld   de, $1111                                   ; $7c25: $11 $11 $11
	ld   de, $1111                                   ; $7c28: $11 $11 $11
	ld   de, $1111                                   ; $7c2b: $11 $11 $11
	ld   de, $1111                                   ; $7c2e: $11 $11 $11
	ld   de, $4800                                   ; $7c31: $11 $00 $48
	ld   de, $1111                                   ; $7c34: $11 $11 $11
	ld   de, $1111                                   ; $7c37: $11 $11 $11
	ld   de, $1111                                   ; $7c3a: $11 $11 $11
	ld   de, $5413                                   ; $7c3d: $11 $13 $54
	ld   d, h                                        ; $7c40: $54
	ld   d, h                                        ; $7c41: $54
	ld   b, c                                        ; $7c42: $41
	rra                                              ; $7c43: $1f
	rst  $38                                         ; $7c44: $ff
	pop  af                                          ; $7c45: $f1
	ld   de, $1811                                   ; $7c46: $11 $11 $18
	pop  af                                          ; $7c49: $f1
	ld   de, $df1c                                   ; $7c4a: $11 $1c $df
	inc  l                                           ; $7c4d: $2c
	rst  JumpTable                                         ; $7c4e: $df
	ld   hl, $1111                                   ; $7c4f: $21 $11 $11
	ld   de, $1111                                   ; $7c52: $11 $11 $11
	ld   de, $1111                                   ; $7c55: $11 $11 $11
	ld   de, $1111                                   ; $7c58: $11 $11 $11
	ld   de, $1111                                   ; $7c5b: $11 $11 $11
	ld   d, h                                        ; $7c5e: $54
	ld   b, h                                        ; $7c5f: $44
	add  sp, $11                                     ; $7c60: $e8 $11
	ld   d, h                                        ; $7c62: $54
	ld   d, h                                        ; $7c63: $54
	ld   h, a                                        ; $7c64: $67
	ld   [hl], d                                     ; $7c65: $72
	ld   de, $1111                                   ; $7c66: $11 $11 $11
	ld   de, $1112                                   ; $7c69: $11 $12 $11
	ld   [de], a                                     ; $7c6c: $12
	ld   de, $1111                                   ; $7c6d: $11 $11 $11
	ld   h, [hl]                                     ; $7c70: $66
	halt                                             ; $7c71: $76
	cp   b                                           ; $7c72: $b8
	ld   de, $8888                                   ; $7c73: $11 $88 $88
	adc  b                                           ; $7c76: $88
	adc  b                                           ; $7c77: $88
	adc  b                                           ; $7c78: $88
	adc  b                                           ; $7c79: $88
	adc  b                                           ; $7c7a: $88
	adc  b                                           ; $7c7b: $88
	adc  b                                           ; $7c7c: $88
	adc  b                                           ; $7c7d: $88
	adc  b                                           ; $7c7e: $88
	adc  b                                           ; $7c7f: $88
	adc  b                                           ; $7c80: $88
	adc  b                                           ; $7c81: $88
	adc  b                                           ; $7c82: $88
	adc  b                                           ; $7c83: $88
	adc  b                                           ; $7c84: $88
	adc  c                                           ; $7c85: $89
	adc  b                                           ; $7c86: $88
	adc  b                                           ; $7c87: $88
	adc  b                                           ; $7c88: $88
	adc  b                                           ; $7c89: $88
	adc  b                                           ; $7c8a: $88
	adc  b                                           ; $7c8b: $88
	adc  b                                           ; $7c8c: $88
	adc  b                                           ; $7c8d: $88
	adc  b                                           ; $7c8e: $88
	adc  b                                           ; $7c8f: $88
	adc  b                                           ; $7c90: $88
	adc  b                                           ; $7c91: $88
	adc  c                                           ; $7c92: $89
	adc  b                                           ; $7c93: $88
	adc  b                                           ; $7c94: $88
	adc  b                                           ; $7c95: $88
	adc  b                                           ; $7c96: $88
	adc  b                                           ; $7c97: $88
	adc  b                                           ; $7c98: $88
	adc  b                                           ; $7c99: $88
	adc  b                                           ; $7c9a: $88
	adc  b                                           ; $7c9b: $88
	adc  b                                           ; $7c9c: $88
	adc  b                                           ; $7c9d: $88
	adc  b                                           ; $7c9e: $88
	add  a                                           ; $7c9f: $87
	adc  c                                           ; $7ca0: $89
	adc  b                                           ; $7ca1: $88
	adc  b                                           ; $7ca2: $88
	adc  b                                           ; $7ca3: $88
	sbc  b                                           ; $7ca4: $98
	adc  c                                           ; $7ca5: $89
	adc  b                                           ; $7ca6: $88
	adc  b                                           ; $7ca7: $88
	adc  b                                           ; $7ca8: $88
	adc  b                                           ; $7ca9: $88
	adc  c                                           ; $7caa: $89
	adc  b                                           ; $7cab: $88
	sbc  b                                           ; $7cac: $98
	adc  b                                           ; $7cad: $88
	adc  b                                           ; $7cae: $88
	adc  b                                           ; $7caf: $88
	add  a                                           ; $7cb0: $87
	sbc  b                                           ; $7cb1: $98
	adc  b                                           ; $7cb2: $88
	ld   a, b                                        ; $7cb3: $78
	adc  b                                           ; $7cb4: $88
	sbc  b                                           ; $7cb5: $98
	adc  b                                           ; $7cb6: $88
	ld   a, b                                        ; $7cb7: $78
	sub  a                                           ; $7cb8: $97
	adc  b                                           ; $7cb9: $88
	adc  b                                           ; $7cba: $88
	adc  c                                           ; $7cbb: $89
	ld   a, b                                        ; $7cbc: $78
	adc  b                                           ; $7cbd: $88
	adc  c                                           ; $7cbe: $89
	adc  b                                           ; $7cbf: $88
	add  a                                           ; $7cc0: $87
	sub  a                                           ; $7cc1: $97
	adc  b                                           ; $7cc2: $88
	ld   a, c                                        ; $7cc3: $79
	sub  a                                           ; $7cc4: $97
	adc  b                                           ; $7cc5: $88
	adc  b                                           ; $7cc6: $88
	adc  b                                           ; $7cc7: $88
	adc  b                                           ; $7cc8: $88
	ld   a, c                                        ; $7cc9: $79
	add  a                                           ; $7cca: $87
	adc  b                                           ; $7ccb: $88
	ld   a, c                                        ; $7ccc: $79
	add  a                                           ; $7ccd: $87
	adc  b                                           ; $7cce: $88
	adc  c                                           ; $7ccf: $89
	ld   a, b                                        ; $7cd0: $78
	add  a                                           ; $7cd1: $87
	adc  b                                           ; $7cd2: $88
	ld   a, b                                        ; $7cd3: $78
	add  a                                           ; $7cd4: $87
	sub  a                                           ; $7cd5: $97
	ld   a, c                                        ; $7cd6: $79
	ld   a, b                                        ; $7cd7: $78
	sbc  b                                           ; $7cd8: $98
	adc  b                                           ; $7cd9: $88
	adc  b                                           ; $7cda: $88
	ld   a, c                                        ; $7cdb: $79
	ld   a, b                                        ; $7cdc: $78
	add  a                                           ; $7cdd: $87
	add  a                                           ; $7cde: $87
	adc  b                                           ; $7cdf: $88
	ld   a, c                                        ; $7ce0: $79
	ld   a, b                                        ; $7ce1: $78
	adc  b                                           ; $7ce2: $88
	adc  b                                           ; $7ce3: $88
	adc  c                                           ; $7ce4: $89
	adc  b                                           ; $7ce5: $88
	sub  a                                           ; $7ce6: $97
	sub  a                                           ; $7ce7: $97
	ld   a, c                                        ; $7ce8: $79
	ld   a, c                                        ; $7ce9: $79
	add  a                                           ; $7cea: $87
	xor  b                                           ; $7ceb: $a8
	ld   a, c                                        ; $7cec: $79
	ld   [hl], a                                     ; $7ced: $77
	add  a                                           ; $7cee: $87
	sub  a                                           ; $7cef: $97
	sbc  c                                           ; $7cf0: $99
	ld   a, c                                        ; $7cf1: $79
	adc  c                                           ; $7cf2: $89
	ld   [hl], a                                     ; $7cf3: $77
	sub  a                                           ; $7cf4: $97
	ld   a, b                                        ; $7cf5: $78
	add  a                                           ; $7cf6: $87
	ld   a, b                                        ; $7cf7: $78
	ld   [hl], a                                     ; $7cf8: $77
	sbc  b                                           ; $7cf9: $98
	ld   a, b                                        ; $7cfa: $78
	adc  b                                           ; $7cfb: $88
	sub  a                                           ; $7cfc: $97
	adc  b                                           ; $7cfd: $88
	ld   a, c                                        ; $7cfe: $79
	ld   a, c                                        ; $7cff: $79
	sbc  b                                           ; $7d00: $98
	add  a                                           ; $7d01: $87
	adc  c                                           ; $7d02: $89
	ld   [hl], a                                     ; $7d03: $77
	sbc  b                                           ; $7d04: $98
	sbc  b                                           ; $7d05: $98
	adc  c                                           ; $7d06: $89
	adc  b                                           ; $7d07: $88
	adc  c                                           ; $7d08: $89
	ld   a, b                                        ; $7d09: $78
	add  a                                           ; $7d0a: $87
	ld   a, b                                        ; $7d0b: $78
	add  a                                           ; $7d0c: $87
	ld   a, c                                        ; $7d0d: $79
	add  a                                           ; $7d0e: $87
	adc  c                                           ; $7d0f: $89
	ld   l, b                                        ; $7d10: $68
	and  [hl]                                        ; $7d11: $a6
	adc  c                                           ; $7d12: $89
	ld   [hl], a                                     ; $7d13: $77
	ld   a, b                                        ; $7d14: $78
	add  a                                           ; $7d15: $87
	sbc  c                                           ; $7d16: $99
	ld   a, b                                        ; $7d17: $78
	add  a                                           ; $7d18: $87
	adc  c                                           ; $7d19: $89
	ld   a, b                                        ; $7d1a: $78
	sub  a                                           ; $7d1b: $97
	add  a                                           ; $7d1c: $87
	ld   a, c                                        ; $7d1d: $79
	adc  b                                           ; $7d1e: $88
	ld   a, b                                        ; $7d1f: $78
	sbc  b                                           ; $7d20: $98
	ld   a, c                                        ; $7d21: $79
	sub  a                                           ; $7d22: $97
	adc  c                                           ; $7d23: $89
	ld   [hl], a                                     ; $7d24: $77
	ld   [hl], a                                     ; $7d25: $77
	add  [hl]                                        ; $7d26: $86
	xor  b                                           ; $7d27: $a8
	ld   a, c                                        ; $7d28: $79
	sbc  b                                           ; $7d29: $98
	sbc  c                                           ; $7d2a: $99
	sub  a                                           ; $7d2b: $97
	ld   a, c                                        ; $7d2c: $79
	ld   l, b                                        ; $7d2d: $68
	sub  [hl]                                        ; $7d2e: $96
	adc  b                                           ; $7d2f: $88
	ld   h, a                                        ; $7d30: $67
	sub  a                                           ; $7d31: $97
	ld   l, b                                        ; $7d32: $68
	sub  a                                           ; $7d33: $97
	adc  d                                           ; $7d34: $8a
	ld   [hl], a                                     ; $7d35: $77
	and  a                                           ; $7d36: $a7
	ld   a, c                                        ; $7d37: $79
	ld   [hl], a                                     ; $7d38: $77
	add  a                                           ; $7d39: $87
	adc  b                                           ; $7d3a: $88
	ld   a, c                                        ; $7d3b: $79
	add  a                                           ; $7d3c: $87
	adc  c                                           ; $7d3d: $89
	adc  b                                           ; $7d3e: $88
	ld   a, b                                        ; $7d3f: $78
	add  a                                           ; $7d40: $87
	ld   a, d                                        ; $7d41: $7a
	ld   [hl], a                                     ; $7d42: $77
	sub  [hl]                                        ; $7d43: $96
	sub  a                                           ; $7d44: $97
	adc  c                                           ; $7d45: $89
	ld   l, b                                        ; $7d46: $68
	sub  a                                           ; $7d47: $97
	adc  c                                           ; $7d48: $89
	add  [hl]                                        ; $7d49: $86
	sbc  c                                           ; $7d4a: $99
	ld   l, b                                        ; $7d4b: $68
	sbc  b                                           ; $7d4c: $98
	ld   [hl], a                                     ; $7d4d: $77
	and  a                                           ; $7d4e: $a7
	ld   a, c                                        ; $7d4f: $79
	and  [hl]                                        ; $7d50: $a6
	adc  c                                           ; $7d51: $89
	ld   l, b                                        ; $7d52: $68
	ld   a, c                                        ; $7d53: $79
	add  [hl]                                        ; $7d54: $86
	adc  d                                           ; $7d55: $8a
	ld   h, a                                        ; $7d56: $67
	ret  z                                           ; $7d57: $c8

	ld   e, d                                        ; $7d58: $5a
	sub  l                                           ; $7d59: $95
	ld   a, c                                        ; $7d5a: $79
	halt                                             ; $7d5b: $76
	sbc  b                                           ; $7d5c: $98
	ld   [hl], a                                     ; $7d5d: $77
	ld   a, d                                        ; $7d5e: $7a
	halt                                             ; $7d5f: $76
	and  a                                           ; $7d60: $a7
	ld   a, d                                        ; $7d61: $7a
	xor  b                                           ; $7d62: $a8
	ld   l, c                                        ; $7d63: $69
	sub  a                                           ; $7d64: $97
	ld   l, e                                        ; $7d65: $6b
	add  l                                           ; $7d66: $85
	adc  c                                           ; $7d67: $89
	ld   h, a                                        ; $7d68: $67
	sub  a                                           ; $7d69: $97
	ld   a, d                                        ; $7d6a: $7a
	ld   [hl], l                                     ; $7d6b: $75
	cp   b                                           ; $7d6c: $b8
	ld   e, c                                        ; $7d6d: $59
	sbc  b                                           ; $7d6e: $98
	sub  a                                           ; $7d6f: $97
	xor  d                                           ; $7d70: $aa
	ld   e, d                                        ; $7d71: $5a
	and  a                                           ; $7d72: $a7
	sbc  d                                           ; $7d73: $9a
	ld   [hl], h                                     ; $7d74: $74
	and  [hl]                                        ; $7d75: $a6
	sub  a                                           ; $7d76: $97
	ld   c, d                                        ; $7d77: $4a
	adc  b                                           ; $7d78: $88
	sub  a                                           ; $7d79: $97
	ld   a, [hl-]                                    ; $7d7a: $3a
	and  l                                           ; $7d7b: $a5
	sbc  h                                           ; $7d7c: $9c
	and  l                                           ; $7d7d: $a5
	cp   c                                           ; $7d7e: $b9
	ld   a, d                                        ; $7d7f: $7a
	or   l                                           ; $7d80: $b5
	ld   a, h                                        ; $7d81: $7c
	ld   e, b                                        ; $7d82: $58
	sub  h                                           ; $7d83: $94
	or   a                                           ; $7d84: $b7
	jr   c, @+$48                                    ; $7d85: $38 $46

	ld   [hl], l                                     ; $7d87: $75
	ret                                              ; $7d88: $c9


	ld   e, d                                        ; $7d89: $5a
	reti                                             ; $7d8a: $d9


	or   a                                           ; $7d8b: $b7
	xor  [hl]                                        ; $7d8c: $ae
	ld   c, d                                        ; $7d8d: $4a
	add  sp, -$77                                    ; $7d8e: $e8 $89
	ld   h, [hl]                                     ; $7d90: $66
	ld   h, d                                        ; $7d91: $62
	ld   b, l                                        ; $7d92: $45
	ld   d, e                                        ; $7d93: $53
	dec  d                                           ; $7d94: $15
	and  e                                           ; $7d95: $a3
	ld   a, a                                        ; $7d96: $7f
	or   a                                           ; $7d97: $b7
	rst  $38                                         ; $7d98: $ff
	call z, $f7bf                                    ; $7d99: $cc $bf $f7
	ld   a, l                                        ; $7d9c: $7d
	add  d                                           ; $7d9d: $82
	ld   de, $1111                                   ; $7d9e: $11 $11 $11
	ld   b, a                                        ; $7da1: $47
	ld   de, $debf                                   ; $7da2: $11 $bf $de
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	rst  $38                                         ; $7da7: $ff
	db   $fc                                         ; $7da8: $fc
	inc  d                                           ; $7da9: $14
	ld   de, $1111                                   ; $7daa: $11 $11 $11
	ld   de, $ff39                                   ; $7dad: $11 $39 $ff
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	rst  JumpTable                                         ; $7db2: $df
	rst  $38                                         ; $7db3: $ff
	and  c                                           ; $7db4: $a1
	ld   de, $1111                                   ; $7db5: $11 $11 $11
	ld   de, $ff9c                                   ; $7db8: $11 $9c $ff
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	rst  $38                                         ; $7dbd: $ff
	sub  c                                           ; $7dbe: $91
	db   $fc                                         ; $7dbf: $fc
	ld   de, $1111                                   ; $7dc0: $11 $11 $11
	ld   de, wEnterNameReturnSubstate                                   ; $7dc3: $11 $47 $c9
	rst  $38                                         ; $7dc6: $ff
	cp   $ff                                         ; $7dc7: $fe $ff
	cp   [hl]                                        ; $7dc9: $be
	adc  l                                           ; $7dca: $8d
	push af                                          ; $7dcb: $f5
	ld   hl, $1111                                   ; $7dcc: $21 $11 $11
	ld   de, $fd1b                                   ; $7dcf: $11 $1b $fd
	rst  $38                                         ; $7dd2: $ff
	rst  $38                                         ; $7dd3: $ff
	xor  a                                           ; $7dd4: $af
	rst  $38                                         ; $7dd5: $ff
	cpl                                              ; $7dd6: $2f
	sub  e                                           ; $7dd7: $93
	ld   hl, $1111                                   ; $7dd8: $21 $11 $11
	dec  d                                           ; $7ddb: $15
	dec  [hl]                                        ; $7ddc: $35
	rst  $38                                         ; $7ddd: $ff
	rst  $38                                         ; $7dde: $ff
	rst  $38                                         ; $7ddf: $ff
	rst  $38                                         ; $7de0: $ff
	ld   a, [hl]                                     ; $7de1: $7e
	di                                               ; $7de2: $f3
	ld   d, c                                        ; $7de3: $51
	ld   de, $1111                                   ; $7de4: $11 $11 $11
	ld   h, e                                        ; $7de7: $63
	adc  a                                           ; $7de8: $8f
	rst  $38                                         ; $7de9: $ff
	rst  $38                                         ; $7dea: $ff
	rst  $38                                         ; $7deb: $ff
	db   $e3                                         ; $7dec: $e3
	res  4, d                                        ; $7ded: $cb $a2
	ld   b, c                                        ; $7def: $41
	ld   de, $3111                                   ; $7df0: $11 $11 $31
	ld   h, $ff                                      ; $7df3: $26 $ff
	rst  $38                                         ; $7df5: $ff
	rst  $38                                         ; $7df6: $ff
	sbc  b                                           ; $7df7: $98
	push af                                          ; $7df8: $f5
	rst  $30                                         ; $7df9: $f7
	ld   a, c                                        ; $7dfa: $79
	ld   h, c                                        ; $7dfb: $61
	ld   de, $1611                                   ; $7dfc: $11 $11 $16
	inc  [hl]                                        ; $7dff: $34
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	xor  h                                           ; $7e02: $ac
	sub  h                                           ; $7e03: $94
	ld   sp, hl                                      ; $7e04: $f9
	db   $fd                                         ; $7e05: $fd
	ld   h, c                                        ; $7e06: $61
	ld   de, $1111                                   ; $7e07: $11 $11 $11

jr_0b0_7e0a:
	jr   jr_0b0_7e0a                                 ; $7e0a: $18 $fe

	rst  $38                                         ; $7e0c: $ff
	or   $7f                                         ; $7e0d: $f6 $7f
	ld   e, a                                        ; $7e0f: $5f
	ei                                               ; $7e10: $fb
	di                                               ; $7e11: $f3
	ld   b, c                                        ; $7e12: $41
	ld   de, $1111                                   ; $7e13: $11 $11 $11
	add  hl, de                                      ; $7e16: $19
	rst  $38                                         ; $7e17: $ff
	rst  $38                                         ; $7e18: $ff
	cp   $6f                                         ; $7e19: $fe $6f
	push af                                          ; $7e1b: $f5
	rst  $30                                         ; $7e1c: $f7
	and  a                                           ; $7e1d: $a7
	ld   sp, $1211                                   ; $7e1e: $31 $11 $12
	ld   hl, $8f1c                                   ; $7e21: $21 $1c $8f
	rst  $38                                         ; $7e24: $ff
	rst  JumpTable                                         ; $7e25: $df
	call nc, $defa                                   ; $7e26: $d4 $fa $de
	ld   h, d                                        ; $7e29: $62
	ld   de, $1111                                   ; $7e2a: $11 $11 $11
	ld   de, $ffcf                                   ; $7e2d: $11 $cf $ff
	rst  $30                                         ; $7e30: $f7
	rst  $38                                         ; $7e31: $ff
	rst  $20                                         ; $7e32: $e7
	adc  [hl]                                        ; $7e33: $8e
	call z, $11b2                                    ; $7e34: $cc $b2 $11
	ld   de, $1111                                   ; $7e37: $11 $11 $11
	ld   a, d                                        ; $7e3a: $7a
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	dec  de                                          ; $7e3d: $1b
	cp   $ff                                         ; $7e3e: $fe $ff
	adc  d                                           ; $7e40: $8a
	ld   b, c                                        ; $7e41: $41
	ld   de, $1111                                   ; $7e42: $11 $11 $11
	inc  de                                          ; $7e45: $13
	cp   a                                           ; $7e46: $bf
	rst  $38                                         ; $7e47: $ff
	rst  $38                                         ; $7e48: $ff
	ld   c, a                                        ; $7e49: $4f
	db   $dd                                         ; $7e4a: $dd
	di                                               ; $7e4b: $f3
	ei                                               ; $7e4c: $fb
	ld   [hl], c                                     ; $7e4d: $71
	ld   de, $1911                                   ; $7e4e: $11 $11 $19
	inc  de                                          ; $7e51: $13
	ld   a, l                                        ; $7e52: $7d
	rst  $38                                         ; $7e53: $ff
	rst  $38                                         ; $7e54: $ff
	inc  e                                           ; $7e55: $1c
	ld   sp, hl                                      ; $7e56: $f9
	or   [hl]                                        ; $7e57: $b6
	ld   l, a                                        ; $7e58: $6f
	or   l                                           ; $7e59: $b5
	ld   de, $3311                                   ; $7e5a: $11 $11 $33
	ld   de, $ff1f                                   ; $7e5d: $11 $1f $ff
	rst  $38                                         ; $7e60: $ff
	ld   l, h                                        ; $7e61: $6c
	ld   l, c                                        ; $7e62: $69
	rst  $38                                         ; $7e63: $ff
	db   $fd                                         ; $7e64: $fd
	sub  c                                           ; $7e65: $91
	ld   de, $1111                                   ; $7e66: $11 $11 $11
	ld   de, $ff3f                                   ; $7e69: $11 $3f $ff
	rst  $38                                         ; $7e6c: $ff
	ld   h, [hl]                                     ; $7e6d: $66
	cp   $fd                                         ; $7e6e: $fe $fd
	ld   [hl], a                                     ; $7e70: $77
	ld   l, h                                        ; $7e71: $6c
	ld   hl, $1611                                   ; $7e72: $21 $11 $16
	or   c                                           ; $7e75: $b1
	inc  de                                          ; $7e76: $13
	rst  $38                                         ; $7e77: $ff
	rst  $38                                         ; $7e78: $ff
	pop  af                                          ; $7e79: $f1
	ld   l, [hl]                                     ; $7e7a: $6e
	rst  $38                                         ; $7e7b: $ff
	ld   a, [$1155]                                  ; $7e7c: $fa $55 $11
	ld   de, $1111                                   ; $7e7f: $11 $11 $11
	dec  d                                           ; $7e82: $15
	rst  $38                                         ; $7e83: $ff
	rst  $38                                         ; $7e84: $ff
	ld   a, [$ff53]                                  ; $7e85: $fa $53 $ff
	rst  $38                                         ; $7e88: $ff
	ld   a, b                                        ; $7e89: $78
	ld   b, c                                        ; $7e8a: $41
	ld   de, $0111                                   ; $7e8b: $11 $11 $01
	ld   de, $ff7f                                   ; $7e8e: $11 $7f $ff
	rst  $38                                         ; $7e91: $ff
	ld   sp, $ff6e                                   ; $7e92: $31 $6e $ff
	rst  $30                                         ; $7e95: $f7
	ld   de, $1111                                   ; $7e96: $11 $11 $11
	ld   de, $8a11                                   ; $7e99: $11 $11 $8a
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	rst  $38                                         ; $7e9e: $ff
	halt                                             ; $7e9f: $76
	adc  d                                           ; $7ea0: $8a
	rst  $38                                         ; $7ea1: $ff
	ld   a, [$1111]                                  ; $7ea2: $fa $11 $11
	inc  de                                          ; $7ea5: $13
	ld   bc, $1f11                                   ; $7ea6: $01 $11 $1f
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	push af                                          ; $7eab: $f5
	adc  d                                           ; $7eac: $8a
	rst  $38                                         ; $7ead: $ff
	rst  $38                                         ; $7eae: $ff
	ld   [hl], d                                     ; $7eaf: $72
	ld   de, $1411                                   ; $7eb0: $11 $11 $14
	add  h                                           ; $7eb3: $84
	inc  hl                                          ; $7eb4: $23
	rst  JumpTable                                         ; $7eb5: $df
	rst  $38                                         ; $7eb6: $ff
	cp   $43                                         ; $7eb7: $fe $43
	xor  $fb                                         ; $7eb9: $ee $fb
	ld   [hl+], a                                    ; $7ebb: $22
	inc  d                                           ; $7ebc: $14
	ld   b, c                                        ; $7ebd: $41
	ld   de, $3411                                   ; $7ebe: $11 $11 $34
	ld   de, $ff2b                                   ; $7ec1: $11 $2b $ff
	rst  $38                                         ; $7ec4: $ff
	ld   [hl], d                                     ; $7ec5: $72
	rla                                              ; $7ec6: $17
	rst  $28                                         ; $7ec7: $ef
	rst  $38                                         ; $7ec8: $ff
	ld   [hl], e                                     ; $7ec9: $73
	ld   de, $1611                                   ; $7eca: $11 $11 $16
	or   a                                           ; $7ecd: $b7
	ld   de, $df11                                   ; $7ece: $11 $11 $df
	rst  $38                                         ; $7ed1: $ff
	pop  hl                                          ; $7ed2: $e1
	ld   de, $ff9f                                   ; $7ed3: $11 $9f $ff
	ld   hl, sp-$7a                                  ; $7ed6: $f8 $86
	ld   d, c                                        ; $7ed8: $51
	ld   de, $fe3b                                   ; $7ed9: $11 $3b $fe
	ld   h, c                                        ; $7edc: $61
	ld   de, $fd9f                                   ; $7edd: $11 $9f $fd
	xor  c                                           ; $7ee0: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ee1: $cf
	cp   $a7                                         ; $7ee2: $fe $a7
	sbc  h                                           ; $7ee4: $9c
	rst  $38                                         ; $7ee5: $ff
	sub  c                                           ; $7ee6: $91
	ld   de, $9828                                   ; $7ee7: $11 $28 $98
	ld   b, c                                        ; $7eea: $41
	ld   [de], a                                     ; $7eeb: $12
	ld   a, b                                        ; $7eec: $78
	xor  d                                           ; $7eed: $aa
	adc  d                                           ; $7eee: $8a
	sbc  e                                           ; $7eef: $9b
	call c, $acb9                                    ; $7ef0: $dc $b9 $ac
	rst  $28                                         ; $7ef3: $ef
	db   $eb                                         ; $7ef4: $eb
	ld   h, e                                        ; $7ef5: $63
	inc  de                                          ; $7ef6: $13
	ld   e, e                                        ; $7ef7: $5b
	rst  $38                                         ; $7ef8: $ff
	or   c                                           ; $7ef9: $b1
	ld   de, $ff1c                                   ; $7efa: $11 $1c $ff
	add  d                                           ; $7efd: $82
	ld   [de], a                                     ; $7efe: $12
	sbc  [hl]                                        ; $7eff: $9e
	reti                                             ; $7f00: $d9


	ld   d, l                                        ; $7f01: $55
	cp   a                                           ; $7f02: $bf
	rst  $38                                         ; $7f03: $ff
	and  h                                           ; $7f04: $a4
	daa                                              ; $7f05: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f06: $cf
	sub  $11                                         ; $7f07: $d6 $11
	add  hl, hl                                      ; $7f09: $29
	call z, $3495                                    ; $7f0a: $cc $95 $34
	ld   d, l                                        ; $7f0d: $55
	ld   l, b                                        ; $7f0e: $68
	cp   e                                           ; $7f0f: $bb
	add  l                                           ; $7f10: $85
	ld   b, h                                        ; $7f11: $44
	ld   a, e                                        ; $7f12: $7b
	rst  $38                                         ; $7f13: $ff
	or   l                                           ; $7f14: $b5
	inc  de                                          ; $7f15: $13
	xor  a                                           ; $7f16: $af
	rst  $38                                         ; $7f17: $ff
	add  c                                           ; $7f18: $81
	inc  de                                          ; $7f19: $13
	ld   a, e                                        ; $7f1a: $7b
	call c, $1271                                    ; $7f1b: $dc $71 $12
	ld   a, h                                        ; $7f1e: $7c
	jp   c, Jump_0b0_5785                            ; $7f1f: $da $85 $57

	xor  l                                           ; $7f22: $ad
	reti                                             ; $7f23: $d9


	ld   d, d                                        ; $7f24: $52
	add  hl, sp                                      ; $7f25: $39
	db   $dd                                         ; $7f26: $dd
	and  e                                           ; $7f27: $a3
	inc  h                                           ; $7f28: $24
	sbc  e                                           ; $7f29: $9b
	call z, Call_0b0_4874                            ; $7f2a: $cc $74 $48
	cp   l                                           ; $7f2d: $bd
	ret                                              ; $7f2e: $c9


	adc  b                                           ; $7f2f: $88
	adc  b                                           ; $7f30: $88
	add  a                                           ; $7f31: $87
	ld   d, e                                        ; $7f32: $53
	ld   l, e                                        ; $7f33: $6b
	jp   c, $1441                                    ; $7f34: $da $41 $14

	rst  $38                                         ; $7f37: $ff
	ld   hl, sp+$11                                  ; $7f38: $f8 $11
	ccf                                              ; $7f3a: $3f
	rst  $38                                         ; $7f3b: $ff
	sub  c                                           ; $7f3c: $91
	ld   de, $fccf                                   ; $7f3d: $11 $cf $fc
	ld   de, $ff1b                                   ; $7f40: $11 $1b $ff
	and  c                                           ; $7f43: $a1
	ld   [de], a                                     ; $7f44: $12
	rst  JumpTable                                         ; $7f45: $df
	ld   sp, hl                                      ; $7f46: $f9
	ld   de, $ff3c                                   ; $7f47: $11 $3c $ff
	or   e                                           ; $7f4a: $b3
	inc  d                                           ; $7f4b: $14
	adc  e                                           ; $7f4c: $8b
	and  a                                           ; $7f4d: $a7
	ld   b, h                                        ; $7f4e: $44
	ld   l, b                                        ; $7f4f: $68
	add  a                                           ; $7f50: $87
	ld   h, [hl]                                     ; $7f51: $66
	adc  e                                           ; $7f52: $8b
	cp   b                                           ; $7f53: $b8
	ld   a, b                                        ; $7f54: $78
	sbc  c                                           ; $7f55: $99
	sbc  d                                           ; $7f56: $9a
	sub  a                                           ; $7f57: $97
	ld   h, [hl]                                     ; $7f58: $66
	adc  c                                           ; $7f59: $89
	sbc  b                                           ; $7f5a: $98
	ld   [hl], l                                     ; $7f5b: $75
	ld   d, a                                        ; $7f5c: $57
	sbc  c                                           ; $7f5d: $99
	adc  b                                           ; $7f5e: $88
	ld   [hl], a                                     ; $7f5f: $77
	ld   a, c                                        ; $7f60: $79
	adc  c                                           ; $7f61: $89
	add  a                                           ; $7f62: $87
	ld   [hl], a                                     ; $7f63: $77
	adc  c                                           ; $7f64: $89
	sbc  b                                           ; $7f65: $98
	ld   a, b                                        ; $7f66: $78
	sbc  c                                           ; $7f67: $99
	add  a                                           ; $7f68: $87
	ld   h, [hl]                                     ; $7f69: $66
	ld   a, c                                        ; $7f6a: $79
	sbc  b                                           ; $7f6b: $98
	halt                                             ; $7f6c: $76
	ld   h, a                                        ; $7f6d: $67
	sbc  c                                           ; $7f6e: $99
	sub  a                                           ; $7f6f: $97
	ld   [hl], a                                     ; $7f70: $77
	adc  c                                           ; $7f71: $89
	sbc  c                                           ; $7f72: $99
	add  a                                           ; $7f73: $87
	ld   a, b                                        ; $7f74: $78
	adc  c                                           ; $7f75: $89
	add  a                                           ; $7f76: $87
	ld   [hl], a                                     ; $7f77: $77
	ld   [hl], a                                     ; $7f78: $77
	adc  b                                           ; $7f79: $88
	ld   [hl], a                                     ; $7f7a: $77
	ld   a, b                                        ; $7f7b: $78
	adc  b                                           ; $7f7c: $88
	add  a                                           ; $7f7d: $87
	ld   a, b                                        ; $7f7e: $78
	adc  b                                           ; $7f7f: $88
	adc  b                                           ; $7f80: $88
	adc  b                                           ; $7f81: $88
	sbc  c                                           ; $7f82: $99
	adc  b                                           ; $7f83: $88
	ld   [hl], a                                     ; $7f84: $77
	ld   a, b                                        ; $7f85: $78
	adc  b                                           ; $7f86: $88
	ld   [hl], a                                     ; $7f87: $77
	ld   [hl], a                                     ; $7f88: $77
	adc  b                                           ; $7f89: $88
	add  a                                           ; $7f8a: $87
	ld   [hl], a                                     ; $7f8b: $77
	ld   a, b                                        ; $7f8c: $78
	adc  b                                           ; $7f8d: $88
	add  a                                           ; $7f8e: $87
	ld   [hl], a                                     ; $7f8f: $77
	adc  c                                           ; $7f90: $89
	sbc  b                                           ; $7f91: $98
	add  a                                           ; $7f92: $87
	ld   [hl], a                                     ; $7f93: $77
	adc  b                                           ; $7f94: $88
	sbc  b                                           ; $7f95: $98
	add  a                                           ; $7f96: $87
	ld   [hl], a                                     ; $7f97: $77
	adc  b                                           ; $7f98: $88
	adc  b                                           ; $7f99: $88
	adc  b                                           ; $7f9a: $88
	adc  b                                           ; $7f9b: $88
	adc  b                                           ; $7f9c: $88
	adc  b                                           ; $7f9d: $88
	adc  b                                           ; $7f9e: $88
	adc  b                                           ; $7f9f: $88
	adc  b                                           ; $7fa0: $88
	adc  b                                           ; $7fa1: $88
	adc  b                                           ; $7fa2: $88
	adc  b                                           ; $7fa3: $88
	ld   [hl], a                                     ; $7fa4: $77
	adc  b                                           ; $7fa5: $88
	adc  b                                           ; $7fa6: $88
	adc  b                                           ; $7fa7: $88
	adc  b                                           ; $7fa8: $88
	adc  b                                           ; $7fa9: $88
	adc  b                                           ; $7faa: $88
	ld   [hl], a                                     ; $7fab: $77
	ld   a, b                                        ; $7fac: $78
	sbc  b                                           ; $7fad: $98
	sbc  b                                           ; $7fae: $98
	add  a                                           ; $7faf: $87
	adc  b                                           ; $7fb0: $88
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	ld   a, b                                        ; $7fb3: $78
	adc  b                                           ; $7fb4: $88
	adc  b                                           ; $7fb5: $88
	adc  b                                           ; $7fb6: $88
	adc  b                                           ; $7fb7: $88
	adc  b                                           ; $7fb8: $88
	adc  b                                           ; $7fb9: $88
	adc  b                                           ; $7fba: $88
	sbc  b                                           ; $7fbb: $98
	adc  b                                           ; $7fbc: $88
	adc  b                                           ; $7fbd: $88
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	ld   [hl], a                                     ; $7fc0: $77
	adc  b                                           ; $7fc1: $88
	sbc  b                                           ; $7fc2: $98
	add  a                                           ; $7fc3: $87
	ld   a, b                                        ; $7fc4: $78
	adc  c                                           ; $7fc5: $89
	sbc  c                                           ; $7fc6: $99
	adc  b                                           ; $7fc7: $88
	adc  c                                           ; $7fc8: $89
	sbc  b                                           ; $7fc9: $98
	adc  b                                           ; $7fca: $88
	adc  b                                           ; $7fcb: $88
	adc  b                                           ; $7fcc: $88
	adc  b                                           ; $7fcd: $88
	ld   [hl], a                                     ; $7fce: $77
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	adc  b                                           ; $7fd1: $88
	adc  b                                           ; $7fd2: $88
	sbc  b                                           ; $7fd3: $98
	sbc  b                                           ; $7fd4: $98
	adc  b                                           ; $7fd5: $88
	adc  b                                           ; $7fd6: $88
	adc  b                                           ; $7fd7: $88
	adc  b                                           ; $7fd8: $88
	adc  b                                           ; $7fd9: $88
	adc  b                                           ; $7fda: $88
	adc  b                                           ; $7fdb: $88
	adc  b                                           ; $7fdc: $88
	adc  b                                           ; $7fdd: $88
	adc  b                                           ; $7fde: $88
	sbc  b                                           ; $7fdf: $98
	sbc  b                                           ; $7fe0: $98
	adc  b                                           ; $7fe1: $88
	adc  b                                           ; $7fe2: $88
	sbc  b                                           ; $7fe3: $98
	adc  b                                           ; $7fe4: $88
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	add  a                                           ; $7fe7: $87
	ld   a, b                                        ; $7fe8: $78
	adc  b                                           ; $7fe9: $88
	adc  b                                           ; $7fea: $88
	adc  b                                           ; $7feb: $88
	adc  c                                           ; $7fec: $89
	sbc  c                                           ; $7fed: $99
	adc  b                                           ; $7fee: $88
	adc  b                                           ; $7fef: $88
	adc  b                                           ; $7ff0: $88
	adc  b                                           ; $7ff1: $88
	adc  b                                           ; $7ff2: $88
	adc  b                                           ; $7ff3: $88
	adc  b                                           ; $7ff4: $88
	adc  b                                           ; $7ff5: $88
	adc  b                                           ; $7ff6: $88
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	adc  b                                           ; $7ff9: $88
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	adc  b                                           ; $7ffd: $88
	adc  c                                           ; $7ffe: $89
	adc  b                                           ; $7fff: $88
