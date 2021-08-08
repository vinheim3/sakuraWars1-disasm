; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ea", ROMX[$4000], BANK[$ea]

	adc  c                                           ; $4000: $89
	adc  b                                           ; $4001: $88
	sub  a                                           ; $4002: $97
	ld   l, b                                        ; $4003: $68
	ld   [hl], a                                     ; $4004: $77
	ld   a, b                                        ; $4005: $78
	sbc  c                                           ; $4006: $99
	sbc  b                                           ; $4007: $98
	sbc  b                                           ; $4008: $98
	add  a                                           ; $4009: $87
	ld   [hl], a                                     ; $400a: $77
	ld   [hl], a                                     ; $400b: $77
	adc  b                                           ; $400c: $88
	adc  c                                           ; $400d: $89
	adc  c                                           ; $400e: $89
	sbc  b                                           ; $400f: $98
	ld   a, b                                        ; $4010: $78
	ld   [hl], a                                     ; $4011: $77
	ld   [hl], a                                     ; $4012: $77
	adc  b                                           ; $4013: $88
	adc  b                                           ; $4014: $88
	sbc  c                                           ; $4015: $99
	adc  b                                           ; $4016: $88
	add  a                                           ; $4017: $87
	ld   [hl], a                                     ; $4018: $77
	ld   a, c                                        ; $4019: $79
	sbc  b                                           ; $401a: $98
	adc  b                                           ; $401b: $88
	sbc  c                                           ; $401c: $99
	add  a                                           ; $401d: $87
	ld   a, b                                        ; $401e: $78
	ld   [hl], a                                     ; $401f: $77
	sbc  b                                           ; $4020: $98
	adc  c                                           ; $4021: $89
	sbc  b                                           ; $4022: $98
	sbc  b                                           ; $4023: $98
	adc  b                                           ; $4024: $88
	ld   [hl], a                                     ; $4025: $77
	ld   [hl], a                                     ; $4026: $77
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	sbc  b                                           ; $4029: $98
	sbc  c                                           ; $402a: $99
	adc  b                                           ; $402b: $88
	ld   a, b                                        ; $402c: $78
	ld   a, b                                        ; $402d: $78
	adc  c                                           ; $402e: $89
	adc  b                                           ; $402f: $88
	sbc  b                                           ; $4030: $98
	add  a                                           ; $4031: $87
	adc  b                                           ; $4032: $88
	ld   [hl], a                                     ; $4033: $77
	ld   a, b                                        ; $4034: $78
	adc  c                                           ; $4035: $89
	sbc  b                                           ; $4036: $98
	sbc  c                                           ; $4037: $99
	sbc  b                                           ; $4038: $98
	add  a                                           ; $4039: $87
	ld   a, b                                        ; $403a: $78
	ld   a, b                                        ; $403b: $78
	adc  b                                           ; $403c: $88
	adc  b                                           ; $403d: $88
	adc  b                                           ; $403e: $88
	sub  a                                           ; $403f: $97
	adc  b                                           ; $4040: $88
	ld   a, b                                        ; $4041: $78
	adc  b                                           ; $4042: $88
	adc  c                                           ; $4043: $89
	sbc  b                                           ; $4044: $98
	adc  c                                           ; $4045: $89
	adc  b                                           ; $4046: $88
	ld   a, b                                        ; $4047: $78
	ld   a, b                                        ; $4048: $78
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	adc  b                                           ; $404b: $88
	sbc  b                                           ; $404c: $98
	adc  b                                           ; $404d: $88
	ld   a, b                                        ; $404e: $78
	ld   a, b                                        ; $404f: $78
	adc  c                                           ; $4050: $89
	adc  b                                           ; $4051: $88
	sbc  b                                           ; $4052: $98
	sbc  b                                           ; $4053: $98
	add  a                                           ; $4054: $87
	sbc  b                                           ; $4055: $98
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	adc  c                                           ; $4058: $89
	ld   a, b                                        ; $4059: $78
	adc  b                                           ; $405a: $88
	adc  b                                           ; $405b: $88
	sbc  b                                           ; $405c: $98
	sbc  b                                           ; $405d: $98
	adc  b                                           ; $405e: $88
	adc  b                                           ; $405f: $88
	adc  b                                           ; $4060: $88
	adc  b                                           ; $4061: $88
	ld   a, b                                        ; $4062: $78
	adc  b                                           ; $4063: $88
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
	adc  b                                           ; $406f: $88
	adc  b                                           ; $4070: $88
	adc  b                                           ; $4071: $88
	adc  c                                           ; $4072: $89
	adc  b                                           ; $4073: $88
	adc  c                                           ; $4074: $89
	adc  b                                           ; $4075: $88
	adc  b                                           ; $4076: $88
	adc  b                                           ; $4077: $88
	sbc  b                                           ; $4078: $98
	adc  b                                           ; $4079: $88
	adc  b                                           ; $407a: $88
	adc  b                                           ; $407b: $88
	adc  b                                           ; $407c: $88
	adc  b                                           ; $407d: $88
	adc  b                                           ; $407e: $88
	adc  b                                           ; $407f: $88
	adc  b                                           ; $4080: $88
	adc  b                                           ; $4081: $88
	adc  b                                           ; $4082: $88
	adc  b                                           ; $4083: $88
	adc  b                                           ; $4084: $88
	adc  b                                           ; $4085: $88
	adc  b                                           ; $4086: $88
	adc  b                                           ; $4087: $88
	adc  b                                           ; $4088: $88
	adc  b                                           ; $4089: $88
	adc  b                                           ; $408a: $88
	adc  b                                           ; $408b: $88
	adc  b                                           ; $408c: $88
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	adc  b                                           ; $408f: $88
	adc  b                                           ; $4090: $88
	adc  b                                           ; $4091: $88
	adc  b                                           ; $4092: $88
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

Jump_0ea_4191:
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
	sbc  b                                           ; $4270: $98
	ld   a, b                                        ; $4271: $78
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
	adc  c                                           ; $427d: $89
	add  a                                           ; $427e: $87
	adc  b                                           ; $427f: $88
	adc  b                                           ; $4280: $88
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	adc  b                                           ; $4284: $88
	adc  c                                           ; $4285: $89
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	sbc  b                                           ; $428d: $98
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	adc  c                                           ; $4293: $89
	add  a                                           ; $4294: $87
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
	adc  c                                           ; $42af: $89
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	adc  b                                           ; $42b3: $88
	adc  b                                           ; $42b4: $88
	add  a                                           ; $42b5: $87
	ld   a, c                                        ; $42b6: $79
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	ld   a, b                                        ; $42b9: $78
	sbc  b                                           ; $42ba: $98
	adc  b                                           ; $42bb: $88
	ld   [hl], a                                     ; $42bc: $77
	adc  b                                           ; $42bd: $88
	adc  c                                           ; $42be: $89
	adc  b                                           ; $42bf: $88
	sbc  b                                           ; $42c0: $98
	adc  b                                           ; $42c1: $88
	add  a                                           ; $42c2: $87
	ld   a, b                                        ; $42c3: $78
	adc  b                                           ; $42c4: $88
	sbc  c                                           ; $42c5: $99
	adc  c                                           ; $42c6: $89
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	add  a                                           ; $42c9: $87
	ld   a, b                                        ; $42ca: $78
	sbc  b                                           ; $42cb: $98
	adc  c                                           ; $42cc: $89
	adc  b                                           ; $42cd: $88
	adc  b                                           ; $42ce: $88
	sub  a                                           ; $42cf: $97
	ld   [hl], a                                     ; $42d0: $77
	ld   a, c                                        ; $42d1: $79
	adc  b                                           ; $42d2: $88
	adc  c                                           ; $42d3: $89
	adc  c                                           ; $42d4: $89
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	ld   [hl], a                                     ; $42d7: $77
	adc  c                                           ; $42d8: $89
	sbc  b                                           ; $42d9: $98
	adc  b                                           ; $42da: $88
	sbc  c                                           ; $42db: $99
	adc  c                                           ; $42dc: $89
	add  a                                           ; $42dd: $87
	ld   [hl], a                                     ; $42de: $77
	sbc  b                                           ; $42df: $98
	adc  b                                           ; $42e0: $88
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	adc  b                                           ; $42e3: $88
	sub  a                                           ; $42e4: $97
	ld   h, a                                        ; $42e5: $67
	adc  b                                           ; $42e6: $88
	adc  b                                           ; $42e7: $88
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	ld   a, c                                        ; $42ea: $79
	sbc  b                                           ; $42eb: $98
	ld   [hl], a                                     ; $42ec: $77
	sbc  b                                           ; $42ed: $98
	add  a                                           ; $42ee: $87
	sub  a                                           ; $42ef: $97
	ld   a, b                                        ; $42f0: $78
	adc  b                                           ; $42f1: $88
	adc  c                                           ; $42f2: $89
	sub  a                                           ; $42f3: $97
	ld   a, c                                        ; $42f4: $79
	and  a                                           ; $42f5: $a7
	adc  c                                           ; $42f6: $89
	ld   [hl], a                                     ; $42f7: $77
	adc  b                                           ; $42f8: $88
	adc  b                                           ; $42f9: $88
	sbc  c                                           ; $42fa: $99
	sub  [hl]                                        ; $42fb: $96
	ld   a, d                                        ; $42fc: $7a
	add  a                                           ; $42fd: $87
	add  a                                           ; $42fe: $87
	ld   [hl], a                                     ; $42ff: $77
	adc  b                                           ; $4300: $88
	adc  d                                           ; $4301: $8a
	sbc  d                                           ; $4302: $9a
	halt                                             ; $4303: $76
	adc  d                                           ; $4304: $8a
	ld   [hl], a                                     ; $4305: $77
	add  a                                           ; $4306: $87
	halt                                             ; $4307: $76
	adc  b                                           ; $4308: $88
	sbc  d                                           ; $4309: $9a
	xor  c                                           ; $430a: $a9
	halt                                             ; $430b: $76
	sbc  c                                           ; $430c: $99
	ld   l, b                                        ; $430d: $68
	ld   [hl], a                                     ; $430e: $77
	ld   h, a                                        ; $430f: $67
	add  a                                           ; $4310: $87
	xor  e                                           ; $4311: $ab
	xor  d                                           ; $4312: $aa
	ld   h, [hl]                                     ; $4313: $66
	xor  b                                           ; $4314: $a8
	ld   l, b                                        ; $4315: $68
	ld   h, a                                        ; $4316: $67
	ld   e, b                                        ; $4317: $58
	adc  b                                           ; $4318: $88
	cp   d                                           ; $4319: $ba
	cp   c                                           ; $431a: $b9
	ld   h, [hl]                                     ; $431b: $66
	cp   b                                           ; $431c: $b8
	ld   e, b                                        ; $431d: $58
	ld   h, [hl]                                     ; $431e: $66
	ld   e, b                                        ; $431f: $58
	ld   a, b                                        ; $4320: $78
	cp   e                                           ; $4321: $bb
	cp   c                                           ; $4322: $b9
	ld   h, l                                        ; $4323: $65
	rst  ToBoot                                         ; $4324: $c7
	ld   e, b                                        ; $4325: $58
	ld   h, [hl]                                     ; $4326: $66
	ld   c, b                                        ; $4327: $48
	ld   a, b                                        ; $4328: $78
	set  1, d                                        ; $4329: $cb $ca
	ld   h, l                                        ; $432b: $65
	or   [hl]                                        ; $432c: $b6
	ld   b, a                                        ; $432d: $47
	ld   h, [hl]                                     ; $432e: $66
	jr   c, jr_0ea_43a9                              ; $432f: $38 $78

	call z, Call_0ea_74eb                            ; $4331: $cc $eb $74
	or   a                                           ; $4334: $b7
	scf                                              ; $4335: $37
	ld   d, [hl]                                     ; $4336: $56
	scf                                              ; $4337: $37
	add  a                                           ; $4338: $87
	db   $dd                                         ; $4339: $dd
	db   $fc                                         ; $433a: $fc
	add  l                                           ; $433b: $85
	xor  c                                           ; $433c: $a9
	ld   h, $46                                      ; $433d: $26 $46
	ld   h, $96                                      ; $433f: $26 $96
	call $94fd                                       ; $4341: $cd $fd $94
	sbc  e                                           ; $4344: $9b
	ld   h, $45                                      ; $4345: $26 $45
	inc  h                                           ; $4347: $24
	sub  [hl]                                        ; $4348: $96
	call z, $b6fe                                    ; $4349: $cc $fe $b6
	ld   l, l                                        ; $434c: $6d
	inc  h                                           ; $434d: $24
	ld   d, h                                        ; $434e: $54
	ld   b, d                                        ; $434f: $42
	and  [hl]                                        ; $4350: $a6
	xor  l                                           ; $4351: $ad
	rst  $38                                         ; $4352: $ff
	ret  z                                           ; $4353: $c8

	ld   c, l                                        ; $4354: $4d
	ld   d, c                                        ; $4355: $51
	ld   h, e                                        ; $4356: $63
	ld   d, c                                        ; $4357: $51
	ld   a, b                                        ; $4358: $78
	ld   a, l                                        ; $4359: $7d
	rst  $28                                         ; $435a: $ef
	jp   c, $914a                                    ; $435b: $da $4a $91

	ld   d, e                                        ; $435e: $53
	ld   d, c                                        ; $435f: $51
	ld   c, c                                        ; $4360: $49
	ld   l, h                                        ; $4361: $6c
	rst  $28                                         ; $4362: $ef
	db   $fc                                         ; $4363: $fc
	ld   [hl], l                                     ; $4364: $75
	jp   nc, $3324                                   ; $4365: $d2 $24 $33

	ld   a, [de]                                     ; $4368: $1a
	ld   a, d                                        ; $4369: $7a
	rst  JumpTable                                         ; $436a: $df
	db   $fc                                         ; $436b: $fc
	or   e                                           ; $436c: $b3
	and  a                                           ; $436d: $a7
	dec  d                                           ; $436e: $15
	dec  h                                           ; $436f: $25
	dec  d                                           ; $4370: $15
	and  a                                           ; $4371: $a7
	sbc  $ff                                         ; $4372: $de $ff
	add  $5c                                         ; $4374: $c6 $5c
	ld   [de], a                                     ; $4376: $12
	ld   b, e                                        ; $4377: $43
	ld   b, c                                        ; $4378: $41
	cp   b                                           ; $4379: $b8
	xor  l                                           ; $437a: $ad
	rst  $38                                         ; $437b: $ff
	cp   d                                           ; $437c: $ba
	ld   a, [hl-]                                    ; $437d: $3a
	ld   [hl], c                                     ; $437e: $71
	ld   d, d                                        ; $437f: $52
	ld   d, c                                        ; $4380: $51
	ld   e, h                                        ; $4381: $5c
	ld   a, l                                        ; $4382: $7d
	rst  JumpTable                                         ; $4383: $df
	ei                                               ; $4384: $fb
	ld   [hl], e                                     ; $4385: $73
	pop  bc                                          ; $4386: $c1
	inc  d                                           ; $4387: $14
	dec  h                                           ; $4388: $25
	ld   a, [de]                                     ; $4389: $1a
	sbc  c                                           ; $438a: $99
	rst  $28                                         ; $438b: $ef
	ei                                               ; $438c: $fb
	or   e                                           ; $438d: $b3
	ld   a, d                                        ; $438e: $7a
	inc  d                                           ; $438f: $14
	inc  h                                           ; $4390: $24
	inc  h                                           ; $4391: $24
	rst  ToBoot                                         ; $4392: $c7
	db   $dd                                         ; $4393: $dd
	rst  $38                                         ; $4394: $ff

Jump_0ea_4395:
	xor  d                                           ; $4395: $aa
	dec  de                                          ; $4396: $1b
	ld   b, c                                        ; $4397: $41
	ld   d, d                                        ; $4398: $52
	ld   h, c                                        ; $4399: $61
	sbc  e                                           ; $439a: $9b
	adc  a                                           ; $439b: $8f
	rst  $28                                         ; $439c: $ef
	db   $db                                         ; $439d: $db
	ld   d, e                                        ; $439e: $53
	pop  bc                                          ; $439f: $c1
	inc  hl                                          ; $43a0: $23
	dec  [hl]                                        ; $43a1: $35
	dec  l                                           ; $43a2: $2d
	sbc  e                                           ; $43a3: $9b
	rst  $28                                         ; $43a4: $ef
	ld   a, [$79b2]                                  ; $43a5: $fa $b2 $79
	inc  d                                           ; $43a8: $14

jr_0ea_43a9:
	dec  h                                           ; $43a9: $25
	dec  [hl]                                        ; $43aa: $35
	jp   hl                                          ; $43ab: $e9


	xor  $ff                                         ; $43ac: $ee $ff
	xor  c                                           ; $43ae: $a9
	dec  de                                          ; $43af: $1b
	ld   b, c                                        ; $43b0: $41
	ld   d, d                                        ; $43b1: $52
	ld   [hl], d                                     ; $43b2: $72
	sbc  l                                           ; $43b3: $9d
	sbc  a                                           ; $43b4: $9f
	rst  JumpTable                                         ; $43b5: $df
	reti                                             ; $43b6: $d9


	ld   d, d                                        ; $43b7: $52
	or   c                                           ; $43b8: $b1
	inc  d                                           ; $43b9: $14
	ld   [hl], $2d                                   ; $43ba: $36 $2d
	xor  h                                           ; $43bc: $ac
	xor  $fa                                         ; $43bd: $ee $fa
	and  d                                           ; $43bf: $a2
	ld   e, d                                        ; $43c0: $5a
	inc  de                                          ; $43c1: $13
	dec  [hl]                                        ; $43c2: $35
	ld   d, l                                        ; $43c3: $55
	reti                                             ; $43c4: $d9


	xor  $ff                                         ; $43c5: $ee $ff
	sbc  b                                           ; $43c7: $98
	ld   a, [de]                                     ; $43c8: $1a
	ld   d, c                                        ; $43c9: $51
	ld   d, e                                        ; $43ca: $53
	ld   [hl], e                                     ; $43cb: $73
	adc  l                                           ; $43cc: $8d
	xor  a                                           ; $43cd: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43ce: $cf
	reti                                             ; $43cf: $d9


	ld   d, c                                        ; $43d0: $51
	or   c                                           ; $43d1: $b1
	dec  d                                           ; $43d2: $15
	ld   b, a                                        ; $43d3: $47
	inc  a                                           ; $43d4: $3c
	set  3, [hl]                                     ; $43d5: $cb $de
	ld   a, [$5a81]                                  ; $43d7: $fa $81 $5a
	inc  de                                          ; $43da: $13
	ld   b, [hl]                                     ; $43db: $46
	ld   h, l                                        ; $43dc: $65
	db   $eb                                         ; $43dd: $eb
	db   $ec                                         ; $43de: $ec
	rst  $38                                         ; $43df: $ff
	sub  a                                           ; $43e0: $97
	add  hl, de                                      ; $43e1: $19
	ld   d, c                                        ; $43e2: $51
	ld   b, e                                        ; $43e3: $43
	add  h                                           ; $43e4: $84
	sbc  l                                           ; $43e5: $9d
	cp   [hl]                                        ; $43e6: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43e7: $cf
	jp   hl                                          ; $43e8: $e9


	ld   b, c                                        ; $43e9: $41
	and  c                                           ; $43ea: $a1
	inc  d                                           ; $43eb: $14
	ld   e, b                                        ; $43ec: $58
	ld   c, h                                        ; $43ed: $4c
	call $fbde                                       ; $43ee: $cd $de $fb
	ld   [hl], c                                     ; $43f1: $71

jr_0ea_43f2:
	ld   e, c                                        ; $43f2: $59
	ld   [de], a                                     ; $43f3: $12
	ld   b, a                                        ; $43f4: $47
	ld   h, l                                        ; $43f5: $65
	db   $db                                         ; $43f6: $db
	db   $ec                                         ; $43f7: $ec
	rst  $38                                         ; $43f8: $ff
	sub  l                                           ; $43f9: $95
	jr   @+$53                                       ; $43fa: $18 $51

	ld   b, h                                        ; $43fc: $44
	add  l                                           ; $43fd: $85
	sbc  l                                           ; $43fe: $9d
	adc  $cf                                         ; $43ff: $ce $cf
	ret  c                                           ; $4401: $d8

	ld   hl, $14a1                                   ; $4402: $21 $a1 $14
	ld   l, b                                        ; $4405: $68
	ld   e, e                                        ; $4406: $5b
	adc  $dc                                         ; $4407: $ce $dc
	ei                                               ; $4409: $fb
	ld   h, c                                        ; $440a: $61
	ld   e, b                                        ; $440b: $58
	ld   [de], a                                     ; $440c: $12
	ld   c, b                                        ; $440d: $48
	halt                                             ; $440e: $76
	call z, $fffc                                    ; $440f: $cc $fc $ff
	sub  h                                           ; $4412: $94
	jr   jr_0ea_4466                                 ; $4413: $18 $51

	inc  [hl]                                        ; $4415: $34
	sub  [hl]                                        ; $4416: $96
	sbc  l                                           ; $4417: $9d
	rst  JumpTable                                         ; $4418: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4419: $cf
	rst  ToBoot                                         ; $441a: $c7
	ld   [de], a                                     ; $441b: $12
	sub  c                                           ; $441c: $91
	inc  de                                          ; $441d: $13
	ld   a, d                                        ; $441e: $7a
	ld   l, h                                        ; $441f: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4420: $cf
	db   $dd                                         ; $4421: $dd
	ld   a, [$6751]                                  ; $4422: $fa $51 $67
	inc  de                                          ; $4425: $13
	ld   a, [hl-]                                    ; $4426: $3a
	adc  b                                           ; $4427: $88
	call $eefc                                       ; $4428: $cd $fc $ee
	sub  d                                           ; $442b: $92
	add  hl, de                                      ; $442c: $19
	ld   sp, $a735                                   ; $442d: $31 $35 $a7
	cp   e                                           ; $4430: $bb
	xor  $be                                         ; $4431: $ee $be
	and  [hl]                                        ; $4433: $a6
	inc  d                                           ; $4434: $14
	add  c                                           ; $4435: $81
	inc  sp                                          ; $4436: $33
	adc  c                                           ; $4437: $89
	adc  h                                           ; $4438: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4439: $cf
	call $21d8                                       ; $443a: $cd $d8 $21
	add  h                                           ; $443d: $84
	inc  de                                          ; $443e: $13
	ld   c, e                                        ; $443f: $4b
	sbc  e                                           ; $4440: $9b
	cp   [hl]                                        ; $4441: $be
	db   $ec                                         ; $4442: $ec
	db   $eb                                         ; $4443: $eb
	ld   h, c                                        ; $4444: $61
	jr   c, jr_0ea_445a                              ; $4445: $38 $13

	jr   c, jr_0ea_43f2                              ; $4447: $38 $a9

	cp   h                                           ; $4449: $bc
	db   $fc                                         ; $444a: $fc
	call z, $1793                                    ; $444b: $cc $93 $17
	ld   b, d                                        ; $444e: $42
	ld   b, h                                        ; $444f: $44
	cp   d                                           ; $4450: $ba
	xor  h                                           ; $4451: $ac
	rst  JumpTable                                         ; $4452: $df
	call $13a6                                       ; $4453: $cd $a6 $13
	ld   [hl], c                                     ; $4456: $71
	ld   b, e                                        ; $4457: $43
	adc  e                                           ; $4458: $8b
	xor  h                                           ; $4459: $ac

jr_0ea_445a:
	adc  $cc                                         ; $445a: $ce $cc
	ret  z                                           ; $445c: $c8

	ld   hl, $2464                                   ; $445d: $21 $64 $24
	ld   e, e                                        ; $4460: $5b
	xor  e                                           ; $4461: $ab
	call z, $c9ec                                    ; $4462: $cc $ec $c9
	ld   h, c                                        ; $4465: $61

jr_0ea_4466:
	daa                                              ; $4466: $27
	inc  h                                           ; $4467: $24
	ld   c, c                                        ; $4468: $49
	jp   z, $edbb                                    ; $4469: $ca $bb $ed

	call z, $1682                                    ; $446c: $cc $82 $16
	ld   d, e                                        ; $446f: $53
	ld   b, l                                        ; $4470: $45
	cp   d                                           ; $4471: $ba
	cp   e                                           ; $4472: $bb
	sbc  $cc                                         ; $4473: $de $cc
	sub  [hl]                                        ; $4475: $96
	inc  de                                          ; $4476: $13
	ld   [hl], d                                     ; $4477: $72
	ld   d, h                                        ; $4478: $54
	adc  e                                           ; $4479: $8b
	cp   e                                           ; $447a: $bb
	cp   [hl]                                        ; $447b: $be
	call z, $21b7                                    ; $447c: $cc $b7 $21
	ld   h, l                                        ; $447f: $65
	dec  [hl]                                        ; $4480: $35
	ld   e, h                                        ; $4481: $5c
	cp   h                                           ; $4482: $bc
	cp   h                                           ; $4483: $bc
	db   $eb                                         ; $4484: $eb
	ret                                              ; $4485: $c9


	ld   h, c                                        ; $4486: $61
	daa                                              ; $4487: $27
	dec  [hl]                                        ; $4488: $35
	ld   c, b                                        ; $4489: $48
	set  1, d                                        ; $448a: $cb $ca
	call c, Call_0ea_73cb                            ; $448c: $dc $cb $73
	ld   d, $54                                      ; $448f: $16 $54
	ld   d, l                                        ; $4491: $55
	cp   e                                           ; $4492: $bb
	jp   z, $bbbd                                    ; $4493: $ca $bd $bb

	sub  [hl]                                        ; $4496: $96
	ld   [de], a                                     ; $4497: $12
	ld   [hl], h                                     ; $4498: $74
	ld   d, h                                        ; $4499: $54
	adc  h                                           ; $449a: $8c
	cp   h                                           ; $449b: $bc
	xor  l                                           ; $449c: $ad
	cp   e                                           ; $449d: $bb
	or   a                                           ; $449e: $b7
	ld   b, c                                        ; $449f: $41
	ld   h, [hl]                                     ; $44a0: $66
	ld   b, l                                        ; $44a1: $45
	ld   e, e                                        ; $44a2: $5b
	cp   h                                           ; $44a3: $bc
	cp   e                                           ; $44a4: $bb
	db   $db                                         ; $44a5: $db
	cp   b                                           ; $44a6: $b8
	ld   h, c                                        ; $44a7: $61
	rla                                              ; $44a8: $17
	ld   b, l                                        ; $44a9: $45
	ld   d, a                                        ; $44aa: $57
	cp   e                                           ; $44ab: $bb
	ret                                              ; $44ac: $c9


	db   $db                                         ; $44ad: $db
	cp   e                                           ; $44ae: $bb
	ld   [hl], h                                     ; $44af: $74
	dec  d                                           ; $44b0: $15
	ld   h, h                                        ; $44b1: $64
	ld   h, l                                        ; $44b2: $65
	xor  e                                           ; $44b3: $ab
	cp   e                                           ; $44b4: $bb
	cp   l                                           ; $44b5: $bd
	cp   e                                           ; $44b6: $bb
	sub  a                                           ; $44b7: $97
	ld   hl, $5575                                   ; $44b8: $21 $75 $55
	ld   l, e                                        ; $44bb: $6b
	cp   h                                           ; $44bc: $bc
	sbc  e                                           ; $44bd: $9b
	res  7, b                                        ; $44be: $cb $b8
	ld   h, c                                        ; $44c0: $61
	scf                                              ; $44c1: $37
	ld   b, [hl]                                     ; $44c2: $46
	ld   e, b                                        ; $44c3: $58
	cp   d                                           ; $44c4: $ba
	cp   d                                           ; $44c5: $ba
	call z, Call_0ea_75cb                            ; $44c6: $cc $cb $75
	dec  d                                           ; $44c9: $15
	ld   [hl], h                                     ; $44ca: $74
	ld   h, l                                        ; $44cb: $65
	xor  d                                           ; $44cc: $aa
	cp   d                                           ; $44cd: $ba
	sbc  h                                           ; $44ce: $9c
	cp   h                                           ; $44cf: $bc
	sub  a                                           ; $44d0: $97
	ld   sp, $5575                                   ; $44d1: $31 $75 $55
	ld   e, d                                        ; $44d4: $5a
	xor  e                                           ; $44d5: $ab
	xor  d                                           ; $44d6: $aa
	set  1, c                                        ; $44d7: $cb $c9
	ld   [hl], d                                     ; $44d9: $72
	daa                                              ; $44da: $27
	ld   d, [hl]                                     ; $44db: $56
	ld   d, [hl]                                     ; $44dc: $56
	xor  d                                           ; $44dd: $aa
	cp   c                                           ; $44de: $b9
	cp   h                                           ; $44df: $bc
	call z, $2487                                    ; $44e0: $cc $87 $24
	ld   [hl], l                                     ; $44e3: $75
	ld   h, h                                        ; $44e4: $64
	ld   a, d                                        ; $44e5: $7a
	xor  e                                           ; $44e6: $ab
	sbc  e                                           ; $44e7: $9b
	cp   h                                           ; $44e8: $bc
	cp   b                                           ; $44e9: $b8
	ld   [hl], d                                     ; $44ea: $72
	ld   d, a                                        ; $44eb: $57
	ld   d, [hl]                                     ; $44ec: $56
	ld   b, a                                        ; $44ed: $47
	sbc  d                                           ; $44ee: $9a
	xor  c                                           ; $44ef: $a9
	cp   e                                           ; $44f0: $bb
	res  0, a                                        ; $44f1: $cb $87
	dec  [hl]                                        ; $44f3: $35
	halt                                             ; $44f4: $76

Jump_0ea_44f5:
	ld   h, l                                        ; $44f5: $65
	ld   l, c                                        ; $44f6: $69
	xor  d                                           ; $44f7: $aa
	sbc  c                                           ; $44f8: $99
	cp   h                                           ; $44f9: $bc
	cp   b                                           ; $44fa: $b8
	ld   [hl], l                                     ; $44fb: $75
	ld   c, b                                        ; $44fc: $48
	ld   [hl], a                                     ; $44fd: $77
	ld   h, l                                        ; $44fe: $65
	sbc  d                                           ; $44ff: $9a
	xor  b                                           ; $4500: $a8
	sbc  d                                           ; $4501: $9a
	cp   d                                           ; $4502: $ba
	adc  b                                           ; $4503: $88
	ld   [hl], l                                     ; $4504: $75
	ld   a, b                                        ; $4505: $78
	ld   [hl], a                                     ; $4506: $77
	ld   d, [hl]                                     ; $4507: $56
	adc  c                                           ; $4508: $89
	add  a                                           ; $4509: $87
	sbc  d                                           ; $450a: $9a
	xor  c                                           ; $450b: $a9
	sbc  c                                           ; $450c: $99
	halt                                             ; $450d: $76
	ld   a, c                                        ; $450e: $79
	add  a                                           ; $450f: $87
	ld   h, [hl]                                     ; $4510: $66
	adc  c                                           ; $4511: $89
	add  a                                           ; $4512: $87
	adc  b                                           ; $4513: $88
	sbc  c                                           ; $4514: $99
	sbc  b                                           ; $4515: $98
	adc  b                                           ; $4516: $88
	adc  b                                           ; $4517: $88
	sbc  b                                           ; $4518: $98
	halt                                             ; $4519: $76
	ld   a, c                                        ; $451a: $79
	sub  a                                           ; $451b: $97
	ld   a, b                                        ; $451c: $78
	adc  c                                           ; $451d: $89
	adc  b                                           ; $451e: $88
	sbc  c                                           ; $451f: $99
	adc  c                                           ; $4520: $89
	sbc  b                                           ; $4521: $98
	ld   [hl], a                                     ; $4522: $77
	ld   a, b                                        ; $4523: $78
	ld   [hl], a                                     ; $4524: $77
	ld   [hl], a                                     ; $4525: $77
	ld   [hl], a                                     ; $4526: $77
	adc  c                                           ; $4527: $89
	adc  c                                           ; $4528: $89
	sbc  c                                           ; $4529: $99
	sbc  c                                           ; $452a: $99
	adc  c                                           ; $452b: $89
	sbc  b                                           ; $452c: $98
	ld   [hl], a                                     ; $452d: $77
	ld   [hl], a                                     ; $452e: $77
	ld   [hl], a                                     ; $452f: $77
	ld   [hl], a                                     ; $4530: $77
	adc  b                                           ; $4531: $88
	sbc  b                                           ; $4532: $98
	adc  b                                           ; $4533: $88
	sbc  b                                           ; $4534: $98
	sbc  c                                           ; $4535: $99
	add  a                                           ; $4536: $87
	ld   [hl], a                                     ; $4537: $77
	ld   [hl], a                                     ; $4538: $77
	ld   [hl], a                                     ; $4539: $77
	adc  b                                           ; $453a: $88
	sbc  b                                           ; $453b: $98
	sbc  c                                           ; $453c: $99
	sbc  b                                           ; $453d: $98
	adc  c                                           ; $453e: $89
	adc  b                                           ; $453f: $88
	ld   [hl], a                                     ; $4540: $77
	ld   [hl], a                                     ; $4541: $77
	ld   [hl], a                                     ; $4542: $77
	ld   a, b                                        ; $4543: $78
	adc  b                                           ; $4544: $88
	adc  b                                           ; $4545: $88
	sbc  c                                           ; $4546: $99
	adc  c                                           ; $4547: $89
	adc  b                                           ; $4548: $88
	add  a                                           ; $4549: $87
	ld   [hl], a                                     ; $454a: $77
	ld   [hl], a                                     ; $454b: $77
	ld   a, b                                        ; $454c: $78
	adc  c                                           ; $454d: $89
	sbc  b                                           ; $454e: $98
	adc  b                                           ; $454f: $88
	sbc  b                                           ; $4550: $98
	adc  b                                           ; $4551: $88
	ld   [hl], a                                     ; $4552: $77
	ld   [hl], a                                     ; $4553: $77
	ld   a, b                                        ; $4554: $78
	adc  b                                           ; $4555: $88
	sbc  c                                           ; $4556: $99
	sbc  c                                           ; $4557: $99
	adc  b                                           ; $4558: $88
	add  a                                           ; $4559: $87
	ld   a, b                                        ; $455a: $78
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	sbc  c                                           ; $455d: $99
	adc  b                                           ; $455e: $88
	adc  b                                           ; $455f: $88
	adc  b                                           ; $4560: $88
	adc  b                                           ; $4561: $88
	adc  b                                           ; $4562: $88
	adc  b                                           ; $4563: $88
	sbc  b                                           ; $4564: $98
	sbc  c                                           ; $4565: $99
	adc  b                                           ; $4566: $88
	adc  b                                           ; $4567: $88
	adc  b                                           ; $4568: $88
	adc  b                                           ; $4569: $88
	adc  b                                           ; $456a: $88
	adc  c                                           ; $456b: $89
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
	sbc  b                                           ; $4578: $98
	adc  b                                           ; $4579: $88

Call_0ea_457a:
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

Jump_0ea_467a:
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

Call_0ea_47a6:
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
	ld   a, b                                        ; $4868: $78
	adc  b                                           ; $4869: $88
	ld   [hl], a                                     ; $486a: $77
	adc  c                                           ; $486b: $89
	sub  a                                           ; $486c: $97
	ld   a, b                                        ; $486d: $78
	add  a                                           ; $486e: $87
	adc  b                                           ; $486f: $88
	sub  a                                           ; $4870: $97
	ld   a, c                                        ; $4871: $79
	xor  b                                           ; $4872: $a8
	ld   [hl], a                                     ; $4873: $77
	sbc  c                                           ; $4874: $99
	add  a                                           ; $4875: $87
	adc  b                                           ; $4876: $88
	adc  b                                           ; $4877: $88
	sbc  b                                           ; $4878: $98
	ld   [hl], a                                     ; $4879: $77
	sbc  c                                           ; $487a: $99
	adc  c                                           ; $487b: $89
	halt                                             ; $487c: $76
	adc  c                                           ; $487d: $89
	adc  b                                           ; $487e: $88
	ld   [hl], a                                     ; $487f: $77
	sbc  b                                           ; $4880: $98
	adc  b                                           ; $4881: $88
	halt                                             ; $4882: $76
	sbc  d                                           ; $4883: $9a
	sub  [hl]                                        ; $4884: $96
	ld   e, b                                        ; $4885: $58
	xor  c                                           ; $4886: $a9
	ld   [hl], a                                     ; $4887: $77
	adc  b                                           ; $4888: $88
	ld   [hl], a                                     ; $4889: $77
	xor  e                                           ; $488a: $ab
	add  [hl]                                        ; $488b: $86
	adc  c                                           ; $488c: $89
	adc  b                                           ; $488d: $88
	sbc  b                                           ; $488e: $98
	ld   [hl], a                                     ; $488f: $77
	adc  c                                           ; $4890: $89
	add  a                                           ; $4891: $87
	ld   a, b                                        ; $4892: $78
	sub  [hl]                                        ; $4893: $96
	ld   l, c                                        ; $4894: $69
	xor  b                                           ; $4895: $a8
	ld   a, b                                        ; $4896: $78
	sbc  c                                           ; $4897: $99
	sbc  b                                           ; $4898: $98
	ld   a, b                                        ; $4899: $78
	ld   [hl], a                                     ; $489a: $77
	add  a                                           ; $489b: $87
	add  a                                           ; $489c: $87
	adc  b                                           ; $489d: $88
	sbc  c                                           ; $489e: $99
	sbc  d                                           ; $489f: $9a
	sbc  b                                           ; $48a0: $98
	ld   d, a                                        ; $48a1: $57
	and  [hl]                                        ; $48a2: $a6
	ld   [hl], a                                     ; $48a3: $77
	adc  c                                           ; $48a4: $89
	ld   a, c                                        ; $48a5: $79
	adc  d                                           ; $48a6: $8a
	sbc  d                                           ; $48a7: $9a
	cp   d                                           ; $48a8: $ba
	ld   h, c                                        ; $48a9: $61
	adc  c                                           ; $48aa: $89
	ld   h, a                                        ; $48ab: $67
	ld   e, c                                        ; $48ac: $59
	sbc  c                                           ; $48ad: $99
	adc  c                                           ; $48ae: $89
	rst  ToBoot                                         ; $48af: $c7
	cp   e                                           ; $48b0: $bb
	or   l                                           ; $48b1: $b5
	jr   jr_0ea_492b                                 ; $48b2: $18 $77

	ld   [hl], l                                     ; $48b4: $75
	xor  d                                           ; $48b5: $aa
	or   a                                           ; $48b6: $b7
	xor  e                                           ; $48b7: $ab
	ld   a, h                                        ; $48b8: $7c
	xor  e                                           ; $48b9: $ab
	ld   de, $9595                                   ; $48ba: $11 $95 $95
	adc  e                                           ; $48bd: $8b
	cp   e                                           ; $48be: $bb
	ld   a, l                                        ; $48bf: $7d
	ld   a, e                                        ; $48c0: $7b
	cp   d                                           ; $48c1: $ba
	ld   h, c                                        ; $48c2: $61
	add  [hl]                                        ; $48c3: $86
	add  a                                           ; $48c4: $87
	ld   l, e                                        ; $48c5: $6b
	sbc  l                                           ; $48c6: $9d
	ld   l, d                                        ; $48c7: $6a
	sbc  b                                           ; $48c8: $98
	cp   c                                           ; $48c9: $b9
	and  c                                           ; $48ca: $a1
	add  hl, sp                                      ; $48cb: $39
	ld   a, e                                        ; $48cc: $7b
	ld   c, e                                        ; $48cd: $4b
	sbc  l                                           ; $48ce: $9d
	add  a                                           ; $48cf: $87
	or   [hl]                                        ; $48d0: $b6
	ret                                              ; $48d1: $c9


	or   c                                           ; $48d2: $b1
	add  hl, de                                      ; $48d3: $19
	ld   l, d                                        ; $48d4: $6a
	ld   l, b                                        ; $48d5: $68
	cp   e                                           ; $48d6: $bb
	or   [hl]                                        ; $48d7: $b6
	and  a                                           ; $48d8: $a7
	xor  e                                           ; $48d9: $ab
	rst  ToBoot                                         ; $48da: $c7
	dec  d                                           ; $48db: $15
	sbc  b                                           ; $48dc: $98
	and  l                                           ; $48dd: $a5
	cp   h                                           ; $48de: $bc
	rst  ToBoot                                         ; $48df: $c7
	ld   a, b                                        ; $48e0: $78
	ld   a, h                                        ; $48e1: $7c
	call z, $9811                                    ; $48e2: $cc $11 $98
	cp   b                                           ; $48e5: $b8
	ld   l, h                                        ; $48e6: $6c
	bit  4, a                                        ; $48e7: $cb $67
	ld   a, c                                        ; $48e9: $79
	call $1a91                                       ; $48ea: $cd $91 $1a
	sbc  l                                           ; $48ed: $9d
	ld   l, b                                        ; $48ee: $68
	call z, Call_0ea_7795                            ; $48ef: $cc $95 $77
	xor  l                                           ; $48f2: $ad
	db   $d3                                         ; $48f3: $d3
	inc  d                                           ; $48f4: $14
	sbc  e                                           ; $48f5: $9b
	push bc                                          ; $48f6: $c5
	cp   l                                           ; $48f7: $bd
	and  a                                           ; $48f8: $a7
	ld   d, a                                        ; $48f9: $57
	ld   a, h                                        ; $48fa: $7c
	db   $dd                                         ; $48fb: $dd
	ld   de, $db69                                   ; $48fc: $11 $69 $db
	ld   c, h                                        ; $48ff: $4c
	db   $db                                         ; $4900: $db
	ld   h, h                                        ; $4901: $64
	ld   a, c                                        ; $4902: $79
	rst  $28                                         ; $4903: $ef
	and  c                                           ; $4904: $a1
	add  hl, de                                      ; $4905: $19
	xor  [hl]                                        ; $4906: $ae
	add  [hl]                                        ; $4907: $86
	call c, Call_0ea_5794                            ; $4908: $dc $94 $57
	xor  a                                           ; $490b: $af
	rst  $30                                         ; $490c: $f7
	ld   de, $f6ab                                   ; $490d: $11 $ab $f6
	ld   a, l                                        ; $4910: $7d
	cp   b                                           ; $4911: $b8
	dec  [hl]                                        ; $4912: $35
	ld   a, h                                        ; $4913: $7c
	rst  $38                                         ; $4914: $ff
	ld   b, c                                        ; $4915: $41
	ld   a, [de]                                     ; $4916: $1a
	rst  JumpTable                                         ; $4917: $df
	ld   l, b                                        ; $4918: $68
	db   $db                                         ; $4919: $db
	ld   [hl], d                                     ; $491a: $72
	ld   l, b                                        ; $491b: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $491c: $cf
	pop  af                                          ; $491d: $f1
	ld   de, $e5af                                   ; $491e: $11 $af $e5
	xor  h                                           ; $4921: $ac
	and  [hl]                                        ; $4922: $a6
	ld   h, $9f                                      ; $4923: $26 $9f
	cp   $11                                         ; $4925: $fe $11
	dec  hl                                          ; $4927: $2b
	cp   $6a                                         ; $4928: $fe $6a
	reti                                             ; $492a: $d9


jr_0ea_492b:
	ld   d, d                                        ; $492b: $52
	ld   l, c                                        ; $492c: $69
	rst  $38                                         ; $492d: $ff
	pop  hl                                          ; $492e: $e1
	inc  de                                          ; $492f: $13
	rst  JumpTable                                         ; $4930: $df
	push de                                          ; $4931: $d5
	xor  h                                           ; $4932: $ac
	sub  h                                           ; $4933: $94
	ld   h, $af                                      ; $4934: $26 $af
	ei                                               ; $4936: $fb
	ld   de, $fc4e                                   ; $4937: $11 $4e $fc
	ld   e, e                                        ; $493a: $5b
	cp   b                                           ; $493b: $b8
	ld   [hl-], a                                    ; $493c: $32
	ld   a, e                                        ; $493d: $7b
	rst  $38                                         ; $493e: $ff
	pop  bc                                          ; $493f: $c1
	inc  d                                           ; $4940: $14
	rst  $28                                         ; $4941: $ef
	push de                                          ; $4942: $d5
	cp   d                                           ; $4943: $ba
	add  e                                           ; $4944: $83
	daa                                              ; $4945: $27
	cp   a                                           ; $4946: $bf
	ld   a, [$5f11]                                  ; $4947: $fa $11 $5f
	db   $fd                                         ; $494a: $fd
	ld   l, d                                        ; $494b: $6a
	sub  a                                           ; $494c: $97
	ld   [hl+], a                                    ; $494d: $22
	ld   a, l                                        ; $494e: $7d
	rst  $38                                         ; $494f: $ff
	sub  c                                           ; $4950: $91
	ld   d, $ff                                      ; $4951: $16 $ff
	sub  $99                                         ; $4953: $d6 $99
	ld   h, c                                        ; $4955: $61
	jr   c, @+$01                                    ; $4956: $38 $ff

	or   $11                                         ; $4958: $f6 $11
	adc  a                                           ; $495a: $8f
	ei                                               ; $495b: $fb
	ld   l, c                                        ; $495c: $69
	sub  l                                           ; $495d: $95
	inc  d                                           ; $495e: $14
	sbc  a                                           ; $495f: $9f
	rst  $38                                         ; $4960: $ff
	ld   sp, $ff19                                   ; $4961: $31 $19 $ff
	or   [hl]                                        ; $4964: $b6
	add  a                                           ; $4965: $87
	ld   b, c                                        ; $4966: $41
	ld   e, d                                        ; $4967: $5a
	rst  $38                                         ; $4968: $ff
	pop  hl                                          ; $4969: $e1
	ld   de, $fbbf                                   ; $496a: $11 $bf $fb
	ld   d, a                                        ; $496d: $57
	ld   h, e                                        ; $496e: $63
	dec  h                                           ; $496f: $25
	cp   a                                           ; $4970: $bf
	db   $fc                                         ; $4971: $fc
	ld   de, $ff1d                                   ; $4972: $11 $1d $ff
	sub  l                                           ; $4975: $95
	ld   h, [hl]                                     ; $4976: $66
	ld   [hl+], a                                    ; $4977: $22
	ld   a, [hl]                                     ; $4978: $7e
	rst  $38                                         ; $4979: $ff
	sub  c                                           ; $497a: $91
	ld   de, $f8ff                                   ; $497b: $11 $ff $f8
	ld   b, l                                        ; $497e: $45
	ld   b, d                                        ; $497f: $42
	ld   c, c                                        ; $4980: $49
	rst  $38                                         ; $4981: $ff
	db   $f4                                         ; $4982: $f4
	ld   de, $ff6f                                   ; $4983: $11 $6f $ff
	ld   h, h                                        ; $4986: $64
	ld   b, e                                        ; $4987: $43
	ld   d, $bf                                      ; $4988: $16 $bf
	db   $fd                                         ; $498a: $fd
	ld   de, $ff1c                                   ; $498b: $11 $1c $ff
	push de                                          ; $498e: $d5
	inc  h                                           ; $498f: $24
	inc  hl                                          ; $4990: $23
	sbc  h                                           ; $4991: $9c
	rst  $38                                         ; $4992: $ff
	add  c                                           ; $4993: $81
	ld   de, $f9ff                                   ; $4994: $11 $ff $f9
	ld   sp, $5c42                                   ; $4997: $31 $42 $5c
	rst  $38                                         ; $499a: $ff
	ldh  a, [c]                                      ; $499b: $f2
	ld   de, $ff5f                                   ; $499c: $11 $5f $ff
	ld   h, c                                        ; $499f: $61
	inc  d                                           ; $49a0: $14
	add  hl, hl                                      ; $49a1: $29
	rst  JumpTable                                         ; $49a2: $df
	ld   sp, hl                                      ; $49a3: $f9
	ld   de, $ff1f                                   ; $49a4: $11 $1f $ff
	or   e                                           ; $49a7: $b3
	ld   de, $cf44                                   ; $49a8: $11 $44 $cf
	rst  $38                                         ; $49ab: $ff
	ld   de, $ff15                                   ; $49ac: $11 $15 $ff
	push af                                          ; $49af: $f5
	ld   de, $9f34                                   ; $49b0: $11 $34 $9f
	rst  $38                                         ; $49b3: $ff
	ld   [hl], c                                     ; $49b4: $71
	ld   de, $faff                                   ; $49b5: $11 $ff $fa
	ld   de, $6e16                                   ; $49b8: $11 $16 $6e
	rst  $38                                         ; $49bb: $ff
	pop  af                                          ; $49bc: $f1
	ld   de, $ff8f                                   ; $49bd: $11 $8f $ff
	ld   hl, $7b13                                   ; $49c0: $21 $13 $7b
	rst  $38                                         ; $49c3: $ff
	ldh  a, [c]                                      ; $49c4: $f2
	ld   de, $ff1f                                   ; $49c5: $11 $1f $ff
	ld   [hl], c                                     ; $49c8: $71
	ld   de, $ff7a                                   ; $49c9: $11 $7a $ff
	ld   hl, sp+$11                                  ; $49cc: $f8 $11
	rra                                              ; $49ce: $1f
	rst  $38                                         ; $49cf: $ff
	pop  af                                          ; $49d0: $f1
	ld   de, $ff5b                                   ; $49d1: $11 $5b $ff
	rst  $38                                         ; $49d4: $ff
	ld   de, $ff15                                   ; $49d5: $11 $15 $ff
	pop  af                                          ; $49d8: $f1
	ld   de, $ef1c                                   ; $49d9: $11 $1c $ef
	rst  $38                                         ; $49dc: $ff
	ld   de, rAUD1LEN                                   ; $49dd: $11 $11 $ff
	rst  $30                                         ; $49e0: $f7
	ld   de, $ef1b                                   ; $49e1: $11 $1b $ef
	rst  $38                                         ; $49e4: $ff
	ld   d, c                                        ; $49e5: $51
	ld   de, $fdff                                   ; $49e6: $11 $ff $fd
	ld   de, $ff17                                   ; $49e9: $11 $17 $ff
	rst  $38                                         ; $49ec: $ff
	add  c                                           ; $49ed: $81
	ld   de, $ffbf                                   ; $49ee: $11 $bf $ff
	ld   de, rAUD1HIGH                                   ; $49f1: $11 $14 $ff
	rst  $38                                         ; $49f4: $ff
	sub  c                                           ; $49f5: $91
	ld   de, $ff6f                                   ; $49f6: $11 $6f $ff
	ld   de, rAUD1ENV                                   ; $49f9: $11 $12 $ff
	rst  $38                                         ; $49fc: $ff
	and  c                                           ; $49fd: $a1
	ld   de, $ff2f                                   ; $49fe: $11 $2f $ff
	ld   d, c                                        ; $4a01: $51
	ld   de, $ffff                                   ; $4a02: $11 $ff $ff
	or   c                                           ; $4a05: $b1
	ld   de, $ff1f                                   ; $4a06: $11 $1f $ff
	add  c                                           ; $4a09: $81
	ld   de, $ffcf                                   ; $4a0a: $11 $cf $ff
	or   c                                           ; $4a0d: $b1
	ld   de, $ff1f                                   ; $4a0e: $11 $1f $ff
	or   c                                           ; $4a11: $b1
	ld   de, $ffaf                                   ; $4a12: $11 $af $ff
	jp   nc, $1e11                                   ; $4a15: $d2 $11 $1e

	rst  $38                                         ; $4a18: $ff
	pop  de                                          ; $4a19: $d1
	ld   de, $ff7f                                   ; $4a1a: $11 $7f $ff
	ldh  [c], a                                      ; $4a1d: $e2

Jump_0ea_4a1e:
	ld   de, $ff1a                                   ; $4a1e: $11 $1a $ff
	pop  de                                          ; $4a21: $d1
	ld   de, $ff5f                                   ; $4a22: $11 $5f $ff
	ldh  a, [c]                                      ; $4a25: $f2
	ld   de, $ff18                                   ; $4a26: $11 $18 $ff
	pop  af                                          ; $4a29: $f1
	ld   de, $ff4f                                   ; $4a2a: $11 $4f $ff
	di                                               ; $4a2d: $f3
	ld   de, $ff16                                   ; $4a2e: $11 $16 $ff
	di                                               ; $4a31: $f3
	ld   de, $ff3f                                   ; $4a32: $11 $3f $ff
	db   $f4                                         ; $4a35: $f4
	ld   de, $ff15                                   ; $4a36: $11 $15 $ff
	push af                                          ; $4a39: $f5
	ld   de, $ff3f                                   ; $4a3a: $11 $3f $ff
	push af                                          ; $4a3d: $f5
	ld   de, rAUD1HIGH                                   ; $4a3e: $11 $14 $ff
	or   $11                                         ; $4a41: $f6 $11
	ld   a, $ff                                      ; $4a43: $3e $ff
	or   $11                                         ; $4a45: $f6 $11
	inc  d                                           ; $4a47: $14
	rst  $38                                         ; $4a48: $ff
	rst  $30                                         ; $4a49: $f7
	ld   de, $ff3d                                   ; $4a4a: $11 $3d $ff
	rst  $30                                         ; $4a4d: $f7
	ld   de, rAUD1LOW                                   ; $4a4e: $11 $13 $ff
	ld   sp, hl                                      ; $4a51: $f9
	ld   de, $ff3c                                   ; $4a52: $11 $3c $ff
	ld   sp, hl                                      ; $4a55: $f9
	ld   de, rAUD1LOW                                   ; $4a56: $11 $13 $ff
	ld   sp, hl                                      ; $4a59: $f9
	ld   de, $ff3b                                   ; $4a5a: $11 $3b $ff
	ld   sp, hl                                      ; $4a5d: $f9
	ld   de, rAUD1ENV                                   ; $4a5e: $11 $12 $ff
	ld   a, [$2b11]                                  ; $4a61: $fa $11 $2b
	rst  $38                                         ; $4a64: $ff
	ld   a, [$1211]                                  ; $4a65: $fa $11 $12
	rst  $28                                         ; $4a68: $ef
	ei                                               ; $4a69: $fb
	ld   de, $ff29                                   ; $4a6a: $11 $29 $ff
	ei                                               ; $4a6d: $fb
	ld   de, $df11                                   ; $4a6e: $11 $11 $df
	ei                                               ; $4a71: $fb
	ld   de, $ff29                                   ; $4a72: $11 $29 $ff
	db   $fc                                         ; $4a75: $fc
	ld   de, $cf11                                   ; $4a76: $11 $11 $cf
	db   $fc                                         ; $4a79: $fc
	ld   de, $ff18                                   ; $4a7a: $11 $18 $ff
	db   $fd                                         ; $4a7d: $fd
	ld   de, $bf11                                   ; $4a7e: $11 $11 $bf
	db   $fd                                         ; $4a81: $fd
	ld   de, $ff18                                   ; $4a82: $11 $18 $ff
	db   $fd                                         ; $4a85: $fd
	ld   de, $9f11                                   ; $4a86: $11 $11 $9f
	cp   $11                                         ; $4a89: $fe $11
	rla                                              ; $4a8b: $17
	rst  $38                                         ; $4a8c: $ff
	rst  $28                                         ; $4a8d: $ef
	ld   hl, $8f11                                   ; $4a8e: $21 $11 $8f
	cp   $01                                         ; $4a91: $fe $01
	rla                                              ; $4a93: $17
	rst  $38                                         ; $4a94: $ff
	xor  $21                                         ; $4a95: $ee $21
	ld   de, $ff6f                                   ; $4a97: $11 $6f $ff
	ld   sp, $ff17                                   ; $4a9a: $31 $17 $ff
	rst  $28                                         ; $4a9d: $ef
	ld   b, c                                        ; $4a9e: $41
	ld   de, $ff5f                                   ; $4a9f: $11 $5f $ff
	ld   b, c                                        ; $4aa2: $41
	ld   d, $ff                                      ; $4aa3: $16 $ff
	rst  $38                                         ; $4aa5: $ff
	ld   d, c                                        ; $4aa6: $51
	ld   de, $ff3f                                   ; $4aa7: $11 $3f $ff
	ld   [hl], c                                     ; $4aaa: $71
	ld   d, $ef                                      ; $4aab: $16 $ef
	rst  $38                                         ; $4aad: $ff
	ld   [hl], c                                     ; $4aae: $71
	ld   de, $ff2f                                   ; $4aaf: $11 $2f $ff
	add  c                                           ; $4ab2: $81
	dec  d                                           ; $4ab3: $15
	rst  JumpTable                                         ; $4ab4: $df
	cp   $91                                         ; $4ab5: $fe $91
	ld   de, $ff1f                                   ; $4ab7: $11 $1f $ff
	and  c                                           ; $4aba: $a1
	inc  d                                           ; $4abb: $14
	xor  a                                           ; $4abc: $af
	db   $fd                                         ; $4abd: $fd
	or   c                                           ; $4abe: $b1
	ld   de, $ff1d                                   ; $4abf: $11 $1d $ff
	or   c                                           ; $4ac2: $b1
	inc  de                                          ; $4ac3: $13
	xor  a                                           ; $4ac4: $af
	db   $fc                                         ; $4ac5: $fc
	pop  de                                          ; $4ac6: $d1
	ld   de, $ff19                                   ; $4ac7: $11 $19 $ff
	pop  de                                          ; $4aca: $d1
	ld   de, $fc9f                                   ; $4acb: $11 $9f $fc
	pop  hl                                          ; $4ace: $e1
	ld   de, $ff16                                   ; $4acf: $11 $16 $ff
	ldh  a, [c]                                      ; $4ad2: $f2
	ld   de, $fc8f                                   ; $4ad3: $11 $8f $fc
	db   $e3                                         ; $4ad6: $e3
	ld   de, rAUD1LOW                                   ; $4ad7: $11 $13 $ff
	rst  $30                                         ; $4ada: $f7
	ld   de, $fe7f                                   ; $4adb: $11 $7f $fe
	add  $11                                         ; $4ade: $c6 $11
	ld   [de], a                                     ; $4ae0: $12
	rst  $38                                         ; $4ae1: $ff
	ld   sp, hl                                      ; $4ae2: $f9
	ld   de, $ff6c                                   ; $4ae3: $11 $6c $ff
	cp   c                                           ; $4ae6: $b9
	ld   de, $9f11                                   ; $4ae7: $11 $11 $9f
	db   $fc                                         ; $4aea: $fc
	ld   de, $ff39                                   ; $4aeb: $11 $39 $ff
	cp   h                                           ; $4aee: $bc
	ld   de, $7f11                                   ; $4aef: $11 $11 $7f
	cp   $11                                         ; $4af2: $fe $11
	jr   @+$01                                       ; $4af4: $18 $ff

	cp   h                                           ; $4af6: $bc
	ld   hl, $3f11                                   ; $4af7: $21 $11 $3f
	rst  $38                                         ; $4afa: $ff
	ld   [hl], c                                     ; $4afb: $71
	jr   @+$01                                       ; $4afc: $18 $ff

	call c, $1161                                    ; $4afe: $dc $61 $11
	rra                                              ; $4b01: $1f
	rst  $38                                         ; $4b02: $ff
	and  c                                           ; $4b03: $a1
	ld   d, $cf                                      ; $4b04: $16 $cf
	ei                                               ; $4b06: $fb
	add  c                                           ; $4b07: $81
	ld   de, $ff17                                   ; $4b08: $11 $17 $ff
	pop  bc                                          ; $4b0b: $c1
	inc  de                                          ; $4b0c: $13
	xor  a                                           ; $4b0d: $af
	ld   sp, hl                                      ; $4b0e: $f9
	or   c                                           ; $4b0f: $b1
	ld   de, $ff15                                   ; $4b10: $11 $15 $ff
	db   $e3                                         ; $4b13: $e3
	ld   de, $f99f                                   ; $4b14: $11 $9f $f9
	jp   $1211                                       ; $4b17: $c3 $11 $12


	rst  $38                                         ; $4b1a: $ff
	ld   sp, hl                                      ; $4b1b: $f9
	ld   de, $fc8e                                   ; $4b1c: $11 $8e $fc

jr_0ea_4b1f:
	and  a                                           ; $4b1f: $a7
	ld   [de], a                                     ; $4b20: $12
	ld   de, $fc8f                                   ; $4b21: $11 $8f $fc
	ld   de, $ff5a                                   ; $4b24: $11 $5a $ff
	sbc  d                                           ; $4b27: $9a
	inc  de                                          ; $4b28: $13
	ld   de, $fe3f                                   ; $4b29: $11 $3f $fe
	ld   b, c                                        ; $4b2c: $41
	add  hl, de                                      ; $4b2d: $19
	rst  $38                                         ; $4b2e: $ff
	adc  h                                           ; $4b2f: $8c
	ld   b, d                                        ; $4b30: $42
	ld   hl, $ff1f                                   ; $4b31: $21 $1f $ff
	sub  c                                           ; $4b34: $91
	jr   @-$1f                                       ; $4b35: $18 $df

	cp   d                                           ; $4b37: $ba
	ld   [hl], c                                     ; $4b38: $71
	ld   b, c                                        ; $4b39: $41
	dec  d                                           ; $4b3a: $15
	rst  $38                                         ; $4b3b: $ff
	pop  de                                          ; $4b3c: $d1
	inc  d                                           ; $4b3d: $14
	sbc  a                                           ; $4b3e: $9f
	ld   hl, sp-$4e                                  ; $4b3f: $f8 $b2
	ld   b, c                                        ; $4b41: $41
	ld   de, $f6ff                                   ; $4b42: $11 $ff $f6
	ld   de, $f98f                                   ; $4b45: $11 $8f $f9
	or   [hl]                                        ; $4b48: $b6
	ld   b, h                                        ; $4b49: $44
	ld   de, $fc8f                                   ; $4b4a: $11 $8f $fc
	ld   de, $fe7a                                   ; $4b4d: $11 $7a $fe
	adc  d                                           ; $4b50: $8a
	dec  [hl]                                        ; $4b51: $35
	ld   de, $ff2f                                   ; $4b52: $11 $2f $ff
	ld   sp, $ff38                                   ; $4b55: $31 $38 $ff
	ld   a, l                                        ; $4b58: $7d
	ld   d, l                                        ; $4b59: $55
	ld   hl, $ff1d                                   ; $4b5a: $21 $1d $ff
	and  c                                           ; $4b5d: $a1
	jr   jr_0ea_4b1f                                 ; $4b5e: $18 $bf

	cp   e                                           ; $4b60: $bb
	and  h                                           ; $4b61: $a4
	ld   d, c                                        ; $4b62: $51
	inc  d                                           ; $4b63: $14
	rst  $38                                         ; $4b64: $ff
	pop  af                                          ; $4b65: $f1
	dec  d                                           ; $4b66: $15
	ld   a, a                                        ; $4b67: $7f
	ld   a, [$51d4]                                  ; $4b68: $fa $d4 $51
	ld   de, $faff                                   ; $4b6b: $11 $ff $fa
	ld   de, $fd4c                                   ; $4b6e: $11 $4c $fd
	add  sp, $32                                     ; $4b71: $e8 $32
	ld   de, $ff8f                                   ; $4b73: $11 $8f $ff
	ld   de, $ff17                                   ; $4b76: $11 $17 $ff
	db   $db                                         ; $4b79: $db
	ld   [hl+], a                                    ; $4b7a: $22
	ld   de, $ff2f                                   ; $4b7b: $11 $2f $ff
	ld   d, c                                        ; $4b7e: $51
	dec  d                                           ; $4b7f: $15
	rst  $38                                         ; $4b80: $ff
	call z, $1131                                    ; $4b81: $cc $31 $11
	rra                                              ; $4b84: $1f
	rst  $38                                         ; $4b85: $ff
	and  c                                           ; $4b86: $a1
	inc  d                                           ; $4b87: $14
	rst  JumpTable                                         ; $4b88: $df
	db   $fc                                         ; $4b89: $fc
	ld   d, c                                        ; $4b8a: $51
	ld   de, $ff19                                   ; $4b8b: $11 $19 $ff
	pop  de                                          ; $4b8e: $d1
	ld   [de], a                                     ; $4b8f: $12
	adc  a                                           ; $4b90: $8f
	db   $fd                                         ; $4b91: $fd
	sub  c                                           ; $4b92: $91
	ld   de, $ff17                                   ; $4b93: $11 $17 $ff
	pop  de                                          ; $4b96: $d1
	ld   de, $fb7f                                   ; $4b97: $11 $7f $fb
	pop  bc                                          ; $4b9a: $c1
	ld   de, rAUD1HIGH                                   ; $4b9b: $11 $14 $ff
	call nc, $8f11                                   ; $4b9e: $d4 $11 $8f
	ld   a, [$11d4]                                  ; $4ba1: $fa $d4 $11
	ld   de, $f8ff                                   ; $4ba4: $11 $ff $f8
	ld   de, $fa9d                                   ; $4ba7: $11 $9d $fa
	or   a                                           ; $4baa: $b7
	inc  de                                          ; $4bab: $13
	ld   de, $faaf                                   ; $4bac: $11 $af $fa
	ld   de, $fe9a                                   ; $4baf: $11 $9a $fe
	sbc  d                                           ; $4bb2: $9a
	inc  d                                           ; $4bb3: $14
	ld   de, $fc4f                                   ; $4bb4: $11 $4f $fc
	ld   de, $ff49                                   ; $4bb7: $11 $49 $ff
	adc  h                                           ; $4bba: $8c
	inc  hl                                          ; $4bbb: $23
	ld   hl, $fe1f                                   ; $4bbc: $21 $1f $fe
	ld   [hl], c                                     ; $4bbf: $71
	ld   a, [de]                                     ; $4bc0: $1a
	rst  $28                                         ; $4bc1: $ef
	sbc  h                                           ; $4bc2: $9c
	ld   h, c                                        ; $4bc3: $61
	ld   sp, $ff1c                                   ; $4bc4: $31 $1c $ff
	and  c                                           ; $4bc7: $a1
	add  hl, de                                      ; $4bc8: $19
	xor  a                                           ; $4bc9: $af
	jp   c, Jump_0ea_4191                            ; $4bca: $da $91 $41

	ld   d, $ff                                      ; $4bcd: $16 $ff
	or   c                                           ; $4bcf: $b1
	ld   d, $9f                                      ; $4bd0: $16 $9f
	ld   sp, hl                                      ; $4bd2: $f9
	pop  bc                                          ; $4bd3: $c1
	ld   hl, rAUD1LOW                                   ; $4bd4: $21 $13 $ff
	call nz, $af11                                   ; $4bd7: $c4 $11 $af
	ld   hl, sp-$3c                                  ; $4bda: $f8 $c4
	ld   [de], a                                     ; $4bdc: $12
	ld   de, $f9ff                                   ; $4bdd: $11 $ff $f9
	ld   de, $fbac                                   ; $4be0: $11 $ac $fb
	cp   b                                           ; $4be3: $b8
	inc  de                                          ; $4be4: $13
	ld   de, $faaf                                   ; $4be5: $11 $af $fa
	ld   de, $ff9a                                   ; $4be8: $11 $9a $ff
	sbc  e                                           ; $4beb: $9b
	ld   [de], a                                     ; $4bec: $12
	ld   de, $fb7f                                   ; $4bed: $11 $7f $fb
	ld   de, $ff6a                                   ; $4bf0: $11 $6a $ff
	sbc  l                                           ; $4bf3: $9d
	ld   de, $4f11                                   ; $4bf4: $11 $11 $4f
	db   $fc                                         ; $4bf7: $fc
	ld   hl, $ff3a                                   ; $4bf8: $21 $3a $ff
	adc  l                                           ; $4bfb: $8d
	ld   sp, $3f21                                   ; $4bfc: $31 $21 $3f
	db   $fd                                         ; $4bff: $fd
	ld   d, c                                        ; $4c00: $51
	dec  de                                          ; $4c01: $1b
	rst  $28                                         ; $4c02: $ef
	sbc  l                                           ; $4c03: $9d
	ld   h, c                                        ; $4c04: $61
	ld   de, $fe1f                                   ; $4c05: $11 $1f $fe
	ld   [hl], c                                     ; $4c08: $71
	dec  de                                          ; $4c09: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c0a: $cf
	cp   l                                           ; $4c0b: $bd
	ld   [hl], c                                     ; $4c0c: $71
	ld   de, $ff1f                                   ; $4c0d: $11 $1f $ff
	add  c                                           ; $4c10: $81
	ld   a, [de]                                     ; $4c11: $1a
	cp   a                                           ; $4c12: $bf
	call c, $1191                                    ; $4c13: $dc $91 $11
	ld   e, $ff                                      ; $4c16: $1e $ff
	add  c                                           ; $4c18: $81
	ld   a, [de]                                     ; $4c19: $1a
	cp   a                                           ; $4c1a: $bf
	db   $db                                         ; $4c1b: $db
	or   c                                           ; $4c1c: $b1
	ld   de, $ff1e                                   ; $4c1d: $11 $1e $ff
	sub  c                                           ; $4c20: $91
	add  hl, de                                      ; $4c21: $19
	cp   a                                           ; $4c22: $bf
	db   $eb                                         ; $4c23: $eb
	or   c                                           ; $4c24: $b1
	ld   de, $ff1f                                   ; $4c25: $11 $1f $ff
	add  c                                           ; $4c28: $81
	ld   a, [de]                                     ; $4c29: $1a
	cp   a                                           ; $4c2a: $bf
	db   $eb                                         ; $4c2b: $eb
	or   c                                           ; $4c2c: $b1
	ld   de, $ff0f                                   ; $4c2d: $11 $0f $ff
	ld   [hl], c                                     ; $4c30: $71
	ld   a, [de]                                     ; $4c31: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c32: $cf
	db   $ec                                         ; $4c33: $ec
	and  c                                           ; $4c34: $a1
	ld   de, $ff1f                                   ; $4c35: $11 $1f $ff
	ld   [hl], c                                     ; $4c38: $71
	ld   a, [de]                                     ; $4c39: $1a
	cp   a                                           ; $4c3a: $bf
	db   $db                                         ; $4c3b: $db
	and  c                                           ; $4c3c: $a1
	ld   de, $ff1f                                   ; $4c3d: $11 $1f $ff
	ld   [hl], c                                     ; $4c40: $71
	dec  de                                          ; $4c41: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c42: $cf
	call z, $11a1                                    ; $4c43: $cc $a1 $11
	rra                                              ; $4c46: $1f
	cp   $61                                         ; $4c47: $fe $61
	dec  de                                          ; $4c49: $1b
	rst  JumpTable                                         ; $4c4a: $df
	call $1171                                       ; $4c4b: $cd $71 $11
	cpl                                              ; $4c4e: $2f
	db   $fc                                         ; $4c4f: $fc
	ld   d, c                                        ; $4c50: $51
	inc  e                                           ; $4c51: $1c
	rst  $28                                         ; $4c52: $ef
	xor  l                                           ; $4c53: $ad
	ld   h, c                                        ; $4c54: $61
	ld   de, $fb3f                                   ; $4c55: $11 $3f $fb
	ld   b, c                                        ; $4c58: $41
	dec  de                                          ; $4c59: $1b
	rst  $38                                         ; $4c5a: $ff
	sbc  l                                           ; $4c5b: $9d
	ld   b, c                                        ; $4c5c: $41
	ld   de, $fb6f                                   ; $4c5d: $11 $6f $fb
	ld   de, $ff3b                                   ; $4c60: $11 $3b $ff
	adc  l                                           ; $4c63: $8d
	ld   de, $9f11                                   ; $4c64: $11 $11 $9f
	ld   a, [$6b11]                                  ; $4c67: $fa $11 $6b
	rst  $38                                         ; $4c6a: $ff
	adc  l                                           ; $4c6b: $8d
	ld   de, $bf11                                   ; $4c6c: $11 $11 $bf
	ld   sp, hl                                      ; $4c6f: $f9
	ld   de, $ffaa                                   ; $4c70: $11 $aa $ff
	sbc  l                                           ; $4c73: $9d
	ld   de, rAUD1LEN                                   ; $4c74: $11 $11 $ff
	rst  $30                                         ; $4c77: $f7
	ld   de, $fecb                                   ; $4c78: $11 $cb $fe
	xor  d                                           ; $4c7b: $aa
	ld   de, rAUD1ENV                                   ; $4c7c: $11 $12 $ff
	or   l                                           ; $4c7f: $b5
	ld   de, $fbdd                                   ; $4c80: $11 $dd $fb
	sub  $11                                         ; $4c83: $d6 $11
	ld   d, $ff                                      ; $4c85: $16 $ff
	sub  d                                           ; $4c87: $92
	ld   [de], a                                     ; $4c88: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c89: $cf
	ld   hl, sp-$2e                                  ; $4c8a: $f8 $d2
	ld   [de], a                                     ; $4c8c: $12
	ld   a, [de]                                     ; $4c8d: $1a
	rst  $38                                         ; $4c8e: $ff
	add  c                                           ; $4c8f: $81
	rla                                              ; $4c90: $17
	cp   a                                           ; $4c91: $bf
	ld   hl, sp-$3f                                  ; $4c92: $f8 $c1
	ld   [de], a                                     ; $4c94: $12
	rra                                              ; $4c95: $1f
	rst  $38                                         ; $4c96: $ff
	ld   [hl], c                                     ; $4c97: $71
	dec  de                                          ; $4c98: $1b
	cp   a                                           ; $4c99: $bf
	ld   a, [$11a1]                                  ; $4c9a: $fa $a1 $11
	ccf                                              ; $4c9d: $3f
	ei                                               ; $4c9e: $fb
	ld   b, c                                        ; $4c9f: $41
	inc  e                                           ; $4ca0: $1c
	rst  $28                                         ; $4ca1: $ef
	cp   e                                           ; $4ca2: $bb
	ld   d, c                                        ; $4ca3: $51
	ld   hl, $f97f                                   ; $4ca4: $21 $7f $f9
	ld   de, $ff4c                                   ; $4ca7: $11 $4c $ff
	sbc  h                                           ; $4caa: $9c
	ld   de, $ff21                                   ; $4cab: $11 $21 $ff
	rst  $30                                         ; $4cae: $f7
	ld   de, $ffab                                   ; $4caf: $11 $ab $ff
	sbc  d                                           ; $4cb2: $9a
	ld   de, $ff22                                   ; $4cb3: $11 $22 $ff
	or   l                                           ; $4cb6: $b5
	ld   de, $fcdd                                   ; $4cb7: $11 $dd $fc
	or   a                                           ; $4cba: $b7
	ld   de, $ff07                                   ; $4cbb: $11 $07 $ff
	add  c                                           ; $4cbe: $81
	dec  d                                           ; $4cbf: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cc0: $cf
	ld   hl, sp-$3f                                  ; $4cc1: $f8 $c1
	inc  de                                          ; $4cc3: $13
	ld   e, $ff                                      ; $4cc4: $1e $ff
	ld   h, c                                        ; $4cc6: $61
	dec  de                                          ; $4cc7: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cc8: $cf
	ld   hl, sp-$4f                                  ; $4cc9: $f8 $b1
	ld   [de], a                                     ; $4ccb: $12
	cpl                                              ; $4ccc: $2f
	ei                                               ; $4ccd: $fb
	ld   b, c                                        ; $4cce: $41
	dec  e                                           ; $4ccf: $1d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cd0: $cf
	cp   d                                           ; $4cd1: $ba
	ld   [hl], c                                     ; $4cd2: $71
	ld   de, $f76f                                   ; $4cd3: $11 $6f $f7
	ld   de, $ff5d                                   ; $4cd6: $11 $5d $ff
	ld   a, e                                        ; $4cd9: $7b
	ld   de, $cf31                                   ; $4cda: $11 $31 $cf
	or   $11                                         ; $4cdd: $f6 $11
	cp   h                                           ; $4cdf: $bc
	rst  $38                                         ; $4ce0: $ff
	ld   a, e                                        ; $4ce1: $7b
	ld   de, $ff32                                   ; $4ce2: $11 $32 $ff
	and  l                                           ; $4ce5: $a5
	ld   de, $fcfd                                   ; $4ce6: $11 $fd $fc
	add  a                                           ; $4ce9: $87
	ld   [de], a                                     ; $4cea: $12
	dec  h                                           ; $4ceb: $25
	rst  $38                                         ; $4cec: $ff
	add  e                                           ; $4ced: $83
	ld   [de], a                                     ; $4cee: $12
	rst  $28                                         ; $4cef: $ef
	ld   hl, sp-$4e                                  ; $4cf0: $f8 $b2
	inc  d                                           ; $4cf2: $14
	ld   a, [de]                                     ; $4cf3: $1a
	rst  $38                                         ; $4cf4: $ff
	ld   h, c                                        ; $4cf5: $61
	ld   a, [de]                                     ; $4cf6: $1a
	rst  JumpTable                                         ; $4cf7: $df
	or   $c1                                         ; $4cf8: $f6 $c1
	inc  d                                           ; $4cfa: $14
	rra                                              ; $4cfb: $1f
	db   $fd                                         ; $4cfc: $fd
	ld   h, c                                        ; $4cfd: $61
	ld   e, $bf                                      ; $4cfe: $1e $bf
	rst  $30                                         ; $4d00: $f7
	and  c                                           ; $4d01: $a1
	inc  d                                           ; $4d02: $14
	ccf                                              ; $4d03: $3f
	ld   a, [$1f51]                                  ; $4d04: $fa $51 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d07: $cf
	xor  c                                           ; $4d08: $a9
	ld   h, c                                        ; $4d09: $61
	ld   [hl-], a                                    ; $4d0a: $32
	ld   e, a                                        ; $4d0b: $5f
	rst  $30                                         ; $4d0c: $f7
	ld   hl, $ff4e                                   ; $4d0d: $21 $4e $ff
	ld   a, e                                        ; $4d10: $7b

Call_0ea_4d11:
	ld   hl, $9f41                                   ; $4d11: $21 $41 $9f
	or   $11                                         ; $4d14: $f6 $11
	xor  h                                           ; $4d16: $ac
	rst  $38                                         ; $4d17: $ff
	ld   l, h                                        ; $4d18: $6c
	ld   de, $ff51                                   ; $4d19: $11 $51 $ff
	sub  $11                                         ; $4d1c: $d6 $11
	db   $eb                                         ; $4d1e: $eb
	rst  $38                                         ; $4d1f: $ff
	ld   a, e                                        ; $4d20: $7b
	ld   de, $ff42                                   ; $4d21: $11 $42 $ff
	sub  l                                           ; $4d24: $95

Call_0ea_4d25:
	ld   de, $fbfb                                   ; $4d25: $11 $fb $fb
	sub  a                                           ; $4d28: $97
	inc  de                                          ; $4d29: $13
	dec  [hl]                                        ; $4d2a: $35
	rst  $38                                         ; $4d2b: $ff
	ld   h, e                                        ; $4d2c: $63
	inc  d                                           ; $4d2d: $14
	cp   $f7                                         ; $4d2e: $fe $f7
	or   e                                           ; $4d30: $b3
	inc  d                                           ; $4d31: $14
	add  hl, hl                                      ; $4d32: $29
	rst  $38                                         ; $4d33: $ff
	ld   h, c                                        ; $4d34: $61
	ld   a, [de]                                     ; $4d35: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d36: $cf
	or   $c1                                         ; $4d37: $f6 $c1
	dec  d                                           ; $4d39: $15
	dec  l                                           ; $4d3a: $2d
	db   $fd                                         ; $4d3b: $fd
	ld   h, c                                        ; $4d3c: $61
	ld   e, $cf                                      ; $4d3d: $1e $cf
	or   $b1                                         ; $4d3f: $f6 $b1
	inc  d                                           ; $4d41: $14
	rra                                              ; $4d42: $1f
	ld   sp, hl                                      ; $4d43: $f9
	ld   d, c                                        ; $4d44: $51
	rra                                              ; $4d45: $1f
	cp   a                                           ; $4d46: $bf
	ret  z                                           ; $4d47: $c8

	add  c                                           ; $4d48: $81
	inc  h                                           ; $4d49: $24
	ld   c, a                                        ; $4d4a: $4f
	or   $41                                         ; $4d4b: $f6 $41
	cpl                                              ; $4d4d: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d4e: $cf
	adc  d                                           ; $4d4f: $8a
	ld   d, c                                        ; $4d50: $51
	ld   b, d                                        ; $4d51: $42
	ld   l, a                                        ; $4d52: $6f
	or   $11                                         ; $4d53: $f6 $11
	adc  l                                           ; $4d55: $8d
	rst  $38                                         ; $4d56: $ff
	ld   l, e                                        ; $4d57: $6b
	ld   de, $af52                                   ; $4d58: $11 $52 $af
	or   $11                                         ; $4d5b: $f6 $11
	call c, Call_0ea_6bff                            ; $4d5d: $dc $ff $6b
	ld   de, $ef51                                   ; $4d60: $11 $51 $ef
	and  [hl]                                        ; $4d63: $a6
	ld   de, $fdfa                                   ; $4d64: $11 $fa $fd
	ld   a, d                                        ; $4d67: $7a
	ld   de, $ff42                                   ; $4d68: $11 $42 $ff
	add  l                                           ; $4d6b: $85
	ld   de, $fafa                                   ; $4d6c: $11 $fa $fa
	and  a                                           ; $4d6f: $a7
	inc  de                                          ; $4d70: $13
	inc  [hl]                                        ; $4d71: $34
	rst  $38                                         ; $4d72: $ff
	ld   h, h                                        ; $4d73: $64
	dec  d                                           ; $4d74: $15
	db   $dd                                         ; $4d75: $dd
	rst  $30                                         ; $4d76: $f7
	or   l                                           ; $4d77: $b5
	inc  d                                           ; $4d78: $14
	dec  d                                           ; $4d79: $15
	rst  $38                                         ; $4d7a: $ff
	ld   [hl], d                                     ; $4d7b: $72
	add  hl, de                                      ; $4d7c: $19
	xor  [hl]                                        ; $4d7d: $ae
	ld   sp, hl                                      ; $4d7e: $f9
	ldh  [c], a                                      ; $4d7f: $e2
	inc  de                                          ; $4d80: $13
	ld   a, [de]                                     ; $4d81: $1a
	rst  $38                                         ; $4d82: $ff
	sub  c                                           ; $4d83: $91
	add  hl, de                                      ; $4d84: $19
	adc  a                                           ; $4d85: $8f
	ld   a, [$12c1]                                  ; $4d86: $fa $c1 $12
	rra                                              ; $4d89: $1f
	db   $fc                                         ; $4d8a: $fc
	ld   [hl], c                                     ; $4d8b: $71
	inc  e                                           ; $4d8c: $1c
	xor  a                                           ; $4d8d: $af
	ld   a, [$1381]                                  ; $4d8e: $fa $81 $13
	ld   e, a                                        ; $4d91: $5f
	rst  $30                                         ; $4d92: $f7
	ld   hl, $ef2f                                   ; $4d93: $21 $2f $ef
	xor  d                                           ; $4d96: $aa
	ld   hl, $bf33                                   ; $4d97: $21 $33 $bf
	db   $f4                                         ; $4d9a: $f4
	ld   de, $ffcd                                   ; $4d9b: $11 $cd $ff
	ld   a, d                                        ; $4d9e: $7a
	ld   de, $ff55                                   ; $4d9f: $11 $55 $ff
	ld   h, e                                        ; $4da2: $63
	ld   de, $fbfc                                   ; $4da3: $11 $fc $fb
	sub  h                                           ; $4da6: $94
	inc  de                                          ; $4da7: $13
	ld   e, b                                        ; $4da8: $58
	rst  $38                                         ; $4da9: $ff
	ld   sp, $ff19                                   ; $4daa: $31 $19 $ff
	or   $a1                                         ; $4dad: $f6 $a1
	dec  d                                           ; $4daf: $15
	ccf                                              ; $4db0: $3f
	ld   a, [$1f31]                                  ; $4db1: $fa $31 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db4: $cf
	rst  $20                                         ; $4db5: $e7
	add  c                                           ; $4db6: $81
	dec  d                                           ; $4db7: $15
	ld   e, a                                        ; $4db8: $5f
	db   $f4                                         ; $4db9: $f4
	ld   hl, $df3f                                   ; $4dba: $21 $3f $df
	adc  d                                           ; $4dbd: $8a
	ld   sp, $9f44                                   ; $4dbe: $31 $44 $9f
	di                                               ; $4dc1: $f3
	ld   de, $ffdd                                   ; $4dc2: $11 $dd $ff
	ld   a, d                                        ; $4dc5: $7a
	ld   de, $ff64                                   ; $4dc6: $11 $64 $ff
	ld   [hl], e                                     ; $4dc9: $73
	ld   de, $fcfb                                   ; $4dca: $11 $fb $fc
	ld   [hl], a                                     ; $4dcd: $77
	ld   [de], a                                     ; $4dce: $12
	ld   d, [hl]                                     ; $4dcf: $56
	rst  $38                                         ; $4dd0: $ff
	ld   [hl-], a                                    ; $4dd1: $32
	ld   d, $fe                                      ; $4dd2: $16 $fe
	rst  $30                                         ; $4dd4: $f7
	and  d                                           ; $4dd5: $a2
	dec  d                                           ; $4dd6: $15
	ld   c, h                                        ; $4dd7: $4c
	db   $fd                                         ; $4dd8: $fd
	ld   sp, $cf1f                                   ; $4dd9: $31 $1f $cf
	or   $91                                         ; $4ddc: $f6 $91
	ld   d, $4f                                      ; $4dde: $16 $4f
	push af                                          ; $4de0: $f5
	ld   sp, $bf1f                                   ; $4de1: $31 $1f $bf
	sbc  b                                           ; $4de4: $98
	ld   d, c                                        ; $4de5: $51
	dec  [hl]                                        ; $4de6: $35
	adc  a                                           ; $4de7: $8f
	ldh  a, [c]                                      ; $4de8: $f2
	ld   de, $ffbe                                   ; $4de9: $11 $be $ff
	ld   l, d                                        ; $4dec: $6a
	ld   de, $ff53                                   ; $4ded: $11 $53 $ff
	add  e                                           ; $4df0: $83
	ld   de, $fdfc                                   ; $4df1: $11 $fc $fd
	ld   [hl], a                                     ; $4df4: $77
	ld   de, $ff66                                   ; $4df5: $11 $66 $ff
	ld   [hl+], a                                    ; $4df8: $22
	ld   d, $fd                                      ; $4df9: $16 $fd
	rst  $30                                         ; $4dfb: $f7
	sub  d                                           ; $4dfc: $92
	dec  d                                           ; $4dfd: $15
	ld   c, e                                        ; $4dfe: $4b
	db   $fc                                         ; $4dff: $fc
	ld   hl, $cf1f                                   ; $4e00: $21 $1f $cf
	push af                                          ; $4e03: $f5
	sub  c                                           ; $4e04: $91
	ld   d, $4f                                      ; $4e05: $16 $4f
	db   $f4                                         ; $4e07: $f4
	ld   sp, $cf1f                                   ; $4e08: $31 $1f $cf
	xor  c                                           ; $4e0b: $a9
	ld   d, c                                        ; $4e0c: $51
	ld   b, h                                        ; $4e0d: $44
	sbc  a                                           ; $4e0e: $9f
	ldh  a, [c]                                      ; $4e0f: $f2
	ld   de, $ffee                                   ; $4e10: $11 $ee $ff
	ld   e, d                                        ; $4e13: $5a
	ld   de, $ff64                                   ; $4e14: $11 $64 $ff
	ld   h, e                                        ; $4e17: $63
	ld   de, $fcfb                                   ; $4e18: $11 $fb $fc
	halt                                             ; $4e1b: $76
	inc  de                                          ; $4e1c: $13
	ld   d, a                                        ; $4e1d: $57
	rst  $38                                         ; $4e1e: $ff
	ld   hl, $ff1b                                   ; $4e1f: $21 $1b $ff
	push af                                          ; $4e22: $f5
	sub  c                                           ; $4e23: $91
	ld   d, $4f                                      ; $4e24: $16 $4f
	rst  $30                                         ; $4e26: $f7
	ld   hl, $cf1f                                   ; $4e27: $21 $1f $cf
	rst  ToBoot                                         ; $4e2a: $c7
	ld   [hl], c                                     ; $4e2b: $71
	ld   h, $7f                                      ; $4e2c: $26 $7f
	pop  af                                          ; $4e2e: $f1
	ld   bc, $efaf                                   ; $4e2f: $01 $af $ef
	ld   l, c                                        ; $4e32: $69
	ld   de, $ff64                                   ; $4e33: $11 $64 $ff
	ld   [hl], d                                     ; $4e36: $72
	ld   de, $fdfc                                   ; $4e37: $11 $fc $fd
	ld   [hl], a                                     ; $4e3a: $77
	ld   [de], a                                     ; $4e3b: $12
	ld   e, c                                        ; $4e3c: $59
	rst  $38                                         ; $4e3d: $ff
	ld   de, $ff1c                                   ; $4e3e: $11 $1c $ff
	or   $91                                         ; $4e41: $f6 $91
	ld   d, $5f                                      ; $4e43: $16 $5f
	or   $21                                         ; $4e45: $f6 $21
	rra                                              ; $4e47: $1f
	cp   a                                           ; $4e48: $bf
	or   a                                           ; $4e49: $b7
	ld   h, c                                        ; $4e4a: $61
	dec  [hl]                                        ; $4e4b: $35
	cp   a                                           ; $4e4c: $bf
	pop  af                                          ; $4e4d: $f1
	ld   de, $ffee                                   ; $4e4e: $11 $ee $ff
	ld   l, c                                        ; $4e51: $69
	ld   de, $ff66                                   ; $4e52: $11 $66 $ff
	ld   sp, $fc13                                   ; $4e55: $31 $13 $fc
	ld   hl, sp-$7e                                  ; $4e58: $f8 $82
	dec  d                                           ; $4e5a: $15
	ld   e, [hl]                                     ; $4e5b: $5e
	ld   sp, hl                                      ; $4e5c: $f9
	ld   de, $df1f                                   ; $4e5d: $11 $1f $df
	or   $71                                         ; $4e60: $f6 $71
	ld   d, $9f                                      ; $4e62: $16 $9f
	pop  af                                          ; $4e64: $f1
	ld   de, $efbf                                   ; $4e65: $11 $bf $ef
	ld   a, c                                        ; $4e68: $79
	ld   de, $ff66                                   ; $4e69: $11 $66 $ff
	ld   b, c                                        ; $4e6c: $41
	ld   de, $f9fc                                   ; $4e6d: $11 $fc $f9
	add  e                                           ; $4e70: $83
	inc  d                                           ; $4e71: $14
	ld   e, a                                        ; $4e72: $5f
	ld   sp, hl                                      ; $4e73: $f9
	ld   de, $df1f                                   ; $4e74: $11 $1f $df
	or   $61                                         ; $4e77: $f6 $61
	ld   d, $df                                      ; $4e79: $16 $df
	pop  af                                          ; $4e7b: $f1
	ld   de, $ffde                                   ; $4e7c: $11 $de $ff
	ld   l, b                                        ; $4e7f: $68
	ld   de, $ff69                                   ; $4e80: $11 $69 $ff
	ld   de, $fd17                                   ; $4e83: $11 $17 $fd
	ld   hl, sp-$7f                                  ; $4e86: $f8 $81
	dec  d                                           ; $4e88: $15
	ld   a, a                                        ; $4e89: $7f
	di                                               ; $4e8a: $f3
	ld   de, $df3f                                   ; $4e8b: $11 $3f $df
	or   a                                           ; $4e8e: $b7
	ld   de, $ff46                                   ; $4e8f: $11 $46 $ff
	ld   h, c                                        ; $4e92: $61
	ld   de, $fdfd                                   ; $4e93: $11 $fd $fd
	ld   [hl], e                                     ; $4e96: $73
	inc  de                                          ; $4e97: $13
	ld   l, a                                        ; $4e98: $6f
	ld   sp, hl                                      ; $4e99: $f9
	ld   de, $cf1f                                   ; $4e9a: $11 $1f $cf
	rst  $30                                         ; $4e9d: $f7
	ld   b, c                                        ; $4e9e: $41
	dec  d                                           ; $4e9f: $15
	rst  $38                                         ; $4ea0: $ff
	and  c                                           ; $4ea1: $a1
	ld   de, $ffed                                   ; $4ea2: $11 $ed $ff
	ld   [hl], l                                     ; $4ea5: $75
	ld   de, $fc5f                                   ; $4ea6: $11 $5f $fc
	ld   de, $ef1e                                   ; $4ea9: $11 $1e $ef
	rst  $30                                         ; $4eac: $f7
	ld   d, c                                        ; $4ead: $51
	dec  d                                           ; $4eae: $15
	rst  $28                                         ; $4eaf: $ef
	pop  hl                                          ; $4eb0: $e1
	ld   de, $ffcd                                   ; $4eb1: $11 $cd $ff
	ld   [hl], l                                     ; $4eb4: $75
	ld   de, $fe5d                                   ; $4eb5: $11 $5d $fe
	ld   hl, $ef1c                                   ; $4eb8: $21 $1c $ef
	ld   hl, sp+$51                                  ; $4ebb: $f8 $51
	dec  d                                           ; $4ebd: $15
	rst  $28                                         ; $4ebe: $ef
	ldh  a, [c]                                      ; $4ebf: $f2
	ld   de, $ffbd                                   ; $4ec0: $11 $bd $ff
	add  l                                           ; $4ec3: $85
	ld   de, $ff6d                                   ; $4ec4: $11 $6d $ff
	ld   hl, $ef1b                                   ; $4ec7: $21 $1b $ef
	ld   hl, sp+$51                                  ; $4eca: $f8 $51
	ld   d, $ef                                      ; $4ecc: $16 $ef
	pop  af                                          ; $4ece: $f1
	ld   de, $ffbd                                   ; $4ecf: $11 $bd $ff
	add  l                                           ; $4ed2: $85
	ld   de, $fd6f                                   ; $4ed3: $11 $6f $fd
	ld   de, $df1c                                   ; $4ed6: $11 $1c $df
	rst  $30                                         ; $4ed9: $f7
	ld   b, c                                        ; $4eda: $41
	ld   d, $ff                                      ; $4edb: $16 $ff
	pop  bc                                          ; $4edd: $c1
	ld   de, $ffdd                                   ; $4ede: $11 $dd $ff
	ld   [hl], e                                     ; $4ee1: $73
	ld   de, $fc6f                                   ; $4ee2: $11 $6f $fc
	ld   de, $ef1e                                   ; $4ee5: $11 $1e $ef
	rst  $30                                         ; $4ee8: $f7
	ld   hl, $ff17                                   ; $4ee9: $21 $17 $ff
	and  c                                           ; $4eec: $a1
	ld   de, $ffed                                   ; $4eed: $11 $ed $ff
	ld   [hl], c                                     ; $4ef0: $71
	ld   de, $f87f                                   ; $4ef1: $11 $7f $f8
	ld   de, $df1e                                   ; $4ef4: $11 $1e $df
	or   $11                                         ; $4ef7: $f6 $11
	jr   z, @+$01                                    ; $4ef9: $28 $ff

	ld   [hl], c                                     ; $4efb: $71
	ld   de, $fffd                                   ; $4efc: $11 $fd $ff
	ld   h, c                                        ; $4eff: $61
	ld   [de], a                                     ; $4f00: $12
	sbc  a                                           ; $4f01: $9f
	push af                                          ; $4f02: $f5
	ld   de, $df1f                                   ; $4f03: $11 $1f $df
	and  $11                                         ; $4f06: $e6 $11
	ld   a, [hl-]                                    ; $4f08: $3a
	rst  $38                                         ; $4f09: $ff
	ld   b, c                                        ; $4f0a: $41
	inc  de                                          ; $4f0b: $13
	cp   $fc                                         ; $4f0c: $fe $fc
	ld   d, c                                        ; $4f0e: $51
	inc  d                                           ; $4f0f: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f10: $cf
	di                                               ; $4f11: $f3
	ld   de, $ff6e                                   ; $4f12: $11 $6e $ff
	call nz, Call_0ea_4d11                           ; $4f15: $c4 $11 $4d
	rst  $38                                         ; $4f18: $ff
	ld   hl, $ef18                                   ; $4f19: $21 $18 $ef
	ld   sp, hl                                      ; $4f1c: $f9
	ld   sp, $ef15                                   ; $4f1d: $31 $15 $ef
	ldh  a, [c]                                      ; $4f20: $f2
	ld   de, $ffae                                   ; $4f21: $11 $ae $ff
	sub  d                                           ; $4f24: $92

Jump_0ea_4f25:
	ld   de, $fb6f                                   ; $4f25: $11 $6f $fb
	ld   hl, $cf1c                                   ; $4f28: $21 $1c $cf
	ld   hl, sp+$11                                  ; $4f2b: $f8 $11
	rla                                              ; $4f2d: $17
	rst  $38                                         ; $4f2e: $ff
	add  c                                           ; $4f2f: $81
	ld   de, $ffed                                   ; $4f30: $11 $ed $ff
	ld   h, c                                        ; $4f33: $61
	ld   de, $f69f                                   ; $4f34: $11 $9f $f6
	ld   de, $df1e                                   ; $4f37: $11 $1e $df
	or   $11                                         ; $4f3a: $f6 $11
	ld   a, [hl+]                                    ; $4f3c: $2a
	rst  $38                                         ; $4f3d: $ff
	ld   b, c                                        ; $4f3e: $41
	ld   [de], a                                     ; $4f3f: $12
	db   $fd                                         ; $4f40: $fd
	cp   $51                                         ; $4f41: $fe $51
	inc  d                                           ; $4f43: $14
	cp   a                                           ; $4f44: $bf
	di                                               ; $4f45: $f3
	ld   de, $ff5e                                   ; $4f46: $11 $5e $ff
	call nc, Call_0ea_5f11                           ; $4f49: $d4 $11 $5f
	rst  $38                                         ; $4f4c: $ff
	ld   hl, $df19                                   ; $4f4d: $21 $19 $df
	ei                                               ; $4f50: $fb
	ld   sp, $ff16                                   ; $4f51: $31 $16 $ff
	jp   nc, wTitleScreenFrameCounter+1                                   ; $4f54: $d2 $11 $cc

	rst  $38                                         ; $4f57: $ff
	add  c                                           ; $4f58: $81
	ld   de, $f97f                                   ; $4f59: $11 $7f $f9
	ld   de, $cf1d                                   ; $4f5c: $11 $1d $cf
	ld   hl, sp+$11                                  ; $4f5f: $f8 $11
	add  hl, de                                      ; $4f61: $19
	rst  $38                                         ; $4f62: $ff
	ld   h, c                                        ; $4f63: $61
	ld   de, $ffdd                                   ; $4f64: $11 $dd $ff
	ld   h, c                                        ; $4f67: $61
	ld   [de], a                                     ; $4f68: $12
	xor  a                                           ; $4f69: $af
	db   $f4                                         ; $4f6a: $f4
	ld   de, $ef3e                                   ; $4f6b: $11 $3e $ef
	push hl                                          ; $4f6e: $e5
	ld   de, $ff3c                                   ; $4f6f: $11 $3c $ff
	ld   sp, $ef17                                   ; $4f72: $31 $17 $ef
	ei                                               ; $4f75: $fb
	ld   b, c                                        ; $4f76: $41
	dec  d                                           ; $4f77: $15
	rst  $38                                         ; $4f78: $ff
	ldh  [c], a                                      ; $4f79: $e2
	ld   de, $ffad                                   ; $4f7a: $11 $ad $ff
	and  d                                           ; $4f7d: $a2
	ld   de, $fc6f                                   ; $4f7e: $11 $6f $fc
	ld   de, $cf1c                                   ; $4f81: $11 $1c $cf
	ld   hl, sp+$11                                  ; $4f84: $f8 $11
	rla                                              ; $4f86: $17
	rst  $38                                         ; $4f87: $ff
	sub  c                                           ; $4f88: $91
	ld   de, $ffed                                   ; $4f89: $11 $ed $ff
	ld   [hl], c                                     ; $4f8c: $71
	ld   de, $f59f                                   ; $4f8d: $11 $9f $f5
	ld   de, $df1e                                   ; $4f90: $11 $1e $df
	or   $11                                         ; $4f93: $f6 $11
	ld   a, [hl-]                                    ; $4f95: $3a
	rst  $38                                         ; $4f96: $ff
	ld   sp, $de14                                   ; $4f97: $31 $14 $de
	db   $fd                                         ; $4f9a: $fd
	ld   d, c                                        ; $4f9b: $51
	inc  d                                           ; $4f9c: $14
	rst  JumpTable                                         ; $4f9d: $df
	ldh  a, [c]                                      ; $4f9e: $f2
	ld   de, $ff7d                                   ; $4f9f: $11 $7d $ff
	or   h                                           ; $4fa2: $b4
	ld   de, $fe5f                                   ; $4fa3: $11 $5f $fe
	ld   hl, $df1b                                   ; $4fa6: $21 $1b $df
	ld   a, [$1621]                                  ; $4fa9: $fa $21 $16
	rst  $38                                         ; $4fac: $ff
	or   c                                           ; $4fad: $b1
	ld   de, $ffdc                                   ; $4fae: $11 $dc $ff
	add  c                                           ; $4fb1: $81
	ld   de, $f78f                                   ; $4fb2: $11 $8f $f7
	ld   de, $df1d                                   ; $4fb5: $11 $1d $df
	rst  $30                                         ; $4fb8: $f7
	ld   de, $ff2a                                   ; $4fb9: $11 $2a $ff
	ld   b, c                                        ; $4fbc: $41
	inc  de                                          ; $4fbd: $13
	sbc  $ff                                         ; $4fbe: $de $ff
	ld   h, c                                        ; $4fc0: $61
	inc  d                                           ; $4fc1: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fc2: $cf
	di                                               ; $4fc3: $f3
	ld   de, $ff6d                                   ; $4fc4: $11 $6d $ff
	call nz, Call_0ea_5e11                           ; $4fc7: $c4 $11 $5e
	rst  $38                                         ; $4fca: $ff
	ld   hl, $df1a                                   ; $4fcb: $21 $1a $df
	ei                                               ; $4fce: $fb
	ld   hl, $ff16                                   ; $4fcf: $21 $16 $ff
	and  d                                           ; $4fd2: $a2
	ld   de, $ffbb                                   ; $4fd3: $11 $bb $ff
	sub  c                                           ; $4fd6: $91
	ld   de, $f77f                                   ; $4fd7: $11 $7f $f7
	ld   de, $cf1d                                   ; $4fda: $11 $1d $cf
	rst  $30                                         ; $4fdd: $f7
	ld   de, $ff1c                                   ; $4fde: $11 $1c $ff
	ld   b, c                                        ; $4fe1: $41
	dec  d                                           ; $4fe2: $15
	cp   a                                           ; $4fe3: $bf
	db   $fd                                         ; $4fe4: $fd
	ld   d, c                                        ; $4fe5: $51
	inc  d                                           ; $4fe6: $14
	rst  $38                                         ; $4fe7: $ff
	di                                               ; $4fe8: $f3
	ld   de, $ff9c                                   ; $4fe9: $11 $9c $ff
	or   d                                           ; $4fec: $b2
	ld   de, $fa6f                                   ; $4fed: $11 $6f $fa
	ld   hl, $bf1b                                   ; $4ff0: $21 $1b $bf
	ld   sp, hl                                      ; $4ff3: $f9
	ld   de, $ff1a                                   ; $4ff4: $11 $1a $ff
	ld   d, c                                        ; $4ff7: $51
	ld   [de], a                                     ; $4ff8: $12
	cp   l                                           ; $4ff9: $bd
	rst  $38                                         ; $4ffa: $ff
	ld   h, c                                        ; $4ffb: $61
	ld   [de], a                                     ; $4ffc: $12
	rst  $28                                         ; $4ffd: $ef
	di                                               ; $4ffe: $f3
	ld   de, $ff7b                                   ; $4fff: $11 $7b $ff
	db   $d3                                         ; $5002: $d3
	ld   de, $fb5f                                   ; $5003: $11 $5f $fb
	ld   hl, $bf1b                                   ; $5006: $21 $1b $bf
	ld   sp, hl                                      ; $5009: $f9
	ld   de, $ff1a                                   ; $500a: $11 $1a $ff
	ld   h, c                                        ; $500d: $61
	ld   [de], a                                     ; $500e: $12
	cp   l                                           ; $500f: $bd
	rst  $38                                         ; $5010: $ff
	ld   d, c                                        ; $5011: $51
	ld   [de], a                                     ; $5012: $12
	rst  $28                                         ; $5013: $ef
	db   $f4                                         ; $5014: $f4
	ld   de, $ff6c                                   ; $5015: $11 $6c $ff
	pop  bc                                          ; $5018: $c1
	ld   de, $f96f                                   ; $5019: $11 $6f $f9
	ld   hl, $bf19                                   ; $501c: $21 $19 $bf
	ld   hl, sp+$11                                  ; $501f: $f8 $11
	ld   a, [de]                                     ; $5021: $1a
	rst  $38                                         ; $5022: $ff
	ld   d, c                                        ; $5023: $51
	ld   [de], a                                     ; $5024: $12
	cp   [hl]                                        ; $5025: $be
	rst  $38                                         ; $5026: $ff
	ld   sp, rAUD1LOW                                   ; $5027: $31 $13 $ff
	or   h                                           ; $502a: $b4
	ld   de, $ff8a                                   ; $502b: $11 $8a $ff
	or   c                                           ; $502e: $b1
	ld   de, $f78f                                   ; $502f: $11 $8f $f7
	ld   sp, $cf1b                                   ; $5032: $31 $1b $cf
	push af                                          ; $5035: $f5
	ld   de, $ff1f                                   ; $5036: $11 $1f $ff
	ld   d, c                                        ; $5039: $51
	ld   d, $9f                                      ; $503a: $16 $9f
	db   $fd                                         ; $503c: $fd
	ld   de, $ff16                                   ; $503d: $11 $16 $ff
	sub  e                                           ; $5040: $93
	ld   de, $ffab                                   ; $5041: $11 $ab $ff
	add  c                                           ; $5044: $81
	ld   de, $f5cf                                   ; $5045: $11 $cf $f5
	ld   de, $ff2a                                   ; $5048: $11 $2a $ff
	di                                               ; $504b: $f3
	ld   de, $fd4f                                   ; $504c: $11 $4f $fd
	ld   b, c                                        ; $504f: $41
	jr   @-$4f                                       ; $5050: $18 $af

	ld   a, [$1911]                                  ; $5052: $fa $11 $19
	rst  $38                                         ; $5055: $ff
	ld   [hl], d                                     ; $5056: $72
	ld   de, $ffac                                   ; $5057: $11 $ac $ff
	ld   b, c                                        ; $505a: $41
	ld   de, $e5ff                                   ; $505b: $11 $ff $e5
	ld   de, $ff69                                   ; $505e: $11 $69 $ff
	pop  de                                          ; $5061: $d1
	ld   de, $f97f                                   ; $5062: $11 $7f $f9
	ld   sp, $cf1a                                   ; $5065: $31 $1a $cf
	or   $11                                         ; $5068: $f6 $11
	rra                                              ; $506a: $1f
	rst  $38                                         ; $506b: $ff
	ld   h, c                                        ; $506c: $61
	dec  d                                           ; $506d: $15
	ld   a, a                                        ; $506e: $7f
	cp   $11                                         ; $506f: $fe $11
	ld   d, $ff                                      ; $5071: $16 $ff
	and  e                                           ; $5073: $a3
	ld   de, $ff9b                                   ; $5074: $11 $9b $ff
	ld   [hl], c                                     ; $5077: $71
	ld   de, $f6ff                                   ; $5078: $11 $ff $f6
	ld   de, $ff48                                   ; $507b: $11 $48 $ff
	pop  af                                          ; $507e: $f1
	ld   de, $fa6f                                   ; $507f: $11 $6f $fa
	ld   b, c                                        ; $5082: $41
	rla                                              ; $5083: $17
	xor  a                                           ; $5084: $af
	rst  $30                                         ; $5085: $f7
	ld   de, $ff1f                                   ; $5086: $11 $1f $ff
	ld   h, c                                        ; $5089: $61
	inc  de                                          ; $508a: $13
	sbc  a                                           ; $508b: $9f
	rst  $38                                         ; $508c: $ff
	ld   de, $ff15                                   ; $508d: $11 $15 $ff
	or   h                                           ; $5090: $b4
	ld   de, $ff7a                                   ; $5091: $11 $7a $ff
	ld   [hl], c                                     ; $5094: $71
	ld   de, $f7ff                                   ; $5095: $11 $ff $f7
	ld   de, $ff37                                   ; $5098: $11 $37 $ff
	pop  af                                          ; $509b: $f1
	ld   de, $fb5f                                   ; $509c: $11 $5f $fb
	ld   b, c                                        ; $509f: $41
	rla                                              ; $50a0: $17
	cp   a                                           ; $50a1: $bf
	or   $11                                         ; $50a2: $f6 $11
	rra                                              ; $50a4: $1f
	rst  $38                                         ; $50a5: $ff
	ld   [hl], c                                     ; $50a6: $71
	inc  d                                           ; $50a7: $14
	ld   a, a                                        ; $50a8: $7f
	rst  $38                                         ; $50a9: $ff
	ld   de, $ff17                                   ; $50aa: $11 $17 $ff
	sub  e                                           ; $50ad: $93
	ld   de, $ff7c                                   ; $50ae: $11 $7c $ff
	ld   d, c                                        ; $50b1: $51
	ld   de, $d6ff                                   ; $50b2: $11 $ff $d6
	ld   de, $ff57                                   ; $50b5: $11 $57 $ff
	pop  bc                                          ; $50b8: $c1
	ld   de, $f99f                                   ; $50b9: $11 $9f $f9
	ld   hl, $df18                                   ; $50bc: $21 $18 $df
	di                                               ; $50bf: $f3
	ld   de, $fc1f                                   ; $50c0: $11 $1f $fc
	ld   h, c                                        ; $50c3: $61
	ld   d, $8f                                      ; $50c4: $16 $8f
	ei                                               ; $50c6: $fb
	ld   de, $ff1d                                   ; $50c7: $11 $1d $ff
	ld   [hl], c                                     ; $50ca: $71
	ld   [de], a                                     ; $50cb: $12
	ld   a, a                                        ; $50cc: $7f
	rst  $38                                         ; $50cd: $ff
	ld   de, rAUD1HIGH                                   ; $50ce: $11 $14 $ff
	or   l                                           ; $50d1: $b5
	ld   de, $ff7a                                   ; $50d2: $11 $7a $ff
	ld   [hl], c                                     ; $50d5: $71
	ld   de, $f7ff                                   ; $50d6: $11 $ff $f7
	ld   de, $ff47                                   ; $50d9: $11 $47 $ff
	pop  hl                                          ; $50dc: $e1
	ld   de, $f98f                                   ; $50dd: $11 $8f $f9
	ld   sp, $cf17                                   ; $50e0: $31 $17 $cf
	db   $f4                                         ; $50e3: $f4
	ld   de, $fd1f                                   ; $50e4: $11 $1f $fd
	ld   h, c                                        ; $50e7: $61
	ld   d, $9f                                      ; $50e8: $16 $9f
	ld   a, [$1d11]                                  ; $50ea: $fa $11 $1d
	rst  $38                                         ; $50ed: $ff
	ld   [hl], c                                     ; $50ee: $71
	inc  de                                          ; $50ef: $13
	ld   a, a                                        ; $50f0: $7f
	rst  $38                                         ; $50f1: $ff
	ld   de, $ff15                                   ; $50f2: $11 $15 $ff
	sub  h                                           ; $50f5: $94
	ld   de, $ff7b                                   ; $50f6: $11 $7b $ff
	ld   d, c                                        ; $50f9: $51
	ld   de, $d7ff                                   ; $50fa: $11 $ff $d7
	ld   de, $ff67                                   ; $50fd: $11 $67 $ff
	pop  bc                                          ; $5100: $c1
	ld   de, $f7bf                                   ; $5101: $11 $bf $f7
	ld   hl, $ef19                                   ; $5104: $21 $19 $ef
	pop  af                                          ; $5107: $f1
	ld   de, $f94f                                   ; $5108: $11 $4f $f9
	ld   d, c                                        ; $510b: $51
	rla                                              ; $510c: $17
	xor  a                                           ; $510d: $af
	rst  $30                                         ; $510e: $f7
	ld   de, $ff1f                                   ; $510f: $11 $1f $ff
	ld   h, c                                        ; $5112: $61
	ld   d, $8f                                      ; $5113: $16 $8f
	db   $fc                                         ; $5115: $fc
	ld   de, $ff1b                                   ; $5116: $11 $1b $ff
	ld   [hl], d                                     ; $5119: $72
	ld   de, $ff8e                                   ; $511a: $11 $8e $ff
	ld   de, rAUD1HIGH                                   ; $511d: $11 $14 $ff
	and  h                                           ; $5120: $a4
	ld   de, $ff7a                                   ; $5121: $11 $7a $ff
	ld   [hl], c                                     ; $5124: $71
	ld   de, $f6ff                                   ; $5125: $11 $ff $f6
	ld   de, $ff58                                   ; $5128: $11 $58 $ff
	pop  bc                                          ; $512b: $c1
	ld   de, $f7bf                                   ; $512c: $11 $bf $f7
	ld   hl, $ff28                                   ; $512f: $21 $28 $ff
	pop  af                                          ; $5132: $f1
	ld   de, $f94f                                   ; $5133: $11 $4f $f9
	ld   b, c                                        ; $5136: $41
	rla                                              ; $5137: $17
	cp   a                                           ; $5138: $bf
	push af                                          ; $5139: $f5
	ld   de, $fd1f                                   ; $513a: $11 $1f $fd
	ld   h, c                                        ; $513d: $61
	ld   d, $8f                                      ; $513e: $16 $8f
	ei                                               ; $5140: $fb
	ld   de, $ff1d                                   ; $5141: $11 $1d $ff
	ld   [hl], c                                     ; $5144: $71
	inc  de                                          ; $5145: $13
	adc  a                                           ; $5146: $8f
	rst  $38                                         ; $5147: $ff
	ld   de, $ff17                                   ; $5148: $11 $17 $ff
	sub  e                                           ; $514b: $93
	ld   de, $ff7c                                   ; $514c: $11 $7c $ff
	ld   sp, rAUD1LEN                                   ; $514f: $31 $11 $ff
	push bc                                          ; $5152: $c5
	ld   de, $ff79                                   ; $5153: $11 $79 $ff
	add  c                                           ; $5156: $81
	ld   de, $f6ff                                   ; $5157: $11 $ff $f6
	ld   de, $ff58                                   ; $515a: $11 $58 $ff
	pop  de                                          ; $515d: $d1
	ld   de, $f89f                                   ; $515e: $11 $9f $f8
	ld   hl, $ef18                                   ; $5161: $21 $18 $ef
	ldh  a, [c]                                      ; $5164: $f2
	ld   de, $fa3f                                   ; $5165: $11 $3f $fa
	ld   b, c                                        ; $5168: $41
	rla                                              ; $5169: $17
	xor  a                                           ; $516a: $af
	rst  $30                                         ; $516b: $f7
	ld   de, $ff1f                                   ; $516c: $11 $1f $ff
	ld   d, c                                        ; $516f: $51
	dec  d                                           ; $5170: $15
	sbc  a                                           ; $5171: $9f
	db   $fd                                         ; $5172: $fd
	ld   de, $ff1b                                   ; $5173: $11 $1b $ff
	ld   [hl], c                                     ; $5176: $71
	ld   [de], a                                     ; $5177: $12
	adc  a                                           ; $5178: $8f
	rst  $38                                         ; $5179: $ff
	ld   de, rAUD1HIGH                                   ; $517a: $11 $14 $ff
	and  h                                           ; $517d: $a4
	ld   de, $ff8a                                   ; $517e: $11 $8a $ff
	ld   d, c                                        ; $5181: $51
	ld   de, $e6ff                                   ; $5182: $11 $ff $e6
	ld   de, $ff68                                   ; $5185: $11 $68 $ff
	pop  bc                                          ; $5188: $c1
	ld   de, $f7bf                                   ; $5189: $11 $bf $f7
	ld   de, $ff28                                   ; $518c: $11 $28 $ff
	pop  af                                          ; $518f: $f1
	ld   de, $f95f                                   ; $5190: $11 $5f $f9
	ld   b, c                                        ; $5193: $41
	jr   @-$3f                                       ; $5194: $18 $bf

	or   $11                                         ; $5196: $f6 $11
	rra                                              ; $5198: $1f
	rst  $38                                         ; $5199: $ff
	ld   d, c                                        ; $519a: $51
	ld   d, $9f                                      ; $519b: $16 $9f
	ei                                               ; $519d: $fb
	ld   de, $ff1b                                   ; $519e: $11 $1b $ff
	ld   [hl], c                                     ; $51a1: $71
	inc  de                                          ; $51a2: $13
	adc  a                                           ; $51a3: $8f
	rst  $38                                         ; $51a4: $ff
	ld   de, rAUD1HIGH                                   ; $51a5: $11 $14 $ff
	and  h                                           ; $51a8: $a4
	ld   de, $ff9b                                   ; $51a9: $11 $9b $ff
	ld   d, c                                        ; $51ac: $51
	ld   de, $f6ff                                   ; $51ad: $11 $ff $f6
	ld   de, $ff68                                   ; $51b0: $11 $68 $ff
	or   c                                           ; $51b3: $b1
	ld   de, $f79f                                   ; $51b4: $11 $9f $f7
	ld   hl, $ef19                                   ; $51b7: $21 $19 $ef
	pop  af                                          ; $51ba: $f1
	ld   de, $fa3f                                   ; $51bb: $11 $3f $fa
	ld   b, c                                        ; $51be: $41
	jr   @-$3f                                       ; $51bf: $18 $bf

	or   $11                                         ; $51c1: $f6 $11
	rra                                              ; $51c3: $1f
	rst  $38                                         ; $51c4: $ff
	ld   h, c                                        ; $51c5: $61
	dec  d                                           ; $51c6: $15
	sbc  a                                           ; $51c7: $9f
	cp   $11                                         ; $51c8: $fe $11
	add  hl, de                                      ; $51ca: $19

Jump_0ea_51cb:
	rst  $38                                         ; $51cb: $ff
	ld   [hl], d                                     ; $51cc: $72
	ld   de, $ff8e                                   ; $51cd: $11 $8e $ff
	ld   hl, rAUD1LOW                                   ; $51d0: $21 $13 $ff
	push bc                                          ; $51d3: $c5
	ld   de, $ff8a                                   ; $51d4: $11 $8a $ff
	add  c                                           ; $51d7: $81
	ld   de, $f6ff                                   ; $51d8: $11 $ff $f6
	ld   de, $ff59                                   ; $51db: $11 $59 $ff
	pop  de                                          ; $51de: $d1
	ld   de, $f88f                                   ; $51df: $11 $8f $f8
	ld   sp, $df19                                   ; $51e2: $31 $19 $df
	di                                               ; $51e5: $f3
	ld   de, $fb2f                                   ; $51e6: $11 $2f $fb
	ld   d, c                                        ; $51e9: $51
	rla                                              ; $51ea: $17
	xor  a                                           ; $51eb: $af
	rst  $30                                         ; $51ec: $f7
	ld   de, $ff1e                                   ; $51ed: $11 $1e $ff
	ld   h, c                                        ; $51f0: $61
	inc  d                                           ; $51f1: $14
	sbc  a                                           ; $51f2: $9f
	cp   $11                                         ; $51f3: $fe $11
	jr   @+$01                                       ; $51f5: $18 $ff

	add  e                                           ; $51f7: $83
	ld   de, $ff8d                                   ; $51f8: $11 $8d $ff
	ld   hl, rAUD1ENV                                   ; $51fb: $21 $12 $ff
	push bc                                          ; $51fe: $c5
	ld   de, $ff7a                                   ; $51ff: $11 $7a $ff
	sub  c                                           ; $5202: $91
	ld   de, $f6ff                                   ; $5203: $11 $ff $f6
	ld   de, $ff58                                   ; $5206: $11 $58 $ff
	pop  de                                          ; $5209: $d1
	ld   de, $f88f                                   ; $520a: $11 $8f $f8
	ld   sp, $df18                                   ; $520d: $31 $18 $df
	di                                               ; $5210: $f3
	ld   de, $fb2f                                   ; $5211: $11 $2f $fb
	ld   d, c                                        ; $5214: $51
	rla                                              ; $5215: $17
	xor  a                                           ; $5216: $af
	rst  $30                                         ; $5217: $f7
	ld   de, $ff1f                                   ; $5218: $11 $1f $ff
	ld   h, c                                        ; $521b: $61
	dec  d                                           ; $521c: $15
	adc  a                                           ; $521d: $8f
	db   $fd                                         ; $521e: $fd
	ld   de, $ff18                                   ; $521f: $11 $18 $ff
	ld   [hl], e                                     ; $5222: $73
	ld   de, $ff7d                                   ; $5223: $11 $7d $ff
	ld   de, rAUD1LOW                                   ; $5226: $11 $13 $ff
	and  [hl]                                        ; $5229: $a6
	ld   de, $ff7a                                   ; $522a: $11 $7a $ff
	ld   h, c                                        ; $522d: $61
	ld   de, $f6ff                                   ; $522e: $11 $ff $f6
	ld   de, $ff57                                   ; $5231: $11 $57 $ff
	pop  bc                                          ; $5234: $c1
	ld   de, $f7bf                                   ; $5235: $11 $bf $f7
	ld   hl, $ff27                                   ; $5238: $21 $27 $ff
	pop  af                                          ; $523b: $f1
	ld   de, $f95f                                   ; $523c: $11 $5f $f9
	ld   d, c                                        ; $523f: $51
	rla                                              ; $5240: $17
	cp   a                                           ; $5241: $bf
	push af                                          ; $5242: $f5
	ld   de, $fc1f                                   ; $5243: $11 $1f $fc
	ld   [hl], c                                     ; $5246: $71
	ld   d, $7f                                      ; $5247: $16 $7f
	ld   sp, hl                                      ; $5249: $f9
	ld   de, $ff1d                                   ; $524a: $11 $1d $ff
	ld   [hl], c                                     ; $524d: $71
	inc  d                                           ; $524e: $14
	ld   l, a                                        ; $524f: $6f
	rst  $38                                         ; $5250: $ff
	ld   de, $ff17                                   ; $5251: $11 $17 $ff
	add  l                                           ; $5254: $85
	ld   de, $ff7c                                   ; $5255: $11 $7c $ff
	ld   sp, rAUD1ENV                                   ; $5258: $31 $12 $ff
	and  a                                           ; $525b: $a7
	ld   de, $ff69                                   ; $525c: $11 $69 $ff
	add  c                                           ; $525f: $81
	ld   de, $f7ff                                   ; $5260: $11 $ff $f7
	ld   de, $ff56                                   ; $5263: $11 $56 $ff
	or   c                                           ; $5266: $b1
	ld   de, $f8af                                   ; $5267: $11 $af $f8
	ld   b, c                                        ; $526a: $41
	ld   h, $ff                                      ; $526b: $26 $ff
	ldh  a, [c]                                      ; $526d: $f2
	ld   de, $fa4f                                   ; $526e: $11 $4f $fa
	ld   h, c                                        ; $5271: $61
	rla                                              ; $5272: $17
	xor  a                                           ; $5273: $af
	push af                                          ; $5274: $f5
	ld   de, $fc1f                                   ; $5275: $11 $1f $fc
	ld   [hl], c                                     ; $5278: $71
	ld   d, $7f                                      ; $5279: $16 $7f
	ld   a, [$1d11]                                  ; $527b: $fa $11 $1d
	rst  $38                                         ; $527e: $ff
	add  d                                           ; $527f: $82
	inc  de                                          ; $5280: $13
	ld   l, a                                        ; $5281: $6f
	rst  $38                                         ; $5282: $ff
	ld   de, $ff18                                   ; $5283: $11 $18 $ff
	sub  l                                           ; $5286: $95
	ld   de, $ff5c                                   ; $5287: $11 $5c $ff
	ld   b, c                                        ; $528a: $41
	ld   [de], a                                     ; $528b: $12
	rst  $38                                         ; $528c: $ff
	or   a                                           ; $528d: $b7
	ld   de, $ff68                                   ; $528e: $11 $68 $ff
	ld   [hl], c                                     ; $5291: $71
	ld   de, $d8ff                                   ; $5292: $11 $ff $d8
	ld   de, $ff45                                   ; $5295: $11 $45 $ff
	pop  bc                                          ; $5298: $c1
	ld   de, $f9af                                   ; $5299: $11 $af $f9
	ld   b, c                                        ; $529c: $41
	dec  h                                           ; $529d: $25
	rst  $38                                         ; $529e: $ff
	pop  af                                          ; $529f: $f1
	ld   de, $fa6f                                   ; $52a0: $11 $6f $fa
	ld   [hl], c                                     ; $52a3: $71
	inc  d                                           ; $52a4: $14
	cp   a                                           ; $52a5: $bf
	push af                                          ; $52a6: $f5
	ld   de, $fd1f                                   ; $52a7: $11 $1f $fd
	add  c                                           ; $52aa: $81
	dec  d                                           ; $52ab: $15
	ld   a, a                                        ; $52ac: $7f
	ld   sp, hl                                      ; $52ad: $f9
	ld   de, $ff1f                                   ; $52ae: $11 $1f $ff
	sub  d                                           ; $52b1: $92
	inc  d                                           ; $52b2: $14
	ld   c, a                                        ; $52b3: $4f
	db   $fd                                         ; $52b4: $fd
	ld   de, $ff18                                   ; $52b5: $11 $18 $ff
	sub  [hl]                                        ; $52b8: $96
	ld   de, $ff5d                                   ; $52b9: $11 $5d $ff
	ld   hl, rAUD1LOW                                   ; $52bc: $21 $13 $ff
	xor  b                                           ; $52bf: $a8
	ld   de, $ff59                                   ; $52c0: $11 $59 $ff
	ld   [hl], c                                     ; $52c3: $71
	ld   de, $caff                                   ; $52c4: $11 $ff $ca
	ld   de, $ff45                                   ; $52c7: $11 $45 $ff
	and  c                                           ; $52ca: $a1
	ld   de, $fadf                                   ; $52cb: $11 $df $fa
	ld   sp, $ff34                                   ; $52ce: $31 $34 $ff
	pop  af                                          ; $52d1: $f1
	ld   de, $fa5f                                   ; $52d2: $11 $5f $fa
	ld   [hl], c                                     ; $52d5: $71
	dec  d                                           ; $52d6: $15
	cp   a                                           ; $52d7: $bf
	push af                                          ; $52d8: $f5
	ld   de, $fa1f                                   ; $52d9: $11 $1f $fa
	and  c                                           ; $52dc: $a1
	inc  d                                           ; $52dd: $14
	ld   a, a                                        ; $52de: $7f
	ld   sp, hl                                      ; $52df: $f9
	ld   de, $fe1f                                   ; $52e0: $11 $1f $fe
	and  d                                           ; $52e3: $a2
	inc  de                                          ; $52e4: $13
	ld   e, a                                        ; $52e5: $5f
	db   $fd                                         ; $52e6: $fd
	ld   de, $ff1b                                   ; $52e7: $11 $1b $ff
	and  [hl]                                        ; $52ea: $a6
	ld   de, $ff4f                                   ; $52eb: $11 $4f $ff
	ld   hl, $ff15                                   ; $52ee: $21 $15 $ff
	xor  c                                           ; $52f1: $a9
	ld   de, $ff3a                                   ; $52f2: $11 $3a $ff
	ld   d, c                                        ; $52f5: $51
	ld   de, $baff                                   ; $52f6: $11 $ff $ba
	ld   de, $ff46                                   ; $52f9: $11 $46 $ff
	sub  c                                           ; $52fc: $91
	ld   de, $daff                                   ; $52fd: $11 $ff $da
	ld   hl, $ff34                                   ; $5300: $21 $34 $ff
	pop  hl                                          ; $5303: $e1
	ld   de, $fa9f                                   ; $5304: $11 $9f $fa
	ld   h, c                                        ; $5307: $61
	inc  d                                           ; $5308: $14
	rst  JumpTable                                         ; $5309: $df
	ldh  a, [c]                                      ; $530a: $f2
	ld   de, $fa4f                                   ; $530b: $11 $4f $fa
	sub  c                                           ; $530e: $91
	inc  de                                          ; $530f: $13
	xor  a                                           ; $5310: $af
	push af                                          ; $5311: $f5
	ld   de, $fc1f                                   ; $5312: $11 $1f $fc
	or   c                                           ; $5315: $b1
	inc  d                                           ; $5316: $14
	ld   l, a                                        ; $5317: $6f
	ld   a, [$1f11]                                  ; $5318: $fa $11 $1f
	db   $fd                                         ; $531b: $fd
	and  e                                           ; $531c: $a3
	inc  de                                          ; $531d: $13
	ld   c, a                                        ; $531e: $4f
	db   $fd                                         ; $531f: $fd
	ld   de, $ff19                                   ; $5320: $11 $19 $ff
	and  a                                           ; $5323: $a7
	ld   de, $ff4d                                   ; $5324: $11 $4d $ff
	ld   hl, rAUD1HIGH                                   ; $5327: $21 $14 $ff
	xor  d                                           ; $532a: $aa
	ld   de, $ff49                                   ; $532b: $11 $49 $ff
	ld   d, c                                        ; $532e: $51
	ld   de, $abff                                   ; $532f: $11 $ff $ab
	ld   de, $ff36                                   ; $5332: $11 $36 $ff
	sub  c                                           ; $5335: $91
	ld   de, $dbff                                   ; $5336: $11 $ff $db
	ld   b, c                                        ; $5339: $41
	inc  [hl]                                        ; $533a: $34
	rst  $38                                         ; $533b: $ff
	pop  de                                          ; $533c: $d1
	ld   de, $faaf                                   ; $533d: $11 $af $fa
	ld   [hl], c                                     ; $5340: $71
	inc  de                                          ; $5341: $13
	rst  JumpTable                                         ; $5342: $df
	ldh  a, [c]                                      ; $5343: $f2
	ld   de, $fb5f                                   ; $5344: $11 $5f $fb
	and  c                                           ; $5347: $a1
	inc  de                                          ; $5348: $13
	sbc  a                                           ; $5349: $9f
	push af                                          ; $534a: $f5
	ld   de, $fb1f                                   ; $534b: $11 $1f $fb
	or   c                                           ; $534e: $b1
	inc  d                                           ; $534f: $14
	ld   l, a                                        ; $5350: $6f
	ld   hl, sp+$11                                  ; $5351: $f8 $11
	rra                                              ; $5353: $1f
	ei                                               ; $5354: $fb
	or   h                                           ; $5355: $b4
	inc  de                                          ; $5356: $13
	ld   c, a                                        ; $5357: $4f
	db   $fc                                         ; $5358: $fc
	ld   de, $fe1a                                   ; $5359: $11 $1a $fe
	rst  ToBoot                                         ; $535c: $c7
	ld   [de], a                                     ; $535d: $12
	ld   a, $ff                                      ; $535e: $3e $ff
	ld   hl, $ff15                                   ; $5360: $21 $15 $ff
	cp   d                                           ; $5363: $ba
	ld   de, $ff39                                   ; $5364: $11 $39 $ff
	ld   d, c                                        ; $5367: $51
	ld   de, $bcff                                   ; $5368: $11 $ff $bc
	ld   de, $ff36                                   ; $536b: $11 $36 $ff
	add  c                                           ; $536e: $81
	ld   de, $ccff                                   ; $536f: $11 $ff $cc
	ld   b, c                                        ; $5372: $41
	inc  [hl]                                        ; $5373: $34
	rst  $38                                         ; $5374: $ff
	or   c                                           ; $5375: $b1
	ld   de, $dcbf                                   ; $5376: $11 $bf $dc
	ld   [hl], c                                     ; $5379: $71
	inc  hl                                          ; $537a: $23
	rst  $38                                         ; $537b: $ff
	db   $e3                                         ; $537c: $e3
	ld   de, $fa6f                                   ; $537d: $11 $6f $fa
	or   c                                           ; $5380: $b1
	inc  de                                          ; $5381: $13
	xor  a                                           ; $5382: $af
	db   $f4                                         ; $5383: $f4
	ld   de, $fa4f                                   ; $5384: $11 $4f $fa
	pop  bc                                          ; $5387: $c1
	ld   [de], a                                     ; $5388: $12
	adc  a                                           ; $5389: $8f
	or   $11                                         ; $538a: $f6 $11
	rra                                              ; $538c: $1f
	ld   a, [$13d3]                                  ; $538d: $fa $d3 $13
	ld   e, a                                        ; $5390: $5f
	rst  $30                                         ; $5391: $f7
	ld   de, $f81f                                   ; $5392: $11 $1f $f8
	db   $e4                                         ; $5395: $e4
	inc  de                                          ; $5396: $13
	ld   c, a                                        ; $5397: $4f
	ld   sp, hl                                      ; $5398: $f9
	ld   hl, $f91f                                   ; $5399: $21 $1f $f9
	and  $13                                         ; $539c: $e6 $13
	ld   c, a                                        ; $539e: $4f
	ld   a, [$1d21]                                  ; $539f: $fa $21 $1d
	ld   hl, sp-$29                                  ; $53a2: $f8 $d7
	inc  de                                          ; $53a4: $13
	ld   c, a                                        ; $53a5: $4f
	ld   a, [$1c41]                                  ; $53a6: $fa $41 $1c
	ld   sp, hl                                      ; $53a9: $f9
	ret  z                                           ; $53aa: $c8

	inc  d                                           ; $53ab: $14
	dec  a                                           ; $53ac: $3d
	ei                                               ; $53ad: $fb
	ld   b, c                                        ; $53ae: $41
	ld   a, [de]                                     ; $53af: $1a

jr_0ea_53b0:
	ld   sp, hl                                      ; $53b0: $f9
	cp   d                                           ; $53b1: $ba
	inc  de                                          ; $53b2: $13
	ld   c, l                                        ; $53b3: $4d
	ei                                               ; $53b4: $fb
	ld   d, c                                        ; $53b5: $51
	jr   jr_0ea_53b0                                 ; $53b6: $18 $f8

	rl   h                                           ; $53b8: $cb $14
	inc  a                                           ; $53ba: $3c
	db   $fc                                         ; $53bb: $fc
	ld   b, c                                        ; $53bc: $41
	add  hl, de                                      ; $53bd: $19
	ld   hl, sp-$45                                  ; $53be: $f8 $bb
	inc  de                                          ; $53c0: $13
	dec  a                                           ; $53c1: $3d
	db   $fc                                         ; $53c2: $fc
	ld   d, d                                        ; $53c3: $52
	ld   d, $fa                                      ; $53c4: $16 $fa
	cp   h                                           ; $53c6: $bc
	inc  de                                          ; $53c7: $13
	dec  sp                                          ; $53c8: $3b
	db   $fd                                         ; $53c9: $fd
	ld   d, d                                        ; $53ca: $52
	dec  d                                           ; $53cb: $15
	ld   sp, hl                                      ; $53cc: $f9
	cp   l                                           ; $53cd: $bd
	inc  hl                                          ; $53ce: $23
	dec  sp                                          ; $53cf: $3b
	db   $fc                                         ; $53d0: $fc
	ld   h, e                                        ; $53d1: $63
	dec  d                                           ; $53d2: $15
	ld   hl, sp-$52                                  ; $53d3: $f8 $ae
	inc  h                                           ; $53d5: $24
	dec  sp                                          ; $53d6: $3b
	db   $fc                                         ; $53d7: $fc
	ld   h, e                                        ; $53d8: $63
	dec  d                                           ; $53d9: $15
	rst  $30                                         ; $53da: $f7
	xor  [hl]                                        ; $53db: $ae
	inc  h                                           ; $53dc: $24
	dec  sp                                          ; $53dd: $3b
	ei                                               ; $53de: $fb
	ld   h, h                                        ; $53df: $64
	ld   d, $f6                                      ; $53e0: $16 $f6
	cp   l                                           ; $53e2: $bd
	inc  h                                           ; $53e3: $24
	dec  sp                                          ; $53e4: $3b
	ld   a, [$1764]                                  ; $53e5: $fa $64 $17
	or   $bd                                         ; $53e8: $f6 $bd
	dec  h                                           ; $53ea: $25
	ld   c, e                                        ; $53eb: $4b
	ld   a, [$1954]                                  ; $53ec: $fa $54 $19
	db   $f4                                         ; $53ef: $f4
	call z, Call_0ea_4d25                            ; $53f0: $cc $25 $4d
	ld   hl, sp+$63                                  ; $53f3: $f8 $63
	dec  de                                          ; $53f5: $1b
	ldh  a, [c]                                      ; $53f6: $f2
	jp   c, Jump_0ea_4f25                            ; $53f7: $da $25 $4f

	rst  $30                                         ; $53fa: $f7
	ld   d, d                                        ; $53fb: $52
	rra                                              ; $53fc: $1f
	pop  af                                          ; $53fd: $f1
	ld   sp, hl                                      ; $53fe: $f9
	dec  [hl]                                        ; $53ff: $35
	ld   e, a                                        ; $5400: $5f
	rst  $10                                         ; $5401: $d7
	ld   d, c                                        ; $5402: $51
	rra                                              ; $5403: $1f
	jp   nz, Jump_0ea_44f5                           ; $5404: $c2 $f5 $44

	adc  a                                           ; $5407: $8f
	add  $51                                         ; $5408: $c6 $51
	cpl                                              ; $540a: $2f
	ld   h, a                                        ; $540b: $67
	ldh  a, [c]                                      ; $540c: $f2
	ld   h, h                                        ; $540d: $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $540e: $cf
	and  a                                           ; $540f: $a7
	ld   sp, $2b7f                                   ; $5410: $31 $7f $2b
	jp   nc, $ef63                                   ; $5413: $d2 $63 $ef

	sub  [hl]                                        ; $5416: $96
	ld   hl, $1fdf                                   ; $5417: $21 $df $1f
	sub  d                                           ; $541a: $92
	ld   h, l                                        ; $541b: $65
	ei                                               ; $541c: $fb
	sub  [hl]                                        ; $541d: $96
	ld   de, $2ffc                                   ; $541e: $11 $fc $2f
	ld   b, h                                        ; $5421: $44
	ld   e, b                                        ; $5422: $58
	ld   sp, hl                                      ; $5423: $f9
	sub  h                                           ; $5424: $94
	inc  d                                           ; $5425: $14
	db   $f4                                         ; $5426: $f4
	sbc  a                                           ; $5427: $9f
	rla                                              ; $5428: $17
	ld   c, l                                        ; $5429: $4d
	rst  $30                                         ; $542a: $f7
	add  c                                           ; $542b: $81
	dec  e                                           ; $542c: $1d
	pop  af                                          ; $542d: $f1
	ld   a, [$5f17]                                  ; $542e: $fa $17 $5f
	sbc  b                                           ; $5431: $98
	ld   [hl], c                                     ; $5432: $71
	ccf                                              ; $5433: $3f

jr_0ea_5434:
	ld   h, [hl]                                     ; $5434: $66
	pop  af                                          ; $5435: $f1
	ld   h, l                                        ; $5436: $65
	cp   a                                           ; $5437: $bf
	ld   l, d                                        ; $5438: $6a
	ld   hl, $1fdf                                   ; $5439: $21 $df $1f
	or   c                                           ; $543c: $b1
	add  [hl]                                        ; $543d: $86
	ld   sp, hl                                      ; $543e: $f9
	halt                                             ; $543f: $76
	rla                                              ; $5440: $17
	ldh  a, [c]                                      ; $5441: $f2
	sbc  a                                           ; $5442: $9f
	ld   d, $6c                                      ; $5443: $16 $6c
	add  $91                                         ; $5445: $c6 $91
	rra                                              ; $5447: $1f
	pop  de                                          ; $5448: $d1
	ld   sp, hl                                      ; $5449: $f9
	daa                                              ; $544a: $27
	adc  a                                           ; $544b: $8f
	ld   e, c                                        ; $544c: $59
	ld   h, c                                        ; $544d: $61
	sbc  a                                           ; $544e: $9f
	dec  de                                          ; $544f: $1b
	pop  af                                          ; $5450: $f1
	add  [hl]                                        ; $5451: $86
	ei                                               ; $5452: $fb
	ld   e, b                                        ; $5453: $58
	inc  de                                          ; $5454: $13
	or   $5f                                         ; $5455: $f6 $5f
	dec  h                                           ; $5457: $25
	sbc  d                                           ; $5458: $9a
	push de                                          ; $5459: $d5
	sub  c                                           ; $545a: $91
	rra                                              ; $545b: $1f
	pop  bc                                          ; $545c: $c1
	ld   hl, sp+$29                                  ; $545d: $f8 $29
	adc  [hl]                                        ; $545f: $8e
	ld   l, b                                        ; $5460: $68
	ld   sp, $1fed                                   ; $5461: $31 $ed $1f
	pop  bc                                          ; $5464: $c1
	xor  b                                           ; $5465: $a8
	add  sp, $75                                     ; $5466: $e8 $75
	inc  e                                           ; $5468: $1c
	pop  hl                                          ; $5469: $e1
	db   $fd                                         ; $546a: $fd
	jr   @-$52                                       ; $546b: $18 $ac

	adc  b                                           ; $546d: $88
	ld   h, c                                        ; $546e: $61
	xor  a                                           ; $546f: $af
	inc  e                                           ; $5470: $1c
	pop  af                                          ; $5471: $f1
	adc  c                                           ; $5472: $89
	ret  z                                           ; $5473: $c8

	ld   [hl], a                                     ; $5474: $77
	dec  de                                          ; $5475: $1b
	pop  hl                                          ; $5476: $e1
	rst  JumpTable                                         ; $5477: $df
	jr   jr_0ea_5434                                 ; $5478: $18 $ba

	sub  [hl]                                        ; $547a: $96
	ld   d, c                                        ; $547b: $51
	adc  $1e                                         ; $547c: $ce $1e
	pop  af                                          ; $547e: $f1
	sbc  h                                           ; $547f: $9c
	and  a                                           ; $5480: $a7
	add  e                                           ; $5481: $83
	ld   e, $c1                                      ; $5482: $1e $c1
	db   $fc                                         ; $5484: $fc
	add  hl, de                                      ; $5485: $19
	ret                                              ; $5486: $c9


	ld   l, b                                        ; $5487: $68
	ld   hl, $4ff7                                   ; $5488: $21 $f7 $4f
	ld   [hl], d                                     ; $548b: $72
	call z, $7187                                    ; $548c: $cc $87 $71
	ld   e, a                                        ; $548f: $5f
	ld   b, a                                        ; $5490: $47
	db   $f4                                         ; $5491: $f4
	inc  a                                           ; $5492: $3c
	rst  ToBoot                                         ; $5493: $c7
	add  l                                           ; $5494: $85
	inc  e                                           ; $5495: $1c
	jp   nc, $27de                                   ; $5496: $d2 $de $27

Jump_0ea_5499:
	jp   c, $1169                                    ; $5499: $da $69 $11

	rst  $30                                         ; $549c: $f7
	ld   c, a                                        ; $549d: $4f
	ld   [hl], e                                     ; $549e: $73
	bit  7, b                                        ; $549f: $cb $78
	ld   [hl], c                                     ; $54a1: $71
	adc  a                                           ; $54a2: $8f
	inc  e                                           ; $54a3: $1c
	pop  af                                          ; $54a4: $f1
	ld   a, a                                        ; $54a5: $7f
	sub  [hl]                                        ; $54a6: $96
	sub  c                                           ; $54a7: $91

jr_0ea_54a8:
	cpl                                              ; $54a8: $2f
	ld   d, l                                        ; $54a9: $55
	or   $3e                                         ; $54aa: $f6 $3e
	or   l                                           ; $54ac: $b5
	and  h                                           ; $54ad: $a4
	inc  e                                           ; $54ae: $1c
	or   d                                           ; $54af: $b2
	xor  $19                                         ; $54b0: $ee $19
	push af                                          ; $54b2: $f5
	ld   a, b                                        ; $54b3: $78
	jr   jr_0ea_54a8                                 ; $54b4: $18 $f2

	cp   a                                           ; $54b6: $bf
	ld   [hl], $f9                                   ; $54b7: $36 $f9
	ld   c, e                                        ; $54b9: $4b
	inc  de                                          ; $54ba: $13
	di                                               ; $54bb: $f3
	adc  a                                           ; $54bc: $8f
	ld   d, l                                        ; $54bd: $55
	ld   a, [$114a]                                  ; $54be: $fa $4a $11
	push af                                          ; $54c1: $f5
	ld   l, a                                        ; $54c2: $6f
	ld   [hl], h                                     ; $54c3: $74
	call c, $213a                                    ; $54c4: $dc $3a $21
	or   $5f                                         ; $54c7: $f6 $5f

jr_0ea_54c9:
	sub  h                                           ; $54c9: $94
	call c, $313a                                    ; $54ca: $dc $3a $31
	push hl                                          ; $54cd: $e5
	ld   e, a                                        ; $54ce: $5f
	add  l                                           ; $54cf: $85
	call z, $314a                                    ; $54d0: $cc $4a $31
	push hl                                          ; $54d3: $e5
	ld   e, a                                        ; $54d4: $5f
	sub  [hl]                                        ; $54d5: $96
	call c, $2139                                    ; $54d6: $dc $39 $21
	db   $e3                                         ; $54d9: $e3
	ld   l, a                                        ; $54da: $6f
	ld   a, c                                        ; $54db: $79
	ld   [$134a], a                                  ; $54dc: $ea $4a $13
	jp   nc, Jump_0ea_7aae                           ; $54df: $d2 $ae $7a

	add  sp, $48                                     ; $54e2: $e8 $48
	ld   d, $a2                                      ; $54e4: $16 $a2
	call c, $c79c                                    ; $54e6: $dc $9c $c7
	ld   d, [hl]                                     ; $54e9: $56
	ld   a, [de]                                     ; $54ea: $1a
	ld   h, h                                        ; $54eb: $64
	ld   [$b5ad], a                                  ; $54ec: $ea $ad $b5
	ld   h, h                                        ; $54ef: $64
	dec  hl                                          ; $54f0: $2b
	scf                                              ; $54f1: $37
	jp   c, $a4bd                                    ; $54f2: $da $bd $a4

	ld   d, d                                        ; $54f5: $52
	ld   h, a                                        ; $54f6: $67
	inc  a                                           ; $54f7: $3c
	xor  d                                           ; $54f8: $aa
	call z, $6275                                    ; $54f9: $cc $75 $62
	add  h                                           ; $54fc: $84
	ld   e, h                                        ; $54fd: $5c
	xor  h                                           ; $54fe: $ac
	db   $db                                         ; $54ff: $db
	ld   d, [hl]                                     ; $5500: $56
	ld   b, l                                        ; $5501: $45
	ld   [hl], e                                     ; $5502: $73
	sbc  d                                           ; $5503: $9a
	xor  h                                           ; $5504: $ac
	jp   c, $2867                                    ; $5505: $da $67 $28

	ld   h, e                                        ; $5508: $63
	sbc  c                                           ; $5509: $99
	xor  l                                           ; $550a: $ad
	rst  $10                                         ; $550b: $d7
	ld   [hl], l                                     ; $550c: $75
	ld   c, c                                        ; $550d: $49
	ld   b, a                                        ; $550e: $47
	xor  b                                           ; $550f: $a8
	cp   l                                           ; $5510: $bd
	sub  a                                           ; $5511: $97
	add  d                                           ; $5512: $82
	ld   [hl], a                                     ; $5513: $77
	ld   a, [hl-]                                    ; $5514: $3a
	sub  a                                           ; $5515: $97
	db   $ed                                         ; $5516: $ed
	ld   a, c                                        ; $5517: $79
	ld   h, d                                        ; $5518: $62
	or   l                                           ; $5519: $b5
	ld   c, h                                        ; $551a: $4c
	ld   a, d                                        ; $551b: $7a
	db   $eb                                         ; $551c: $eb
	ld   a, c                                        ; $551d: $79
	dec  [hl]                                        ; $551e: $35
	and  d                                           ; $551f: $a2
	sbc  c                                           ; $5520: $99
	ld   l, h                                        ; $5521: $6c
	reti                                             ; $5522: $d9


	adc  b                                           ; $5523: $88
	add  hl, de                                      ; $5524: $19
	ld   [hl], d                                     ; $5525: $72
	or   a                                           ; $5526: $b7
	ld   a, l                                        ; $5527: $7d
	ret  z                                           ; $5528: $c8

	and  [hl]                                        ; $5529: $a6
	dec  hl                                          ; $552a: $2b
	ld   b, h                                        ; $552b: $44
	add  $9d                                         ; $552c: $c6 $9d
	or   a                                           ; $552e: $b7
	and  h                                           ; $552f: $a4
	ld   e, d                                        ; $5530: $5a
	jr   z, jr_0ea_54c9                              ; $5531: $28 $96

	cp   l                                           ; $5533: $bd
	adc  b                                           ; $5534: $88
	and  d                                           ; $5535: $a2
	adc  c                                           ; $5536: $89
	add  hl, hl                                      ; $5537: $29
	sub  [hl]                                        ; $5538: $96
	call c, Call_0ea_727a                            ; $5539: $dc $7a $72
	sub  [hl]                                        ; $553c: $96
	ld   c, e                                        ; $553d: $4b
	adc  b                                           ; $553e: $88
	db   $db                                         ; $553f: $db
	ld   a, c                                        ; $5540: $79
	ld   d, h                                        ; $5541: $54
	sub  l                                           ; $5542: $95
	ld   l, d                                        ; $5543: $6a
	adc  c                                           ; $5544: $89
	jp   c, Jump_0ea_467a                            ; $5545: $da $7a $46

	add  h                                           ; $5548: $84
	adc  c                                           ; $5549: $89
	ld   a, d                                        ; $554a: $7a
	reti                                             ; $554b: $d9


	adc  c                                           ; $554c: $89
	jr   c, jr_0ea_55c3                              ; $554d: $38 $74

	sbc  c                                           ; $554f: $99
	ld   a, h                                        ; $5550: $7c
	cp   b                                           ; $5551: $b8
	sub  [hl]                                        ; $5552: $96
	ld   e, c                                        ; $5553: $59
	ld   d, [hl]                                     ; $5554: $56
	and  a                                           ; $5555: $a7
	sbc  l                                           ; $5556: $9d
	sbc  b                                           ; $5557: $98
	and  h                                           ; $5558: $a4
	ld   l, b                                        ; $5559: $68
	ld   b, a                                        ; $555a: $47
	sub  a                                           ; $555b: $97
	xor  h                                           ; $555c: $ac
	adc  c                                           ; $555d: $89
	add  h                                           ; $555e: $84
	add  a                                           ; $555f: $87
	ld   e, b                                        ; $5560: $58
	adc  b                                           ; $5561: $88
	res  1, d                                        ; $5562: $cb $8a
	ld   h, l                                        ; $5564: $65
	add  l                                           ; $5565: $85
	ld   l, c                                        ; $5566: $69
	ld   a, c                                        ; $5567: $79
	jp   z, Jump_0ea_568a                            ; $5568: $ca $8a $56

	sub  h                                           ; $556b: $94
	ld   a, c                                        ; $556c: $79
	ld   a, d                                        ; $556d: $7a
	cp   c                                           ; $556e: $b9
	sbc  b                                           ; $556f: $98
	ld   e, b                                        ; $5570: $58
	ld   [hl], l                                     ; $5571: $75
	sbc  b                                           ; $5572: $98
	ld   a, h                                        ; $5573: $7c
	xor  c                                           ; $5574: $a9
	sub  [hl]                                        ; $5575: $96
	ld   e, c                                        ; $5576: $59
	ld   d, [hl]                                     ; $5577: $56
	and  a                                           ; $5578: $a7
	adc  e                                           ; $5579: $8b
	sbc  b                                           ; $557a: $98
	sub  l                                           ; $557b: $95
	ld   l, b                                        ; $557c: $68
	ld   d, a                                        ; $557d: $57
	sub  [hl]                                        ; $557e: $96
	sbc  e                                           ; $557f: $9b
	adc  d                                           ; $5580: $8a
	add  l                                           ; $5581: $85
	ld   [hl], a                                     ; $5582: $77
	ld   e, b                                        ; $5583: $58
	add  a                                           ; $5584: $87
	cp   e                                           ; $5585: $bb
	sbc  c                                           ; $5586: $99
	halt                                             ; $5587: $76
	sub  [hl]                                        ; $5588: $96
	ld   l, c                                        ; $5589: $69
	ld   a, b                                        ; $558a: $78
	cp   c                                           ; $558b: $b9
	sbc  d                                           ; $558c: $9a
	ld   h, [hl]                                     ; $558d: $66
	add  l                                           ; $558e: $85
	ld   l, b                                        ; $558f: $68
	ld   a, c                                        ; $5590: $79
	cp   c                                           ; $5591: $b9
	xor  c                                           ; $5592: $a9
	ld   d, a                                        ; $5593: $57
	add  l                                           ; $5594: $85
	adc  b                                           ; $5595: $88
	ld   l, d                                        ; $5596: $6a
	xor  b                                           ; $5597: $a8
	xor  c                                           ; $5598: $a9
	ld   l, b                                        ; $5599: $68
	ld   [hl], l                                     ; $559a: $75
	add  a                                           ; $559b: $87
	ld   a, e                                        ; $559c: $7b
	sbc  c                                           ; $559d: $99
	and  a                                           ; $559e: $a7
	ld   l, c                                        ; $559f: $69
	ld   h, [hl]                                     ; $55a0: $66
	sub  [hl]                                        ; $55a1: $96
	ld   a, e                                        ; $55a2: $7b
	sbc  c                                           ; $55a3: $99
	and  a                                           ; $55a4: $a7
	ld   l, c                                        ; $55a5: $69
	ld   h, [hl]                                     ; $55a6: $66
	sub  a                                           ; $55a7: $97
	adc  e                                           ; $55a8: $8b
	sbc  d                                           ; $55a9: $9a
	sub  [hl]                                        ; $55aa: $96
	ld   a, c                                        ; $55ab: $79
	ld   d, a                                        ; $55ac: $57
	add  [hl]                                        ; $55ad: $86
	sbc  d                                           ; $55ae: $9a
	sbc  d                                           ; $55af: $9a
	sub  [hl]                                        ; $55b0: $96
	ld   a, b                                        ; $55b1: $78
	ld   h, a                                        ; $55b2: $67
	halt                                             ; $55b3: $76
	xor  d                                           ; $55b4: $aa
	sbc  e                                           ; $55b5: $9b
	add  [hl]                                        ; $55b6: $86
	ld   a, b                                        ; $55b7: $78
	ld   d, a                                        ; $55b8: $57
	halt                                             ; $55b9: $76
	sbc  c                                           ; $55ba: $99
	sbc  e                                           ; $55bb: $9b
	sub  a                                           ; $55bc: $97
	ld   [hl], a                                     ; $55bd: $77
	ld   h, a                                        ; $55be: $67
	halt                                             ; $55bf: $76
	sbc  d                                           ; $55c0: $9a
	xor  d                                           ; $55c1: $aa
	sub  a                                           ; $55c2: $97

jr_0ea_55c3:
	ld   [hl], a                                     ; $55c3: $77
	ld   h, a                                        ; $55c4: $67
	halt                                             ; $55c5: $76
	sbc  d                                           ; $55c6: $9a
	sbc  e                                           ; $55c7: $9b
	sub  a                                           ; $55c8: $97
	ld   [hl], a                                     ; $55c9: $77
	ld   h, [hl]                                     ; $55ca: $66
	halt                                             ; $55cb: $76
	adc  d                                           ; $55cc: $8a
	sbc  d                                           ; $55cd: $9a
	xor  b                                           ; $55ce: $a8
	ld   a, b                                        ; $55cf: $78
	ld   h, [hl]                                     ; $55d0: $66
	add  [hl]                                        ; $55d1: $86
	adc  d                                           ; $55d2: $8a
	sbc  d                                           ; $55d3: $9a
	xor  b                                           ; $55d4: $a8
	ld   [hl], a                                     ; $55d5: $77
	ld   h, [hl]                                     ; $55d6: $66
	halt                                             ; $55d7: $76
	ld   a, d                                        ; $55d8: $7a
	sbc  d                                           ; $55d9: $9a
	xor  c                                           ; $55da: $a9
	ld   [hl], a                                     ; $55db: $77
	halt                                             ; $55dc: $76
	ld   [hl], a                                     ; $55dd: $77
	ld   a, c                                        ; $55de: $79
	sbc  d                                           ; $55df: $9a
	xor  c                                           ; $55e0: $a9
	ld   [hl], a                                     ; $55e1: $77
	halt                                             ; $55e2: $76
	ld   [hl], a                                     ; $55e3: $77
	ld   l, b                                        ; $55e4: $68
	xor  d                                           ; $55e5: $aa
	xor  c                                           ; $55e6: $a9
	ld   [hl], a                                     ; $55e7: $77
	halt                                             ; $55e8: $76
	ld   [hl], a                                     ; $55e9: $77
	ld   l, b                                        ; $55ea: $68
	sbc  c                                           ; $55eb: $99
	cp   d                                           ; $55ec: $ba
	add  a                                           ; $55ed: $87
	halt                                             ; $55ee: $76
	ld   [hl], a                                     ; $55ef: $77
	ld   [hl], a                                     ; $55f0: $77
	sbc  c                                           ; $55f1: $99
	xor  d                                           ; $55f2: $aa
	adc  b                                           ; $55f3: $88
	ld   [hl], a                                     ; $55f4: $77
	ld   [hl], a                                     ; $55f5: $77
	ld   [hl], a                                     ; $55f6: $77
	adc  c                                           ; $55f7: $89
	xor  d                                           ; $55f8: $aa
	xor  b                                           ; $55f9: $a8
	ld   [hl], a                                     ; $55fa: $77
	ld   [hl], a                                     ; $55fb: $77
	ld   [hl], a                                     ; $55fc: $77
	ld   a, d                                        ; $55fd: $7a
	sbc  c                                           ; $55fe: $99
	xor  b                                           ; $55ff: $a8
	ld   [hl], a                                     ; $5600: $77
	halt                                             ; $5601: $76
	ld   [hl], a                                     ; $5602: $77
	ld   a, b                                        ; $5603: $78
	sbc  c                                           ; $5604: $99
	xor  c                                           ; $5605: $a9
	ld   [hl], a                                     ; $5606: $77
	ld   [hl], a                                     ; $5607: $77
	ld   [hl], a                                     ; $5608: $77
	ld   l, b                                        ; $5609: $68
	sbc  c                                           ; $560a: $99
	xor  d                                           ; $560b: $aa
	ld   [hl], a                                     ; $560c: $77
	ld   [hl], a                                     ; $560d: $77
	ld   a, b                                        ; $560e: $78
	ld   h, a                                        ; $560f: $67
	sbc  b                                           ; $5610: $98
	xor  c                                           ; $5611: $a9
	adc  b                                           ; $5612: $88
	ld   [hl], a                                     ; $5613: $77
	add  a                                           ; $5614: $87
	ld   [hl], a                                     ; $5615: $77
	ld   a, c                                        ; $5616: $79
	sbc  d                                           ; $5617: $9a
	sbc  b                                           ; $5618: $98
	ld   [hl], a                                     ; $5619: $77
	ld   [hl], a                                     ; $561a: $77
	ld   [hl], a                                     ; $561b: $77
	ld   a, b                                        ; $561c: $78
	sbc  d                                           ; $561d: $9a
	sbc  b                                           ; $561e: $98
	add  a                                           ; $561f: $87
	ld   [hl], a                                     ; $5620: $77
	ld   [hl], a                                     ; $5621: $77
	ld   l, b                                        ; $5622: $68
	sbc  c                                           ; $5623: $99
	xor  d                                           ; $5624: $aa
	adc  b                                           ; $5625: $88
	ld   [hl], a                                     ; $5626: $77
	ld   [hl], a                                     ; $5627: $77
	ld   [hl], a                                     ; $5628: $77
	sbc  c                                           ; $5629: $99
	sbc  d                                           ; $562a: $9a
	adc  b                                           ; $562b: $88
	ld   [hl], a                                     ; $562c: $77
	halt                                             ; $562d: $76
	ld   [hl], a                                     ; $562e: $77
	ld   a, c                                        ; $562f: $79
	xor  d                                           ; $5630: $aa
	sbc  c                                           ; $5631: $99
	add  a                                           ; $5632: $87
	ld   [hl], a                                     ; $5633: $77
	ld   h, a                                        ; $5634: $67
	ld   l, c                                        ; $5635: $69
	xor  d                                           ; $5636: $aa
	cp   c                                           ; $5637: $b9
	adc  b                                           ; $5638: $88
	ld   h, a                                        ; $5639: $67
	ld   h, [hl]                                     ; $563a: $66
	ld   [hl], a                                     ; $563b: $77
	adc  d                                           ; $563c: $8a
	xor  e                                           ; $563d: $ab
	sbc  c                                           ; $563e: $99
	halt                                             ; $563f: $76
	halt                                             ; $5640: $76
	ld   h, a                                        ; $5641: $67
	ld   a, c                                        ; $5642: $79
	xor  d                                           ; $5643: $aa
	sbc  c                                           ; $5644: $99
	sub  [hl]                                        ; $5645: $96
	ld   [hl], a                                     ; $5646: $77
	ld   h, a                                        ; $5647: $67
	ld   a, b                                        ; $5648: $78
	sbc  d                                           ; $5649: $9a
	cp   c                                           ; $564a: $b9
	sbc  c                                           ; $564b: $99
	ld   h, a                                        ; $564c: $67
	halt                                             ; $564d: $76
	ld   [hl], a                                     ; $564e: $77
	adc  c                                           ; $564f: $89
	sbc  d                                           ; $5650: $9a
	sbc  c                                           ; $5651: $99
	sub  a                                           ; $5652: $97
	ld   h, a                                        ; $5653: $67
	ld   h, a                                        ; $5654: $67
	ld   [hl], a                                     ; $5655: $77
	sbc  c                                           ; $5656: $99
	cp   d                                           ; $5657: $ba
	sbc  b                                           ; $5658: $98
	ld   [hl], a                                     ; $5659: $77
	ld   [hl], a                                     ; $565a: $77
	ld   [hl], a                                     ; $565b: $77
	adc  b                                           ; $565c: $88
	sbc  e                                           ; $565d: $9b
	sbc  c                                           ; $565e: $99
	add  a                                           ; $565f: $87
	ld   [hl], a                                     ; $5660: $77
	ld   h, a                                        ; $5661: $67
	ld   [hl], a                                     ; $5662: $77
	sbc  d                                           ; $5663: $9a
	xor  d                                           ; $5664: $aa
	xor  b                                           ; $5665: $a8
	ld   [hl], a                                     ; $5666: $77
	ld   [hl], a                                     ; $5667: $77
	ld   h, a                                        ; $5668: $67
	ld   a, b                                        ; $5669: $78
	sbc  d                                           ; $566a: $9a
	xor  c                                           ; $566b: $a9
	sub  a                                           ; $566c: $97
	ld   [hl], a                                     ; $566d: $77
	ld   h, [hl]                                     ; $566e: $66
	ld   h, a                                        ; $566f: $67
	adc  c                                           ; $5670: $89
	cp   c                                           ; $5671: $b9
	sbc  c                                           ; $5672: $99
	ld   [hl], a                                     ; $5673: $77
	ld   h, [hl]                                     ; $5674: $66
	ld   h, [hl]                                     ; $5675: $66
	ld   a, b                                        ; $5676: $78
	sbc  e                                           ; $5677: $9b
	sbc  c                                           ; $5678: $99
	and  a                                           ; $5679: $a7
	ld   [hl], a                                     ; $567a: $77
	ld   d, [hl]                                     ; $567b: $56
	ld   h, a                                        ; $567c: $67
	sbc  c                                           ; $567d: $99
	xor  e                                           ; $567e: $ab
	sbc  d                                           ; $567f: $9a
	ld   [hl], a                                     ; $5680: $77
	ld   h, [hl]                                     ; $5681: $66
	ld   h, [hl]                                     ; $5682: $66
	ld   l, c                                        ; $5683: $69
	adc  e                                           ; $5684: $8b
	xor  c                                           ; $5685: $a9
	xor  b                                           ; $5686: $a8
	ld   [hl], a                                     ; $5687: $77
	ld   h, [hl]                                     ; $5688: $66
	ld   h, [hl]                                     ; $5689: $66

Jump_0ea_568a:
	sbc  c                                           ; $568a: $99
	sbc  e                                           ; $568b: $9b
	xor  d                                           ; $568c: $aa
	sub  a                                           ; $568d: $97
	halt                                             ; $568e: $76
	ld   h, [hl]                                     ; $568f: $66
	ld   h, a                                        ; $5690: $67
	sbc  c                                           ; $5691: $99
	ret                                              ; $5692: $c9


	xor  d                                           ; $5693: $aa
	ld   [hl], a                                     ; $5694: $77
	ld   [hl], l                                     ; $5695: $75
	ld   h, [hl]                                     ; $5696: $66

Jump_0ea_5697:
	ld   l, c                                        ; $5697: $69
	sbc  e                                           ; $5698: $9b
	cp   c                                           ; $5699: $b9
	xor  b                                           ; $569a: $a8
	ld   h, a                                        ; $569b: $67
	ld   h, l                                        ; $569c: $65
	halt                                             ; $569d: $76
	ld   a, c                                        ; $569e: $79
	xor  e                                           ; $569f: $ab
	xor  d                                           ; $56a0: $aa
	sub  a                                           ; $56a1: $97
	halt                                             ; $56a2: $76
	ld   h, [hl]                                     ; $56a3: $66
	ld   h, a                                        ; $56a4: $67
	adc  c                                           ; $56a5: $89
	cp   e                                           ; $56a6: $bb

Call_0ea_56a7:
	xor  d                                           ; $56a7: $aa
	ld   [hl], a                                     ; $56a8: $77
	ld   h, [hl]                                     ; $56a9: $66
	ld   h, [hl]                                     ; $56aa: $66
	ld   l, c                                        ; $56ab: $69
	adc  d                                           ; $56ac: $8a
	ret                                              ; $56ad: $c9


	cp   c                                           ; $56ae: $b9
	ld   [hl], a                                     ; $56af: $77
	ld   h, [hl]                                     ; $56b0: $66
	ld   h, [hl]                                     ; $56b1: $66
	ld   l, c                                        ; $56b2: $69
	sbc  d                                           ; $56b3: $9a
	xor  d                                           ; $56b4: $aa
	xor  b                                           ; $56b5: $a8
	ld   [hl], a                                     ; $56b6: $77
	ld   h, [hl]                                     ; $56b7: $66
	ld   h, [hl]                                     ; $56b8: $66
	ld   a, b                                        ; $56b9: $78
	sbc  d                                           ; $56ba: $9a
	cp   e                                           ; $56bb: $bb
	sbc  b                                           ; $56bc: $98
	ld   [hl], a                                     ; $56bd: $77
	ld   h, [hl]                                     ; $56be: $66
	ld   h, [hl]                                     ; $56bf: $66
	adc  b                                           ; $56c0: $88
	sbc  e                                           ; $56c1: $9b
	xor  d                                           ; $56c2: $aa
	and  a                                           ; $56c3: $a7
	ld   [hl], a                                     ; $56c4: $77
	ld   d, [hl]                                     ; $56c5: $56
	ld   d, [hl]                                     ; $56c6: $56
	adc  b                                           ; $56c7: $88
	xor  d                                           ; $56c8: $aa
	xor  d                                           ; $56c9: $aa
	sub  a                                           ; $56ca: $97
	halt                                             ; $56cb: $76
	ld   h, [hl]                                     ; $56cc: $66
	ld   d, a                                        ; $56cd: $57
	adc  c                                           ; $56ce: $89
	jp   z, $87ab                                    ; $56cf: $ca $ab $87

	halt                                             ; $56d2: $76
	ld   h, [hl]                                     ; $56d3: $66
	ld   e, b                                        ; $56d4: $58
	ld   a, c                                        ; $56d5: $79
	cp   d                                           ; $56d6: $ba
	cp   d                                           ; $56d7: $ba
	add  a                                           ; $56d8: $87
	ld   h, l                                        ; $56d9: $65
	ld   h, l                                        ; $56da: $65
	ld   l, b                                        ; $56db: $68
	ld   a, d                                        ; $56dc: $7a
	xor  e                                           ; $56dd: $ab
	cp   c                                           ; $56de: $b9
	ld   [hl], a                                     ; $56df: $77
	ld   h, l                                        ; $56e0: $65
	ld   h, l                                        ; $56e1: $65
	ld   l, b                                        ; $56e2: $68
	adc  e                                           ; $56e3: $8b
	xor  d                                           ; $56e4: $aa
	xor  c                                           ; $56e5: $a9
	ld   [hl], a                                     ; $56e6: $77
	ld   h, [hl]                                     ; $56e7: $66
	ld   h, l                                        ; $56e8: $65
	ld   a, b                                        ; $56e9: $78
	sbc  d                                           ; $56ea: $9a
	xor  e                                           ; $56eb: $ab
	cp   c                                           ; $56ec: $b9
	ld   [hl], a                                     ; $56ed: $77
	ld   h, l                                        ; $56ee: $65
	ld   h, l                                        ; $56ef: $65
	ld   a, b                                        ; $56f0: $78
	sbc  d                                           ; $56f1: $9a
	cp   e                                           ; $56f2: $bb
	cp   b                                           ; $56f3: $b8
	ld   [hl], a                                     ; $56f4: $77
	ld   d, [hl]                                     ; $56f5: $56
	ld   h, l                                        ; $56f6: $65
	ld   a, b                                        ; $56f7: $78
	adc  d                                           ; $56f8: $8a
	cp   e                                           ; $56f9: $bb
	cp   c                                           ; $56fa: $b9
	ld   [hl], a                                     ; $56fb: $77
	ld   h, l                                        ; $56fc: $65
	ld   h, l                                        ; $56fd: $65
	ld   a, b                                        ; $56fe: $78
	adc  d                                           ; $56ff: $8a
	xor  d                                           ; $5700: $aa
	cp   c                                           ; $5701: $b9
	ld   [hl], a                                     ; $5702: $77
	ld   h, [hl]                                     ; $5703: $66
	ld   [hl], l                                     ; $5704: $75
	ld   a, b                                        ; $5705: $78
	ld   a, d                                        ; $5706: $7a
	xor  d                                           ; $5707: $aa
	cp   d                                           ; $5708: $ba
	ld   a, b                                        ; $5709: $78
	halt                                             ; $570a: $76
	ld   [hl], l                                     ; $570b: $75
	ld   l, b                                        ; $570c: $68
	ld   a, c                                        ; $570d: $79
	xor  d                                           ; $570e: $aa
	cp   d                                           ; $570f: $ba
	adc  b                                           ; $5710: $88
	ld   [hl], l                                     ; $5711: $75
	ld   h, [hl]                                     ; $5712: $66
	ld   d, a                                        ; $5713: $57
	adc  b                                           ; $5714: $88
	xor  e                                           ; $5715: $ab
	xor  e                                           ; $5716: $ab
	add  a                                           ; $5717: $87
	add  [hl]                                        ; $5718: $86
	ld   h, [hl]                                     ; $5719: $66
	ld   d, a                                        ; $571a: $57
	adc  b                                           ; $571b: $88
	xor  e                                           ; $571c: $ab
	xor  e                                           ; $571d: $ab
	sbc  b                                           ; $571e: $98
	halt                                             ; $571f: $76
	ld   h, [hl]                                     ; $5720: $66
	ld   d, [hl]                                     ; $5721: $56
	adc  b                                           ; $5722: $88
	sbc  d                                           ; $5723: $9a
	xor  d                                           ; $5724: $aa
	xor  b                                           ; $5725: $a8
	add  a                                           ; $5726: $87
	ld   h, [hl]                                     ; $5727: $66
	ld   h, l                                        ; $5728: $65
	ld   [hl], a                                     ; $5729: $77
	adc  d                                           ; $572a: $8a
	cp   e                                           ; $572b: $bb
	cp   c                                           ; $572c: $b9
	add  a                                           ; $572d: $87
	ld   h, [hl]                                     ; $572e: $66
	ld   h, l                                        ; $572f: $65
	ld   h, a                                        ; $5730: $67
	adc  c                                           ; $5731: $89
	cp   d                                           ; $5732: $ba
	cp   d                                           ; $5733: $ba
	sbc  b                                           ; $5734: $98
	halt                                             ; $5735: $76
	ld   h, [hl]                                     ; $5736: $66
	ld   d, [hl]                                     ; $5737: $56
	adc  b                                           ; $5738: $88
	sbc  d                                           ; $5739: $9a
	xor  d                                           ; $573a: $aa
	xor  b                                           ; $573b: $a8
	add  [hl]                                        ; $573c: $86
	ld   h, [hl]                                     ; $573d: $66
	ld   d, l                                        ; $573e: $55
	ld   [hl], a                                     ; $573f: $77
	sbc  d                                           ; $5740: $9a
	xor  e                                           ; $5741: $ab
	xor  c                                           ; $5742: $a9
	adc  b                                           ; $5743: $88
	ld   h, [hl]                                     ; $5744: $66
	ld   h, l                                        ; $5745: $65
	ld   h, a                                        ; $5746: $67
	adc  c                                           ; $5747: $89
	xor  d                                           ; $5748: $aa
	cp   d                                           ; $5749: $ba
	adc  b                                           ; $574a: $88
	halt                                             ; $574b: $76
	ld   h, [hl]                                     ; $574c: $66
	ld   h, a                                        ; $574d: $67
	ld   a, b                                        ; $574e: $78
	sbc  d                                           ; $574f: $9a
	xor  e                                           ; $5750: $ab
	xor  c                                           ; $5751: $a9
	add  a                                           ; $5752: $87
	ld   h, [hl]                                     ; $5753: $66
	ld   h, [hl]                                     ; $5754: $66
	ld   a, b                                        ; $5755: $78
	sbc  c                                           ; $5756: $99
	xor  d                                           ; $5757: $aa
	cp   c                                           ; $5758: $b9
	adc  b                                           ; $5759: $88
	halt                                             ; $575a: $76
	ld   h, [hl]                                     ; $575b: $66
	ld   h, a                                        ; $575c: $67
	adc  c                                           ; $575d: $89
	sbc  d                                           ; $575e: $9a
	xor  e                                           ; $575f: $ab
	sbc  b                                           ; $5760: $98
	add  a                                           ; $5761: $87
	ld   h, [hl]                                     ; $5762: $66
	ld   h, [hl]                                     ; $5763: $66
	ld   [hl], a                                     ; $5764: $77
	sbc  d                                           ; $5765: $9a
	xor  d                                           ; $5766: $aa
	sbc  d                                           ; $5767: $9a
	add  a                                           ; $5768: $87
	halt                                             ; $5769: $76
	ld   h, [hl]                                     ; $576a: $66
	ld   h, [hl]                                     ; $576b: $66
	adc  b                                           ; $576c: $88
	xor  d                                           ; $576d: $aa
	xor  e                                           ; $576e: $ab
	xor  c                                           ; $576f: $a9
	sub  a                                           ; $5770: $97
	ld   h, a                                        ; $5771: $67
	ld   h, [hl]                                     ; $5772: $66
	ld   [hl], a                                     ; $5773: $77
	sbc  c                                           ; $5774: $99
	sbc  d                                           ; $5775: $9a
	xor  d                                           ; $5776: $aa
	sbc  b                                           ; $5777: $98
	ld   [hl], a                                     ; $5778: $77
	ld   h, [hl]                                     ; $5779: $66
	ld   h, [hl]                                     ; $577a: $66
	ld   a, b                                        ; $577b: $78
	adc  c                                           ; $577c: $89
	xor  c                                           ; $577d: $a9
	xor  c                                           ; $577e: $a9
	adc  b                                           ; $577f: $88
	halt                                             ; $5780: $76
	halt                                             ; $5781: $76
	ld   h, a                                        ; $5782: $67
	ld   a, c                                        ; $5783: $79
	sbc  d                                           ; $5784: $9a
	sbc  d                                           ; $5785: $9a
	xor  b                                           ; $5786: $a8
	add  a                                           ; $5787: $87
	ld   [hl], a                                     ; $5788: $77
	ld   h, [hl]                                     ; $5789: $66
	ld   [hl], a                                     ; $578a: $77
	adc  b                                           ; $578b: $88
	xor  d                                           ; $578c: $aa
	xor  d                                           ; $578d: $aa
	sbc  c                                           ; $578e: $99
	ld   [hl], a                                     ; $578f: $77
	ld   h, a                                        ; $5790: $67
	ld   h, [hl]                                     ; $5791: $66
	ld   a, b                                        ; $5792: $78
	sbc  c                                           ; $5793: $99

Call_0ea_5794:
	sbc  d                                           ; $5794: $9a
	xor  c                                           ; $5795: $a9
	sbc  b                                           ; $5796: $98
	halt                                             ; $5797: $76
	halt                                             ; $5798: $76
	ld   h, a                                        ; $5799: $67
	ld   a, b                                        ; $579a: $78
	adc  d                                           ; $579b: $8a
	sbc  d                                           ; $579c: $9a
	xor  c                                           ; $579d: $a9
	sub  a                                           ; $579e: $97
	halt                                             ; $579f: $76
	ld   [hl], a                                     ; $57a0: $77
	ld   h, a                                        ; $57a1: $67
	adc  b                                           ; $57a2: $88
	sbc  c                                           ; $57a3: $99
	sbc  d                                           ; $57a4: $9a
	xor  b                                           ; $57a5: $a8
	sbc  b                                           ; $57a6: $98
	ld   [hl], a                                     ; $57a7: $77
	ld   h, [hl]                                     ; $57a8: $66
	ld   [hl], a                                     ; $57a9: $77
	adc  c                                           ; $57aa: $89
	sbc  c                                           ; $57ab: $99
	sbc  c                                           ; $57ac: $99
	xor  b                                           ; $57ad: $a8
	adc  b                                           ; $57ae: $88
	ld   [hl], a                                     ; $57af: $77
	ld   h, [hl]                                     ; $57b0: $66
	ld   [hl], a                                     ; $57b1: $77
	adc  c                                           ; $57b2: $89
	sbc  c                                           ; $57b3: $99
	sbc  c                                           ; $57b4: $99
	sbc  c                                           ; $57b5: $99
	add  a                                           ; $57b6: $87
	ld   h, a                                        ; $57b7: $67
	ld   h, a                                        ; $57b8: $67
	ld   h, a                                        ; $57b9: $67
	adc  c                                           ; $57ba: $89
	sbc  c                                           ; $57bb: $99
	sbc  d                                           ; $57bc: $9a
	sbc  c                                           ; $57bd: $99
	add  a                                           ; $57be: $87
	ld   h, a                                        ; $57bf: $67
	ld   h, a                                        ; $57c0: $67
	ld   h, a                                        ; $57c1: $67
	sbc  c                                           ; $57c2: $99
	xor  d                                           ; $57c3: $aa
	sbc  d                                           ; $57c4: $9a

Call_0ea_57c5:
	sbc  b                                           ; $57c5: $98
	add  a                                           ; $57c6: $87
	ld   h, a                                        ; $57c7: $67
	ld   h, a                                        ; $57c8: $67
	ld   [hl], a                                     ; $57c9: $77
	adc  b                                           ; $57ca: $88
	sbc  d                                           ; $57cb: $9a
	sbc  d                                           ; $57cc: $9a
	sbc  c                                           ; $57cd: $99
	add  a                                           ; $57ce: $87
	ld   [hl], a                                     ; $57cf: $77
	ld   [hl], a                                     ; $57d0: $77
	ld   [hl], a                                     ; $57d1: $77
	adc  b                                           ; $57d2: $88
	sbc  c                                           ; $57d3: $99
	xor  d                                           ; $57d4: $aa
	sbc  b                                           ; $57d5: $98
	add  a                                           ; $57d6: $87
	ld   [hl], a                                     ; $57d7: $77
	ld   [hl], a                                     ; $57d8: $77
	ld   [hl], a                                     ; $57d9: $77
	adc  c                                           ; $57da: $89
	sbc  c                                           ; $57db: $99
	xor  d                                           ; $57dc: $aa
	xor  c                                           ; $57dd: $a9
	adc  b                                           ; $57de: $88
	ld   [hl], a                                     ; $57df: $77
	halt                                             ; $57e0: $76
	ld   [hl], a                                     ; $57e1: $77
	adc  b                                           ; $57e2: $88
	adc  d                                           ; $57e3: $8a

Call_0ea_57e4:
	xor  c                                           ; $57e4: $a9
	xor  c                                           ; $57e5: $a9
	add  a                                           ; $57e6: $87
	ld   [hl], a                                     ; $57e7: $77
	ld   [hl], a                                     ; $57e8: $77
	ld   [hl], a                                     ; $57e9: $77
	adc  b                                           ; $57ea: $88
	sbc  c                                           ; $57eb: $99
	sbc  c                                           ; $57ec: $99
	xor  b                                           ; $57ed: $a8
	sbc  b                                           ; $57ee: $98
	ld   [hl], a                                     ; $57ef: $77
	ld   h, a                                        ; $57f0: $67
	ld   [hl], a                                     ; $57f1: $77
	ld   a, b                                        ; $57f2: $78
	adc  c                                           ; $57f3: $89
	xor  c                                           ; $57f4: $a9
	sbc  c                                           ; $57f5: $99
	adc  b                                           ; $57f6: $88
	add  a                                           ; $57f7: $87
	ld   [hl], a                                     ; $57f8: $77
	ld   [hl], a                                     ; $57f9: $77
	ld   [hl], a                                     ; $57fa: $77
	adc  b                                           ; $57fb: $88
	sbc  d                                           ; $57fc: $9a
	xor  c                                           ; $57fd: $a9
	sbc  c                                           ; $57fe: $99
	add  a                                           ; $57ff: $87
	ld   [hl], a                                     ; $5800: $77
	ld   [hl], a                                     ; $5801: $77
	ld   [hl], a                                     ; $5802: $77
	adc  b                                           ; $5803: $88
	adc  c                                           ; $5804: $89
	sbc  c                                           ; $5805: $99
	sbc  b                                           ; $5806: $98
	adc  b                                           ; $5807: $88
	ld   [hl], a                                     ; $5808: $77
	ld   [hl], a                                     ; $5809: $77
	ld   [hl], a                                     ; $580a: $77
	ld   a, b                                        ; $580b: $78
	sbc  c                                           ; $580c: $99
	sbc  c                                           ; $580d: $99
	sbc  c                                           ; $580e: $99
	sbc  b                                           ; $580f: $98
	add  a                                           ; $5810: $87
	ld   [hl], a                                     ; $5811: $77
	ld   a, b                                        ; $5812: $78
	ld   [hl], a                                     ; $5813: $77
	sub  a                                           ; $5814: $97
	sbc  d                                           ; $5815: $9a
	adc  d                                           ; $5816: $8a
	sbc  b                                           ; $5817: $98
	add  a                                           ; $5818: $87
	ld   [hl], a                                     ; $5819: $77
	ld   [hl], a                                     ; $581a: $77
	ld   [hl], a                                     ; $581b: $77
	add  a                                           ; $581c: $87
	adc  c                                           ; $581d: $89
	sbc  c                                           ; $581e: $99
	xor  b                                           ; $581f: $a8
	sbc  c                                           ; $5820: $99
	ld   [hl], a                                     ; $5821: $77
	halt                                             ; $5822: $76
	ld   [hl], a                                     ; $5823: $77
	ld   a, b                                        ; $5824: $78
	adc  b                                           ; $5825: $88
	adc  c                                           ; $5826: $89
	adc  d                                           ; $5827: $8a
	sbc  b                                           ; $5828: $98
	sub  a                                           ; $5829: $97
	add  a                                           ; $582a: $87
	ld   [hl], a                                     ; $582b: $77
	ld   [hl], a                                     ; $582c: $77
	adc  b                                           ; $582d: $88
	adc  c                                           ; $582e: $89
	adc  c                                           ; $582f: $89
	adc  c                                           ; $5830: $89
	sbc  b                                           ; $5831: $98
	add  a                                           ; $5832: $87
	ld   [hl], a                                     ; $5833: $77
	ld   [hl], a                                     ; $5834: $77
	ld   [hl], a                                     ; $5835: $77
	adc  b                                           ; $5836: $88
	adc  c                                           ; $5837: $89
	sbc  c                                           ; $5838: $99
	sbc  b                                           ; $5839: $98
	adc  b                                           ; $583a: $88
	ld   [hl], a                                     ; $583b: $77
	ld   [hl], a                                     ; $583c: $77
	add  a                                           ; $583d: $87
	ld   a, b                                        ; $583e: $78
	adc  c                                           ; $583f: $89
	sbc  b                                           ; $5840: $98
	sbc  b                                           ; $5841: $98
	sbc  c                                           ; $5842: $99
	adc  b                                           ; $5843: $88
	add  a                                           ; $5844: $87
	ld   [hl], a                                     ; $5845: $77
	ld   [hl], a                                     ; $5846: $77
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	adc  b                                           ; $5849: $88
	adc  b                                           ; $584a: $88
	sbc  c                                           ; $584b: $99
	adc  b                                           ; $584c: $88
	ld   [hl], a                                     ; $584d: $77
	ld   [hl], a                                     ; $584e: $77
	ld   [hl], a                                     ; $584f: $77
	adc  b                                           ; $5850: $88
	adc  c                                           ; $5851: $89
	adc  b                                           ; $5852: $88
	sbc  c                                           ; $5853: $99
	sbc  b                                           ; $5854: $98
	ld   a, b                                        ; $5855: $78
	add  a                                           ; $5856: $87
	ld   [hl], a                                     ; $5857: $77
	ld   [hl], a                                     ; $5858: $77
	ld   a, b                                        ; $5859: $78
	sbc  b                                           ; $585a: $98
	sbc  c                                           ; $585b: $99
	adc  b                                           ; $585c: $88
	sbc  b                                           ; $585d: $98
	add  a                                           ; $585e: $87
	ld   [hl], a                                     ; $585f: $77
	ld   [hl], a                                     ; $5860: $77
	ld   [hl], a                                     ; $5861: $77
	adc  b                                           ; $5862: $88
	adc  c                                           ; $5863: $89
	adc  c                                           ; $5864: $89
	sbc  b                                           ; $5865: $98
	adc  b                                           ; $5866: $88
	add  a                                           ; $5867: $87
	ld   [hl], a                                     ; $5868: $77
	ld   [hl], a                                     ; $5869: $77
	adc  b                                           ; $586a: $88
	sbc  c                                           ; $586b: $99
	sbc  c                                           ; $586c: $99
	adc  c                                           ; $586d: $89

Jump_0ea_586e:
	adc  b                                           ; $586e: $88
	add  a                                           ; $586f: $87
	ld   [hl], a                                     ; $5870: $77
	ld   [hl], a                                     ; $5871: $77
	ld   [hl], a                                     ; $5872: $77
	ld   a, b                                        ; $5873: $78
	adc  c                                           ; $5874: $89
	sbc  b                                           ; $5875: $98
	sbc  c                                           ; $5876: $99
	adc  b                                           ; $5877: $88
	adc  b                                           ; $5878: $88
	ld   [hl], a                                     ; $5879: $77
	ld   [hl], a                                     ; $587a: $77
	ld   a, b                                        ; $587b: $78
	ld   a, b                                        ; $587c: $78
	adc  b                                           ; $587d: $88
	adc  b                                           ; $587e: $88
	adc  c                                           ; $587f: $89
	sbc  b                                           ; $5880: $98
	adc  b                                           ; $5881: $88
	ld   [hl], a                                     ; $5882: $77
	ld   [hl], a                                     ; $5883: $77
	ld   [hl], a                                     ; $5884: $77
	ld   a, b                                        ; $5885: $78
	adc  c                                           ; $5886: $89
	adc  b                                           ; $5887: $88
	adc  b                                           ; $5888: $88
	adc  b                                           ; $5889: $88
	adc  b                                           ; $588a: $88
	ld   [hl], a                                     ; $588b: $77
	ld   [hl], a                                     ; $588c: $77
	ld   [hl], a                                     ; $588d: $77
	adc  b                                           ; $588e: $88
	adc  c                                           ; $588f: $89
	adc  b                                           ; $5890: $88
	sbc  b                                           ; $5891: $98
	sbc  c                                           ; $5892: $99
	add  a                                           ; $5893: $87
	ld   [hl], a                                     ; $5894: $77
	ld   [hl], a                                     ; $5895: $77
	ld   [hl], a                                     ; $5896: $77
	adc  b                                           ; $5897: $88
	adc  b                                           ; $5898: $88
	adc  c                                           ; $5899: $89
	sbc  b                                           ; $589a: $98
	adc  b                                           ; $589b: $88
	add  a                                           ; $589c: $87
	ld   [hl], a                                     ; $589d: $77
	ld   [hl], a                                     ; $589e: $77
	ld   [hl], a                                     ; $589f: $77
	adc  b                                           ; $58a0: $88
	adc  b                                           ; $58a1: $88
	sbc  b                                           ; $58a2: $98
	sbc  c                                           ; $58a3: $99
	adc  b                                           ; $58a4: $88
	ld   a, b                                        ; $58a5: $78
	ld   [hl], a                                     ; $58a6: $77
	ld   [hl], a                                     ; $58a7: $77
	ld   [hl], a                                     ; $58a8: $77
	ld   a, b                                        ; $58a9: $78
	adc  c                                           ; $58aa: $89
	adc  b                                           ; $58ab: $88
	sbc  b                                           ; $58ac: $98
	sbc  c                                           ; $58ad: $99
	adc  b                                           ; $58ae: $88
	ld   [hl], a                                     ; $58af: $77
	ld   [hl], a                                     ; $58b0: $77
	ld   [hl], a                                     ; $58b1: $77
	adc  b                                           ; $58b2: $88
	sbc  b                                           ; $58b3: $98
	sbc  b                                           ; $58b4: $98
	adc  b                                           ; $58b5: $88
	adc  b                                           ; $58b6: $88
	add  a                                           ; $58b7: $87
	ld   [hl], a                                     ; $58b8: $77
	ld   [hl], a                                     ; $58b9: $77
	add  a                                           ; $58ba: $87
	adc  b                                           ; $58bb: $88
	adc  b                                           ; $58bc: $88
	sbc  c                                           ; $58bd: $99
	sbc  c                                           ; $58be: $99
	adc  c                                           ; $58bf: $89
	adc  b                                           ; $58c0: $88
	ld   [hl], a                                     ; $58c1: $77
	add  a                                           ; $58c2: $87
	ld   a, b                                        ; $58c3: $78
	ld   a, b                                        ; $58c4: $78
	adc  b                                           ; $58c5: $88
	adc  c                                           ; $58c6: $89
	sbc  b                                           ; $58c7: $98
	adc  c                                           ; $58c8: $89
	adc  b                                           ; $58c9: $88
	ld   [hl], a                                     ; $58ca: $77
	ld   [hl], a                                     ; $58cb: $77
	ld   [hl], a                                     ; $58cc: $77
	ld   a, b                                        ; $58cd: $78
	adc  c                                           ; $58ce: $89
	adc  c                                           ; $58cf: $89
	sbc  b                                           ; $58d0: $98
	adc  c                                           ; $58d1: $89
	adc  b                                           ; $58d2: $88
	add  a                                           ; $58d3: $87
	ld   [hl], a                                     ; $58d4: $77
	ld   a, b                                        ; $58d5: $78
	ld   a, b                                        ; $58d6: $78
	adc  b                                           ; $58d7: $88
	sbc  b                                           ; $58d8: $98
	sbc  c                                           ; $58d9: $99
	adc  c                                           ; $58da: $89
	sbc  b                                           ; $58db: $98
	add  a                                           ; $58dc: $87
	ld   [hl], a                                     ; $58dd: $77
	ld   [hl], a                                     ; $58de: $77
	ld   [hl], a                                     ; $58df: $77
	adc  c                                           ; $58e0: $89
	adc  b                                           ; $58e1: $88
	adc  b                                           ; $58e2: $88
	sbc  b                                           ; $58e3: $98
	sbc  b                                           ; $58e4: $98
	add  a                                           ; $58e5: $87
	ld   [hl], a                                     ; $58e6: $77
	ld   [hl], a                                     ; $58e7: $77
	ld   [hl], a                                     ; $58e8: $77
	adc  b                                           ; $58e9: $88
	adc  b                                           ; $58ea: $88
	sbc  b                                           ; $58eb: $98
	sbc  b                                           ; $58ec: $98
	sbc  b                                           ; $58ed: $98
	ld   a, b                                        ; $58ee: $78
	ld   [hl], a                                     ; $58ef: $77
	ld   [hl], a                                     ; $58f0: $77
	ld   a, b                                        ; $58f1: $78
	ld   a, b                                        ; $58f2: $78
	adc  b                                           ; $58f3: $88
	adc  c                                           ; $58f4: $89
	adc  b                                           ; $58f5: $88
	sbc  c                                           ; $58f6: $99
	adc  b                                           ; $58f7: $88
	ld   [hl], a                                     ; $58f8: $77
	ld   [hl], a                                     ; $58f9: $77
	ld   [hl], a                                     ; $58fa: $77
	ld   a, b                                        ; $58fb: $78
	adc  b                                           ; $58fc: $88
	sbc  b                                           ; $58fd: $98
	sbc  b                                           ; $58fe: $98
	sbc  b                                           ; $58ff: $98
	adc  b                                           ; $5900: $88
	ld   [hl], a                                     ; $5901: $77
	ld   [hl], a                                     ; $5902: $77
	ld   [hl], a                                     ; $5903: $77
	ld   [hl], a                                     ; $5904: $77
	adc  b                                           ; $5905: $88
	sbc  b                                           ; $5906: $98
	sbc  c                                           ; $5907: $99
	adc  c                                           ; $5908: $89
	adc  b                                           ; $5909: $88
	ld   [hl], a                                     ; $590a: $77
	ld   [hl], a                                     ; $590b: $77
	ld   [hl], a                                     ; $590c: $77
	ld   [hl], a                                     ; $590d: $77
	adc  c                                           ; $590e: $89
	adc  c                                           ; $590f: $89
	adc  c                                           ; $5910: $89
	adc  b                                           ; $5911: $88
	sbc  b                                           ; $5912: $98
	add  a                                           ; $5913: $87
	ld   [hl], a                                     ; $5914: $77
	ld   [hl], a                                     ; $5915: $77
	ld   [hl], a                                     ; $5916: $77
	adc  b                                           ; $5917: $88
	adc  b                                           ; $5918: $88
	sbc  b                                           ; $5919: $98
	adc  b                                           ; $591a: $88
	sbc  c                                           ; $591b: $99
	adc  b                                           ; $591c: $88
	ld   [hl], a                                     ; $591d: $77
	ld   [hl], a                                     ; $591e: $77
	ld   [hl], a                                     ; $591f: $77
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  c                                           ; $5922: $89
	sbc  b                                           ; $5923: $98
	adc  c                                           ; $5924: $89
	sbc  b                                           ; $5925: $98
	add  a                                           ; $5926: $87
	ld   [hl], a                                     ; $5927: $77
	ld   [hl], a                                     ; $5928: $77
	ld   [hl], a                                     ; $5929: $77
	ld   a, b                                        ; $592a: $78
	adc  b                                           ; $592b: $88
	adc  c                                           ; $592c: $89
	adc  c                                           ; $592d: $89
	sbc  c                                           ; $592e: $99
	adc  b                                           ; $592f: $88
	add  a                                           ; $5930: $87
	ld   [hl], a                                     ; $5931: $77
	ld   [hl], a                                     ; $5932: $77
	add  a                                           ; $5933: $87
	adc  c                                           ; $5934: $89
	adc  c                                           ; $5935: $89
	adc  c                                           ; $5936: $89
	adc  b                                           ; $5937: $88
	adc  b                                           ; $5938: $88
	add  a                                           ; $5939: $87
	ld   [hl], a                                     ; $593a: $77
	ld   [hl], a                                     ; $593b: $77
	ld   a, b                                        ; $593c: $78
	adc  b                                           ; $593d: $88
	adc  b                                           ; $593e: $88
	sbc  c                                           ; $593f: $99
	sbc  b                                           ; $5940: $98
	sbc  c                                           ; $5941: $99
	adc  b                                           ; $5942: $88
	ld   [hl], a                                     ; $5943: $77
	ld   [hl], a                                     ; $5944: $77
	ld   [hl], a                                     ; $5945: $77
	add  a                                           ; $5946: $87
	adc  b                                           ; $5947: $88
	sbc  b                                           ; $5948: $98
	adc  b                                           ; $5949: $88
	adc  c                                           ; $594a: $89
	adc  b                                           ; $594b: $88
	add  a                                           ; $594c: $87
	ld   [hl], a                                     ; $594d: $77
	ld   [hl], a                                     ; $594e: $77
	ld   a, b                                        ; $594f: $78
	adc  b                                           ; $5950: $88
	sbc  c                                           ; $5951: $99
	adc  b                                           ; $5952: $88
	adc  b                                           ; $5953: $88
	sbc  b                                           ; $5954: $98
	adc  b                                           ; $5955: $88
	ld   [hl], a                                     ; $5956: $77
	ld   [hl], a                                     ; $5957: $77
	ld   [hl], a                                     ; $5958: $77
	adc  b                                           ; $5959: $88
	adc  c                                           ; $595a: $89
	sbc  b                                           ; $595b: $98
	sbc  b                                           ; $595c: $98
	adc  b                                           ; $595d: $88
	sbc  b                                           ; $595e: $98
	add  a                                           ; $595f: $87
	ld   [hl], a                                     ; $5960: $77
	ld   [hl], a                                     ; $5961: $77
	ld   [hl], a                                     ; $5962: $77
	adc  b                                           ; $5963: $88
	adc  b                                           ; $5964: $88
	adc  c                                           ; $5965: $89
	adc  b                                           ; $5966: $88
	sbc  c                                           ; $5967: $99
	sbc  b                                           ; $5968: $98
	ld   [hl], a                                     ; $5969: $77
	ld   [hl], a                                     ; $596a: $77
	ld   [hl], a                                     ; $596b: $77
	ld   a, b                                        ; $596c: $78
	ld   a, b                                        ; $596d: $78
	sbc  c                                           ; $596e: $99
	sbc  b                                           ; $596f: $98
	sbc  c                                           ; $5970: $99
	adc  c                                           ; $5971: $89
	add  a                                           ; $5972: $87
	ld   [hl], a                                     ; $5973: $77
	ld   [hl], a                                     ; $5974: $77
	ld   [hl], a                                     ; $5975: $77
	add  a                                           ; $5976: $87
	adc  c                                           ; $5977: $89
	sbc  c                                           ; $5978: $99
	sbc  b                                           ; $5979: $98
	sbc  b                                           ; $597a: $98
	sbc  c                                           ; $597b: $99
	ld   [hl], a                                     ; $597c: $77
	ld   [hl], a                                     ; $597d: $77
	ld   [hl], a                                     ; $597e: $77
	ld   [hl], a                                     ; $597f: $77
	ld   a, b                                        ; $5980: $78
	adc  c                                           ; $5981: $89
	sbc  c                                           ; $5982: $99
	sbc  c                                           ; $5983: $99
	sbc  c                                           ; $5984: $99
	adc  b                                           ; $5985: $88
	ld   [hl], a                                     ; $5986: $77
	ld   [hl], a                                     ; $5987: $77
	ld   [hl], a                                     ; $5988: $77
	ld   a, b                                        ; $5989: $78
	adc  b                                           ; $598a: $88
	sbc  c                                           ; $598b: $99
	sbc  c                                           ; $598c: $99
	adc  c                                           ; $598d: $89
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	ld   [hl], a                                     ; $5990: $77
	ld   [hl], a                                     ; $5991: $77
	ld   [hl], a                                     ; $5992: $77
	ld   a, b                                        ; $5993: $78
	ld   a, b                                        ; $5994: $78
	sbc  c                                           ; $5995: $99
	adc  c                                           ; $5996: $89
	adc  c                                           ; $5997: $89
	adc  c                                           ; $5998: $89
	sbc  b                                           ; $5999: $98
	ld   [hl], a                                     ; $599a: $77
	ld   [hl], a                                     ; $599b: $77
	ld   [hl], a                                     ; $599c: $77
	ld   [hl], a                                     ; $599d: $77
	adc  b                                           ; $599e: $88
	sbc  c                                           ; $599f: $99
	sbc  b                                           ; $59a0: $98
	sbc  c                                           ; $59a1: $99
	sbc  b                                           ; $59a2: $98
	adc  b                                           ; $59a3: $88
	ld   [hl], a                                     ; $59a4: $77
	ld   [hl], a                                     ; $59a5: $77
	ld   [hl], a                                     ; $59a6: $77
	ld   [hl], a                                     ; $59a7: $77
	adc  b                                           ; $59a8: $88
	sbc  b                                           ; $59a9: $98
	adc  b                                           ; $59aa: $88
	sbc  b                                           ; $59ab: $98
	adc  c                                           ; $59ac: $89
	adc  b                                           ; $59ad: $88
	ld   [hl], a                                     ; $59ae: $77
	ld   [hl], a                                     ; $59af: $77
	ld   [hl], a                                     ; $59b0: $77
	ld   a, b                                        ; $59b1: $78
	adc  b                                           ; $59b2: $88
	sbc  b                                           ; $59b3: $98
	adc  b                                           ; $59b4: $88
	adc  b                                           ; $59b5: $88
	adc  c                                           ; $59b6: $89
	adc  b                                           ; $59b7: $88
	ld   [hl], a                                     ; $59b8: $77
	ld   [hl], a                                     ; $59b9: $77
	ld   [hl], a                                     ; $59ba: $77
	ld   a, b                                        ; $59bb: $78
	adc  b                                           ; $59bc: $88
	sbc  b                                           ; $59bd: $98
	adc  b                                           ; $59be: $88
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  b                                           ; $59c1: $88
	ld   [hl], a                                     ; $59c2: $77
	ld   [hl], a                                     ; $59c3: $77
	ld   [hl], a                                     ; $59c4: $77
	ld   a, b                                        ; $59c5: $78
	adc  b                                           ; $59c6: $88
	sbc  c                                           ; $59c7: $99
	adc  b                                           ; $59c8: $88
	adc  b                                           ; $59c9: $88
	adc  c                                           ; $59ca: $89
	adc  b                                           ; $59cb: $88
	ld   [hl], a                                     ; $59cc: $77
	ld   [hl], a                                     ; $59cd: $77
	ld   [hl], a                                     ; $59ce: $77
	ld   [hl], a                                     ; $59cf: $77
	adc  b                                           ; $59d0: $88
	adc  c                                           ; $59d1: $89
	sbc  b                                           ; $59d2: $98
	sbc  c                                           ; $59d3: $99
	sbc  c                                           ; $59d4: $99
	adc  b                                           ; $59d5: $88
	add  a                                           ; $59d6: $87
	ld   [hl], a                                     ; $59d7: $77
	ld   [hl], a                                     ; $59d8: $77
	ld   [hl], a                                     ; $59d9: $77
	adc  b                                           ; $59da: $88
	sbc  c                                           ; $59db: $99
	sbc  b                                           ; $59dc: $98
	adc  c                                           ; $59dd: $89
	adc  c                                           ; $59de: $89
	adc  b                                           ; $59df: $88
	add  a                                           ; $59e0: $87
	ld   [hl], a                                     ; $59e1: $77
	ld   [hl], a                                     ; $59e2: $77
	ld   [hl], a                                     ; $59e3: $77
	adc  b                                           ; $59e4: $88
	adc  c                                           ; $59e5: $89
	sbc  c                                           ; $59e6: $99
	adc  b                                           ; $59e7: $88
	sbc  c                                           ; $59e8: $99
	sbc  b                                           ; $59e9: $98
	adc  b                                           ; $59ea: $88
	ld   [hl], a                                     ; $59eb: $77
	ld   [hl], a                                     ; $59ec: $77
	ld   [hl], a                                     ; $59ed: $77
	ld   a, b                                        ; $59ee: $78
	adc  b                                           ; $59ef: $88
	sbc  c                                           ; $59f0: $99
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	sbc  b                                           ; $59f3: $98
	add  a                                           ; $59f4: $87
	ld   [hl], a                                     ; $59f5: $77
	ld   [hl], a                                     ; $59f6: $77
	ld   [hl], a                                     ; $59f7: $77
	ld   a, b                                        ; $59f8: $78
	adc  b                                           ; $59f9: $88
	adc  c                                           ; $59fa: $89
	adc  c                                           ; $59fb: $89
	adc  c                                           ; $59fc: $89
	sbc  c                                           ; $59fd: $99
	adc  b                                           ; $59fe: $88
	add  a                                           ; $59ff: $87
	ld   [hl], a                                     ; $5a00: $77
	ld   [hl], a                                     ; $5a01: $77
	ld   [hl], a                                     ; $5a02: $77
	adc  b                                           ; $5a03: $88
	adc  c                                           ; $5a04: $89
	sbc  b                                           ; $5a05: $98
	adc  c                                           ; $5a06: $89
	adc  c                                           ; $5a07: $89
	adc  b                                           ; $5a08: $88
	adc  b                                           ; $5a09: $88
	ld   [hl], a                                     ; $5a0a: $77
	ld   [hl], a                                     ; $5a0b: $77
	ld   [hl], a                                     ; $5a0c: $77
	ld   a, b                                        ; $5a0d: $78
	adc  b                                           ; $5a0e: $88
	sbc  c                                           ; $5a0f: $99
	sbc  c                                           ; $5a10: $99
	sbc  c                                           ; $5a11: $99
	sbc  b                                           ; $5a12: $98
	adc  b                                           ; $5a13: $88
	adc  b                                           ; $5a14: $88
	add  a                                           ; $5a15: $87
	ld   [hl], a                                     ; $5a16: $77
	ld   a, b                                        ; $5a17: $78
	adc  b                                           ; $5a18: $88
	adc  b                                           ; $5a19: $88
	sbc  c                                           ; $5a1a: $99
	sbc  c                                           ; $5a1b: $99
	sbc  b                                           ; $5a1c: $98
	sbc  b                                           ; $5a1d: $98
	adc  b                                           ; $5a1e: $88
	adc  b                                           ; $5a1f: $88
	add  a                                           ; $5a20: $87
	ld   [hl], a                                     ; $5a21: $77
	adc  b                                           ; $5a22: $88
	adc  b                                           ; $5a23: $88
	adc  b                                           ; $5a24: $88
	sbc  b                                           ; $5a25: $98
	sbc  c                                           ; $5a26: $99
	adc  c                                           ; $5a27: $89
	adc  b                                           ; $5a28: $88
	adc  b                                           ; $5a29: $88
	adc  b                                           ; $5a2a: $88
	ld   [hl], a                                     ; $5a2b: $77
	adc  b                                           ; $5a2c: $88
	adc  b                                           ; $5a2d: $88
	adc  b                                           ; $5a2e: $88
	adc  b                                           ; $5a2f: $88
	sbc  c                                           ; $5a30: $99
	sbc  c                                           ; $5a31: $99
	sbc  b                                           ; $5a32: $98
	adc  b                                           ; $5a33: $88
	adc  b                                           ; $5a34: $88
	add  a                                           ; $5a35: $87
	ld   [hl], a                                     ; $5a36: $77
	adc  b                                           ; $5a37: $88
	adc  b                                           ; $5a38: $88
	adc  b                                           ; $5a39: $88
	adc  c                                           ; $5a3a: $89
	sbc  c                                           ; $5a3b: $99
	sbc  c                                           ; $5a3c: $99
	sbc  b                                           ; $5a3d: $98
	adc  b                                           ; $5a3e: $88
	add  a                                           ; $5a3f: $87
	adc  b                                           ; $5a40: $88
	ld   a, b                                        ; $5a41: $78
	adc  b                                           ; $5a42: $88
	adc  b                                           ; $5a43: $88
	adc  c                                           ; $5a44: $89
	adc  c                                           ; $5a45: $89
	sbc  c                                           ; $5a46: $99
	sbc  b                                           ; $5a47: $98
	adc  b                                           ; $5a48: $88
	adc  b                                           ; $5a49: $88
	adc  b                                           ; $5a4a: $88
	adc  b                                           ; $5a4b: $88
	adc  b                                           ; $5a4c: $88
	adc  b                                           ; $5a4d: $88
	adc  b                                           ; $5a4e: $88
	adc  b                                           ; $5a4f: $88
	sbc  b                                           ; $5a50: $98
	sbc  c                                           ; $5a51: $99
	sbc  c                                           ; $5a52: $99
	adc  b                                           ; $5a53: $88
	adc  b                                           ; $5a54: $88
	adc  b                                           ; $5a55: $88
	adc  b                                           ; $5a56: $88
	adc  b                                           ; $5a57: $88
	adc  b                                           ; $5a58: $88
	adc  b                                           ; $5a59: $88
	sbc  b                                           ; $5a5a: $98
	sbc  c                                           ; $5a5b: $99
	sbc  c                                           ; $5a5c: $99
	sbc  b                                           ; $5a5d: $98
	adc  b                                           ; $5a5e: $88
	adc  b                                           ; $5a5f: $88
	adc  b                                           ; $5a60: $88
	adc  b                                           ; $5a61: $88
	adc  b                                           ; $5a62: $88
	adc  b                                           ; $5a63: $88
	adc  b                                           ; $5a64: $88
	adc  c                                           ; $5a65: $89
	sbc  c                                           ; $5a66: $99
	sbc  c                                           ; $5a67: $99
	sbc  b                                           ; $5a68: $98
	adc  b                                           ; $5a69: $88
	adc  b                                           ; $5a6a: $88
	adc  b                                           ; $5a6b: $88
	adc  b                                           ; $5a6c: $88
	adc  b                                           ; $5a6d: $88
	adc  b                                           ; $5a6e: $88
	adc  b                                           ; $5a6f: $88
	sbc  b                                           ; $5a70: $98
	sbc  c                                           ; $5a71: $99
	adc  c                                           ; $5a72: $89
	sbc  b                                           ; $5a73: $98
	adc  b                                           ; $5a74: $88
	adc  b                                           ; $5a75: $88
	adc  b                                           ; $5a76: $88
	adc  b                                           ; $5a77: $88
	adc  b                                           ; $5a78: $88
	adc  b                                           ; $5a79: $88
	adc  b                                           ; $5a7a: $88
	adc  c                                           ; $5a7b: $89
	adc  b                                           ; $5a7c: $88
	sbc  b                                           ; $5a7d: $98
	adc  b                                           ; $5a7e: $88
	adc  b                                           ; $5a7f: $88
	adc  b                                           ; $5a80: $88
	adc  b                                           ; $5a81: $88
	adc  b                                           ; $5a82: $88
	adc  b                                           ; $5a83: $88
	adc  b                                           ; $5a84: $88
	adc  b                                           ; $5a85: $88
	adc  b                                           ; $5a86: $88
	adc  c                                           ; $5a87: $89
	sbc  b                                           ; $5a88: $98
	adc  b                                           ; $5a89: $88
	adc  b                                           ; $5a8a: $88
	adc  b                                           ; $5a8b: $88
	adc  b                                           ; $5a8c: $88
	adc  b                                           ; $5a8d: $88
	adc  b                                           ; $5a8e: $88
	adc  b                                           ; $5a8f: $88
	adc  b                                           ; $5a90: $88
	adc  b                                           ; $5a91: $88
	adc  c                                           ; $5a92: $89
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
	sbc  b                                           ; $5a9d: $98
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
	add  c                                           ; $5afa: $81
	ld   de, $1111                                   ; $5afb: $11 $11 $11
	ld   de, $1111                                   ; $5afe: $11 $11 $11
	ld   de, $1111                                   ; $5b01: $11 $11 $11
	ld   de, $1111                                   ; $5b04: $11 $11 $11
	ld   de, $1111                                   ; $5b07: $11 $11 $11
	ld   de, $1111                                   ; $5b0a: $11 $11 $11
	ld   de, $1111                                   ; $5b0d: $11 $11 $11
	ld   de, $1111                                   ; $5b10: $11 $11 $11
	ld   de, $1111                                   ; $5b13: $11 $11 $11
	ld   de, $1111                                   ; $5b16: $11 $11 $11
	ld   de, $1111                                   ; $5b19: $11 $11 $11
	ld   de, $1111                                   ; $5b1c: $11 $11 $11
	ld   de, $1111                                   ; $5b1f: $11 $11 $11
	ld   de, $1111                                   ; $5b22: $11 $11 $11
	ld   de, $1111                                   ; $5b25: $11 $11 $11
	ld   de, $0011                                   ; $5b28: $11 $11 $00
	ld   c, b                                        ; $5b2b: $48
	ld   de, $1111                                   ; $5b2c: $11 $11 $11
	ld   de, $1111                                   ; $5b2f: $11 $11 $11
	ld   de, $1111                                   ; $5b32: $11 $11 $11
	ld   de, $5413                                   ; $5b35: $11 $13 $54
	ld   d, h                                        ; $5b38: $54
	ld   d, h                                        ; $5b39: $54
	ld   b, c                                        ; $5b3a: $41
	rra                                              ; $5b3b: $1f
	rst  $38                                         ; $5b3c: $ff
	pop  af                                          ; $5b3d: $f1
	ld   de, $1411                                   ; $5b3e: $11 $11 $14
	pop  de                                          ; $5b41: $d1
	ld   de, $de1c                                   ; $5b42: $11 $1c $de
	cp   h                                           ; $5b45: $bc
	sbc  $b1                                         ; $5b46: $de $b1
	ld   de, $1111                                   ; $5b48: $11 $11 $11
	ld   de, $1111                                   ; $5b4b: $11 $11 $11
	ld   de, $1111                                   ; $5b4e: $11 $11 $11
	ld   de, $1111                                   ; $5b51: $11 $11 $11
	ld   de, $5411                                   ; $5b54: $11 $11 $54
	ld   b, h                                        ; $5b57: $44
	call nz, $5411                                   ; $5b58: $c4 $11 $54
	ld   d, h                                        ; $5b5b: $54
	ld   h, a                                        ; $5b5c: $67
	ld   [hl], d                                     ; $5b5d: $72
	ld   de, $1111                                   ; $5b5e: $11 $11 $11
	ld   de, $1112                                   ; $5b61: $11 $12 $11
	ld   [de], a                                     ; $5b64: $12
	ld   de, $1111                                   ; $5b65: $11 $11 $11
	ld   h, [hl]                                     ; $5b68: $66
	halt                                             ; $5b69: $76
	sub  h                                           ; $5b6a: $94
	ld   de, $8888                                   ; $5b6b: $11 $88 $88
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
	adc  c                                           ; $5b95: $89
	adc  b                                           ; $5b96: $88
	ld   a, b                                        ; $5b97: $78
	sbc  b                                           ; $5b98: $98
	adc  c                                           ; $5b99: $89
	ld   [hl], a                                     ; $5b9a: $77
	adc  b                                           ; $5b9b: $88
	adc  b                                           ; $5b9c: $88
	adc  c                                           ; $5b9d: $89
	adc  b                                           ; $5b9e: $88
	adc  b                                           ; $5b9f: $88
	sbc  b                                           ; $5ba0: $98
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
	sbc  b                                           ; $5bb0: $98
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
	ld   a, b                                        ; $5bc1: $78
	sbc  b                                           ; $5bc2: $98
	adc  b                                           ; $5bc3: $88
	ld   a, b                                        ; $5bc4: $78
	adc  b                                           ; $5bc5: $88
	adc  b                                           ; $5bc6: $88
	adc  b                                           ; $5bc7: $88
	adc  b                                           ; $5bc8: $88
	adc  b                                           ; $5bc9: $88
	adc  c                                           ; $5bca: $89
	sbc  b                                           ; $5bcb: $98
	adc  b                                           ; $5bcc: $88
	adc  b                                           ; $5bcd: $88
	adc  b                                           ; $5bce: $88
	add  a                                           ; $5bcf: $87
	adc  b                                           ; $5bd0: $88
	ld   a, b                                        ; $5bd1: $78
	sbc  c                                           ; $5bd2: $99
	add  a                                           ; $5bd3: $87
	add  a                                           ; $5bd4: $87
	adc  b                                           ; $5bd5: $88
	sbc  b                                           ; $5bd6: $98
	ld   a, b                                        ; $5bd7: $78
	add  a                                           ; $5bd8: $87
	adc  b                                           ; $5bd9: $88
	ld   a, b                                        ; $5bda: $78
	adc  b                                           ; $5bdb: $88
	add  a                                           ; $5bdc: $87
	adc  b                                           ; $5bdd: $88
	adc  b                                           ; $5bde: $88
	adc  b                                           ; $5bdf: $88
	adc  b                                           ; $5be0: $88
	adc  b                                           ; $5be1: $88
	adc  b                                           ; $5be2: $88
	adc  b                                           ; $5be3: $88
	ld   a, b                                        ; $5be4: $78
	adc  b                                           ; $5be5: $88
	adc  b                                           ; $5be6: $88
	add  a                                           ; $5be7: $87
	adc  b                                           ; $5be8: $88
	adc  b                                           ; $5be9: $88
	sbc  b                                           ; $5bea: $98
	add  a                                           ; $5beb: $87
	ld   a, b                                        ; $5bec: $78
	add  a                                           ; $5bed: $87
	sbc  b                                           ; $5bee: $98
	ld   a, b                                        ; $5bef: $78
	adc  b                                           ; $5bf0: $88
	adc  b                                           ; $5bf1: $88
	adc  c                                           ; $5bf2: $89
	adc  b                                           ; $5bf3: $88
	add  a                                           ; $5bf4: $87
	adc  b                                           ; $5bf5: $88
	sbc  b                                           ; $5bf6: $98
	adc  b                                           ; $5bf7: $88
	ld   [hl], a                                     ; $5bf8: $77
	adc  b                                           ; $5bf9: $88
	adc  b                                           ; $5bfa: $88
	adc  b                                           ; $5bfb: $88
	adc  b                                           ; $5bfc: $88
	add  a                                           ; $5bfd: $87
	adc  b                                           ; $5bfe: $88
	adc  b                                           ; $5bff: $88
	adc  b                                           ; $5c00: $88
	adc  b                                           ; $5c01: $88
	adc  b                                           ; $5c02: $88
	adc  b                                           ; $5c03: $88
	ld   a, b                                        ; $5c04: $78
	adc  b                                           ; $5c05: $88
	ld   a, b                                        ; $5c06: $78
	sbc  b                                           ; $5c07: $98
	adc  b                                           ; $5c08: $88
	ld   [hl], a                                     ; $5c09: $77
	adc  c                                           ; $5c0a: $89
	adc  b                                           ; $5c0b: $88
	ld   a, b                                        ; $5c0c: $78
	adc  b                                           ; $5c0d: $88
	adc  b                                           ; $5c0e: $88
	adc  b                                           ; $5c0f: $88
	adc  b                                           ; $5c10: $88
	add  a                                           ; $5c11: $87
	adc  c                                           ; $5c12: $89
	adc  b                                           ; $5c13: $88
	adc  b                                           ; $5c14: $88
	adc  b                                           ; $5c15: $88
	adc  c                                           ; $5c16: $89
	add  a                                           ; $5c17: $87
	ld   a, c                                        ; $5c18: $79
	adc  b                                           ; $5c19: $88
	sbc  b                                           ; $5c1a: $98
	adc  b                                           ; $5c1b: $88
	adc  b                                           ; $5c1c: $88
	add  a                                           ; $5c1d: $87
	adc  c                                           ; $5c1e: $89
	add  a                                           ; $5c1f: $87
	adc  b                                           ; $5c20: $88
	add  a                                           ; $5c21: $87
	adc  b                                           ; $5c22: $88
	ld   a, b                                        ; $5c23: $78
	ld   [hl], a                                     ; $5c24: $77
	ld   a, b                                        ; $5c25: $78
	ld   a, b                                        ; $5c26: $78
	adc  c                                           ; $5c27: $89
	adc  c                                           ; $5c28: $89
	adc  c                                           ; $5c29: $89
	sbc  c                                           ; $5c2a: $99
	adc  c                                           ; $5c2b: $89
	add  a                                           ; $5c2c: $87
	ld   a, b                                        ; $5c2d: $78
	ld   [hl], a                                     ; $5c2e: $77
	halt                                             ; $5c2f: $76
	ld   h, [hl]                                     ; $5c30: $66
	ld   h, a                                        ; $5c31: $67
	ld   [hl], a                                     ; $5c32: $77
	adc  c                                           ; $5c33: $89
	sbc  d                                           ; $5c34: $9a
	sbc  d                                           ; $5c35: $9a
	xor  d                                           ; $5c36: $aa
	sbc  c                                           ; $5c37: $99
	xor  d                                           ; $5c38: $aa
	add  a                                           ; $5c39: $87
	halt                                             ; $5c3a: $76
	halt                                             ; $5c3b: $76
	ld   d, [hl]                                     ; $5c3c: $56
	ld   h, [hl]                                     ; $5c3d: $66
	ld   h, a                                        ; $5c3e: $67
	ld   a, b                                        ; $5c3f: $78
	sbc  d                                           ; $5c40: $9a
	cp   e                                           ; $5c41: $bb
	res  7, d                                        ; $5c42: $cb $ba
	sbc  d                                           ; $5c44: $9a
	xor  b                                           ; $5c45: $a8
	ld   h, l                                        ; $5c46: $65
	ld   d, [hl]                                     ; $5c47: $56
	ld   h, h                                        ; $5c48: $64
	ld   d, l                                        ; $5c49: $55
	ld   d, [hl]                                     ; $5c4a: $56
	ld   h, a                                        ; $5c4b: $67
	sbc  d                                           ; $5c4c: $9a
	cp   e                                           ; $5c4d: $bb
	cp   e                                           ; $5c4e: $bb
	jp   z, $9aba                                    ; $5c4f: $ca $ba $9a

	add  a                                           ; $5c52: $87
	ld   h, e                                        ; $5c53: $63
	jr   c, jr_0ea_5ca9                              ; $5c54: $38 $53

	ld   d, l                                        ; $5c56: $55
	ld   d, [hl]                                     ; $5c57: $56
	ld   l, b                                        ; $5c58: $68
	xor  e                                           ; $5c59: $ab
	cp   h                                           ; $5c5a: $bc
	db   $dd                                         ; $5c5b: $dd
	call z, $a9ca                                    ; $5c5c: $cc $ca $a9
	halt                                             ; $5c5f: $76
	ld   [hl-], a                                    ; $5c60: $32
	ld   h, [hl]                                     ; $5c61: $66
	inc  d                                           ; $5c62: $14
	ld   d, h                                        ; $5c63: $54
	ld   h, [hl]                                     ; $5c64: $66
	adc  d                                           ; $5c65: $8a
	xor  l                                           ; $5c66: $ad
	call c, $cded                                    ; $5c67: $dc $ed $cd
	xor  d                                           ; $5c6a: $aa
	add  l                                           ; $5c6b: $85
	ld   b, d                                        ; $5c6c: $42
	ld   d, $51                                      ; $5c6d: $16 $51
	ld   d, l                                        ; $5c6f: $55
	ld   b, [hl]                                     ; $5c70: $46
	ld   l, d                                        ; $5c71: $6a
	set  5, a                                        ; $5c72: $cb $ef
	sbc  $dd                                         ; $5c74: $de $dd
	ret                                              ; $5c76: $c9


	sbc  b                                           ; $5c77: $98
	ld   b, d                                        ; $5c78: $42
	inc  de                                          ; $5c79: $13
	ld   [hl], c                                     ; $5c7a: $71
	rla                                              ; $5c7b: $17
	ld   b, l                                        ; $5c7c: $45
	ld   l, b                                        ; $5c7d: $68
	jp   z, $eebf                                    ; $5c7e: $ca $bf $ee

	cp   $eb                                         ; $5c81: $fe $eb
	sbc  c                                           ; $5c83: $99
	ld   b, c                                        ; $5c84: $41
	ld   de, $1771                                   ; $5c85: $11 $71 $17
	ld   d, h                                        ; $5c88: $54
	ld   h, a                                        ; $5c89: $67
	db   $ec                                         ; $5c8a: $ec
	sbc  a                                           ; $5c8b: $9f
	cp   $ee                                         ; $5c8c: $fe $ee
	db   $fc                                         ; $5c8e: $fc
	ld   l, d                                        ; $5c8f: $6a
	ld   h, c                                        ; $5c90: $61
	ld   de, $16a1                                   ; $5c91: $11 $a1 $16
	ld   h, h                                        ; $5c94: $64
	ld   h, a                                        ; $5c95: $67
	rst  $38                                         ; $5c96: $ff
	xor  a                                           ; $5c97: $af
	rst  $38                                         ; $5c98: $ff
	db   $dd                                         ; $5c99: $dd
	cp   $69                                         ; $5c9a: $fe $69
	ld   h, c                                        ; $5c9c: $61
	ld   de, $16a1                                   ; $5c9d: $11 $a1 $16
	ld   d, a                                        ; $5ca0: $57
	ld   d, a                                        ; $5ca1: $57
	rst  $38                                         ; $5ca2: $ff
	cp   a                                           ; $5ca3: $bf
	rst  $38                                         ; $5ca4: $ff
	db   $dd                                         ; $5ca5: $dd
	db   $fc                                         ; $5ca6: $fc
	ld   c, b                                        ; $5ca7: $48
	ld   b, c                                        ; $5ca8: $41

jr_0ea_5ca9:
	inc  d                                           ; $5ca9: $14
	add  c                                           ; $5caa: $81
	inc  d                                           ; $5cab: $14
	ld   l, d                                        ; $5cac: $6a
	ld   c, h                                        ; $5cad: $4c
	db   $fd                                         ; $5cae: $fd
	rst  $28                                         ; $5caf: $ef
	rst  $38                                         ; $5cb0: $ff
	xor  [hl]                                        ; $5cb1: $ae
	ld   hl, sp+$55                                  ; $5cb2: $f8 $55
	ld   de, $1119                                   ; $5cb4: $11 $19 $11
	ld   h, e                                        ; $5cb7: $63
	and  l                                           ; $5cb8: $a5
	adc  a                                           ; $5cb9: $8f
	db   $ed                                         ; $5cba: $ed
	rst  $38                                         ; $5cbb: $ff
	db   $fc                                         ; $5cbc: $fc
	cp   a                                           ; $5cbd: $bf
	or   l                                           ; $5cbe: $b5
	ld   h, c                                        ; $5cbf: $61
	ld   de, $1681                                   ; $5cc0: $11 $81 $16
	ld   a, [hl+]                                    ; $5cc3: $2a
	ld   [hl], a                                     ; $5cc4: $77
	cp   $ef                                         ; $5cc5: $fe $ef
	rst  $38                                         ; $5cc7: $ff
	ret                                              ; $5cc8: $c9


	db   $fc                                         ; $5cc9: $fc
	ld   d, l                                        ; $5cca: $55
	ld   de, $111a                                   ; $5ccb: $11 $1a $11
	add  c                                           ; $5cce: $81
	or   l                                           ; $5ccf: $b5
	sbc  a                                           ; $5cd0: $9f
	sbc  $ff                                         ; $5cd1: $de $ff
	db   $fc                                         ; $5cd3: $fc
	sbc  a                                           ; $5cd4: $9f
	sub  [hl]                                        ; $5cd5: $96
	ld   h, c                                        ; $5cd6: $61
	ld   de, $17a1                                   ; $5cd7: $11 $a1 $17
	inc  a                                           ; $5cda: $3c
	ld   c, h                                        ; $5cdb: $4c
	db   $fc                                         ; $5cdc: $fc
	rst  $28                                         ; $5cdd: $ef
	rst  $38                                         ; $5cde: $ff
	xor  d                                           ; $5cdf: $aa
	ld   hl, sp+$64                                  ; $5ce0: $f8 $64
	ld   de, $1895                                   ; $5ce2: $11 $95 $18
	ld   b, [hl]                                     ; $5ce5: $46
	or   c                                           ; $5ce6: $b1
	rst  $38                                         ; $5ce7: $ff
	sbc  a                                           ; $5ce8: $9f
	rst  $38                                         ; $5ce9: $ff
	or   $ef                                         ; $5cea: $f6 $ef
	ld   b, a                                        ; $5cec: $47
	ld   de, $111b                                   ; $5ced: $11 $1b $11
	and  c                                           ; $5cf0: $a1
	push bc                                          ; $5cf1: $c5
	ld   a, a                                        ; $5cf2: $7f
	cp   h                                           ; $5cf3: $bc
	cp   $fb                                         ; $5cf4: $fe $fb
	ld   a, a                                        ; $5cf6: $7f
	sub  l                                           ; $5cf7: $95
	ld   h, c                                        ; $5cf8: $61
	jr   jr_0ea_5d6c                                 ; $5cf9: $18 $71

	add  l                                           ; $5cfb: $85
	ld   l, h                                        ; $5cfc: $6c
	rrca                                             ; $5cfd: $0f
	ld   hl, sp-$01                                  ; $5cfe: $f8 $ff
	rst  $38                                         ; $5d00: $ff
	ld   c, [hl]                                     ; $5d01: $4e
	db   $f4                                         ; $5d02: $f4
	ld   h, c                                        ; $5d03: $61
	ld   [de], a                                     ; $5d04: $12
	pop  bc                                          ; $5d05: $c1
	inc  l                                           ; $5d06: $2c
	cpl                                              ; $5d07: $2f
	inc  e                                           ; $5d08: $1c
	rst  $30                                         ; $5d09: $f7
	rst  JumpTable                                         ; $5d0a: $df
	rst  $28                                         ; $5d0b: $ef
	ld   l, b                                        ; $5d0c: $68
	or   $62                                         ; $5d0d: $f6 $62
	ld   de, $1ff1                                   ; $5d0f: $11 $f1 $1f
	cpl                                              ; $5d12: $2f
	ld   d, l                                        ; $5d13: $55
	ei                                               ; $5d14: $fb
	xor  a                                           ; $5d15: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d16: $cf
	and  h                                           ; $5d17: $a4
	ld   sp, hl                                      ; $5d18: $f9
	ld   d, l                                        ; $5d19: $55
	ld   de, $1ef2                                   ; $5d1a: $11 $f2 $1e
	ld   e, h                                        ; $5d1d: $5c
	or   c                                           ; $5d1e: $b1
	rst  $38                                         ; $5d1f: $ff
	ld   l, a                                        ; $5d20: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d21: $cf
	pop  de                                          ; $5d22: $d1
	db   $fc                                         ; $5d23: $fc
	ld   d, [hl]                                     ; $5d24: $56
	ld   de, $1dc6                                   ; $5d25: $11 $c6 $1d
	ld   a, c                                        ; $5d28: $79
	pop  hl                                          ; $5d29: $e1
	rst  $38                                         ; $5d2a: $ff
	ld   e, a                                        ; $5d2b: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d2c: $cf
	pop  af                                          ; $5d2d: $f1
	sbc  $46                                         ; $5d2e: $de $46
	ld   de, $1bba                                   ; $5d30: $11 $ba $1b
	and  a                                           ; $5d33: $a7
	pop  af                                          ; $5d34: $f1
	rst  $38                                         ; $5d35: $ff
	ld   c, a                                        ; $5d36: $4f
	adc  $f1                                         ; $5d37: $ce $f1
	cp   a                                           ; $5d39: $bf
	ld   b, [hl]                                     ; $5d3a: $46
	ld   de, $188d                                   ; $5d3b: $11 $8d $18
	sub  $f1                                         ; $5d3e: $d6 $f1
	rst  $38                                         ; $5d40: $ff
	ld   c, [hl]                                     ; $5d41: $4e
	call c, $9ff1                                    ; $5d42: $dc $f1 $9f
	ld   d, [hl]                                     ; $5d45: $56
	ld   de, $123f                                   ; $5d46: $11 $3f $12
	push af                                          ; $5d49: $f5
	pop  af                                          ; $5d4a: $f1
	rst  JumpTable                                         ; $5d4b: $df
	ld   l, h                                        ; $5d4c: $6c
	db   $eb                                         ; $5d4d: $eb
	pop  af                                          ; $5d4e: $f1
	ld   e, a                                        ; $5d4f: $5f
	ld   [hl], a                                     ; $5d50: $77
	ld   de, $111f                                   ; $5d51: $11 $1f $11
	db   $f4                                         ; $5d54: $f4
	push af                                          ; $5d55: $f5
	ld   e, a                                        ; $5d56: $5f
	xor  c                                           ; $5d57: $a9
	ld   [$1ff6], a                                  ; $5d58: $ea $f6 $1f
	and  a                                           ; $5d5b: $a7
	ld   b, c                                        ; $5d5c: $41
	dec  e                                           ; $5d5d: $1d
	ld   d, c                                        ; $5d5e: $51
	or   $db                                         ; $5d5f: $f6 $db
	rra                                              ; $5d61: $1f
	or   $f9                                         ; $5d62: $f6 $f9
	ld   a, [$d71f]                                  ; $5d64: $fa $1f $d7
	ld   d, c                                        ; $5d67: $51
	rla                                              ; $5d68: $17
	pop  de                                          ; $5d69: $d1
	sbc  h                                           ; $5d6a: $9c
	adc  a                                           ; $5d6b: $8f

jr_0ea_5d6c:
	rra                                              ; $5d6c: $1f
	push af                                          ; $5d6d: $f5
	ld   [$1cde], a                                  ; $5d6e: $ea $de $1c
	rst  $30                                         ; $5d71: $f7
	ld   [hl], c                                     ; $5d72: $71
	ld   de, $2ff1                                   ; $5d73: $11 $f1 $2f
	ld   e, a                                        ; $5d76: $5f
	ld   e, $f6                                      ; $5d77: $1e $f6
	call z, $17bf                                    ; $5d79: $cc $bf $17
	ld   hl, sp-$7f                                  ; $5d7c: $f8 $81
	ld   [de], a                                     ; $5d7e: $12
	pop  af                                          ; $5d7f: $f1
	rra                                              ; $5d80: $1f
	ld   e, a                                        ; $5d81: $5f
	dec  e                                           ; $5d82: $1d
	or   $bb                                         ; $5d83: $f6 $bb
	xor  a                                           ; $5d85: $af
	inc  d                                           ; $5d86: $14
	rst  $30                                         ; $5d87: $f7
	add  c                                           ; $5d88: $81
	ld   [de], a                                     ; $5d89: $12
	pop  af                                          ; $5d8a: $f1
	rra                                              ; $5d8b: $1f
	ld   e, a                                        ; $5d8c: $5f
	inc  e                                           ; $5d8d: $1c
	or   $9b                                         ; $5d8e: $f6 $9b
	cp   a                                           ; $5d90: $bf
	inc  d                                           ; $5d91: $14
	ld   hl, sp-$6f                                  ; $5d92: $f8 $91
	ld   de, $1ff1                                   ; $5d94: $11 $f1 $1f
	ld   c, a                                        ; $5d97: $4f
	ld   a, [de]                                     ; $5d98: $1a
	or   $9c                                         ; $5d99: $f6 $9c
	xor  a                                           ; $5d9b: $af
	inc  de                                          ; $5d9c: $13
	rst  $30                                         ; $5d9d: $f7
	sub  c                                           ; $5d9e: $91
	dec  d                                           ; $5d9f: $15
	pop  af                                          ; $5da0: $f1
	cpl                                              ; $5da1: $2f
	ld   l, a                                        ; $5da2: $6f
	rra                                              ; $5da3: $1f
	push af                                          ; $5da4: $f5
	xor  d                                           ; $5da5: $aa
	cp   a                                           ; $5da6: $bf
	ld   d, $f7                                      ; $5da7: $16 $f7
	and  c                                           ; $5da9: $a1
	add  hl, de                                      ; $5daa: $19
	pop  af                                          ; $5dab: $f1
	ld   l, a                                        ; $5dac: $6f
	xor  a                                           ; $5dad: $af
	rra                                              ; $5dae: $1f
	push af                                          ; $5daf: $f5
	sbc  b                                           ; $5db0: $98
	rst  JumpTable                                         ; $5db1: $df
	add  hl, de                                      ; $5db2: $19
	rst  $30                                         ; $5db3: $f7
	sub  c                                           ; $5db4: $91
	inc  e                                           ; $5db5: $1c
	pop  af                                          ; $5db6: $f1
	xor  [hl]                                        ; $5db7: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5db8: $cf
	rra                                              ; $5db9: $1f
	push af                                          ; $5dba: $f5
	xor  b                                           ; $5dbb: $a8
	rst  $38                                         ; $5dbc: $ff
	dec  e                                           ; $5dbd: $1d
	or   $71                                         ; $5dbe: $f6 $71
	rra                                              ; $5dc0: $1f
	ld   hl, $f4f7                                   ; $5dc1: $21 $f7 $f4
	rra                                              ; $5dc4: $1f
	rst  ToBoot                                         ; $5dc5: $c7
	sbc  b                                           ; $5dc6: $98
	rst  $30                                         ; $5dc7: $f7
	rra                                              ; $5dc8: $1f
	sbc  c                                           ; $5dc9: $99
	ld   de, $119f                                   ; $5dca: $11 $9f $11
	ld   sp, hl                                      ; $5dcd: $f9
	pop  af                                          ; $5dce: $f1
	rst  $28                                         ; $5dcf: $ef
	ld   l, c                                        ; $5dd0: $69
	ld   l, l                                        ; $5dd1: $6d
	pop  af                                          ; $5dd2: $f1
	ld   c, a                                        ; $5dd3: $4f
	ld   e, e                                        ; $5dd4: $5b
	ld   de, $1cfb                                   ; $5dd5: $11 $fb $1c
	cp   a                                           ; $5dd8: $bf
	pop  de                                          ; $5dd9: $d1
	rst  $38                                         ; $5dda: $ff
	ld   l, b                                        ; $5ddb: $68
	ld   l, a                                        ; $5ddc: $6f
	pop  de                                          ; $5ddd: $d1
	db   $fd                                         ; $5dde: $fd
	ld   h, h                                        ; $5ddf: $64
	ld   a, [de]                                     ; $5de0: $1a
	pop  af                                          ; $5de1: $f1
	rra                                              ; $5de2: $1f
	xor  a                                           ; $5de3: $af
	dec  de                                          ; $5de4: $1b
	push af                                          ; $5de5: $f5
	and  l                                           ; $5de6: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5de7: $cf
	dec  d                                           ; $5de8: $15
	push af                                          ; $5de9: $f5
	sub  c                                           ; $5dea: $91
	rra                                              ; $5deb: $1f
	ld   de, $f4fa                                   ; $5dec: $11 $fa $f4
	rra                                              ; $5def: $1f
	or   [hl]                                        ; $5df0: $b6
	add  a                                           ; $5df1: $87
	or   $1f                                         ; $5df2: $f6 $1f
	sbc  b                                           ; $5df4: $98
	ld   de, $18fd                                   ; $5df5: $11 $fd $18
	sbc  $e1                                         ; $5df8: $de $e1
	rst  $38                                         ; $5dfa: $ff
	ld   a, [hl-]                                    ; $5dfb: $3a
	ld   e, a                                        ; $5dfc: $5f
	pop  hl                                          ; $5dfd: $e1
	xor  $33                                         ; $5dfe: $ee $33
	rra                                              ; $5e00: $1f
	pop  af                                          ; $5e01: $f1
	ld   a, h                                        ; $5e02: $7c
	rst  $38                                         ; $5e03: $ff
	rra                                              ; $5e04: $1f
	di                                               ; $5e05: $f3
	sub  [hl]                                        ; $5e06: $96
	rst  $38                                         ; $5e07: $ff
	inc  e                                           ; $5e08: $1c
	di                                               ; $5e09: $f3
	ld   b, c                                        ; $5e0a: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e0b: $cf
	inc  d                                           ; $5e0c: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e0d: $cf
	pop  af                                          ; $5e0e: $f1
	rst  $38                                         ; $5e0f: $ff
	ld   d, [hl]                                     ; $5e10: $56

Call_0ea_5e11:
	ld   l, [hl]                                     ; $5e11: $6e
	pop  af                                          ; $5e12: $f1
	xor  a                                           ; $5e13: $af
	ld   b, l                                        ; $5e14: $45
	add  hl, de                                      ; $5e15: $19
	pop  af                                          ; $5e16: $f1
	dec  l                                           ; $5e17: $2d
	rst  $38                                         ; $5e18: $ff
	inc  e                                           ; $5e19: $1c
	rst  $30                                         ; $5e1a: $f7
	ld   d, a                                        ; $5e1b: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e1c: $cf
	ld   d, $f3                                      ; $5e1d: $16 $f3
	ld   d, c                                        ; $5e1f: $51
	ld   e, a                                        ; $5e20: $5f
	ld   de, $f1df                                   ; $5e21: $11 $df $f1
	cp   a                                           ; $5e24: $bf

jr_0ea_5e25:
	sub  e                                           ; $5e25: $93
	sbc  l                                           ; $5e26: $9d
	pop  af                                          ; $5e27: $f1
	ld   e, a                                        ; $5e28: $5f
	ld   [hl-], a                                    ; $5e29: $32
	ld   a, [de]                                     ; $5e2a: $1a
	pop  af                                          ; $5e2b: $f1
	ld   e, e                                        ; $5e2c: $5b
	db   $fd                                         ; $5e2d: $fd
	rra                                              ; $5e2e: $1f
	ei                                               ; $5e2f: $fb
	ld   a, [de]                                     ; $5e30: $1a
	rst  JumpTable                                         ; $5e31: $df
	jr   jr_0ea_5e25                                 ; $5e32: $18 $f1

	ld   de, $18fc                                   ; $5e34: $11 $fc $18
	cp   a                                           ; $5e37: $bf
	ld   [hl-], a                                    ; $5e38: $32
	rst  $38                                         ; $5e39: $ff
	ld   [hl], c                                     ; $5e3a: $71
	rst  $28                                         ; $5e3b: $ef
	pop  de                                          ; $5e3c: $d1
	rst  $38                                         ; $5e3d: $ff
	ld   de, $111f                                   ; $5e3e: $11 $1f $11
	adc  a                                           ; $5e41: $8f
	pop  af                                          ; $5e42: $f1
	sbc  a                                           ; $5e43: $9f
	ldh  a, [c]                                      ; $5e44: $f2
	rra                                              ; $5e45: $1f
	or   $1f                                         ; $5e46: $f6 $1f
	and  c                                           ; $5e48: $a1
	ld   a, [de]                                     ; $5e49: $1a
	pop  af                                          ; $5e4a: $f1
	ld   b, a                                        ; $5e4b: $47
	ei                                               ; $5e4c: $fb
	rra                                              ; $5e4d: $1f
	rst  $38                                         ; $5e4e: $ff
	add  hl, de                                      ; $5e4f: $19
	cp   $16                                         ; $5e50: $fe $16
	pop  af                                          ; $5e52: $f1
	ld   de, $16f3                                   ; $5e53: $11 $f3 $16
	rst  $28                                         ; $5e56: $ef
	ld   a, [de]                                     ; $5e57: $1a
	rst  $38                                         ; $5e58: $ff
	ld   h, c                                        ; $5e59: $61
	rst  $38                                         ; $5e5a: $ff
	add  c                                           ; $5e5b: $81
	ei                                               ; $5e5c: $fb
	ld   de, $15fd                                   ; $5e5d: $11 $fd $15
	ld   l, a                                        ; $5e60: $6f
	ld   [hl+], a                                    ; $5e61: $22
	rst  $38                                         ; $5e62: $ff
	pop  af                                          ; $5e63: $f1
	rst  JumpTable                                         ; $5e64: $df
	and  c                                           ; $5e65: $a1
	ld   a, a                                        ; $5e66: $7f
	ld   de, $169f                                   ; $5e67: $11 $9f $16
	cpl                                              ; $5e6a: $2f
	pop  bc                                          ; $5e6b: $c1
	cp   $f1                                         ; $5e6c: $fe $f1
	adc  a                                           ; $5e6e: $8f
	or   e                                           ; $5e6f: $b3
	ld   c, a                                        ; $5e70: $4f
	ld   de, $188b                                   ; $5e71: $11 $8b $18
	cpl                                              ; $5e74: $2f
	pop  bc                                          ; $5e75: $c1
	db   $fd                                         ; $5e76: $fd
	ldh  a, [c]                                      ; $5e77: $f2
	sbc  a                                           ; $5e78: $9f
	sub  [hl]                                        ; $5e79: $96
	dec  a                                           ; $5e7a: $3d
	ld   de, $1ae4                                   ; $5e7b: $11 $e4 $1a
	ccf                                              ; $5e7e: $3f
	ld   [hl], h                                     ; $5e7f: $74
	db   $fc                                         ; $5e80: $fc
	di                                               ; $5e81: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e82: $cf
	add  l                                           ; $5e83: $85
	ld   e, b                                        ; $5e84: $58
	ld   de, $57f1                                   ; $5e85: $11 $f1 $57
	adc  a                                           ; $5e88: $8f
	rra                                              ; $5e89: $1f
	cp   $d4                                         ; $5e8a: $fe $d4
	ei                                               ; $5e8c: $fb
	add  h                                           ; $5e8d: $84
	ld   [hl], c                                     ; $5e8e: $71
	ld   a, [de]                                     ; $5e8f: $1a
	add  c                                           ; $5e90: $81
	jp   $3ffb                                       ; $5e91: $c3 $fb $3f


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e94: $cf
	ld   e, l                                        ; $5e95: $5d
	rst  $30                                         ; $5e96: $f7
	ld   [hl], h                                     ; $5e97: $74
	ld   d, c                                        ; $5e98: $51
	rra                                              ; $5e99: $1f
	rla                                              ; $5e9a: $17
	ld   a, h                                        ; $5e9b: $7c
	pop  af                                          ; $5e9c: $f1
	rst  $38                                         ; $5e9d: $ff
	ei                                               ; $5e9e: $fb
	ld   l, a                                        ; $5e9f: $6f
	sub  a                                           ; $5ea0: $97
	ld   b, h                                        ; $5ea1: $44
	ld   de, $68e1                                   ; $5ea2: $11 $e1 $68
	sbc  a                                           ; $5ea5: $9f
	rra                                              ; $5ea6: $1f
	cp   $f5                                         ; $5ea7: $fe $f5
	ld   hl, sp-$7b                                  ; $5ea9: $f8 $85
	ld   de, $161f                                   ; $5eab: $11 $1f $16
	adc  e                                           ; $5eae: $8b
	pop  af                                          ; $5eaf: $f1
	rst  $38                                         ; $5eb0: $ff
	db   $ed                                         ; $5eb1: $ed
	ld   a, a                                        ; $5eb2: $7f
	ld   [hl], a                                     ; $5eb3: $77
	ld   d, c                                        ; $5eb4: $51
	ld   [de], a                                     ; $5eb5: $12
	and  c                                           ; $5eb6: $a1
	call nc, $2fff                                   ; $5eb7: $d4 $ff $2f
	rst  JumpTable                                         ; $5eba: $df
	adc  h                                           ; $5ebb: $8c
	di                                               ; $5ebc: $f3
	sub  c                                           ; $5ebd: $91
	ld   de, $1ed1                                   ; $5ebe: $11 $d1 $1e
	ccf                                              ; $5ec1: $3f
	cpl                                              ; $5ec2: $2f
	db   $fd                                         ; $5ec3: $fd
	push af                                          ; $5ec4: $f5
	ld   a, [$1145]                                  ; $5ec5: $fa $45 $11
	ld   b, l                                        ; $5ec8: $45
	ld   e, $3f                                      ; $5ec9: $1e $3f
	and  a                                           ; $5ecb: $a7
	ei                                               ; $5ecc: $fb
	or   $ff                                         ; $5ecd: $f6 $ff
	rla                                              ; $5ecf: $17
	ld   de, $1b17                                   ; $5ed0: $11 $17 $1b
	ld   a, h                                        ; $5ed3: $7c
	db   $e3                                         ; $5ed4: $e3
	db   $fd                                         ; $5ed5: $fd
	ld   a, [$16ef]                                  ; $5ed6: $fa $ef $16
	ld   de, $1b43                                   ; $5ed9: $11 $43 $1b
	adc  h                                           ; $5edc: $8c
	or   a                                           ; $5edd: $b7
	db   $fd                                         ; $5ede: $fd
	ld   sp, hl                                      ; $5edf: $f9
	rst  $38                                         ; $5ee0: $ff
	dec  d                                           ; $5ee1: $15
	ld   de, $1c61                                   ; $5ee2: $11 $61 $1c
	ld   l, [hl]                                     ; $5ee5: $6e
	ld   a, a                                        ; $5ee6: $7f
	ei                                               ; $5ee7: $fb
	ld   a, [$14fc]                                  ; $5ee8: $fa $fc $14
	ld   de, $2a61                                   ; $5eeb: $11 $61 $2a
	adc  l                                           ; $5eee: $8d
	ld   e, a                                        ; $5eef: $5f
	db   $fd                                         ; $5ef0: $fd
	db   $fd                                         ; $5ef1: $fd
	db   $f4                                         ; $5ef2: $f4
	ld   de, $1116                                   ; $5ef3: $11 $16 $11
	sub  a                                           ; $5ef6: $97
	ret  z                                           ; $5ef7: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ef8: $cf
	rst  $38                                         ; $5ef9: $ff
	rst  $38                                         ; $5efa: $ff
	pop  hl                                          ; $5efb: $e1
	ld   sp, $1215                                   ; $5efc: $31 $15 $12
	adc  b                                           ; $5eff: $88
	sub  $ff                                         ; $5f00: $d6 $ff
	rst  $38                                         ; $5f02: $ff
	rst  $28                                         ; $5f03: $ef
	ld   d, c                                        ; $5f04: $51
	ld   de, $1751                                   ; $5f05: $11 $51 $17
	ld   e, d                                        ; $5f08: $5a
	adc  [hl]                                        ; $5f09: $8e
	rst  $38                                         ; $5f0a: $ff
	rst  $38                                         ; $5f0b: $ff
	cp   $13                                         ; $5f0c: $fe $13
	ld   de, $2631                                   ; $5f0e: $11 $31 $26

Call_0ea_5f11:
	ld   l, d                                        ; $5f11: $6a
	ld   a, a                                        ; $5f12: $7f
	rst  $38                                         ; $5f13: $ff
	rst  $38                                         ; $5f14: $ff
	push af                                          ; $5f15: $f5
	ld   sp, $1115                                   ; $5f16: $31 $15 $11
	ld   [hl], h                                     ; $5f19: $74
	sub  [hl]                                        ; $5f1a: $96
	rst  $38                                         ; $5f1b: $ff
	rst  $28                                         ; $5f1c: $ef
	rst  $38                                         ; $5f1d: $ff
	jp   nc, $1141                                   ; $5f1e: $d2 $41 $11

	inc  de                                          ; $5f21: $13
	ld   b, [hl]                                     ; $5f22: $46
	ld   a, d                                        ; $5f23: $7a
	rst  $38                                         ; $5f24: $ff
	rst  $38                                         ; $5f25: $ff
	rst  $38                                         ; $5f26: $ff
	ld   h, h                                        ; $5f27: $64
	ld   de, $1541                                   ; $5f28: $11 $41 $15
	ld   c, b                                        ; $5f2b: $48
	ld   l, a                                        ; $5f2c: $6f
	rst  $38                                         ; $5f2d: $ff
	rst  $38                                         ; $5f2e: $ff
	ld   a, [$1243]                                  ; $5f2f: $fa $43 $12
	ld   de, $7743                                   ; $5f32: $11 $43 $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f35: $cf
	rst  $38                                         ; $5f36: $ff
	rst  $38                                         ; $5f37: $ff
	push af                                          ; $5f38: $f5
	ld   d, c                                        ; $5f39: $51
	inc  d                                           ; $5f3a: $14
	ld   de, $7845                                   ; $5f3b: $11 $45 $78
	rst  $38                                         ; $5f3e: $ff
	rst  $38                                         ; $5f3f: $ff
	rst  $38                                         ; $5f40: $ff
	sub  l                                           ; $5f41: $95
	ld   hl, $1341                                   ; $5f42: $21 $41 $13
	ld   b, a                                        ; $5f45: $47
	ld   l, a                                        ; $5f46: $6f
	rst  $38                                         ; $5f47: $ff
	rst  $38                                         ; $5f48: $ff
	ei                                               ; $5f49: $fb
	ld   h, h                                        ; $5f4a: $64
	inc  de                                          ; $5f4b: $13
	ld   de, $6623                                   ; $5f4c: $11 $23 $66
	cp   a                                           ; $5f4f: $bf
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	rst  $10                                         ; $5f52: $d7
	ld   d, c                                        ; $5f53: $51
	inc  de                                          ; $5f54: $13
	ld   de, $5925                                   ; $5f55: $11 $25 $59
	rst  $38                                         ; $5f58: $ff
	rst  $38                                         ; $5f59: $ff
	cp   $86                                         ; $5f5a: $fe $86
	ld   hl, $1241                                   ; $5f5c: $21 $41 $12
	ld   b, a                                        ; $5f5f: $47
	ld   a, l                                        ; $5f60: $7d
	rst  $38                                         ; $5f61: $ff
	rst  $38                                         ; $5f62: $ff
	ld   [$1473], a                                  ; $5f63: $ea $73 $14
	ld   hl, $6623                                   ; $5f66: $21 $23 $66
	xor  a                                           ; $5f69: $af
	rst  $38                                         ; $5f6a: $ff
	cp   $a7                                         ; $5f6b: $fe $a7
	ld   d, c                                        ; $5f6d: $51
	ld   b, h                                        ; $5f6e: $44
	ld   [de], a                                     ; $5f6f: $12
	dec  [hl]                                        ; $5f70: $35
	ld   l, d                                        ; $5f71: $6a
	sbc  $ff                                         ; $5f72: $de $ff
	db   $eb                                         ; $5f74: $eb
	halt                                             ; $5f75: $76
	inc  h                                           ; $5f76: $24
	ld   d, d                                        ; $5f77: $52
	inc  sp                                          ; $5f78: $33
	ld   d, [hl]                                     ; $5f79: $56
	adc  h                                           ; $5f7a: $8c
	rst  $28                                         ; $5f7b: $ef
	db   $ed                                         ; $5f7c: $ed
	or   a                                           ; $5f7d: $b7
	ld   [hl], e                                     ; $5f7e: $73
	ld   b, l                                        ; $5f7f: $45
	ld   b, d                                        ; $5f80: $42
	dec  [hl]                                        ; $5f81: $35
	ld   l, b                                        ; $5f82: $68
	cp   l                                           ; $5f83: $bd
	xor  $db                                         ; $5f84: $ee $db
	ld   [hl], a                                     ; $5f86: $77
	ld   d, h                                        ; $5f87: $54
	ld   h, l                                        ; $5f88: $65
	inc  sp                                          ; $5f89: $33
	ld   d, a                                        ; $5f8a: $57
	ld   a, e                                        ; $5f8b: $7b
	sbc  $eb                                         ; $5f8c: $de $eb
	xor  b                                           ; $5f8e: $a8
	halt                                             ; $5f8f: $76
	ld   d, a                                        ; $5f90: $57
	ld   d, e                                        ; $5f91: $53
	ld   b, l                                        ; $5f92: $45
	ld   [hl], a                                     ; $5f93: $77
	sbc  l                                           ; $5f94: $9d
	call $86aa                                       ; $5f95: $cd $aa $86
	halt                                             ; $5f98: $76
	ld   [hl], l                                     ; $5f99: $75
	ld   b, [hl]                                     ; $5f9a: $46
	ld   d, a                                        ; $5f9b: $57
	adc  d                                           ; $5f9c: $8a
	call z, $98b9                                    ; $5f9d: $cc $b9 $98
	ld   [hl], a                                     ; $5fa0: $77
	ld   h, a                                        ; $5fa1: $67
	ld   h, l                                        ; $5fa2: $65
	halt                                             ; $5fa3: $76
	ld   a, b                                        ; $5fa4: $78
	xor  e                                           ; $5fa5: $ab
	xor  e                                           ; $5fa6: $ab
	sbc  b                                           ; $5fa7: $98
	ld   a, b                                        ; $5fa8: $78
	ld   [hl], l                                     ; $5fa9: $75
	sub  [hl]                                        ; $5faa: $96
	ld   d, a                                        ; $5fab: $57
	ld   l, b                                        ; $5fac: $68
	sbc  d                                           ; $5fad: $9a
	ret                                              ; $5fae: $c9


	sbc  c                                           ; $5faf: $99
	ld   [hl], a                                     ; $5fb0: $77
	ld   a, b                                        ; $5fb1: $78
	ld   h, a                                        ; $5fb2: $67
	halt                                             ; $5fb3: $76
	halt                                             ; $5fb4: $76
	sbc  c                                           ; $5fb5: $99
	xor  e                                           ; $5fb6: $ab
	xor  d                                           ; $5fb7: $aa
	ld   a, b                                        ; $5fb8: $78
	ld   [hl], a                                     ; $5fb9: $77
	ld   [hl], a                                     ; $5fba: $77
	add  a                                           ; $5fbb: $87
	ld   [hl], a                                     ; $5fbc: $77
	ld   a, b                                        ; $5fbd: $78
	adc  d                                           ; $5fbe: $8a
	sbc  d                                           ; $5fbf: $9a
	adc  b                                           ; $5fc0: $88
	add  a                                           ; $5fc1: $87
	add  a                                           ; $5fc2: $87
	ld   a, b                                        ; $5fc3: $78
	ld   [hl], a                                     ; $5fc4: $77
	ld   [hl], a                                     ; $5fc5: $77
	adc  b                                           ; $5fc6: $88
	sbc  b                                           ; $5fc7: $98
	sbc  b                                           ; $5fc8: $98
	adc  b                                           ; $5fc9: $88
	adc  b                                           ; $5fca: $88
	ld   a, b                                        ; $5fcb: $78
	ld   [hl], a                                     ; $5fcc: $77
	add  a                                           ; $5fcd: $87
	ld   a, b                                        ; $5fce: $78
	sbc  c                                           ; $5fcf: $99
	sbc  c                                           ; $5fd0: $99
	sbc  b                                           ; $5fd1: $98
	adc  b                                           ; $5fd2: $88
	adc  b                                           ; $5fd3: $88
	adc  b                                           ; $5fd4: $88
	ld   [hl], a                                     ; $5fd5: $77
	ld   [hl], a                                     ; $5fd6: $77
	ld   [hl], a                                     ; $5fd7: $77
	sbc  b                                           ; $5fd8: $98
	adc  c                                           ; $5fd9: $89
	adc  b                                           ; $5fda: $88
	adc  c                                           ; $5fdb: $89
	sub  a                                           ; $5fdc: $97
	ld   a, c                                        ; $5fdd: $79
	add  a                                           ; $5fde: $87
	add  a                                           ; $5fdf: $87
	ld   a, b                                        ; $5fe0: $78
	adc  b                                           ; $5fe1: $88
	adc  b                                           ; $5fe2: $88
	add  a                                           ; $5fe3: $87
	sbc  b                                           ; $5fe4: $98
	adc  b                                           ; $5fe5: $88
	sbc  c                                           ; $5fe6: $99
	adc  b                                           ; $5fe7: $88
	add  a                                           ; $5fe8: $87
	ld   a, b                                        ; $5fe9: $78
	add  a                                           ; $5fea: $87
	sbc  b                                           ; $5feb: $98
	ld   a, b                                        ; $5fec: $78
	sub  a                                           ; $5fed: $97
	sbc  c                                           ; $5fee: $99
	ld   a, c                                        ; $5fef: $79
	sbc  b                                           ; $5ff0: $98
	adc  b                                           ; $5ff1: $88
	adc  b                                           ; $5ff2: $88
	ld   [hl], a                                     ; $5ff3: $77
	add  a                                           ; $5ff4: $87
	ld   a, b                                        ; $5ff5: $78
	add  a                                           ; $5ff6: $87
	adc  b                                           ; $5ff7: $88
	sbc  b                                           ; $5ff8: $98
	adc  b                                           ; $5ff9: $88
	add  a                                           ; $5ffa: $87
	sub  a                                           ; $5ffb: $97
	ld   a, b                                        ; $5ffc: $78
	ld   [hl], a                                     ; $5ffd: $77
	ld   [hl], a                                     ; $5ffe: $77
	ld   a, b                                        ; $5fff: $78
	sbc  b                                           ; $6000: $98
	sbc  c                                           ; $6001: $99
	sbc  c                                           ; $6002: $99
	adc  c                                           ; $6003: $89
	sub  a                                           ; $6004: $97
	add  a                                           ; $6005: $87
	ld   [hl], a                                     ; $6006: $77
	ld   a, b                                        ; $6007: $78
	ld   [hl], a                                     ; $6008: $77
	adc  b                                           ; $6009: $88
	sbc  c                                           ; $600a: $99
	sbc  c                                           ; $600b: $99
	adc  c                                           ; $600c: $89
	adc  b                                           ; $600d: $88
	add  a                                           ; $600e: $87
	ld   [hl], a                                     ; $600f: $77
	ld   [hl], a                                     ; $6010: $77
	ld   a, b                                        ; $6011: $78
	adc  b                                           ; $6012: $88
	sbc  c                                           ; $6013: $99
	sbc  b                                           ; $6014: $98
	sbc  b                                           ; $6015: $98
	sbc  c                                           ; $6016: $99
	adc  b                                           ; $6017: $88
	ld   [hl], a                                     ; $6018: $77
	ld   [hl], a                                     ; $6019: $77
	ld   [hl], a                                     ; $601a: $77
	add  a                                           ; $601b: $87
	ld   a, b                                        ; $601c: $78
	adc  c                                           ; $601d: $89
	sbc  c                                           ; $601e: $99
	sbc  c                                           ; $601f: $99
	adc  c                                           ; $6020: $89
	add  a                                           ; $6021: $87
	add  a                                           ; $6022: $87
	ld   [hl], a                                     ; $6023: $77
	adc  b                                           ; $6024: $88
	adc  c                                           ; $6025: $89
	adc  b                                           ; $6026: $88
	adc  c                                           ; $6027: $89
	sbc  b                                           ; $6028: $98
	sbc  c                                           ; $6029: $99
	ld   a, c                                        ; $602a: $79
	add  a                                           ; $602b: $87
	adc  b                                           ; $602c: $88
	add  a                                           ; $602d: $87
	adc  b                                           ; $602e: $88
	sub  a                                           ; $602f: $97
	adc  b                                           ; $6030: $88
	adc  b                                           ; $6031: $88
	add  a                                           ; $6032: $87
	adc  b                                           ; $6033: $88
	adc  b                                           ; $6034: $88
	adc  c                                           ; $6035: $89
	ld   a, c                                        ; $6036: $79
	adc  b                                           ; $6037: $88
	adc  b                                           ; $6038: $88
	add  a                                           ; $6039: $87
	adc  b                                           ; $603a: $88
	adc  b                                           ; $603b: $88
	ld   a, b                                        ; $603c: $78
	ld   [hl], a                                     ; $603d: $77
	adc  b                                           ; $603e: $88
	ld   a, b                                        ; $603f: $78
	sbc  b                                           ; $6040: $98
	adc  b                                           ; $6041: $88
	sbc  b                                           ; $6042: $98
	adc  b                                           ; $6043: $88
	adc  b                                           ; $6044: $88
	adc  b                                           ; $6045: $88
	ld   a, b                                        ; $6046: $78
	adc  b                                           ; $6047: $88
	adc  b                                           ; $6048: $88
	sbc  b                                           ; $6049: $98
	sbc  c                                           ; $604a: $99
	ld   a, b                                        ; $604b: $78
	adc  b                                           ; $604c: $88
	add  a                                           ; $604d: $87
	add  a                                           ; $604e: $87
	adc  b                                           ; $604f: $88
	adc  b                                           ; $6050: $88
	adc  c                                           ; $6051: $89
	adc  b                                           ; $6052: $88
	sbc  b                                           ; $6053: $98
	sub  a                                           ; $6054: $97
	add  a                                           ; $6055: $87
	adc  b                                           ; $6056: $88
	ld   a, b                                        ; $6057: $78
	ld   a, b                                        ; $6058: $78
	adc  b                                           ; $6059: $88
	adc  b                                           ; $605a: $88
	adc  b                                           ; $605b: $88
	sbc  b                                           ; $605c: $98
	adc  b                                           ; $605d: $88
	adc  b                                           ; $605e: $88
	adc  b                                           ; $605f: $88
	adc  b                                           ; $6060: $88
	adc  b                                           ; $6061: $88
	adc  c                                           ; $6062: $89
	adc  b                                           ; $6063: $88
	adc  b                                           ; $6064: $88
	adc  b                                           ; $6065: $88
	adc  b                                           ; $6066: $88
	adc  b                                           ; $6067: $88
	ld   [hl], a                                     ; $6068: $77
	adc  b                                           ; $6069: $88
	ld   a, b                                        ; $606a: $78
	adc  c                                           ; $606b: $89
	adc  c                                           ; $606c: $89
	adc  b                                           ; $606d: $88
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	adc  b                                           ; $6072: $88
	sbc  b                                           ; $6073: $98
	adc  b                                           ; $6074: $88
	adc  c                                           ; $6075: $89
	ld   a, c                                        ; $6076: $79
	add  a                                           ; $6077: $87
	sbc  b                                           ; $6078: $98
	adc  b                                           ; $6079: $88
	add  a                                           ; $607a: $87
	adc  b                                           ; $607b: $88
	adc  b                                           ; $607c: $88
	adc  b                                           ; $607d: $88
	adc  c                                           ; $607e: $89
	adc  b                                           ; $607f: $88
	sbc  b                                           ; $6080: $98
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	adc  b                                           ; $6083: $88
	add  a                                           ; $6084: $87
	adc  c                                           ; $6085: $89
	ld   a, b                                        ; $6086: $78
	adc  b                                           ; $6087: $88
	adc  c                                           ; $6088: $89
	adc  b                                           ; $6089: $88
	adc  b                                           ; $608a: $88
	sbc  b                                           ; $608b: $98
	adc  b                                           ; $608c: $88
	adc  c                                           ; $608d: $89
	adc  b                                           ; $608e: $88
	adc  b                                           ; $608f: $88
	adc  b                                           ; $6090: $88
	adc  b                                           ; $6091: $88
	add  a                                           ; $6092: $87
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	adc  c                                           ; $6095: $89
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	adc  b                                           ; $6099: $88
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	ld   a, c                                        ; $609c: $79
	adc  b                                           ; $609d: $88
	adc  b                                           ; $609e: $88
	sbc  b                                           ; $609f: $98
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	ld   a, b                                        ; $60a4: $78
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	sbc  b                                           ; $60a8: $98
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  b                                           ; $60ab: $88
	ld   a, b                                        ; $60ac: $78
	ld   a, b                                        ; $60ad: $78
	adc  b                                           ; $60ae: $88
	sbc  b                                           ; $60af: $98
	adc  b                                           ; $60b0: $88
	sbc  b                                           ; $60b1: $98
	adc  c                                           ; $60b2: $89
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  c                                           ; $60b8: $89
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	adc  b                                           ; $60bd: $88
	adc  c                                           ; $60be: $89
	adc  b                                           ; $60bf: $88
	adc  c                                           ; $60c0: $89
	adc  b                                           ; $60c1: $88
	sbc  b                                           ; $60c2: $98
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	ld   a, b                                        ; $60c6: $78
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	sbc  b                                           ; $60ca: $98
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	ld   a, b                                        ; $60cd: $78
	adc  b                                           ; $60ce: $88
	ld   a, b                                        ; $60cf: $78
	adc  b                                           ; $60d0: $88
	sbc  b                                           ; $60d1: $98
	add  a                                           ; $60d2: $87
	sbc  c                                           ; $60d3: $99
	ld   a, c                                        ; $60d4: $79
	add  a                                           ; $60d5: $87
	adc  b                                           ; $60d6: $88
	sub  a                                           ; $60d7: $97
	sbc  b                                           ; $60d8: $98
	ld   a, b                                        ; $60d9: $78
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	add  a                                           ; $60dc: $87
	adc  c                                           ; $60dd: $89
	adc  c                                           ; $60de: $89
	ld   a, b                                        ; $60df: $78
	adc  b                                           ; $60e0: $88
	sub  a                                           ; $60e1: $97
	sbc  c                                           ; $60e2: $99
	ld   a, b                                        ; $60e3: $78
	add  a                                           ; $60e4: $87
	add  a                                           ; $60e5: $87
	sbc  b                                           ; $60e6: $98
	adc  b                                           ; $60e7: $88
	ld   a, c                                        ; $60e8: $79
	ld   a, b                                        ; $60e9: $78
	sub  a                                           ; $60ea: $97
	adc  c                                           ; $60eb: $89
	ld   a, c                                        ; $60ec: $79
	sub  a                                           ; $60ed: $97
	adc  b                                           ; $60ee: $88
	add  a                                           ; $60ef: $87
	sbc  c                                           ; $60f0: $99
	ld   a, b                                        ; $60f1: $78
	ld   a, b                                        ; $60f2: $78
	sbc  c                                           ; $60f3: $99
	ld   a, b                                        ; $60f4: $78
	sbc  b                                           ; $60f5: $98
	adc  b                                           ; $60f6: $88
	sub  a                                           ; $60f7: $97
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	add  a                                           ; $60ff: $87
	sbc  b                                           ; $6100: $98
	ld   a, b                                        ; $6101: $78
	ld   a, c                                        ; $6102: $79
	adc  b                                           ; $6103: $88
	sbc  b                                           ; $6104: $98
	add  a                                           ; $6105: $87
	add  a                                           ; $6106: $87
	adc  c                                           ; $6107: $89
	adc  b                                           ; $6108: $88
	adc  b                                           ; $6109: $88
	adc  c                                           ; $610a: $89
	ld   a, b                                        ; $610b: $78
	adc  b                                           ; $610c: $88
	sub  a                                           ; $610d: $97
	adc  c                                           ; $610e: $89
	ld   a, b                                        ; $610f: $78
	sbc  c                                           ; $6110: $99
	add  a                                           ; $6111: $87
	sbc  b                                           ; $6112: $98
	ld   a, b                                        ; $6113: $78
	ld   a, b                                        ; $6114: $78
	add  a                                           ; $6115: $87
	adc  c                                           ; $6116: $89
	adc  b                                           ; $6117: $88
	adc  b                                           ; $6118: $88
	adc  b                                           ; $6119: $88
	add  a                                           ; $611a: $87
	adc  b                                           ; $611b: $88
	add  a                                           ; $611c: $87
	adc  c                                           ; $611d: $89
	ld   a, b                                        ; $611e: $78
	add  a                                           ; $611f: $87
	sbc  b                                           ; $6120: $98
	ld   a, b                                        ; $6121: $78
	adc  b                                           ; $6122: $88
	ld   a, c                                        ; $6123: $79
	add  a                                           ; $6124: $87
	sbc  b                                           ; $6125: $98
	adc  b                                           ; $6126: $88
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	ld   a, b                                        ; $6129: $78
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	sbc  b                                           ; $612c: $98
	adc  b                                           ; $612d: $88
	add  a                                           ; $612e: $87
	sbc  b                                           ; $612f: $98
	sbc  b                                           ; $6130: $98
	ld   a, b                                        ; $6131: $78
	ld   a, c                                        ; $6132: $79
	adc  b                                           ; $6133: $88
	adc  b                                           ; $6134: $88
	adc  b                                           ; $6135: $88
	adc  b                                           ; $6136: $88
	adc  b                                           ; $6137: $88
	adc  b                                           ; $6138: $88
	adc  b                                           ; $6139: $88
	add  a                                           ; $613a: $87
	adc  b                                           ; $613b: $88
	adc  b                                           ; $613c: $88
	adc  b                                           ; $613d: $88
	adc  b                                           ; $613e: $88
	adc  c                                           ; $613f: $89
	adc  b                                           ; $6140: $88
	sbc  b                                           ; $6141: $98
	adc  b                                           ; $6142: $88
	adc  b                                           ; $6143: $88
	add  a                                           ; $6144: $87
	adc  b                                           ; $6145: $88
	adc  b                                           ; $6146: $88
	adc  b                                           ; $6147: $88
	adc  b                                           ; $6148: $88
	ld   a, c                                        ; $6149: $79
	adc  b                                           ; $614a: $88
	adc  b                                           ; $614b: $88
	add  a                                           ; $614c: $87
	adc  b                                           ; $614d: $88
	adc  b                                           ; $614e: $88
	adc  b                                           ; $614f: $88
	ld   a, c                                        ; $6150: $79
	adc  b                                           ; $6151: $88
	sub  a                                           ; $6152: $97
	sbc  b                                           ; $6153: $98
	adc  b                                           ; $6154: $88
	adc  b                                           ; $6155: $88
	adc  b                                           ; $6156: $88
	adc  b                                           ; $6157: $88
	adc  c                                           ; $6158: $89
	adc  c                                           ; $6159: $89
	add  a                                           ; $615a: $87
	sub  a                                           ; $615b: $97
	adc  c                                           ; $615c: $89
	sub  a                                           ; $615d: $97
	adc  c                                           ; $615e: $89
	adc  b                                           ; $615f: $88
	adc  b                                           ; $6160: $88
	ld   a, b                                        ; $6161: $78
	add  a                                           ; $6162: $87
	sbc  b                                           ; $6163: $98
	ld   a, b                                        ; $6164: $78
	add  a                                           ; $6165: $87
	sbc  b                                           ; $6166: $98
	ld   a, b                                        ; $6167: $78
	sub  a                                           ; $6168: $97
	adc  c                                           ; $6169: $89
	adc  b                                           ; $616a: $88
	adc  b                                           ; $616b: $88
	ld   a, b                                        ; $616c: $78
	adc  c                                           ; $616d: $89
	ld   a, b                                        ; $616e: $78
	adc  b                                           ; $616f: $88
	sbc  b                                           ; $6170: $98
	adc  b                                           ; $6171: $88
	add  a                                           ; $6172: $87
	adc  b                                           ; $6173: $88
	adc  c                                           ; $6174: $89
	ld   a, c                                        ; $6175: $79
	ld   a, b                                        ; $6176: $78
	sub  a                                           ; $6177: $97
	sub  a                                           ; $6178: $97
	sbc  b                                           ; $6179: $98
	adc  c                                           ; $617a: $89
	ld   a, b                                        ; $617b: $78
	add  a                                           ; $617c: $87
	sub  a                                           ; $617d: $97
	sbc  b                                           ; $617e: $98
	adc  b                                           ; $617f: $88
	ld   a, c                                        ; $6180: $79
	ld   a, c                                        ; $6181: $79
	ld   a, b                                        ; $6182: $78
	adc  b                                           ; $6183: $88
	add  [hl]                                        ; $6184: $86
	sub  a                                           ; $6185: $97
	sbc  b                                           ; $6186: $98
	adc  c                                           ; $6187: $89
	ld   a, b                                        ; $6188: $78
	adc  b                                           ; $6189: $88
	adc  b                                           ; $618a: $88
	add  a                                           ; $618b: $87
	adc  b                                           ; $618c: $88
	adc  b                                           ; $618d: $88
	adc  b                                           ; $618e: $88
	sbc  c                                           ; $618f: $99
	ld   a, b                                        ; $6190: $78
	adc  c                                           ; $6191: $89
	adc  b                                           ; $6192: $88
	add  a                                           ; $6193: $87
	add  a                                           ; $6194: $87
	sbc  b                                           ; $6195: $98
	adc  b                                           ; $6196: $88
	sub  a                                           ; $6197: $97
	ld   a, d                                        ; $6198: $7a
	ld   l, b                                        ; $6199: $68
	adc  b                                           ; $619a: $88
	ld   a, b                                        ; $619b: $78
	sub  [hl]                                        ; $619c: $96
	sbc  b                                           ; $619d: $98
	adc  c                                           ; $619e: $89
	ld   a, c                                        ; $619f: $79
	ld   a, c                                        ; $61a0: $79
	ld   a, b                                        ; $61a1: $78
	sub  [hl]                                        ; $61a2: $96
	xor  b                                           ; $61a3: $a8
	ld   a, b                                        ; $61a4: $78
	adc  b                                           ; $61a5: $88
	ld   a, c                                        ; $61a6: $79
	ld   a, b                                        ; $61a7: $78
	sbc  b                                           ; $61a8: $98
	sbc  b                                           ; $61a9: $98
	adc  b                                           ; $61aa: $88
	adc  b                                           ; $61ab: $88
	sbc  b                                           ; $61ac: $98
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	ld   a, b                                        ; $61af: $78
	adc  b                                           ; $61b0: $88
	add  a                                           ; $61b1: $87
	sbc  c                                           ; $61b2: $99
	ld   a, c                                        ; $61b3: $79
	add  a                                           ; $61b4: $87
	adc  d                                           ; $61b5: $8a
	ld   [hl], a                                     ; $61b6: $77
	sub  a                                           ; $61b7: $97
	add  a                                           ; $61b8: $87
	add  a                                           ; $61b9: $87
	ld   a, c                                        ; $61ba: $79
	ld   l, c                                        ; $61bb: $69
	ld   a, b                                        ; $61bc: $78
	sub  a                                           ; $61bd: $97
	sub  a                                           ; $61be: $97
	sbc  b                                           ; $61bf: $98
	ld   a, d                                        ; $61c0: $7a
	ld   a, b                                        ; $61c1: $78
	adc  b                                           ; $61c2: $88
	add  a                                           ; $61c3: $87
	sub  a                                           ; $61c4: $97
	adc  c                                           ; $61c5: $89
	adc  b                                           ; $61c6: $88
	adc  b                                           ; $61c7: $88
	ld   a, b                                        ; $61c8: $78
	sbc  b                                           ; $61c9: $98
	ld   a, c                                        ; $61ca: $79
	ld   a, b                                        ; $61cb: $78
	add  a                                           ; $61cc: $87
	sub  a                                           ; $61cd: $97
	add  [hl]                                        ; $61ce: $86
	sub  a                                           ; $61cf: $97
	ld   l, e                                        ; $61d0: $6b
	ld   l, c                                        ; $61d1: $69
	ld   a, c                                        ; $61d2: $79
	sub  a                                           ; $61d3: $97
	and  [hl]                                        ; $61d4: $a6
	sbc  b                                           ; $61d5: $98
	ld   a, b                                        ; $61d6: $78
	ld   a, b                                        ; $61d7: $78
	ld   a, c                                        ; $61d8: $79
	ld   a, b                                        ; $61d9: $78
	sub  [hl]                                        ; $61da: $96
	adc  c                                           ; $61db: $89
	ld   a, b                                        ; $61dc: $78
	add  a                                           ; $61dd: $87
	adc  b                                           ; $61de: $88
	ld   [hl], a                                     ; $61df: $77
	and  a                                           ; $61e0: $a7
	ld   a, c                                        ; $61e1: $79
	ld   a, b                                        ; $61e2: $78
	ld   a, c                                        ; $61e3: $79
	ld   a, b                                        ; $61e4: $78
	add  a                                           ; $61e5: $87
	sub  a                                           ; $61e6: $97
	adc  c                                           ; $61e7: $89
	adc  b                                           ; $61e8: $88
	ld   a, b                                        ; $61e9: $78
	ld   a, b                                        ; $61ea: $78
	add  [hl]                                        ; $61eb: $86
	adc  c                                           ; $61ec: $89
	ld   l, c                                        ; $61ed: $69
	adc  b                                           ; $61ee: $88
	add  a                                           ; $61ef: $87
	sub  [hl]                                        ; $61f0: $96
	sbc  c                                           ; $61f1: $99
	ld   l, e                                        ; $61f2: $6b
	ld   l, c                                        ; $61f3: $69
	sub  a                                           ; $61f4: $97
	sub  a                                           ; $61f5: $97
	and  a                                           ; $61f6: $a7
	ld   a, c                                        ; $61f7: $79
	ld   [hl], a                                     ; $61f8: $77
	add  a                                           ; $61f9: $87
	add  a                                           ; $61fa: $87
	adc  c                                           ; $61fb: $89
	ld   a, b                                        ; $61fc: $78
	sub  a                                           ; $61fd: $97
	adc  c                                           ; $61fe: $89
	ld   a, c                                        ; $61ff: $79
	sub  a                                           ; $6200: $97
	ld   a, d                                        ; $6201: $7a
	ld   e, b                                        ; $6202: $58
	sub  l                                           ; $6203: $95
	add  [hl]                                        ; $6204: $86
	add  [hl]                                        ; $6205: $86
	ld   a, c                                        ; $6206: $79
	ld   l, e                                        ; $6207: $6b
	adc  c                                           ; $6208: $89
	or   a                                           ; $6209: $b7
	ret  z                                           ; $620a: $c8

	adc  d                                           ; $620b: $8a
	ld   [hl], a                                     ; $620c: $77
	add  [hl]                                        ; $620d: $86
	halt                                             ; $620e: $76
	ld   d, a                                        ; $620f: $57
	ld   h, [hl]                                     ; $6210: $66
	ld   a, c                                        ; $6211: $79
	adc  c                                           ; $6212: $89
	cp   d                                           ; $6213: $ba
	xor  h                                           ; $6214: $ac
	sbc  c                                           ; $6215: $99
	push de                                          ; $6216: $d5
	xor  b                                           ; $6217: $a8
	ld   c, b                                        ; $6218: $48
	ld   d, [hl]                                     ; $6219: $56
	ld   d, [hl]                                     ; $621a: $56
	ld   h, l                                        ; $621b: $65
	sub  a                                           ; $621c: $97
	xor  e                                           ; $621d: $ab
	xor  h                                           ; $621e: $ac
	xor  e                                           ; $621f: $ab
	cp   c                                           ; $6220: $b9
	sbc  c                                           ; $6221: $99
	sub  h                                           ; $6222: $94
	ld   d, a                                        ; $6223: $57
	dec  h                                           ; $6224: $25
	ld   d, h                                        ; $6225: $54
	ld   h, [hl]                                     ; $6226: $66
	adc  b                                           ; $6227: $88
	res  7, l                                        ; $6228: $cb $bd
	xor  h                                           ; $622a: $ac
	cp   c                                           ; $622b: $b9
	add  a                                           ; $622c: $87
	ld   [hl], e                                     ; $622d: $73
	ld   b, l                                        ; $622e: $45
	inc  sp                                          ; $622f: $33
	ld   d, l                                        ; $6230: $55
	ld   l, b                                        ; $6231: $68
	xor  e                                           ; $6232: $ab
	adc  $ec                                         ; $6233: $ce $ec
	jp   c, Jump_0ea_6599                            ; $6235: $da $99 $65

	ld   b, h                                        ; $6238: $44
	inc  d                                           ; $6239: $14
	ld   b, e                                        ; $623a: $43
	ld   [hl], l                                     ; $623b: $75
	sbc  d                                           ; $623c: $9a
	sbc  $ef                                         ; $623d: $de $ef
	call Call_0ea_74aa                               ; $623f: $cd $aa $74
	inc  sp                                          ; $6242: $33
	ld   hl, $4752                                   ; $6243: $21 $52 $47
	ld   l, c                                        ; $6246: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6247: $cf
	rst  $28                                         ; $6248: $ef
	db   $ec                                         ; $6249: $ec
	ld   [$2286], a                                  ; $624a: $ea $86 $22
	ld   sp, $1622                                   ; $624d: $31 $22 $16
	ld   a, d                                        ; $6250: $7a
	cp   a                                           ; $6251: $bf
	rst  $28                                         ; $6252: $ef
	db   $fd                                         ; $6253: $fd
	ei                                               ; $6254: $fb
	halt                                             ; $6255: $76
	ld   [hl-], a                                    ; $6256: $32
	ld   de, $1521                                   ; $6257: $11 $21 $15
	ld   e, e                                        ; $625a: $5b
	cp   a                                           ; $625b: $bf
	rst  $38                                         ; $625c: $ff
	cp   $fb                                         ; $625d: $fe $fb
	add  [hl]                                        ; $625f: $86
	inc  bc                                          ; $6260: $03
	ld   de, $1411                                   ; $6261: $11 $11 $14
	ld   l, e                                        ; $6264: $6b
	xor  a                                           ; $6265: $af
	rst  $38                                         ; $6266: $ff
	cp   $fb                                         ; $6267: $fe $fb
	add  l                                           ; $6269: $85
	inc  de                                          ; $626a: $13
	ld   de, $1311                                   ; $626b: $11 $11 $13
	ld   a, d                                        ; $626e: $7a
	rst  JumpTable                                         ; $626f: $df
	rst  $38                                         ; $6270: $ff
	cp   $fa                                         ; $6271: $fe $fa
	ld   [hl], e                                     ; $6273: $73
	ld   de, $1111                                   ; $6274: $11 $11 $11
	ld   b, $7c                                      ; $6277: $06 $7c
	rst  $28                                         ; $6279: $ef
	rst  $38                                         ; $627a: $ff
	cp   $fa                                         ; $627b: $fe $fa
	ld   d, e                                        ; $627d: $53
	ld   de, $1111                                   ; $627e: $11 $11 $11
	ld   d, [hl]                                     ; $6281: $56
	adc  l                                           ; $6282: $8d
	rst  $38                                         ; $6283: $ff
	rst  $38                                         ; $6284: $ff
	rst  $38                                         ; $6285: $ff
	rst  $20                                         ; $6286: $e7
	ld   b, c                                        ; $6287: $41
	ld   de, $1111                                   ; $6288: $11 $11 $11
	halt                                             ; $628b: $76
	cp   a                                           ; $628c: $bf
	rst  $38                                         ; $628d: $ff
	rst  $38                                         ; $628e: $ff
	rst  $28                                         ; $628f: $ef
	or   h                                           ; $6290: $b4
	ld   sp, $1211                                   ; $6291: $31 $11 $12
	inc  de                                          ; $6294: $13
	halt                                             ; $6295: $76
	rst  $28                                         ; $6296: $ef
	rst  $38                                         ; $6297: $ff
	rst  $38                                         ; $6298: $ff
	rst  $28                                         ; $6299: $ef
	ld   [hl], h                                     ; $629a: $74
	ld   de, $1111                                   ; $629b: $11 $11 $11
	add  hl, de                                      ; $629e: $19
	ld   e, d                                        ; $629f: $5a
	rst  $38                                         ; $62a0: $ff
	rst  $38                                         ; $62a1: $ff
	ei                                               ; $62a2: $fb
	cp   $34                                         ; $62a3: $fe $34
	ld   de, $4111                                   ; $62a5: $11 $11 $41
	add  hl, sp                                      ; $62a8: $39
	ld   c, [hl]                                     ; $62a9: $4e
	rst  $38                                         ; $62aa: $ff
	rst  $38                                         ; $62ab: $ff
	db   $fc                                         ; $62ac: $fc
	or   $32                                         ; $62ad: $f6 $32
	ld   de, $1113                                   ; $62af: $11 $13 $11
	and  h                                           ; $62b2: $a4
	xor  a                                           ; $62b3: $af
	rst  $38                                         ; $62b4: $ff
	rst  $38                                         ; $62b5: $ff
	cp   a                                           ; $62b6: $bf
	ldh  [c], a                                      ; $62b7: $e2
	ld   b, c                                        ; $62b8: $41
	ld   de, $1614                                   ; $62b9: $11 $14 $16
	ld   [hl], h                                     ; $62bc: $74
	rst  $38                                         ; $62bd: $ff
	rst  $38                                         ; $62be: $ff
	rst  $38                                         ; $62bf: $ff
	rst  JumpTable                                         ; $62c0: $df
	ld   b, h                                        ; $62c1: $44
	ld   hl, $6111                                   ; $62c2: $21 $11 $61
	dec  e                                           ; $62c5: $1d
	dec  de                                          ; $62c6: $1b
	rst  $38                                         ; $62c7: $ff
	rst  $38                                         ; $62c8: $ff
	ld   a, [$16fd]                                  ; $62c9: $fa $fd $16
	ld   [de], a                                     ; $62cc: $12
	ld   de, $a531                                   ; $62cd: $11 $31 $a5
	ld   c, a                                        ; $62d0: $4f
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	rst  JumpTable                                         ; $62d3: $df
	pop  af                                          ; $62d4: $f1
	ld   h, d                                        ; $62d5: $62
	ld   de, $1119                                   ; $62d6: $11 $19 $11
	pop  bc                                          ; $62d9: $c1
	rst  $38                                         ; $62da: $ff
	rst  $38                                         ; $62db: $ff
	rst  $38                                         ; $62dc: $ff
	sbc  a                                           ; $62dd: $9f
	sub  d                                           ; $62de: $92
	ld   h, c                                        ; $62df: $61
	ld   hl, $1d31                                   ; $62e0: $21 $31 $1d
	rla                                              ; $62e3: $17
	rst  $38                                         ; $62e4: $ff
	rst  $38                                         ; $62e5: $ff
	ei                                               ; $62e6: $fb
	rst  $38                                         ; $62e7: $ff
	rla                                              ; $62e8: $17
	ld   [de], a                                     ; $62e9: $12
	ld   de, $6981                                   ; $62ea: $11 $81 $69
	rra                                              ; $62ed: $1f
	rst  JumpTable                                         ; $62ee: $df
	rst  $38                                         ; $62ef: $ff
	ei                                               ; $62f0: $fb
	db   $f4                                         ; $62f1: $f4
	ld   b, l                                        ; $62f2: $45
	ld   de, $1118                                   ; $62f3: $11 $18 $11
	pop  af                                          ; $62f6: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f7: $cf
	rst  $38                                         ; $62f8: $ff
	rst  $38                                         ; $62f9: $ff
	sbc  a                                           ; $62fa: $9f
	pop  bc                                          ; $62fb: $c1
	add  c                                           ; $62fc: $81
	ld   sp, $1c15                                   ; $62fd: $31 $15 $1c
	ld   [hl-], a                                    ; $6300: $32
	db   $fc                                         ; $6301: $fc
	rst  $38                                         ; $6302: $ff
	cp   $ff                                         ; $6303: $fe $ff
	add  hl, de                                      ; $6305: $19
	ld   sp, $a111                                   ; $6306: $31 $11 $a1
	ld   e, $1e                                      ; $6309: $1e $1e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $630b: $cf
	rst  $28                                         ; $630c: $ef
	rst  $30                                         ; $630d: $f7
	ld   sp, hl                                      ; $630e: $f9
	add  hl, sp                                      ; $630f: $39
	ld   d, $11                                      ; $6310: $16 $11
	ld   [hl], c                                     ; $6312: $71
	db   $d3                                         ; $6313: $d3
	cpl                                              ; $6314: $2f
	rst  JumpTable                                         ; $6315: $df
	rst  $28                                         ; $6316: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6317: $cf
	pop  af                                          ; $6318: $f1
	or   d                                           ; $6319: $b2
	dec  d                                           ; $631a: $15
	ld   a, [de]                                     ; $631b: $1a
	ld   de, $ccf1                                   ; $631c: $11 $f1 $cc
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	ld   l, a                                        ; $6321: $6f
	or   d                                           ; $6322: $b2
	pop  bc                                          ; $6323: $c1
	ld   [hl], c                                     ; $6324: $71
	rra                                              ; $6325: $1f
	inc  de                                          ; $6326: $13
	pop  bc                                          ; $6327: $c1
	db   $eb                                         ; $6328: $eb
	ld   a, [$8fff]                                  ; $6329: $fa $ff $8f
	scf                                              ; $632c: $37
	and  c                                           ; $632d: $a1
	pop  bc                                          ; $632e: $c1
	inc  e                                           ; $632f: $1c
	dec  de                                          ; $6330: $1b
	ld   h, c                                        ; $6331: $61
	db   $eb                                         ; $6332: $eb
	ld   sp, hl                                      ; $6333: $f9
	ei                                               ; $6334: $fb
	rst  JumpTable                                         ; $6335: $df
	dec  e                                           ; $6336: $1d
	ld   d, c                                        ; $6337: $51
	pop  hl                                          ; $6338: $e1
	dec  de                                          ; $6339: $1b
	dec  e                                           ; $633a: $1d
	ld   b, e                                        ; $633b: $43
	call $f7f9                                       ; $633c: $cd $f9 $f7
	rst  $38                                         ; $633f: $ff
	rra                                              ; $6340: $1f
	ld   sp, $2cf1                                   ; $6341: $31 $f1 $2c
	inc  e                                           ; $6344: $1c
	ld   d, e                                        ; $6345: $53
	cp   [hl]                                        ; $6346: $be
	ld   [$fff5], a                                  ; $6347: $ea $f5 $ff
	rra                                              ; $634a: $1f
	ld   sp, $1ef1                                   ; $634b: $31 $f1 $1e
	dec  e                                           ; $634e: $1d
	sub  e                                           ; $634f: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6350: $cf
	add  $f4                                         ; $6351: $c6 $f4
	rst  $28                                         ; $6353: $ef
	rra                                              ; $6354: $1f
	ld   d, c                                        ; $6355: $51
	pop  af                                          ; $6356: $f1
	rra                                              ; $6357: $1f
	add  hl, de                                      ; $6358: $19
	pop  de                                          ; $6359: $d1
	cp   [hl]                                        ; $635a: $be
	db   $e4                                         ; $635b: $e4
	rst  $30                                         ; $635c: $f7
	adc  a                                           ; $635d: $8f
	inc  e                                           ; $635e: $1c
	sub  c                                           ; $635f: $91
	pop  af                                          ; $6360: $f1
	rra                                              ; $6361: $1f
	ld   d, $f1                                      ; $6362: $16 $f1
	cp   l                                           ; $6364: $bd
	di                                               ; $6365: $f3
	db   $fc                                         ; $6366: $fc
	ld   c, a                                        ; $6367: $4f
	add  hl, de                                      ; $6368: $19
	pop  de                                          ; $6369: $d1
	ldh  [c], a                                      ; $636a: $e2
	rra                                              ; $636b: $1f
	ld   de, $acf1                                   ; $636c: $11 $f1 $ac
	db   $f4                                         ; $636f: $f4
	rst  $38                                         ; $6370: $ff
	rra                                              ; $6371: $1f
	inc  hl                                          ; $6372: $23
	pop  af                                          ; $6373: $f1
	xor  c                                           ; $6374: $a9
	rra                                              ; $6375: $1f
	ld   de, $9af1                                   ; $6376: $11 $f1 $9a
	push af                                          ; $6379: $f5
	rst  $38                                         ; $637a: $ff
	rra                                              ; $637b: $1f
	sub  c                                           ; $637c: $91
	pop  af                                          ; $637d: $f1
	ld   e, [hl]                                     ; $637e: $5e
	dec  e                                           ; $637f: $1d
	ld   h, c                                        ; $6380: $61
	di                                               ; $6381: $f3
	ld   a, d                                        ; $6382: $7a
	ld   sp, hl                                      ; $6383: $f9
	xor  a                                           ; $6384: $af
	rra                                              ; $6385: $1f
	pop  af                                          ; $6386: $f1
	pop  af                                          ; $6387: $f1
	rra                                              ; $6388: $1f
	inc  d                                           ; $6389: $14
	pop  hl                                          ; $638a: $e1
	ld   sp, hl                                      ; $638b: $f9
	ld   c, h                                        ; $638c: $4c
	sbc  $5f                                         ; $638d: $de $5f
	ld   e, d                                        ; $638f: $5a
	pop  af                                          ; $6390: $f1
	push hl                                          ; $6391: $e5
	rra                                              ; $6392: $1f
	ld   de, $bbf1                                   ; $6393: $11 $f1 $bb
	inc  l                                           ; $6396: $2c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6397: $cf
	ccf                                              ; $6398: $3f
	sub  [hl]                                        ; $6399: $96
	pop  af                                          ; $639a: $f1
	and  a                                           ; $639b: $a7
	rra                                              ; $639c: $1f
	ld   de, $e7f1                                   ; $639d: $11 $f1 $e7
	ld   e, h                                        ; $63a0: $5c
	cp   a                                           ; $63a1: $bf
	cpl                                              ; $63a2: $2f
	sub  [hl]                                        ; $63a3: $96
	pop  af                                          ; $63a4: $f1
	rst  $10                                         ; $63a5: $d7
	rra                                              ; $63a6: $1f
	ld   de, $aaf1                                   ; $63a7: $11 $f1 $aa
	ld   e, e                                        ; $63aa: $5b
	xor  a                                           ; $63ab: $af
	ccf                                              ; $63ac: $3f
	or   l                                           ; $63ad: $b5
	pop  af                                          ; $63ae: $f1
	cp   c                                           ; $63af: $b9
	rra                                              ; $63b0: $1f
	ld   de, $9bf1                                   ; $63b1: $11 $f1 $9b
	ld   c, h                                        ; $63b4: $4c
	sbc  a                                           ; $63b5: $9f
	ccf                                              ; $63b6: $3f
	call nz, $a9f1                                   ; $63b7: $c4 $f1 $a9
	rra                                              ; $63ba: $1f
	ld   de, $6bf1                                   ; $63bb: $11 $f1 $6b
	dec  sp                                          ; $63be: $3b
	adc  a                                           ; $63bf: $8f
	ccf                                              ; $63c0: $3f
	ldh  a, [c]                                      ; $63c1: $f2
	pop  af                                          ; $63c2: $f1
	sbc  e                                           ; $63c3: $9b
	ld   e, $21                                      ; $63c4: $1e $21
	pop  af                                          ; $63c6: $f1
	ld   c, l                                        ; $63c7: $4d
	dec  sp                                          ; $63c8: $3b
	ld   a, a                                        ; $63c9: $7f
	ld   e, a                                        ; $63ca: $5f
	pop  af                                          ; $63cb: $f1
	db   $f4                                         ; $63cc: $f4
	ld   l, l                                        ; $63cd: $6d
	dec  de                                          ; $63ce: $1b
	ld   [hl], c                                     ; $63cf: $71
	jp   nc, Jump_0ea_4a1e                           ; $63d0: $d2 $1e $4a

	adc  a                                           ; $63d3: $8f
	adc  e                                           ; $63d4: $8b
	pop  af                                          ; $63d5: $f1
	ld   sp, hl                                      ; $63d6: $f9
	ccf                                              ; $63d7: $3f
	inc  d                                           ; $63d8: $14
	pop  bc                                          ; $63d9: $c1
	ld   a, $1a                                      ; $63da: $3e $1a
	and  e                                           ; $63dc: $a3
	xor  e                                           ; $63dd: $ab
	push hl                                          ; $63de: $e5
	ld   hl, sp-$61                                  ; $63df: $f8 $9f
	dec  e                                           ; $63e1: $1d
	ld   h, c                                        ; $63e2: $61
	and  a                                           ; $63e3: $a7
	dec  de                                          ; $63e4: $1b
	ld   h, c                                        ; $63e5: $61
	db   $f4                                         ; $63e6: $f4
	sbc  c                                           ; $63e7: $99
	reti                                             ; $63e8: $d9


	sbc  a                                           ; $63e9: $9f

jr_0ea_63ea:
	rra                                              ; $63ea: $1f
	or   e                                           ; $63eb: $b3
	pop  hl                                          ; $63ec: $e1
	ld   a, [hl-]                                    ; $63ed: $3a
	ld   hl, $5ef1                                   ; $63ee: $21 $f1 $5e
	ld   c, e                                        ; $63f1: $4b
	sbc  a                                           ; $63f2: $9f
	ccf                                              ; $63f3: $3f
	call nz, $b8f2                                   ; $63f4: $c4 $f2 $b8
	ld   d, $a1                                      ; $63f7: $16 $a1
	ld   e, l                                        ; $63f9: $5d
	dec  de                                          ; $63fa: $1b
	sub  [hl]                                        ; $63fb: $96
	xor  l                                           ; $63fc: $ad
	push bc                                          ; $63fd: $c5
	di                                               ; $63fe: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63ff: $cf
	dec  e                                           ; $6400: $1d
	ld   b, d                                        ; $6401: $42
	sub  a                                           ; $6402: $97
	inc  e                                           ; $6403: $1c
	ld   d, c                                        ; $6404: $51
	push hl                                          ; $6405: $e5
	sbc  b                                           ; $6406: $98
	push hl                                          ; $6407: $e5
	rst  JumpTable                                         ; $6408: $df
	cpl                                              ; $6409: $2f
	ld   h, a                                        ; $640a: $67
	or   c                                           ; $640b: $b1
	ld   e, d                                        ; $640c: $5a
	ld   [hl+], a                                    ; $640d: $22
	pop  hl                                          ; $640e: $e1
	sbc  d                                           ; $640f: $9a
	ld   e, d                                        ; $6410: $5a
	xor  l                                           ; $6411: $ad
	ld   c, a                                        ; $6412: $4f
	ld   a, b                                        ; $6413: $78
	ldh  a, [c]                                      ; $6414: $f2
	or   [hl]                                        ; $6415: $b6
	daa                                              ; $6416: $27
	sub  c                                           ; $6417: $91
	sbc  c                                           ; $6418: $99
	dec  e                                           ; $6419: $1d
	ld   l, b                                        ; $641a: $68
	sbc  l                                           ; $641b: $9d
	sbc  b                                           ; $641c: $98
	di                                               ; $641d: $f3
	ld   a, [$355b]                                  ; $641e: $fa $5b $35
	sub  [hl]                                        ; $6421: $96
	dec  e                                           ; $6422: $1d
	dec  h                                           ; $6423: $25
	or   [hl]                                        ; $6424: $b6
	xor  b                                           ; $6425: $a8
	push hl                                          ; $6426: $e5
	db   $eb                                         ; $6427: $eb
	ld   e, a                                        ; $6428: $5f
	ld   e, c                                        ; $6429: $59
	ld   [hl], e                                     ; $642a: $73
	ld   l, b                                        ; $642b: $68
	ld   [hl], $a1                                   ; $642c: $36 $a1
	or   a                                           ; $642e: $b7
	sbc  b                                           ; $642f: $98
	jp   z, $4b6f                                    ; $6430: $ca $6f $4b

	or   l                                           ; $6433: $b5
	or   h                                           ; $6434: $b4
	ld   d, a                                        ; $6435: $57
	add  c                                           ; $6436: $81
	or   l                                           ; $6437: $b5
	ld   c, e                                        ; $6438: $4b
	ld   l, d                                        ; $6439: $6a
	adc  [hl]                                        ; $643a: $8e
	ld   l, h                                        ; $643b: $6c
	call nc, $88e6                                   ; $643c: $d4 $e6 $88
	ld   b, l                                        ; $643f: $45
	sub  e                                           ; $6440: $93
	ld   l, e                                        ; $6441: $6b
	ld   a, [hl+]                                    ; $6442: $2a
	adc  b                                           ; $6443: $88
	adc  e                                           ; $6444: $8b
	and  [hl]                                        ; $6445: $a6
	push af                                          ; $6446: $f5
	xor  e                                           ; $6447: $ab
	ld   e, d                                        ; $6448: $5a
	ld   d, h                                        ; $6449: $54
	add  a                                           ; $644a: $87
	inc  a                                           ; $644b: $3c
	ld   b, [hl]                                     ; $644c: $46
	and  [hl]                                        ; $644d: $a6
	sbc  c                                           ; $644e: $99
	push bc                                          ; $644f: $c5
	jp   c, Jump_0ea_586e                            ; $6450: $da $6e $58

	ld   [hl], h                                     ; $6453: $74
	ld   a, c                                        ; $6454: $79
	jr   c, jr_0ea_63ea                              ; $6455: $38 $93

	and  a                                           ; $6457: $a7
	adc  b                                           ; $6458: $88
	cp   b                                           ; $6459: $b8
	sbc  [hl]                                        ; $645a: $9e
	ld   e, h                                        ; $645b: $5c
	sub  [hl]                                        ; $645c: $96
	and  [hl]                                        ; $645d: $a6
	ld   l, c                                        ; $645e: $69
	ld   d, l                                        ; $645f: $55
	and  h                                           ; $6460: $a4
	adc  c                                           ; $6461: $89
	ld   a, c                                        ; $6462: $79
	xor  d                                           ; $6463: $aa
	ld   a, l                                        ; $6464: $7d
	adc  b                                           ; $6465: $88
	add  $87                                         ; $6466: $c6 $87
	ld   e, c                                        ; $6468: $59
	ld   [hl], h                                     ; $6469: $74
	and  [hl]                                        ; $646a: $a6
	ld   e, c                                        ; $646b: $59
	ld   l, b                                        ; $646c: $68
	sbc  d                                           ; $646d: $9a
	ld   a, d                                        ; $646e: $7a
	or   a                                           ; $646f: $b7
	ret  z                                           ; $6470: $c8

	ld   a, c                                        ; $6471: $79
	ld   h, a                                        ; $6472: $67
	sub  l                                           ; $6473: $95
	ld   a, c                                        ; $6474: $79
	ld   c, b                                        ; $6475: $48
	add  [hl]                                        ; $6476: $86
	adc  c                                           ; $6477: $89
	add  a                                           ; $6478: $87
	cp   c                                           ; $6479: $b9
	sbc  e                                           ; $647a: $9b
	adc  c                                           ; $647b: $89
	sub  a                                           ; $647c: $97
	add  a                                           ; $647d: $87
	ld   e, b                                        ; $647e: $58
	ld   [hl], l                                     ; $647f: $75
	sub  a                                           ; $6480: $97
	ld   [hl], a                                     ; $6481: $77
	sbc  b                                           ; $6482: $98
	sbc  e                                           ; $6483: $9b
	adc  d                                           ; $6484: $8a
	xor  b                                           ; $6485: $a8
	sub  a                                           ; $6486: $97
	ld   a, b                                        ; $6487: $78
	ld   h, [hl]                                     ; $6488: $66
	add  l                                           ; $6489: $85
	ld   [hl], a                                     ; $648a: $77
	ld   h, a                                        ; $648b: $67
	sbc  c                                           ; $648c: $99
	sbc  e                                           ; $648d: $9b
	xor  d                                           ; $648e: $aa
	xor  c                                           ; $648f: $a9
	sbc  b                                           ; $6490: $98
	ld   a, b                                        ; $6491: $78
	ld   h, l                                        ; $6492: $65
	halt                                             ; $6493: $76
	ld   h, a                                        ; $6494: $67
	ld   h, a                                        ; $6495: $67
	sbc  d                                           ; $6496: $9a
	sbc  d                                           ; $6497: $9a
	cp   c                                           ; $6498: $b9
	xor  d                                           ; $6499: $aa
	adc  c                                           ; $649a: $89
	ld   [hl], a                                     ; $649b: $77
	ld   h, l                                        ; $649c: $65
	ld   h, [hl]                                     ; $649d: $66
	ld   h, [hl]                                     ; $649e: $66
	ld   h, a                                        ; $649f: $67
	adc  d                                           ; $64a0: $8a
	sbc  d                                           ; $64a1: $9a
	cp   c                                           ; $64a2: $b9
	xor  c                                           ; $64a3: $a9
	sbc  c                                           ; $64a4: $99
	ld   [hl], a                                     ; $64a5: $77
	ld   h, [hl]                                     ; $64a6: $66
	ld   h, l                                        ; $64a7: $65
	ld   h, [hl]                                     ; $64a8: $66
	ld   h, a                                        ; $64a9: $67
	adc  d                                           ; $64aa: $8a
	xor  d                                           ; $64ab: $aa
	cp   d                                           ; $64ac: $ba
	xor  d                                           ; $64ad: $aa
	sbc  c                                           ; $64ae: $99
	ld   [hl], a                                     ; $64af: $77
	ld   d, l                                        ; $64b0: $55
	ld   h, l                                        ; $64b1: $65
	ld   h, [hl]                                     ; $64b2: $66
	ld   h, a                                        ; $64b3: $67
	adc  d                                           ; $64b4: $8a
	sbc  e                                           ; $64b5: $9b
	cp   d                                           ; $64b6: $ba
	cp   d                                           ; $64b7: $ba
	xor  c                                           ; $64b8: $a9
	ld   [hl], a                                     ; $64b9: $77
	ld   d, l                                        ; $64ba: $55
	ld   h, l                                        ; $64bb: $65
	ld   h, a                                        ; $64bc: $67
	ld   h, a                                        ; $64bd: $67
	adc  c                                           ; $64be: $89
	xor  e                                           ; $64bf: $ab
	cp   e                                           ; $64c0: $bb
	cp   d                                           ; $64c1: $ba
	xor  b                                           ; $64c2: $a8
	ld   [hl], a                                     ; $64c3: $77
	ld   d, l                                        ; $64c4: $55
	ld   h, l                                        ; $64c5: $65
	ld   h, a                                        ; $64c6: $67
	ld   h, a                                        ; $64c7: $67
	sbc  c                                           ; $64c8: $99
	xor  e                                           ; $64c9: $ab
	cp   e                                           ; $64ca: $bb
	xor  c                                           ; $64cb: $a9
	sbc  c                                           ; $64cc: $99
	ld   [hl], a                                     ; $64cd: $77
	ld   d, l                                        ; $64ce: $55
	ld   h, l                                        ; $64cf: $65
	ld   h, [hl]                                     ; $64d0: $66
	ld   h, a                                        ; $64d1: $67
	sbc  c                                           ; $64d2: $99
	sbc  e                                           ; $64d3: $9b
	cp   d                                           ; $64d4: $ba
	xor  c                                           ; $64d5: $a9
	xor  b                                           ; $64d6: $a8
	ld   [hl], a                                     ; $64d7: $77
	ld   d, l                                        ; $64d8: $55
	ld   h, l                                        ; $64d9: $65
	ld   h, [hl]                                     ; $64da: $66
	ld   h, a                                        ; $64db: $67
	adc  d                                           ; $64dc: $8a
	sbc  e                                           ; $64dd: $9b
	cp   d                                           ; $64de: $ba
	xor  c                                           ; $64df: $a9
	xor  b                                           ; $64e0: $a8
	ld   [hl], a                                     ; $64e1: $77
	ld   d, l                                        ; $64e2: $55
	ld   h, l                                        ; $64e3: $65
	ld   h, [hl]                                     ; $64e4: $66
	ld   h, a                                        ; $64e5: $67
	adc  d                                           ; $64e6: $8a
	xor  e                                           ; $64e7: $ab
	cp   d                                           ; $64e8: $ba
	xor  d                                           ; $64e9: $aa
	xor  b                                           ; $64ea: $a8
	ld   [hl], a                                     ; $64eb: $77
	ld   d, l                                        ; $64ec: $55
	ld   h, l                                        ; $64ed: $65
	ld   h, [hl]                                     ; $64ee: $66
	ld   h, a                                        ; $64ef: $67
	adc  d                                           ; $64f0: $8a
	xor  e                                           ; $64f1: $ab
	cp   d                                           ; $64f2: $ba
	xor  c                                           ; $64f3: $a9
	xor  b                                           ; $64f4: $a8
	ld   [hl], a                                     ; $64f5: $77
	ld   d, l                                        ; $64f6: $55
	ld   h, l                                        ; $64f7: $65
	ld   h, [hl]                                     ; $64f8: $66
	ld   h, a                                        ; $64f9: $67
	sbc  c                                           ; $64fa: $99
	xor  e                                           ; $64fb: $ab
	cp   d                                           ; $64fc: $ba
	xor  d                                           ; $64fd: $aa
	sbc  b                                           ; $64fe: $98
	ld   [hl], a                                     ; $64ff: $77
	ld   d, l                                        ; $6500: $55
	ld   h, l                                        ; $6501: $65
	ld   h, [hl]                                     ; $6502: $66
	ld   h, a                                        ; $6503: $67
	adc  d                                           ; $6504: $8a
	xor  e                                           ; $6505: $ab
	cp   e                                           ; $6506: $bb
	xor  d                                           ; $6507: $aa
	xor  b                                           ; $6508: $a8
	ld   [hl], a                                     ; $6509: $77
	ld   d, l                                        ; $650a: $55
	ld   h, l                                        ; $650b: $65
	ld   h, [hl]                                     ; $650c: $66
	ld   h, a                                        ; $650d: $67
	adc  d                                           ; $650e: $8a
	xor  e                                           ; $650f: $ab
	cp   d                                           ; $6510: $ba
	cp   c                                           ; $6511: $b9
	sbc  b                                           ; $6512: $98
	ld   [hl], a                                     ; $6513: $77
	ld   d, l                                        ; $6514: $55
	ld   h, l                                        ; $6515: $65
	ld   h, [hl]                                     ; $6516: $66
	ld   h, a                                        ; $6517: $67
	adc  d                                           ; $6518: $8a
	xor  e                                           ; $6519: $ab
	cp   d                                           ; $651a: $ba
	cp   c                                           ; $651b: $b9
	sbc  b                                           ; $651c: $98
	ld   [hl], a                                     ; $651d: $77
	ld   d, l                                        ; $651e: $55
	ld   h, l                                        ; $651f: $65
	ld   h, [hl]                                     ; $6520: $66
	ld   h, a                                        ; $6521: $67
	adc  c                                           ; $6522: $89
	xor  e                                           ; $6523: $ab
	jp   z, $a9b9                                    ; $6524: $ca $b9 $a9

	ld   [hl], a                                     ; $6527: $77
	ld   d, l                                        ; $6528: $55
	ld   h, l                                        ; $6529: $65
	ld   h, [hl]                                     ; $652a: $66
	ld   h, a                                        ; $652b: $67
	adc  c                                           ; $652c: $89
	xor  e                                           ; $652d: $ab
	jp   z, $a8ba                                    ; $652e: $ca $ba $a8

	ld   [hl], a                                     ; $6531: $77
	ld   d, l                                        ; $6532: $55
	ld   h, l                                        ; $6533: $65
	ld   d, [hl]                                     ; $6534: $56
	ld   h, a                                        ; $6535: $67
	adc  c                                           ; $6536: $89
	xor  e                                           ; $6537: $ab
	res  7, d                                        ; $6538: $cb $ba
	sbc  b                                           ; $653a: $98
	ld   [hl], a                                     ; $653b: $77
	ld   d, l                                        ; $653c: $55
	ld   h, l                                        ; $653d: $65
	ld   d, [hl]                                     ; $653e: $56
	ld   h, a                                        ; $653f: $67
	adc  c                                           ; $6540: $89
	xor  e                                           ; $6541: $ab
	jp   z, $99ba                                    ; $6542: $ca $ba $99

	ld   [hl], a                                     ; $6545: $77
	ld   d, l                                        ; $6546: $55
	ld   h, l                                        ; $6547: $65
	ld   d, [hl]                                     ; $6548: $56
	ld   h, a                                        ; $6549: $67
	adc  c                                           ; $654a: $89
	xor  d                                           ; $654b: $aa
	jp   z, $99ba                                    ; $654c: $ca $ba $99

	ld   [hl], a                                     ; $654f: $77
	ld   h, l                                        ; $6550: $65
	ld   h, l                                        ; $6551: $65
	ld   d, [hl]                                     ; $6552: $56
	ld   h, a                                        ; $6553: $67
	adc  c                                           ; $6554: $89
	xor  e                                           ; $6555: $ab
	jp   z, $99ba                                    ; $6556: $ca $ba $99

	ld   [hl], a                                     ; $6559: $77
	ld   h, l                                        ; $655a: $65
	ld   h, l                                        ; $655b: $65
	ld   d, [hl]                                     ; $655c: $56
	ld   h, [hl]                                     ; $655d: $66
	ld   a, b                                        ; $655e: $78
	sbc  e                                           ; $655f: $9b
	res  7, e                                        ; $6560: $cb $bb
	sbc  d                                           ; $6562: $9a
	ld   [hl], a                                     ; $6563: $77
	ld   h, l                                        ; $6564: $65
	ld   h, l                                        ; $6565: $65
	ld   d, [hl]                                     ; $6566: $56
	ld   h, [hl]                                     ; $6567: $66
	ld   a, c                                        ; $6568: $79
	sbc  e                                           ; $6569: $9b
	res  7, e                                        ; $656a: $cb $bb
	sbc  d                                           ; $656c: $9a
	ld   [hl], a                                     ; $656d: $77
	ld   h, l                                        ; $656e: $65
	ld   h, [hl]                                     ; $656f: $66
	ld   d, [hl]                                     ; $6570: $56
	ld   h, [hl]                                     ; $6571: $66
	ld   a, b                                        ; $6572: $78
	sbc  d                                           ; $6573: $9a
	res  7, d                                        ; $6574: $cb $ba
	xor  c                                           ; $6576: $a9
	add  a                                           ; $6577: $87
	ld   [hl], l                                     ; $6578: $75
	ld   d, [hl]                                     ; $6579: $56
	ld   d, [hl]                                     ; $657a: $56
	ld   h, [hl]                                     ; $657b: $66
	ld   a, b                                        ; $657c: $78
	xor  d                                           ; $657d: $aa
	cp   e                                           ; $657e: $bb
	cp   d                                           ; $657f: $ba
	xor  d                                           ; $6580: $aa
	add  a                                           ; $6581: $87
	ld   [hl], l                                     ; $6582: $75
	ld   d, [hl]                                     ; $6583: $56
	ld   d, [hl]                                     ; $6584: $56
	ld   h, [hl]                                     ; $6585: $66
	ld   a, b                                        ; $6586: $78
	sbc  d                                           ; $6587: $9a
	cp   e                                           ; $6588: $bb

Call_0ea_6589:
	xor  e                                           ; $6589: $ab
	sbc  d                                           ; $658a: $9a
	add  a                                           ; $658b: $87
	ld   [hl], l                                     ; $658c: $75
	ld   d, [hl]                                     ; $658d: $56
	ld   d, l                                        ; $658e: $55
	ld   h, [hl]                                     ; $658f: $66
	ld   [hl], a                                     ; $6590: $77
	sbc  c                                           ; $6591: $99
	xor  e                                           ; $6592: $ab
	xor  e                                           ; $6593: $ab
	sbc  d                                           ; $6594: $9a
	sub  a                                           ; $6595: $97
	halt                                             ; $6596: $76
	ld   d, [hl]                                     ; $6597: $56
	ld   d, l                                        ; $6598: $55

Jump_0ea_6599:
	ld   h, [hl]                                     ; $6599: $66
	ld   h, a                                        ; $659a: $67
	sbc  d                                           ; $659b: $9a
	cp   e                                           ; $659c: $bb
	cp   e                                           ; $659d: $bb
	xor  c                                           ; $659e: $a9
	sbc  b                                           ; $659f: $98
	add  a                                           ; $65a0: $87
	ld   d, [hl]                                     ; $65a1: $56
	ld   h, l                                        ; $65a2: $65
	ld   h, [hl]                                     ; $65a3: $66
	ld   h, a                                        ; $65a4: $67
	adc  c                                           ; $65a5: $89
	xor  e                                           ; $65a6: $ab
	xor  e                                           ; $65a7: $ab
	cp   d                                           ; $65a8: $ba
	xor  c                                           ; $65a9: $a9
	ld   [hl], a                                     ; $65aa: $77
	ld   h, l                                        ; $65ab: $65
	ld   h, l                                        ; $65ac: $65
	ld   d, [hl]                                     ; $65ad: $56
	ld   h, a                                        ; $65ae: $67
	adc  b                                           ; $65af: $88
	xor  d                                           ; $65b0: $aa
	cp   e                                           ; $65b1: $bb
	cp   d                                           ; $65b2: $ba
	sbc  c                                           ; $65b3: $99
	adc  b                                           ; $65b4: $88
	ld   h, l                                        ; $65b5: $65
	ld   h, [hl]                                     ; $65b6: $66
	ld   d, [hl]                                     ; $65b7: $56
	ld   h, [hl]                                     ; $65b8: $66
	ld   a, b                                        ; $65b9: $78
	sbc  d                                           ; $65ba: $9a
	cp   d                                           ; $65bb: $ba
	xor  d                                           ; $65bc: $aa
	sbc  d                                           ; $65bd: $9a
	sbc  b                                           ; $65be: $98
	halt                                             ; $65bf: $76
	ld   d, [hl]                                     ; $65c0: $56
	ld   d, l                                        ; $65c1: $55
	halt                                             ; $65c2: $76
	ld   a, b                                        ; $65c3: $78
	sbc  c                                           ; $65c4: $99
	xor  d                                           ; $65c5: $aa
	xor  e                                           ; $65c6: $ab
	xor  c                                           ; $65c7: $a9
	sbc  b                                           ; $65c8: $98
	add  a                                           ; $65c9: $87
	ld   h, [hl]                                     ; $65ca: $66
	ld   h, l                                        ; $65cb: $65
	ld   h, a                                        ; $65cc: $67
	ld   h, a                                        ; $65cd: $67
	adc  c                                           ; $65ce: $89
	xor  d                                           ; $65cf: $aa
	xor  d                                           ; $65d0: $aa
	xor  c                                           ; $65d1: $a9
	xor  c                                           ; $65d2: $a9
	adc  b                                           ; $65d3: $88
	ld   [hl], l                                     ; $65d4: $75
	ld   h, [hl]                                     ; $65d5: $66
	ld   d, a                                        ; $65d6: $57
	ld   h, [hl]                                     ; $65d7: $66
	ld   a, b                                        ; $65d8: $78
	sbc  d                                           ; $65d9: $9a
	xor  d                                           ; $65da: $aa
	cp   d                                           ; $65db: $ba
	sbc  d                                           ; $65dc: $9a
	adc  b                                           ; $65dd: $88
	halt                                             ; $65de: $76
	ld   d, [hl]                                     ; $65df: $56
	ld   h, l                                        ; $65e0: $65
	halt                                             ; $65e1: $76
	ld   l, b                                        ; $65e2: $68
	adc  c                                           ; $65e3: $89
	sbc  e                                           ; $65e4: $9b
	sbc  d                                           ; $65e5: $9a
	sbc  c                                           ; $65e6: $99
	xor  c                                           ; $65e7: $a9
	add  a                                           ; $65e8: $87
	ld   h, l                                        ; $65e9: $65
	halt                                             ; $65ea: $76
	ld   d, a                                        ; $65eb: $57
	ld   h, a                                        ; $65ec: $67
	ld   a, b                                        ; $65ed: $78
	sbc  d                                           ; $65ee: $9a
	xor  c                                           ; $65ef: $a9
	xor  c                                           ; $65f0: $a9
	xor  c                                           ; $65f1: $a9
	adc  b                                           ; $65f2: $88
	halt                                             ; $65f3: $76
	ld   d, a                                        ; $65f4: $57
	ld   h, [hl]                                     ; $65f5: $66
	halt                                             ; $65f6: $76
	ld   [hl], a                                     ; $65f7: $77
	adc  c                                           ; $65f8: $89
	xor  d                                           ; $65f9: $aa
	sbc  d                                           ; $65fa: $9a
	sbc  c                                           ; $65fb: $99
	sbc  c                                           ; $65fc: $99
	add  a                                           ; $65fd: $87
	ld   h, [hl]                                     ; $65fe: $66
	halt                                             ; $65ff: $76
	ld   h, a                                        ; $6600: $67
	ld   h, a                                        ; $6601: $67
	ld   a, b                                        ; $6602: $78
	sbc  d                                           ; $6603: $9a
	xor  c                                           ; $6604: $a9
	cp   c                                           ; $6605: $b9
	sbc  c                                           ; $6606: $99
	sbc  c                                           ; $6607: $99
	halt                                             ; $6608: $76
	ld   h, a                                        ; $6609: $67
	ld   h, [hl]                                     ; $660a: $66
	halt                                             ; $660b: $76
	ld   [hl], a                                     ; $660c: $77
	adc  b                                           ; $660d: $88
	sbc  d                                           ; $660e: $9a
	xor  e                                           ; $660f: $ab
	sbc  c                                           ; $6610: $99
	sbc  c                                           ; $6611: $99
	sub  a                                           ; $6612: $97
	ld   h, [hl]                                     ; $6613: $66
	halt                                             ; $6614: $76
	ld   h, a                                        ; $6615: $67
	ld   h, a                                        ; $6616: $67
	ld   a, b                                        ; $6617: $78
	adc  c                                           ; $6618: $89
	xor  d                                           ; $6619: $aa
	cp   c                                           ; $661a: $b9
	sbc  c                                           ; $661b: $99
	adc  c                                           ; $661c: $89
	ld   [hl], a                                     ; $661d: $77
	ld   d, a                                        ; $661e: $57
	ld   h, [hl]                                     ; $661f: $66
	halt                                             ; $6620: $76
	ld   [hl], a                                     ; $6621: $77
	adc  b                                           ; $6622: $88
	xor  d                                           ; $6623: $aa
	xor  e                                           ; $6624: $ab
	xor  d                                           ; $6625: $aa
	xor  b                                           ; $6626: $a8
	sbc  b                                           ; $6627: $98
	halt                                             ; $6628: $76
	halt                                             ; $6629: $76
	ld   h, a                                        ; $662a: $67
	ld   h, [hl]                                     ; $662b: $66
	ld   a, b                                        ; $662c: $78
	adc  d                                           ; $662d: $8a
	xor  d                                           ; $662e: $aa
	cp   d                                           ; $662f: $ba
	xor  d                                           ; $6630: $aa
	adc  b                                           ; $6631: $88
	add  a                                           ; $6632: $87
	ld   h, a                                        ; $6633: $67
	ld   h, l                                        ; $6634: $65
	halt                                             ; $6635: $76
	ld   h, a                                        ; $6636: $67
	ld   a, c                                        ; $6637: $79
	xor  d                                           ; $6638: $aa
	xor  e                                           ; $6639: $ab
	xor  d                                           ; $663a: $aa
	xor  c                                           ; $663b: $a9
	adc  b                                           ; $663c: $88
	ld   [hl], l                                     ; $663d: $75
	halt                                             ; $663e: $76
	ld   d, a                                        ; $663f: $57
	ld   h, [hl]                                     ; $6640: $66
	ld   [hl], a                                     ; $6641: $77
	sbc  c                                           ; $6642: $99
	xor  d                                           ; $6643: $aa
	cp   c                                           ; $6644: $b9
	xor  d                                           ; $6645: $aa
	sbc  b                                           ; $6646: $98
	add  a                                           ; $6647: $87
	ld   h, a                                        ; $6648: $67
	ld   h, l                                        ; $6649: $65
	halt                                             ; $664a: $76
	ld   h, a                                        ; $664b: $67
	ld   a, c                                        ; $664c: $79
	sbc  d                                           ; $664d: $9a
	xor  e                                           ; $664e: $ab
	sbc  d                                           ; $664f: $9a
	xor  c                                           ; $6650: $a9
	adc  b                                           ; $6651: $88
	halt                                             ; $6652: $76
	ld   [hl], a                                     ; $6653: $77
	ld   d, a                                        ; $6654: $57
	ld   h, [hl]                                     ; $6655: $66
	ld   [hl], a                                     ; $6656: $77
	sbc  c                                           ; $6657: $99
	xor  d                                           ; $6658: $aa
	cp   c                                           ; $6659: $b9
	xor  d                                           ; $665a: $aa
	sbc  b                                           ; $665b: $98
	add  a                                           ; $665c: $87
	ld   h, a                                        ; $665d: $67
	ld   [hl], l                                     ; $665e: $75
	halt                                             ; $665f: $76
	ld   h, a                                        ; $6660: $67
	ld   a, c                                        ; $6661: $79
	sbc  d                                           ; $6662: $9a
	xor  e                                           ; $6663: $ab
	xor  d                                           ; $6664: $aa
	xor  c                                           ; $6665: $a9
	adc  b                                           ; $6666: $88
	halt                                             ; $6667: $76
	ld   [hl], a                                     ; $6668: $77
	ld   d, a                                        ; $6669: $57
	ld   h, [hl]                                     ; $666a: $66
	ld   [hl], a                                     ; $666b: $77
	sbc  c                                           ; $666c: $99
	xor  d                                           ; $666d: $aa
	cp   d                                           ; $666e: $ba
	xor  d                                           ; $666f: $aa
	sbc  b                                           ; $6670: $98
	add  a                                           ; $6671: $87
	ld   h, a                                        ; $6672: $67
	ld   [hl], l                                     ; $6673: $75
	halt                                             ; $6674: $76
	ld   h, a                                        ; $6675: $67
	ld   a, c                                        ; $6676: $79
	sbc  d                                           ; $6677: $9a
	xor  e                                           ; $6678: $ab
	xor  d                                           ; $6679: $aa
	xor  c                                           ; $667a: $a9
	adc  b                                           ; $667b: $88
	halt                                             ; $667c: $76
	ld   [hl], a                                     ; $667d: $77
	ld   d, a                                        ; $667e: $57
	ld   h, [hl]                                     ; $667f: $66
	ld   [hl], a                                     ; $6680: $77
	sbc  c                                           ; $6681: $99
	xor  d                                           ; $6682: $aa

jr_0ea_6683:
	cp   d                                           ; $6683: $ba
	xor  d                                           ; $6684: $aa
	sbc  b                                           ; $6685: $98
	add  a                                           ; $6686: $87
	ld   h, a                                        ; $6687: $67

Jump_0ea_6688:
	ld   [hl], l                                     ; $6688: $75
	halt                                             ; $6689: $76
	ld   h, a                                        ; $668a: $67
	ld   a, b                                        ; $668b: $78
	sbc  d                                           ; $668c: $9a
	xor  d                                           ; $668d: $aa
	sbc  d                                           ; $668e: $9a
	xor  c                                           ; $668f: $a9
	adc  b                                           ; $6690: $88
	halt                                             ; $6691: $76
	ld   [hl], a                                     ; $6692: $77
	ld   d, a                                        ; $6693: $57
	ld   h, [hl]                                     ; $6694: $66
	ld   [hl], a                                     ; $6695: $77
	adc  d                                           ; $6696: $8a
	xor  d                                           ; $6697: $aa
	cp   d                                           ; $6698: $ba
	xor  d                                           ; $6699: $aa
	sbc  b                                           ; $669a: $98
	sub  a                                           ; $669b: $97
	ld   h, a                                        ; $669c: $67
	ld   h, [hl]                                     ; $669d: $66
	halt                                             ; $669e: $76
	ld   h, a                                        ; $669f: $67
	ld   a, b                                        ; $66a0: $78
	xor  c                                           ; $66a1: $a9
	sbc  e                                           ; $66a2: $9b
	sbc  d                                           ; $66a3: $9a
	xor  c                                           ; $66a4: $a9
	sbc  c                                           ; $66a5: $99
	halt                                             ; $66a6: $76
	add  [hl]                                        ; $66a7: $86
	ld   [hl], a                                     ; $66a8: $77
	ld   h, [hl]                                     ; $66a9: $66
	ld   [hl], a                                     ; $66aa: $77
	ld   a, d                                        ; $66ab: $7a
	adc  c                                           ; $66ac: $89
	xor  c                                           ; $66ad: $a9
	sbc  d                                           ; $66ae: $9a
	sbc  c                                           ; $66af: $99
	sub  a                                           ; $66b0: $97
	ld   l, b                                        ; $66b1: $68
	ld   h, a                                        ; $66b2: $67
	halt                                             ; $66b3: $76
	ld   h, a                                        ; $66b4: $67
	add  a                                           ; $66b5: $87
	xor  b                                           ; $66b6: $a8
	sbc  d                                           ; $66b7: $9a
	sbc  d                                           ; $66b8: $9a
	sbc  c                                           ; $66b9: $99
	adc  d                                           ; $66ba: $8a
	ld   [hl], l                                     ; $66bb: $75

jr_0ea_66bc:
	sub  [hl]                                        ; $66bc: $96
	ld   l, b                                        ; $66bd: $68
	ld   h, a                                        ; $66be: $67
	ld   a, b                                        ; $66bf: $78
	ld   l, d                                        ; $66c0: $6a
	sbc  b                                           ; $66c1: $98
	ret  z                                           ; $66c2: $c8

	sbc  d                                           ; $66c3: $9a
	sbc  b                                           ; $66c4: $98
	sbc  b                                           ; $66c5: $98
	ld   c, d                                        ; $66c6: $4a
	ld   h, l                                        ; $66c7: $65
	and  [hl]                                        ; $66c8: $a6
	ld   [hl], a                                     ; $66c9: $77
	sub  [hl]                                        ; $66ca: $96
	sbc  e                                           ; $66cb: $9b
	ld   a, h                                        ; $66cc: $7c
	adc  c                                           ; $66cd: $89
	xor  c                                           ; $66ce: $a9
	ld   a, c                                        ; $66cf: $79
	and  e                                           ; $66d0: $a3
	sub  a                                           ; $66d1: $97
	ld   c, c                                        ; $66d2: $49
	ld   h, a                                        ; $66d3: $67
	ld   a, c                                        ; $66d4: $79
	ld   l, c                                        ; $66d5: $69
	add  $c9                                         ; $66d6: $c6 $c9
	adc  d                                           ; $66d8: $8a
	add  a                                           ; $66d9: $87
	adc  e                                           ; $66da: $8b
	add  hl, sp                                      ; $66db: $39
	sub  e                                           ; $66dc: $93
	and  [hl]                                        ; $66dd: $a6
	ld   h, a                                        ; $66de: $67
	and  [hl]                                        ; $66df: $a6
	adc  h                                           ; $66e0: $8c
	ld   l, l                                        ; $66e1: $6d
	sbc  b                                           ; $66e2: $98
	cp   b                                           ; $66e3: $b8
	ld   [hl], a                                     ; $66e4: $77
	or   d                                           ; $66e5: $b2
	adc  c                                           ; $66e6: $89
	dec  hl                                          ; $66e7: $2b

jr_0ea_66e8:
	ld   h, [hl]                                     ; $66e8: $66
	ld   a, c                                        ; $66e9: $79
	ld   a, b                                        ; $66ea: $78
	push de                                          ; $66eb: $d5
	jp   c, $877b                                    ; $66ec: $da $7b $87

	ld   a, e                                        ; $66ef: $7b
	jr   jr_0ea_6683                                 ; $66f0: $18 $91

	or   [hl]                                        ; $66f2: $b6
	ld   [hl], a                                     ; $66f3: $77
	and  a                                           ; $66f4: $a7
	adc  [hl]                                        ; $66f5: $8e
	ld   e, [hl]                                     ; $66f6: $5e
	xor  b                                           ; $66f7: $a8
	and  a                                           ; $66f8: $a7
	ld   h, a                                        ; $66f9: $67
	or   c                                           ; $66fa: $b1
	xor  b                                           ; $66fb: $a8
	dec  de                                          ; $66fc: $1b
	ld   d, a                                        ; $66fd: $57
	ld   a, d                                        ; $66fe: $7a
	ld   l, c                                        ; $66ff: $69
	db   $e4                                         ; $6700: $e4
	add  sp, -$75                                    ; $6701: $e8 $8b
	ld   [hl], l                                     ; $6703: $75
	adc  c                                           ; $6704: $89
	dec  e                                           ; $6705: $1d
	ld   b, h                                        ; $6706: $44
	or   h                                           ; $6707: $b4
	add  a                                           ; $6708: $87
	or   h                                           ; $6709: $b4
	db   $db                                         ; $670a: $db
	ld   l, a                                        ; $670b: $6f
	ld   l, d                                        ; $670c: $6a
	sub  [hl]                                        ; $670d: $96
	ld   e, e                                        ; $670e: $5b
	ld   b, d                                        ; $670f: $42
	pop  hl                                          ; $6710: $e1
	adc  c                                           ; $6711: $89
	ld   d, a                                        ; $6712: $57
	sbc  c                                           ; $6713: $99
	ld   e, a                                        ; $6714: $5f
	ld   e, e                                        ; $6715: $5b
	push de                                          ; $6716: $d5
	rst  ToBoot                                         ; $6717: $c7
	ld   d, [hl]                                     ; $6718: $56
	or   c                                           ; $6719: $b1
	xor  b                                           ; $671a: $a8
	inc  e                                           ; $671b: $1c
	ld   d, a                                        ; $671c: $57
	ld   a, l                                        ; $671d: $7d
	ld   c, h                                        ; $671e: $4c
	di                                               ; $671f: $f3
	or   $aa                                         ; $6720: $f6 $aa
	ld   h, h                                        ; $6722: $64
	or   l                                           ; $6723: $b5
	rra                                              ; $6724: $1f
	jr   jr_0ea_66bc                                 ; $6725: $18 $95

	ld   a, c                                        ; $6727: $79
	or   e                                           ; $6728: $b3
	db   $f4                                         ; $6729: $f4
	cp   a                                           ; $672a: $bf
	ld   c, l                                        ; $672b: $4d
	ld   h, l                                        ; $672c: $65
	ld   l, e                                        ; $672d: $6b
	dec  de                                          ; $672e: $1b
	add  c                                           ; $672f: $81
	db   $e3                                         ; $6730: $e3
	add  [hl]                                        ; $6731: $86
	db   $e3                                         ; $6732: $e3
	rst  JumpTable                                         ; $6733: $df
	cpl                                              ; $6734: $2f
	ld   e, e                                        ; $6735: $5b
	and  h                                           ; $6736: $a4
	ld   e, d                                        ; $6737: $5a
	ld   sp, $b8f1                                   ; $6738: $31 $f1 $b8
	ld   d, a                                        ; $673b: $57
	cp   d                                           ; $673c: $ba
	ccf                                              ; $673d: $3f
	rra                                              ; $673e: $1f
	call nz, Call_0ea_57e4                           ; $673f: $c4 $e4 $57
	add  c                                           ; $6742: $81
	pop  af                                          ; $6743: $f1
	dec  a                                           ; $6744: $3d
	add  hl, hl                                      ; $6745: $29
	ld   l, a                                        ; $6746: $6f
	rra                                              ; $6747: $1f
	add  [hl]                                        ; $6748: $86
	pop  af                                          ; $6749: $f1
	push af                                          ; $674a: $f5
	ld   b, a                                        ; $674b: $47
	sub  c                                           ; $674c: $91
	and  a                                           ; $674d: $a7
	rra                                              ; $674e: $1f
	dec  de                                          ; $674f: $1b
	ld   e, a                                        ; $6750: $5f
	dec  l                                           ; $6751: $2d
	pop  af                                          ; $6752: $f1
	pop  af                                          ; $6753: $f1
	reti                                             ; $6754: $d9


	jr   z, jr_0ea_66e8                              ; $6755: $28 $91

	ld   l, e                                        ; $6757: $6b
	rra                                              ; $6758: $1f
	add  hl, hl                                      ; $6759: $29
	ld   l, [hl]                                     ; $675a: $6e
	ld   l, b                                        ; $675b: $68
	pop  af                                          ; $675c: $f1
	push af                                          ; $675d: $f5
	sbc  l                                           ; $675e: $9d
	ld   a, [de]                                     ; $675f: $1a
	ld   [hl], c                                     ; $6760: $71
	ld   c, h                                        ; $6761: $4c
	ld   e, $47                                      ; $6762: $1e $47
	ld   a, e                                        ; $6764: $7b
	and  h                                           ; $6765: $a4
	pop  af                                          ; $6766: $f1
	ld   hl, sp+$5f                                  ; $6767: $f8 $5f
	inc  e                                           ; $6769: $1c
	ld   h, c                                        ; $676a: $61
	ld   l, c                                        ; $676b: $69
	ld   e, $48                                      ; $676c: $1e $48
	ld   a, h                                        ; $676e: $7c
	sub  l                                           ; $676f: $95
	pop  af                                          ; $6770: $f1
	rst  $30                                         ; $6771: $f7
	ld   l, a                                        ; $6772: $6f
	dec  e                                           ; $6773: $1d
	ld   d, c                                        ; $6774: $51
	add  a                                           ; $6775: $87
	rra                                              ; $6776: $1f
	jr   z, jr_0ea_67f6                              ; $6777: $28 $7d

	sub  a                                           ; $6779: $97
	pop  af                                          ; $677a: $f1
	push af                                          ; $677b: $f5
	ld   a, a                                        ; $677c: $7f
	rra                                              ; $677d: $1f
	ld   hl, $1ec3                                   ; $677e: $21 $c3 $1e
	ld   a, [de]                                     ; $6781: $1a
	ld   l, [hl]                                     ; $6782: $6e
	ld   e, h                                        ; $6783: $5c
	pop  af                                          ; $6784: $f1
	pop  af                                          ; $6785: $f1
	rr   a                                           ; $6786: $cb $1f
	ld   [de], a                                     ; $6788: $12
	pop  bc                                          ; $6789: $c1
	ld   e, h                                        ; $678a: $5c
	ld   a, [hl+]                                    ; $678b: $2a
	ld   l, a                                        ; $678c: $6f
	cpl                                              ; $678d: $2f
	pop  hl                                          ; $678e: $e1
	pop  af                                          ; $678f: $f1
	push af                                          ; $6790: $f5
	rra                                              ; $6791: $1f
	add  hl, de                                      ; $6792: $19
	sub  c                                           ; $6793: $91
	or   [hl]                                        ; $6794: $b6
	ld   c, d                                        ; $6795: $4a
	adc  [hl]                                        ; $6796: $8e
	rra                                              ; $6797: $1f
	ld   e, e                                        ; $6798: $5b
	pop  af                                          ; $6799: $f1
	pop  af                                          ; $679a: $f1
	adc  l                                           ; $679b: $8d
	rra                                              ; $679c: $1f
	ld   sp, $88d2                                   ; $679d: $31 $d2 $88
	cp   d                                           ; $67a0: $ba
	ld   l, a                                        ; $67a1: $6f
	rra                                              ; $67a2: $1f
	or   c                                           ; $67a3: $b1
	pop  af                                          ; $67a4: $f1
	ldh  a, [c]                                      ; $67a5: $f2
	rra                                              ; $67a6: $1f
	ld   d, $c1                                      ; $67a7: $16 $c1
	or   [hl]                                        ; $67a9: $b6
	db   $f4                                         ; $67aa: $f4
	rst  $38                                         ; $67ab: $ff
	rra                                              ; $67ac: $1f
	dec  e                                           ; $67ad: $1d
	and  c                                           ; $67ae: $a1
	pop  af                                          ; $67af: $f1
	ld   a, l                                        ; $67b0: $7d
	ld   e, $45                                      ; $67b1: $1e $45
	sbc  b                                           ; $67b3: $98
	ldh  [c], a                                      ; $67b4: $e2
	push af                                          ; $67b5: $f5
	cp   a                                           ; $67b6: $bf
	rra                                              ; $67b7: $1f

Call_0ea_67b8:
	rla                                              ; $67b8: $17
	pop  de                                          ; $67b9: $d1
	pop  af                                          ; $67ba: $f1
	rra                                              ; $67bb: $1f
	dec  de                                          ; $67bc: $1b
	ld   l, [hl]                                     ; $67bd: $6e
	ld   a, d                                        ; $67be: $7a
	pop  af                                          ; $67bf: $f1
	rst  $30                                         ; $67c0: $f7
	ld   e, a                                        ; $67c1: $5f
	rra                                              ; $67c2: $1f
	ld   de, $c6f1                                   ; $67c3: $11 $f1 $c6
	dec  sp                                          ; $67c6: $3b
	ld   l, a                                        ; $67c7: $6f
	cpl                                              ; $67c8: $2f
	sbc  c                                           ; $67c9: $99
	pop  af                                          ; $67ca: $f1
	pop  af                                          ; $67cb: $f1
	ld   e, a                                        ; $67cc: $5f
	rra                                              ; $67cd: $1f
	ld   de, $c5f1                                   ; $67ce: $11 $f1 $c5
	rst  $20                                         ; $67d1: $e7
	cp   a                                           ; $67d2: $bf
	rra                                              ; $67d3: $1f
	ld   h, a                                        ; $67d4: $67
	pop  hl                                          ; $67d5: $e1
	pop  af                                          ; $67d6: $f1
	ld   c, [hl]                                     ; $67d7: $4e
	rra                                              ; $67d8: $1f
	inc  [hl]                                        ; $67d9: $34
	and  a                                           ; $67da: $a7
	call nc, $eff5                                   ; $67db: $d4 $f5 $ef
	rra                                              ; $67de: $1f
	dec  de                                          ; $67df: $1b
	add  c                                           ; $67e0: $81
	pop  af                                          ; $67e1: $f1
	ld   l, d                                        ; $67e2: $6a
	dec  e                                           ; $67e3: $1d
	ld   c, a                                        ; $67e4: $4f
	ld   c, a                                        ; $67e5: $4f
	push hl                                          ; $67e6: $e5
	pop  af                                          ; $67e7: $f1
	rst  $20                                         ; $67e8: $e7
	rra                                              ; $67e9: $1f
	ld   e, $41                                      ; $67ea: $1e $41
	pop  af                                          ; $67ec: $f1
	and  [hl]                                        ; $67ed: $a6
	cp   c                                           ; $67ee: $b9
	adc  a                                           ; $67ef: $8f
	rra                                              ; $67f0: $1f
	sub  l                                           ; $67f1: $95
	pop  af                                          ; $67f2: $f1
	pop  af                                          ; $67f3: $f1
	ld   c, [hl]                                     ; $67f4: $4e
	rra                                              ; $67f5: $1f

jr_0ea_67f6:
	inc  de                                          ; $67f6: $13
	and  l                                           ; $67f7: $a5
	db   $e3                                         ; $67f8: $e3
	or   $ef                                         ; $67f9: $f6 $ef
	rra                                              ; $67fb: $1f
	dec  e                                           ; $67fc: $1d
	ld   [hl], c                                     ; $67fd: $71
	pop  af                                          ; $67fe: $f1
	ld   l, d                                        ; $67ff: $6a
	inc  e                                           ; $6800: $1c
	ld   a, $4f                                      ; $6801: $3e $4f
	rst  $20                                         ; $6803: $e7
	pop  af                                          ; $6804: $f1
	or   $4f                                         ; $6805: $f6 $4f
	rra                                              ; $6807: $1f
	ld   de, $85f1                                   ; $6808: $11 $f1 $85
	or   a                                           ; $680b: $b7
	cp   a                                           ; $680c: $bf
	ccf                                              ; $680d: $3f
	adc  b                                           ; $680e: $88
	pop  hl                                          ; $680f: $e1
	pop  af                                          ; $6810: $f1
	adc  c                                           ; $6811: $89
	rra                                              ; $6812: $1f
	dec  d                                           ; $6813: $15
	ld   [hl], a                                     ; $6814: $77
	and  [hl]                                        ; $6815: $a6
	push af                                          ; $6816: $f5
	rst  $38                                         ; $6817: $ff
	ld   e, a                                        ; $6818: $5f
	rra                                              ; $6819: $1f
	ld   [de], a                                     ; $681a: $12
	pop  hl                                          ; $681b: $e1
	and  e                                           ; $681c: $a3
	add  hl, bc                                      ; $681d: $09
	ld   c, h                                        ; $681e: $4c
	ld   c, a                                        ; $681f: $4f
	sbc  a                                           ; $6820: $9f
	ldh  a, [c]                                      ; $6821: $f2
	di                                               ; $6822: $f3
	call nz, $1a1f                                   ; $6823: $c4 $1f $1a
	ld   b, c                                        ; $6826: $41
	and  e                                           ; $6827: $a3
	push de                                          ; $6828: $d5
	ei                                               ; $6829: $fb
	rst  JumpTable                                         ; $682a: $df
	ccf                                              ; $682b: $3f
	ld   e, h                                        ; $682c: $5c
	ld   d, c                                        ; $682d: $51
	pop  af                                          ; $682e: $f1
	sub  h                                           ; $682f: $94
	ld   a, [de]                                     ; $6830: $1a
	dec  a                                           ; $6831: $3d
	ld   l, a                                        ; $6832: $6f
	cp   l                                           ; $6833: $bd
	db   $f4                                         ; $6834: $f4
	or   $b3                                         ; $6835: $f6 $b3
	ld   c, h                                        ; $6837: $4c
	inc  e                                           ; $6838: $1c
	ld   de, $c794                                   ; $6839: $11 $94 $c7
	ld   a, [$5eff]                                  ; $683c: $fa $ff $5e
	ld   l, e                                        ; $683f: $6b
	jr   jr_0ea_68b3                                 ; $6840: $18 $71

	pop  de                                          ; $6842: $d1
	jr   c, jr_0ea_68b0                              ; $6843: $38 $6b

	sbc  a                                           ; $6845: $9f
	ld   a, a                                        ; $6846: $7f
	and  $d7                                         ; $6847: $e6 $d7
	and  c                                           ; $6849: $a1
	pop  de                                          ; $684a: $d1
	dec  de                                          ; $684b: $1b
	add  hl, de                                      ; $684c: $19
	ld   e, c                                        ; $684d: $59
	sbc  [hl]                                        ; $684e: $9e
	ld   hl, sp-$09                                  ; $684f: $f8 $f7
	cp   e                                           ; $6851: $bb
	sub  h                                           ; $6852: $94
	dec  sp                                          ; $6853: $3b
	ld   a, [de]                                     ; $6854: $1a
	ld   sp, $a9b5                                   ; $6855: $31 $b5 $a9
	ld   hl, sp-$01                                  ; $6858: $f8 $ff
	ld   c, l                                        ; $685a: $4d
	add  a                                           ; $685b: $87
	dec  e                                           ; $685c: $1d
	ld   de, $87c1                                   ; $685d: $11 $c1 $87
	sbc  c                                           ; $6860: $99
	db   $fd                                         ; $6861: $fd
	xor  a                                           ; $6862: $af
	ld   e, e                                        ; $6863: $5b
	and  a                                           ; $6864: $a7
	ld   a, [de]                                     ; $6865: $1a
	ld   sp, $59c1                                   ; $6866: $31 $c1 $59
	adc  c                                           ; $6869: $89
	rst  $28                                         ; $686a: $ef
	sbc  a                                           ; $686b: $9f
	adc  b                                           ; $686c: $88
	rst  ToBoot                                         ; $686d: $c7
	jr   jr_0ea_68b1                                 ; $686e: $18 $41

	and  c                                           ; $6870: $a1
	ld   c, c                                        ; $6871: $49
	adc  d                                           ; $6872: $8a
	rst  $28                                         ; $6873: $ef
	xor  a                                           ; $6874: $af

Jump_0ea_6875:
	add  a                                           ; $6875: $87
	rst  ToBoot                                         ; $6876: $c7
	ld   a, [de]                                     ; $6877: $1a
	ld   hl, $69a1                                   ; $6878: $21 $a1 $69
	xor  d                                           ; $687b: $aa
	rst  $28                                         ; $687c: $ef
	adc  a                                           ; $687d: $8f
	ld   h, a                                        ; $687e: $67
	jp   nz, $1148                                   ; $687f: $c2 $48 $11

	add  e                                           ; $6882: $83
	ld   l, e                                        ; $6883: $6b
	xor  d                                           ; $6884: $aa
	db   $fc                                         ; $6885: $fc
	cp   a                                           ; $6886: $bf
	ld   c, d                                        ; $6887: $4a
	sub  c                                           ; $6888: $91
	ld   [hl], l                                     ; $6889: $75
	dec  d                                           ; $688a: $15
	ld   h, h                                        ; $688b: $64
	sbc  h                                           ; $688c: $9c
	sbc  [hl]                                        ; $688d: $9e
	ld   hl, sp-$18                                  ; $688e: $f8 $e8
	ld   l, d                                        ; $6890: $6a
	inc  [hl]                                        ; $6891: $34
	ld   h, d                                        ; $6892: $62
	scf                                              ; $6893: $37
	ld   h, [hl]                                     ; $6894: $66
	ld   [$8cbf], a                                  ; $6895: $ea $bf $8c
	sub  [hl]                                        ; $6898: $96
	sub  l                                           ; $6899: $95
	ld   b, l                                        ; $689a: $45
	ld   b, e                                        ; $689b: $43
	ld   [hl], a                                     ; $689c: $77
	ld   a, h                                        ; $689d: $7c
	cp   e                                           ; $689e: $bb
	db   $db                                         ; $689f: $db
	xor  c                                           ; $68a0: $a9
	adc  b                                           ; $68a1: $88
	ld   d, l                                        ; $68a2: $55
	ld   d, h                                        ; $68a3: $54
	ld   d, [hl]                                     ; $68a4: $56
	ld   a, b                                        ; $68a5: $78
	xor  d                                           ; $68a6: $aa
	cp   h                                           ; $68a7: $bc
	sbc  d                                           ; $68a8: $9a
	sbc  b                                           ; $68a9: $98
	add  l                                           ; $68aa: $85
	ld   h, l                                        ; $68ab: $65
	ld   d, [hl]                                     ; $68ac: $56
	ld   a, c                                        ; $68ad: $79
	adc  e                                           ; $68ae: $8b
	xor  d                                           ; $68af: $aa

jr_0ea_68b0:
	cp   b                                           ; $68b0: $b8

jr_0ea_68b1:
	xor  b                                           ; $68b1: $a8
	halt                                             ; $68b2: $76

jr_0ea_68b3:
	ld   h, l                                        ; $68b3: $65
	ld   h, a                                        ; $68b4: $67
	ld   l, c                                        ; $68b5: $69
	adc  d                                           ; $68b6: $8a
	xor  d                                           ; $68b7: $aa
	sbc  c                                           ; $68b8: $99
	adc  b                                           ; $68b9: $88
	add  [hl]                                        ; $68ba: $86
	halt                                             ; $68bb: $76
	ld   h, a                                        ; $68bc: $67
	ld   l, b                                        ; $68bd: $68
	sbc  c                                           ; $68be: $99
	sbc  b                                           ; $68bf: $98
	sbc  b                                           ; $68c0: $98
	sbc  b                                           ; $68c1: $98
	ld   [hl], a                                     ; $68c2: $77
	ld   h, a                                        ; $68c3: $67
	ld   h, a                                        ; $68c4: $67
	adc  b                                           ; $68c5: $88
	sbc  c                                           ; $68c6: $99
	adc  c                                           ; $68c7: $89
	sbc  b                                           ; $68c8: $98
	sub  a                                           ; $68c9: $97
	ld   [hl], a                                     ; $68ca: $77
	halt                                             ; $68cb: $76
	add  a                                           ; $68cc: $87
	adc  b                                           ; $68cd: $88
	sbc  c                                           ; $68ce: $99
	adc  c                                           ; $68cf: $89
	adc  c                                           ; $68d0: $89
	adc  b                                           ; $68d1: $88
	ld   [hl], a                                     ; $68d2: $77
	ld   [hl], a                                     ; $68d3: $77
	add  a                                           ; $68d4: $87
	adc  c                                           ; $68d5: $89
	adc  c                                           ; $68d6: $89
	sbc  c                                           ; $68d7: $99
	sbc  c                                           ; $68d8: $99
	ld   [hl], a                                     ; $68d9: $77
	ld   [hl], a                                     ; $68da: $77
	ld   [hl], a                                     ; $68db: $77
	add  a                                           ; $68dc: $87
	adc  b                                           ; $68dd: $88
	sbc  b                                           ; $68de: $98
	adc  d                                           ; $68df: $8a
	adc  b                                           ; $68e0: $88
	add  a                                           ; $68e1: $87
	ld   a, b                                        ; $68e2: $78
	ld   h, a                                        ; $68e3: $67
	add  a                                           ; $68e4: $87
	ld   a, c                                        ; $68e5: $79
	adc  b                                           ; $68e6: $88
	adc  c                                           ; $68e7: $89
	sbc  c                                           ; $68e8: $99
	sbc  b                                           ; $68e9: $98
	ld   a, b                                        ; $68ea: $78
	ld   [hl], a                                     ; $68eb: $77
	ld   a, b                                        ; $68ec: $78
	ld   a, b                                        ; $68ed: $78
	adc  c                                           ; $68ee: $89
	adc  c                                           ; $68ef: $89
	sbc  c                                           ; $68f0: $99
	adc  b                                           ; $68f1: $88
	adc  b                                           ; $68f2: $88
	ld   [hl], a                                     ; $68f3: $77
	ld   a, b                                        ; $68f4: $78
	ld   a, c                                        ; $68f5: $79
	adc  b                                           ; $68f6: $88
	adc  c                                           ; $68f7: $89
	sbc  b                                           ; $68f8: $98
	sbc  b                                           ; $68f9: $98
	adc  b                                           ; $68fa: $88
	adc  b                                           ; $68fb: $88
	ld   a, b                                        ; $68fc: $78
	ld   a, b                                        ; $68fd: $78
	add  a                                           ; $68fe: $87
	sbc  c                                           ; $68ff: $99
	adc  c                                           ; $6900: $89
	sbc  b                                           ; $6901: $98
	adc  b                                           ; $6902: $88
	ld   a, c                                        ; $6903: $79
	adc  b                                           ; $6904: $88
	ld   a, b                                        ; $6905: $78
	add  a                                           ; $6906: $87
	add  a                                           ; $6907: $87
	adc  b                                           ; $6908: $88
	adc  b                                           ; $6909: $88
	sbc  b                                           ; $690a: $98
	adc  b                                           ; $690b: $88
	ld   a, c                                        ; $690c: $79
	add  a                                           ; $690d: $87
	adc  b                                           ; $690e: $88
	ld   a, b                                        ; $690f: $78
	sbc  b                                           ; $6910: $98
	adc  b                                           ; $6911: $88

Call_0ea_6912:
	sbc  b                                           ; $6912: $98
	adc  b                                           ; $6913: $88
	adc  b                                           ; $6914: $88
	adc  b                                           ; $6915: $88
	adc  b                                           ; $6916: $88
	adc  b                                           ; $6917: $88
	adc  b                                           ; $6918: $88
	ld   a, b                                        ; $6919: $78
	adc  b                                           ; $691a: $88
	adc  b                                           ; $691b: $88
	adc  c                                           ; $691c: $89
	adc  b                                           ; $691d: $88
	sbc  b                                           ; $691e: $98
	ld   a, c                                        ; $691f: $79
	add  a                                           ; $6920: $87
	sbc  b                                           ; $6921: $98
	ld   a, b                                        ; $6922: $78
	adc  b                                           ; $6923: $88
	adc  c                                           ; $6924: $89
	sbc  b                                           ; $6925: $98
	adc  b                                           ; $6926: $88
	adc  c                                           ; $6927: $89
	adc  b                                           ; $6928: $88
	adc  b                                           ; $6929: $88
	ld   a, b                                        ; $692a: $78
	adc  b                                           ; $692b: $88
	sbc  b                                           ; $692c: $98
	adc  c                                           ; $692d: $89
	sbc  b                                           ; $692e: $98
	sbc  b                                           ; $692f: $98
	adc  b                                           ; $6930: $88
	adc  b                                           ; $6931: $88
	ld   a, b                                        ; $6932: $78
	adc  b                                           ; $6933: $88
	add  a                                           ; $6934: $87
	sbc  b                                           ; $6935: $98
	adc  b                                           ; $6936: $88
	sbc  c                                           ; $6937: $99
	adc  b                                           ; $6938: $88
	sbc  b                                           ; $6939: $98
	adc  b                                           ; $693a: $88
	add  a                                           ; $693b: $87
	adc  b                                           ; $693c: $88
	adc  b                                           ; $693d: $88
	ld   a, b                                        ; $693e: $78
	adc  c                                           ; $693f: $89
	sbc  b                                           ; $6940: $98
	sbc  b                                           ; $6941: $98
	adc  b                                           ; $6942: $88
	adc  b                                           ; $6943: $88
	adc  b                                           ; $6944: $88
	adc  b                                           ; $6945: $88
	adc  b                                           ; $6946: $88
	adc  b                                           ; $6947: $88
	adc  b                                           ; $6948: $88
	adc  b                                           ; $6949: $88
	adc  b                                           ; $694a: $88
	adc  b                                           ; $694b: $88
	adc  b                                           ; $694c: $88
	adc  b                                           ; $694d: $88
	adc  b                                           ; $694e: $88
	adc  b                                           ; $694f: $88
	adc  b                                           ; $6950: $88
	adc  c                                           ; $6951: $89
	adc  b                                           ; $6952: $88
	adc  b                                           ; $6953: $88
	adc  b                                           ; $6954: $88
	adc  b                                           ; $6955: $88
	adc  b                                           ; $6956: $88
	adc  b                                           ; $6957: $88
	adc  b                                           ; $6958: $88
	adc  b                                           ; $6959: $88
	adc  b                                           ; $695a: $88
	adc  b                                           ; $695b: $88
	adc  b                                           ; $695c: $88
	adc  b                                           ; $695d: $88
	adc  b                                           ; $695e: $88
	adc  b                                           ; $695f: $88
	adc  b                                           ; $6960: $88
	adc  b                                           ; $6961: $88
	adc  b                                           ; $6962: $88
	adc  b                                           ; $6963: $88
	adc  b                                           ; $6964: $88
	adc  b                                           ; $6965: $88
	adc  b                                           ; $6966: $88
	adc  b                                           ; $6967: $88
	adc  b                                           ; $6968: $88
	adc  b                                           ; $6969: $88
	adc  b                                           ; $696a: $88
	adc  b                                           ; $696b: $88
	adc  b                                           ; $696c: $88
	adc  b                                           ; $696d: $88
	adc  b                                           ; $696e: $88
	adc  b                                           ; $696f: $88
	adc  b                                           ; $6970: $88
	adc  b                                           ; $6971: $88
	adc  b                                           ; $6972: $88
	adc  b                                           ; $6973: $88
	adc  b                                           ; $6974: $88
	adc  b                                           ; $6975: $88
	adc  b                                           ; $6976: $88
	adc  b                                           ; $6977: $88
	adc  b                                           ; $6978: $88
	adc  b                                           ; $6979: $88
	adc  b                                           ; $697a: $88
	adc  b                                           ; $697b: $88
	adc  b                                           ; $697c: $88
	adc  b                                           ; $697d: $88
	adc  b                                           ; $697e: $88
	adc  b                                           ; $697f: $88
	adc  b                                           ; $6980: $88
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	adc  b                                           ; $6983: $88
	adc  b                                           ; $6984: $88
	adc  b                                           ; $6985: $88
	adc  b                                           ; $6986: $88
	sbc  b                                           ; $6987: $98
	adc  b                                           ; $6988: $88
	adc  b                                           ; $6989: $88
	add  a                                           ; $698a: $87
	adc  b                                           ; $698b: $88
	adc  b                                           ; $698c: $88
	adc  b                                           ; $698d: $88
	adc  b                                           ; $698e: $88
	adc  b                                           ; $698f: $88
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	adc  b                                           ; $6992: $88
	adc  b                                           ; $6993: $88
	adc  b                                           ; $6994: $88
	adc  b                                           ; $6995: $88
	adc  b                                           ; $6996: $88
	adc  b                                           ; $6997: $88
	adc  b                                           ; $6998: $88
	adc  b                                           ; $6999: $88
	adc  b                                           ; $699a: $88
	adc  b                                           ; $699b: $88
	ld   a, b                                        ; $699c: $78
	adc  b                                           ; $699d: $88
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	adc  b                                           ; $69a0: $88
	adc  b                                           ; $69a1: $88
	adc  b                                           ; $69a2: $88
	adc  b                                           ; $69a3: $88
	adc  b                                           ; $69a4: $88
	adc  b                                           ; $69a5: $88
	adc  b                                           ; $69a6: $88
	adc  b                                           ; $69a7: $88
	adc  c                                           ; $69a8: $89
	adc  b                                           ; $69a9: $88
	adc  b                                           ; $69aa: $88
	adc  b                                           ; $69ab: $88
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	adc  b                                           ; $69af: $88
	adc  b                                           ; $69b0: $88
	adc  b                                           ; $69b1: $88
	adc  b                                           ; $69b2: $88
	adc  b                                           ; $69b3: $88
	adc  b                                           ; $69b4: $88
	adc  b                                           ; $69b5: $88
	adc  b                                           ; $69b6: $88
	adc  b                                           ; $69b7: $88
	adc  b                                           ; $69b8: $88
	adc  b                                           ; $69b9: $88
	adc  b                                           ; $69ba: $88
	adc  b                                           ; $69bb: $88
	adc  b                                           ; $69bc: $88
	adc  b                                           ; $69bd: $88
	adc  b                                           ; $69be: $88
	adc  b                                           ; $69bf: $88
	adc  b                                           ; $69c0: $88
	adc  b                                           ; $69c1: $88
	adc  b                                           ; $69c2: $88
	adc  b                                           ; $69c3: $88
	adc  b                                           ; $69c4: $88
	adc  b                                           ; $69c5: $88
	adc  b                                           ; $69c6: $88
	adc  b                                           ; $69c7: $88
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	adc  b                                           ; $69ca: $88
	adc  b                                           ; $69cb: $88
	adc  b                                           ; $69cc: $88
	adc  b                                           ; $69cd: $88
	adc  b                                           ; $69ce: $88
	adc  b                                           ; $69cf: $88
	adc  b                                           ; $69d0: $88
	adc  b                                           ; $69d1: $88
	adc  b                                           ; $69d2: $88
	adc  b                                           ; $69d3: $88
	adc  b                                           ; $69d4: $88
	adc  b                                           ; $69d5: $88
	adc  b                                           ; $69d6: $88
	adc  b                                           ; $69d7: $88
	adc  b                                           ; $69d8: $88
	adc  b                                           ; $69d9: $88
	adc  b                                           ; $69da: $88
	adc  b                                           ; $69db: $88
	adc  b                                           ; $69dc: $88
	adc  b                                           ; $69dd: $88
	adc  b                                           ; $69de: $88
	adc  b                                           ; $69df: $88
	adc  b                                           ; $69e0: $88
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	adc  b                                           ; $69e4: $88
	adc  b                                           ; $69e5: $88
	adc  b                                           ; $69e6: $88
	adc  b                                           ; $69e7: $88
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	sbc  b                                           ; $69eb: $98
	ld   a, c                                        ; $69ec: $79
	adc  b                                           ; $69ed: $88
	adc  b                                           ; $69ee: $88
	adc  b                                           ; $69ef: $88
	sbc  b                                           ; $69f0: $98
	adc  b                                           ; $69f1: $88
	adc  b                                           ; $69f2: $88
	adc  b                                           ; $69f3: $88
	adc  b                                           ; $69f4: $88
	adc  b                                           ; $69f5: $88
	adc  b                                           ; $69f6: $88
	adc  b                                           ; $69f7: $88
	adc  b                                           ; $69f8: $88
	adc  b                                           ; $69f9: $88
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	adc  b                                           ; $69fd: $88
	adc  b                                           ; $69fe: $88
	adc  b                                           ; $69ff: $88
	add  a                                           ; $6a00: $87
	adc  b                                           ; $6a01: $88
	adc  b                                           ; $6a02: $88
	adc  b                                           ; $6a03: $88
	adc  b                                           ; $6a04: $88
	adc  b                                           ; $6a05: $88
	adc  b                                           ; $6a06: $88
	sbc  b                                           ; $6a07: $98
	adc  c                                           ; $6a08: $89
	adc  b                                           ; $6a09: $88
	ld   a, b                                        ; $6a0a: $78
	adc  b                                           ; $6a0b: $88
	adc  b                                           ; $6a0c: $88
	adc  b                                           ; $6a0d: $88
	sbc  b                                           ; $6a0e: $98
	adc  b                                           ; $6a0f: $88
	adc  b                                           ; $6a10: $88
	adc  b                                           ; $6a11: $88
	adc  b                                           ; $6a12: $88
	adc  c                                           ; $6a13: $89
	add  a                                           ; $6a14: $87
	adc  b                                           ; $6a15: $88
	adc  b                                           ; $6a16: $88
	adc  b                                           ; $6a17: $88
	adc  c                                           ; $6a18: $89
	add  a                                           ; $6a19: $87
	adc  b                                           ; $6a1a: $88
	adc  c                                           ; $6a1b: $89
	adc  b                                           ; $6a1c: $88
	ld   a, b                                        ; $6a1d: $78
	adc  b                                           ; $6a1e: $88
	adc  b                                           ; $6a1f: $88
	sbc  b                                           ; $6a20: $98
	adc  b                                           ; $6a21: $88
	ld   a, b                                        ; $6a22: $78
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	add  a                                           ; $6a25: $87
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	adc  c                                           ; $6a2a: $89
	adc  b                                           ; $6a2b: $88
	adc  b                                           ; $6a2c: $88
	adc  b                                           ; $6a2d: $88
	adc  b                                           ; $6a2e: $88
	sbc  b                                           ; $6a2f: $98
	adc  b                                           ; $6a30: $88
	adc  b                                           ; $6a31: $88
	adc  b                                           ; $6a32: $88
	adc  b                                           ; $6a33: $88
	adc  b                                           ; $6a34: $88
	adc  b                                           ; $6a35: $88
	adc  b                                           ; $6a36: $88
	ld   a, c                                        ; $6a37: $79
	sbc  b                                           ; $6a38: $98
	adc  b                                           ; $6a39: $88
	adc  b                                           ; $6a3a: $88
	adc  b                                           ; $6a3b: $88
	adc  b                                           ; $6a3c: $88
	adc  b                                           ; $6a3d: $88
	adc  b                                           ; $6a3e: $88
	adc  b                                           ; $6a3f: $88
	adc  c                                           ; $6a40: $89
	adc  b                                           ; $6a41: $88
	adc  b                                           ; $6a42: $88
	adc  b                                           ; $6a43: $88
	adc  b                                           ; $6a44: $88
	adc  b                                           ; $6a45: $88
	adc  b                                           ; $6a46: $88
	adc  b                                           ; $6a47: $88
	adc  c                                           ; $6a48: $89
	adc  b                                           ; $6a49: $88
	adc  c                                           ; $6a4a: $89
	adc  b                                           ; $6a4b: $88
	sbc  b                                           ; $6a4c: $98
	adc  b                                           ; $6a4d: $88
	adc  b                                           ; $6a4e: $88
	add  a                                           ; $6a4f: $87
	adc  c                                           ; $6a50: $89
	adc  b                                           ; $6a51: $88
	ld   a, b                                        ; $6a52: $78
	adc  b                                           ; $6a53: $88
	add  a                                           ; $6a54: $87
	adc  b                                           ; $6a55: $88
	adc  b                                           ; $6a56: $88
	adc  b                                           ; $6a57: $88
	adc  b                                           ; $6a58: $88
	adc  b                                           ; $6a59: $88
	adc  c                                           ; $6a5a: $89
	adc  b                                           ; $6a5b: $88
	add  a                                           ; $6a5c: $87
	adc  c                                           ; $6a5d: $89
	add  a                                           ; $6a5e: $87
	sbc  b                                           ; $6a5f: $98
	adc  c                                           ; $6a60: $89
	sbc  b                                           ; $6a61: $98
	adc  b                                           ; $6a62: $88
	adc  b                                           ; $6a63: $88
	adc  b                                           ; $6a64: $88
	adc  b                                           ; $6a65: $88
	sub  a                                           ; $6a66: $97
	ld   a, b                                        ; $6a67: $78
	adc  b                                           ; $6a68: $88
	adc  b                                           ; $6a69: $88
	adc  c                                           ; $6a6a: $89
	add  a                                           ; $6a6b: $87
	sbc  b                                           ; $6a6c: $98
	adc  b                                           ; $6a6d: $88
	adc  b                                           ; $6a6e: $88
	add  a                                           ; $6a6f: $87
	adc  b                                           ; $6a70: $88
	adc  c                                           ; $6a71: $89
	adc  c                                           ; $6a72: $89
	adc  b                                           ; $6a73: $88
	adc  b                                           ; $6a74: $88
	adc  b                                           ; $6a75: $88
	adc  b                                           ; $6a76: $88
	ld   a, b                                        ; $6a77: $78
	adc  b                                           ; $6a78: $88
	adc  b                                           ; $6a79: $88
	sbc  b                                           ; $6a7a: $98
	adc  c                                           ; $6a7b: $89
	adc  b                                           ; $6a7c: $88
	sbc  b                                           ; $6a7d: $98
	adc  b                                           ; $6a7e: $88
	ld   [hl], a                                     ; $6a7f: $77
	ld   [hl], a                                     ; $6a80: $77
	adc  b                                           ; $6a81: $88
	adc  c                                           ; $6a82: $89
	adc  b                                           ; $6a83: $88
	sbc  c                                           ; $6a84: $99
	adc  b                                           ; $6a85: $88
	add  a                                           ; $6a86: $87
	add  a                                           ; $6a87: $87
	ld   [hl], a                                     ; $6a88: $77
	add  a                                           ; $6a89: $87
	adc  c                                           ; $6a8a: $89
	sbc  b                                           ; $6a8b: $98
	sbc  c                                           ; $6a8c: $99
	adc  b                                           ; $6a8d: $88
	adc  b                                           ; $6a8e: $88
	ld   [hl], a                                     ; $6a8f: $77
	ld   [hl], a                                     ; $6a90: $77
	ld   [hl], a                                     ; $6a91: $77
	adc  b                                           ; $6a92: $88
	adc  b                                           ; $6a93: $88
	sbc  b                                           ; $6a94: $98
	adc  c                                           ; $6a95: $89
	adc  b                                           ; $6a96: $88
	adc  b                                           ; $6a97: $88
	ld   [hl], a                                     ; $6a98: $77
	halt                                             ; $6a99: $76
	ld   [hl], a                                     ; $6a9a: $77
	sbc  c                                           ; $6a9b: $99
	xor  c                                           ; $6a9c: $a9
	sbc  c                                           ; $6a9d: $99
	sbc  c                                           ; $6a9e: $99
	add  a                                           ; $6a9f: $87
	add  a                                           ; $6aa0: $87
	ld   h, a                                        ; $6aa1: $67
	ld   h, [hl]                                     ; $6aa2: $66
	ld   a, b                                        ; $6aa3: $78
	adc  c                                           ; $6aa4: $89
	xor  d                                           ; $6aa5: $aa
	xor  d                                           ; $6aa6: $aa
	adc  c                                           ; $6aa7: $89
	ld   [hl], a                                     ; $6aa8: $77
	halt                                             ; $6aa9: $76
	ld   h, a                                        ; $6aaa: $67
	ld   h, [hl]                                     ; $6aab: $66
	ld   a, c                                        ; $6aac: $79
	xor  e                                           ; $6aad: $ab
	cp   d                                           ; $6aae: $ba
	xor  c                                           ; $6aaf: $a9
	sub  a                                           ; $6ab0: $97
	ld   [hl], a                                     ; $6ab1: $77
	ld   d, l                                        ; $6ab2: $55
	ld   h, [hl]                                     ; $6ab3: $66
	ld   h, a                                        ; $6ab4: $67
	adc  c                                           ; $6ab5: $89
	xor  h                                           ; $6ab6: $ac
	cp   d                                           ; $6ab7: $ba
	sbc  c                                           ; $6ab8: $99
	halt                                             ; $6ab9: $76
	halt                                             ; $6aba: $76
	ld   d, l                                        ; $6abb: $55
	ld   h, l                                        ; $6abc: $65
	ld   l, b                                        ; $6abd: $68
	sbc  d                                           ; $6abe: $9a
	call z, $98ab                                    ; $6abf: $cc $ab $98
	halt                                             ; $6ac2: $76
	ld   h, l                                        ; $6ac3: $65
	ld   b, l                                        ; $6ac4: $45
	ld   d, l                                        ; $6ac5: $55
	ld   a, b                                        ; $6ac6: $78
	xor  e                                           ; $6ac7: $ab
	db   $ec                                         ; $6ac8: $ec
	cp   d                                           ; $6ac9: $ba
	add  a                                           ; $6aca: $87
	ld   h, [hl]                                     ; $6acb: $66
	ld   b, h                                        ; $6acc: $44
	dec  [hl]                                        ; $6acd: $35
	ld   d, l                                        ; $6ace: $55
	ld   a, d                                        ; $6acf: $7a
	call $bbfd                                       ; $6ad0: $cd $fd $bb
	sub  [hl]                                        ; $6ad3: $96
	ld   d, l                                        ; $6ad4: $55
	inc  sp                                          ; $6ad5: $33
	dec  h                                           ; $6ad6: $25
	ld   b, l                                        ; $6ad7: $45
	sbc  e                                           ; $6ad8: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ad9: $cf
	db   $fd                                         ; $6ada: $fd
	db   $db                                         ; $6adb: $db
	ld   [hl], l                                     ; $6adc: $75
	ld   d, e                                        ; $6add: $53
	ld   [hl+], a                                    ; $6ade: $22
	inc  de                                          ; $6adf: $13
	ld   b, l                                        ; $6ae0: $45
	adc  h                                           ; $6ae1: $8c
	rst  $28                                         ; $6ae2: $ef
	cp   $db                                         ; $6ae3: $fe $db
	ld   [hl], h                                     ; $6ae5: $74
	ld   sp, $1211                                   ; $6ae6: $31 $11 $12
	ld   [hl], $ad                                   ; $6ae9: $36 $ad
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	ei                                               ; $6aed: $fb
	add  h                                           ; $6aee: $84
	ld   hl, $1111                                   ; $6aef: $21 $11 $11
	ld   h, $be                                      ; $6af2: $26 $be
	rst  $38                                         ; $6af4: $ff
	rst  $38                                         ; $6af5: $ff
	db   $fc                                         ; $6af6: $fc
	ld   [hl], l                                     ; $6af7: $75
	ld   de, $1111                                   ; $6af8: $11 $11 $11
	dec  h                                           ; $6afb: $25
	rst  JumpTable                                         ; $6afc: $df
	rst  $38                                         ; $6afd: $ff
	rst  $38                                         ; $6afe: $ff
	cp   $65                                         ; $6aff: $fe $65
	ld   de, $1111                                   ; $6b01: $11 $11 $11
	dec  d                                           ; $6b04: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b05: $cf
	rst  $38                                         ; $6b06: $ff
	rst  $38                                         ; $6b07: $ff
	cp   $75                                         ; $6b08: $fe $75
	ld   de, $1111                                   ; $6b0a: $11 $11 $11
	dec  d                                           ; $6b0d: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b0e: $cf
	rst  $38                                         ; $6b0f: $ff
	rst  $38                                         ; $6b10: $ff
	cp   $84                                         ; $6b11: $fe $84
	ld   de, $1111                                   ; $6b13: $11 $11 $11
	inc  d                                           ; $6b16: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b17: $cf
	rst  $38                                         ; $6b18: $ff
	rst  $38                                         ; $6b19: $ff
	rst  $38                                         ; $6b1a: $ff
	ld   [hl], h                                     ; $6b1b: $74
	ld   bc, $1111                                   ; $6b1c: $01 $11 $11
	inc  h                                           ; $6b1f: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b20: $cf
	rst  $38                                         ; $6b21: $ff
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	add  e                                           ; $6b24: $83
	ld   hl, $1111                                   ; $6b25: $21 $11 $11
	daa                                              ; $6b28: $27
	adc  a                                           ; $6b29: $8f
	rst  $38                                         ; $6b2a: $ff
	rst  $38                                         ; $6b2b: $ff
	db   $fd                                         ; $6b2c: $fd
	pop  bc                                          ; $6b2d: $c1
	ld   hl, $1111                                   ; $6b2e: $21 $11 $11
	jr   @-$5f                                       ; $6b31: $18 $9f

	rst  $38                                         ; $6b33: $ff
	rst  $38                                         ; $6b34: $ff
	db   $fd                                         ; $6b35: $fd
	add  $11                                         ; $6b36: $c6 $11
	ld   de, $1411                                   ; $6b38: $11 $11 $14
	call z, $ffff                                    ; $6b3b: $cc $ff $ff
	rst  $38                                         ; $6b3e: $ff
	cp   b                                           ; $6b3f: $b8
	ld   hl, $1111                                   ; $6b40: $21 $11 $11
	inc  de                                          ; $6b43: $13
	sbc  l                                           ; $6b44: $9d
	rst  $38                                         ; $6b45: $ff
	rst  $38                                         ; $6b46: $ff
	rst  $38                                         ; $6b47: $ff
	cp   c                                           ; $6b48: $b9
	ld   d, c                                        ; $6b49: $51
	ld   de, $1111                                   ; $6b4a: $11 $11 $11
	ld   l, [hl]                                     ; $6b4d: $6e
	rst  $38                                         ; $6b4e: $ff
	rst  $38                                         ; $6b4f: $ff
	rst  $38                                         ; $6b50: $ff
	ld   sp, hl                                      ; $6b51: $f9
	ld   [hl], e                                     ; $6b52: $73
	ld   de, $1111                                   ; $6b53: $11 $11 $11
	ld   a, [hl+]                                    ; $6b56: $2a
	rst  $38                                         ; $6b57: $ff
	rst  $38                                         ; $6b58: $ff
	rst  $38                                         ; $6b59: $ff
	ei                                               ; $6b5a: $fb
	sub  [hl]                                        ; $6b5b: $96
	ld   de, $1111                                   ; $6b5c: $11 $11 $11
	dec  d                                           ; $6b5f: $15
	call $ffff                                       ; $6b60: $cd $ff $ff
	rst  $38                                         ; $6b63: $ff
	cp   d                                           ; $6b64: $ba
	ld   [hl-], a                                    ; $6b65: $32
	ld   de, $1111                                   ; $6b66: $11 $11 $11
	ld   a, e                                        ; $6b69: $7b
	rst  $38                                         ; $6b6a: $ff
	rst  $38                                         ; $6b6b: $ff
	rst  $38                                         ; $6b6c: $ff
	ei                                               ; $6b6d: $fb
	add  h                                           ; $6b6e: $84
	ld   hl, $1111                                   ; $6b6f: $21 $11 $11
	rla                                              ; $6b72: $17
	xor  a                                           ; $6b73: $af
	rst  $38                                         ; $6b74: $ff
	rst  $38                                         ; $6b75: $ff
	rst  $38                                         ; $6b76: $ff
	cp   c                                           ; $6b77: $b9
	ld   d, d                                        ; $6b78: $52
	ld   de, $1111                                   ; $6b79: $11 $11 $11
	ld   l, c                                        ; $6b7c: $69
	rst  $28                                         ; $6b7d: $ef
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	db   $ec                                         ; $6b80: $ec

jr_0ea_6b81:
	sub  l                                           ; $6b81: $95
	ld   d, c                                        ; $6b82: $51
	ld   de, $1411                                   ; $6b83: $11 $11 $14
	sbc  d                                           ; $6b86: $9a
	rst  $38                                         ; $6b87: $ff
	rst  $38                                         ; $6b88: $ff
	rst  $38                                         ; $6b89: $ff
	bit  6, l                                        ; $6b8a: $cb $75
	ld   d, c                                        ; $6b8c: $51
	ld   de, $2511                                   ; $6b8d: $11 $11 $25
	xor  l                                           ; $6b90: $ad
	rst  $28                                         ; $6b91: $ef
	rst  $38                                         ; $6b92: $ff
	rst  $38                                         ; $6b93: $ff
	cp   c                                           ; $6b94: $b9
	add  h                                           ; $6b95: $84
	ld   b, d                                        ; $6b96: $42
	ld   de, $2711                                   ; $6b97: $11 $11 $27
	xor  h                                           ; $6b9a: $ac
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	cp   $cb                                         ; $6b9d: $fe $cb
	ld   h, [hl]                                     ; $6b9f: $66
	ld   sp, $1111                                   ; $6ba0: $31 $11 $11
	scf                                              ; $6ba3: $37
	xor  [hl]                                        ; $6ba4: $ae
	rst  $38                                         ; $6ba5: $ff
	rst  $38                                         ; $6ba6: $ff
	db   $fd                                         ; $6ba7: $fd
	jp   z, $2165                                    ; $6ba8: $ca $65 $21

	ld   de, $3811                                   ; $6bab: $11 $11 $38
	adc  $ff                                         ; $6bae: $ce $ff
	rst  $38                                         ; $6bb0: $ff
	db   $fc                                         ; $6bb1: $fc
	cp   b                                           ; $6bb2: $b8
	ld   h, l                                        ; $6bb3: $65
	ld   hl, $1211                                   ; $6bb4: $21 $11 $12
	add  hl, sp                                      ; $6bb7: $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bb8: $cf
	rst  $38                                         ; $6bb9: $ff
	rst  $38                                         ; $6bba: $ff
	ei                                               ; $6bbb: $fb
	ret                                              ; $6bbc: $c9


	ld   h, l                                        ; $6bbd: $65
	ld   hl, $1111                                   ; $6bbe: $21 $11 $11
	jr   c, jr_0ea_6b81                              ; $6bc1: $38 $be

	rst  $38                                         ; $6bc3: $ff
	rst  $38                                         ; $6bc4: $ff
	db   $fc                                         ; $6bc5: $fc
	cp   b                                           ; $6bc6: $b8
	ld   d, h                                        ; $6bc7: $54
	ld   sp, $1111                                   ; $6bc8: $31 $11 $11
	jr   c, @-$51                                    ; $6bcb: $38 $ad

	rst  $38                                         ; $6bcd: $ff
	rst  $38                                         ; $6bce: $ff
	db   $fd                                         ; $6bcf: $fd
	xor  c                                           ; $6bd0: $a9
	ld   h, a                                        ; $6bd1: $67
	inc  sp                                          ; $6bd2: $33
	ld   hl, $3511                                   ; $6bd3: $21 $11 $35
	xor  h                                           ; $6bd6: $ac
	rst  $38                                         ; $6bd7: $ff
	rst  $38                                         ; $6bd8: $ff
	cp   $b9                                         ; $6bd9: $fe $b9
	ld   h, l                                        ; $6bdb: $65
	ld   b, e                                        ; $6bdc: $43
	ld   de, $3411                                   ; $6bdd: $11 $11 $34
	sbc  l                                           ; $6be0: $9d
	rst  $28                                         ; $6be1: $ef
	rst  $38                                         ; $6be2: $ff
	cp   $aa                                         ; $6be3: $fe $aa
	ld   [hl], l                                     ; $6be5: $75
	ld   h, e                                        ; $6be6: $63
	ld   hl, $1411                                   ; $6be7: $21 $11 $14
	ld   l, e                                        ; $6bea: $6b
	xor  $ff                                         ; $6beb: $ee $ff
	cp   $cb                                         ; $6bed: $fe $cb
	add  [hl]                                        ; $6bef: $86
	ld   d, e                                        ; $6bf0: $53
	ld   hl, $1211                                   ; $6bf1: $21 $11 $12
	ld   a, e                                        ; $6bf4: $7b
	rst  $28                                         ; $6bf5: $ef
	rst  $38                                         ; $6bf6: $ff
	rst  $38                                         ; $6bf7: $ff
	jp   z, Jump_0ea_4395                            ; $6bf8: $ca $95 $43

	ld   sp, $1311                                   ; $6bfb: $31 $11 $13
	ld   l, d                                        ; $6bfe: $6a

Call_0ea_6bff:
	rst  $28                                         ; $6bff: $ef
	rst  $38                                         ; $6c00: $ff
	rst  $38                                         ; $6c01: $ff
	ld   [$5277], a                                  ; $6c02: $ea $77 $52
	ld   b, d                                        ; $6c05: $42
	ld   de, $4a11                                   ; $6c06: $11 $11 $4a
	sbc  $ff                                         ; $6c09: $de $ff
	rst  $38                                         ; $6c0b: $ff
	ld   a, [$4387]                                  ; $6c0c: $fa $87 $43
	ld   b, d                                        ; $6c0f: $42
	ld   de, $4a11                                   ; $6c10: $11 $11 $4a
	rst  JumpTable                                         ; $6c13: $df
	rst  $38                                         ; $6c14: $ff
	rst  $38                                         ; $6c15: $ff
	ld   [$5487], a                                  ; $6c16: $ea $87 $54
	ld   b, e                                        ; $6c19: $43
	ld   de, $5711                                   ; $6c1a: $11 $11 $57
	rst  JumpTable                                         ; $6c1d: $df
	rst  $38                                         ; $6c1e: $ff
	rst  $38                                         ; $6c1f: $ff
	ld   a, [$7486]                                  ; $6c20: $fa $86 $74
	ld   b, h                                        ; $6c23: $44
	ld   de, $3611                                   ; $6c24: $11 $11 $36
	cp   a                                           ; $6c27: $bf
	rst  $38                                         ; $6c28: $ff
	rst  $38                                         ; $6c29: $ff
	ei                                               ; $6c2a: $fb
	and  [hl]                                        ; $6c2b: $a6
	ld   [hl], l                                     ; $6c2c: $75
	dec  [hl]                                        ; $6c2d: $35
	ld   de, $3611                                   ; $6c2e: $11 $11 $36
	cp   a                                           ; $6c31: $bf
	rst  $38                                         ; $6c32: $ff
	rst  $38                                         ; $6c33: $ff
	ei                                               ; $6c34: $fb
	sub  [hl]                                        ; $6c35: $96
	halt                                             ; $6c36: $76
	dec  [hl]                                        ; $6c37: $35
	ld   de, $2511                                   ; $6c38: $11 $11 $25
	cp   a                                           ; $6c3b: $bf
	rst  $28                                         ; $6c3c: $ef
	cp   $fe                                         ; $6c3d: $fe $fe
	sub  a                                           ; $6c3f: $97
	halt                                             ; $6c40: $76
	ld   [hl], $11                                   ; $6c41: $36 $11
	ld   de, $8e15                                   ; $6c43: $11 $15 $8e
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	db   $fd                                         ; $6c48: $fd
	xor  b                                           ; $6c49: $a8
	ld   l, c                                        ; $6c4a: $69
	dec  h                                           ; $6c4b: $25
	ld   b, c                                        ; $6c4c: $41
	ld   de, $9d13                                   ; $6c4d: $11 $13 $9d
	rst  $38                                         ; $6c50: $ff
	rst  $38                                         ; $6c51: $ff
	cp   $a7                                         ; $6c52: $fe $a7
	ld   [hl], a                                     ; $6c54: $77
	dec  [hl]                                        ; $6c55: $35
	ld   sp, $1311                                   ; $6c56: $31 $11 $13
	sbc  l                                           ; $6c59: $9d
	cp   $ff                                         ; $6c5a: $fe $ff
	rst  JumpTable                                         ; $6c5c: $df
	sub  a                                           ; $6c5d: $97
	ld   l, b                                        ; $6c5e: $68
	ld   [hl], $61                                   ; $6c5f: $36 $61
	ld   de, $7b13                                   ; $6c61: $11 $13 $7b
	rst  $38                                         ; $6c64: $ff
	rst  $38                                         ; $6c65: $ff
	rst  $38                                         ; $6c66: $ff
	ret  z                                           ; $6c67: $c8

	halt                                             ; $6c68: $76
	ld   h, h                                        ; $6c69: $64
	ld   d, c                                        ; $6c6a: $51
	ld   de, $7c12                                   ; $6c6b: $11 $12 $7c
	rst  $38                                         ; $6c6e: $ff
	rst  $38                                         ; $6c6f: $ff
	xor  $b7                                         ; $6c70: $ee $b7
	ld   [hl], a                                     ; $6c72: $77
	ld   [hl], h                                     ; $6c73: $74
	ld   h, d                                        ; $6c74: $62
	ld   de, $5911                                   ; $6c75: $11 $11 $59
	rst  $28                                         ; $6c78: $ef
	rst  $38                                         ; $6c79: $ff
	rst  $38                                         ; $6c7a: $ff
	ret                                              ; $6c7b: $c9


	halt                                             ; $6c7c: $76
	halt                                             ; $6c7d: $76
	ld   h, h                                        ; $6c7e: $64
	ld   de, $3711                                   ; $6c7f: $11 $11 $37
	xor  $ff                                         ; $6c82: $ee $ff
	rst  $38                                         ; $6c84: $ff
	ld   [$6579], a                                  ; $6c85: $ea $79 $65
	ld   h, h                                        ; $6c88: $64
	ld   de, $3811                                   ; $6c89: $11 $11 $38
	rst  JumpTable                                         ; $6c8c: $df
	rst  $38                                         ; $6c8d: $ff
	rst  $38                                         ; $6c8e: $ff
	ld   [$6677], a                                  ; $6c8f: $ea $77 $66
	ld   d, h                                        ; $6c92: $54
	ld   hl, $4611                                   ; $6c93: $21 $11 $46
	cp   a                                           ; $6c96: $bf
	rst  $38                                         ; $6c97: $ff
	rst  $38                                         ; $6c98: $ff
	db   $ec                                         ; $6c99: $ec
	add  [hl]                                        ; $6c9a: $86
	halt                                             ; $6c9b: $76
	ld   b, h                                        ; $6c9c: $44
	ld   hl, $2711                                   ; $6c9d: $21 $11 $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ca0: $cf
	rst  $38                                         ; $6ca1: $ff
	rst  $38                                         ; $6ca2: $ff
	db   $eb                                         ; $6ca3: $eb
	adc  c                                           ; $6ca4: $89
	ld   h, [hl]                                     ; $6ca5: $66
	ld   d, h                                        ; $6ca6: $54
	ld   hl, $2611                                   ; $6ca7: $21 $11 $26
	cp   a                                           ; $6caa: $bf
	rst  $38                                         ; $6cab: $ff
	rst  $38                                         ; $6cac: $ff
	db   $eb                                         ; $6cad: $eb
	ld   a, b                                        ; $6cae: $78
	halt                                             ; $6caf: $76
	ld   h, h                                        ; $6cb0: $64
	ld   de, $3711                                   ; $6cb1: $11 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cb4: $cf
	rst  $38                                         ; $6cb5: $ff
	rst  $38                                         ; $6cb6: $ff
	db   $db                                         ; $6cb7: $db
	sub  a                                           ; $6cb8: $97
	halt                                             ; $6cb9: $76
	ld   h, e                                        ; $6cba: $63
	ld   de, $3711                                   ; $6cbb: $11 $11 $37
	rst  JumpTable                                         ; $6cbe: $df
	rst  $38                                         ; $6cbf: $ff
	rst  $38                                         ; $6cc0: $ff
	jp   c, Jump_0ea_5697                            ; $6cc1: $da $97 $56

	ld   h, c                                        ; $6cc4: $61
	ld   de, $5711                                   ; $6cc5: $11 $11 $57
	rst  $28                                         ; $6cc8: $ef
	rst  $38                                         ; $6cc9: $ff
	rst  $38                                         ; $6cca: $ff
	bit  6, a                                        ; $6ccb: $cb $77
	ld   h, [hl]                                     ; $6ccd: $66
	ld   d, d                                        ; $6cce: $52
	ld   de, $6811                                   ; $6ccf: $11 $11 $68
	rst  $38                                         ; $6cd2: $ff
	rst  $38                                         ; $6cd3: $ff
	cp   $ba                                         ; $6cd4: $fe $ba
	halt                                             ; $6cd6: $76
	ld   h, [hl]                                     ; $6cd7: $66
	ld   b, c                                        ; $6cd8: $41
	ld   de, $6b13                                   ; $6cd9: $11 $13 $6b
	rst  $38                                         ; $6cdc: $ff
	rst  $38                                         ; $6cdd: $ff
	db   $fd                                         ; $6cde: $fd
	xor  c                                           ; $6cdf: $a9
	ld   a, b                                        ; $6ce0: $78
	ld   d, [hl]                                     ; $6ce1: $56
	ld   sp, $1511                                   ; $6ce2: $31 $11 $15
	ld   l, [hl]                                     ; $6ce5: $6e
	rst  $38                                         ; $6ce6: $ff
	rst  $38                                         ; $6ce7: $ff
	db   $fc                                         ; $6ce8: $fc
	xor  b                                           ; $6ce9: $a8
	add  [hl]                                        ; $6cea: $86
	ld   [hl], h                                     ; $6ceb: $74
	ld   de, $2511                                   ; $6cec: $11 $11 $25
	xor  a                                           ; $6cef: $af
	rst  $38                                         ; $6cf0: $ff
	rst  $38                                         ; $6cf1: $ff
	db   $db                                         ; $6cf2: $db
	and  a                                           ; $6cf3: $a7
	halt                                             ; $6cf4: $76
	ld   h, d                                        ; $6cf5: $62
	ld   de, $4711                                   ; $6cf6: $11 $11 $47
	rst  $38                                         ; $6cf9: $ff
	rst  $38                                         ; $6cfa: $ff
	rst  $38                                         ; $6cfb: $ff
	cp   e                                           ; $6cfc: $bb
	ld   a, b                                        ; $6cfd: $78
	ld   h, a                                        ; $6cfe: $67
	ld   b, c                                        ; $6cff: $41
	ld   de, $4a14                                   ; $6d00: $11 $14 $4a
	rst  $38                                         ; $6d03: $ff
	rst  $38                                         ; $6d04: $ff
	db   $fc                                         ; $6d05: $fc
	ret                                              ; $6d06: $c9


	ld   [hl], a                                     ; $6d07: $77
	halt                                             ; $6d08: $76
	ld   de, $1511                                   ; $6d09: $11 $11 $15
	ld   l, l                                        ; $6d0c: $6d
	rst  $38                                         ; $6d0d: $ff
	rst  $38                                         ; $6d0e: $ff
	ei                                               ; $6d0f: $fb
	cp   c                                           ; $6d10: $b9
	ld   [hl], a                                     ; $6d11: $77
	ld   [hl], d                                     ; $6d12: $72
	ld   de, $5511                                   ; $6d13: $11 $11 $55
	cp   a                                           ; $6d16: $bf
	rst  $38                                         ; $6d17: $ff
	rst  $38                                         ; $6d18: $ff
	call z, Call_0ea_67b8                            ; $6d19: $cc $b8 $67
	ld   b, c                                        ; $6d1c: $41
	ld   de, $5a15                                   ; $6d1d: $11 $15 $5a
	rst  $38                                         ; $6d20: $ff
	rst  $38                                         ; $6d21: $ff
	db   $fc                                         ; $6d22: $fc
	res  0, a                                        ; $6d23: $cb $87
	ld   h, e                                        ; $6d25: $63
	ld   de, $5511                                   ; $6d26: $11 $11 $55
	cp   a                                           ; $6d29: $bf
	rst  $38                                         ; $6d2a: $ff
	rst  $38                                         ; $6d2b: $ff
	call c, $87b7                                    ; $6d2c: $dc $b7 $87
	ld   b, c                                        ; $6d2f: $41
	ld   de, $4916                                   ; $6d30: $11 $16 $49
	rst  $38                                         ; $6d33: $ff
	rst  $38                                         ; $6d34: $ff
	db   $fc                                         ; $6d35: $fc
	call c, $8488                                    ; $6d36: $dc $88 $84
	ld   de, $5511                                   ; $6d39: $11 $11 $55
	sbc  a                                           ; $6d3c: $9f
	rst  $28                                         ; $6d3d: $ef
	rst  $38                                         ; $6d3e: $ff
	call c, $87c9                                    ; $6d3f: $dc $c9 $87
	ld   b, c                                        ; $6d42: $41
	ld   de, $5a16                                   ; $6d43: $11 $16 $5a
	rst  $38                                         ; $6d46: $ff
	rst  $38                                         ; $6d47: $ff
	db   $fc                                         ; $6d48: $fc
	res  2, a                                        ; $6d49: $cb $97
	ld   [hl], e                                     ; $6d4b: $73
	ld   de, $7411                                   ; $6d4c: $11 $11 $74
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d4f: $cf
	rst  JumpTable                                         ; $6d50: $df
	rst  $38                                         ; $6d51: $ff
	cp   h                                           ; $6d52: $bc
	or   a                                           ; $6d53: $b7
	adc  b                                           ; $6d54: $88
	ld   hl, $1611                                   ; $6d55: $21 $11 $16
	ld   l, h                                        ; $6d58: $6c
	rst  $38                                         ; $6d59: $ff
	rst  $38                                         ; $6d5a: $ff
	ei                                               ; $6d5b: $fb
	cp   e                                           ; $6d5c: $bb
	add  a                                           ; $6d5d: $87
	ld   h, d                                        ; $6d5e: $62
	ld   de, $3715                                   ; $6d5f: $11 $15 $37
	cp   $ef                                         ; $6d62: $fe $ef
	db   $fc                                         ; $6d64: $fc
	call z, $8488                                    ; $6d65: $cc $88 $84
	ld   de, $5311                                   ; $6d68: $11 $11 $53
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d6b: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d6c: $cf
	rst  $38                                         ; $6d6d: $ff
	call $86a7                                       ; $6d6e: $cd $a7 $86
	ld   hl, $5411                                   ; $6d71: $21 $11 $54
	ld   l, [hl]                                     ; $6d74: $6e
	xor  $ff                                         ; $6d75: $ee $ff
	call c, Call_0ea_77d9                            ; $6d77: $dc $d9 $77
	ld   b, c                                        ; $6d7a: $41
	ld   de, $2d25                                   ; $6d7b: $11 $25 $2d
	db   $fc                                         ; $6d7e: $fc
	rst  $38                                         ; $6d7f: $ff
	db   $fc                                         ; $6d80: $fc
	jp   c, $5167                                    ; $6d81: $da $67 $51

	ld   de, $3715                                   ; $6d84: $11 $15 $37
	db   $fd                                         ; $6d87: $fd
	rst  $28                                         ; $6d88: $ef
	cp   $cc                                         ; $6d89: $fe $cc
	add  [hl]                                        ; $6d8b: $86
	ld   h, e                                        ; $6d8c: $63
	ld   de, $5413                                   ; $6d8d: $11 $13 $54
	sbc  $cf                                         ; $6d90: $de $cf
	rst  $38                                         ; $6d92: $ff
	call Call_0ea_75a7                               ; $6d93: $cd $a7 $75
	ld   hl, $6411                                   ; $6d96: $21 $11 $64
	adc  [hl]                                        ; $6d99: $8e
	cp   h                                           ; $6d9a: $bc
	rst  $38                                         ; $6d9b: $ff
	call c, Call_0ea_76b8                            ; $6d9c: $dc $b8 $76
	ld   b, d                                        ; $6d9f: $42
	ld   de, $5a37                                   ; $6da0: $11 $37 $5a
	set  3, a                                        ; $6da3: $cb $df
	ei                                               ; $6da5: $fb
	res  0, a                                        ; $6da6: $cb $87
	ld   h, l                                        ; $6da8: $65
	ld   [hl-], a                                    ; $6da9: $32
	dec  d                                           ; $6daa: $15
	ld   [hl], l                                     ; $6dab: $75
	sbc  h                                           ; $6dac: $9c
	adc  h                                           ; $6dad: $8c
	db   $ed                                         ; $6dae: $ed
	cp   e                                           ; $6daf: $bb
	or   a                                           ; $6db0: $b7
	ld   [hl], a                                     ; $6db1: $77
	ld   h, l                                        ; $6db2: $65
	ld   d, e                                        ; $6db3: $53
	ld   c, c                                        ; $6db4: $49
	ld   h, [hl]                                     ; $6db5: $66
	cp   c                                           ; $6db6: $b9
	sbc  e                                           ; $6db7: $9b
	res  5, d                                        ; $6db8: $cb $aa
	add  a                                           ; $6dba: $87
	add  a                                           ; $6dbb: $87
	ld   [hl], a                                     ; $6dbc: $77
	ld   h, h                                        ; $6dbd: $64
	ld   a, b                                        ; $6dbe: $78
	ld   l, b                                        ; $6dbf: $68
	adc  b                                           ; $6dc0: $88
	sbc  d                                           ; $6dc1: $9a
	xor  d                                           ; $6dc2: $aa
	adc  b                                           ; $6dc3: $88
	adc  c                                           ; $6dc4: $89
	adc  c                                           ; $6dc5: $89
	adc  b                                           ; $6dc6: $88
	halt                                             ; $6dc7: $76
	ld   a, c                                        ; $6dc8: $79
	halt                                             ; $6dc9: $76
	add  a                                           ; $6dca: $87
	ld   a, c                                        ; $6dcb: $79
	sbc  b                                           ; $6dcc: $98
	adc  b                                           ; $6dcd: $88
	sbc  c                                           ; $6dce: $99
	sbc  c                                           ; $6dcf: $99
	sbc  b                                           ; $6dd0: $98
	adc  b                                           ; $6dd1: $88
	ld   [hl], a                                     ; $6dd2: $77
	adc  b                                           ; $6dd3: $88
	ld   h, a                                        ; $6dd4: $67
	add  a                                           ; $6dd5: $87
	ld   a, b                                        ; $6dd6: $78
	sbc  b                                           ; $6dd7: $98
	sbc  c                                           ; $6dd8: $99
	adc  c                                           ; $6dd9: $89
	sbc  c                                           ; $6dda: $99
	sbc  c                                           ; $6ddb: $99
	add  [hl]                                        ; $6ddc: $86
	adc  b                                           ; $6ddd: $88
	ld   [hl], a                                     ; $6dde: $77
	add  a                                           ; $6ddf: $87
	ld   [hl], a                                     ; $6de0: $77
	adc  b                                           ; $6de1: $88
	adc  b                                           ; $6de2: $88
	sbc  c                                           ; $6de3: $99
	adc  b                                           ; $6de4: $88
	sbc  b                                           ; $6de5: $98
	adc  c                                           ; $6de6: $89
	ld   a, b                                        ; $6de7: $78
	adc  b                                           ; $6de8: $88
	ld   a, b                                        ; $6de9: $78
	add  a                                           ; $6dea: $87
	ld   a, b                                        ; $6deb: $78
	add  a                                           ; $6dec: $87
	adc  c                                           ; $6ded: $89
	adc  b                                           ; $6dee: $88
	sbc  b                                           ; $6def: $98
	adc  b                                           ; $6df0: $88
	sbc  b                                           ; $6df1: $98
	adc  b                                           ; $6df2: $88
	sbc  b                                           ; $6df3: $98
	ld   a, b                                        ; $6df4: $78
	adc  b                                           ; $6df5: $88
	ld   a, b                                        ; $6df6: $78
	adc  b                                           ; $6df7: $88
	ld   a, c                                        ; $6df8: $79
	sub  a                                           ; $6df9: $97
	adc  c                                           ; $6dfa: $89
	add  a                                           ; $6dfb: $87
	adc  b                                           ; $6dfc: $88
	adc  b                                           ; $6dfd: $88
	sbc  b                                           ; $6dfe: $98
	adc  b                                           ; $6dff: $88
	adc  b                                           ; $6e00: $88
	adc  b                                           ; $6e01: $88
	adc  b                                           ; $6e02: $88
	adc  b                                           ; $6e03: $88
	ld   a, b                                        ; $6e04: $78
	adc  b                                           ; $6e05: $88
	adc  c                                           ; $6e06: $89
	sub  a                                           ; $6e07: $97
	ld   a, c                                        ; $6e08: $79
	add  a                                           ; $6e09: $87
	adc  c                                           ; $6e0a: $89
	adc  b                                           ; $6e0b: $88
	sbc  c                                           ; $6e0c: $99
	add  a                                           ; $6e0d: $87
	sbc  b                                           ; $6e0e: $98
	ld   a, b                                        ; $6e0f: $78
	sbc  b                                           ; $6e10: $98
	ld   a, b                                        ; $6e11: $78
	adc  b                                           ; $6e12: $88
	adc  b                                           ; $6e13: $88
	adc  b                                           ; $6e14: $88
	adc  c                                           ; $6e15: $89
	adc  b                                           ; $6e16: $88
	adc  b                                           ; $6e17: $88
	adc  b                                           ; $6e18: $88
	adc  b                                           ; $6e19: $88
	adc  b                                           ; $6e1a: $88
	adc  b                                           ; $6e1b: $88
	adc  c                                           ; $6e1c: $89
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
	sbc  b                                           ; $6f63: $98
	adc  b                                           ; $6f64: $88
	adc  c                                           ; $6f65: $89
	sbc  b                                           ; $6f66: $98
	ld   [hl], a                                     ; $6f67: $77
	sbc  c                                           ; $6f68: $99
	ld   a, b                                        ; $6f69: $78
	adc  c                                           ; $6f6a: $89
	sbc  b                                           ; $6f6b: $98
	adc  b                                           ; $6f6c: $88
	adc  b                                           ; $6f6d: $88
	ld   [hl], a                                     ; $6f6e: $77
	adc  b                                           ; $6f6f: $88
	ld   a, b                                        ; $6f70: $78
	sbc  b                                           ; $6f71: $98
	ld   a, c                                        ; $6f72: $79
	sbc  c                                           ; $6f73: $99
	halt                                             ; $6f74: $76
	adc  e                                           ; $6f75: $8b
	sub  [hl]                                        ; $6f76: $96
	ld   l, b                                        ; $6f77: $68
	sub  a                                           ; $6f78: $97
	ld   a, b                                        ; $6f79: $78
	sbc  c                                           ; $6f7a: $99
	ld   [hl], a                                     ; $6f7b: $77
	adc  b                                           ; $6f7c: $88
	adc  b                                           ; $6f7d: $88
	adc  b                                           ; $6f7e: $88
	ld   [hl], a                                     ; $6f7f: $77
	adc  c                                           ; $6f80: $89
	add  a                                           ; $6f81: $87
	adc  c                                           ; $6f82: $89
	adc  b                                           ; $6f83: $88
	ld   a, b                                        ; $6f84: $78
	add  a                                           ; $6f85: $87
	ld   h, a                                        ; $6f86: $67
	ld   [hl], a                                     ; $6f87: $77
	ld   [hl], a                                     ; $6f88: $77
	adc  b                                           ; $6f89: $88
	sbc  d                                           ; $6f8a: $9a
	xor  c                                           ; $6f8b: $a9
	sbc  c                                           ; $6f8c: $99
	adc  b                                           ; $6f8d: $88
	add  l                                           ; $6f8e: $85
	dec  [hl]                                        ; $6f8f: $35
	sub  a                                           ; $6f90: $97
	ld   h, [hl]                                     ; $6f91: $66
	sbc  e                                           ; $6f92: $9b
	sbc  c                                           ; $6f93: $99
	sbc  c                                           ; $6f94: $99
	sbc  c                                           ; $6f95: $99
	sbc  e                                           ; $6f96: $9b
	xor  b                                           ; $6f97: $a8
	sbc  b                                           ; $6f98: $98
	ld   [hl], l                                     ; $6f99: $75
	ld   [hl+], a                                    ; $6f9a: $22
	sub  a                                           ; $6f9b: $97
	ld   [hl], a                                     ; $6f9c: $77
	ld   a, e                                        ; $6f9d: $7b
	xor  e                                           ; $6f9e: $ab
	xor  d                                           ; $6f9f: $aa
	cp   e                                           ; $6fa0: $bb
	sbc  c                                           ; $6fa1: $99
	sbc  b                                           ; $6fa2: $98
	sub  l                                           ; $6fa3: $95
	ld   hl, $8a29                                   ; $6fa4: $21 $29 $8a
	ld   l, d                                        ; $6fa7: $6a
	db   $dd                                         ; $6fa8: $dd
	jp   z, $a7ab                                    ; $6fa9: $ca $ab $a7

	sub  a                                           ; $6fac: $97
	sub  [hl]                                        ; $6fad: $96
	ld   de, $8c19                                   ; $6fae: $11 $19 $8c
	ld   a, d                                        ; $6fb1: $7a
	cp   $da                                         ; $6fb2: $fe $da
	sbc  d                                           ; $6fb4: $9a
	and  a                                           ; $6fb5: $a7
	add  a                                           ; $6fb6: $87
	ld   [hl], l                                     ; $6fb7: $75
	ld   de, $bd2a                                   ; $6fb8: $11 $2a $bd
	ld   a, [hl]                                     ; $6fbb: $7e
	cp   $d9                                         ; $6fbc: $fe $d9
	adc  d                                           ; $6fbe: $8a
	sub  a                                           ; $6fbf: $97
	add  a                                           ; $6fc0: $87
	ld   [hl], d                                     ; $6fc1: $72
	ld   de, $eb7b                                   ; $6fc2: $11 $7b $eb
	adc  a                                           ; $6fc5: $8f
	rst  $38                                         ; $6fc6: $ff
	and  a                                           ; $6fc7: $a7
	adc  e                                           ; $6fc8: $8b
	sbc  b                                           ; $6fc9: $98
	sub  [hl]                                        ; $6fca: $96
	ld   d, c                                        ; $6fcb: $51
	ld   de, $f8ac                                   ; $6fcc: $11 $ac $f8
	rst  JumpTable                                         ; $6fcf: $df
	db   $ed                                         ; $6fd0: $ed
	sub  a                                           ; $6fd1: $97
	adc  d                                           ; $6fd2: $8a
	sbc  e                                           ; $6fd3: $9b
	add  [hl]                                        ; $6fd4: $86
	ld   hl, $cf15                                   ; $6fd5: $21 $15 $cf
	ld   sp, hl                                      ; $6fd8: $f9
	rst  $38                                         ; $6fd9: $ff
	ld   [$aa76], a                                  ; $6fda: $ea $76 $aa
	xor  h                                           ; $6fdd: $ac
	ld   [hl], l                                     ; $6fde: $75
	ld   de, $df1a                                   ; $6fdf: $11 $1a $df
	cp   d                                           ; $6fe2: $ba
	cp   $e8                                         ; $6fe3: $fe $e8
	ld   h, [hl]                                     ; $6fe5: $66
	xor  c                                           ; $6fe6: $a9
	bit  6, h                                        ; $6fe7: $cb $74
	ld   de, $ff1d                                   ; $6fe9: $11 $1d $ff
	xor  h                                           ; $6fec: $ac
	db   $fc                                         ; $6fed: $fc
	sub  $66                                         ; $6fee: $d6 $66
	cp   e                                           ; $6ff0: $bb
	reti                                             ; $6ff1: $d9


	ld   h, c                                        ; $6ff2: $61
	ld   de, $ff2f                                   ; $6ff3: $11 $2f $ff
	sbc  l                                           ; $6ff6: $9d
	call c, Call_0ea_57c5                            ; $6ff7: $dc $c5 $57
	set  5, b                                        ; $6ffa: $cb $e8
	ld   d, c                                        ; $6ffc: $51
	ld   de, $ff6f                                   ; $6ffd: $11 $6f $ff
	sbc  a                                           ; $7000: $9f
	cp   l                                           ; $7001: $bd
	sub  l                                           ; $7002: $95
	ld   e, c                                        ; $7003: $59
	call $31e6                                       ; $7004: $cd $e6 $31
	ld   de, $ffaf                                   ; $7007: $11 $af $ff
	xor  a                                           ; $700a: $af
	sbc  l                                           ; $700b: $9d
	ld   h, l                                        ; $700c: $65
	ld   e, e                                        ; $700d: $5b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $700e: $cf
	db   $e4                                         ; $700f: $e4
	ld   de, $ef11                                   ; $7010: $11 $11 $ef
	db   $fd                                         ; $7013: $fd
	cp   l                                           ; $7014: $bd
	sbc  h                                           ; $7015: $9c
	ld   d, [hl]                                     ; $7016: $56
	ld   e, h                                        ; $7017: $5c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7018: $cf
	and  e                                           ; $7019: $a3
	ld   de, rAUD1LOW                                   ; $701a: $11 $13 $ff
	ld   a, [$a9db]                                  ; $701d: $fa $db $a9
	ld   d, [hl]                                     ; $7020: $56
	ld   a, [hl]                                     ; $7021: $7e
	rst  JumpTable                                         ; $7022: $df
	ld   [hl], c                                     ; $7023: $71
	ld   de, $ff19                                   ; $7024: $11 $19 $ff
	ld   sp, hl                                      ; $7027: $f9
	rst  $10                                         ; $7028: $d7
	and  [hl]                                        ; $7029: $a6
	ld   d, l                                        ; $702a: $55
	cp   [hl]                                        ; $702b: $be
	rst  $38                                         ; $702c: $ff
	ld   sp, $1f11                                   ; $702d: $31 $11 $1f
	rst  $38                                         ; $7030: $ff
	ld   [$94c6], a                                  ; $7031: $ea $c6 $94
	halt                                             ; $7034: $76
	db   $ed                                         ; $7035: $ed
	ei                                               ; $7036: $fb
	ld   de, $4f11                                   ; $7037: $11 $11 $4f
	rst  $38                                         ; $703a: $ff
	cp   h                                           ; $703b: $bc
	add  a                                           ; $703c: $87
	ld   [hl], l                                     ; $703d: $75
	ld   a, b                                        ; $703e: $78
	db   $fd                                         ; $703f: $fd
	push af                                          ; $7040: $f5
	ld   de, $df11                                   ; $7041: $11 $11 $df
	rst  $38                                         ; $7044: $ff
	adc  h                                           ; $7045: $8c
	ld   e, b                                        ; $7046: $58
	ld   b, a                                        ; $7047: $47
	ld   l, h                                        ; $7048: $6c
	rst  $38                                         ; $7049: $ff
	pop  af                                          ; $704a: $f1
	ld   de, rAUD1LEN                                   ; $704b: $11 $11 $ff
	rst  $38                                         ; $704e: $ff
	adc  d                                           ; $704f: $8a
	ld   b, a                                        ; $7050: $47
	jr   c, @+$71                                    ; $7051: $38 $6f

	rst  $38                                         ; $7053: $ff
	and  c                                           ; $7054: $a1
	ld   de, $ff17                                   ; $7055: $11 $17 $ff
	ld   a, [$55a5]                                  ; $7058: $fa $a5 $55
	ld   e, b                                        ; $705b: $58
	sbc  a                                           ; $705c: $9f
	rst  $38                                         ; $705d: $ff
	ld   sp, $1e11                                   ; $705e: $31 $11 $1e
	rst  $38                                         ; $7061: $ff
	rst  $30                                         ; $7062: $f7
	and  d                                           ; $7063: $a2
	ld   h, e                                        ; $7064: $63
	add  a                                           ; $7065: $87
	rst  $28                                         ; $7066: $ef
	cp   $11                                         ; $7067: $fe $11
	ld   de, $ff1f                                   ; $7069: $11 $1f $ff
	rst  $30                                         ; $706c: $f7
	ld   h, d                                        ; $706d: $62
	ld   h, h                                        ; $706e: $64
	or   a                                           ; $706f: $b7
	rst  $38                                         ; $7070: $ff
	ld   sp, hl                                      ; $7071: $f9
	ld   de, $8f11                                   ; $7072: $11 $11 $8f
	rst  $38                                         ; $7075: $ff
	sbc  b                                           ; $7076: $98
	inc  [hl]                                        ; $7077: $34
	ld   b, [hl]                                     ; $7078: $46
	xor  e                                           ; $7079: $ab
	rst  $38                                         ; $707a: $ff
	pop  af                                          ; $707b: $f1
	ld   de, rAUD1LEN                                   ; $707c: $11 $11 $ff
	rst  $38                                         ; $707f: $ff
	ld   h, [hl]                                     ; $7080: $66
	ld   h, $49                                      ; $7081: $26 $49
	sbc  a                                           ; $7083: $9f
	rst  $38                                         ; $7084: $ff
	and  c                                           ; $7085: $a1
	ld   de, $ff1a                                   ; $7086: $11 $1a $ff
	ld   a, [$3563]                                  ; $7089: $fa $63 $35
	ld   a, e                                        ; $708c: $7b
	xor  a                                           ; $708d: $af
	rst  $38                                         ; $708e: $ff
	ld   bc, $2f11                                   ; $708f: $01 $11 $2f
	rst  $38                                         ; $7092: $ff
	or   $51                                         ; $7093: $f6 $51
	ld   d, h                                        ; $7095: $54
	cp   d                                           ; $7096: $ba
	rst  $38                                         ; $7097: $ff
	ld   sp, hl                                      ; $7098: $f9
	ld   de, $cf11                                   ; $7099: $11 $11 $cf
	rst  $38                                         ; $709c: $ff
	sub  l                                           ; $709d: $95
	inc  hl                                          ; $709e: $23
	ld   e, b                                        ; $709f: $58
	cp   h                                           ; $70a0: $bc
	rst  $38                                         ; $70a1: $ff
	pop  de                                          ; $70a2: $d1
	ld   de, $ff15                                   ; $70a3: $11 $15 $ff
	rst  $38                                         ; $70a6: $ff
	ld   d, e                                        ; $70a7: $53
	dec  d                                           ; $70a8: $15
	ld   l, e                                        ; $70a9: $6b
	xor  a                                           ; $70aa: $af
	cp   $51                                         ; $70ab: $fe $51
	ld   de, $ff1f                                   ; $70ad: $11 $1f $ff
	or   $32                                         ; $70b0: $f6 $32
	ld   b, [hl]                                     ; $70b2: $46
	xor  e                                           ; $70b3: $ab
	rst  $38                                         ; $70b4: $ff
	jp   hl                                          ; $70b5: $e9


	ld   de, $ef11                                   ; $70b6: $11 $11 $ef
	rst  $38                                         ; $70b9: $ff
	sub  e                                           ; $70ba: $93
	inc  d                                           ; $70bb: $14
	ld   l, c                                        ; $70bc: $69
	cp   l                                           ; $70bd: $bd
	rst  $38                                         ; $70be: $ff
	or   c                                           ; $70bf: $b1
	ld   de, $ff1a                                   ; $70c0: $11 $1a $ff
	ei                                               ; $70c3: $fb
	ld   sp, $9c36                                   ; $70c4: $31 $36 $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70c7: $cf
	db   $fc                                         ; $70c8: $fc
	ld   de, $7f11                                   ; $70c9: $11 $11 $7f
	rst  $38                                         ; $70cc: $ff
	call nz, Call_0ea_6912                           ; $70cd: $c4 $12 $69
	set  7, a                                        ; $70d0: $cb $ff
	db   $d3                                         ; $70d2: $d3
	ld   de, rAUD1HIGH                                   ; $70d3: $11 $14 $ff
	cp   $51                                         ; $70d6: $fe $51
	dec  h                                           ; $70d8: $25
	adc  h                                           ; $70d9: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70da: $cf
	db   $fd                                         ; $70db: $fd
	ld   b, c                                        ; $70dc: $41
	ld   de, $ff1f                                   ; $70dd: $11 $1f $ff
	or   $11                                         ; $70e0: $f6 $11
	ld   d, a                                        ; $70e2: $57
	call z, $d6ef                                    ; $70e3: $cc $ef $d6
	ld   de, rAUD1LEN                                   ; $70e6: $11 $11 $ff
	rst  $38                                         ; $70e9: $ff
	ld   h, c                                        ; $70ea: $61
	dec  d                                           ; $70eb: $15
	adc  e                                           ; $70ec: $8b
	xor  [hl]                                        ; $70ed: $ae
	cp   $61                                         ; $70ee: $fe $61
	ld   de, $ff1f                                   ; $70f0: $11 $1f $ff
	or   $11                                         ; $70f3: $f6 $11
	ld   d, a                                        ; $70f5: $57
	cp   e                                           ; $70f6: $bb
	rst  $28                                         ; $70f7: $ef
	sub  $11                                         ; $70f8: $d6 $11
	ld   de, $ffff                                   ; $70fa: $11 $ff $ff
	ld   h, c                                        ; $70fd: $61
	dec  d                                           ; $70fe: $15
	ld   a, h                                        ; $70ff: $7c
	cp   [hl]                                        ; $7100: $be
	db   $fd                                         ; $7101: $fd
	ld   h, c                                        ; $7102: $61
	ld   de, $ff1f                                   ; $7103: $11 $1f $ff
	or   $11                                         ; $7106: $f6 $11
	ld   d, a                                        ; $7108: $57
	cp   h                                           ; $7109: $bc
	rst  $38                                         ; $710a: $ff
	push de                                          ; $710b: $d5
	ld   de, rAUD1LOW                                   ; $710c: $11 $13 $ff
	cp   $61                                         ; $710f: $fe $61
	dec  h                                           ; $7111: $25
	adc  h                                           ; $7112: $8c
	cp   a                                           ; $7113: $bf
	db   $fd                                         ; $7114: $fd
	ld   sp, $6f11                                   ; $7115: $31 $11 $6f
	rst  $38                                         ; $7118: $ff
	push bc                                          ; $7119: $c5
	inc  de                                          ; $711a: $13
	ld   e, b                                        ; $711b: $58
	cp   e                                           ; $711c: $bb
	rst  $38                                         ; $711d: $ff
	pop  bc                                          ; $711e: $c1
	ld   de, $ff1b                                   ; $711f: $11 $1b $ff
	ei                                               ; $7122: $fb
	ld   sp, $9a55                                   ; $7123: $31 $55 $9a
	rst  JumpTable                                         ; $7126: $df
	ld   a, [$1111]                                  ; $7127: $fa $11 $11
	rst  $28                                         ; $712a: $ef
	rst  $38                                         ; $712b: $ff
	sub  d                                           ; $712c: $92
	dec  d                                           ; $712d: $15
	ld   l, d                                        ; $712e: $6a
	xor  l                                           ; $712f: $ad
	cp   $71                                         ; $7130: $fe $71
	ld   de, $ff2f                                   ; $7132: $11 $2f $ff
	rst  $20                                         ; $7135: $e7
	inc  d                                           ; $7136: $14
	ld   e, b                                        ; $7137: $58
	cp   d                                           ; $7138: $ba
	rst  $38                                         ; $7139: $ff
	jp   $1811                                       ; $713a: $c3 $11 $18


	rst  $38                                         ; $713d: $ff
	ei                                               ; $713e: $fb
	ld   d, d                                        ; $713f: $52
	ld   d, l                                        ; $7140: $55
	sbc  c                                           ; $7141: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7142: $cf
	ld   a, [$1111]                                  ; $7143: $fa $11 $11
	rst  JumpTable                                         ; $7146: $df
	rst  $38                                         ; $7147: $ff
	and  e                                           ; $7148: $a3
	dec  [hl]                                        ; $7149: $35
	ld   l, d                                        ; $714a: $6a
	sbc  l                                           ; $714b: $9d
	cp   $61                                         ; $714c: $fe $61
	ld   de, $ff3f                                   ; $714e: $11 $3f $ff
	ret  c                                           ; $7151: $d8

	dec  h                                           ; $7152: $25
	ld   d, a                                        ; $7153: $57
	xor  d                                           ; $7154: $aa
	xor  $b2                                         ; $7155: $ee $b2
	ld   de, $ff19                                   ; $7157: $11 $19 $ff
	ei                                               ; $715a: $fb
	ld   d, e                                        ; $715b: $53
	ld   h, l                                        ; $715c: $65
	sbc  d                                           ; $715d: $9a
	cp   [hl]                                        ; $715e: $be
	jp   hl                                          ; $715f: $e9


	ld   de, rAUD1LEN                                   ; $7160: $11 $11 $ff
	cp   $83                                         ; $7163: $fe $83
	ld   h, [hl]                                     ; $7165: $66
	ld   l, c                                        ; $7166: $69
	xor  l                                           ; $7167: $ad
	db   $fd                                         ; $7168: $fd
	ld   sp, $9f11                                   ; $7169: $31 $11 $9f
	rst  $38                                         ; $716c: $ff
	or   l                                           ; $716d: $b5
	ld   b, a                                        ; $716e: $47
	ld   e, c                                        ; $716f: $59
	sbc  e                                           ; $7170: $9b
	cp   $91                                         ; $7171: $fe $91
	ld   de, $ff1d                                   ; $7173: $11 $1d $ff
	ld   sp, hl                                      ; $7176: $f9
	ld   [hl], $56                                   ; $7177: $36 $56
	sbc  d                                           ; $7179: $9a
	xor  $e5                                         ; $717a: $ee $e5
	ld   de, $ff15                                   ; $717c: $11 $15 $ff
	db   $fd                                         ; $717f: $fd
	ld   [hl], e                                     ; $7180: $73
	ld   h, h                                        ; $7181: $64
	adc  c                                           ; $7182: $89
	cp   [hl]                                        ; $7183: $be
	db   $eb                                         ; $7184: $eb
	ld   de, $af11                                   ; $7185: $11 $11 $af
	rst  $38                                         ; $7188: $ff
	or   l                                           ; $7189: $b5
	ld   d, [hl]                                     ; $718a: $56
	ld   c, c                                        ; $718b: $49
	adc  l                                           ; $718c: $8d
	xor  $71                                         ; $718d: $ee $71
	ld   de, $ff3e                                   ; $718f: $11 $3e $ff
	jp   hl                                          ; $7192: $e9


	ld   b, a                                        ; $7193: $47
	ld   b, [hl]                                     ; $7194: $46
	sbc  d                                           ; $7195: $9a
	xor  $c3                                         ; $7196: $ee $c3
	ld   de, $ff18                                   ; $7198: $11 $18 $ff
	db   $fd                                         ; $719b: $fd
	halt                                             ; $719c: $76
	ld   [hl], e                                     ; $719d: $73
	adc  b                                           ; $719e: $88
	db   $dd                                         ; $719f: $dd
	reti                                             ; $71a0: $d9


	ld   de, $df11                                   ; $71a1: $11 $11 $df
	db   $fd                                         ; $71a4: $fd
	add  $94                                         ; $71a5: $c6 $94
	ld   e, b                                        ; $71a7: $58
	sbc  [hl]                                        ; $71a8: $9e
	db   $dd                                         ; $71a9: $dd
	ld   b, c                                        ; $71aa: $41
	ld   de, $fd9f                                   ; $71ab: $11 $9f $fd
	jp   hl                                          ; $71ae: $e9


	ld   a, c                                        ; $71af: $79
	jr   z, jr_0ea_722e                              ; $71b0: $28 $7c

	call $1191                                       ; $71b2: $cd $91 $11
	inc  l                                           ; $71b5: $2c
	rst  $38                                         ; $71b6: $ff
	call Call_0ea_457a                               ; $71b7: $cd $7a $45
	adc  c                                           ; $71ba: $89
	db   $db                                         ; $71bb: $db
	db   $e4                                         ; $71bc: $e4
	ld   de, $ff1a                                   ; $71bd: $11 $1a $ff
	adc  $a9                                         ; $71c0: $ce $a9
	and  d                                           ; $71c2: $a2
	add  a                                           ; $71c3: $87
	set  1, d                                        ; $71c4: $cb $ca
	ld   de, $cf14                                   ; $71c6: $11 $14 $cf
	ei                                               ; $71c9: $fb
	rst  $10                                         ; $71ca: $d7
	call nz, $8d69                                   ; $71cb: $c4 $69 $8d
	sbc  l                                           ; $71ce: $9d
	ld   b, c                                        ; $71cf: $41
	ld   de, $f9cf                                   ; $71d0: $11 $cf $f9
	jp   hl                                          ; $71d3: $e9


	cp   b                                           ; $71d4: $b8
	dec  sp                                          ; $71d5: $3b
	ld   a, l                                        ; $71d6: $7d
	adc  h                                           ; $71d7: $8c
	sub  c                                           ; $71d8: $91
	ld   de, $fbae                                   ; $71d9: $11 $ae $fb
	cp   [hl]                                        ; $71dc: $be
	sbc  h                                           ; $71dd: $9c
	ld   a, [hl+]                                    ; $71de: $2a
	sbc  d                                           ; $71df: $9a
	cp   b                                           ; $71e0: $b8
	jp   $2e11                                       ; $71e1: $c3 $11 $2e


	cp   $8f                                         ; $71e4: $fe $8f
	sbc  l                                           ; $71e6: $9d
	ld   d, l                                        ; $71e7: $55
	rst  ToBoot                                         ; $71e8: $c7
	or   a                                           ; $71e9: $b7
	rst  $10                                         ; $71ea: $d7
	ld   de, $ef1c                                   ; $71eb: $11 $1c $ef
	ld   a, l                                        ; $71ee: $7d
	jp   c, $d8a2                                    ; $71ef: $da $a2 $d8

	or   a                                           ; $71f2: $b7
	xor  d                                           ; $71f3: $aa
	ld   de, $ef1a                                   ; $71f4: $11 $1a $ef
	sbc  d                                           ; $71f7: $9a
	ld   sp, hl                                      ; $71f8: $f9
	or   d                                           ; $71f9: $b2
	cp   e                                           ; $71fa: $bb
	adc  b                                           ; $71fb: $88
	adc  l                                           ; $71fc: $8d
	ld   hl, $fe16                                   ; $71fd: $21 $16 $fe
	xor  c                                           ; $7200: $a9
	ld   a, [$adb4]                                  ; $7201: $fa $b4 $ad
	ld   l, b                                        ; $7204: $68
	ld   a, l                                        ; $7205: $7d
	ld   d, c                                        ; $7206: $51
	inc  de                                          ; $7207: $13
	db   $fc                                         ; $7208: $fc
	cp   b                                           ; $7209: $b8
	db   $fd                                         ; $720a: $fd
	and  l                                           ; $720b: $a5
	adc  a                                           ; $720c: $8f
	ld   h, a                                        ; $720d: $67
	ld   a, [hl]                                     ; $720e: $7e
	ld   [hl], c                                     ; $720f: $71
	ld   de, $a7fa                                   ; $7210: $11 $fa $a7
	cp   $97                                         ; $7213: $fe $97
	adc  a                                           ; $7215: $8f
	ld   d, [hl]                                     ; $7216: $56
	ld   a, [hl]                                     ; $7217: $7e
	add  c                                           ; $7218: $81
	ld   de, $88fa                                   ; $7219: $11 $fa $88
	rst  $38                                         ; $721c: $ff
	ld   [hl], a                                     ; $721d: $77
	sbc  a                                           ; $721e: $9f
	ld   d, l                                        ; $721f: $55
	adc  l                                           ; $7220: $8d
	add  c                                           ; $7221: $81
	ld   [de], a                                     ; $7222: $12
	rst  $30                                         ; $7223: $f7
	ld   a, c                                        ; $7224: $79
	cp   $79                                         ; $7225: $fe $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7227: $cf
	ld   b, l                                        ; $7228: $45
	sbc  l                                           ; $7229: $9d
	ld   h, c                                        ; $722a: $61
	dec  d                                           ; $722b: $15
	sub  $6a                                         ; $722c: $d6 $6a

jr_0ea_722e:
	db   $fd                                         ; $722e: $fd
	ld   a, d                                        ; $722f: $7a
	rst  $28                                         ; $7230: $ef
	ld   h, $ac                                      ; $7231: $26 $ac
	ld   sp, $b419                                   ; $7233: $31 $19 $b4
	ld   l, [hl]                                     ; $7236: $6e
	ld   a, [$fc8d]                                  ; $7237: $fa $8d $fc
	add  hl, de                                      ; $723a: $19
	xor  c                                           ; $723b: $a9
	ld   de, $732a                                   ; $723c: $11 $2a $73
	sbc  a                                           ; $723f: $9f
	or   $ce                                         ; $7240: $f6 $ce
	push af                                          ; $7242: $f5
	ld   e, l                                        ; $7243: $5d
	sub  h                                           ; $7244: $94
	ld   de, $3568                                   ; $7245: $11 $68 $35
	rst  JumpTable                                         ; $7248: $df
	xor  c                                           ; $7249: $a9
	rst  $38                                         ; $724a: $ff
	jp   nz, Jump_0ea_51cb                           ; $724b: $c2 $cb $51

	inc  de                                          ; $724e: $13
	ld   [hl], h                                     ; $724f: $74
	ld   c, c                                        ; $7250: $49
	cp   $8f                                         ; $7251: $fe $8f
	cp   $59                                         ; $7253: $fe $59
	push hl                                          ; $7255: $e5
	ld   de, $4316                                   ; $7256: $11 $16 $43
	ld   a, a                                        ; $7259: $7f
	ld   hl, sp-$01                                  ; $725a: $f8 $ff
	add  sp, $6f                                     ; $725c: $e8 $6f
	ld   [hl], e                                     ; $725e: $73
	ld   de, $3643                                   ; $725f: $11 $43 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7262: $cf
	adc  l                                           ; $7263: $8d
	rst  $38                                         ; $7264: $ff
	or   [hl]                                        ; $7265: $b6
	jp   hl                                          ; $7266: $e9


	ld   hl, $3113                                   ; $7267: $21 $13 $31
	ld   e, c                                        ; $726a: $59
	ld   a, [$fdcf]                                  ; $726b: $fa $cf $fd
	adc  l                                           ; $726e: $8d
	or   e                                           ; $726f: $b3
	ld   sp, $1413                                   ; $7270: $31 $13 $14
	ld   l, [hl]                                     ; $7273: $6e
	cp   e                                           ; $7274: $bb
	rst  $38                                         ; $7275: $ff
	ei                                               ; $7276: $fb
	call c, $1144                                    ; $7277: $dc $44 $11

Call_0ea_727a:
	ld   sp, $ab34                                   ; $727a: $31 $34 $ab
	xor  a                                           ; $727d: $af
	rst  $38                                         ; $727e: $ff
	call c, $51d5                                    ; $727f: $dc $d5 $51
	ld   [de], a                                     ; $7282: $12
	inc  de                                          ; $7283: $13
	ld   c, c                                        ; $7284: $49
	xor  c                                           ; $7285: $a9
	rst  $38                                         ; $7286: $ff
	cp   $dd                                         ; $7287: $fe $dd
	halt                                             ; $7289: $76
	ld   hl, $2311                                   ; $728a: $21 $11 $23
	ld   l, d                                        ; $728d: $6a
	adc  [hl]                                        ; $728e: $8e
	cp   $fd                                         ; $728f: $fe $fd
	add  sp, $64                                     ; $7291: $e8 $64
	ld   de, $2512                                   ; $7293: $11 $12 $25
	sbc  c                                           ; $7296: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7297: $cf
	rst  $28                                         ; $7298: $ef
	xor  $a7                                         ; $7299: $ee $a7
	ld   h, c                                        ; $729b: $61
	ld   [de], a                                     ; $729c: $12
	ld   [de], a                                     ; $729d: $12
	scf                                              ; $729e: $37
	adc  d                                           ; $729f: $8a
	cp   $fd                                         ; $72a0: $fe $fd
	db   $ec                                         ; $72a2: $ec
	add  a                                           ; $72a3: $87
	ld   [hl-], a                                    ; $72a4: $32
	ld   [hl-], a                                    ; $72a5: $32
	ld   [hl+], a                                    ; $72a6: $22
	ld   h, a                                        ; $72a7: $67
	sbc  l                                           ; $72a8: $9d
	rst  $28                                         ; $72a9: $ef
	xor  $d9                                         ; $72aa: $ee $d9
	add  h                                           ; $72ac: $84
	inc  hl                                          ; $72ad: $23
	ld   [hl-], a                                    ; $72ae: $32
	dec  h                                           ; $72af: $25
	ld   h, a                                        ; $72b0: $67
	adc  $ee                                         ; $72b1: $ce $ee
	db   $ed                                         ; $72b3: $ed
	sbc  b                                           ; $72b4: $98
	ld   d, e                                        ; $72b5: $53
	ld   b, e                                        ; $72b6: $43
	inc  sp                                          ; $72b7: $33
	ld   b, l                                        ; $72b8: $45
	ld   a, d                                        ; $72b9: $7a
	db   $dd                                         ; $72ba: $dd
	xor  $c9                                         ; $72bb: $ee $c9
	add  [hl]                                        ; $72bd: $86
	ld   b, l                                        ; $72be: $45
	ld   b, e                                        ; $72bf: $43
	dec  [hl]                                        ; $72c0: $35
	ld   h, a                                        ; $72c1: $67
	xor  h                                           ; $72c2: $ac
	db   $dd                                         ; $72c3: $dd
	db   $ed                                         ; $72c4: $ed
	xor  b                                           ; $72c5: $a8
	ld   h, h                                        ; $72c6: $64
	ld   h, h                                        ; $72c7: $64
	inc  [hl]                                        ; $72c8: $34
	ld   d, a                                        ; $72c9: $57
	ld   a, d                                        ; $72ca: $7a
	cp   l                                           ; $72cb: $bd
	call c, $85b8                                    ; $72cc: $dc $b8 $85
	ld   h, [hl]                                     ; $72cf: $66
	ld   b, l                                        ; $72d0: $45
	ld   b, [hl]                                     ; $72d1: $46
	ld   a, c                                        ; $72d2: $79
	set  1, e                                        ; $72d3: $cb $cb
	xor  c                                           ; $72d5: $a9
	add  [hl]                                        ; $72d6: $86
	ld   h, a                                        ; $72d7: $67
	ld   b, l                                        ; $72d8: $45
	ld   d, [hl]                                     ; $72d9: $56
	ld   l, b                                        ; $72da: $68

Call_0ea_72db:
	cp   d                                           ; $72db: $ba
	res  5, c                                        ; $72dc: $cb $a9
	ld   [hl], a                                     ; $72de: $77
	ld   h, a                                        ; $72df: $67
	ld   h, l                                        ; $72e0: $65
	ld   d, [hl]                                     ; $72e1: $56
	ld   [hl], a                                     ; $72e2: $77
	xor  d                                           ; $72e3: $aa
	res  5, c                                        ; $72e4: $cb $a9
	add  a                                           ; $72e6: $87
	ld   h, a                                        ; $72e7: $67
	ld   h, [hl]                                     ; $72e8: $66
	ld   h, [hl]                                     ; $72e9: $66
	ld   [hl], a                                     ; $72ea: $77
	xor  c                                           ; $72eb: $a9
	cp   e                                           ; $72ec: $bb
	sbc  b                                           ; $72ed: $98
	adc  b                                           ; $72ee: $88
	ld   h, a                                        ; $72ef: $67
	halt                                             ; $72f0: $76
	ld   h, [hl]                                     ; $72f1: $66
	ld   [hl], a                                     ; $72f2: $77
	adc  d                                           ; $72f3: $8a
	sbc  d                                           ; $72f4: $9a
	xor  c                                           ; $72f5: $a9
	adc  b                                           ; $72f6: $88
	add  [hl]                                        ; $72f7: $86
	halt                                             ; $72f8: $76
	ld   h, [hl]                                     ; $72f9: $66
	ld   [hl], a                                     ; $72fa: $77
	adc  d                                           ; $72fb: $8a
	sbc  d                                           ; $72fc: $9a
	sbc  c                                           ; $72fd: $99
	sbc  b                                           ; $72fe: $98
	add  a                                           ; $72ff: $87
	ld   [hl], a                                     ; $7300: $77
	ld   h, [hl]                                     ; $7301: $66
	ld   [hl], a                                     ; $7302: $77
	ld   a, c                                        ; $7303: $79
	xor  d                                           ; $7304: $aa
	sbc  c                                           ; $7305: $99
	sbc  b                                           ; $7306: $98
	add  a                                           ; $7307: $87
	ld   [hl], a                                     ; $7308: $77
	halt                                             ; $7309: $76
	ld   [hl], a                                     ; $730a: $77
	adc  b                                           ; $730b: $88
	sbc  c                                           ; $730c: $99
	sbc  c                                           ; $730d: $99
	adc  c                                           ; $730e: $89
	sbc  b                                           ; $730f: $98
	ld   [hl], a                                     ; $7310: $77
	ld   [hl], a                                     ; $7311: $77
	ld   [hl], a                                     ; $7312: $77
	adc  b                                           ; $7313: $88
	sbc  c                                           ; $7314: $99
	sbc  c                                           ; $7315: $99
	sbc  b                                           ; $7316: $98
	adc  b                                           ; $7317: $88
	add  a                                           ; $7318: $87
	ld   [hl], a                                     ; $7319: $77
	ld   [hl], a                                     ; $731a: $77
	ld   a, b                                        ; $731b: $78
	adc  b                                           ; $731c: $88
	adc  c                                           ; $731d: $89
	sbc  c                                           ; $731e: $99
	sbc  b                                           ; $731f: $98
	adc  b                                           ; $7320: $88
	ld   [hl], a                                     ; $7321: $77
	ld   [hl], a                                     ; $7322: $77
	ld   [hl], a                                     ; $7323: $77
	adc  c                                           ; $7324: $89
	sbc  c                                           ; $7325: $99
	sbc  c                                           ; $7326: $99
	adc  b                                           ; $7327: $88
	adc  b                                           ; $7328: $88
	adc  b                                           ; $7329: $88
	ld   a, b                                        ; $732a: $78
	ld   [hl], a                                     ; $732b: $77
	ld   a, b                                        ; $732c: $78
	adc  b                                           ; $732d: $88
	sbc  b                                           ; $732e: $98
	sbc  b                                           ; $732f: $98
	sbc  b                                           ; $7330: $98
	adc  c                                           ; $7331: $89
	adc  b                                           ; $7332: $88
	add  a                                           ; $7333: $87
	add  a                                           ; $7334: $87
	ld   [hl], a                                     ; $7335: $77
	adc  c                                           ; $7336: $89
	adc  b                                           ; $7337: $88
	sbc  c                                           ; $7338: $99
	adc  c                                           ; $7339: $89
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	ld   a, b                                        ; $733c: $78
	sub  a                                           ; $733d: $97
	ld   a, b                                        ; $733e: $78
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	adc  b                                           ; $7342: $88
	adc  b                                           ; $7343: $88
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	ld   [hl], a                                     ; $7346: $77
	add  a                                           ; $7347: $87
	adc  b                                           ; $7348: $88
	adc  b                                           ; $7349: $88
	adc  c                                           ; $734a: $89
	adc  c                                           ; $734b: $89
	sbc  b                                           ; $734c: $98
	adc  b                                           ; $734d: $88
	adc  b                                           ; $734e: $88
	adc  b                                           ; $734f: $88
	adc  b                                           ; $7350: $88
	adc  b                                           ; $7351: $88
	adc  b                                           ; $7352: $88
	adc  b                                           ; $7353: $88
	adc  c                                           ; $7354: $89
	adc  b                                           ; $7355: $88
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	add  a                                           ; $7358: $87
	adc  b                                           ; $7359: $88
	ld   a, b                                        ; $735a: $78
	adc  b                                           ; $735b: $88
	adc  b                                           ; $735c: $88
	sbc  b                                           ; $735d: $98
	adc  c                                           ; $735e: $89
	ld   a, b                                        ; $735f: $78
	adc  b                                           ; $7360: $88
	ld   a, b                                        ; $7361: $78
	add  a                                           ; $7362: $87
	adc  c                                           ; $7363: $89
	adc  b                                           ; $7364: $88
	sbc  b                                           ; $7365: $98
	adc  b                                           ; $7366: $88
	adc  b                                           ; $7367: $88
	add  a                                           ; $7368: $87
	add  a                                           ; $7369: $87
	ld   a, b                                        ; $736a: $78
	ld   a, b                                        ; $736b: $78
	adc  c                                           ; $736c: $89
	adc  c                                           ; $736d: $89
	adc  b                                           ; $736e: $88
	adc  b                                           ; $736f: $88
	sub  a                                           ; $7370: $97
	sub  a                                           ; $7371: $97
	ld   a, b                                        ; $7372: $78
	adc  b                                           ; $7373: $88
	ld   a, b                                        ; $7374: $78
	adc  b                                           ; $7375: $88
	sbc  b                                           ; $7376: $98
	sbc  b                                           ; $7377: $98
	sbc  b                                           ; $7378: $98
	adc  b                                           ; $7379: $88
	add  a                                           ; $737a: $87
	adc  b                                           ; $737b: $88
	ld   a, c                                        ; $737c: $79
	ld   a, b                                        ; $737d: $78
	sbc  b                                           ; $737e: $98
	adc  b                                           ; $737f: $88
	adc  b                                           ; $7380: $88
	adc  b                                           ; $7381: $88
	adc  b                                           ; $7382: $88
	ld   a, c                                        ; $7383: $79
	ld   a, b                                        ; $7384: $78
	adc  b                                           ; $7385: $88
	sub  a                                           ; $7386: $97
	sbc  b                                           ; $7387: $98
	adc  c                                           ; $7388: $89
	sbc  c                                           ; $7389: $99
	adc  b                                           ; $738a: $88
	adc  b                                           ; $738b: $88
	adc  b                                           ; $738c: $88
	adc  b                                           ; $738d: $88
	adc  b                                           ; $738e: $88
	adc  b                                           ; $738f: $88
	adc  b                                           ; $7390: $88
	sbc  b                                           ; $7391: $98
	adc  b                                           ; $7392: $88
	adc  b                                           ; $7393: $88
	adc  b                                           ; $7394: $88
	adc  b                                           ; $7395: $88
	adc  b                                           ; $7396: $88
	adc  b                                           ; $7397: $88
	adc  c                                           ; $7398: $89
	adc  b                                           ; $7399: $88
	adc  b                                           ; $739a: $88
	adc  b                                           ; $739b: $88
	adc  b                                           ; $739c: $88
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	add  a                                           ; $739f: $87
	adc  b                                           ; $73a0: $88
	adc  c                                           ; $73a1: $89
	adc  b                                           ; $73a2: $88
	adc  b                                           ; $73a3: $88
	adc  b                                           ; $73a4: $88
	adc  b                                           ; $73a5: $88
	adc  b                                           ; $73a6: $88
	ld   a, c                                        ; $73a7: $79
	adc  b                                           ; $73a8: $88
	adc  b                                           ; $73a9: $88
	adc  b                                           ; $73aa: $88
	sbc  b                                           ; $73ab: $98
	adc  b                                           ; $73ac: $88
	adc  b                                           ; $73ad: $88
	ld   a, c                                        ; $73ae: $79
	ld   a, b                                        ; $73af: $78
	adc  b                                           ; $73b0: $88
	ld   a, b                                        ; $73b1: $78
	sbc  b                                           ; $73b2: $98
	sbc  b                                           ; $73b3: $98
	sbc  b                                           ; $73b4: $98
	adc  b                                           ; $73b5: $88
	adc  b                                           ; $73b6: $88
	ld   a, b                                        ; $73b7: $78
	sbc  b                                           ; $73b8: $98
	adc  b                                           ; $73b9: $88
	adc  c                                           ; $73ba: $89
	adc  c                                           ; $73bb: $89
	adc  b                                           ; $73bc: $88
	sbc  c                                           ; $73bd: $99
	sub  a                                           ; $73be: $97
	add  a                                           ; $73bf: $87
	adc  b                                           ; $73c0: $88
	adc  b                                           ; $73c1: $88
	adc  b                                           ; $73c2: $88
	adc  c                                           ; $73c3: $89
	adc  b                                           ; $73c4: $88
	adc  b                                           ; $73c5: $88
	adc  b                                           ; $73c6: $88
	adc  b                                           ; $73c7: $88
	adc  c                                           ; $73c8: $89
	add  a                                           ; $73c9: $87
	adc  b                                           ; $73ca: $88

Call_0ea_73cb:
	sbc  b                                           ; $73cb: $98
	adc  b                                           ; $73cc: $88
	adc  b                                           ; $73cd: $88
	adc  b                                           ; $73ce: $88
	ld   a, c                                        ; $73cf: $79
	ld   a, b                                        ; $73d0: $78
	ld   a, b                                        ; $73d1: $78
	add  a                                           ; $73d2: $87
	add  a                                           ; $73d3: $87
	sub  a                                           ; $73d4: $97
	sbc  b                                           ; $73d5: $98
	sbc  b                                           ; $73d6: $98
	adc  b                                           ; $73d7: $88
	adc  c                                           ; $73d8: $89
	adc  b                                           ; $73d9: $88
	ld   a, b                                        ; $73da: $78
	ld   a, c                                        ; $73db: $79
	add  a                                           ; $73dc: $87
	sbc  b                                           ; $73dd: $98
	add  a                                           ; $73de: $87
	adc  b                                           ; $73df: $88
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	adc  b                                           ; $73e2: $88
	adc  c                                           ; $73e3: $89
	ld   a, b                                        ; $73e4: $78
	ld   a, b                                        ; $73e5: $78
	adc  b                                           ; $73e6: $88
	sub  a                                           ; $73e7: $97
	sub  a                                           ; $73e8: $97
	add  a                                           ; $73e9: $87
	adc  b                                           ; $73ea: $88
	adc  b                                           ; $73eb: $88
	ld   a, c                                        ; $73ec: $79
	adc  b                                           ; $73ed: $88
	adc  b                                           ; $73ee: $88
	adc  b                                           ; $73ef: $88
	adc  c                                           ; $73f0: $89
	adc  b                                           ; $73f1: $88
	adc  b                                           ; $73f2: $88
	sub  a                                           ; $73f3: $97
	add  a                                           ; $73f4: $87
	adc  b                                           ; $73f5: $88
	adc  b                                           ; $73f6: $88
	ld   a, c                                        ; $73f7: $79
	adc  b                                           ; $73f8: $88
	ld   a, b                                        ; $73f9: $78
	adc  b                                           ; $73fa: $88
	add  a                                           ; $73fb: $87
	adc  b                                           ; $73fc: $88
	sub  a                                           ; $73fd: $97
	adc  c                                           ; $73fe: $89
	adc  c                                           ; $73ff: $89
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	adc  b                                           ; $7403: $88
	adc  b                                           ; $7404: $88
	adc  b                                           ; $7405: $88
	adc  b                                           ; $7406: $88
	adc  b                                           ; $7407: $88
	adc  b                                           ; $7408: $88
	add  a                                           ; $7409: $87
	add  a                                           ; $740a: $87
	sub  a                                           ; $740b: $97
	adc  b                                           ; $740c: $88
	ld   a, b                                        ; $740d: $78
	ld   a, c                                        ; $740e: $79
	ld   a, b                                        ; $740f: $78
	ld   a, b                                        ; $7410: $78
	add  a                                           ; $7411: $87
	sub  a                                           ; $7412: $97
	sbc  b                                           ; $7413: $98
	adc  b                                           ; $7414: $88
	adc  b                                           ; $7415: $88
	adc  b                                           ; $7416: $88
	ld   a, c                                        ; $7417: $79
	adc  b                                           ; $7418: $88
	sub  a                                           ; $7419: $97
	adc  b                                           ; $741a: $88
	ld   a, c                                        ; $741b: $79
	ld   a, b                                        ; $741c: $78
	adc  c                                           ; $741d: $89
	add  a                                           ; $741e: $87
	sub  a                                           ; $741f: $97
	sub  a                                           ; $7420: $97
	sbc  b                                           ; $7421: $98
	sbc  c                                           ; $7422: $99
	ld   a, c                                        ; $7423: $79
	ld   a, b                                        ; $7424: $78
	ld   a, c                                        ; $7425: $79
	ld   [hl], a                                     ; $7426: $77
	sub  a                                           ; $7427: $97
	sub  a                                           ; $7428: $97
	add  a                                           ; $7429: $87
	add  a                                           ; $742a: $87
	sbc  b                                           ; $742b: $98
	adc  b                                           ; $742c: $88
	ld   a, c                                        ; $742d: $79
	ld   a, b                                        ; $742e: $78
	ld   a, c                                        ; $742f: $79
	adc  b                                           ; $7430: $88
	add  a                                           ; $7431: $87
	sub  a                                           ; $7432: $97
	adc  b                                           ; $7433: $88
	adc  b                                           ; $7434: $88
	adc  b                                           ; $7435: $88
	adc  b                                           ; $7436: $88
	adc  b                                           ; $7437: $88
	ld   a, b                                        ; $7438: $78
	ld   a, b                                        ; $7439: $78
	adc  b                                           ; $743a: $88
	sub  a                                           ; $743b: $97
	sbc  b                                           ; $743c: $98
	adc  b                                           ; $743d: $88
	adc  c                                           ; $743e: $89
	ld   a, b                                        ; $743f: $78
	adc  b                                           ; $7440: $88
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	adc  b                                           ; $7443: $88
	add  a                                           ; $7444: $87
	sbc  b                                           ; $7445: $98
	adc  b                                           ; $7446: $88
	adc  c                                           ; $7447: $89
	ld   a, b                                        ; $7448: $78
	ld   a, b                                        ; $7449: $78
	ld   a, b                                        ; $744a: $78
	sub  a                                           ; $744b: $97
	sub  a                                           ; $744c: $97
	add  a                                           ; $744d: $87
	adc  c                                           ; $744e: $89
	ld   a, b                                        ; $744f: $78
	adc  b                                           ; $7450: $88
	adc  b                                           ; $7451: $88
	adc  b                                           ; $7452: $88
	adc  b                                           ; $7453: $88
	adc  b                                           ; $7454: $88
	add  a                                           ; $7455: $87
	sub  a                                           ; $7456: $97
	adc  b                                           ; $7457: $88
	adc  c                                           ; $7458: $89
	ld   a, c                                        ; $7459: $79
	ld   a, c                                        ; $745a: $79
	ld   a, b                                        ; $745b: $78
	sub  a                                           ; $745c: $97
	add  a                                           ; $745d: $87
	add  a                                           ; $745e: $87
	adc  b                                           ; $745f: $88
	adc  b                                           ; $7460: $88
	adc  b                                           ; $7461: $88
	adc  c                                           ; $7462: $89
	adc  c                                           ; $7463: $89
	ld   a, b                                        ; $7464: $78
	adc  b                                           ; $7465: $88
	sbc  b                                           ; $7466: $98
	add  a                                           ; $7467: $87
	sub  a                                           ; $7468: $97
	adc  b                                           ; $7469: $88
	adc  b                                           ; $746a: $88
	ld   a, b                                        ; $746b: $78
	ld   a, b                                        ; $746c: $78
	ld   a, b                                        ; $746d: $78
	adc  b                                           ; $746e: $88
	adc  b                                           ; $746f: $88
	sub  a                                           ; $7470: $97
	sbc  b                                           ; $7471: $98
	sub  a                                           ; $7472: $97
	adc  c                                           ; $7473: $89
	adc  b                                           ; $7474: $88
	adc  c                                           ; $7475: $89
	ld   a, b                                        ; $7476: $78
	ld   a, b                                        ; $7477: $78
	adc  b                                           ; $7478: $88
	adc  b                                           ; $7479: $88
	add  a                                           ; $747a: $87
	sub  a                                           ; $747b: $97
	adc  b                                           ; $747c: $88
	adc  c                                           ; $747d: $89
	ld   a, b                                        ; $747e: $78
	ld   a, b                                        ; $747f: $78
	adc  c                                           ; $7480: $89
	ld   a, b                                        ; $7481: $78
	sub  a                                           ; $7482: $97
	sub  a                                           ; $7483: $97
	add  a                                           ; $7484: $87
	sub  a                                           ; $7485: $97
	adc  b                                           ; $7486: $88
	adc  b                                           ; $7487: $88
	ld   a, b                                        ; $7488: $78
	ld   a, b                                        ; $7489: $78
	ld   a, b                                        ; $748a: $78
	adc  b                                           ; $748b: $88
	sub  a                                           ; $748c: $97
	sub  a                                           ; $748d: $97
	sbc  b                                           ; $748e: $98
	adc  c                                           ; $748f: $89
	ld   a, b                                        ; $7490: $78
	adc  b                                           ; $7491: $88
	adc  b                                           ; $7492: $88
	adc  b                                           ; $7493: $88
	sub  a                                           ; $7494: $97
	sbc  b                                           ; $7495: $98
	adc  b                                           ; $7496: $88
	sbc  b                                           ; $7497: $98
	adc  c                                           ; $7498: $89
	adc  b                                           ; $7499: $88
	adc  b                                           ; $749a: $88
	ld   a, b                                        ; $749b: $78
	sbc  b                                           ; $749c: $98
	sbc  b                                           ; $749d: $98
	sub  a                                           ; $749e: $97
	sbc  b                                           ; $749f: $98
	adc  b                                           ; $74a0: $88
	adc  c                                           ; $74a1: $89
	adc  b                                           ; $74a2: $88
	adc  b                                           ; $74a3: $88
	adc  b                                           ; $74a4: $88
	ld   a, c                                        ; $74a5: $79
	adc  b                                           ; $74a6: $88
	adc  b                                           ; $74a7: $88
	sub  a                                           ; $74a8: $97
	adc  b                                           ; $74a9: $88

Call_0ea_74aa:
	adc  b                                           ; $74aa: $88
	sbc  b                                           ; $74ab: $98
	ld   a, b                                        ; $74ac: $78
	ld   a, c                                        ; $74ad: $79
	adc  c                                           ; $74ae: $89
	adc  b                                           ; $74af: $88
	adc  b                                           ; $74b0: $88
	adc  b                                           ; $74b1: $88
	sbc  b                                           ; $74b2: $98
	adc  b                                           ; $74b3: $88
	add  a                                           ; $74b4: $87
	sbc  b                                           ; $74b5: $98
	adc  c                                           ; $74b6: $89
	ld   a, c                                        ; $74b7: $79
	adc  b                                           ; $74b8: $88
	adc  c                                           ; $74b9: $89
	adc  b                                           ; $74ba: $88
	add  a                                           ; $74bb: $87
	adc  b                                           ; $74bc: $88
	adc  b                                           ; $74bd: $88
	adc  b                                           ; $74be: $88
	adc  c                                           ; $74bf: $89
	ld   a, c                                        ; $74c0: $79
	adc  c                                           ; $74c1: $89
	adc  b                                           ; $74c2: $88
	sub  a                                           ; $74c3: $97
	adc  b                                           ; $74c4: $88
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88
	adc  b                                           ; $74c9: $88

Call_0ea_74ca:
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
	sbc  b                                           ; $74de: $98
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

Call_0ea_74eb:
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
	adc  c                                           ; $74f5: $89
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

Call_0ea_7589:
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

Call_0ea_75a7:
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

Call_0ea_75cb:
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
	adc  c                                           ; $763f: $89
	adc  b                                           ; $7640: $88
	adc  b                                           ; $7641: $88
	sbc  b                                           ; $7642: $98
	sbc  c                                           ; $7643: $99
	ld   a, b                                        ; $7644: $78
	adc  b                                           ; $7645: $88
	adc  c                                           ; $7646: $89
	sub  a                                           ; $7647: $97
	add  a                                           ; $7648: $87
	ld   [hl], a                                     ; $7649: $77
	ld   a, b                                        ; $764a: $78
	ld   a, b                                        ; $764b: $78
	ld   [hl], a                                     ; $764c: $77
	ld   a, c                                        ; $764d: $79
	add  a                                           ; $764e: $87
	add  a                                           ; $764f: $87
	halt                                             ; $7650: $76
	ld   h, [hl]                                     ; $7651: $66
	ld   [hl], a                                     ; $7652: $77
	ld   h, a                                        ; $7653: $67
	sbc  d                                           ; $7654: $9a
	cp   h                                           ; $7655: $bc
	res  5, c                                        ; $7656: $cb $a9
	ld   h, c                                        ; $7658: $61
	jr   jr_0ea_769c                                 ; $7659: $18 $41

	ld   h, [hl]                                     ; $765b: $66
	ld   h, [hl]                                     ; $765c: $66
	db   $dd                                         ; $765d: $dd
	xor  [hl]                                        ; $765e: $ae
	rst  $38                                         ; $765f: $ff
	sbc  l                                           ; $7660: $9d
	add  $65                                         ; $7661: $c6 $65
	ld   de, $1a86                                   ; $7663: $11 $86 $1a
	call c, $f97f                                    ; $7666: $dc $7f $f9
	cp   $d4                                         ; $7669: $fe $d4
	sbc  c                                           ; $766b: $99
	ld   de, $4b11                                   ; $766c: $11 $11 $4b
	ld   e, $ff                                      ; $766f: $1e $ff
	cp   a                                           ; $7671: $bf
	or   $e8                                         ; $7672: $f6 $e8
	add  c                                           ; $7674: $81
	ld   e, c                                        ; $7675: $59
	ld   de, $b711                                   ; $7676: $11 $11 $b7
	ld   a, a                                        ; $7679: $7f
	db   $fc                                         ; $767a: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $767b: $cf
	or   h                                           ; $767c: $b4
	db   $e4                                         ; $767d: $e4
	ld   h, d                                        ; $767e: $62
	call nz, $1611                                   ; $767f: $c4 $11 $16
	sub  l                                           ; $7682: $95

jr_0ea_7683:
	rst  JumpTable                                         ; $7683: $df
	db   $eb                                         ; $7684: $eb
	rst  $38                                         ; $7685: $ff
	ld   e, c                                        ; $7686: $59
	sub  l                                           ; $7687: $95
	ld   d, l                                        ; $7688: $55
	pop  de                                          ; $7689: $d1
	ld   de, $861c                                   ; $768a: $11 $1c $86
	rst  $38                                         ; $768d: $ff
	ret                                              ; $768e: $c9


	rst  $38                                         ; $768f: $ff
	inc  l                                           ; $7690: $2c
	halt                                             ; $7691: $76
	ld   c, d                                        ; $7692: $4a
	or   c                                           ; $7693: $b1
	ld   hl, $771c                                   ; $7694: $21 $1c $77
	rst  $38                                         ; $7697: $ff
	set  7, e                                        ; $7698: $cb $fb
	dec  l                                           ; $769a: $2d
	ld   d, a                                        ; $769b: $57

jr_0ea_769c:
	ld   c, h                                        ; $769c: $4c
	sub  c                                           ; $769d: $91
	ld   hl, $881c                                   ; $769e: $21 $1c $88
	rst  $38                                         ; $76a1: $ff
	cp   c                                           ; $76a2: $b9
	ld   sp, hl                                      ; $76a3: $f9
	dec  sp                                          ; $76a4: $3b
	ld   e, b                                        ; $76a5: $58
	ccf                                              ; $76a6: $3f
	ld   [hl], c                                     ; $76a7: $71
	ld   de, $a81b                                   ; $76a8: $11 $1b $a8
	rst  $38                                         ; $76ab: $ff
	ret                                              ; $76ac: $c9


	rst  $30                                         ; $76ad: $f7
	dec  hl                                          ; $76ae: $2b
	ld   e, b                                        ; $76af: $58
	ld   e, a                                        ; $76b0: $5f
	ld   h, c                                        ; $76b1: $61
	ld   de, $c91b                                   ; $76b2: $11 $1b $c9
	rst  $38                                         ; $76b5: $ff
	reti                                             ; $76b6: $d9


	rst  $30                                         ; $76b7: $f7

Call_0ea_76b8:
	ld   a, [hl+]                                    ; $76b8: $2a
	ld   e, c                                        ; $76b9: $59
	ld   e, a                                        ; $76ba: $5f
	ld   h, c                                        ; $76bb: $61
	ld   de, $ca1b                                   ; $76bc: $11 $1b $ca
	rst  $38                                         ; $76bf: $ff
	reti                                             ; $76c0: $d9


	push af                                          ; $76c1: $f5
	dec  hl                                          ; $76c2: $2b
	ld   e, d                                        ; $76c3: $5a
	ld   a, a                                        ; $76c4: $7f
	ld   b, c                                        ; $76c5: $41
	ld   de, $cd1c                                   ; $76c6: $11 $1c $cd
	rst  $38                                         ; $76c9: $ff
	ret                                              ; $76ca: $c9


	di                                               ; $76cb: $f3
	ld   a, [hl-]                                    ; $76cc: $3a
	ld   e, c                                        ; $76cd: $59
	ld   a, a                                        ; $76ce: $7f
	ld   de, $4d11                                   ; $76cf: $11 $11 $4d
	rst  JumpTable                                         ; $76d2: $df
	cp   $ac                                         ; $76d3: $fe $ac
	pop  hl                                          ; $76d5: $e1
	ld   a, c                                        ; $76d6: $79
	ld   a, c                                        ; $76d7: $79
	cp   h                                           ; $76d8: $bc
	ld   de, $ac11                                   ; $76d9: $11 $11 $ac
	rst  JumpTable                                         ; $76dc: $df
	db   $fc                                         ; $76dd: $fc
	xor  [hl]                                        ; $76de: $ae
	ld   [hl], c                                     ; $76df: $71
	or   a                                           ; $76e0: $b7
	sbc  b                                           ; $76e1: $98
	push bc                                          ; $76e2: $c5
	ld   de, $dc15                                   ; $76e3: $11 $15 $dc
	rst  $38                                         ; $76e6: $ff
	ld   sp, hl                                      ; $76e7: $f9
	db   $db                                         ; $76e8: $db
	jr   jr_0ea_7683                                 ; $76e9: $18 $98

	sbc  c                                           ; $76eb: $99
	and  c                                           ; $76ec: $a1
	ld   de, $cf1d                                   ; $76ed: $11 $1d $cf
	rst  $38                                         ; $76f0: $ff
	xor  e                                           ; $76f1: $ab
	db   $d3                                         ; $76f2: $d3
	ld   e, e                                        ; $76f3: $5b
	adc  c                                           ; $76f4: $89
	sbc  d                                           ; $76f5: $9a
	ld   de, $bd11                                   ; $76f6: $11 $11 $bd
	rst  $38                                         ; $76f9: $ff
	ei                                               ; $76fa: $fb
	xor  l                                           ; $76fb: $ad
	ld   d, h                                        ; $76fc: $54
	cp   c                                           ; $76fd: $b9
	xor  b                                           ; $76fe: $a8
	and  c                                           ; $76ff: $a1
	ld   de, $de19                                   ; $7700: $11 $19 $de
	rst  $38                                         ; $7703: $ff
	jp   c, $4bc6                                    ; $7704: $da $c6 $4b

	sbc  c                                           ; $7707: $99
	sbc  c                                           ; $7708: $99
	ld   bc, $ad11                                   ; $7709: $01 $11 $ad
	rst  $38                                         ; $770c: $ff
	db   $fd                                         ; $770d: $fd
	xor  l                                           ; $770e: $ad
	ld   d, [hl]                                     ; $770f: $56
	cp   c                                           ; $7710: $b9
	sbc  b                                           ; $7711: $98
	and  c                                           ; $7712: $a1
	ld   de, $df1b                                   ; $7713: $11 $1b $df
	rst  $38                                         ; $7716: $ff
	set  2, l                                        ; $7717: $cb $d5
	ld   a, e                                        ; $7719: $7b
	adc  c                                           ; $771a: $89
	add  [hl]                                        ; $771b: $86
	ld   de, wTitleScreenGirlEyesAnimIdx                                   ; $771c: $11 $15 $cc
	rst  $38                                         ; $771f: $ff
	call z, $4be9                                    ; $7720: $cc $e9 $4b
	xor  c                                           ; $7723: $a9
	adc  b                                           ; $7724: $88
	ld   hl, $9b11                                   ; $7725: $21 $11 $9b
	rst  $38                                         ; $7728: $ff
	db   $fc                                         ; $7729: $fc
	call $b757                                       ; $772a: $cd $57 $b7
	adc  b                                           ; $772d: $88
	ld   [hl], c                                     ; $772e: $71
	ld   de, $bf4b                                   ; $772f: $11 $4b $bf
	db   $fd                                         ; $7732: $fd
	db   $dd                                         ; $7733: $dd
	add  e                                           ; $7734: $83
	ret  z                                           ; $7735: $c8

	adc  c                                           ; $7736: $89
	add  c                                           ; $7737: $81
	ld   de, $bf1a                                   ; $7738: $11 $1a $bf
	rst  $38                                         ; $773b: $ff
	db   $dd                                         ; $773c: $dd
	call nz, $687a                                   ; $773d: $c4 $7a $68
	add  e                                           ; $7740: $83
	ld   de, $bd18                                   ; $7741: $11 $18 $bd
	rst  $38                                         ; $7744: $ff
	sbc  $c6                                         ; $7745: $de $c6
	ld   l, d                                        ; $7747: $6a
	ld   a, b                                        ; $7748: $78
	ld   [hl], h                                     ; $7749: $74
	ld   de, $bc17                                   ; $774a: $11 $17 $bc
	rst  $38                                         ; $774d: $ff
	xor  $c9                                         ; $774e: $ee $c9
	ld   e, e                                        ; $7750: $5b
	ld   [hl], a                                     ; $7751: $77
	ld   h, e                                        ; $7752: $63
	ld   de, $bc18                                   ; $7753: $11 $18 $bc
	rst  $38                                         ; $7756: $ff
	db   $dd                                         ; $7757: $dd
	jp   c, $774c                                    ; $7758: $da $4c $77

	ld   d, d                                        ; $775b: $52
	ld   de, $ac17                                   ; $775c: $11 $17 $ac
	rst  $38                                         ; $775f: $ff
	rst  JumpTable                                         ; $7760: $df
	ret  c                                           ; $7761: $d8

	ld   e, l                                        ; $7762: $5d
	ld   h, l                                        ; $7763: $65
	ld   b, c                                        ; $7764: $41
	ld   de, $af2b                                   ; $7765: $11 $2b $af
	rst  $38                                         ; $7768: $ff
	cp   $d5                                         ; $7769: $fe $d5
	adc  e                                           ; $776b: $8b
	scf                                              ; $776c: $37
	ld   de, $4911                                   ; $776d: $11 $11 $49
	cp   a                                           ; $7770: $bf
	rst  $38                                         ; $7771: $ff
	rst  $38                                         ; $7772: $ff
	push bc                                          ; $7773: $c5
	xor  d                                           ; $7774: $aa
	dec  [hl]                                        ; $7775: $35
	ld   de, $8811                                   ; $7776: $11 $11 $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7779: $cf
	rst  $38                                         ; $777a: $ff
	rst  $38                                         ; $777b: $ff
	sub  h                                           ; $777c: $94
	push bc                                          ; $777d: $c5
	inc  sp                                          ; $777e: $33
	ld   de, $9814                                   ; $777f: $11 $14 $98
	rst  $38                                         ; $7782: $ff
	rst  $38                                         ; $7783: $ff
	cp   $69                                         ; $7784: $fe $69
	or   d                                           ; $7786: $b2
	ld   b, c                                        ; $7787: $41
	ld   de, $8918                                   ; $7788: $11 $18 $89
	rst  $38                                         ; $778b: $ff
	rst  $38                                         ; $778c: $ff
	ld   a, [$625b]                                  ; $778d: $fa $5b $62
	ld   sp, $3911                                   ; $7790: $31 $11 $39
	adc  a                                           ; $7793: $8f
	rst  $38                                         ; $7794: $ff

Call_0ea_7795:
	rst  $38                                         ; $7795: $ff
	rst  $30                                         ; $7796: $f7
	sbc  e                                           ; $7797: $9b
	inc  h                                           ; $7798: $24
	ld   de, $5711                                   ; $7799: $11 $11 $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $779c: $cf
	rst  $38                                         ; $779d: $ff
	rst  $38                                         ; $779e: $ff
	xor  b                                           ; $779f: $a8
	and  [hl]                                        ; $77a0: $a6
	inc  [hl]                                        ; $77a1: $34
	ld   de, $9811                                   ; $77a2: $11 $11 $98
	rst  $38                                         ; $77a5: $ff
	rst  $38                                         ; $77a6: $ff
	cp   $89                                         ; $77a7: $fe $89
	and  d                                           ; $77a9: $a2
	ld   b, c                                        ; $77aa: $41
	ld   de, $7a18                                   ; $77ab: $11 $18 $7a
	rst  $38                                         ; $77ae: $ff
	rst  $38                                         ; $77af: $ff
	ei                                               ; $77b0: $fb
	sbc  e                                           ; $77b1: $9b
	ld   d, d                                        ; $77b2: $52
	ld   sp, $2811                                   ; $77b3: $31 $11 $28
	ld   a, a                                        ; $77b6: $7f
	rst  $38                                         ; $77b7: $ff
	rst  $38                                         ; $77b8: $ff
	ld   sp, hl                                      ; $77b9: $f9
	xor  d                                           ; $77ba: $aa
	inc  sp                                          ; $77bb: $33
	ld   de, $7711                                   ; $77bc: $11 $11 $77
	xor  a                                           ; $77bf: $af
	cp   $ff                                         ; $77c0: $fe $ff
	xor  c                                           ; $77c2: $a9
	jp   $1133                                       ; $77c3: $c3 $33 $11


	inc  d                                           ; $77c6: $14

Call_0ea_77c7:
	ld   [hl], a                                     ; $77c7: $77
	rst  $38                                         ; $77c8: $ff
	rst  $38                                         ; $77c9: $ff
	db   $fc                                         ; $77ca: $fc
	sbc  h                                           ; $77cb: $9c
	ld   h, e                                        ; $77cc: $63
	ld   b, c                                        ; $77cd: $41
	ld   de, $6b15                                   ; $77ce: $11 $15 $6b
	rst  $38                                         ; $77d1: $ff
	rst  $38                                         ; $77d2: $ff
	ei                                               ; $77d3: $fb
	xor  e                                           ; $77d4: $ab
	inc  [hl]                                        ; $77d5: $34
	ld   hl, $3611                                   ; $77d6: $21 $11 $36

Call_0ea_77d9:
	ld   a, a                                        ; $77d9: $7f
	rst  $38                                         ; $77da: $ff
	rst  $38                                         ; $77db: $ff
	jp   c, $23b5                                    ; $77dc: $da $b5 $23

	ld   de, $6511                                   ; $77df: $11 $11 $65
	rst  $38                                         ; $77e2: $ff
	rst  $38                                         ; $77e3: $ff
	rst  $38                                         ; $77e4: $ff
	cp   d                                           ; $77e5: $ba
	add  d                                           ; $77e6: $82
	ld   sp, $1511                                   ; $77e7: $31 $11 $15
	ld   l, c                                        ; $77ea: $69
	rst  $38                                         ; $77eb: $ff
	rst  $38                                         ; $77ec: $ff
	db   $fc                                         ; $77ed: $fc
	cp   e                                           ; $77ee: $bb
	ld   b, d                                        ; $77ef: $42
	ld   hl, $2611                                   ; $77f0: $21 $11 $26
	ld   e, a                                        ; $77f3: $5f
	rst  $38                                         ; $77f4: $ff
	rst  $38                                         ; $77f5: $ff
	db   $fc                                         ; $77f6: $fc
	or   [hl]                                        ; $77f7: $b6
	inc  hl                                          ; $77f8: $23
	ld   de, $6411                                   ; $77f9: $11 $11 $64
	rst  $38                                         ; $77fc: $ff
	rst  $38                                         ; $77fd: $ff
	rst  $38                                         ; $77fe: $ff
	db   $db                                         ; $77ff: $db
	add  d                                           ; $7800: $82
	ld   sp, $1411                                   ; $7801: $31 $11 $14
	ld   e, d                                        ; $7804: $5a
	cp   $ff                                         ; $7805: $fe $ff
	cp   $da                                         ; $7807: $fe $da
	inc  sp                                          ; $7809: $33
	ld   hl, $1611                                   ; $780a: $21 $11 $16
	ld   l, a                                        ; $780d: $6f
	rst  $38                                         ; $780e: $ff
	rst  $38                                         ; $780f: $ff
	cp   $b7                                         ; $7810: $fe $b7
	inc  sp                                          ; $7812: $33
	ld   de, $5411                                   ; $7813: $11 $11 $54
	xor  a                                           ; $7816: $af
	rst  $28                                         ; $7817: $ef
	rst  $38                                         ; $7818: $ff
	db   $fd                                         ; $7819: $fd
	add  h                                           ; $781a: $84
	ld   b, c                                        ; $781b: $41
	ld   de, $6511                                   ; $781c: $11 $11 $65
	rst  $38                                         ; $781f: $ff
	rst  $38                                         ; $7820: $ff
	cp   $eb                                         ; $7821: $fe $eb
	ld   h, l                                        ; $7823: $65
	ld   sp, $1511                                   ; $7824: $31 $11 $15
	ld   c, d                                        ; $7827: $4a
	rst  $38                                         ; $7828: $ff
	rst  $38                                         ; $7829: $ff
	rst  $38                                         ; $782a: $ff
	ld   [$1155], a                                  ; $782b: $ea $55 $11
	ld   de, $4f16                                   ; $782e: $11 $16 $4f
	cp   $ff                                         ; $7831: $fe $ff
	cp   $d7                                         ; $7833: $fe $d7
	ld   d, l                                        ; $7835: $55
	ld   de, $3311                                   ; $7836: $11 $11 $33
	ld   l, a                                        ; $7839: $6f
	rst  $28                                         ; $783a: $ef
	rst  $38                                         ; $783b: $ff
	rst  $38                                         ; $783c: $ff
	or   l                                           ; $783d: $b5
	ld   h, d                                        ; $783e: $62
	ld   de, $4211                                   ; $783f: $11 $11 $42
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7842: $cf
	rst  JumpTable                                         ; $7843: $df
	rst  $38                                         ; $7844: $ff
	cp   $85                                         ; $7845: $fe $85
	ld   d, c                                        ; $7847: $51
	ld   de, $3411                                   ; $7848: $11 $11 $34
	rst  $38                                         ; $784b: $ff
	rst  $38                                         ; $784c: $ff
	rst  $38                                         ; $784d: $ff
	db   $fd                                         ; $784e: $fd
	ld   h, [hl]                                     ; $784f: $66
	ld   b, c                                        ; $7850: $41
	ld   de, $2813                                   ; $7851: $11 $13 $28
	db   $fd                                         ; $7854: $fd
	rst  $38                                         ; $7855: $ff
	rst  $38                                         ; $7856: $ff
	ld   sp, hl                                      ; $7857: $f9
	ld   h, a                                        ; $7858: $67
	ld   de, $1411                                   ; $7859: $11 $11 $14
	dec  de                                          ; $785c: $1b
	db   $fd                                         ; $785d: $fd
	rst  $38                                         ; $785e: $ff
	rst  $38                                         ; $785f: $ff
	ld   hl, sp+$66                                  ; $7860: $f8 $66
	ld   de, $1311                                   ; $7862: $11 $11 $13
	ccf                                              ; $7865: $3f
	rst  $28                                         ; $7866: $ef
	rst  $38                                         ; $7867: $ff
	rst  $38                                         ; $7868: $ff
	rst  $10                                         ; $7869: $d7
	ld   [hl], l                                     ; $786a: $75
	ld   de, $2211                                   ; $786b: $11 $11 $22
	ld   c, a                                        ; $786e: $4f
	rst  JumpTable                                         ; $786f: $df
	rst  $38                                         ; $7870: $ff
	rst  $38                                         ; $7871: $ff
	add  $83                                         ; $7872: $c6 $83
	ld   de, $4111                                   ; $7874: $11 $11 $41
	ld   a, a                                        ; $7877: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7878: $cf
	rst  $38                                         ; $7879: $ff
	rst  $38                                         ; $787a: $ff
	and  a                                           ; $787b: $a7
	add  d                                           ; $787c: $82
	ld   de, $4111                                   ; $787d: $11 $11 $41
	sbc  a                                           ; $7880: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7881: $cf
	rst  $38                                         ; $7882: $ff
	rst  $38                                         ; $7883: $ff
	sub  a                                           ; $7884: $97
	add  c                                           ; $7885: $81
	ld   de, $4111                                   ; $7886: $11 $11 $41
	cp   a                                           ; $7889: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $788a: $cf
	rst  $38                                         ; $788b: $ff
	rst  $38                                         ; $788c: $ff
	adc  c                                           ; $788d: $89
	ld   [hl], c                                     ; $788e: $71
	ld   de, $3111                                   ; $788f: $11 $11 $31
	rst  JumpTable                                         ; $7892: $df
	cp   a                                           ; $7893: $bf
	rst  $38                                         ; $7894: $ff
	rst  $38                                         ; $7895: $ff
	adc  b                                           ; $7896: $88
	ld   [hl], c                                     ; $7897: $71
	ld   de, $3111                                   ; $7898: $11 $11 $31
	rst  JumpTable                                         ; $789b: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $789c: $cf
	rst  $38                                         ; $789d: $ff
	rst  $38                                         ; $789e: $ff
	ld   a, c                                        ; $789f: $79
	ld   [hl], c                                     ; $78a0: $71
	ld   de, $2111                                   ; $78a1: $11 $11 $21
	xor  $df                                         ; $78a4: $ee $df
	rst  $38                                         ; $78a6: $ff
	rst  $38                                         ; $78a7: $ff
	adc  c                                           ; $78a8: $89
	ld   h, c                                        ; $78a9: $61
	ld   de, $2111                                   ; $78aa: $11 $11 $21
	cp   $df                                         ; $78ad: $fe $df
	rst  $38                                         ; $78af: $ff
	cp   $7a                                         ; $78b0: $fe $7a
	ld   h, c                                        ; $78b2: $61
	ld   de, $2111                                   ; $78b3: $11 $11 $21
	db   $ed                                         ; $78b6: $ed
	rst  JumpTable                                         ; $78b7: $df
	rst  $38                                         ; $78b8: $ff
	cp   $79                                         ; $78b9: $fe $79
	ld   h, c                                        ; $78bb: $61
	ld   de, $3111                                   ; $78bc: $11 $11 $31
	rst  JumpTable                                         ; $78bf: $df
	rst  JumpTable                                         ; $78c0: $df
	rst  $38                                         ; $78c1: $ff
	rst  $38                                         ; $78c2: $ff
	adc  c                                           ; $78c3: $89
	ld   [hl], c                                     ; $78c4: $71
	ld   de, $4111                                   ; $78c5: $11 $11 $41
	xor  a                                           ; $78c8: $af
	cp   a                                           ; $78c9: $bf
	rst  $38                                         ; $78ca: $ff
	rst  $38                                         ; $78cb: $ff
	adc  c                                           ; $78cc: $89
	sub  c                                           ; $78cd: $91
	ld   de, $4111                                   ; $78ce: $11 $11 $41
	ld   a, a                                        ; $78d1: $7f
	xor  a                                           ; $78d2: $af
	rst  $38                                         ; $78d3: $ff
	rst  $38                                         ; $78d4: $ff
	sbc  b                                           ; $78d5: $98
	add  d                                           ; $78d6: $82
	ld   de, $4111                                   ; $78d7: $11 $11 $41
	ld   c, a                                        ; $78da: $4f
	rst  JumpTable                                         ; $78db: $df
	rst  $38                                         ; $78dc: $ff
	rst  $28                                         ; $78dd: $ef
	rst  ToBoot                                         ; $78de: $c7
	and  h                                           ; $78df: $a4
	ld   de, $1411                                   ; $78e0: $11 $11 $14
	ld   e, $fc                                      ; $78e3: $1e $fc
	rst  $38                                         ; $78e5: $ff
	rst  $28                                         ; $78e6: $ef
	rst  $20                                         ; $78e7: $e7
	sub  [hl]                                        ; $78e8: $96
	ld   de, $1511                                   ; $78e9: $11 $11 $15
	add  hl, de                                      ; $78ec: $19
	ei                                               ; $78ed: $fb
	rst  $38                                         ; $78ee: $ff
	rst  $38                                         ; $78ef: $ff
	ld   sp, hl                                      ; $78f0: $f9
	ld   a, b                                        ; $78f1: $78
	ld   sp, $1311                                   ; $78f2: $31 $11 $13
	ld   b, e                                        ; $78f5: $43
	rst  $38                                         ; $78f6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78f7: $cf
	db   $fd                                         ; $78f8: $fd
	db   $fd                                         ; $78f9: $fd
	ld   l, b                                        ; $78fa: $68
	ld   h, c                                        ; $78fb: $61
	ld   de, $6211                                   ; $78fc: $11 $11 $62
	sbc  a                                           ; $78ff: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7900: $cf
	rst  $38                                         ; $7901: $ff
	rst  $38                                         ; $7902: $ff
	add  a                                           ; $7903: $87
	ld   [hl], h                                     ; $7904: $74
	ld   de, $4511                                   ; $7905: $11 $11 $45
	ccf                                              ; $7908: $3f
	db   $fc                                         ; $7909: $fc
	rst  $38                                         ; $790a: $ff
	rst  JumpTable                                         ; $790b: $df
	sub  $76                                         ; $790c: $d6 $76
	ld   hl, $1611                                   ; $790e: $21 $11 $16
	ld   b, a                                        ; $7911: $47
	cp   $df                                         ; $7912: $fe $df
	db   $fc                                         ; $7914: $fc
	ld   [$6167], a                                  ; $7915: $ea $67 $61
	ld   de, $7311                                   ; $7918: $11 $11 $73
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $791b: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $791c: $cf
	db   $fd                                         ; $791d: $fd
	db   $dd                                         ; $791e: $dd
	add  [hl]                                        ; $791f: $86
	ld   [hl], h                                     ; $7920: $74
	ld   de, $5611                                   ; $7921: $11 $11 $56
	ld   e, a                                        ; $7924: $5f
	db   $ec                                         ; $7925: $ec
	rst  $38                                         ; $7926: $ff
	call Call_0ea_77c7                               ; $7927: $cd $c7 $77
	ld   sp, $1611                                   ; $792a: $31 $11 $16
	ld   d, a                                        ; $792d: $57
	db   $fc                                         ; $792e: $fc
	rst  $28                                         ; $792f: $ef
	db   $fc                                         ; $7930: $fc
	jp   c, $6377                                    ; $7931: $da $77 $63

	ld   de, $8411                                   ; $7934: $11 $11 $84
	sbc  a                                           ; $7937: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7938: $cf
	rst  $38                                         ; $7939: $ff
	cp   h                                           ; $793a: $bc
	sub  a                                           ; $793b: $97
	halt                                             ; $793c: $76
	ld   sp, $1811                                   ; $793d: $31 $11 $18
	ld   e, c                                        ; $7940: $59
	db   $fc                                         ; $7941: $fc
	rst  $28                                         ; $7942: $ef
	db   $ec                                         ; $7943: $ec
	cp   d                                           ; $7944: $ba
	ld   [hl], a                                     ; $7945: $77
	ld   h, e                                        ; $7946: $63
	ld   de, $7612                                   ; $7947: $11 $12 $76
	call $ffef                                       ; $794a: $cd $ef $ff
	cp   d                                           ; $794d: $ba
	and  a                                           ; $794e: $a7
	ld   h, [hl]                                     ; $794f: $66
	ld   sp, $3711                                   ; $7950: $31 $11 $37
	ld   e, e                                        ; $7953: $5b
	db   $fc                                         ; $7954: $fc
	rst  $38                                         ; $7955: $ff
	db   $ec                                         ; $7956: $ec
	cp   c                                           ; $7957: $b9
	ld   h, [hl]                                     ; $7958: $66
	ld   d, c                                        ; $7959: $51
	ld   de, $9513                                   ; $795a: $11 $13 $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $795d: $cf
	sbc  $fe                                         ; $795e: $de $fe
	cp   d                                           ; $7960: $ba
	and  [hl]                                        ; $7961: $a6
	ld   h, l                                        ; $7962: $65
	ld   hl, $4811                                   ; $7963: $21 $11 $48
	ld   l, e                                        ; $7966: $6b
	db   $fc                                         ; $7967: $fc
	rst  $38                                         ; $7968: $ff
	db   $eb                                         ; $7969: $eb
	xor  d                                           ; $796a: $aa
	ld   h, [hl]                                     ; $796b: $66
	ld   d, d                                        ; $796c: $52
	ld   de, $7714                                   ; $796d: $11 $14 $77
	cp   [hl]                                        ; $7970: $be
	rst  $28                                         ; $7971: $ef
	cp   $c9                                         ; $7972: $fe $c9
	and  a                                           ; $7974: $a7
	ld   d, l                                        ; $7975: $55
	ld   hl, $4711                                   ; $7976: $21 $11 $47
	ld   a, d                                        ; $7979: $7a
	cp   $ef                                         ; $797a: $fe $ef
	jp   c, $76a9                                    ; $797c: $da $a9 $76

	ld   h, e                                        ; $797f: $63
	ld   de, $7912                                   ; $7980: $11 $12 $79
	xor  [hl]                                        ; $7983: $ae
	cp   $ee                                         ; $7984: $fe $ee
	ret                                              ; $7986: $c9


	adc  b                                           ; $7987: $88
	ld   h, l                                        ; $7988: $65
	ld   b, c                                        ; $7989: $41
	ld   de, $9917                                   ; $798a: $11 $17 $99
	rst  $28                                         ; $798d: $ef
	xor  $ed                                         ; $798e: $ee $ed
	adc  b                                           ; $7990: $88
	add  [hl]                                        ; $7991: $86
	ld   d, h                                        ; $7992: $54
	ld   hl, $6912                                   ; $7993: $21 $12 $69
	adc  h                                           ; $7996: $8c
	db   $fd                                         ; $7997: $fd
	xor  $d9                                         ; $7998: $ee $d9
	adc  c                                           ; $799a: $89
	ld   [hl], l                                     ; $799b: $75
	ld   d, d                                        ; $799c: $52
	ld   de, $9a24                                   ; $799d: $11 $24 $9a
	cp   [hl]                                        ; $79a0: $be
	cp   $cd                                         ; $79a1: $fe $cd
	and  a                                           ; $79a3: $a7
	sub  a                                           ; $79a4: $97
	ld   h, h                                        ; $79a5: $64
	ld   sp, $4912                                   ; $79a6: $31 $12 $49
	xor  b                                           ; $79a9: $a8
	rst  $28                                         ; $79aa: $ef
	sbc  $da                                         ; $79ab: $de $da
	adc  b                                           ; $79ad: $88
	add  [hl]                                        ; $79ae: $86
	ld   d, h                                        ; $79af: $54
	ld   hl, $7a13                                   ; $79b0: $21 $13 $7a
	sbc  l                                           ; $79b3: $9d
	db   $ec                                         ; $79b4: $ec
	db   $ed                                         ; $79b5: $ed
	ret  c                                           ; $79b6: $d8

	ld   a, c                                        ; $79b7: $79
	halt                                             ; $79b8: $76
	ld   b, d                                        ; $79b9: $42
	ld   de, $a925                                   ; $79ba: $11 $25 $a9
	xor  a                                           ; $79bd: $af
	db   $ed                                         ; $79be: $ed
	db   $dd                                         ; $79bf: $dd
	sub  a                                           ; $79c0: $97
	sbc  c                                           ; $79c1: $99
	ld   h, h                                        ; $79c2: $64
	ld   sp, $5b11                                   ; $79c3: $31 $11 $5b
	xor  c                                           ; $79c6: $a9
	rst  $38                                         ; $79c7: $ff
	set  3, d                                        ; $79c8: $cb $da
	ld   a, c                                        ; $79ca: $79
	sub  a                                           ; $79cb: $97
	ld   b, e                                        ; $79cc: $43
	ld   hl, $7b22                                   ; $79cd: $21 $22 $7b
	ld   a, e                                        ; $79d0: $7b
	rst  $38                                         ; $79d1: $ff
	call z, Call_0ea_79d9                            ; $79d2: $cc $d9 $79
	add  [hl]                                        ; $79d5: $86
	ld   [hl-], a                                    ; $79d6: $32
	ld   [de], a                                     ; $79d7: $12
	inc  [hl]                                        ; $79d8: $34

Call_0ea_79d9:
	cp   c                                           ; $79d9: $b9
	xor  a                                           ; $79da: $af
	xor  $bc                                         ; $79db: $ee $bc
	xor  b                                           ; $79dd: $a8
	sbc  b                                           ; $79de: $98
	ld   [hl], e                                     ; $79df: $73
	ld   hl, $3a23                                   ; $79e0: $21 $23 $3a
	or   a                                           ; $79e3: $b7
	rst  JumpTable                                         ; $79e4: $df
	db   $db                                         ; $79e5: $db
	cp   e                                           ; $79e6: $bb
	adc  c                                           ; $79e7: $89
	sbc  b                                           ; $79e8: $98
	ld   b, c                                        ; $79e9: $41
	ld   de, $7c42                                   ; $79ea: $11 $42 $7c
	sbc  e                                           ; $79ed: $9b
	cp   $ca                                         ; $79ee: $fe $ca
	cp   c                                           ; $79f0: $b9
	xor  c                                           ; $79f1: $a9
	add  [hl]                                        ; $79f2: $86
	ld   de, $4513                                   ; $79f3: $11 $13 $45
	cp   c                                           ; $79f6: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f7: $cf
	db   $dd                                         ; $79f8: $dd
	xor  d                                           ; $79f9: $aa
	adc  d                                           ; $79fa: $8a
	and  a                                           ; $79fb: $a7
	ld   h, c                                        ; $79fc: $61
	ld   de, $5c35                                   ; $79fd: $11 $35 $5c
	xor  c                                           ; $7a00: $a9
	rst  $28                                         ; $7a01: $ef
	reti                                             ; $7a02: $d9


	cp   c                                           ; $7a03: $b9
	xor  c                                           ; $7a04: $a9
	adc  c                                           ; $7a05: $89
	ld   sp, $4303                                   ; $7a06: $31 $03 $43
	xor  d                                           ; $7a09: $aa
	cp   l                                           ; $7a0a: $bd
	cp   $bb                                         ; $7a0b: $fe $bb
	sbc  b                                           ; $7a0d: $98
	sbc  b                                           ; $7a0e: $98
	add  h                                           ; $7a0f: $84
	ld   hl, $4a14                                   ; $7a10: $21 $14 $4a
	cp   d                                           ; $7a13: $ba
	sbc  $eb                                         ; $7a14: $de $eb
	cp   c                                           ; $7a16: $b9
	adc  d                                           ; $7a17: $8a
	adc  b                                           ; $7a18: $88
	ld   b, d                                        ; $7a19: $42
	ld   de, $8c44                                   ; $7a1a: $11 $44 $8c
	sbc  h                                           ; $7a1d: $9c
	db   $dd                                         ; $7a1e: $dd
	res  7, c                                        ; $7a1f: $cb $b9
	xor  b                                           ; $7a21: $a8
	ld   [hl], h                                     ; $7a22: $74
	ld   de, $5815                                   ; $7a23: $11 $15 $58
	cp   d                                           ; $7a26: $ba
	cp   a                                           ; $7a27: $bf
	db   $fc                                         ; $7a28: $fc
	xor  c                                           ; $7a29: $a9
	sbc  d                                           ; $7a2a: $9a
	add  a                                           ; $7a2b: $87
	ld   d, c                                        ; $7a2c: $51
	ld   de, $7b46                                   ; $7a2d: $11 $46 $7b
	sbc  h                                           ; $7a30: $9c
	db   $ed                                         ; $7a31: $ed
	reti                                             ; $7a32: $d9


	sbc  b                                           ; $7a33: $98
	cp   c                                           ; $7a34: $b9
	ld   [hl], l                                     ; $7a35: $75
	ld   [de], a                                     ; $7a36: $12
	dec  h                                           ; $7a37: $25
	ld   b, [hl]                                     ; $7a38: $46
	cp   c                                           ; $7a39: $b9
	call $a9fc                                       ; $7a3a: $cd $fc $a9
	adc  d                                           ; $7a3d: $8a
	adc  b                                           ; $7a3e: $88
	ld   h, e                                        ; $7a3f: $63
	ld   hl, $7c33                                   ; $7a40: $21 $33 $7c
	xor  e                                           ; $7a43: $ab
	xor  $ca                                         ; $7a44: $ee $ca
	xor  c                                           ; $7a46: $a9
	xor  b                                           ; $7a47: $a8
	add  [hl]                                        ; $7a48: $86
	ld   hl, $4814                                   ; $7a49: $21 $14 $48
	xor  d                                           ; $7a4c: $aa
	db   $dd                                         ; $7a4d: $dd
	db   $eb                                         ; $7a4e: $eb
	cp   c                                           ; $7a4f: $b9
	adc  d                                           ; $7a50: $8a
	add  a                                           ; $7a51: $87
	ld   sp, $5413                                   ; $7a52: $31 $13 $54
	adc  e                                           ; $7a55: $8b
	xor  h                                           ; $7a56: $ac
	sbc  $cb                                         ; $7a57: $de $cb
	sbc  b                                           ; $7a59: $98
	cp   c                                           ; $7a5a: $b9
	ld   h, e                                        ; $7a5b: $63
	ld   [de], a                                     ; $7a5c: $12
	inc  [hl]                                        ; $7a5d: $34
	ld   c, c                                        ; $7a5e: $49
	xor  d                                           ; $7a5f: $aa
	cp   l                                           ; $7a60: $bd
	db   $ec                                         ; $7a61: $ec
	cp   b                                           ; $7a62: $b8
	sbc  d                                           ; $7a63: $9a

Jump_0ea_7a64:
	ld   [hl], l                                     ; $7a64: $75
	ld   [hl-], a                                    ; $7a65: $32
	dec  [hl]                                        ; $7a66: $35
	ld   b, h                                        ; $7a67: $44
	adc  d                                           ; $7a68: $8a
	cp   h                                           ; $7a69: $bc
	db   $ed                                         ; $7a6a: $ed
	res  1, b                                        ; $7a6b: $cb $88
	sub  a                                           ; $7a6d: $97
	ld   h, d                                        ; $7a6e: $62
	ld   [hl-], a                                    ; $7a6f: $32
	ld   [hl-], a                                    ; $7a70: $32
	ld   e, e                                        ; $7a71: $5b
	cp   e                                           ; $7a72: $bb
	sbc  $db                                         ; $7a73: $de $db
	and  a                                           ; $7a75: $a7
	xor  c                                           ; $7a76: $a9
	add  l                                           ; $7a77: $85
	ld   de, $4725                                   ; $7a78: $11 $25 $47
	xor  d                                           ; $7a7b: $aa
	sbc  $fc                                         ; $7a7c: $de $fc
	cp   b                                           ; $7a7e: $b8
	sbc  c                                           ; $7a7f: $99
	sub  a                                           ; $7a80: $97
	ld   [hl-], a                                    ; $7a81: $32
	inc  de                                          ; $7a82: $13
	ld   b, h                                        ; $7a83: $44
	sbc  e                                           ; $7a84: $9b
	cp   e                                           ; $7a85: $bb
	sbc  $cb                                         ; $7a86: $de $cb
	sbc  b                                           ; $7a88: $98
	sbc  b                                           ; $7a89: $98
	ld   h, e                                        ; $7a8a: $63
	ld   [de], a                                     ; $7a8b: $12
	ld   b, h                                        ; $7a8c: $44
	ld   c, c                                        ; $7a8d: $49
	xor  e                                           ; $7a8e: $ab
	adc  $db                                         ; $7a8f: $ce $db
	or   a                                           ; $7a91: $b7
	xor  c                                           ; $7a92: $a9
	add  h                                           ; $7a93: $84
	ld   hl, $3715                                   ; $7a94: $21 $15 $37
	xor  e                                           ; $7a97: $ab
	db   $dd                                         ; $7a98: $dd
	db   $ec                                         ; $7a99: $ec
	ret  z                                           ; $7a9a: $c8

	ld   a, c                                        ; $7a9b: $79
	sub  a                                           ; $7a9c: $97
	ld   [hl-], a                                    ; $7a9d: $32
	inc  de                                          ; $7a9e: $13
	ld   b, l                                        ; $7a9f: $45
	sbc  d                                           ; $7aa0: $9a
	cp   h                                           ; $7aa1: $bc
	xor  $dc                                         ; $7aa2: $ee $dc
	sbc  c                                           ; $7aa4: $99
	add  a                                           ; $7aa5: $87
	ld   d, d                                        ; $7aa6: $52
	ld   [de], a                                     ; $7aa7: $12
	ld   b, h                                        ; $7aa8: $44
	ld   l, d                                        ; $7aa9: $6a
	xor  l                                           ; $7aaa: $ad
	adc  $dc                                         ; $7aab: $ce $dc
	cp   c                                           ; $7aad: $b9

Jump_0ea_7aae:
	sub  a                                           ; $7aae: $97
	ld   h, d                                        ; $7aaf: $62
	ld   de, $5935                                   ; $7ab0: $11 $35 $59
	xor  h                                           ; $7ab3: $ac
	db   $dd                                         ; $7ab4: $dd
	db   $fd                                         ; $7ab5: $fd
	ret  c                                           ; $7ab6: $d8

	add  a                                           ; $7ab7: $87
	ld   h, l                                        ; $7ab8: $65
	ld   [hl+], a                                    ; $7ab9: $22
	inc  h                                           ; $7aba: $24
	ld   b, [hl]                                     ; $7abb: $46
	xor  d                                           ; $7abc: $aa
	db   $dd                                         ; $7abd: $dd
	db   $fd                                         ; $7abe: $fd
	jp   z, $7778                                    ; $7abf: $ca $78 $77

	ld   b, c                                        ; $7ac2: $41
	ld   de, $ab34                                   ; $7ac3: $11 $34 $ab
	sbc  $de                                         ; $7ac6: $de $de
	bit  7, c                                        ; $7ac8: $cb $79
	sub  a                                           ; $7aca: $97
	ld   d, c                                        ; $7acb: $51
	ld   de, $9c33                                   ; $7acc: $11 $33 $9c
	adc  $ce                                         ; $7acf: $ce $ce
	call c, $9699                                    ; $7ad1: $dc $99 $96
	ld   h, c                                        ; $7ad4: $61
	ld   de, $6b33                                   ; $7ad5: $11 $33 $6b
	cp   a                                           ; $7ad8: $bf
	rst  $28                                         ; $7ad9: $ef
	jp   c, $a697                                    ; $7ada: $da $97 $a6

	ld   h, d                                        ; $7add: $62
	ld   de, $4d13                                   ; $7ade: $11 $13 $4d
	adc  $dd                                         ; $7ae1: $ce $dd
	db   $eb                                         ; $7ae3: $eb
	rst  ToBoot                                         ; $7ae4: $c7
	and  a                                           ; $7ae5: $a7
	ld   h, e                                        ; $7ae6: $63
	ld   de, $3a13                                   ; $7ae7: $11 $13 $3a
	call $eced                                       ; $7aea: $cd $ed $ec
	ret                                              ; $7aed: $c9


	sub  a                                           ; $7aee: $97
	ld   d, e                                        ; $7aef: $53
	ld   [de], a                                     ; $7af0: $12
	inc  de                                          ; $7af1: $13
	add  hl, hl                                      ; $7af2: $29
	cp   l                                           ; $7af3: $bd
	db   $ed                                         ; $7af4: $ed
	db   $eb                                         ; $7af5: $eb
	jp   z, Jump_0ea_5499                            ; $7af6: $ca $99 $54

	ld   de, $3713                                   ; $7af9: $11 $13 $37
	call c, $eced                                    ; $7afc: $dc $ed $ec
	db   $db                                         ; $7aff: $db
	adc  c                                           ; $7b00: $89
	ld   d, l                                        ; $7b01: $55
	ld   [de], a                                     ; $7b02: $12
	ld   [de], a                                     ; $7b03: $12
	ld   [hl], $bc                                   ; $7b04: $36 $bc
	cp   $fd                                         ; $7b06: $fe $fd
	jp   z, Jump_0ea_6688                            ; $7b08: $ca $88 $66

	ld   [hl+], a                                    ; $7b0b: $22
	ld   de, $dd25                                   ; $7b0c: $11 $25 $dd
	db   $ed                                         ; $7b0f: $ed
	xor  $ba                                         ; $7b10: $ee $ba
	adc  d                                           ; $7b12: $8a
	halt                                             ; $7b13: $76
	ld   hl, $3511                                   ; $7b14: $21 $11 $35
	call z, $dcfe                                    ; $7b17: $cc $fe $dc
	cp   e                                           ; $7b1a: $bb
	sbc  e                                           ; $7b1b: $9b
	ld   [hl], l                                     ; $7b1c: $75
	ld   hl, $3611                                   ; $7b1d: $21 $11 $36
	call c, $dded                                    ; $7b20: $dc $ed $dd
	call c, Call_0ea_7589                            ; $7b23: $dc $89 $75
	ld   hl, $2411                                   ; $7b26: $21 $11 $24
	call $defd                                       ; $7b29: $cd $fd $de
	call Call_0ea_6589                               ; $7b2c: $cd $89 $65
	ld   sp, $3411                                   ; $7b2f: $31 $11 $34
	set  3, l                                        ; $7b32: $cb $dd
	sbc  $cd                                         ; $7b34: $de $cd
	adc  c                                           ; $7b36: $89
	ld   d, l                                        ; $7b37: $55
	ld   [hl-], a                                    ; $7b38: $32
	ld   sp, $bc23                                   ; $7b39: $31 $23 $bc
	db   $fd                                         ; $7b3c: $fd
	call z, $9acd                                    ; $7b3d: $cc $cd $9a
	ld   h, l                                        ; $7b40: $65
	ld   sp, $3232                                   ; $7b41: $31 $32 $32
	adc  e                                           ; $7b44: $8b
	xor  $cd                                         ; $7b45: $ee $cd
	call $76a9                                       ; $7b47: $cd $a9 $76
	ld   sp, $3311                                   ; $7b4a: $31 $11 $33
	sbc  e                                           ; $7b4d: $9b
	adc  $dd                                         ; $7b4e: $ce $dd
	sbc  $99                                         ; $7b50: $de $99
	ld   h, h                                        ; $7b52: $64
	ld   b, d                                        ; $7b53: $42
	ld   sp, $8c11                                   ; $7b54: $31 $11 $8c
	rst  $28                                         ; $7b57: $ef
	call z, $aacd                                    ; $7b58: $cc $cd $aa
	add  l                                           ; $7b5b: $85
	ld   b, c                                        ; $7b5c: $41
	ld   sp, $9c23                                   ; $7b5d: $31 $23 $9c
	call $efbe                                       ; $7b60: $cd $be $ef
	cp   b                                           ; $7b63: $b8
	ld   [hl], l                                     ; $7b64: $75
	ld   d, c                                        ; $7b65: $51
	ld   hl, $6b22                                   ; $7b66: $21 $22 $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b69: $cf
	sbc  $dc                                         ; $7b6a: $de $dc
	cp   c                                           ; $7b6c: $b9
	ld   [hl], h                                     ; $7b6d: $74
	ld   d, d                                        ; $7b6e: $52
	ld   [hl-], a                                    ; $7b6f: $32
	ld   de, $df6b                                   ; $7b70: $11 $6b $df
	sbc  $cc                                         ; $7b73: $de $cc
	sbc  b                                           ; $7b75: $98
	add  [hl]                                        ; $7b76: $86
	ld   h, c                                        ; $7b77: $61
	ld   hl, $6b33                                   ; $7b78: $21 $33 $6b
	xor  [hl]                                        ; $7b7b: $ae
	sbc  $dd                                         ; $7b7c: $de $dd
	ret                                              ; $7b7e: $c9


	sub  h                                           ; $7b7f: $94
	ld   b, d                                        ; $7b80: $42
	inc  sp                                          ; $7b81: $33
	ld   [hl-], a                                    ; $7b82: $32
	add  hl, sp                                      ; $7b83: $39
	xor  [hl]                                        ; $7b84: $ae
	xor  $dc                                         ; $7b85: $ee $dc
	cp   b                                           ; $7b87: $b8
	add  [hl]                                        ; $7b88: $86
	ld   h, e                                        ; $7b89: $63
	ld   [hl-], a                                    ; $7b8a: $32
	inc  hl                                          ; $7b8b: $23
	add  hl, sp                                      ; $7b8c: $39
	cp   l                                           ; $7b8d: $bd
	sbc  $dd                                         ; $7b8e: $de $dd
	ret                                              ; $7b90: $c9


	xor  b                                           ; $7b91: $a8
	ld   h, h                                        ; $7b92: $64
	ld   [de], a                                     ; $7b93: $12
	inc  hl                                          ; $7b94: $23
	jr   c, @-$52                                    ; $7b95: $38 $ac

	xor  $dc                                         ; $7b97: $ee $dc
	res  5, c                                        ; $7b99: $cb $a9
	ld   d, e                                        ; $7b9b: $53
	ld   [bc], a                                     ; $7b9c: $02
	inc  h                                           ; $7b9d: $24
	ld   [hl], $9b                                   ; $7b9e: $36 $9b
	db   $ed                                         ; $7ba0: $ed
	call c, $a9dc                                    ; $7ba1: $dc $dc $a9
	ld   d, e                                        ; $7ba4: $53
	ld   [de], a                                     ; $7ba5: $12
	inc  h                                           ; $7ba6: $24
	ld   [hl], $ab                                   ; $7ba7: $36 $ab
	db   $db                                         ; $7ba9: $db
	db   $dd                                         ; $7baa: $dd
	db   $fc                                         ; $7bab: $fc
	xor  b                                           ; $7bac: $a8
	ld   d, l                                        ; $7bad: $55
	inc  hl                                          ; $7bae: $23
	inc  hl                                          ; $7baf: $23
	dec  [hl]                                        ; $7bb0: $35
	sbc  d                                           ; $7bb1: $9a
	db   $ed                                         ; $7bb2: $ed
	call c, $a9cc                                    ; $7bb3: $dc $cc $a9
	ld   h, h                                        ; $7bb6: $64
	ld   [hl+], a                                    ; $7bb7: $22
	inc  sp                                          ; $7bb8: $33
	inc  sp                                          ; $7bb9: $33
	adc  d                                           ; $7bba: $8a
	db   $dd                                         ; $7bbb: $dd
	call c, $a9cc                                    ; $7bbc: $dc $cc $a9
	ld   h, h                                        ; $7bbf: $64
	ld   [hl+], a                                    ; $7bc0: $22
	inc  sp                                          ; $7bc1: $33
	inc  sp                                          ; $7bc2: $33
	ld   a, c                                        ; $7bc3: $79
	call $dedc                                       ; $7bc4: $cd $dc $de
	cp   e                                           ; $7bc7: $bb
	ld   [hl], h                                     ; $7bc8: $74
	ld   [hl+], a                                    ; $7bc9: $22
	inc  sp                                          ; $7bca: $33
	ld   [hl-], a                                    ; $7bcb: $32
	ld   l, c                                        ; $7bcc: $69
	adc  $dc                                         ; $7bcd: $ce $dc
	cp   h                                           ; $7bcf: $bc
	cp   h                                           ; $7bd0: $bc
	add  l                                           ; $7bd1: $85
	ld   sp, $5333                                   ; $7bd2: $31 $33 $53
	ld   l, c                                        ; $7bd5: $69
	cp   l                                           ; $7bd6: $bd
	db   $dd                                         ; $7bd7: $dd
	cp   l                                           ; $7bd8: $bd
	cp   d                                           ; $7bd9: $ba
	add  l                                           ; $7bda: $85
	ld   sp, $4333                                   ; $7bdb: $31 $33 $43
	ld   e, c                                        ; $7bde: $59
	xor  l                                           ; $7bdf: $ad
	call z, $cbcd                                    ; $7be0: $cc $cd $cb
	add  l                                           ; $7be3: $85
	ld   b, d                                        ; $7be4: $42
	inc  sp                                          ; $7be5: $33
	ld   b, e                                        ; $7be6: $43
	ld   c, c                                        ; $7be7: $49
	cp   l                                           ; $7be8: $bd
	db   $ec                                         ; $7be9: $ec
	call $a6dc                                       ; $7bea: $cd $dc $a6
	ld   [hl-], a                                    ; $7bed: $32
	inc  hl                                          ; $7bee: $23
	ld   b, e                                        ; $7bef: $43
	ld   c, c                                        ; $7bf0: $49
	cp   l                                           ; $7bf1: $bd
	call $ebce                                       ; $7bf2: $cd $ce $eb
	and  [hl]                                        ; $7bf5: $a6
	ld   b, e                                        ; $7bf6: $43
	inc  sp                                          ; $7bf7: $33
	ld   [hl-], a                                    ; $7bf8: $32
	ld   c, b                                        ; $7bf9: $48
	cp   l                                           ; $7bfa: $bd
	set  1, [hl]                                     ; $7bfb: $cb $ce
	db   $eb                                         ; $7bfd: $eb
	sub  [hl]                                        ; $7bfe: $96
	ld   b, e                                        ; $7bff: $43
	inc  hl                                          ; $7c00: $23
	inc  sp                                          ; $7c01: $33
	ld   c, b                                        ; $7c02: $48
	xor  e                                           ; $7c03: $ab
	db   $dd                                         ; $7c04: $dd
	call z, $b7dc                                    ; $7c05: $cc $dc $b7
	ld   b, d                                        ; $7c08: $42
	inc  hl                                          ; $7c09: $23
	ld   b, h                                        ; $7c0a: $44
	ld   b, a                                        ; $7c0b: $47
	sbc  h                                           ; $7c0c: $9c
	call c, $ecdd                                    ; $7c0d: $dc $dd $ec
	sub  [hl]                                        ; $7c10: $96
	ld   b, d                                        ; $7c11: $42
	inc  sp                                          ; $7c12: $33
	inc  sp                                          ; $7c13: $33
	ld   b, a                                        ; $7c14: $47
	sbc  h                                           ; $7c15: $9c
	call z, $ebde                                    ; $7c16: $cc $de $eb
	and  [hl]                                        ; $7c19: $a6
	ld   b, e                                        ; $7c1a: $43
	inc  sp                                          ; $7c1b: $33
	inc  sp                                          ; $7c1c: $33
	scf                                              ; $7c1d: $37
	xor  h                                           ; $7c1e: $ac
	db   $ed                                         ; $7c1f: $ed
	call z, $a6ec                                    ; $7c20: $cc $ec $a6
	ld   [hl-], a                                    ; $7c23: $32
	inc  h                                           ; $7c24: $24
	ld   b, e                                        ; $7c25: $43
	scf                                              ; $7c26: $37
	xor  e                                           ; $7c27: $ab
	db   $dd                                         ; $7c28: $dd
	db   $dd                                         ; $7c29: $dd
	db   $db                                         ; $7c2a: $db
	and  a                                           ; $7c2b: $a7
	ld   b, e                                        ; $7c2c: $43
	inc  hl                                          ; $7c2d: $23
	inc  sp                                          ; $7c2e: $33
	scf                                              ; $7c2f: $37
	xor  h                                           ; $7c30: $ac
	call c, $fdcd                                    ; $7c31: $dc $cd $fd
	and  [hl]                                        ; $7c34: $a6
	ld   [hl-], a                                    ; $7c35: $32
	inc  h                                           ; $7c36: $24
	inc  sp                                          ; $7c37: $33
	ld   c, b                                        ; $7c38: $48
	xor  l                                           ; $7c39: $ad
	call z, $fccd                                    ; $7c3a: $cc $cd $fc
	sub  l                                           ; $7c3d: $95
	ld   hl, $4424                                   ; $7c3e: $21 $24 $44
	ld   c, c                                        ; $7c41: $49
	xor  h                                           ; $7c42: $ac
	call c, $dbdc                                    ; $7c43: $dc $dc $db
	and  [hl]                                        ; $7c46: $a6
	ld   [hl-], a                                    ; $7c47: $32
	inc  hl                                          ; $7c48: $23
	inc  sp                                          ; $7c49: $33
	ld   e, d                                        ; $7c4a: $5a
	cp   [hl]                                        ; $7c4b: $be
	db   $ec                                         ; $7c4c: $ec
	call $84da                                       ; $7c4d: $cd $da $84
	ld   [hl+], a                                    ; $7c50: $22
	inc  sp                                          ; $7c51: $33
	inc  sp                                          ; $7c52: $33
	ld   l, d                                        ; $7c53: $6a
	adc  $dc                                         ; $7c54: $ce $dc
	call Call_0ea_74ca                               ; $7c56: $cd $ca $74
	ld   [hl+], a                                    ; $7c59: $22
	inc  sp                                          ; $7c5a: $33
	inc  [hl]                                        ; $7c5b: $34
	adc  e                                           ; $7c5c: $8b
	db   $dd                                         ; $7c5d: $dd
	call z, $c9df                                    ; $7c5e: $cc $df $c9
	ld   h, e                                        ; $7c61: $63
	ld   [hl+], a                                    ; $7c62: $22
	ld   [hl-], a                                    ; $7c63: $32
	ld   [hl], $ab                                   ; $7c64: $36 $ab
	res  7, h                                        ; $7c66: $cb $bc
	cp   $c8                                         ; $7c68: $fe $c8
	ld   b, d                                        ; $7c6a: $42
	ld   [de], a                                     ; $7c6b: $12
	inc  sp                                          ; $7c6c: $33
	ld   b, [hl]                                     ; $7c6d: $46
	xor  h                                           ; $7c6e: $ac
	call c, $febd                                    ; $7c6f: $dc $bd $fe
	or   a                                           ; $7c72: $b7
	ld   sp, $3313                                   ; $7c73: $31 $13 $33
	ld   b, a                                        ; $7c76: $47
	cp   l                                           ; $7c77: $bd
	call c, $ecbc                                    ; $7c78: $dc $bc $ec
	and  [hl]                                        ; $7c7b: $a6
	ld   de, $3413                                   ; $7c7c: $11 $13 $34
	ld   l, c                                        ; $7c7f: $69
	cp   l                                           ; $7c80: $bd
	call z, $ecdf                                    ; $7c81: $cc $df $ec
	ld   [hl], d                                     ; $7c84: $72
	ld   de, $3434                                   ; $7c85: $11 $34 $34
	ld   a, d                                        ; $7c88: $7a
	rst  JumpTable                                         ; $7c89: $df
	call z, $c9de                                    ; $7c8a: $cc $de $c9
	ld   d, c                                        ; $7c8d: $51
	ld   de, $3722                                   ; $7c8e: $11 $22 $37
	cp   l                                           ; $7c91: $bd
	call c, $eecc                                    ; $7c92: $dc $cc $ee
	or   [hl]                                        ; $7c95: $b6
	ld   hl, $3312                                   ; $7c96: $21 $12 $33
	ld   e, d                                        ; $7c99: $5a
	adc  $dc                                         ; $7c9a: $ce $dc
	call Call_0ea_72db                               ; $7c9c: $cd $db $72
	ld   de, $3523                                   ; $7c9f: $11 $23 $35
	adc  h                                           ; $7ca2: $8c
	xor  $db                                         ; $7ca3: $ee $db
	db   $dd                                         ; $7ca5: $dd
	ret  c                                           ; $7ca6: $d8

	ld   sp, $3312                                   ; $7ca7: $31 $12 $33
	ld   e, b                                        ; $7caa: $58
	adc  $fc                                         ; $7cab: $ce $fc
	cp   l                                           ; $7cad: $bd
	db   $ec                                         ; $7cae: $ec
	and  h                                           ; $7caf: $a4
	ld   de, $2412                                   ; $7cb0: $11 $12 $24
	adc  h                                           ; $7cb3: $8c
	cp   $bb                                         ; $7cb4: $fe $bb
	adc  $da                                         ; $7cb6: $ce $da
	ld   b, c                                        ; $7cb8: $41
	ld   de, $5923                                   ; $7cb9: $11 $23 $59
	call $bdec                                       ; $7cbc: $cd $ec $bd
	xor  $b5                                         ; $7cbf: $ee $b5
	ld   de, $2411                                   ; $7cc1: $11 $11 $24
	sbc  h                                           ; $7cc4: $9c
	cp   $bb                                         ; $7cc5: $fe $bb
	rst  JumpTable                                         ; $7cc7: $df
	ld   [$1141], a                                  ; $7cc8: $ea $41 $11
	ld   [hl+], a                                    ; $7ccb: $22
	ld   c, d                                        ; $7ccc: $4a
	rst  $28                                         ; $7ccd: $ef
	ld   [$feac], a                                  ; $7cce: $ea $ac $fe
	or   h                                           ; $7cd1: $b4
	ld   de, $3612                                   ; $7cd2: $11 $12 $36
	cp   [hl]                                        ; $7cd5: $be
	cp   $ab                                         ; $7cd6: $fe $ab
	rst  JumpTable                                         ; $7cd8: $df
	jp   hl                                          ; $7cd9: $e9


	ld   sp, $2411                                   ; $7cda: $31 $11 $24
	sbc  e                                           ; $7cdd: $9b
	xor  $ca                                         ; $7cde: $ee $ca
	cp   [hl]                                        ; $7ce0: $be
	db   $ec                                         ; $7ce1: $ec
	ld   h, c                                        ; $7ce2: $61
	ld   de, $5912                                   ; $7ce3: $11 $12 $59
	rst  JumpTable                                         ; $7ce6: $df
	db   $db                                         ; $7ce7: $db
	sbc  e                                           ; $7ce8: $9b
	xor  $b5                                         ; $7ce9: $ee $b5
	ld   de, $3711                                   ; $7ceb: $11 $11 $37
	adc  $ed                                         ; $7cee: $ce $ed
	sbc  c                                           ; $7cf0: $99
	adc  $fa                                         ; $7cf1: $ce $fa
	ld   sp, $1411                                   ; $7cf3: $31 $11 $14
	xor  l                                           ; $7cf6: $ad
	rst  $38                                         ; $7cf7: $ff
	ret                                              ; $7cf8: $c9


	xor  h                                           ; $7cf9: $ac
	db   $ed                                         ; $7cfa: $ed
	add  d                                           ; $7cfb: $82
	ld   de, $7d11                                   ; $7cfc: $11 $11 $7d
	rst  $38                                         ; $7cff: $ff
	jp   c, $ff9b                                    ; $7d00: $da $9b $ff

	call nz, $1111                                   ; $7d03: $c4 $11 $11
	ld   e, e                                        ; $7d06: $5b
	rst  $28                                         ; $7d07: $ef
	db   $eb                                         ; $7d08: $eb
	adc  e                                           ; $7d09: $8b
	rst  JumpTable                                         ; $7d0a: $df
	rst  $10                                         ; $7d0b: $d7
	ld   de, $3811                                   ; $7d0c: $11 $11 $38
	rst  JumpTable                                         ; $7d0f: $df
	db   $ec                                         ; $7d10: $ec
	xor  d                                           ; $7d11: $aa
	sbc  $d9                                         ; $7d12: $de $d9
	ld   sp, $1611                                   ; $7d14: $31 $11 $16
	rst  JumpTable                                         ; $7d17: $df
	db   $fc                                         ; $7d18: $fc
	sbc  b                                           ; $7d19: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d1a: $cf
	ei                                               ; $7d1b: $fb
	ld   b, c                                        ; $7d1c: $41
	ld   de, $bf14                                   ; $7d1d: $11 $14 $bf
	rst  $38                                         ; $7d20: $ff
	and  a                                           ; $7d21: $a7
	cp   [hl]                                        ; $7d22: $be
	db   $fd                                         ; $7d23: $fd
	ld   h, c                                        ; $7d24: $61
	ld   de, $bf14                                   ; $7d25: $11 $14 $bf
	db   $fd                                         ; $7d28: $fd
	sub  a                                           ; $7d29: $97
	xor  [hl]                                        ; $7d2a: $ae
	db   $fd                                         ; $7d2b: $fd
	ld   h, c                                        ; $7d2c: $61
	ld   de, $bf13                                   ; $7d2d: $11 $13 $bf
	rst  $38                                         ; $7d30: $ff
	and  a                                           ; $7d31: $a7
	xor  l                                           ; $7d32: $ad
	cp   $71                                         ; $7d33: $fe $71
	ld   de, $bf14                                   ; $7d35: $11 $14 $bf
	db   $fd                                         ; $7d38: $fd
	sub  a                                           ; $7d39: $97
	cp   [hl]                                        ; $7d3a: $be
	db   $fc                                         ; $7d3b: $fc
	ld   h, c                                        ; $7d3c: $61
	ld   de, $cf15                                   ; $7d3d: $11 $15 $cf
	db   $fd                                         ; $7d40: $fd
	sub  a                                           ; $7d41: $97
	cp   l                                           ; $7d42: $bd
	db   $fc                                         ; $7d43: $fc
	ld   d, c                                        ; $7d44: $51
	ld   de, $cf16                                   ; $7d45: $11 $16 $cf
	db   $fc                                         ; $7d48: $fc
	add  a                                           ; $7d49: $87
	adc  $fa                                         ; $7d4a: $ce $fa
	ld   b, c                                        ; $7d4c: $41
	ld   de, $ef18                                   ; $7d4d: $11 $18 $ef
	ei                                               ; $7d50: $fb
	ld   a, b                                        ; $7d51: $78
	adc  $f8                                         ; $7d52: $ce $f8
	ld   hl, $3c11                                   ; $7d54: $21 $11 $3c
	rst  $38                                         ; $7d57: $ff
	reti                                             ; $7d58: $d9


	ld   e, c                                        ; $7d59: $59
	rst  JumpTable                                         ; $7d5a: $df
	push hl                                          ; $7d5b: $e5
	ld   de, $8e11                                   ; $7d5c: $11 $11 $8e
	rst  $38                                         ; $7d5f: $ff
	or   a                                           ; $7d60: $b7
	ld   a, l                                        ; $7d61: $7d
	rst  $38                                         ; $7d62: $ff
	and  e                                           ; $7d63: $a3
	ld   de, $bf11                                   ; $7d64: $11 $11 $bf
	cp   $85                                         ; $7d67: $fe $85
	sbc  [hl]                                        ; $7d69: $9e
	rst  $38                                         ; $7d6a: $ff
	ld   h, c                                        ; $7d6b: $61
	ld   de, $ff18                                   ; $7d6c: $11 $18 $ff
	ei                                               ; $7d6f: $fb
	ld   h, [hl]                                     ; $7d70: $66
	sbc  $fb                                         ; $7d71: $de $fb
	ld   sp, $3e11                                   ; $7d73: $31 $11 $3e
	rst  $38                                         ; $7d76: $ff
	rst  $10                                         ; $7d77: $d7
	ld   e, d                                        ; $7d78: $5a
	rst  $28                                         ; $7d79: $ef
	push hl                                          ; $7d7a: $e5
	ld   de, $bf11                                   ; $7d7b: $11 $11 $bf
	cp   $96                                         ; $7d7e: $fe $96
	sbc  [hl]                                        ; $7d80: $9e
	rst  $28                                         ; $7d81: $ef
	ld   [hl], c                                     ; $7d82: $71
	ld   de, $ff18                                   ; $7d83: $11 $18 $ff
	ld   a, [$ce66]                                  ; $7d86: $fa $66 $ce
	ld   sp, hl                                      ; $7d89: $f9
	ld   hl, $6f11                                   ; $7d8a: $21 $11 $6f
	rst  $38                                         ; $7d8d: $ff
	or   [hl]                                        ; $7d8e: $b6
	ld   l, e                                        ; $7d8f: $6b
	rst  $28                                         ; $7d90: $ef
	and  d                                           ; $7d91: $a2
	ld   de, $ef15                                   ; $7d92: $11 $15 $ef
	db   $fc                                         ; $7d95: $fc
	ld   h, [hl]                                     ; $7d96: $66
	cp   [hl]                                        ; $7d97: $be
	ei                                               ; $7d98: $fb
	ld   sp, $5f11                                   ; $7d99: $31 $11 $5f
	rst  $38                                         ; $7d9c: $ff
	or   l                                           ; $7d9d: $b5
	ld   l, d                                        ; $7d9e: $6a
	rst  $38                                         ; $7d9f: $ff
	or   e                                           ; $7da0: $b3
	ld   de, $ff16                                   ; $7da1: $11 $16 $ff
	ei                                               ; $7da4: $fb
	ld   d, [hl]                                     ; $7da5: $56
	cp   [hl]                                        ; $7da6: $be
	ld   [$1131], a                                  ; $7da7: $ea $31 $11
	ld   a, a                                        ; $7daa: $7f
	rst  $38                                         ; $7dab: $ff
	and  h                                           ; $7dac: $a4
	ld   e, d                                        ; $7dad: $5a
	rst  $38                                         ; $7dae: $ff
	sub  d                                           ; $7daf: $92
	ld   de, $ff0a                                   ; $7db0: $11 $0a $ff
	rst  $20                                         ; $7db3: $e7
	ld   b, a                                        ; $7db4: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7db5: $cf
	add  $11                                         ; $7db6: $c6 $11
	inc  d                                           ; $7db8: $14
	rst  JumpTable                                         ; $7db9: $df
	db   $fc                                         ; $7dba: $fc
	ld   h, h                                        ; $7dbb: $64
	sbc  h                                           ; $7dbc: $9c
	ei                                               ; $7dbd: $fb
	ld   b, c                                        ; $7dbe: $41
	ld   de, $ff9f                                   ; $7dbf: $11 $9f $ff
	add  h                                           ; $7dc2: $84
	ld   l, h                                        ; $7dc3: $6c
	db   $ed                                         ; $7dc4: $ed
	ld   [hl], c                                     ; $7dc5: $71
	ld   de, $ff3c                                   ; $7dc6: $11 $3c $ff
	add  $48                                         ; $7dc9: $c6 $48
	adc  $b4                                         ; $7dcb: $ce $b4
	ld   de, $ff18                                   ; $7dcd: $11 $18 $ff
	ld   a, [$bd46]                                  ; $7dd0: $fa $46 $bd
	rst  $10                                         ; $7dd3: $d7
	ld   de, $ef13                                   ; $7dd4: $11 $13 $ef
	db   $fc                                         ; $7dd7: $fc
	ld   d, h                                        ; $7dd8: $54
	sbc  l                                           ; $7dd9: $9d
	db   $eb                                         ; $7dda: $eb
	ld   sp, $bf11                                   ; $7ddb: $31 $11 $bf
	cp   $72                                         ; $7dde: $fe $72
	ld   a, h                                        ; $7de0: $7c
	db   $fd                                         ; $7de1: $fd
	ld   d, c                                        ; $7de2: $51
	ld   de, $ff7f                                   ; $7de3: $11 $7f $ff
	add  e                                           ; $7de6: $83
	ld   e, e                                        ; $7de7: $5b
	cp   $81                                         ; $7de8: $fe $81
	ld   de, $ff5f                                   ; $7dea: $11 $5f $ff
	and  e                                           ; $7ded: $a3
	ld   a, [hl-]                                    ; $7dee: $3a
	rst  JumpTable                                         ; $7def: $df
	sub  d                                           ; $7df0: $92
	ld   de, $ff3d                                   ; $7df1: $11 $3d $ff
	call nz, $df28                                   ; $7df4: $c4 $28 $df
	or   d                                           ; $7df7: $b2
	ld   de, $ff1d                                   ; $7df8: $11 $1d $ff
	push de                                          ; $7dfb: $d5
	jr   z, @-$1f                                    ; $7dfc: $28 $df

	or   e                                           ; $7dfe: $b3
	ld   de, $ff1b                                   ; $7dff: $11 $1b $ff
	push de                                          ; $7e02: $d5
	daa                                              ; $7e03: $27
	rst  JumpTable                                         ; $7e04: $df
	call nz, $1b11                                   ; $7e05: $c4 $11 $1b
	rst  $38                                         ; $7e08: $ff
	push de                                          ; $7e09: $d5
	daa                                              ; $7e0a: $27
	rst  JumpTable                                         ; $7e0b: $df
	push de                                          ; $7e0c: $d5
	ld   de, $ff1a                                   ; $7e0d: $11 $1a $ff
	push de                                          ; $7e10: $d5
	ld   d, $df                                      ; $7e11: $16 $df
	push de                                          ; $7e13: $d5
	ld   de, $ff1b                                   ; $7e14: $11 $1b $ff
	call nz, $df17                                   ; $7e17: $c4 $17 $df
	call nc, $1c11                                   ; $7e1a: $d4 $11 $1c
	rst  $38                                         ; $7e1d: $ff
	jp   $ef17                                       ; $7e1e: $c3 $17 $ef


	db   $d3                                         ; $7e21: $d3
	ld   de, $ff2d                                   ; $7e22: $11 $2d $ff
	and  d                                           ; $7e25: $a2
	ld   [$c3ef], sp                                 ; $7e26: $08 $ef $c3
	ld   de, $ff3e                                   ; $7e29: $11 $3e $ff
	and  c                                           ; $7e2c: $a1
	add  hl, de                                      ; $7e2d: $19
	rst  $38                                         ; $7e2e: $ff
	or   d                                           ; $7e2f: $b2
	ld   de, $ff5f                                   ; $7e30: $11 $5f $ff
	add  c                                           ; $7e33: $81
	ld   a, [hl+]                                    ; $7e34: $2a
	rst  $38                                         ; $7e35: $ff
	sub  c                                           ; $7e36: $91
	ld   de, $fe7f                                   ; $7e37: $11 $7f $fe
	ld   [hl], c                                     ; $7e3a: $71
	ld   a, [hl-]                                    ; $7e3b: $3a
	rst  $38                                         ; $7e3c: $ff
	add  c                                           ; $7e3d: $81
	ld   de, $fd8f                                   ; $7e3e: $11 $8f $fd
	ld   h, c                                        ; $7e41: $61
	ld   e, h                                        ; $7e42: $5c
	db   $fd                                         ; $7e43: $fd
	ld   h, c                                        ; $7e44: $61
	ld   de, $fcaf                                   ; $7e45: $11 $af $fc
	ld   d, d                                        ; $7e48: $52
	ld   l, h                                        ; $7e49: $6c
	db   $fd                                         ; $7e4a: $fd
	ld   d, c                                        ; $7e4b: $51
	ld   [de], a                                     ; $7e4c: $12
	xor  a                                           ; $7e4d: $af
	ei                                               ; $7e4e: $fb
	ld   d, d                                        ; $7e4f: $52
	ld   a, h                                        ; $7e50: $7c
	db   $eb                                         ; $7e51: $eb
	ld   b, c                                        ; $7e52: $41
	inc  de                                          ; $7e53: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e54: $cf
	ld   a, [$9d53]                                  ; $7e55: $fa $53 $9d
	db   $eb                                         ; $7e58: $eb
	ld   b, c                                        ; $7e59: $41
	inc  d                                           ; $7e5a: $14
	cp   a                                           ; $7e5b: $bf
	ld   [$9d54], a                                  ; $7e5c: $ea $54 $9d
	db   $eb                                         ; $7e5f: $eb
	ld   d, c                                        ; $7e60: $51
	inc  de                                          ; $7e61: $13
	xor  a                                           ; $7e62: $af
	ld   [$7c54], a                                  ; $7e63: $ea $54 $7c
	db   $ec                                         ; $7e66: $ec
	ld   [hl], d                                     ; $7e67: $72
	ld   [de], a                                     ; $7e68: $12
	adc  l                                           ; $7e69: $8d
	db   $db                                         ; $7e6a: $db
	ld   [hl], l                                     ; $7e6b: $75
	ld   a, d                                        ; $7e6c: $7a
	call z, $1183                                    ; $7e6d: $cc $83 $11
	ld   a, l                                        ; $7e70: $7d
	db   $fd                                         ; $7e71: $fd
	add  h                                           ; $7e72: $84
	ld   c, b                                        ; $7e73: $48
	cp   [hl]                                        ; $7e74: $be
	and  l                                           ; $7e75: $a5
	ld   de, $fd6c                                   ; $7e76: $11 $6c $fd
	add  h                                           ; $7e79: $84
	ld   e, c                                        ; $7e7a: $59
	call z, $1194                                    ; $7e7b: $cc $94 $11
	ld   l, h                                        ; $7e7e: $6c
	db   $fd                                         ; $7e7f: $fd
	add  h                                           ; $7e80: $84
	ld   e, c                                        ; $7e81: $59
	call z, $1294                                    ; $7e82: $cc $94 $12
	adc  h                                           ; $7e85: $8c
	db   $ec                                         ; $7e86: $ec
	ld   [hl], h                                     ; $7e87: $74
	ld   e, c                                        ; $7e88: $59
	call z, $1383                                    ; $7e89: $cc $83 $13
	sbc  [hl]                                        ; $7e8c: $9e
	ld   [$7a64], a                                  ; $7e8d: $ea $64 $7a
	jp   z, $1562                                    ; $7e90: $ca $62 $15

	adc  $e8                                         ; $7e93: $ce $e8
	ld   b, e                                        ; $7e95: $43
	adc  h                                           ; $7e96: $8c
	jp   z, $1751                                    ; $7e97: $ca $51 $17

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e9a: $cf
	rst  ToBoot                                         ; $7e9b: $c7
	dec  [hl]                                        ; $7e9c: $35
	sbc  h                                           ; $7e9d: $9c
	ret  z                                           ; $7e9e: $c8

	ld   b, c                                        ; $7e9f: $41
	add  hl, sp                                      ; $7ea0: $39
	sbc  $b6                                         ; $7ea1: $de $b6
	ld   b, [hl]                                     ; $7ea3: $46
	sbc  e                                           ; $7ea4: $9b
	or   [hl]                                        ; $7ea5: $b6
	ld   [hl-], a                                    ; $7ea6: $32
	ld   l, d                                        ; $7ea7: $6a
	db   $ed                                         ; $7ea8: $ed
	sub  l                                           ; $7ea9: $95
	ld   b, a                                        ; $7eaa: $47
	cp   e                                           ; $7eab: $bb
	sub  l                                           ; $7eac: $95
	inc  hl                                          ; $7ead: $23
	sbc  l                                           ; $7eae: $9d
	ei                                               ; $7eaf: $fb
	ld   [hl], h                                     ; $7eb0: $74
	ld   e, c                                        ; $7eb1: $59
	bit  6, e                                        ; $7eb2: $cb $73
	dec  d                                           ; $7eb4: $15
	cp   [hl]                                        ; $7eb5: $be
	reti                                             ; $7eb6: $d9


	ld   d, h                                        ; $7eb7: $54
	adc  d                                           ; $7eb8: $8a
	cp   b                                           ; $7eb9: $b8
	ld   d, d                                        ; $7eba: $52
	jr   c, @-$31                                    ; $7ebb: $38 $cd

	or   a                                           ; $7ebd: $b7
	ld   b, [hl]                                     ; $7ebe: $46
	xor  e                                           ; $7ebf: $ab
	or   [hl]                                        ; $7ec0: $b6
	ld   [hl-], a                                    ; $7ec1: $32
	ld   a, d                                        ; $7ec2: $7a
	db   $ec                                         ; $7ec3: $ec
	add  l                                           ; $7ec4: $85
	ld   e, b                                        ; $7ec5: $58
	xor  h                                           ; $7ec6: $ac
	add  h                                           ; $7ec7: $84
	inc  h                                           ; $7ec8: $24
	xor  l                                           ; $7ec9: $ad
	jp   c, Jump_0ea_7a64                            ; $7eca: $da $64 $7a

	cp   d                                           ; $7ecd: $ba
	ld   h, e                                        ; $7ece: $63
	scf                                              ; $7ecf: $37
	cp   [hl]                                        ; $7ed0: $be
	cp   b                                           ; $7ed1: $b8
	ld   d, l                                        ; $7ed2: $55
	sbc  e                                           ; $7ed3: $9b
	ret  z                                           ; $7ed4: $c8

	ld   b, d                                        ; $7ed5: $42
	ld   e, c                                        ; $7ed6: $59
	call c, Call_0ea_47a6                            ; $7ed7: $dc $a6 $47
	xor  e                                           ; $7eda: $ab
	and  [hl]                                        ; $7edb: $a6
	inc  sp                                          ; $7edc: $33
	ld   a, e                                        ; $7edd: $7b
	db   $db                                         ; $7ede: $db
	add  l                                           ; $7edf: $85
	ld   e, b                                        ; $7ee0: $58
	cp   e                                           ; $7ee1: $bb
	sub  l                                           ; $7ee2: $95
	dec  [hl]                                        ; $7ee3: $35
	adc  h                                           ; $7ee4: $8c
	ret                                              ; $7ee5: $c9


	ld   [hl], l                                     ; $7ee6: $75
	ld   a, c                                        ; $7ee7: $79
	xor  c                                           ; $7ee8: $a9
	ld   [hl], h                                     ; $7ee9: $74
	ld   b, a                                        ; $7eea: $47
	cp   l                                           ; $7eeb: $bd
	cp   b                                           ; $7eec: $b8
	ld   d, l                                        ; $7eed: $55
	adc  d                                           ; $7eee: $8a
	xor  b                                           ; $7eef: $a8
	ld   d, h                                        ; $7ef0: $54
	ld   e, b                                        ; $7ef1: $58
	call z, Call_0ea_56a7                            ; $7ef2: $cc $a7 $56
	sbc  e                                           ; $7ef5: $9b
	and  a                                           ; $7ef6: $a7
	ld   b, h                                        ; $7ef7: $44
	ld   l, d                                        ; $7ef8: $6a
	res  2, [hl]                                     ; $7ef9: $cb $96
	ld   d, a                                        ; $7efb: $57
	sbc  e                                           ; $7efc: $9b
	add  [hl]                                        ; $7efd: $86
	ld   b, l                                        ; $7efe: $45
	adc  e                                           ; $7eff: $8b
	jp   z, Jump_0ea_6875                            ; $7f00: $ca $75 $68

	xor  c                                           ; $7f03: $a9
	ld   [hl], l                                     ; $7f04: $75
	ld   b, [hl]                                     ; $7f05: $46
	xor  h                                           ; $7f06: $ac
	cp   b                                           ; $7f07: $b8
	ld   h, [hl]                                     ; $7f08: $66
	ld   a, d                                        ; $7f09: $7a
	xor  b                                           ; $7f0a: $a8
	ld   h, h                                        ; $7f0b: $64
	ld   e, b                                        ; $7f0c: $58
	xor  h                                           ; $7f0d: $ac
	and  a                                           ; $7f0e: $a7
	ld   h, [hl]                                     ; $7f0f: $66
	adc  c                                           ; $7f10: $89
	sbc  b                                           ; $7f11: $98
	ld   d, l                                        ; $7f12: $55
	ld   l, c                                        ; $7f13: $69
	cp   e                                           ; $7f14: $bb
	sub  a                                           ; $7f15: $97
	ld   h, a                                        ; $7f16: $67
	sbc  c                                           ; $7f17: $99
	sub  a                                           ; $7f18: $97
	ld   d, l                                        ; $7f19: $55
	ld   a, d                                        ; $7f1a: $7a
	cp   d                                           ; $7f1b: $ba
	add  [hl]                                        ; $7f1c: $86
	ld   l, b                                        ; $7f1d: $68
	xor  c                                           ; $7f1e: $a9
	sub  [hl]                                        ; $7f1f: $96
	ld   d, [hl]                                     ; $7f20: $56
	sbc  d                                           ; $7f21: $9a
	xor  d                                           ; $7f22: $aa
	halt                                             ; $7f23: $76
	ld   a, b                                        ; $7f24: $78
	xor  c                                           ; $7f25: $a9
	ld   [hl], l                                     ; $7f26: $75
	ld   d, a                                        ; $7f27: $57
	xor  e                                           ; $7f28: $ab
	xor  b                                           ; $7f29: $a8
	ld   h, [hl]                                     ; $7f2a: $66
	adc  c                                           ; $7f2b: $89
	xor  c                                           ; $7f2c: $a9
	halt                                             ; $7f2d: $76
	ld   a, b                                        ; $7f2e: $78
	adc  c                                           ; $7f2f: $89
	sub  a                                           ; $7f30: $97
	ld   [hl], a                                     ; $7f31: $77
	sbc  c                                           ; $7f32: $99
	xor  c                                           ; $7f33: $a9
	add  [hl]                                        ; $7f34: $86
	ld   d, [hl]                                     ; $7f35: $56
	ld   a, d                                        ; $7f36: $7a
	xor  e                                           ; $7f37: $ab
	add  a                                           ; $7f38: $87
	ld   h, a                                        ; $7f39: $67
	adc  c                                           ; $7f3a: $89
	adc  b                                           ; $7f3b: $88
	ld   a, b                                        ; $7f3c: $78
	sbc  b                                           ; $7f3d: $98
	add  a                                           ; $7f3e: $87
	ld   [hl], a                                     ; $7f3f: $77
	adc  c                                           ; $7f40: $89
	sbc  b                                           ; $7f41: $98
	sbc  c                                           ; $7f42: $99
	adc  b                                           ; $7f43: $88
	add  a                                           ; $7f44: $87
	ld   d, [hl]                                     ; $7f45: $56
	ld   a, d                                        ; $7f46: $7a
	xor  d                                           ; $7f47: $aa
	add  [hl]                                        ; $7f48: $86
	ld   h, a                                        ; $7f49: $67
	sbc  c                                           ; $7f4a: $99
	sbc  b                                           ; $7f4b: $98
	ld   [hl], a                                     ; $7f4c: $77
	adc  c                                           ; $7f4d: $89
	sub  a                                           ; $7f4e: $97
	ld   [hl], a                                     ; $7f4f: $77
	adc  b                                           ; $7f50: $88
	sbc  c                                           ; $7f51: $99
	add  a                                           ; $7f52: $87
	adc  c                                           ; $7f53: $89
	adc  b                                           ; $7f54: $88
	add  a                                           ; $7f55: $87
	halt                                             ; $7f56: $76
	ld   a, b                                        ; $7f57: $78
	sbc  d                                           ; $7f58: $9a
	xor  b                                           ; $7f59: $a8
	ld   [hl], a                                     ; $7f5a: $77
	ld   a, c                                        ; $7f5b: $79
	sbc  b                                           ; $7f5c: $98
	add  a                                           ; $7f5d: $87
	ld   a, b                                        ; $7f5e: $78
	adc  b                                           ; $7f5f: $88
	sbc  b                                           ; $7f60: $98
	ld   a, b                                        ; $7f61: $78
	sbc  b                                           ; $7f62: $98
	adc  b                                           ; $7f63: $88
	ld   a, b                                        ; $7f64: $78
	adc  b                                           ; $7f65: $88
	sbc  b                                           ; $7f66: $98
	ld   [hl], a                                     ; $7f67: $77
	ld   a, b                                        ; $7f68: $78
	adc  b                                           ; $7f69: $88
	adc  b                                           ; $7f6a: $88
	adc  b                                           ; $7f6b: $88
	adc  b                                           ; $7f6c: $88
	add  a                                           ; $7f6d: $87
	ld   h, a                                        ; $7f6e: $67
	adc  c                                           ; $7f6f: $89
	xor  c                                           ; $7f70: $a9
	ld   [hl], a                                     ; $7f71: $77
	ld   a, b                                        ; $7f72: $78
	sbc  c                                           ; $7f73: $99
	sub  a                                           ; $7f74: $97
	ld   [hl], a                                     ; $7f75: $77
	sbc  b                                           ; $7f76: $98
	sbc  b                                           ; $7f77: $98
	ld   a, b                                        ; $7f78: $78
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	add  a                                           ; $7f7b: $87
	adc  b                                           ; $7f7c: $88
	sbc  b                                           ; $7f7d: $98
	add  a                                           ; $7f7e: $87
	adc  b                                           ; $7f7f: $88
	sbc  c                                           ; $7f80: $99
	adc  b                                           ; $7f81: $88
	adc  b                                           ; $7f82: $88
	adc  b                                           ; $7f83: $88
	sbc  b                                           ; $7f84: $98
	adc  b                                           ; $7f85: $88
	adc  b                                           ; $7f86: $88
	sbc  c                                           ; $7f87: $99
	adc  b                                           ; $7f88: $88
	ld   [hl], a                                     ; $7f89: $77
	ld   a, b                                        ; $7f8a: $78
	sbc  b                                           ; $7f8b: $98
	sbc  b                                           ; $7f8c: $98
	adc  b                                           ; $7f8d: $88
	sbc  b                                           ; $7f8e: $98
	add  a                                           ; $7f8f: $87
	ld   [hl], a                                     ; $7f90: $77
	sbc  c                                           ; $7f91: $99
	xor  b                                           ; $7f92: $a8
	ld   [hl], a                                     ; $7f93: $77
	ld   a, b                                        ; $7f94: $78
	adc  b                                           ; $7f95: $88
	add  a                                           ; $7f96: $87
	ld   a, b                                        ; $7f97: $78
	adc  c                                           ; $7f98: $89
	sbc  b                                           ; $7f99: $98
	adc  b                                           ; $7f9a: $88
	adc  c                                           ; $7f9b: $89
	sbc  b                                           ; $7f9c: $98
	adc  b                                           ; $7f9d: $88
	adc  b                                           ; $7f9e: $88
	sbc  b                                           ; $7f9f: $98
	adc  b                                           ; $7fa0: $88
	adc  b                                           ; $7fa1: $88
	adc  b                                           ; $7fa2: $88
	adc  b                                           ; $7fa3: $88
	adc  b                                           ; $7fa4: $88
	adc  c                                           ; $7fa5: $89
	adc  b                                           ; $7fa6: $88
	adc  b                                           ; $7fa7: $88
	adc  b                                           ; $7fa8: $88
	adc  b                                           ; $7fa9: $88
	adc  b                                           ; $7faa: $88
	adc  b                                           ; $7fab: $88
	adc  b                                           ; $7fac: $88
	adc  b                                           ; $7fad: $88
	adc  b                                           ; $7fae: $88
	sbc  c                                           ; $7faf: $99
	sbc  b                                           ; $7fb0: $98
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	adc  b                                           ; $7fb3: $88
	adc  b                                           ; $7fb4: $88
	adc  b                                           ; $7fb5: $88
	sbc  c                                           ; $7fb6: $99
	sbc  b                                           ; $7fb7: $98
	adc  b                                           ; $7fb8: $88
	adc  b                                           ; $7fb9: $88
	add  a                                           ; $7fba: $87
	ld   a, b                                        ; $7fbb: $78
	sbc  b                                           ; $7fbc: $98
	adc  c                                           ; $7fbd: $89
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	adc  b                                           ; $7fc0: $88
	ld   [hl], a                                     ; $7fc1: $77
	adc  c                                           ; $7fc2: $89
	sbc  c                                           ; $7fc3: $99
	sbc  b                                           ; $7fc4: $98
	adc  b                                           ; $7fc5: $88
	adc  b                                           ; $7fc6: $88
	add  a                                           ; $7fc7: $87
	ld   a, b                                        ; $7fc8: $78
	sbc  b                                           ; $7fc9: $98
	adc  b                                           ; $7fca: $88
	add  a                                           ; $7fcb: $87
	adc  b                                           ; $7fcc: $88
	adc  b                                           ; $7fcd: $88
	ld   [hl], a                                     ; $7fce: $77
	adc  c                                           ; $7fcf: $89
	adc  b                                           ; $7fd0: $88
	sbc  b                                           ; $7fd1: $98
	adc  b                                           ; $7fd2: $88
	adc  b                                           ; $7fd3: $88
	adc  b                                           ; $7fd4: $88
	adc  b                                           ; $7fd5: $88
	sbc  b                                           ; $7fd6: $98
	adc  b                                           ; $7fd7: $88
	adc  b                                           ; $7fd8: $88
	adc  b                                           ; $7fd9: $88
	adc  b                                           ; $7fda: $88
	ld   a, b                                        ; $7fdb: $78
	adc  c                                           ; $7fdc: $89
	adc  b                                           ; $7fdd: $88
	adc  b                                           ; $7fde: $88
	adc  b                                           ; $7fdf: $88
	adc  b                                           ; $7fe0: $88
	adc  b                                           ; $7fe1: $88
	adc  b                                           ; $7fe2: $88
	sbc  b                                           ; $7fe3: $98
	sbc  b                                           ; $7fe4: $98
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	adc  b                                           ; $7fe7: $88
	adc  b                                           ; $7fe8: $88
	adc  c                                           ; $7fe9: $89
	sbc  c                                           ; $7fea: $99
	adc  b                                           ; $7feb: $88
	adc  b                                           ; $7fec: $88
	adc  b                                           ; $7fed: $88
	adc  b                                           ; $7fee: $88
	adc  b                                           ; $7fef: $88
	sbc  c                                           ; $7ff0: $99
	adc  b                                           ; $7ff1: $88
	adc  b                                           ; $7ff2: $88
	adc  b                                           ; $7ff3: $88
	adc  b                                           ; $7ff4: $88
	adc  b                                           ; $7ff5: $88
	adc  c                                           ; $7ff6: $89
	sbc  b                                           ; $7ff7: $98
	adc  b                                           ; $7ff8: $88
	adc  b                                           ; $7ff9: $88
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	sbc  b                                           ; $7ffd: $98
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
